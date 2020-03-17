<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>shop manage add book</title>
<link rel="stylesheet" href="/common/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/common/fontawesome/css/font-awesome.min.css">
<script src="/common/jquery/jquery-3.2.0.js"></script>
<script src="/common/jquery/jquery.goup.min.js"></script>
<script src="/common/bootstrap/js/bootstrap.min.js"></script>
<script src="/common/add/js/BackTop.js"></script>
<script src="/js/shopindex/shopindex.js"></script>
</head>
<body style="padding-top: 30px;">
<div class="container">
		<!-- 页头-->
		<div class="row clearfix">
			<div class="col-md-12 column">
				<%@ include file="../common/admintop.jsp"%>
			</div>
		</div>
		<!-- 页头 -->
		<!--内容显示区域  -->
		<div id="display">
		
				<div class="row clearfix">
		<div class="col-md-4 column">
		</div>
		<div class="col-md-4 column">
		<form class="bs-example bs-example-form" role="form" action="/bookEX/shopadmin/addbook/" method="post" enctype="multipart/form-data">
		<div class="input-group">
			<span class="input-group-addon">书名</span>
			<input name="bookname" type="text" class="form-control" placeholder="图书名字">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">作者</span>
			<input name="bookauthor" type="text" class="form-control" placeholder="图书作者">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">出版社</span>
			<input name="bookpress" type="text" class="form-control" placeholder="图书出版社">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">图书类型</span>
			<select name="booktype" class="form-control"> 
			<option>请选择...</option>
			 <c:forEach var="category" items="${requestScope.category}" varStatus="i" begin="0">
			<option value="${category.cid}">${category.description}</option>		
			</c:forEach>
			</select>
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">数量</span>
			<input name="bookcount" type="text" class="form-control" placeholder="请输入图书数量">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">原价</span>
			<input name="bookprice" type="text" class="form-control" placeholder="请输入图书原价">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">现价</span>
			<input name="bookpricenow" type="text" class="form-control" placeholder="请输入图书现价">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">破损程度</span>
			<select name="bookwornlevel" class="form-control"> 
			<option>请选择...</option>
			 <c:forEach var="wornlevel" items="${requestScope.wornlevel}" varStatus="i" begin="0">
			<option value="${wornlevel.cid}">${wornlevel.description}</option>		
			</c:forEach>
			</select>
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">摘要</span>
			<input name="booksummary" type="text" class="form-control" placeholder="摘要">
		</div>
		<br>
		<div class="input-group"> 
			 <span class="input-group-addon">图片</span> 
			<input name="file" id="input-id" type="file" class="file" data-preview-file-type="text" >
		</div>
		<br>
		<button type="submit" style="width:100%;" type="button" class="btn btn-primary" > 
						上传
						</button>
		<br>
		<br>
		</form>
		</div>
		<div class="col-md-4 column">
		</div>
		</div> 
		</div>
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