<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/common.jspf"%>
<script type="text/javascript" src="${ctx}/js/dicType/add.js"></script>
<style type="text/css">
.col-sm-3 {
		width: 25%;
		float: left;
	}
	.col-sm-9 {
		width: 75%;
		float: left;
	}
</style>
</head>
<body>
<div class="l_err" style="width: 100%;margin-top: 2px;"></div>
		<form id="form" name="form" class="form-horizontal" method="post" action="${ctx}/background/dicType/add.shtml">
			<section class="panel panel-default">
			<div class="panel-body">
				<div class="form-group">
					<label class="col-sm-3 control-label">Key</label>
					<div class="col-sm-9">
						<input type="text" class="form-control checkacc" placeholder="请输入Key" value= "" name="dicTypeKey" id="dicTypeKey">
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group">
					<label class="col-sm-3 control-label">名称：</label>
					<div class="col-sm-9">
						<input type="text" class="form-control checkacc" placeholder="请输入名称" value= "" name="dicTypeName" id="dicTypeName">
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group">
					<label class="col-sm-3 control-label">描述</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" placeholder="请输入描述" value = "" name="description" id="description">
					</div>
				</div>
			</div>
			<footer class="panel-footer text-right bg-light lter">
			<button type="submit" class="btn btn-success btn-s-xs">保存</button>
			</footer> </section>
		</form>
</body>
</html>