package com.mknl.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;
import com.mknl.service.HomeUserImpl;

@Controller
public class BaseController {
	@Autowired
	HomeUserImpl _homeService;
	public ModelAndView _mvShare = new ModelAndView();
	

}