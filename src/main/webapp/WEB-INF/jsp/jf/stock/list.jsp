<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/common.jspf"%>
<!-- 公共 -->
<script type="text/javascript" src="${ctx}/js/jf/stock/list.js"></script>
<script type="text/javascript">
	$(function() {
		getSelectEx("customer.id", {
			url : '/jf/customer/queryCustomerlList.shtml',
			textFiled : 'customerName',
			valueFiled : 'id',
			name : "customer.id",
			all: true,
			data : null,
			value : ""
		});//调用字典ajax
	})
</script>
</head>
<body>

	<section id="content"> <section class="vbox"> <section
		class="scrollablepadder">
	<ul class="breadcrumb no-border no-radius b-b b-light">
		<li><a href="index.html"><i class="fa fa-home"></i>飓风管理系统</a></li>
		<li><a href="#">出入库管理</a></li>
	</ul>
	<div class="m-b-md">
		<form class="form-inline" role="form" id="searchForm"
			name="searchForm">
				
			<div class="form-group">
				<label class="col-lg-2 control-label"> 胎号:</label> <input
					class="form-control" id="tyreNum" name="tyreNum">
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label"> 入库时间:</label>
				<div class="col-sm-10">
					<input class="input-sm input-s datepicker-input form-control"
						type="text" data-date-format="yyyy-mm-dd" value="" size="16" id="inDate" name="inDate"></input>
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label"> <span 
					class="h4 font-thin v-middle"><i class="i i-arrow-left2"></i>出库时间:</span></label>
				<div class="col-sm-10">
					<input class="input-sm input-s datepicker-input form-control"
						type="text" data-date-format="yyyy-mm-dd" value="" size="16"  id="outDate" name="outDate"></input>
				</div>
			</div>
						<div class="form-group">
					<label class="col-sm-3 control-label">客户：</label>
					<div class="col-sm-9">
						<div class="btn-group m-r" id="customer.id">
							<ul class="dropdown-menu dropdown-select">		 				
							</ul>
						</div>
					</div> 
				</div>

			<a href="javascript:void(0)" class="btn btn-default" id="search">查询</a>
		</form>
	</div>
	<section class="panel panel-default"> <header
		class="panel-heading">
	<div class="doc-buttons">
		<a href="javascript:void(0);"
			class="btn btn-s-md btn-primary btn-rounded" id="inStock">入库</a>
			 <a href="javascript:void(0);" class="btn btn-s-md btn-info btn-rounded"
			id="outStock">出库</a>
			 <a href="javascript:void(0);" class="btn btn-s-md btn-danger btn-rounded" id="delProduct">删除</a>
	</div>
	</header>
	<div class="table-responsive">
		<div id="paging" class="pagclass"></div>
	</div>
	</section></section> </section> </section>
</body>
</html>