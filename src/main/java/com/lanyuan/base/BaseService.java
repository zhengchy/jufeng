package com.lanyuan.base;

import com.lanyuan.plugin.PageView;



/**
 * 所有服务接口都要继承这个
 * @author lanyuan
 * @date 2014-12-11
 * @Email: mmm333zzz520@163.com
 * @version 3.0v
 * @param <T>
 */
public interface BaseService<T> extends Base<T> {
	/**
	 * 返回分页后的数据
	 * @param pageView T t
	 * @param t
	 * @return PageView
	 */
	public PageView query(PageView pageView,T t);
	
}
