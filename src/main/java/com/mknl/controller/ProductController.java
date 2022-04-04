package com.mknl.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mknl.service.IProductService;

@Controller
public class ProductController extends BaseController{
	@Autowired
	private IProductService _productService ;
	@RequestMapping(value = { "chi-tiet/{id}"})
	public ModelAndView Index(@PathVariable long id) {
		_mvShare.setViewName("user/product");
		_mvShare.addObject(_productService.GetProductsByID(id));
		
		return _mvShare;
	}
}
