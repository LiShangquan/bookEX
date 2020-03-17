<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>shop apply</title>
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
 <script src="/js/logout/logout.js"></script>
</head>
<body style="padding-top: 30px;">
<div class="container">
		<!-- 页头-->
			<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<span class="navbar-text navbar-left">&nbsp;</span> <span
				class="navbar-text navbar-left">&nbsp;</span>
			<div class="navbar-header">
				<a href=""><span class="navbar-brand">育网·重师图书交易网</span></a>
			</div>
			<c:if test="${empty sessionScope.user}">
			<span class="navbar-text navbar-left">&nbsp;</span>
				<!--向左对齐-->
				<p class="navbar-text navbar-left">
				<a href="/bookEX/login/">登录</a>
				</p>
				<span class="navbar-text navbar-left"></span>
				<p class="navbar-text navbar-left">
			<a href="/bookEX/register/">注册</a>
			</p>
			<p class="navbar-text navbar-right">&nbsp;&nbsp;</p>
				<p class="navbar-text navbar-right">&nbsp;&nbsp;</p>
				<span class="navbar-text navbar-right">&nbsp;&nbsp;</span> <span
					class="navbar-text navbar-right">&nbsp;&nbsp;</span>
					<span id="logout" class="navbar-text navbar-right">计算机与信息科学学院</span>
			</c:if>
			<c:if test="${! empty sessionScope.user}">
			<span class="navbar-text navbar-left">&nbsp;</span>
				<!--向左对齐-->
				<p class="navbar-text navbar-left">
				欢迎~${sessionScope.user.username}
				</p>
				<!--向右对齐-->
				<p class="navbar-text navbar-right">&nbsp;&nbsp;</p>
				<p class="navbar-text navbar-right">&nbsp;&nbsp;</p>
				<span class="navbar-text navbar-right">&nbsp;&nbsp;</span> <span
					class="navbar-text navbar-right">&nbsp;&nbsp;</span>
				</c:if>
				<c:if test="${! empty sessionScope.user}">
				<span class="navbar-text navbar-right">&nbsp;</span> <span
					class="navbar-text navbar-right">&nbsp;</span> 
					<span id="logout" class="navbar-text navbar-right"><a href="">注销</a></span>
					</c:if>
			</div>
	</nav>
	   <!-- 页头 -->
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="page-header">
					<h1>
						<a href="/bookEX/" style="text-decoration:none;">Book E X</a> <small>Exchange for books</small>
					</h1>
				</div>
			</div>
		</div>
		<!-- 页头 -->
		<c:if test="${!empty sessionScope.user}">
		<!--内容显示区域  -->
		<div id="display">	
		<div class="row clearfix">
		<div class="col-md-4 column">
		</div>
		<div class="col-md-4 column">
		<br>
		<form class="bs-example bs-example-form" role="form" action="/bookEX/shopadmin/addshop/" method="post" enctype="multipart/form-data">
		<div class="input-group">
			<span class="input-group-addon">*店铺名</span>
			<input name="shopname" type="text" class="form-control" placeholder="请输入昵称">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">*logo</span>
			<input name="files" id="input-id" type="file" class="file" data-preview-file-type="text" >
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">微信支付二维码</span>
			<input name="files" id="input-id" type="file" class="file" data-preview-file-type="text" >
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">支付宝支付二维码</span>
			<input name="files" id="input-id" type="file" class="file" data-preview-file-type="text" >
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">描述</span>
			<input name="shopmsg" type="text" class="form-control" placeholder="请输入店铺描述">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">*联系方式</span>
			<input name="shoptel" type="text" class="form-control" placeholder="请输入店铺联系方式">
		</div>
		<br>
		<button style="width:100%" type="submit" class="btn btn-primary"> 
		提交申请
		</button>
		<br>
		</form>
		</div>
		 <div class="col-md-4 column">
		</div>
		</div> 
		</div>
		</c:if>
		<!--内容显示区域  -->
		<!-- footer -->
		<div class="row clearfix">
			<div class="col-md-12 column">
				<%@ include file="../common/footer.jsp"%>
			</div>
		</div>
		<!-- footer -->
</div>
</body>
</html>