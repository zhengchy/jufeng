package com.lanyuan.service.impl;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lanyuan.base.BaseServiceImpl;
import com.lanyuan.entity.Dic;
import com.lanyuan.mapper.DicMapper;
import com.lanyuan.service.DicService;

@Transactional
@Service("dicService")
public class DicServiceImpl extends BaseServiceImpl<Dic> implements DicService {
	@Inject
	private DicMapper dicMapper;

	public Dic isExist(Dic dic) {
		return dicMapper.isExist(dic);
	}
}
