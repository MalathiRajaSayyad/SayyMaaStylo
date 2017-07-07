package com.sayy.sayymaastylo.Controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.sayy.sayymaastylo.DAO.CategoryDAO;
import com.sayy.sayymaastylo.DAO.ProductDao;
import com.sayy.sayymaastylo.DAO.SupplierDAO;
import com.sayy.sayymaastylo.model.Product;

@Controller
public class ProductController {
	@Autowired
	ProductDao pdao;
	@Autowired
	CategoryDAO cdao;
	@Autowired
	SupplierDAO sdao;

	static int k;

	@RequestMapping("/ShowProducts")
	public ModelAndView gotoProductsPage(HttpSession session) {
		String controllerProdList = pdao.viewProduct();
		String controllerCatList = cdao.viewCategory();
		ModelAndView mv = new ModelAndView("ViewProducts");
		mv.addObject("modelProdList", controllerProdList);
		mv.addObject("modelCatList", controllerCatList);
		return mv;
	}

	@RequestMapping("/ManageProducts")
	public ModelAndView gotoManageProdPage(HttpSession session) {
		String controllerProdList = pdao.viewProduct();
		String controllerCatList = cdao.viewCategory();
		String controllerSupList = sdao.viewSupplier();
		ModelAndView mv = new ModelAndView("ManageProduct");
		mv.addObject("manageProduct", new Product());
		mv.addObject("modelProdList", controllerProdList);
		mv.addObject("modelCatList", controllerCatList);
		mv.addObject("modelSupList", controllerSupList);
		mv.addObject("check", "true");
		return mv;
	}

	@RequestMapping(value = "/addProduct")
	public String insert_product(@Valid @ModelAttribute("manageProduct") Product prod) {
		pdao.insertProduct(prod);
		String path = "C:\\Users\\MaalathiRaja\\workspace\\sayymaastylo\\src\\main\\webapp\\WEB-INF\\resources\\Pics\\";

		path = path + String.valueOf(prod.getpId()) + "" + ".jpg";

		MultipartFile filedet = prod.getpImage();

		if (!filedet.isEmpty()) {

			try {

				byte[] bytes = filedet.getBytes();

				System.out.println(bytes.length);

				FileOutputStream fos = new FileOutputStream(new File(path));

				BufferedOutputStream bs = new BufferedOutputStream(fos);

				bs.write(bytes);

				bs.close();
				fos.close();

				Thread.sleep(10000);

				System.out.println("File Uploaded Successfully");

			} catch (Exception e) {

				System.out.println("Exception Arised" + e);

			}
		} else {

			System.out.println("File is Empty not Uploaded");

		}
		return "redirect:/ManageProducts";

	}

	@RequestMapping("removeproduct/{prodid}")
	public String removecategory(@PathVariable("prodid") int pid) {
		pdao.deleteProduct(pid);
		return "redirect:/ManageProducts";
	}

	@RequestMapping("/editproduct")
	public ModelAndView gotoManageProdPage(@RequestParam("getpid") int id) {
		String controllerProdList = pdao.viewProduct();
		String controllerCatList = cdao.viewCategory();
		String controllerSupList = sdao.viewSupplier();
		ModelAndView mv = new ModelAndView("ManageProduct");
		mv.addObject("manageProduct", pdao.viewOneProduct(id));
		mv.addObject("modelProdList", controllerProdList);
		mv.addObject("modelCatList", controllerCatList);
		mv.addObject("modelSupList", controllerSupList);
		mv.addObject("check", "false");
		k = id;

		return mv;
	}

	@RequestMapping(value = "/updateProduct")
	public ModelAndView edit_product(@Valid @ModelAttribute("manageProduct") Product prod) throws InterruptedException {
		ModelAndView mv = new ModelAndView("ManageProduct");
		Product p = pdao.viewOneProduct(k);
		p.setpName(prod.getpName());
		pdao.updateProduct(k, p);
		String controllerProdList = pdao.viewProduct();
		String controllerCatList = cdao.viewCategory();
		String controllerSupList = sdao.viewSupplier();
		mv.addObject("modelProdList", controllerProdList);
		mv.addObject("modelCatList", controllerCatList);
		mv.addObject("modelSupList", controllerSupList);
		mv.addObject("check", "true");
		Thread t = new Thread();
		String path = "C:\\Users\\MaalathiRaja\\workspace\\sayymaastylo\\src\\main\\webapp\\WEB-INF\\resources\\Pics\\";

		path = path + String.valueOf(prod.getpId()) + "" + ".jpg";

		MultipartFile filedet = prod.getpImage();

		if (!filedet.isEmpty()) {

			try {

				byte[] bytes = filedet.getBytes();

				System.out.println(bytes.length);

				File f = new File(path);

				if (f.exists())

				{

					f.delete();

					FileOutputStream fos = new FileOutputStream(f);

					BufferedOutputStream bs = new BufferedOutputStream(fos);

					bs.write(bytes);

					bs.close();

					fos.close();

					Thread.sleep(10000);

					System.out.println("File Uploaded Successfully");

				}

			} catch (Exception e) {

				System.out.println("Exception Arised" + e);

			}

		} else {

			System.out.println("File is Empty not Uploaded");

		}
		return new ModelAndView("redirect:/ManageProducts");

	}
	
	@RequestMapping("/allProducts")
	public ModelAndView gotoallProdPage(HttpSession session) {
		String controllerProdList = pdao.viewProduct();
		String controllerCatList = cdao.viewCategory();
		String controllerSupList = sdao.viewSupplier();
		ModelAndView mv = new ModelAndView("AllProducts");
		mv.addObject("manageProduct", new Product());
		mv.addObject("modelProdList", controllerProdList);
		mv.addObject("modelCatList", controllerCatList);
		mv.addObject("modelSupList", controllerSupList);
		mv.addObject("check", "true");
		return mv;
	}
	
	
	
	@RequestMapping("/viewproduct")
	public ModelAndView gotosingleProdPage(@RequestParam("getpid") int id) {
		Gson g = new Gson();
		String prod = g.toJson(pdao.viewOneProduct(id));
		ModelAndView mv = new ModelAndView("singleprod");
		mv.addObject("manageProduct", prod);
		
		k = id;

		return mv;
	}
}
