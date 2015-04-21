<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/common.jspf"%>
<script type="text/javascript" src="${ctx}/js/jf/stock/add.js"></script>
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

<script type="text/javascript">
$(function() {
	 getSelectEx("channel.id",
				{url:'/jf/channel/queryChannelList.shtml',
				 textFiled:'channelName',
				 valueFiled:'id',
				 name : "channel.id",
				 data:null,
				 value:""});//调用字典ajax
	
	 getSelectEx("brand.id",
				{url:'/jf/brand/queryBrandList.shtml',
				 textFiled:'brandName',
				 valueFiled:'id',
				 name : "brand.id",
				 data:null,
				 value:""});//调用字典ajax		
				 
				 getSelectEx("product.id",
							{url:'/jf/product/queryProductList.shtml',
							 textFiled:'productName',
							 valueFiled:'id',
							 name : "product.id",
							 data:null,
							 value:""});//调用字典ajax
							 
							 
							 getSelectEx("format.id",
										{url:'/jf/format/queryFormatlList.shtml',
										 textFiled:'formatName',
										 valueFiled:'id',
										 name : "format.id",
										 data:null,
										 value:""});//调用字典ajax
}) 
</script>


</head>
<body>
<div class="l_err" style="width: 100%;margin-top: 2px;"></div> 
		<form id="form" name="form" class="form-horizontal" method="post" action="${ctx}/jf/stock/add.shtml">
			<section class="panel panel-default">
						<div class="panel-body">
			<div class="form-group">
					<label class="col-sm-3 control-label">渠道：</label>
					<div class="col-sm-9">
						<div class="btn-group m-r" id= "channel.id">
							<ul class="dropdown-menu dropdown-select">						
							</ul> 
						</div>
					</div> 
				</div>
			<div class="line line-dashed line-lg pull-in"></div>
		
							<div class="form-group">
					<label class="col-sm-3 control-label">品牌：</label>
					<div class="col-sm-9">
						<div class="btn-group m-r" id= "brand.id">
							<ul class="dropdown-menu dropdown-select">						
							</ul>
						</div>
					</div> 
				</div>
			<div class="line line-dashed line-lg pull-in"></div>		
							<div class="form-group">
					<label class="col-sm-3 control-label">规格：</label>
					<div class="col-sm-9">
						<div class="btn-group m-r" id= "format.id">
							<ul class="dropdown-menu dropdown-select">						
							</ul>
						</div>
					</div> 
				</div>
			<div class="line line-dashed line-lg pull-in"></div>
	
							<div class="form-group">
					<label class="col-sm-3 control-label">型号：</label>
					<div class="col-sm-9">
						<div class="btn-group m-r" id= "product.id">
							<ul class="dropdown-menu dropdown-select">						
							</ul>
						</div>
					</div> 
				</div>
			<div class="line line-dashed line-lg pull-in"></div>
			
			
				<div class="form-group">
					<label class="col-sm-3 control-label">胎号：</label>
					<div class="col-sm-9">
						<input type="text" class="form-control checkacc" placeholder="请输入胎号"  name="tyreNum" id="tyreNum">
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				
				
				
				<div class="form-group">
					<label class="col-sm-3 control-label">入库价格：</label>
					<div class="col-sm-9">
						<input type="text" class="form-control checkacc" placeholder="入库价格" name="inPrice" id="inPrice">
					</div>
				</div>
			</div>
			<footer class="panel-footer text-right bg-light lter">
			<button type="submit" class="btn btn-success btn-s-xs">入库</button>
			</footer> </section>
		</form>
</body>
</html>