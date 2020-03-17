$(function() {
	$("#addclassbtn").click(function() {
		var description = $("#class").val();
		if (description == null || description == "") {
			alert("请输入类别");
			$("#class").focus();
		} else {
			$.ajax({
				type : "POST",
				url : "/bookEX/shopadmin/addcategory",
				data : {
					description : description
				},
				dataType : "json",
				success : function(result) {
					if (result == 1) {
						alert("添加成功");
						location.reload();
					}
					;
					if (result == 0) {
						window.alert("未知错误");
					}
					;
				},
			});
		}
	});
});