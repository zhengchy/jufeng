package com.lanyuan.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lanyuan.base.BaseServiceImpl;
import com.lanyuan.entity.Log;
import com.lanyuan.service.LogService;

@Transactional
@Service("logService")
public class LogServiceImpl extends BaseServiceImpl<Log> implements LogService {
	/*@Inject
	private LogMapper logMapper;*/
}
