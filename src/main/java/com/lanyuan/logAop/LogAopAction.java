package com.lanyuan.logAop;

import org.apache.shiro.SecurityUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Aspect;
import javax.inject.Inject;
import org.springframework.stereotype.Component;

import com.lanyuan.entity.Log;
import com.lanyuan.mapper.LogMapper;
import com.lanyuan.util.Common;

/**
 * AOP注解方法实现日志管理 利用spring AOP 切面技术记录日志
 * 
 * 定义切面类（这个是切面类和切入点整天合在一起的),这种情况是共享切入点情况;
 * 
 * @author lanyuan 2014-04-10
 * @Email: mmm333zzz520@163.com
 * @version 3.0v
 */
@Aspect
// 该注解标示该类为切面类
@Component
public class LogAopAction {
	@Inject
	private LogMapper logMapper;

	public Object logAll(ProceedingJoinPoint point) throws Exception {
		Object result = null;
		// 执行方法名
		String methodName = point.getSignature().getName();
		String className = point.getTarget().getClass().getSimpleName();
		String user = null;
		Long start = 0L;
		Long end = 0L;
		String ip = null;
		// 当前用户
		try {
			// 执行方法所消耗的时间
			start = System.currentTimeMillis();
			result = point.proceed();
			end = System.currentTimeMillis();
		} catch (Throwable e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		try {
			ip = SecurityUtils.getSubject().getSession().getHost();
		} catch (Exception e) {
			ip = "无法获取登录用户Ip";
		}
		try {
			// 登录名
			user = SecurityUtils.getSubject().getPrincipal().toString();
			if (Common.isEmpty(user)) {
				user = "无法获取登录用户信息！";
			}
		} catch (Exception e) {
			user = "无法获取登录用户信息！";
		}
		String name = className;
		// 操作范围
		boolean b = false;
		if (className.indexOf("Resources") > -1) {
			name = "资源管理";
		} else if (className.indexOf("Roles") > -1) {
			name = "角色管理";
		} else if (className.indexOf("User") > -1) {
			name = "用户管理";
		} else {
			name = className;
		}
		// 操作类型
		String opertype = "";
		if (methodName.indexOf("add") > -1 || methodName.indexOf("save") > -1) {
			opertype = "save操作";
			b=true;
		} else if (methodName.indexOf("update") > -1 || methodName.indexOf("modify") > -1) {
			opertype = "update操作";
			b=true;
		} else if (methodName.indexOf("delete") > -1) {
			opertype = "delete操作";
			b=true;
		}
		if(className.indexOf("UserLoginServiceImpl")>-1){
			b=false;
		}
		if (b) {
			Long time = end - start;
			Log log = new Log();
			log.setUsername(user);
			log.setModule(name);
			log.setAction(opertype);
			log.setActionTime(time.toString());
			log.setUserIP(ip);
			logMapper.add(log);
		}
		return result;
	}
}
