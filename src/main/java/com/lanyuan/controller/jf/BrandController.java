package com.lanyuan.controller.jf;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lanyuan.controller.BaseController;
import com.lanyuan.entity.Dic;
import com.lanyuan.entity.Resources;
import com.lanyuan.entity.jf.Brand;
import com.lanyuan.plugin.PageView;
import com.lanyuan.service.BrandService;
import com.lanyuan.util.Common;


@Controller
@RequestMapping("/jf/brand/")
public class BrandController extends BaseController {
	
	@Inject
	private BrandService brandService;
	
	@RequestMapping("list")
	public String list(Model model, Resources menu) throws Exception {
		// /throw new Exception(""+AccountController.class);
		return Common.JF_PATH + "/brand/list";
	}
	
	 
	
	@ResponseBody
	@RequestMapping("query")
	public PageView query(Brand brand, String pageNow, String pageSize) {
		pageView = brandService.query(getPageView(pageNow, pageSize), brand);
		return pageView;
	}
	
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
	public String add(Brand brand) throws Exception {
		brandService.add(brand);
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
		return Common.JF_PATH + "/brand/add";
	}
	
	/**
	 * 跑到新增界面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("editUI")
	public String editUI(Model model, String id) {
		Brand brand = brandService.getById(id);
		model.addAttribute("brand", brand);
		return Common.JF_PATH + "/brand/edit";
	}
	
	@ResponseBody
	@RequestMapping("update")
	public String update(Model model,Brand brand) throws Exception {
		brandService.update(brand);
		return "success";
	}
	
	/**
	 * @author lanyuan Email：mmm333zzz520@163.com date：2014-2-19
	 * @param Dic
	 *            dic
	 * @return
	 */
	@RequestMapping("isExist")
	@ResponseBody
	public boolean isExist(Brand brand) {
		Brand  d = brandService.isExist(brand.getBrandName());
		if (d == null) {
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
		brandService.delete(id);
		return "success";
	}
	
	@ResponseBody
	@RequestMapping("queryBrandList")
	public List<Brand> queryBrandList(Model model,Brand brand){
		return brandService.queryAll(brand);
	}

	
}
