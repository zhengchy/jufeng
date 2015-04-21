package com.lanyuan.service.impl;


import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lanyuan.base.BaseServiceImpl;
import com.lanyuan.entity.jf.Brand;
import com.lanyuan.mapper.jf.BrandMapper;
import com.lanyuan.service.BrandService;


@Transactional
@Service("brandService")
public class BrandServiceImpl extends BaseServiceImpl<Brand> implements
		BrandService {
	
	@Inject
	private BrandMapper brandMapper;

	public Brand isExist(String brandName) {
		// TODO Auto-generated method stub
		return brandMapper.isExist(brandName);
	}


}
