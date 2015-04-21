package com.lanyuan.entity.jf;

@SuppressWarnings("serial")
public class ProductFormat implements java.io.Serializable {



	public String getFormatName() {
		return formatName;
	}

	public void setFormatName(String formatName) {
		this.formatName = formatName;
	}

	public String getFormatDesc() {
		return formatDesc;
	}

	public void setFormatDesc(String formatDesc) {
		this.formatDesc = formatDesc;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	private Integer id;
	
	private String formatName;
	
	private String formatDesc;
}
