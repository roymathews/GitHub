package com.sony.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sony.model.Offers;
import com.sony.dao.OffersDao;
@Controller
public class OffersController {
	
	@Autowired (required = true)
	private OffersDao OffersDao;
	
	@RequestMapping(value="/admin/offersubmit",method=RequestMethod.POST)
	public ModelAndView  reg(@RequestParam("main")String main,@RequestParam("desc")String desc)
	{		
		Offers c = new Offers();
		c.setDesc(desc);
        c.setMain(main);   
		OffersDao.SaveOffers(c);
		ModelAndView mv = new ModelAndView("redirect:/admin");
		mv.addObject("msg","successfully added");
		
		mv.addObject("admin");
		return mv;
		
		
	}
	@RequestMapping("/admin/listoffers")
	public String listoffers(Model model){
		
		model.addAttribute("listoffers",this.OffersDao.list());
		return "listoffers";
	}

}
