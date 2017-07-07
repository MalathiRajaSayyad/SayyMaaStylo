package com.sayy.sayymaastylo.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sayy.sayymaastylo.DAO.SupplierDAO;
import com.sayy.sayymaastylo.model.Supplier;

@Controller
public class SupplierController {
	@Autowired
	SupplierDAO sdao;
	
	@RequestMapping("/Supplier")
	public ModelAndView showsupplierpage()
	{
		String supplierslist = sdao.viewSupplier();
		//System.out.println("this is "+ supplierslist);
		ModelAndView mv = new ModelAndView("Supplier","newSupplierObject", new Supplier());		
		mv.addObject("supplierslist",supplierslist);
		mv.addObject("check","true");
		return mv;
	}
	
	@RequestMapping(value="/addingsupplier", params="Addingsupplier")
	public String addsupplierpage(@ModelAttribute("newSupplierObject")Supplier supplier)
	{
		sdao.insertSupplier(supplier);
		return "redirect:/Supplier";
		
	}
	
	@RequestMapping(value="/addingsupplier",params="EditingSupplier")
	public String editsupplierpage(@ModelAttribute("newSupplierObject")Supplier supplier)
	{
		sdao.updateSupplier(supplier);
		return "redirect:/Supplier";
		
	}
	
	@RequestMapping("removingsupplier/{supplierId}")
	public String removecategory(@PathVariable("supplierId") String supplierid) {
		sdao.deleteSupplier(supplierid);
		return "redirect:/Supplier";
	}
	
	@RequestMapping("/editingsupplierbutton")
	public ModelAndView editsupplierbutton(@RequestParam("getsupplierid")String supplierid)
	{
		Supplier onesupplier = sdao.viewOneSupplier(supplierid);
		
		ModelAndView mv= new ModelAndView("Supplier","newSupplierObject",onesupplier);
		String suppliergsonlist = sdao.viewSupplier();
		mv.addObject("supplierslist",suppliergsonlist);
		mv.addObject("check","false");
		return mv;
	}
}


