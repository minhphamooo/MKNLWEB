package com.mknl.service;

import org.springframework.stereotype.Service;

import com.mknl.dto.PaginatesDto;

@Service

public interface IPaginatesService {
	public PaginatesDto GetInfoPaginates(int totalData, int limit, int currentPage);
}