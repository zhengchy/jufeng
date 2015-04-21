package com.lanyuan.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.PropertyUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lanyuan.entity.Account;
import com.lanyuan.entity.Resources;
import com.lanyuan.service.AccountService;
import com.lanyuan.service.ResourcesService;
import com.lanyuan.util.Common;
import com.lanyuan.util.TreeObject;
import com.lanyuan.util.TreeUtil;

/**
 * 进行管理后台框架界面的类
 * 
 * @author lanyuan 2014-11-19
 * @Email: mmm333zzz520@163.com
 * @version 3.0v
 */
@Controller
@RequestMapping("/")
public class BackgroundController {
	@Inject
	private AccountService accountService;

	@Inject
	private ResourcesService resourcesService;

	/**
	 * @return
	 */
	@RequestMapping(value = "login", method = RequestMethod.GET, produces = "text/html; charset=utf-8")
	public String login() {
		return "/login";
	}

	@RequestMapping("loginCheck")
	@ResponseBody
	public Map<String, Object> loginCheck(String username, String password) {
		Map<String, Object> map = new HashMap<String, Object>();
		Account account = new Account();
		account.setAccountName(username);
		// account.setPassword(Md5Tool.getMd5(password));
		// 验证用户账号与密码是否正确
		Account users = this.accountService.countAccount(account);

		map.put("error", "0");
		if (users == null) {
			map.put("error", "用户或密码不正确！");
		} else if (users != null && Common.isEmpty(users.getAccountName())) {
			map.put("error", "用户或密码不正确！");
		}
		return map;
	}

	@RequestMapping(value = "login", method = RequestMethod.POST, produces = "text/html; charset=utf-8")
	public String login(String username, String password,
			HttpServletRequest request) {
		try {
			if (!request.getMethod().equals("POST")) {
				request.setAttribute("error", "支持POST方法提交！");
			}
			if (Common.isEmpty(username) || Common.isEmpty(password)) {
				request.setAttribute("error", "用户名或密码不能为空！");
				return "/login";
			}
			// 想要得到 SecurityUtils.getSubject()　的对象．．访问地址必须跟ｓｈｉｒｏ的拦截地址内．不然后会报空指针
			Subject user = SecurityUtils.getSubject();
			// 用户输入的账号和密码,,存到UsernamePasswordToken对象中..然后由shiro内部认证对比,
			// 认证执行者交由ShiroDbRealm中doGetAuthenticationInfo处理
			// 当以上认证成功后会向下执行,认证失败会抛出异常
			UsernamePasswordToken token = new UsernamePasswordToken(username,
					password);
			//this.accountService.isExist("aa");
			try {
				user.login(token);
			} catch (LockedAccountException lae) {
				token.clear();
				request.setAttribute("error", "用户已经被锁定不能登录，请与管理员联系！");
				return "/login";
			} catch (AuthenticationException e) {
				token.clear();
				request.setAttribute("error", "用户或密码不正确！");
				return "/login";
			}
			request.removeAttribute("error");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "登录异常，请联系管理员！");
			return "/login";
		}
		return "redirect:index.shtml";
	}

	/**
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("index")
	public String index(Model model, HttpServletRequest request)
			throws Exception {
		List<Resources> rs = resourcesService.findAccountResourcess(Common
				.findUserSessionId(request));
		List<TreeObject> treeObjects = new ArrayList<TreeObject>();
		for (Resources res : rs) {// 转换为树对象
			TreeObject t = new TreeObject();
			PropertyUtils.copyProperties(t, res);
			treeObjects.add(t);
		}
		TreeUtil treeUtil = new TreeUtil();
		List<TreeObject> ns = treeUtil.getChildTreeObjects(treeObjects, 0);

		model.addAttribute("list", ns);
		return "/index";
	}

	@RequestMapping("menu")
	public String menu(Model model) {
		return "/framework/menu";
	}

	/**
	 * 获取某个用户的权限资源
	 * 
	 * @author lanyuan Email：mmm333zzz520@163.com date：2014-3-4
	 * @param request
	 * @return
	 */
	@RequestMapping("findAuthority")
	@ResponseBody
	public List<String> findAuthority(HttpServletRequest request) {
		return null;
	}

	@ResponseBody
	@RequestMapping("/install")
	public Map<String, Object> install(Model model) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			map.put("success", "初始化成功!");
		} catch (Exception e) {
			map.put("error", "初始化失败  ---------- >   " + e);
		}
		return map;
	}

	@RequestMapping("download")
	public void download(String fileName, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		java.io.BufferedInputStream bis = null;
		java.io.BufferedOutputStream bos = null;

		String ctxPath = request.getSession().getServletContext()
				.getRealPath("/")
				+ "\\" + "filezip\\";
		String downLoadPath = ctxPath + fileName;
		System.out.println(downLoadPath);
		try {
			long fileLength = new File(downLoadPath).length();
			response.setContentType("application/x-msdownload;");
			response.setHeader("Content-disposition", "attachment; filename="
					+ new String(fileName.getBytes("utf-8"), "ISO8859-1"));
			response.setHeader("Content-Length", String.valueOf(fileLength));
			bis = new BufferedInputStream(new FileInputStream(downLoadPath));
			bos = new BufferedOutputStream(response.getOutputStream());
			byte[] buff = new byte[2048];
			int bytesRead;
			while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {
				bos.write(buff, 0, bytesRead);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (bis != null)
				bis.close();
			if (bos != null)
				bos.close();
		}
	}

	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout() {
		// 使用权限管理工具进行用户的退出，注销登录
		SecurityUtils.getSubject().logout(); // session 会销毁，在SessionListener监听session销毁，清理权限缓存
		return "redirect:login.shtml";
	}
	
}
