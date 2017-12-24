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
@RequestMapping("/admin/offer_edit")
public ModelAndView editoffer(HttpServletRequest request)
{
	
	int id = Integer.parseInt(request.getParameter("id"));
	ModelAndView su = new ModelAndView("offer_edit");
	List<Offers> list = OffersDao.list();
	su.addObject("offers",OffersDao.findByid(id));
	su.addObject("offers_edit",list);
	
	return su;
	
	
	
}	
@RequestMapping(value="/admin/offer_update",method=RequestMethod.POST)

public ModelAndView ss(@RequestParam("id")int id,@RequestParam("name")String name,@RequestParam("desc")String desc)
{	
Offers s = new Offers();

s.setId(id);
s.setDesc(desc);
s.setMain(name);
OffersDao.updateoffer(s);
ModelAndView mv = new ModelAndView("listoffers");
List<Offers> list=OffersDao.list();
mv.addObject("listoffer",list);
mv.addObject("msg","successfully updated");
return mv;

}

@RequestMapping(value="/admin/offer_delete")
public ModelAndView deleteOffer(HttpServletRequest request){
	
	Offers c=OffersDao.findByid(Integer.valueOf(request.getParameter("id")));
	System.out.print(c);
	ModelAndView mv= new ModelAndView("listoffers");	
	
	OffersDao.delete(c);
	mv.addObject("msg","Offer Deleted");
	
	
	List<Offers> list=OffersDao.list();
	mv.addObject("listoffer",list);
	return mv;
	
}

}
