package com.lanyuan.service.impl;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lanyuan.base.BaseServiceImpl;
import com.lanyuan.entity.jf.ProductFormat;
import com.lanyuan.mapper.jf.ProductFormatMapper;
import com.lanyuan.service.ProductFormatService;


@Transactional
@Service("formatService")
public class ProductFormatServiceImpl extends BaseServiceImpl<ProductFormat>
		implements ProductFormatService {
	
	private ProductFormatMapper productFormatMapper; 

}
