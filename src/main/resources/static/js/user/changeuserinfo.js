function changeUserInfo(orignalpwd)
{
	var pwd=$("#pwd").val();
	var pwd1=$("#pwd1").val();
	var pwd2=$("#pwd2").val();
	var tel=$("#tel").val();
	var address=$("#address").val();
	if((pwd!=""||pwd!=null))
		{
			if(pwd==orignalpwd)
				{
					if((pwd1!=""||pwd1!=null)&&(pwd2!=""||pwd2!=null))
						{
							if(pwd1!=pwd2)
								{
									alert("两次输入的密码不一致！");
								}else{
										$.ajax({
											type : "POST",
											url : "/bookEX/user/changeuserinfo",
											data : {
												tel:tel,
												address:address,
												password:pwd1
											},
											dataType : "json",
											success : function(result) {
												if (result == 1) {
													/*$("#changeuserinfo").trigger("click");*/
													/*alert("用户信息更改成功，请重新登录！");*/
													//$(location).attr('href', '/bookEX/login'); 
													window.location.href="/bookEX/login";
													alert("用户信息更改成功，请重新登录！");
													/*window.open("/bookEX/login");*/
												};
												if (result == 0) {
													window.alert("未知错误，请重试！");
												};
											},
										});
								}
						}
					}else{
						alert("原始密码不正确");
				}
		}
	}