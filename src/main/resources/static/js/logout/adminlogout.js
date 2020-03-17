$(function(){	
		$("#adminlogout").click(function(){
	         $.ajax({
	             type: "POST",
	             url: "/bookEX/shopadmin/checkout",
	             data: {},
	             dataType: "json",
	             success: function(result){
	            	 if(result==1)
	            		 {
	            		 location.href="/bookEX/shopadmin";
	            		 };
	            	 if(result==0)
	            	 {
	            		 window.alert("未知错误，请重试。");
	            	 };
	                      },
	         });
	});
});