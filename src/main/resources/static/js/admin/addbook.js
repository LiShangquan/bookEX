$(function(){//普通用户登录
		$("#addbook").click(function(){
		var addbook="";
		$("#display").html("");
		/*addbook="<iframe src='shopadmin/test.jsp' width='100%'></iframe>";
		addbook="<div class='row clearfix'>"+
		"<div class='col-md-4 column'></div>"+
		"<div class='col-md-4 column'>"+
		"<br>"+
		"<form action='/bookEX/shopadmin/addbook/' method='post' class='bs-example bs-example-form' role='form' enctype='multipart/form-data'>"+
		"<div class='input-group'>"+
			"<span class='input-group-addon'>书名</span>"+
			"<input type='text' class='form-control' placeholder='图书名字'>"+
		"</div>"+
		"<br>"+
		"<div class='input-group'>"+
			"<span class='input-group-addon'>作者</span>"+
			"<input type='text' class='form-control' placeholder='图书作者'>"+
		"</div>"+
		"<br>"+
		"<div class='input-group'>"+
			"<span class='input-group-addon'>出版社</span>"+
			"<input type='text' class='form-control' placeholder='出版社'>"+
		"</div>"+
		"<br>"+
		"<div class='input-group'>"+
			"<span class='input-group-addon'>图书类型</span>"+
			"<input type='text' class='form-control' placeholder='请选择类型'>"+
		"</div>"+
		"<br>"+
		"<div class='input-group'>"+
			"<span class='input-group-addon'>数量</span>"+
			"<input type='text' class='form-control' placeholder='数量'>"+
		"</div>"+
		"<br>"+
		"<div class='input-group'>"+
			"<span class='input-group-addon'>原价</span>"+
			"<input type='text' class='form-control' placeholder='图书原价'>"+
		"</div>"+
		"<br>"+
		"<div class='input-group'>"+
			"<span class='input-group-addon'>现价</span>"+
			"<input type='text' class='form-control' placeholder='图书现价'>"+
		"</div>"+
		"<br>"+
		"<div class='input-group'>"+
			"<span class='input-group-addon'>破损程度</span>"+
			"<input type='text' class='form-control' placeholder='选择破损程度'>"+
		"</div>"+
		"<br>"+
		"<div class='input-group'>"+
			"<span class='input-group-addon'>摘要</span>"+
			"<input type='text' class='form-control' placeholder='摘要'>"+
		"</div>"+
		"<br>"+
		"<div class='input-group'>"+ 
			 "<span class='input-group-addon'>图片</span>"+ 
			"<input id='input-id' type='file' class='file' data-preview-file-type='text' >"+
		"</div>"+
			"<br>"+
		"<button id='addbook' style='width:100%;' type='submit' class='btn btn-primary'>"+ 
		"保存"+
		"</button>"+
		"<br>"+
		"<br>"+
		"</form>"+
		"</div>"+
		 "<div class='col-md-4 column'>"+
		"</div>"+
		"</div>";
		$("#display").append(addbook);*/

			  $("display").load('/shopadmin/test.jsp');

	});
});