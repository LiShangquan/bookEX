//增加按钮
function cartaddcount(isbn)
{	
	var t = $("#quantity"+isbn);  
    var price=$("#price"+isbn);
    var owner=$("#owner"+isbn).val();
    	if(parseInt(t.val())<parseInt($("#nowcount"+isbn).val()))
    		{
    			t.val(parseInt(t.val())+1);
    			$("#total"+isbn).html((parseInt(t.val())*parseInt(price.val())));
    			$("#min"+isbn).removeAttr("disabled");                 //当按加1时，解除$("#min")不可读状态  
    			$.ajax({
   		         type: "GET",
   		         url: "/bookEX/user/changeshoppingcart",
   		         data: {isbn:isbn,gcount:parseInt(t.val()), owner:owner,count:parseInt($("#nowcount"+isbn).val())},
   		         dataType: "json",
   		         success: function(console){
   		        	 if(console!=1)
   		        		 {
   		        		 alert("未知错误");
   		        			 }
   		         }
    			});
    		}else
    			{
    			$("#add"+isbn).attr("disabled","disabled")
    			}
};
//减少按钮
function cartmincount(isbn)
{	
	var t = $("#quantity"+isbn);
	var price=$("#price"+isbn);
	var owner=$("#owner"+isbn).val();
	 if (parseInt(t.val())>1) {                     //判断数量值大于1时才可以减少  
         t.val(parseInt(t.val())-1);
         $("#total"+isbn).html((parseInt(t.val())*parseInt(price.val()))); 
         $("#add"+isbn).removeAttr("disabled");
         $.ajax({
		         type: "GET",
		         url: "/bookEX/user/changeshoppingcart",
		         data: {isbn:isbn,gcount:parseInt(t.val()), owner:owner,count:parseInt($("#nowcount"+isbn).val())},
		         dataType: "json",
		         success: function(console){
		        	 if(console!=1)
		        		 {
		        		 alert("未知错误");
		        			 }
		         }
			});
         }else{  
         $("#min"+isbn).attr("disabled","disabled")        //当$("#min")为1时，$("#min")不可读状态  
        } 
}