package com.lanyuan.service;

import com.lanyuan.base.BaseService;
import com.lanyuan.entity.jf.Product;

public interface ProductService extends BaseService<Product> {
	public Product isExist(Product product);

}
