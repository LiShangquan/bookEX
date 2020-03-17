function dealFindBook(msgid)
{	
	$.ajax({
		type : "POST",
		url : "/bookEX/user/changefindbook",
		data : {
			msgid:msgid
		},
		dataType : "json",
		success : function(result) {
			if (result == 1) {
				alert("状态更改成功！");
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