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
			colkey : "dicTypeKey",
			name : "Key"
		}, {
			colkey : "dicTypeName",
			name : "名称"
		} ,{
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
	$("#addDicType").click("click", function() {
		addDicType();
	});
	$("#editDicType").click("click", function() {
		editDicType();
	});
	$("#delDicType").click("click", function() {
		delDicType();
	});
});
function editDicType() {
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
			area : [ "40%", "50%" ],
			// closeBtn:false,//控制层右上角关闭按钮。
			shift : 'top', // 从左动画弹出
			iframe : {
				src : 'editUI.shtml?id=' + cbox
			}
		});
}
function addDicType() {
	pageii = $.layer({
		title : "新增",
		type : 2,
		// maxmin : true,//是否输出窗口最小化/全屏/还原按钮。
		fix : false,// 用于设定层是否不随滚动条而滚动，固定在可视区域。
		area : [ "40%", "50%" ],
		// closeBtn:false,//控制层右上角关闭按钮。
		shift : 'top', // 从左动画弹出
		iframe : {
			src : 'addUI.shtml'
		}
	});
}
function delDicType() {
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
