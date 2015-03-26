package com.lanyuan.util;

import java.io.Serializable;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

/**
 * SpringMvc 
 * 把请求的所有参数封装到Map中
 * @author lanyuan
 * Email：mmm333zzz520@163.com
 * date：2015-03-21
 * @version 3.0
 */
public class FromMap implements Serializable  {
	private static final long serialVersionUID = 1L;
	Map<String,Object> map =new HashMap<String,Object>();

	@SuppressWarnings({ "rawtypes" })
	public FromMap() {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();  
		Enumeration en = request.getParameterNames();
		while (en.hasMoreElements()) {
			String nms = en.nextElement().toString();
			map.put(nms, request.getParameter(nms).trim());
		}
		System.out.println(map);
	}
	
	public Object get(Object key) {
		Object o = map.get(key);
		if(null!=o)o.toString();
		return o;
	}
	
	public void set(String key,Object value){
		map.put(key, value);
	}
	/**
	 * Get attribute of mysql type: varchar, char, enum, set, text, tinytext,
	 * mediumtext, longtext
	 */
	public String getStr(String attr) {
		return (String) map.get(attr);
	}

	/**
	 * Get attribute of mysql type: int, integer, tinyint(n) n > 1, smallint,
	 * mediumint
	 */
	public Integer getInt(String attr) {
		return (Integer) map.get(attr);
	}

	/**
	 * Get attribute of mysql type: bigint, unsign int
	 */
	public Long getLong(String attr) {
		return (Long) map.get(attr);
	}

	/**
	 * Get attribute of mysql type: unsigned bigint
	 */
	public java.math.BigInteger getBigInteger(String attr) {
		return (java.math.BigInteger) map.get(attr);
	}

	/**
	 * Get attribute of mysql type: date, year
	 */
	public java.util.Date getDate(String attr) {
		return (java.util.Date) map.get(attr);
	}

	/**
	 * Get attribute of mysql type: time
	 */
	public java.sql.Time getTime(String attr) {
		return (java.sql.Time) map.get(attr);
	}

	/**
	 * Get attribute of mysql type: timestamp, datetime
	 */
	public java.sql.Timestamp getTimestamp(String attr) {
		return (java.sql.Timestamp) map.get(attr);
	}

	/**
	 * Get attribute of mysql type: real, double
	 */
	public Double getDouble(String attr) {
		return (Double) map.get(attr);
	}

	/**
	 * Get attribute of mysql type: float
	 */
	public Float getFloat(String attr) {
		return (Float) map.get(attr);
	}

	/**
	 * Get attribute of mysql type: bit, tinyint(1)
	 */
	public Boolean getBoolean(String attr) {
		return (Boolean) map.get(attr);
	}

	/**
	 * Get attribute of mysql type: decimal, numeric
	 */
	public java.math.BigDecimal getBigDecimal(String attr) {
		return (java.math.BigDecimal) map.get(attr);
	}

	/**
	 * Get attribute of mysql type: binary, varbinary, tinyblob, blob,
	 * mediumblob, longblob
	 */
	public byte[] getBytes(String attr) {
		return (byte[]) map.get(attr);
	}

	/**
	 * Get attribute of any type that extends from Number
	 */
	public Number getNumber(String attr) {
		return (Number) map.get(attr);
	}
	
	/**
	 * Return attribute names of this model.
	 */
	public String[] getAttrNames() {
		Set<String> attrNameSet = map.keySet();
		return attrNameSet.toArray(new String[attrNameSet.size()]);
	}

	/**
	 * Return attribute values of this model.
	 */
	public Object[] getAttrValues() {
		java.util.Collection<Object> attrValueCollection = map.values();
		return attrValueCollection.toArray(new Object[attrValueCollection
				.size()]);
	}

	/**
	 * Return attribute Set.
	 */
	public Set<Entry<String, Object>> getAttrsEntrySet() {
		return map.entrySet();
	}
	
	public Map<String,Object> getMap() {
		return map;
	}
	public void setMap(Map<String,Object> map) {
		this.map = map;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append(super.toString()).append(" {");
		boolean first = true;
		for (Entry<String, Object> e : map.entrySet()) {
			if (first)
				first = false;
			else
				sb.append(", ");

			Object value = e.getValue();
			if(null!=value)value.toString();
			sb.append(e.getKey()).append(":").append(value);
		}
		sb.append("}");
		return sb.toString();
	}
	

}
