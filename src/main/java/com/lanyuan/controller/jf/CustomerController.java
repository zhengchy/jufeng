package com.lanyuan.controller.jf;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lanyuan.controller.BaseController;
import com.lanyuan.entity.jf.Customer;
import com.lanyuan.service.CustomerService;

@Controller
@RequestMapping("/jf/customer/")
public class CustomerController extends BaseController {
	
	@Inject
	private CustomerService customerService;
	
	@ResponseBody
	@RequestMapping("queryCustomerlList")
	public List<Customer> queryChannelList(Model model,Customer customer){
		return customerService.queryAll(customer);
	}
	
	

}
