$(function(){  
    var t = $("#quantity");  
    $("#add").click(function(){ 
    	if(parseInt(t.val())<parseInt($("#nowcount").val()))
    		{
    			t.val(parseInt(t.val())+1);  
    			$("#min").removeAttr("disabled");                 //当按加1时，解除$("#min")不可读状态  
        //setTotal();  
    		}else
    			{
    			$("#add").attr("disabled","disabled")
    			}
    })  
    $("#min").click(function(){  
               if (parseInt(t.val())>1) {                     //判断数量值大于1时才可以减少  
                t.val(parseInt(t.val())-1);
                $("#add").removeAttr("disabled");
                }else{  
                $("#min").attr("disabled","disabled")        //当$("#min")为1时，$("#min")不可读状态  
               }  
        //setTotal();  
    })  
    function setTotal(){  
        $("#total").html((parseInt(t.val())*3.95).toFixed(2));  
    }  
    //setTotal();  
}) 