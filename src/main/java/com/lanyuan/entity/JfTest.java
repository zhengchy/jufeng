package com.lanyuan.entity;

/**
 * 
 * @author zhengchy
 *
 */
@SuppressWarnings("serial")
public class JfTest implements java.io.Serializable{
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	private int id ;
	private String name;
	private String age;
	
	
}
