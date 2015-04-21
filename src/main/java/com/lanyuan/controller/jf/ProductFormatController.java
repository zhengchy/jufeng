package com.lanyuan.controller.jf;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lanyuan.controller.BaseController;
import com.lanyuan.entity.jf.ProductFormat;
import com.lanyuan.service.ProductFormatService;

@Controller
@RequestMapping("/jf/format/")
public class ProductFormatController extends BaseController {

	@Inject
	private ProductFormatService productFormatService;
	
	@ResponseBody
	@RequestMapping("queryFormatlList")
	public List<ProductFormat> queryChannelList(Model model,ProductFormat format){
		return productFormatService.queryAll(format);
	}
}
