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
			colkey : "name",
			name : "角色名"
		}, {
			colkey : "enable",
			name : "是否禁用",
			width : "100px",
		}, {
			colkey : "roleKey",
			name : "roleKey"
		}, {
			colkey : "description",
			name : "描述"
		} ],
		jsonUrl : 'query.shtml',
		checkbox : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	$("#addRole").click("click", function() {
		addRole();
	});
	$("#editRole").click("click", function() {
		editRole();
	});
	$("#delRole").click("click", function() {
		delRole();
	});
	$("#permissions").click("click", function() {
		permissions();
	});
});
function editRole() {
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
		area : [ "80%", "60%" ],
		// closeBtn:false,//控制层右上角关闭按钮。
		shift : 'top', // 从左动画弹出
		iframe : {
			src : 'editUI.shtml?roleId=' + cbox
		}
	});
}
function permissions() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.alert('请选择一个角色！', 3);
		return;
	}
	pageii = $.layer({
		title : "分配权限",
		type : 2,
		// maxmin : true,//是否输出窗口最小化/全屏/还原按钮。
		fix : false,// 用于设定层是否不随滚动条而滚动，固定在可视区域。
		area : [ "65%", "95%" ],
		// closeBtn:false,//控制层右上角关闭按钮。
		shift : 'top', // 从左动画弹出
		iframe : {
			src : rootPath + '/background/resources/aution.shtml?roleId=' + cbox
		}
	});
}
function addRole() {
	pageii = $.layer({
		title : "新增",
		type : 2,
		// maxmin : true,//是否输出窗口最小化/全屏/还原按钮。
		fix : false,// 用于设定层是否不随滚动条而滚动，固定在可视区域。
		area : [ "80%", "60%" ],
		// closeBtn:false,//控制层右上角关闭按钮。
		shift : 'top', // 从左动画弹出
		iframe : {
			src : 'addUI.shtml'
		}
	});
}
function delRole() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox == "") {
		layer.alert("请选择删除项！！");
		return;
	}
	layer.confirm('是否删除？', function(index) {
		ly.ajax({
			type : "post",
			url : "deleteById.shtml",
			async : false,
			data : {
				ids : cbox.join(",")
			},
			dataType : "json",
			success : function(data) {
				layer.msg('删除成功', 1, 1);
				grid.loadData();
			}
		});
	});
}
