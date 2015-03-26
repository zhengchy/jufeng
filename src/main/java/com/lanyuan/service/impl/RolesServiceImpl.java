package com.lanyuan.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lanyuan.base.BaseServiceImpl;
import com.lanyuan.entity.RoleAccount;
import com.lanyuan.entity.Roles;
import com.lanyuan.mapper.RolesMapper;
import com.lanyuan.service.RolesService;
import com.lanyuan.util.Common;

@Transactional
@Service("RolesService")
public class RolesServiceImpl extends BaseServiceImpl<Roles> implements
		RolesService {
	@Inject
	private RolesMapper roleMapper;

	public Roles isExist(String name) {
		return roleMapper.isExist(name);
	}

	public Roles findbyAccountRole(String accountId) {
		return roleMapper.findbyAccountRole(accountId);
	}

	public void addAccRole(RoleAccount roleAccount) throws Exception {
		roleMapper.deleteAccountRole(roleAccount.getAccountId().toString());
		roleMapper.addAccRole(roleAccount);
	}

	public void addAccRole(String accountId, List<String> ids) throws Exception {
		roleMapper.deleteAccountRole(accountId);
		for (String roleId : ids) {
			if (!Common.isEmpty(roleId)) {
				RoleAccount roleAccount = new RoleAccount();
				roleAccount.setAccountId(Integer.parseInt(accountId));
				roleAccount.setRoleId(Integer.parseInt(roleId));
				roleMapper.addAccRole(roleAccount);
			}

		}
	}
}
