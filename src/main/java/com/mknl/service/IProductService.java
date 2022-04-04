package com.mknl.service;



import org.springframework.stereotype.Service;

import com.mknl.dto.ProductsDto;
@Service
public interface IProductService {
	
	public ProductsDto GetProductsByID(long id);
}
