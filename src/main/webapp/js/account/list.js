var pageii = null;
var grid = null;
$(function() {
	grid = lanyuan.lyGrid({
		id : 'paging',
		l_column : [ {
			colkey : "id",
			name : "id",
		}, {
			colkey : "accountName",
			name : "用户名"
		}, {
			colkey : "roleName",
			name : "所属角色",
		}, {
			colkey : "locked",
			name : "账号状态",
			width : '90px'
		}, {
			colkey : "description",
			name : "描述"
		}, {
			colkey : "createTime",
			name : "时间"/*
						 * , renderData:function(data, rowdata, rowindex,
						 * column){ return "0"; }
						 */
		}, {
			name : "操作",
			renderData : function(data, rowdata, rowindex, column) {
				return "测试渲染函数";
			}
		} ],
		jsonUrl : 'query.shtml',
		checkbox : true,
		serNumber : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	$("#addAccount").click("click", function() {
		addAccount();
	});
	$("#editAccount").click("click", function() {
		editAccount();
	});
	$("#delAccount").click("click", function() {
		delAccount();
	});
	$("#permRole").click("click", function() {
		permRole();
	});
});
function editAccount() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.alert("只能选中一个");
		return;
	}
	pageii = $.layer({
		title : "编辑",
		type : 2,
		// maxmin : true,//是否输出窗口最小化/全屏/还原按钮。
		fix : false,// 用于设定层是否不随滚动条而滚动，固定在可视区域。
		area : [ "80%", "50%" ],
		// closeBtn:false,//控制层右上角关闭按钮。
		shift : 'top', // 从左动画弹出
		iframe : {
			src : 'editUI.shtml?accountId=' + cbox
		}
	});
}
function addAccount() {
	pageii = $.layer({
		title : "新增",
		type : 2,
		// maxmin : true,//是否输出窗口最小化/全屏/还原按钮。
		fix : false,// 用于设定层是否不随滚动条而滚动，固定在可视区域。
		area : [ "80%", "50%" ],
		// closeBtn:false,//控制层右上角关闭按钮。
		shift : 'top', // 从左动画弹出
		iframe : {
			src : 'addUI.shtml'
		}
	});
}
function delAccount() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox == "") {
		layer.alert("请选择删除项！！");
		return;
	}
	var u = "";
	$.each(cbox, function(i, item) {
		if (item == 1) {
			u = "y";
		}
		;
	});
	if (u != "") {
		layer.alert("root 禁止删除！你的IP已经记录！有问题请联系管理员 －－ 蓝缘");
		layer.alert("请先新增一条数据再进行删除！");
		return;
	}
	layer.confirm('是否删除？', function(index) {
		ly.ajax({
			type : "post",
			url : "deleteById.shtml",
			async : false,
			data : {
				ids : cbox.join(",")
			}, // 要发送的数据
			dataType : "json",
			success : function(data) {
				layer.msg('删除成功', 1, 1);
				grid.loadData();
			}
		});
	});
}
function permRole(){
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.alert('请选择一个账号！', 3);
		return;
	}
	var selectRow = grid.selectRow();
	$("#p_name").html(selectRow.accountName);
	$("#r_name").html(selectRow.roleName);
	$("#accountId").val(selectRow.id);
	ly.ajax({
		type : "post",
		url : rootPath+"/background/role/queryAll.shtml",
		dataType : "json",
		success : function(data) {
			var h = "";
			var d = data.roles;
			for(var r in d){
				h+='<li><a href="#"><input type="checkbox" name="ids" value="'+d[r].id+'">'+d[r].name+'</a></li>'
			}
			$("#role_sel").html(h);
		}
	});
	$("#rolefrom")[0].reset();
	$("#role_label").html("---选择角色---");
	var i = $.layer({
	    type : 1,
	    title : "分配角色",
	    area: ['450px', '300px'],
	    shift : 'left', // 从左动画弹出
	    btns: 2,// 按钮的个数。提供了0-2的选择，设置0表示不输出按钮
	    btn: ['确定', '取消'],
	    page : {dom : '#roleDiv'},
	    yes:function(dg){
	    	var b=$('#role_sel li[class="active"]').length;
			if(b>0){
			 	ly.ajax({
					async : false, // 请勿改成异步，下面有些程序依赖此请数据
					type : "POST",
					data : $("#rolefrom").serializeJson(),
					url : rootPath + '/background/role/addAccRole.shtml',
					dataType : 'json',
					success : function(json) {
						if (json=="success") {
							layer.msg('分配成功', 1, 1);
							layer.close(dg);
							grid.loadData();
				        	return false;
						}
					}
				});
			}else{
				layer.alert('请选择角色！', 3);
			}
	    }
	});
}