package com.lanyuan.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lanyuan.base.BaseServiceImpl;
import com.lanyuan.entity.ServerInfo;
import com.lanyuan.service.ServerInfoService;

@Transactional
@Service("serverInfoService")
public class ServerInfoServiceImpl extends BaseServiceImpl<ServerInfo> implements ServerInfoService {
	/*@Inject
	private ServerInfoMapper serverInfoMapper;*/
}
