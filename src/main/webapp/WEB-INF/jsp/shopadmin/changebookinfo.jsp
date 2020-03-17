<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>shop manage shop outbookinfo</title>
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
		<!--内容显示区域  -->
		<div id="display">
		<div class="row clearfix">
		<div class="col-md-4 column">
		<form class="bs-example bs-example-form" role="form" action="/bookEX/shopadmin/changebookmark/" method="post" enctype="multipart/form-data">
		<table class="table">
		<tr>
		<td align="center">
		图书封面
		<input type="hidden" name="isbn" value="${requestScope.book.isbn}">
		</td>
		</tr>
		<tr>
		<td align="center">
		<img src="/img/book/${requestScope.book.bookpic}" width="200px" height="200px">
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
						更改封面
			</button>
			</td>
			</tr>
		</table>
		</form>
		</div>
		<div class="col-md-4 column">
		<form class="bs-example bs-example-form" role="form" action="/bookEX/shopadmin/changebookinfo/" method="post" enctype="multipart/form-data">
		<div class="input-group">
			<span class="input-group-addon">书名</span>
			<input type="hidden" name="isbn" value="${requestScope.book.isbn}">
			<input name="bookname" type="text" class="form-control" value="${requestScope.book.bookname}">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">作者</span>
			<input name="author" type="text" class="form-control" value="${requestScope.book.author}">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">出版社</span>
			<input name="press" type="text" class="form-control" value="${requestScope.book.press}">
		</div>
		<%-- <br>
		<div class="input-group">
			<span class="input-group-addon">图书类型</span>
			<select name="booktype" class="form-control"> 
			<option>请选择···</option>
			 <c:forEach var="category" items="${requestScope.category}" varStatus="i" begin="0">
			<option value="${category.cid}">${category.description}</option>		
			</c:forEach>
			</select>
		</div> --%>
		<br>
		<div class="input-group">
			<span class="input-group-addon">库存</span>
			<input name="bookcount" type="text" class="form-control" value="${requestScope.book.bookcount}">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">现有数量</span>
			<input name="nowcount" type="text" class="form-control" value="${requestScope.book.nowcount}">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">原价</span>
			<input name="bookprice" type="text" class="form-control" value="${requestScope.book.bookprice}">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">现价</span>
			<input name="pricenow" type="text" class="form-control" value="${requestScope.book.pricenow}">
		</div>
		<%-- <br>
		<div class="input-group">
			<span class="input-group-addon">破损程度</span>
			<select name="bookwornlevel" class="form-control"> 
			<option>请选择...</option>
			 <c:forEach var="wornlevel" items="${requestScope.wornlevel}" varStatus="i" begin="0">
			<option value="${wornlevel.cid}">${wornlevel.description}</option>		
			</c:forEach>
			</select>
		</div> --%>
		<br>
		<div class="input-group">
			<span class="input-group-addon">摘要</span>
			<input name="summary" type="text" class="form-control" value="${requestScope.book.summary}">
		</div>
		<!-- <br>
		<div class="input-group"> 
			 <span class="input-group-addon">图片</span> 
			<input name="file" id="input-id" type="file" class="file" data-preview-file-type="text" >
		</div> -->
		<br>
		<button type="submit" style="width:100%;" type="button" class="btn btn-primary" > 
						确认修改
						</button>
		<br>
		<br>
		</form>
		</div>
		<div class="col-md-4 column">
		</div>
	</div>
		</div>
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