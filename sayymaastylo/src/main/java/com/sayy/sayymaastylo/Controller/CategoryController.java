package com.sayy.sayymaastylo.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sayy.sayymaastylo.DAO.CategoryDAO;
import com.sayy.sayymaastylo.model.Category;
import com.sayy.sayymaastylo.model.Supplier;

@Controller
public class CategoryController {
	@Autowired
	CategoryDAO cdao;
	
	@RequestMapping("/Category")
	public ModelAndView showcatpage() {
		String categorygsonlist = cdao.viewCategory();
		ModelAndView mv = new ModelAndView("category", "addCategoryObject1", new Category());
		mv.addObject("categorymodelobject", categorygsonlist);
		mv.addObject("check","true");
		return mv;
	}

	@RequestMapping(value="/addingcategory", params="Addcategory")
	public String addcategory(@ModelAttribute("addCategoryObject1") Category cm) {
		
		cdao.insertCategory(cm);

		return "redirect:/Category";
	}
	
	@RequestMapping(value="/addingcategory", params="EditCategory")
	public String editcategory(@ModelAttribute("addCategoryObject1") Category cm) {
		

		cdao.updateCategory(cm);
		return "redirect:/Category";
	}
	

	@RequestMapping("removecategory/{Id}")
	public String removecategory(@PathVariable("Id") String categoryId) {
		cdao.deleteCategory(categoryId);
		return "redirect:/Category";
	}

	@RequestMapping("/editcategorybutton")
	public ModelAndView passingonecategory(@RequestParam("getcid") String categoryId) {
		
		Category onecategory = cdao.viewOneCategory(categoryId);	
		String categorygsonlist = cdao.viewCategory();
		ModelAndView mv = new ModelAndView("category","addCategoryObject1",onecategory);
		mv.addObject("categorymodelobject", categorygsonlist);
		mv.addObject("check","false");
		return mv;
	}
}
