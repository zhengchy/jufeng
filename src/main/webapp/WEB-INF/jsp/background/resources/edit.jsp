<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/common.jspf"%>
<script type="text/javascript" src="${ctx}/js/resources/edit.js"></script>
<script type="text/javascript">
getSelectEx("typeId", {
	url : '/background/dic/findDicType.shtml',
	textFiled : 'dicName',
	valueFiled : 'id',
	name : "type",
	data : {
		"dicType" : "1"
	},
	value : "${resources.type}"
});// 调用字典ajax
</script>
<style type="text/css">
.col-sm-3 {
	width: 15%;
	float: left;
}

.col-sm-9 {
	width: 85%;
	float: left;
}

label[class^="btn btn-default"] {
	margin-top: -4px;
}
</style>
</head>
<body>
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="form" name="form" class="form-horizontal" method="post"
		action="${ctx}/background/resources/update.shtml">
			<input type="hidden" value="${resources.id}" name="id" id="id">
		<section class="panel panel-default">
		<div class="panel-body">
			<div class="form-group">
				<label class="col-sm-3 control-label">菜单名称</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入菜单名称" name="name" id="name" value="${resources.name}">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">菜单标识</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入菜单标识" name="resKey" id="resKey" value="${resources.resKey}">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">菜单url</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入菜单url" name="resUrl" id="resUrl" value="${resources.resUrl}">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">上级菜单</label>
				<div class="col-sm-9">
					<select id="parentId" name="parentId" class="form-control m-b">
					</select>
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">菜单类型</label>
				<div class="col-sm-9">
					<div class="btn-group m-r" id="typeId">
						<ul class="dropdown-menu dropdown-select">
						</ul>
					</div>
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">菜单描述</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入菜单描述" name="description" id="description" value="${resources.description}">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
		</div>
		<footer class="panel-footer text-right bg-light lter">
		<button type="submit" class="btn btn-success btn-s-xs">提交</button>
		</footer> </section>
	</form>
</body>
</html>