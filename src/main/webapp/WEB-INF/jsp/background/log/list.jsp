<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/common.jspf"%>
<!-- 公共 -->
<script type="text/javascript" src="${ctx}/js/log/list.js"></script>
</head>
<body>

	<section id="content"> <section class="vbox"> <section
		class="scrollablepadder">
	<ul class="breadcrumb no-border no-radius b-b b-light">
		<li><a href="index.html"><i class="fa fa-home"></i> Home</a></li>
		<li><a href="#">UI kit</a></li>
		<li><a href="#">Table</a></li>
		<li class="active">Datatable</li>
	</ul>
	<div class="m-b-md">
		<form class="form-inline" role="form" id="searchForm"
			name="searchForm">
			<div class="form-group">
			<label class="col-lg-2 control-label">
				<span class="h4 font-thin v-middle"><i class="i i-arrow-left2"></i>帐号:</span>
			</label> 
			<input class="form-control" id="username" name="username">
			</div>
			<a href="javascript:void(0)" class="btn btn-default" id="search">查询</a>
		</form>
	</div>
	<section class="panel panel-default"> <header class="panel-heading">
	
	</header>
	<div class="table-responsive">
		<div id="paging" class="pagclass"></div>
	</div>
	</section></section> </section> </section>
</body>
</html>