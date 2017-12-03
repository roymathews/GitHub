package com.sony.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sony.dao.CategoryDao;
import com.sony.dao.ProductDao;
import com.sony.dao.SupplierDao;
import com.sony.model.Category;
import com.sony.model.Product;
import com.sony.model.Supplier;


@Controller
public class ProductController {
	@Autowired(required = true)
	private ProductDao ProductDAO;

	
	@Autowired (required= true)
	private CategoryDao CategoryDao;
	
	@Autowired (required= true)
	private SupplierDao SupplierDao;
	@RequestMapping(value="/productsubmit",method=RequestMethod.POST)
	public ModelAndView  reg1(@RequestParam("name")String name,@RequestParam("rate")float rate,@RequestParam("stock")int stock,@RequestParam("cat")Category category,@RequestParam("sup")Supplier supplier)
	{		
		Product p=new Product();
		p.setName(name);
		p.setRate(rate);
		p.setStock(stock);
		p.setCategory(category);
		p.setSupplier(supplier);
		ProductDAO.saveProduct(p);
		ModelAndView mv = new ModelAndView("admin");
		mv.addObject("msg","successfully added");
		mv.addObject("admin");
		return mv;
		
		
	}
	
	@RequestMapping("/prodetails")
	public String Listproduct(Model model) {
		model.addAttribute("productList", this.ProductDAO.list());
		return "Product";
	}
	
	@RequestMapping(value="/product_delete")
	public ModelAndView deleteProduct(HttpServletRequest request){
		
		Product p=ProductDAO.findById(Integer.valueOf(request.getParameter("id")));
		System.out.print(p);
		ModelAndView mv= new ModelAndView("Product");	
		try
		{
		ProductDAO.delete(p);
		mv.addObject("msg","Product Deleted");
		}
		catch (Exception e) 
		{
			mv.addObject("msg","cannot delete");
		}
		
		List<Product> list=ProductDAO.list();
		mv.addObject("productList",list);
		return mv;
		
	}
	
	@RequestMapping(value="/product_edit")
	public ModelAndView editProduct(HttpServletRequest request)
	{
		int id = Integer.parseInt(request.getParameter("id"));
		ModelAndView su = new ModelAndView("product_edit");
		List<Category> clist=CategoryDao.list();
		su.addObject("listcat",clist);
		List<Supplier> slist= SupplierDao.list();
		su.addObject("listsup",slist);
		List<Product> list = ProductDAO.list();
		
		su.addObject("product",ProductDAO.findById(id));
		su.addObject("product_edit",list);
		
		return su;
		
	}
	@RequestMapping(value="product_update",method=RequestMethod.POST)
	
	public ModelAndView ss(@RequestParam("id")int id,@RequestParam("name")String name,@RequestParam("rate")Float rate,@RequestParam("stock")int stock,@RequestParam("cat")Category category,@RequestParam("sup")Supplier supplier)
	{	
	Product s = new Product();
s.setId(id);
s.setName(name);
s.setRate(rate);
s.setStock(stock);
s.setCategory(category);
s.setSupplier(supplier);

ProductDAO.updateproduct(s);
	ModelAndView mv = new ModelAndView("Product");
	List<Product> list=ProductDAO.list();
	mv.addObject("Product",list);
	mv.addObject("msg","successfully updated");
	return mv;
	
}
	

}
