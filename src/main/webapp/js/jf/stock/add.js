	 $(function() {
	 	$("form").validate({
	 		submitHandler : function(form) {//必须写在验证前面，否则无法ajax提交
	 			ly.ajaxSubmit(form,{//验证新增是否成功
	 				type : "post",
	 				dataType:"json",
	 				success : function(data) {
	 					if (data == "success") {
	 						var bb = layer.confirm('添加成功!是否继续添加?', function(index) { 
	 							parent.grid.loadData();
					        	layer.close(index);
	 						},function(index) { 
	 							parent.grid.loadData();
					        	parent.layer.close(parent.pageii);
					        	return false;
	 						});
	 						$("#form")[0].reset();
	 						//$("#form")[0].reset();
	 					} else {
	 						layer.alert('添加失败！', 3);
	 					}
	 				}
	 			});
	 		},
	 		rules : {
	 			tyreNum : {
	 			required : true
	 			},
	 			inPrice :{
	 			number:true
	 			}
	 		},
	 		messages : {
	 			tyreNum : {
	 				required : "请输入胎号"
	 			},
	 			inPrice : {
	 				number : "必须为数字"
	 			}
	 		},
	 		errorPlacement : function(error, element) {//自定义提示错误位置
	 			$(".l_err").css('display','block');
	 			//element.css('border','3px solid #FFCCCC');
	 			$(".l_err").html(error.html());
	 		},
	 		success: function(label) {//验证通过后
	 			$(".l_err").css('display','none');
	 		}
	 	});
	 });

