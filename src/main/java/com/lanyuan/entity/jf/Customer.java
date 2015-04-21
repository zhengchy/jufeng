package com.lanyuan.entity.jf;

import java.io.Serializable;

public class Customer implements Serializable {


	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerDesc() {
		return customerDesc;
	}

	public void setCustomerDesc(String customerDesc) {
		this.customerDesc = customerDesc;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	private Integer id;
	
	private String customerName;
	
	private String customerDesc;

}
