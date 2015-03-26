package com.lanyuan.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lanyuan.entity.Resources;
import com.lanyuan.entity.Roles;
import com.lanyuan.plugin.PageView;
import com.lanyuan.service.RolesService;
import com.lanyuan.util.Common;
import com.lanyuan.util.FromMap;

/**
 * 
 * @author lanyuan 2014-11-19
 * @Email: mmm333zzz520@163.com
 * @version 3.0v
 */
@Controller
@RequestMapping("/background/role/")
public class RolesController extends BaseController {
	@Inject
	private RolesService roleService;

	@RequestMapping("list")
	public String list(Model model, Resources menu, String pageNow) {
		return Common.BACKGROUND_PATH + "/role/list";
	}

	/**
	 * @param model
	 *            存放返回界面的model
	 * @return
	 */
	@ResponseBody
	@RequestMapping("query")
	public PageView query(Roles role, String pagenum, String pagesize) {
		pageView = roleService.query(getPageView(pagenum, pagesize), role);
		return pageView;
	}

	@ResponseBody
	@RequestMapping("queryAll")
	public Map<String, Object> queryAll(Roles role) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("roles", roleService.queryAll(role));
		return map;
	}

	/**
	 * 获取未科组匹配账号
	 * 
	 * @param account
	 * @param pageNow
	 * @param pagesize
	 * @return
	 */
	// @ResponseBody
	// @RequestMapping("queryNoMatch")
	// public PageView queryNoMatch(Roles role,String pageNow,String pagesize) {
	// pageView = roleService.queryNoMatch(role, getPageView(pageNow,pagesize));
	// return pageView;
	// }

	/**
	 * 保存数据
	 * 
	 * @param model
	 * @param videoType
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("add")
	@ResponseBody
	public String add(FromMap map) throws Exception {
		//roleService.add(role);
		System.out.println(map.get("roleKey"));
		return "success";
	}

	/**
	 * 跑到新增界面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("addUI")
	public String addUI() {
		return Common.BACKGROUND_PATH + "/role/add";
	}

	/**
	 * 跑到新增界面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("editUI")
	public String editUI(Model model, String roleId) {
		Roles role = roleService.getById(roleId);
		model.addAttribute("role", role);
		return Common.BACKGROUND_PATH + "/role/edit";
	}

	/**
	 * 验证账号是否存在
	 * 
	 * @author lanyuan Email：mmm333zzz520@163.com date：2014-2-19
	 * @param name
	 * @return
	 */
	@RequestMapping("isExist")
	@ResponseBody
	public boolean isExist(String name) {
		Roles role = roleService.isExist(name);
		if (role == null) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * 删除
	 * 
	 * @param model
	 * @param videoTypeId
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping("deleteById")
	public String deleteById(Model model, String ids) throws Exception {
		String id[] = ids.split(",");
		for (String string : id) {
			if (!Common.isEmpty(string)) {
				roleService.delete(string);
			}
		}
		return "success";
	}

	/**
	 * 删除
	 * 
	 * @param model
	 * @param videoTypeId
	 * @return
	 * @throws Exception
	 */
	// @ResponseBody
	// @RequestMapping("updateState")
	// public Map<String, Object> updateState(Model model, String ids,String
	// state) {
	// Map<String, Object> map = new HashMap<String, Object>();
	// try {
	// String id[] = ids.split(",");
	// for (String string : id) {
	// if(!Common.isEmpty(string)){
	// Account account = new Account();
	// account.setId(Integer.parseInt(string));
	// account.setState(state);
	// accountService.update(account);
	// }
	// }
	// map.put("flag", "true");
	// } catch (Exception e) {
	// map.put("flag", "false");
	// }
	// return map;
	// }
	/**
	 * 更新类型
	 * 
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping("update")
	public String update(Model model, Roles role) throws Exception {
		roleService.update(role);
		return "success";
	}

	@ResponseBody
	@RequestMapping("findbyAccountRole")
	public Roles findbyAccountRole(Model model, String accountId) {
		return roleService.findbyAccountRole(accountId);
	}

	@ResponseBody
	@RequestMapping("addAccRole")
	public String addAccRole(String accountId,String ids,HttpServletRequest request) throws Exception {
		List<String> ls = null;
		if(ids==null){
			String id[]=request.getParameterValues("ids[]");
			ls = Arrays.asList(id);
		}else{
			ls = Arrays.asList(ids);
		}
		roleService.addAccRole(accountId, ls);
		return "success";
	}

}