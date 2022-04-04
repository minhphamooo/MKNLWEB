package com.mknl.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mknl.dto.ProductsDto;
import com.mknl.entity.Categorys;
import com.mknl.entity.Slides;

@Service
public interface IHomeUser {
	@Autowired
	public List<Slides> GetDataSlides();
	public List<Categorys> GetDataCategorys();
	public List<ProductsDto> GetDataProducts();
}
