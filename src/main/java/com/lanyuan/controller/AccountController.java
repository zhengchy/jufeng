package com.lanyuan.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.lanyuan.entity.Account;
import com.lanyuan.entity.Resources;
import com.lanyuan.plugin.PageView;
import com.lanyuan.service.AccountService;
import com.lanyuan.upload.UploadUtil;
import com.lanyuan.util.Common;
import com.lanyuan.util.POIUtils;

/**
 * 
 * @author lanyuan 2014-11-19
 * @Email: mmm333zzz520@163.com
 * @version 3.0v
 */
@Controller
@RequestMapping("/background/account/")
public class AccountController extends BaseController {
	@Inject
	private AccountService accountService;

	@RequestMapping("list")
	public String list(Model model, Resources menu) throws Exception {
		// /throw new Exception(""+AccountController.class);
		return Common.BACKGROUND_PATH + "/account/list";
	}

	/**
	 * @param model
	 *            存放返回界面的model
	 * @return
	 */
	@ResponseBody
	@RequestMapping("query")
	public PageView query(Account account,String pageNow,String pageSize) {
		pageView = accountService.query(getPageView(pageNow,pageSize), account);
		return pageView;
	}

	@RequestMapping("exportExcel")
	public void exportExcel(HttpServletResponse response, Account account) {
		List<Account> acs = accountService.queryAll(account);
		POIUtils poiUtils = new POIUtils();
		poiUtils.exportToExcel(response, "账号报表", acs, Account.class, "账号",
				acs.size());
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
	public String add(Account account, @RequestParam MultipartFile upload,
			HttpServletRequest request) throws Exception {
		/*
		 * //转型为MultipartHttpRequest(重点的所在) MultipartHttpServletRequest
		 * multipartRequest = (MultipartHttpServletRequest) request; //
		 * 获得第1张图片（根据前台的name名称得到上传的文件） MultipartFile imgFile1 =
		 * multipartRequest.getFile("upload");
		 */
		if (null!=upload&&!"".equals(upload.getOriginalFilename())) {
			UploadUtil uploadutil = new UploadUtil();
			uploadutil.uploadImage1(request, upload, upload.getContentType(),
					upload.getOriginalFilename());
			account.setPic(uploadutil.getImagepath());
		}
		accountService.add(account);
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
		return Common.BACKGROUND_PATH + "/account/add";
	}

	/**
	 * 账号角色页面
	 * 
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("accRole")
	public String accRole(Model model, String accountName, String roleName)
			throws Exception {

		accountName = java.net.URLDecoder.decode(accountName, "UTF-8");
		roleName = java.net.URLDecoder.decode(roleName, "UTF-8");
		model.addAttribute("accountName", accountName);
		model.addAttribute("roleName", roleName);

		return Common.BACKGROUND_PATH + "/account/acc_role";
	}

	/**
	 * 跑到新增界面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("editUI")
	public String editUI(Model model, String accountId) {
		Account account = accountService.getById(accountId);
		model.addAttribute("account", account);
		return Common.BACKGROUND_PATH + "/account/edit";
	}

	/**
	 * 验证账号是否存在
	 * 
	 * @author lanyuan Email：mmm333zzz520@163.com date：2014-2-19
	 * @param name
	 * @return
	 */
	@RequestMapping("isExist")
	@ResponseBody
	public boolean isExist(String name) {
		Account account = accountService.isExist(name);
		if (account == null) {
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
		accountService.delete(id);
		return "success";
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
	@RequestMapping("updateState")
	public String updateState(Model model, String ids, String locked) throws Exception {
		String id[] = ids.split(",");
		for (String string : id) {
			if (!Common.isEmpty(string)) {
				Account account = new Account();
				account.setId(Integer.parseInt(string));
				account.setLocked(locked);
				accountService.update(account);
			}
		}
		return "success";
	}

	/**
	 * 更新类型
	 * 
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping("update")
	public String update(Model model, Account account) throws Exception {
		accountService.update(account);
		return "success";
	}
}