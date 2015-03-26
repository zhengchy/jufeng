<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/common.jspf"%>
<script type="text/javascript" src="${ctx}/js/account/list.js"></script>
</head>
<body>
	<section class="vbox"> <section
		class="scrollablepadder">
	<ul class="breadcrumb no-border no-radius b-b b-light">
		<li><a href="index.html"><i class="fa fa-home"></i> Home</a></li>
		<li><a href="#">UI kit</a></li>
		<li><a href="#">Table</a></li>
		<li class="active">列表</li>
	</ul>
	<div class="m-b-md">
		<form class="form-inline" role="form" id="searchForm"
			name="searchForm">
			<div class="form-group">
				<label class="control-label"> <span
					class="h4 font-thin v-middle">账号:</span></label> 
					<input
					class="form-control" id="accountName" name="accountName">
			</div>
			<a href="javascript:void(0)" class="btn btn-default" id="search">查询</a>
		</form>
	</div>
	<section class="panel panel-default"> <header
		class="panel-heading">
	<div class="doc-buttons">
		<a href="javascript:void(0);"
			class="btn btn-s-md btn-primary btn-rounded" id="addAccount">新增</a> <a
			href="javascript:void(0);" class="btn btn-s-md btn-info btn-rounded"
			id="editAccount">编辑</a> <a href="javascript:void(0);"
			class="btn btn-s-md btn-danger btn-rounded" id="delAccount">删除</a> <a
			href="javascript:void(0);" class="btn btn-s-md btn-dark btn-rounded"
			id="permRole">分配角色</a>
	</div>

	</header>
	<div class="table-responsive">
		<div id="paging" class="pagclass"></div>
	</div>
	</section></section> </section>
	<div id="roleDiv" style="width: 450px; display: none;">
		<form class="form-horizontal" data-validate="parsley" method="post"
			id="rolefrom">
			<input type="hidden" id="accountId" name="accountId">
			<section class="panel panel-default">
			<div class="panel-body">
				<div class="form-group">
					<label class="col-sm-3 control-label">账号</label>
					<div class="col-sm-9" id="p_name"></div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group">
					<label class="col-sm-3 control-label">所属角色</label>
					<div class="col-sm-9" id="r_name"></div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group">
					<label class="col-sm-3 control-label">选择角色</label>
					<div class="col-sm-9">
						<button data-toggle="dropdown"
							class="btn btn-sm btn-default dropdown-toggle">
							<span class="dropdown-label" data-placeholder="Please select"
								id="role_label">---选择角色---</span> <span class="caret"></span>
						</button>
						<ul class="dropdown-menu dropdown-select" id="role_sel"
							style="margin-left: 15px;">
						</ul>
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
			</div>
			</section>
		</form>
	</div>
</body>
</html>