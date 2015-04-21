package com.lanyuan.controller.jf;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lanyuan.controller.BaseController;

import com.lanyuan.entity.jf.Channel;
import com.lanyuan.service.ChannelService;

@Controller
@RequestMapping("/jf/channel/")
public class ChannelContorller extends BaseController {
	
	@Inject
	private ChannelService channelService;
	
	@ResponseBody
	@RequestMapping("queryChannelList")
	public List<Channel> queryChannelList(Model model,Channel channel){
		return channelService.queryAll(channel);
	}

}
