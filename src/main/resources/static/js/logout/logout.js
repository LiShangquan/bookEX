$(function(){	
		$("#logout").click(function(){
	         $.ajax({
	             type: "POST",
	             url: "/bookEX/login/checkout",
	             data: {},
	             dataType: "json",
	             success: function(result){
	            	 if(result==1)
	            		 {
	            		 location.href="/bookEX/";
	            		 };
	            	 if(result==0)
	            	 {
	            		 window.alert("未知错误，请重试。");
	            	 };
	                      },
	         });
	});
});