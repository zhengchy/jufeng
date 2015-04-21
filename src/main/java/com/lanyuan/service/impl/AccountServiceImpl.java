package com.lanyuan.service.impl;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lanyuan.base.BaseServiceImpl;
import com.lanyuan.entity.Account;
import com.lanyuan.entity.JfTest;
import com.lanyuan.mapper.AccountMapper;
import com.lanyuan.mapper.JfTestMapper;
import com.lanyuan.service.AccountService;

@Transactional
@Service("accountService")
public class AccountServiceImpl extends BaseServiceImpl<Account> implements AccountService {
	@Inject
	private AccountMapper accountMapper;
	
	@Inject
	private JfTestMapper jfTestMapper;

	public Account querySingleAccount(String accountName) {
		return accountMapper.querySingleAccount(accountName);
	}

	public Account isExist(String accountName) {
//		JfTest jfTest = new JfTest();
//		JfTest jfTestR = new JfTest();
//		jfTest.setId(1);
//		jfTestR = jfTestMapper.isExist(jfTest);
		return accountMapper.isExist(accountName);
	}

	public Account countAccount(Account account) {
		return accountMapper.countAccount(account);
	}
}
