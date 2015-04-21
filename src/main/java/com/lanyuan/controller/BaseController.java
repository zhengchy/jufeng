package com.lanyuan.controller;

import com.lanyuan.plugin.PageView;
import com.lanyuan.util.Common;

/**
 * 
 * @author lanyuan
 * Email：mmm333zzz520@163.com
 * date：2014-2-17
 */ 
public class BaseController {
	protected PageView pageView = null;
	public PageView getPageView(String pageNow,String pageSize) {
		if (Common.isEmpty(pageNow)) {
			pageView = new PageView(1);
		} else {
			pageView = new PageView(Integer.parseInt(pageNow));
		}
		if (Common.isEmpty(pageSize)) {
			pageSize = "10";
		} 
		pageView.setPageSize(Integer.parseInt(pageSize));
		return pageView;
	}
	
	/**
	 * @ModelAttribute
	 * 这个注解作用.每执行controllor前都会先执行这个方法
	 * @author lanyuan
	 * Email：mmm333zzz520@163.com
	 * date：2014-5-25
	 * @param request
	 */
	/*@ModelAttribute
	public void init(HttpServletRequest request){
		String path = Common.BACKGROUND_PATH;
		Object ep = request.getSession().getAttribute("basePath");
		if(ep!=null){
			if(!path.endsWith(ep.toString())){
				Common.BACKGROUND_PATH = "/WEB-INF/jsp/background"+ep;
			}
		}
		
	}*/
}