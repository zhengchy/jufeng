package com.lanyuan.entity.jf;

@SuppressWarnings("serial")
public class Brand  implements java.io.Serializable{


	public String getBrandName() {
		return brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	private Integer id;
	
	private String brandName;
	
	private String brandDesc;

	public String getBrandDesc() {
		return brandDesc;
	}

	public void setBrandDesc(String brandDesc) {
		this.brandDesc = brandDesc;
	}
}
