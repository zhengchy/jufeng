package com.lanyuan.service.impl;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lanyuan.base.BaseServiceImpl;
import com.lanyuan.entity.UserLogin;
import com.lanyuan.service.UserLoginService;


@Transactional
@Service("userLoginService")
public class UserLoginServiceImpl extends BaseServiceImpl<UserLogin> implements UserLoginService {
/*	@Inject
	private UserLoginMapper userLoginMap;*/

}
