package com.lanyuan.controller.jf;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.inject.Inject;

import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.lanyuan.controller.BaseController;
import com.lanyuan.entity.Account;
import com.lanyuan.entity.Resources;
import com.lanyuan.entity.jf.Brand;
import com.lanyuan.entity.jf.Stock;
import com.lanyuan.plugin.PageView;
import com.lanyuan.service.StockService;
import com.lanyuan.util.Common;

@Controller
@RequestMapping("/jf/stock/")
public class StockController extends BaseController {
	
	@Inject
	private StockService stockService;
	
	@RequestMapping("list")
	public String list(Model model, Resources menu) throws Exception {
		// /throw new Exception(""+AccountController.class);
		return Common.JF_PATH + "/stock/list";
	}
	
	
	@ResponseBody
	@RequestMapping("query")
	public PageView query(Stock stock,String pageNow, String pageSize) {
		pageView = stockService.query(getPageView(pageNow, pageSize), stock);
		
		ObjectMapper mapper=new ObjectMapper(); 
        try {
            String jsonString=mapper.writeValueAsString(pageView.getRecords());
            System.out.print(jsonString);
        } catch (JsonGenerationException e) {
            e.printStackTrace();
        } catch (JsonMappingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
		return pageView;
	}
	
	/**
	 * 跑到新增界面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("addUI")
	public String addUI() {
		return Common.JF_PATH + "/stock/add";
	}
	
	
	/**
	 * 入库
	 * 
	 * @param model
	 * @param videoType
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("add")
	@ResponseBody
	public String add(Stock stock) throws Exception {
		Account account = (Account)(SecurityUtils.getSubject().getSession()
				.getAttribute("userSession"));
		stock.setInUser(String.valueOf(account.getAccountName()));
		stock.setState(Stock.STATE_IN);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		//System.out.println(df.format(new Date()));
		Date now = new Date();
		stock.setInDate(now);
		stockService.add(stock);
		return "success";
	}

}
