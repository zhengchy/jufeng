package com.lanyuan.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.PropertyUtils;
import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lanyuan.entity.Params;
import com.lanyuan.entity.Resources;
import com.lanyuan.plugin.PageView;
import com.lanyuan.service.ResourcesService;
import com.lanyuan.util.Common;
import com.lanyuan.util.PropertiesUtils;
import com.lanyuan.util.TreeObject;
import com.lanyuan.util.TreeUtil;

/**
 * 
 * @author lanyuan 2014-11-19
 * @Email: mmm333zzz520@163.com
 * @version 3.0v
 */
@Controller
@RequestMapping("/background/resources/")
public class ResourcesController extends BaseController {
	@Inject
	private ResourcesService resourcesService;

	@ResponseBody
	@RequestMapping("perm")
	public Map<String, Object> perm(Model model) {
		Map<String, Object> map = new HashMap<String, Object>();
		/*
		 * List<Department> dp =
		 * DepartmentUtil.getChildDeparts(departmentService.queryAll(new
		 * Department()), 0); map.put("records", dp);
		 */
		return map;
	}

	@RequestMapping("aution")
	public String aution(Model model) throws Exception {
		List<Resources> rs = resourcesService.queryAll(new Resources());
		List<TreeObject> treeObjects = new ArrayList<TreeObject>();
		for (Resources res : rs) {// 转换为树对象
			TreeObject t = new TreeObject();
			PropertyUtils.copyProperties(t, res);
			treeObjects.add(t);
		}
		TreeUtil treeUtil = new TreeUtil();
		List<TreeObject> ns = treeUtil.getChildTreeObjects(treeObjects, 0);
		model.addAttribute("permissions", ns);
		return Common.BACKGROUND_PATH + "/resources/permissions";
	}

	@ResponseBody
	@RequestMapping("findRoleRes")
	public List<Resources> findRoleRes(String roleId) {
		return resourcesService.findRoleRes(roleId);
	}

	/**
	 * @param model
	 *            存放返回界面的model
	 * @return
	 */
	@ResponseBody
	@RequestMapping("query")
	public PageView query(Model model, Resources resources, String pagenum,
			String pagesize) {
		pageView = resourcesService.query(getPageView(pagenum, pagesize),
				resources);
		return pageView;
	}

	/**
	 * @param model
	 *            存放返回界面的model
	 * @return
	 */
	@RequestMapping("list")
	public String list(Model model, Resources resources, String pageNow) {
		return Common.BACKGROUND_PATH + "/resources/list";
	}
	
	@ResponseBody
	@RequestMapping("resources")
	public Map<String, Object> resourcess(Resources resources,HttpServletRequest request) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		String userid = Common.findUserSessionId(request);
		List<Resources> rs = null;
		if("1".equals(userid)){
			rs =resourcesService.queryAll(new Resources());
		}else{
			rs =resourcesService.findAccountResourcess(userid);
		}
		
		List<TreeObject> treeObjects = new ArrayList<TreeObject>();
		for (Resources res : rs) {//转换为树对象
			TreeObject t = new TreeObject();
			PropertyUtils.copyProperties(t,res );
			treeObjects.add(t);
		}
		TreeUtil treeUtil = new TreeUtil();
		List<TreeObject> ns = treeUtil.getChildTreeObjects(treeObjects, 0);
		map.put("resourceslists", ns);
		return map;
	}

	
	@ResponseBody
	@RequestMapping("treelists")
	public List<TreeObject> treelists(Model model) throws Exception {
		List<Resources> rs=resourcesService.queryAll(new Resources());
		List<TreeObject> treeObjects = new ArrayList<TreeObject>();
		for (Resources res : rs) {//转换为树对象
			TreeObject t = new TreeObject();
			PropertyUtils.copyProperties(t,res);
			treeObjects.add(t);
		}
		TreeUtil treeUtil = new TreeUtil();
		List<TreeObject> ns = treeUtil.getChildTreeObjects(treeObjects, 0,"　");
		return ns;
	}
	@ResponseBody
	@RequestMapping("queryAll")
	public List<Resources> queryAll(Resources resources) {
		if (PropertiesUtils.findPropertiesKey("rootName").equals(
				SecurityUtils.getSubject().getPrincipal())) {// 根据账号拥有所有权限
			return resourcesService.queryAll(resources);
		} else {
			return resourcesService.queryAll(resources);
		}
	}

	@ResponseBody
	@RequestMapping("queryParentId")
	public List<Resources> queryParentId(Resources resources) {
		return resourcesService.queryByParentId(resources);
	}

	@ResponseBody
	@RequestMapping("/updateResourcesOrder")
	public void updateResourcesOrder(Params params) {
		// resourcesService.updateMeunOrder(params.getResourcess());
	}

	/**
	 * 跳转到修改界面
	 * 
	 * @param model
	 * @param resourcesId
	 *            修改菜单信息ID
	 * @return
	 */
	@RequestMapping("editUI")
	public String editUI(Model model, String resourcesId) {
		Resources resources = resourcesService.getById(resourcesId);
		model.addAttribute("resources", resources);
		return Common.BACKGROUND_PATH + "/resources/edit";
	}

	/**
	 * 跳转到新增界面
	 * 
	 * @return
	 */
	@RequestMapping("addUI")
	public String addUI(Model model) {
		List<Resources> resources = resourcesService.queryAll(new Resources());
		model.addAttribute("resources", resources);
		return Common.BACKGROUND_PATH + "/resources/add";
	}

	/**
	 * 权限分配页面
	 * 
	 * @author lanyuan Email：mmm333zzz520@163.com date：2014-4-14
	 * @param model
	 * @return
	 */
	@RequestMapping("permissions")
	public String permissions(Model model) {
		return Common.BACKGROUND_PATH + "/resources/permissions";
	}

	/**
	 * 添加菜单
	 * 
	 * @param resources
	 * @return Map
	 * @throws Exception
	 */
	@RequestMapping("add")
	@ResponseBody
	public String add(Resources resources) throws Exception {
		// 判断是否为目录(目录的parentId为0)
		if (-1 == resources.getParentId()) {
			resources.setParentId(0);
		}
		resourcesService.add(resources);
		return "success";
	}

	/**
	 * 更新菜单
	 * 
	 * @param model
	 * @param Map
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping("update")
	public String update(Model model, Resources resources) throws Exception {
		resourcesService.update(resources);
		return "success";
	}

	/**
	 * 根据ID删除菜单
	 * 
	 * @param model
	 * @param ids
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping("deleteById")
	public String deleteById(Model model, String ids) throws Exception {
		String id[] = ids.split(",");
		resourcesService.delete(id);
		return "success";
	}

	/**
	 * 验证菜单是否存在
	 * 
	 * @param name
	 * @return
	 */
	@RequestMapping("isExist")
	@ResponseBody
	public boolean isExist(Resources resources) {
		// Account account = accountService.isExist(name);
		Resources r = resourcesService.isExist(resources);
		if (r == null) {
			return true;
		} else {
			return false;
		}
	}

	@ResponseBody
	@RequestMapping("addRoleRes")
	public String addRoleRes(String roleId, Params params) {
		List<String> list = params.getResId();
		resourcesService.addRoleRes(roleId, list);
		return "success";
	}

	@RequestMapping("sortUpdate")
	@ResponseBody
	public String sortUpdate(Params params, HttpServletRequest request)
			throws Exception {
		List<Resources> resources = new ArrayList<Resources>();
		List<String> ids = params.getId();
		List<String> es = params.getRowId();
		for (int i = 0; i < ids.size(); i++) {
			Resources rs = new Resources();
			rs.setId(Integer.valueOf(ids.get(i)));
			rs.setLevel(Integer.valueOf(es.get(i)));
			resources.add(rs);
		}
		resourcesService.updateSortOrder(resources);
		return "success";
	}
}