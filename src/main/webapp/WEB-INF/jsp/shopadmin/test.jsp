<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>
<link rel="stylesheet" href="/common/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/common/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="/common/fileupload/css/fileinput.min.css">
<script src="/common/jquery/jquery-3.2.0.js"></script>
<script src="/common/jquery/jquery.goup.min.js"></script>
<script src="/common/bootstrap/js/bootstrap.min.js"></script>
 <script src="/common/add/js/BackTop.js"></script>
 <script src="/common/fileupload/js/fileinput.min.js"></script>
 <script src="/common/fileupload/js/initialfileupload.js"></script>
</head>
<body>
<div class="container">
		<div class="row clearfix">
		<div class="col-md-4 column">
		</div>
		<div class="col-md-4 column">
		<form class="bs-example bs-example-form" role="form">
		<div class="input-group">
			<span class="input-group-addon">书名</span>
			<input type="text" class="form-control" placeholder="邮箱/用户名">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">作者</span>
			<input type="text" class="form-control" placeholder="请输入电话">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">出版社</span>
			<input type="text" class="form-control" placeholder="请输入昵称">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">图书类型</span>
			<input type="text" class="form-control" placeholder="请选择性别">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">数量</span>
			<input type="text" class="form-control" placeholder="请选择生日">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">原价</span>
			<input type="text" class="form-control" placeholder="请输入地址">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">现价</span>
			<input type="text" class="form-control" placeholder="请输入密码">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">破损程度</span>
			<input type="text" class="form-control" placeholder="请再次输入密码">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">摘要</span>
			<input type="text" class="form-control" placeholder="请再次输入密码">
		</div>
		<br>
		<button style="width:100%;" type="button" class="btn btn-primary"  data-toggle="button"> 
						注册
						</button>
		<br>
		<br>
		</form>
		</div>
		 <div class="col-md-4 column">
		 <div class="input-group"> 
			 <span class="input-group-addon">图片</span> 
			<input id="input-id" type="file" class="file" data-preview-file-type="text" >
		</div>
		</div>
		</div> 
		</div>
</body>
</html>