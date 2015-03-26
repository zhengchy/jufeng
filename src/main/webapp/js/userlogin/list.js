var pageii = null;
var grid = null;
$(function() {
	grid = lanyuan.lyGrid({
		id : 'paging',
		l_column : [ {
			colkey : "id",
			name : "id",
			width : "50px",
			hide : true
		}, {
			colkey : "userId",
			name : "用户id",
			hide : true
		}, {
			colkey : "userName",
			name : "用户名"
		},{
			colkey : "loginTime",
			name : "登入时间"
		} , {
			colkey : "loginIP",
			name : "登入IP"
		}],
		jsonUrl : 'query.shtml',
		checkbox : true
	});
	$("#searchForm").click("click", function() {// 绑定查询按扭
		var searchParams = $("#fenye").serializeJson();
		grid.setOptions({
			data : searchParams
		});
	});
});
