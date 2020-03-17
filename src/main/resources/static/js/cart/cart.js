
function add2Cart(isbn,owner,nowcount){
	var gcount=1;
	if(parseInt($("#quantity").val())!=""&&parseInt($("#quantity").val())!=null)
		{
		gcount=parseInt($("#quantity").val());
		}
	$.ajax({
        type: "POST",
        url: "/bookEX/user/addshoppingcart",
        data: {isbn:isbn, owner:owner,gcount:gcount,count:nowcount},
        dataType: "json",
        success: function(result){
       	 if(result==1)
       		 {
       		window.alert("添加成功！");
       		 };
       	 if(result==0)
       	 {
       		 window.alert("未知错误！");
       	 };
                 },
    });
}

function removeFromCart(id){
	$.ajax({
        type: "POST",
        url: "/bookEX/user/removefrommycart",
        data: {id:id},
        dataType: "json",
        success: function(result){
       	 if(result==1)
       		 {
       		$("#"+id).fadeOut(1500);
       		 };
       	 if(result==0)
       	 {
       		 window.alert("未知错误！");
       	 };
                 },
    });
}

function addOneToOrder(id){
	$.ajax({
        type: "POST",
        url: "/bookEX/user/addOneToOrder",
        data: {id:id},
        dataType: "json",
        success: function(result){
       	 if(result==1)
       		 {
       		$("#paymsg").html("");
       		$("#success").trigger("click");
       		 }
       	 if(result==0)
       	 {
       		 window.alert("未知错误！");
       	 };
                 },
    });
}

/*function toCommitOrder(cartid,isbn){
	$.ajax({
        type: "POST",
        url: "/bookEX/user/gotocommitorder",
        data: {cartid:cartid,isbn:isbn},
        dataType: "json",
        success: function(result){
       	 if(result==1)
       		 {
       		 $("#"+id).fadeOut(1500);
       		 };
       	 if(result==0)
       	 {
       		 window.alert("未知错误！");
       	 };
                 },
    });
}

function addAllToOrder(){
	$.ajax({
        type: "POST",
        url: "/bookEX/user/addAllToOrder",
        data: {},
        dataType: "json",
        success: function(result){
       	 if(result==1)
       		 {
       		window.alert("成功！");
       		window.location.reload();
       		 };
       	 if(result==0)
       	 {
       		 window.alert("未知错误！");
       	 };
                 },
    });
}*/



function BuyItRightNow(isbn,owner,nowcount){
	var gcount=1;
	if(parseInt($("#quantity").val())!=""&&parseInt($("#quantity").val())!=null)
		{
		gcount=parseInt($("#quantity").val());
		}
	$.ajax({
        type: "POST",
        url: "/bookEX/user/addshoppingcart",
        data: {isbn:isbn, owner:owner,gcount:gcount,count:nowcount},
        dataType: "json",
        success: function(result){
       	 if(result==1)
       		 {
       		location.href="/bookEX/user/mycart/";
       		 };
       	 if(result==0)
       	 {
       		 window.alert("未知错误！");
       	 };
                 },
    });
}

function pay(owner,price,id,isbn){
	var result="";
	var money=price* parseInt($("#quantity"+isbn).val())
	$.ajax({
        type: "POST",
        url: "/bookEX/shop/getshopinfo",
        data: {shopid:owner},
        dataType: "json",
        success: function(shop){
        	 $("#paymsg").html("");
       		result="<div class=modal-body>"+
       		"<table class=table>"+
			"<tr>"+
			"<td align=center>"+
			"<img src=/img/shop/apaypic/"+shop.paypic1+" width=100px height=100px>"+
			"</td>"+
			"<td align=center>"+
			"这笔订单总共应支付：<br>"+
			"<h3>￥"+money+
			"</h3></td>"+
			"<td align=center>"+
			"<img src=/img/shop/wpaypic/"+shop.paypic2+" width=100px height=100px>"+
			"</td>"+
			"</tr>"+
			"<tr>"+
			"<td align=center>"+
			"支付宝支付"+
			"</td>"+
			"<td>"+
			"</td>"+
			"<td align=center>"+
			"微信支付"+
			"</td>"+
			"</tr>"+
			"</table>"+
			"</div>"+
			"<div class=modal-footer>"+
			"<button onclick=addOneToOrder("+id+") type=button class=btn btn-default data-dismiss=modal>已支付"+
			"</button>"+
			"<button type=button class=btn btn-default data-dismiss=modal>取消"+
			"</button>"+
		"</div>";
       	 $("#paymsg").append(result);
        },
        error: function(){
       		 result="未知错误！";
        },
    });
	$("#test").trigger("click");
}

function backToCart()
{
	location.href="/bookEX/user/mycart/";
	document.onclick=function(){};
	}