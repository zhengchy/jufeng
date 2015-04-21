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
			colkey : "productName",
			name : "产品型号名称",
			width : "100px"
		},{ 
			colkey : "brand.brandName",
			name : "品牌名称",
			width : "100px"
		}, {
			colkey : "productDesc",
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
	$("#addProduct").click("click", function() {
		addProduct();
	});
	$("#editProduct").click("click", function() {
		editProduct();
	});
	$("#delProduct").click("click", function() {
		delProduct();
	});
});
function editProduct() {
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
		area : [ "50%", "70%" ],
		// closeBtn:false,//控制层右上角关闭按钮。
		shift : 'left', // 从左动画弹出
		iframe : {
			src : 'editUI.shtml?id=' + cbox
		}
	}); 
}
function addProduct() {
	pageii = $.layer({
		title : "新增",
		type : 2,
		// maxmin : true,//是否输出窗口最小化/全屏/还原按钮。
		fix : false,// 用于设定层是否不随滚动条而滚动，固定在可视区域。
		area : [ "50%", "70%" ],
		// closeBtn:false,//控制层右上角关闭按钮。
		shift : 'left', // 从左动画弹出
		iframe : {
			src : 'addUI.shtml'
		}
	}); 
}
function delProduct() {
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
