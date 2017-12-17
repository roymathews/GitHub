package com.sony.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sony.dao.CartDao;
import com.sony.dao.OrdersDao;
import com.sony.model.Cart;
import com.sony.model.Orders;


@Controller
public class OrdersController {
	@Autowired (required= true)
	private OrdersDao OrdersDao;
	@Autowired (required= true)
	private CartDao CartDao;
	
@RequestMapping(value="/user/place-order",method=RequestMethod.POST)
	
	public ModelAndView ss(@RequestParam("total")float total,@RequestParam("name")String name,@RequestParam("email")String email,@RequestParam("address")String address,@RequestParam("city")String city,@RequestParam("pin")int pin,@RequestParam("phone")String phone)
	{	
	Orders o = new Orders();
	
	o.setAddress(address);
	o.setCity(city);
	o.setEmail(email);
	o.setPhone(phone);
	o.setPin(pin);
	o.setUser(name);
	o.setTotal(total);
	OrdersDao.saveOrders(o);
	List<Cart> c = CartDao.list(email);
	for (int i=0;i<c.size();i++)
	{
		CartDao.delete(c.get(i));
		
	}
	
	ModelAndView mv = new ModelAndView("redirect:../success");
	mv.addObject("msg","Order Placed successfully");

	return mv;
	
	}


	
}
