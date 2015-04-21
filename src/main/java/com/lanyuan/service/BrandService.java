package com.lanyuan.service;

import com.lanyuan.base.BaseService;
import com.lanyuan.entity.jf.Brand;

public interface BrandService extends BaseService<Brand> {
	public Brand isExist(String brandName);

}
