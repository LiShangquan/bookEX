function dealorder(orderid)
{
	$.ajax({
		type : "POST",
		url : "/bookEX/shopadmin/dealorder",
		data : {
			orderid : orderid
		},
		dataType : "json",
		success : function(result) {
			if (result == 1) {
				alert("处理成功");
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
