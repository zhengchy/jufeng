package com.lanyuan.mapper.jf;

import com.lanyuan.base.BaseMapper;
import com.lanyuan.entity.jf.Product;

public interface ProductMapper  extends BaseMapper<Product> {

	public Product isExist(Product product);
}
