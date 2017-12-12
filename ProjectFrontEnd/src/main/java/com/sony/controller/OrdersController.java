package com.sony.controller;

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
	
	public ModelAndView ss(@RequestParam("total")float total,@RequestParam("name")String name,@RequestParam("email")String email,@RequestParam("address")String address,@RequestParam("city")String city,@RequestParam("pin")int pin,@RequestParam("phone")long phone)
	{	
	Orders o = new Orders();
	Cart c = new Cart();
	o.setAddress(address);
	o.setCity(city);
	o.setEmail(email);
	o.setPhone(phone);
	o.setPin(pin);
	o.setUser(name);
	o.setTotal(total);
	OrdersDao.saveOrders(o);
	c.setUser(email);
	
	CartDao.delete(c);
	ModelAndView mv = new ModelAndView("redirect:../");
	mv.addObject("msg","successfully added");

	return mv;
	
	}


	
}
