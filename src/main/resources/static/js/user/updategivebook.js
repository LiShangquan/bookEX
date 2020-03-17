function updateGiveBook(isbn)
{	
	$.ajax({
		type : "POST",
		url : "/bookEX/user/changegivebook",
		data : {
			isbn:isbn
		},
		dataType : "json",
		success : function(result) {
			if (result == 1) {
				alert("状态更改成功！");
				location.href="/bookEX/user/linktouseraddbook/";
			}
			;
			if (result == 0) {
				window.alert("未知错误，请重试！");
			}
			;
		},
	});
	}