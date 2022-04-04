package com.mknl.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.mknl.service.HomeUserImpl;

@Controller
public class HomeController {
	@Autowired
	HomeUserImpl HomeSerice;

	@RequestMapping(value = { "/", "/trang-chu" })
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView("user/index");
		mv.addObject("slides", HomeSerice.GetDataSlides());
		mv.addObject("categorys", HomeSerice.GetDataCategorys());
		mv.addObject("products", HomeSerice.GetDataProducts());
		mv.addObject("products_new", HomeSerice.GetDataProducts());
		return mv;
	}

	@RequestMapping(value = "/thong-tin")
	public ModelAndView Info() {
		ModelAndView mv = new ModelAndView("user/info");
		return mv;
	}
}
