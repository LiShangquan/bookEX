$(function() {
	$("#findbook").click(function() {
		var bookname = $("#bookname").val();
		var bookauthor = $("#bookauthor").val();
		var remark = $("#remark").val();
		if ((bookname == null || bookname == "")) {
			alert("请完善必填信息！");
			location.reload();
		} else {
			$.ajax({
				type : "POST",
				url : "/bookEX/user/addfindbook",
				data : {
					bookname : bookname,
					bookauthor : bookauthor,
					msgcontent : remark
				},
				dataType : "json",
				success : function(result) {
					if (result == 1) {
						alert("发布成功！");
						location.reload();
					}
					;
					if (result == 0) {
						window.alert("未知错误，请重试！");
					}
					;
				},
			});
		}
	});
});