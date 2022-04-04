package com.mknl.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mknl.dao.ProductsDao;
import com.mknl.dto.ProductsDto;

@Service
public class ProductServicelmpl implements IProductService {
	@Autowired
	private ProductsDao productsDao;

	public ProductsDto GetProductsByID(long id) {
		List<ProductsDto> listproducts = productsDao.GetProductByID(id); 
		return listproducts.get(0);
	}
}
