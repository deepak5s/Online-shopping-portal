package com.ezone.Ezonefrontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ezone.Ezonebackend.dao.CategoryDAO;

@Controller
public class PageController {
	
	@Autowired
	private CategoryDAO categoryDAO;

	@RequestMapping(value = { "/", "/home", "/index" })
	public ModelAndView index() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");
		
		
		//passing the list of category
		
				mv.addObject("categories",categoryDAO.list());
				
				mv.addObject("userClickHome", true);
				
		
		
		
		
		

		return mv;

	}

	@RequestMapping(value = "/contactus")

	public ModelAndView contact() {

		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "Contact Us");

		mv.addObject("userClickContact", true);

		return mv;

	}
	
	@RequestMapping(value = "/aboutus")

	public ModelAndView about() {

		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "About Us");

		mv.addObject("userClickAbout", true);

		return mv;

	}

	
	
	
	
	
	
	
	
	

}