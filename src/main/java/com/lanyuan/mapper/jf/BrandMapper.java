package com.lanyuan.mapper.jf;

import com.lanyuan.base.BaseMapper;
import com.lanyuan.entity.jf.Brand;

public interface BrandMapper  extends BaseMapper<Brand> {

	public Brand isExist(String brandName);
}
