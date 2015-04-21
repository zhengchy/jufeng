package com.lanyuan.entity.jf;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

@SuppressWarnings("serial")
public class Stock implements java.io.Serializable {
	

	public Channel getChannel() {
		return channel;
	}

	public void setChannel(Channel channel) {
		this.channel = channel;
	}

	public Brand getBrand() {
		return brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	public ProductFormat getFormat() {
		return format;
	}

	public void setFormat(ProductFormat format) {
		this.format = format;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String getTyreNum() {
		return tyreNum;
	}

	public void setTyreNum(String tyreNum) {
		this.tyreNum = tyreNum;
	}



	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public String getUseCar() {
		return useCar;
	}

	public void setUseCar(String useCar) {
		this.useCar = useCar;
	}

	public String getInUser() {
		return inUser;
	}

	public void setInUser(String inUser) {
		this.inUser = inUser;
	}

	public String getOutUser() {
		return outUser;
	}

	public void setOutUser(String outUser) {
		this.outUser = outUser;
	}

	public Date getInDate() {
		return inDate;
	}

	public void setInDate(Date inDate) {
		this.inDate = inDate;
	}

	public Date getOutDate() {
		return outDate;
	}

	public void setOutDate(Date outDate) {
		this.outDate = outDate;
	}
	
	public String getStateDesc(){
		if(this.state == 0)
			return "已入库";
		if(this.state == 1)
			return "已入库";
		return "";
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	private Integer id;
	
	private Channel channel;
	
	private Brand brand;
	
	private ProductFormat format;
	
	private Product product;
	
	private String tyreNum;
	
	public Double getInPrice() {
		return inPrice;
	}

	public void setInPrice(Double inPrice) {
		this.inPrice = inPrice;
	}

	public Double getOutPrice() {
		return outPrice;
	}

	public void setOutPrice(Double outPrice) {
		this.outPrice = outPrice;
	}

	private Double inPrice;
	
	private Double outPrice;
	
	private Customer customer;

	private String useCar;
	
	private String inUser;
	
	private String outUser;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date inDate;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date outDate;
	
	private int state;
	
	public static int STATE_IN = 0;
	
	public static int STATE_OUR = 1;

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}
	
	
	
	
	
	

}
