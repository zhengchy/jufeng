package com.lanyuan.controller.jf;

import java.util.Date;
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
import com.lanyuan.entity.jf.Channel;
import com.lanyuan.entity.jf.Product;
import com.lanyuan.plugin.PageView;
import com.lanyuan.service.BrandService;
import com.lanyuan.service.ProductService;
import com.lanyuan.util.Common;


@Controller
@RequestMapping("/jf/product/")
public class ProductController extends BaseController {
	
	@Inject
	private BrandService brandService;
	
	@Inject
	private ProductService productService;
	
	@RequestMapping("list")
	public String list(Model model, Resources menu) throws Exception {
		// /throw new Exception(""+AccountController.class);
		return Common.JF_PATH + "/product/list";
	}
	
	 
	
	@ResponseBody
	@RequestMapping("query")
	public PageView query(Product product, String pageNow, String pagesize) {
		pageView = productService.query(getPageView(pageNow, pagesize), product);
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
	public String add(Product product) throws Exception {
		productService.add(product);
		return "success";
	}
	
	
	@RequestMapping("isExist")
	@ResponseBody
	public boolean isExist(Product product) {
		Product  d = productService.isExist(product);
		if (d == null) {
			return true;
		} else {
			return false;
		}
	}
	
	

	/**
	 * 跑到新增界面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("addUI")
	public String addUI() {
		return Common.JF_PATH + "/product/add";
	}
	
	/**
	 * 跑到新增界面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("editUI")
	public String editUI(Model model, String id) {
		Product product = productService.getById(id);
		model.addAttribute("product", product);
		return Common.JF_PATH + "/product/edit";
	}
	
	@ResponseBody
	@RequestMapping("update")
	public String update(Model model,Product product) throws Exception {
		product.setUpdateDate(new Date());
		productService.update(product);
		return "success";
	}
	
	
	@ResponseBody
	@RequestMapping("queryProductList")
	public List<Product> queryProductlList(Model model,Product product){
		return productService.queryAll(product);
	}

//	/**
//	 * 删除
//	 * 
//	 * @param model
//	 * @param videoTypeId
//	 * @return
//	 * @throws Exception
//	 */
//	@ResponseBody
//	@RequestMapping("deleteById")
//	public String deleteById(Model model, String ids) throws Exception {
//		String id[] = ids.split(",");
//		brandService.delete(id);
//		return "success";
//	}

	
}
