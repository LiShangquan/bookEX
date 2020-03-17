$(function() {
	$("#register").click(function() {
		var username = $("#username").val();
		var pwd1 = $("#pwd1").val();
		var pwd2 = $("#pwd2").val();
		if ((username == null || username == "") || (pwd1==null || pwd1=="") || (pwd2==null || pwd2=="")) {
			alert("请完善必填信息！");
			location.reload();
		} else if(pwd1!=pwd2)
		{
			alert("两次输入的密码不一致！");
			location.reload();
		}else{
			$.ajax({
				type : "POST",
				url : "/bookEX/user/register",
				data : {
					username : username,
					pwd : pwd1,
				},
				dataType : "json",
				success : function(result) {
					if (result == 1) {
						alert("注册成功！去登录吧！");
						location.href="/bookEX/login/";
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