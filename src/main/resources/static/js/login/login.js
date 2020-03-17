$(function(){//普通用户登录
		$("#loginbtn").click(function(){
			var username=String($.trim($("#username").val()));
			var pwd=String($.trim($("#pwd").val()));
			var usertype=2;
	         $.ajax({
	             type: "POST",
	             url: "/bookEX/login/commoncheck",
	             data: {username:username, pwd:pwd,usertype:usertype},
	             dataType: "json",
	             success: function(result){
	            	 if(result==1)
	            		 {
	            		 location.href="/bookEX/";
	            		 };
	            	 if(result==0)
	            	 {
	            		 window.alert("用户名或密码错误");
	            	 };
	                      },
	         });
	});
});

$(function(){//管理员登录
	$("#adminloginbtn").click(function(){
		var username=String($.trim($("#adminusername").val()));
		var pwd=String($.trim($("#adminpwd").val()));
		var usertype=3;
		var radio=document.getElementsByName("usertype");
		  for(var i=0;i<radio.length;i++){
			if(radio[i].checked==true){
			  usertype=parseInt(radio[i].value);
			  break;
			}
		  };
         $.ajax({
             type: "POST",
             url: "/bookEX/shopadmin/logincheck",
             data: {username:username, pwd:pwd,usertype:usertype},
             dataType: "json",
             success: function(result){
            	 if(result==1 && usertype==1)
            		 {
            		 	location.href="/bookEX/shopadmin/shopadminsuccess";
            		 };
            	if(result==1 && usertype==0)
            		 {
            		 	location.href="/bookEX/admin/adminsuccess";
            		 };
            	 if(result==0)
            	 {
            		 window.alert("用户名或密码错误");
            	 };
                      },
         });
});
});
