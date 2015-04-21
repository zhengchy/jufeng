package com.lanyuan.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lanyuan.base.BaseServiceImpl;
import com.lanyuan.entity.jf.Stock;
import com.lanyuan.mapper.jf.StockMapper;
import com.lanyuan.plugin.PageView;
import com.lanyuan.service.StockService;

@Transactional
@Service("stockService")
public class StockServiceImpl extends BaseServiceImpl<Stock> implements
		StockService {
	
	@Inject
	private StockMapper stockMapper;

}
