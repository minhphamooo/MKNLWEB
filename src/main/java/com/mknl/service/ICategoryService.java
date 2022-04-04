package com.mknl.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mknl.dto.ProductsDto;

@Service
public interface ICategoryService {
	public List<ProductsDto> GetAllProductsByID(int id);
}
