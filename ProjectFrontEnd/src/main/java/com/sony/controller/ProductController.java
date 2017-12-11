package com.sony.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
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
	@RequestMapping(value="/admin/productsubmit",method=RequestMethod.POST)
	public ModelAndView  reg1(@RequestParam("name")String name,@RequestParam("rate")float rate,@RequestParam("stock")int stock,@RequestParam("cat")int category,@RequestParam("sup")int supplier,@RequestParam("img") MultipartFile file)
	{		
		Product p=new Product();
		p.setName(name);
		p.setRate(rate);
		p.setStock(stock);
		p.setCategory(CategoryDao.findById(category));
		p.setSupplier(SupplierDao.findById(supplier));
		ProductDAO.saveProduct(p);
		String filepath ="C:/Users/sony/workspace/ProjectFrontEnd/src/main/webapp/resources/products/" + p.getId()+".jpg";
		try {
			byte imagebyte[] = file.getBytes();
			BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filepath));
			fos.write(imagebyte);
			fos.close();
			} catch (IOException e) {
			e.printStackTrace();
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
		
		ModelAndView mv = new ModelAndView("redirect:/admin");
		mv.addObject("msg","successfully added");
		mv.addObject("admin");
		return mv;
		
		
	}
	
	@RequestMapping("/admin/prodetails")
	public String Listproduct(Model model) {
		model.addAttribute("productList", this.ProductDAO.list());
		return "Product";
	}
	
	@RequestMapping(value="/admin/product_delete")
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
	
	@RequestMapping(value="/admin/product_edit")
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
	@RequestMapping(value="/admin/product_update",method=RequestMethod.POST)
	
	public ModelAndView ss(@RequestParam("id")int id,@RequestParam("name")String name,@RequestParam("rate")Float rate,@RequestParam("stock")int stock,@RequestParam("cat")int category,@RequestParam("sup")int supplier,@RequestParam("img") MultipartFile files)
	{	
	Product s =ProductDAO.findById(id);
s.setName(name);
s.setRate(rate);
s.setStock(stock);
s.setCategory(CategoryDao.findById(category));
s.setSupplier(SupplierDao.findById(supplier));
ProductDAO.updateproduct(s);
String filepath ="C:/Users/sony/workspace/ProjectDemo/src/main/webapp/resources/products/" + s.getId()+".jpg";
try {
	byte imagebyte[] = files.getBytes();
	BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filepath));
	fos.write(imagebyte);
	fos.close();
	} catch (IOException e) {
	e.printStackTrace();
	} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}

	ModelAndView mv = new ModelAndView("Product");
	List<Product> list=ProductDAO.list();
	mv.addObject("productList",list);
	mv.addObject("msg","successfully updated");
	return mv;
	
}
	
	@RequestMapping(value="/productbycat")
	public ModelAndView searchProduct(HttpServletRequest request)
	{
		int id = Integer.parseInt(request.getParameter("id"));
		int sort = Integer.parseInt(request.getParameter("sort"));
		ModelAndView su = new ModelAndView("search");
		su.addObject("productlist",ProductDAO.findByCatId(id,sort));
		su.addObject("listcat",CategoryDao.list());
		su.addObject("msg1",+id);
		return su;
		
	}
	@RequestMapping("/product-view")
	public ModelAndView returnProduct(HttpServletRequest request)
	{
		int id = Integer.parseInt(request.getParameter("id"));
		String msg = request.getParameter("msg");
		ModelAndView su = new ModelAndView("product-view");
		
		List<Product> list = ProductDAO.list();
		su.addObject("listcat",CategoryDao.list());
		su.addObject("product",ProductDAO.findById(id));
		su.addObject("msg",msg);
		su.addObject("product-view",list);
		
		return su;
		
	}
	

}
