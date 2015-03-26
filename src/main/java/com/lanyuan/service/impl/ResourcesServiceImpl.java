package com.lanyuan.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lanyuan.base.BaseServiceImpl;
import com.lanyuan.entity.Resources;
import com.lanyuan.entity.ResourcesRole;
import com.lanyuan.mapper.ResourcesMapper;
import com.lanyuan.service.ResourcesService;

@Transactional
@Service("resourcesService")
public class ResourcesServiceImpl extends BaseServiceImpl<Resources> implements ResourcesService {
	@Inject
	private ResourcesMapper resourcesMapper;

	public List<Resources> queryByParentId(Resources resources) {
		return resourcesMapper.queryByParentId(resources);
	}

	public void updateSortOrder(List<Resources> resourcess) {
		for (Resources m : resourcess) {
			resourcesMapper.updateSortOrder(m);
		}
	}

	public List<Resources> findAccountResourcess(String accountId) {
		return resourcesMapper.findAccountResourcess(accountId);
	}

	public List<Resources> findRoleRes(String roleId) {
		return resourcesMapper.findRoleRes(roleId);
	}

	public void addRoleRes(String roleId, List<String> list) {
		resourcesMapper.deleteResourcesRole(roleId);
		for (String string : list) {
			ResourcesRole rr = new ResourcesRole();
			rr.setRoleId(roleId);
			rr.setResId(string);
			resourcesMapper.addRoleRes(rr);
		}
	}

	public int getMaxLevel() {
		return resourcesMapper.getMaxLevel();
	}

	public Resources isExist(Resources resources) {
		return resourcesMapper.isExist(resources);
	}

}
