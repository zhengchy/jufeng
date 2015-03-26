$(function() {
	// 异步加载所有菜单列表
	$("form").validate({
		submitHandler : function(form) {// 必须写在验证前面，否则无法ajax提交
			ly.ajaxSubmit(form,{//验证新增是否成功
				type : "post",
				dataType : "json",
				success : function(data) {
					if (data == "success") {
						layer.confirm('编辑成功!是否关闭窗口?', function(index) {
							parent.grid.loadData();
				        	parent.layer.close(parent.pageii);
				        	return false;
						});
					} else {
						layer.alert('编辑失败！', 3);
					}
				}
			});
		},
		rules : {
			resKey : {
				required : true
			},
			resUrl : {
				required : true
			}
		},
		messages : {
			resKey : {
				required : "菜单标识不能为空"
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
					if(data[i].id=="${resources.parentId}"){
						 $("#parentId").val("${resources.parentId}");
					}
				}
			} else {
				layer.alert('获取菜单信息错误，请联系管理员！', 3);
			}
		}
	});
});