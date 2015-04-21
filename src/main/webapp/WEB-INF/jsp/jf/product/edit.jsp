<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/common.jspf"%>
<script type="text/javascript" src="${ctx}/js/jf/brand/edit.js"></script>
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
	 getSelectEx("brandId",
				{url:'/jf/brand/queryBrandList.shtml',
				 textFiled:'brandName',
				 valueFiled:'id',
				 name : "brandId",
				 data:null,
				 value:"${product.brand.id}"});//调用字典ajax
})
</script>
</head>
<body>
<div class="l_err" style="width: 100%;margin-top: 2px;"></div>
		<form id="form" name="form" class="form-horizontal" method="post" action="${ctx}/jf/product/update.shtml">
			<input type="hidden" class="form-control checkacc"  value= "${product.id}" name="id" id="id">
			<section class="panel panel-default">
			<div class="panel-body">
			
							<div class="form-group">
					<label class="col-sm-3 control-label">品牌：</label>
					<div class="col-sm-9">
						<div class="btn-group m-r" id= "brandId">
							<ul class="dropdown-menu dropdown-select">						
							</ul>
						</div>
					</div> 
				</div>
			

			<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group">
					<label class="col-sm-3 control-label">产品型号名称：</label>
					<div class="col-sm-9">
						<input type="text" class="form-control checkacc" placeholder="请输入名称" value= "${product.productName}" name="productName" id="productName">
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				
				
				
				<div class="form-group">
					<label class="col-sm-3 control-label">产品型号描述</label>
					<div class="col-sm-9">
						<textarea class="form-control" rows="6" data-minwords="6" data-required="true" placeholder="请输入描述" name="productDesc" id="productDesc" >${product.productDesc}</textarea>
					</div>
				</div>
			</div>
			<footer class="panel-footer text-right bg-light lter">
			<button type="submit" class="btn btn-success btn-s-xs">保存</button>
			</footer> </section>
		</form>
</body>
</html>