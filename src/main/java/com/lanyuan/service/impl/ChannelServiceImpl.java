package com.lanyuan.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lanyuan.base.BaseServiceImpl;
import com.lanyuan.entity.jf.Channel;
import com.lanyuan.mapper.jf.ChannelMapper;
import com.lanyuan.service.ChannelService;

@Transactional
@Service("channelService")
public class ChannelServiceImpl extends BaseServiceImpl<Channel> implements
		ChannelService {

	@Inject
	private ChannelMapper channelMapper;
} 
