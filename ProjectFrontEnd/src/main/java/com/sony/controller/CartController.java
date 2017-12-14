package com.sony.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.sony.model.Cart;
import com.sony.model.Category;
import com.sony.model.Product;
import com.sony.dao.CartDao;
import com.sony.dao.ProductDao;
import com.sony.dao.CategoryDao;
import com.sony.dao.UserDao;

@Controller
public class CartController {
	
	@Autowired (required= true)
	private ProductDao productDao;
	@Autowired (required= true)
	private CartDao CartDao;
	@Autowired (required= true)
	private CategoryDao CategoryDao;
	@Autowired (required= true)
	private UserDao UserDao;
	
	@RequestMapping(value="/user/cart")
	public String addtocart(Model mv,@RequestParam("id") int id)
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	      String name = auth.getName();
	    
	      Product p=productDao.findById(id);
	      List<Cart> ca = CartDao.findByPid(id,name);
	     if(p.getStock()>0)
	     {
	    	   Cart c ;
	    	   if(ca.isEmpty())
	    	   { 
	    		   c=new Cart();
	    		   c.setQuantity(1);
	    	    c.setUser(name);
	 	        c.setProduct(p);
	 	        CartDao.addtocart(c);
	 	        p.setStock(p.getStock()-1);
	 	      productDao.updateproduct(p);
	 	  		mv.addAttribute("msg","successfully added to cart");
	      		   
	    		  
	           }
	    	   
	    	   else{
	    		   c=ca.get(0);
	    		   c.setQuantity(c.getQuantity()+1);
	    		   CartDao.updatecart(c);
	    		   p.setStock(p.getStock()-1);
	 	 	      productDao.updateproduct(p);
	    		   mv.addAttribute("msg","successfully Updated to cart");
	    	   
	        }
	   
	  		
	     }else
	     {
	   mv.addAttribute("msg","No stock left");
	    
		
	     }
	     return "redirect:/product-view?id="+id;
	}
	
	@RequestMapping(value="/user/view-cart")
	public String cart(Model model){
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	      String name = auth.getName();
		model.addAttribute("cartlist",this.CartDao.list(name));
		model.addAttribute("listcat",this.CategoryDao.list());
		return "cart";
		
	}
	@RequestMapping(value="/user/remove-cart")
	public String removecart(Model model,HttpServletRequest request)
	{
		Cart c=CartDao.findByid(Integer.valueOf(request.getParameter("id")));
		System.out.print(c.getQuantity());
		
		   Product p=productDao.findById(c.getProduct().getId());
		
		p.setStock(c.getQuantity()+p.getStock());
		  CartDao.removecart(c);
		productDao.updateproduct(p); 
		
          return "redirect:/user/view-cart";
		
		
	}
	@RequestMapping("/user/check-out")
	public String delivery(Model model)
	{
		List<Category> clist=CategoryDao.list();
		model.addAttribute("listcat",clist);
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	      String name = auth.getName();
	      model.addAttribute("cartlist",this.CartDao.list(name));
	      model.addAttribute("userlist",this.UserDao.list(name));
		
		
return "delivery";
}

}
