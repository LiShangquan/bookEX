<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>detail</title>
<link rel="stylesheet" href="/common/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/common/fontawesome/css/font-awesome.min.css">
<script src="/common/jquery/jquery-3.2.0.js"></script>
<script src="/common/jquery/jquery.goup.min.js"></script>
<script src="/common/bootstrap/js/bootstrap.min.js"></script>
<script src="/common/add/js/BackTop.js"></script>
<script src="/common/count/js/count.js"></script>
<script src="/js/cart/cart.js"></script>
</head>
<body style="padding-top: 30px;">
	<div class="container">
		<!-- 页头-->
		<div class="row clearfix">
			<div class="col-md-12 column">
				<%@ include file="../common/CommonTop.jsp"%>
			</div>
		</div>
		<!-- 页头 -->
		<!-- 分割图片 + 引用块 -->
		<div class="row clearfix">
			<div class="col-md-6 column">
				<a href="/bookEX/shop/?shopid=${requestScope.shopmap.owner}&pagenow=0"><img src="/img/index/2.png"
					class="responsive"></a>
					<input id="searchshopid" type="hidden" value="${requestScope.shopmap.owner}">
			</div>
			<div class="col-md-6 column">
				<blockquote>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Integer posuere erat a ante.</p>
					<small>Someone famous <cite>Source Title</cite></small>
				</blockquote>
			</div>
		</div>
		<!-- 分割图片 + 引用块 -->
		<div class="row clearfix">
			<div class="col-md-6 column">
				<center>
					<img src="/img/book/${requestScope.book.bookpic}" width="400" height="400">
				</center>
			</div>
			<div class="col-md-6 column">
				<div class="row clearfix">
					<div class="col-md-8 column">
						<table class="table">
							<tr>
							<td>图书名：</td>
								<td>${requestScope.book.bookname}</td>
							</tr>
							<tr>
								<td>商品编号</td>
								<td>${requestScope.book.isbn}</td>
							</tr>
							<tr>
								<td>新书价格</td>
								<td>${requestScope.book.bookprice}</td>
							</tr>
							<tr>
								<td>现在价格</td>
								<td>${requestScope.book.pricenow}</td>
							</tr>
							<tr>
								<td>描述</td>
								<td>${requestScope.book.summary}</td>
							</tr>
							<tr>
								<td>作者</td>
								<td>${requestScope.book.author}</td>
							</tr>
							<tr>
								<td>数量</td>
								<td>${requestScope.book.nowcount}</td>
							</tr>
							<tr>
								<td>联系方式</td>
								<td>${requestScope.book.nowcount}</td>
							</tr>
						</table>
					</div>
					<div class="col-md-4 column"></div>
				</div>
			</div>
		</div>
		<br> <br> <br>
		<div class="row clearfix">
			<div class="col-md-4 column"></div>
			<div class="col-md-4 column">商品详情</div>
			<div class="col-md-4 column"></div>
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