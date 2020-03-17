$(function(){
		$("#search").click(function(){
			var search=String($("#searchcondition").val());
			if(search=="" || search==null)
				{
				alert("请输入搜索内容！");
				}
			else
				{
				location.href = "/bookEX/search/?search="+search;
				}
	}),
		
		$("#searchself").click(function(){
			var search=String($("#searchcondition").val());
			var shopid=String($("#searchshopid").val());
			if(search=="" || search==null)
			{
				alert("请输入搜索内容！");
			}
			else
			{
				location.href = "/bookEX/shop/searchself/?search="+search+"&owner="+shopid;
			}
		});
});
