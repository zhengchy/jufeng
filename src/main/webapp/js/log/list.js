var dialog;
var grid;
$(function() {
	grid = lanyuan.lyGrid({
				id : 'paging',
				l_column : [ {
					colkey : "id",
					name : "id",
					width : "50px",
					hide : true
				}, {
					colkey : "username",
					name : "账号"
				}, {
					colkey : "module",
					name : "模块"
				}, {
					colkey : "action",
					name : "方法"
				}, {
					colkey : "actionTime",
					name : "响应时间",
						width : "150px"
				} , {
					colkey : "userIP",
					name : "IP地址"
				}, {
					colkey : "operTime",
					name : "执行时间"
				}],
				jsonUrl : 'query.shtml',
				checkbox : false
			});
	$("#searchForm").click("click", function() {//绑定查询按扭
		var searchParams = $("#fenye").serializeJson();
		grid.setOptions({
			data : searchParams
		});
	});
});