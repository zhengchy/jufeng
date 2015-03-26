$(function() {
	// 异步加载所有菜单列表
	$("form").validate({
		submitHandler : function(form) {// 必须写在验证前面，否则无法ajax提交
			ly.ajaxSubmit(form,{//验证新增是否成功
				type : "post",
				dataType : "json",
				success : function(data) {
					if (data == "success") {
						layer.confirm('添加成功!是否关闭窗口?', function(index) {
							parent.grid.loadData();
				        	parent.layer.close(parent.pageii);
				        	return false;
						});
 						$("#form")[0].reset();
					} else {
						layer.alert('添加失败！', 3);
					}
				}
			});
		},
		rules : {
			name : {
				required : true,
				remote : { // 异步验证是否存在
					type : "POST",
					url : rootPath + '/background/resources/isExist.shtml',
					data : {
						name : function() {
							return $("#name").val();
						}
					}
				}
			},
			resKey : {
				required : true,
				remote : { // 异步验证是否存在
					type : "POST",
					url : rootPath + '/background/resources/isExist.shtml',
					data : {
						resKey : function() {
							return $("#resKey").val();
						}
					}
				}
			},
			resUrl : {
				required : true
			}
		},
		messages : {
			name : {
				required : "菜单名称不能为空",
				remote : "该菜单名称已经存在"
			},
			resKey : {
				required : "菜单标识不能为空",
				remote : "该标识已经存在"
			},
			resUrl : {
				required : "url连接不能为空"
			}
		},
		errorPlacement : function(error, element) {// 自定义提示错误位置
			$(".l_err").css('display', 'block');
			// element.css('border','3px solid #FFCCCC');
			$(".l_err").html(error.html());
		},
		success : function(label) {// 验证通过后
			$(".l_err").css('display', 'none');
		}
	});

	ly.ajax({
		type : "post",
		dataType : "json",
		url : rootPath + '/background/resources/treelists.shtml',
		success : function(data) {
			if (data != null) {
				$("#parentId").append(
						"<option value='0'>------顶级目录------</option>");
				for ( var i = 0; i < data.length; i++) {
					$("#parentId").append(
							"<option value='" + data[i].id + "'>"
									+ data[i].name + "</option>");
				}
			} else {
				layer.alert('获取菜单信息错误，请联系管理员！', 3);
			}
		}
	});
	getSelectEx("typeId", {
		url : '/background/dic/findDicType.shtml',
		textFiled : 'dicName',
		valueFiled : 'id',
		name : "type",
		data : {
			"dicType" : "1"
		},
		value : ""
	});// 调用字典ajax
});