package com.mknl.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mknl.dao.CategorysDao;
import com.mknl.dao.ProductsDao;
import com.mknl.dao.SlidesDao;
import com.mknl.dto.ProductsDto;
import com.mknl.entity.Categorys;
import com.mknl.entity.Slides;

@Service
public class HomeUserImpl implements IHomeUser {
	@Autowired
	public SlidesDao slidesDao;
	@Autowired
	public CategorysDao categorysDao;
	@Autowired
	public ProductsDao productsDao;

	public List<Slides> GetDataSlides() {

		return slidesDao.GetDataSlides();
	}

	public List<Categorys> GetDataCategorys() {

		return categorysDao.GetDataCategorys();
	}

	@Override
	public List<ProductsDto> GetDataProducts() {
		List<ProductsDto> listProducts = productsDao.GetDataProducts();
		return listProducts;
	}

}
