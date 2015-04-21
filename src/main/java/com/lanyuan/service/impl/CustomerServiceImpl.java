package com.lanyuan.service.impl;


import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lanyuan.base.BaseServiceImpl;
import com.lanyuan.entity.jf.Customer;
import com.lanyuan.mapper.jf.CustomerMapper;
import com.lanyuan.service.CustomerService;


@Transactional
@Service("customerService")
public class CustomerServiceImpl extends BaseServiceImpl<Customer> implements
		CustomerService {

	@Inject
	private CustomerMapper  customerMapper;
}
 