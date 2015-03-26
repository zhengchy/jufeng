package com.lanyuan.service.impl;


import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lanyuan.base.BaseServiceImpl;
import com.lanyuan.entity.DicType;
import com.lanyuan.mapper.DicTypeMapper;
import com.lanyuan.service.DicTypeService;

@Transactional
@Service("dicTypeService")
public class DicTypeServiceImpl extends BaseServiceImpl<DicType> implements DicTypeService {
	@Inject
	private DicTypeMapper dicTypeMapper;

	public DicType isExist(DicType dicType) {
		return dicTypeMapper.isExist(dicType);
	}

	public DicType queryById(DicType dicType) {
		return dicTypeMapper.queryById(dicType);
	}

}
