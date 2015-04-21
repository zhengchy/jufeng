package com.lanyuan.mapper;

import com.lanyuan.base.BaseMapper;
import com.lanyuan.entity.JfTest;

public interface JfTestMapper extends BaseMapper<JfTest> {
	
	
	public JfTest isExist(JfTest jfTest);
	
	
}
