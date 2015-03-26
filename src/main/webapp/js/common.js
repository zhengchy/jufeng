/**
 * 工具组件 对原有的工具进行封装，自定义某方法统一处理
 * 
 * @author lanyuan 2014-12-12
 * @Email: mmm333zzz520@163.com
 * @version 3.0v
 */
;
(function() {
	ly = {};
	ly.ajax = (function(params) {
			var pp = {
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					parent.$.layer({
						type : 1,
						title : "出错啦！",
						area : [ '95%', '95%' ],
						shade : [ 0 ], // 去掉遮罩
						shift : 'bottom', // 从左动画弹出
						page : {
							html : "<div id='layerError' style='color:red'>"+XMLHttpRequest.responseText+"</div>"
						}
					});
				}
			};
			$.extend(pp, params);
			$.ajax(pp);
	});
	ly.ajaxSubmit = (function(form, params) {// form 表单ID. params ajax参数
			var pp = {
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					parent.$.layer({
						type : 1,
						title : "出错啦！",
						area : [ '95%', '95%' ],
						shade : [ 0 ], // 去掉遮罩
						shift : 'bottom', // 从左动画弹出
						page : {
							html : "<div id='layerError' style='color:red'>"+XMLHttpRequest.responseText+"</div>"
						}
					});
				}
			};
			$.extend(pp, params);
			$(form).ajaxSubmit(pp);
	});
})();
//表单json格式化方法……不使用&拼接
(function($) {
	$.fn.serializeJson = function() {
		var serializeObj = {};
		var array = this.serializeArray();
		$(array).each(
				function() {
					if (serializeObj[this.name]) {
						if ($.isArray(serializeObj[this.name])) {
							serializeObj[this.name].push(this.value);
						} else {
							serializeObj[this.name] = [
									serializeObj[this.name], this.value ];
						}
					} else {
						serializeObj[this.name] = this.value;
					}
				});
		return serializeObj;
	};
})(jQuery);