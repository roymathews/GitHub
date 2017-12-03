package com.sony.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sony.dao.UserDao;
import com.sony.dao.CategoryDao;
import com.sony.dao.SupplierDao;
import com.sony.model.Category;
import com.sony.model.Supplier;
import com.sony.model.User;


@Controller
public class UserController {

	@Autowired (required= true)
	private UserDao UserDao;
	
	@Autowired (required= true)
	private CategoryDao CategoryDao;
	
	@Autowired (required= true)
	private SupplierDao SupplierDao;
	
	@RequestMapping("/register")
	public String regPage(Model model)
	{		
		
		model.addAttribute("listcat",this.CategoryDao.list());
		return "register";
		
		
	}
	@RequestMapping("/")
	public String home(Model model)
	{	
		model.addAttribute("listcat",this.CategoryDao.list());
		return "index";
		
		
	}
	
	@RequestMapping("/login")
	public String login(Model model)
	{		
		model.addAttribute("listcat",this.CategoryDao.list());
		return "login";
		
		
	}
	
	@RequestMapping("/admin")
	public String admin(Model model)
	{		
		List<Category> clist=CategoryDao.list();
		model.addAttribute("listcat",clist);
		List<Supplier> slist= SupplierDao.list();
		model.addAttribute("listsup",slist);
		return "admin";
		
		
	}
	@RequestMapping(value="/registerUser",method=RequestMethod.POST)
	public ModelAndView  reg(@RequestParam("name")String name,@RequestParam("email") String email, @RequestParam("mobile") String mobile,@RequestParam("password") String password)
	{		
		User u=new User();
		u.setEmail(email);
		u.setMobile(mobile);
		u.setPassword(password);
		u.setUsername(name);
		
		UserDao.saveUser(u);
		ModelAndView mv = new ModelAndView("register");
		mv.addObject("msg","User Registered");
		mv.addObject("register");
		return mv;
		
		
	}
	
	
	
}
