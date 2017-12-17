package com.sony.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sony.dao.UserDao;
import com.sony.dao.CategoryDao;
import com.sony.dao.ProductDao;
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
	
	@Autowired (required= true)
	private ProductDao ProductDAO;
	
	@RequestMapping("/register")
	public String regPage(Model model)
	{		
		
		model.addAttribute("listcat",this.CategoryDao.list());
		return "register";
		
		
	}
	@RequestMapping("/user")
	public String homeU(Model model)
	{	
		
		
		return "redirect:/";
		
		
	}
	
	@RequestMapping("/")
	public String home(Model model)
	{	
		model.addAttribute("listcat",this.CategoryDao.list());
		

		
		model.addAttribute("productlist",this.ProductDAO.list());
		
		return "index";
		
		
	}
	
	@RequestMapping("/login")
	public String login(Model model,@RequestParam("error")String error)
	{		
		model.addAttribute("listcat",this.CategoryDao.list());
		model.addAttribute("error",error);
		return "login";
		
		
	}
	@RequestMapping("/search")
	public String search()
	{
		
return "search";
}
	
	
	
	@RequestMapping("/success")
	public String success(Model model,@RequestParam("msg")String msg)
	{		
		
		model.addAttribute("msg",msg);
		return "success";
		
		
	}
	
	
	@RequestMapping("/admin")
	public String admin(Model model,@RequestParam("msg")String msg)
	{		
		List<Category> clist=CategoryDao.list();
		model.addAttribute("listcat",clist);
		List<Supplier> slist= SupplierDao.list();
		model.addAttribute("listsup",slist);
		model.addAttribute("msg",msg);
		return "admin";
		
		
	}
	@RequestMapping("/admin/admin")
	public String admina()
	{		
		
		return "redirect:/admin?msg=";
		
		
	}
	@RequestMapping(value="/registerUser",method=RequestMethod.POST)
	public ModelAndView  reg(@RequestParam("name")String name,@RequestParam("email") String email, @RequestParam("mobile") String mobile,@RequestParam("password") String password)
	{		
		User u=new User();
		u.setEmail(email);
		u.setMobile(mobile);
		u.setRole("USER");
		u.setPassword(password);
		u.setUsername(name);
		
		UserDao.saveUser(u);
		ModelAndView mv = new ModelAndView("register");
		mv.addObject("msg","User Registered");
		mv.addObject("register");
		return mv;
		
		
	}
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null){    
	        new SecurityContextLogoutHandler().logout(request, response, auth);
	    }
	    return "redirect:/";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
	}
	
	
}
