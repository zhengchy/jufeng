package com.lanyuan.service.impl;


import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lanyuan.base.BaseServiceImpl;
import com.lanyuan.entity.jf.Product;
import com.lanyuan.mapper.jf.ProductMapper;
import com.lanyuan.service.ProductService;


@Transactional
@Service("productService") 
public class ProductServiceImpl extends BaseServiceImpl<Product> implements
		ProductService {
	
	@Inject
	private ProductMapper productMapper;

	public Product isExist(Product product) {
		// TODO Auto-generated method stub
		return productMapper.isExist(product);
	}


}
