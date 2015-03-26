package com.lanyuan.entity;

import java.util.Date;

import org.codehaus.jackson.map.annotate.JsonSerialize;


import com.lanyuan.util.ExcelDataMapper;
import com.lanyuan.util.JsonDateSerializer;


/**
 * 账号实体表
 */
@SuppressWarnings("serial")
public class Account implements java.io.Serializable {
	
	private int id;

	private String accountName;//账号名
	
	private String pic;//头像
	
	private String roleName;//账号名

	private String password;//密码

	private String description;//说明

	private String locked;//账号状态  0 表示停用  1表示启用
	
	private String credentialsSalt;//加密的盐

	private Date createTime; //创建时间
	@ExcelDataMapper(title="id",order=1)
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	@ExcelDataMapper(title="账号名称",order=2)
	public String getAccountName() {
		return accountName;
	}

	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * 时间格式化
	 * @author lanyuan
	 * Email：mmm333zzz520@163.com
	 * date：2014-2-17
	 * @return
	 */
	@ExcelDataMapper(title="创建时间",order=4)
	@JsonSerialize(using=JsonDateSerializer.class)
	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	@Override
	public String toString() {
		return "Account [id=" + id + ", accountName=" + accountName + ", password=" + password + ",description=" + description + ", locked=" + locked + ", createTime=" + createTime + "]";
	}
	@ExcelDataMapper(title="描述",order=5)
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	@ExcelDataMapper(title="账号状态",order=3)
	public String getLocked() {
		return locked;
	}

	public void setLocked(String locked) {
		this.locked = locked;
	}

	public String getCredentialsSalt() {
		return credentialsSalt+accountName;
	}

	public void setCredentialsSalt(String credentialsSalt) {
		this.credentialsSalt = credentialsSalt;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

}
