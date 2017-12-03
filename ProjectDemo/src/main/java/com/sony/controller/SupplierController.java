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


import com.sony.model.Supplier;
import com.sony.dao.SupplierDao;

@Controller
public class SupplierController {

	@Autowired (required=true)
	private SupplierDao SupplierDao;
	
	@RequestMapping(value="/suppliersubmit",method=RequestMethod.POST)
	public ModelAndView supp(@RequestParam("name")String name,@RequestParam("address")String address,@RequestParam("phone")String phone)
	{
		Supplier s = new Supplier();
		s.setAddress(address);
		
		s.setMobile(phone);
		s.setName(name);
		
		SupplierDao.SaveSupplier(s);
		ModelAndView mv = new ModelAndView("admin");
		mv.addObject("msg","successfully added");
		mv.addObject("admin");
		return mv;
		
	}
	@RequestMapping("/listsup")
	public String listcat(Model model){
		
		model.addAttribute("listsup",this.SupplierDao.list());
		return "listsup";
	}
	@RequestMapping(value="/supplier_delete")
	public ModelAndView deleteProduct(HttpServletRequest request){
		
		Supplier p=SupplierDao.findById(Integer.valueOf(request.getParameter("id")));
		System.out.print(p);
		ModelAndView mv= new ModelAndView("listsup");	
		try
		{
			SupplierDao.delete(p);
		mv.addObject("msg","Supplier Deleted");
		}
		catch (Exception e) 
		{
			mv.addObject("msg","cannot delete");
		}
		
		List<Supplier> list=SupplierDao.list();
		mv.addObject("listsup",list);
		return mv;
		
	}
	@RequestMapping(value="/supplier_edit")
	public ModelAndView editSupplier(HttpServletRequest request){
		int id=Integer.parseInt(request.getParameter("id"));
		ModelAndView su = new ModelAndView("supplier_edit");
		List<Supplier> list = SupplierDao.list();
		su.addObject("supplier",SupplierDao.findById(id));
		su.addObject("supplier_edit",list);
		return su;
	
		
	}
	
	@RequestMapping(value="/supplier_update",method=RequestMethod.POST)
	
		public ModelAndView ss(@RequestParam("id")int ID,@RequestParam("name")String name,@RequestParam("address")String address,@RequestParam("phone")String phone)
		{	
		Supplier s = new Supplier();
		s.setID(ID);
		s.setAddress(address);
		s.setMobile(phone);
		s.setName(name);
		SupplierDao.updatesupplier(s);
		ModelAndView mv = new ModelAndView("listsup");
		List<Supplier> list=SupplierDao.list();
		mv.addObject("listsup",list);
		mv.addObject("msg","successfully updated");
		return mv;
		
	}
	
	
}
