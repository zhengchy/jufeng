	 $(function() {
	 	$("form").validate({
	 		submitHandler : function(form) {//必须写在验证前面，否则无法ajax提交
	 			ly.ajaxSubmit(form,{//验证新增是否成功
	 				type : "post",
	 				dataType:"json",
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
	 			productName : {
	 			required : true,
	 			remote:{ //异步验证是否存在
	 				type:"POST",
	 				url: 'isExist.shtml',
	 				data:{
	 					productName:function(){return $("#productName").val();}
	 		,brandId:function(){return $('input[name="brandId"]:checked').val();}
	 					
	 				 }
	 				}
	 			},
	 			productDesc :{
	 				required : true
	 			}
	 		},
	 		messages : {
	 			productName : {
	 				required : "请输入产品型号名称",
	 			    remote:"该品牌下这个产品型号已经存在"
	 			},
	 			brandId : {
	 				required : "品牌必须选择",
	 			    remote:"该品牌下这个产品型号已经存在"
	 			},
	 			productDesc : {
	 				required : "请输入型号描述"
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

