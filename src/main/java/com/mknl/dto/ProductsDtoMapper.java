package com.mknl.dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ProductsDtoMapper implements RowMapper<ProductsDto> {

	@Override
	public ProductsDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductsDto productsDto = new ProductsDto();
		productsDto.setCode_color(rs.getString("code_color"));
		productsDto.setCreated_at(rs.getDate("created_at"));
		productsDto.setDetails(rs.getString("details"));
		productsDto.setHighlight(rs.getBoolean("highlight"));
		productsDto.setId_category(rs.getInt("id_category"));
		productsDto.setId_color(rs.getLong("id_color"));
		productsDto.setId_product(rs.getLong("id_product"));
		productsDto.setImg(rs.getString("img"));
		productsDto.setName(rs.getString("name"));
		productsDto.setName_color(rs.getString("name_color"));
		productsDto.setNew_product(rs.getBoolean("new_product"));
		productsDto.setPrice(rs.getDouble("price"));
		productsDto.setSale(rs.getInt("sale"));
		productsDto.setSizes(rs.getString("sizes"));
		productsDto.setTitle(rs.getString("title"));
		productsDto.setUpdated_at(rs.getDate("updated_at"));

		return productsDto;
	}

}
