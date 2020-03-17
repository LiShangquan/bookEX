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
		<table class="table">
		<tr>
		<td align="center">
		图书封面
		</td>
		</tr>
		<tr>
		<td align="center">
		<img src="/img/book/${requestScope.book.bookpic}" width="200px" height="200px">
		</td>
		</tr>
		</table>
		</div>
		<div class="col-md-6 column">
		<table class="table">
							<tr>
							<td align="center">图书名</td>
								<td align="center">${requestScope.book.bookname}</td>
							</tr>
							<tr>
								<td align="center">商品编号</td>
								<td align="center">${requestScope.book.isbn}</td>
							</tr>
							<tr>
								<td align="center">新书价格</td>
								<td align="center">￥${requestScope.book.bookprice}</td>
							</tr>
							<tr>
								<td align="center">当前价格</td>
								<td align="center">￥${requestScope.book.pricenow}</td>
							</tr>
							<tr>
								<td align="center">作者</td>
								<td align="center">${requestScope.book.author}</td>
							</tr>
							<tr>
								<td align="center">出版社</td>
								<td align="center">${requestScope.book.press}</td>
							</tr>
							<tr>
								<td align="center">初始数量</td>
								<td align="center">${requestScope.book.bookcount}</td>
							</tr>
							<tr>
								<td align="center">现有数量</td>
								<td align="center">${requestScope.book.nowcount}</td>
							</tr>
							<tr>
								<td align="center">摘要</td>
								<td align="center">${requestScope.book.summary}</td>
							</tr>
							<tr>
								<td align="center">创建时间</td>
								<td align="center">${requestScope.book.createdtime}</td>
							</tr>
							<tr>
								<td align="center"><h5><a href="/bookEX/shopadmin/linktoshopbookinfo/" style="text-decoration: none;cursor:pointer;">返回</a></h5></td>
								<td align="center"><h5><a href="/bookEX/shopadmin/changebookdetail/?isbn=${book.isbn}">修改</a></h5></td>
							</tr>
		</table>
		</div>
		<div class="col-md-2 column">
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