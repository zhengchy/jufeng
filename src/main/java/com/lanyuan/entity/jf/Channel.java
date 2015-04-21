package com.lanyuan.entity.jf;

import java.io.Serializable;

public class Channel implements Serializable {
	


	public String getChannelName() {
		return channelName;
	}

	public void setChannelName(String channelName) {
		this.channelName = channelName;
	}

	public String getChannelDesc() {
		return channelDesc;
	}

	public void setChannelDesc(String channelDesc) {
		this.channelDesc = channelDesc;
	}

	private Integer id;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	private String channelName;
	
	private String channelDesc;

}
