<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>shop manage change logo</title>
<link rel="stylesheet" href="/common/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/common/fontawesome/css/font-awesome.min.css">
<script src="/common/jquery/jquery-3.2.0.js"></script>
<script src="/common/jquery/jquery.goup.min.js"></script>
<script src="/common/bootstrap/js/bootstrap.min.js"></script>
<script src="/common/add/js/BackTop.js"></script>
</head>
<body style="padding-top: 30px;">
<div class="container">
		<!-- 页头-->
		<div class="row clearfix">
			<div class="col-md-12 column">
				<%@ include file="../common/admintop.jsp"%>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-6 column">
			<table class="table">
			<tr>
			<td align="center">
			<span >当前店铺LOGO</span>
			</td>
			</tr>
			<tr>
			<td align="center">
			<img src="/img/shop/logo/${sessionScope.shopadmin.shoplogo}" width="200px" height="200px">
			</td>
			</tr>
			</table>
			</div>
			<div class="col-md-4 column">
			<form class="bs-example bs-example-form" role="form" action="/bookEX/shopadmin/changelogo/" method="post" enctype="multipart/form-data">
			<table class="table">
			<tr>
			<td align="center">
			修改店铺LOGO
			</td>
			</tr>
			<tr>
			<td align="center">
			<br>
			<br>
			<br>
			<div class="input-group"> 
			 <span class="input-group-addon">图片</span> 
			<input name="file" id="input-id" type="file" class="file" data-preview-file-type="text" >
			</div>
			<br>
			<button type="submit" style="width:100%;" type="button" class="btn btn-primary" > 
						确认更改
			</button>
			</td>
			</tr>
			</table>
			</form>
			</div>
			<div class="col-md-2 column">
			</div>
			</div>
		<!-- 页头 -->
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