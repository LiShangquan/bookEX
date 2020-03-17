<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>order</title>
<link rel="stylesheet" href="/common/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/common/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="/common/add/css/indexshop.css">
<script src="/common/jquery/jquery-3.2.0.js"></script>
<script src="/common/jquery/jquery.goup.min.js"></script>
<script src="/common/bootstrap/js/bootstrap.min.js"></script>
<script src="/common/add/js/BackTop.js"></script>
<script src="/js/search/search.js"></script>
</head>
<body style="padding-top: 30px;">
<div class="container">
		<!-- 页头-->
		<div class="row clearfix">
			<div class="col-md-12 column">
				<%@ include file="../common/usertop.jsp"%>
			</div>
		</div>
		<!-- 页头 -->
		<div class="row clearfix">
			<div class="col-md-2 column">
			</div>
			<div class="col-md-8 column">
			<table class="table">
			<th>您的订单内容如下：</th>
				<c:forEach var="orders" items="${requestScope.orderlist}" varStatus="i"> 
				<tr>
				<td>
				<table class="table">
				<tr>
				<td>
				</td>				
				<td>
				店铺：<a href="/bookEX/shop/?shopid=${orders.sellerid}&pagenow=1" target="_blank" style="text-decoration:none;">${orders.shopname}</a>
				</td>
				<td>
				</td>
				</tr>
				<tr>
				<td rowspan="3">
				<a href="/bookEX/user/userdetail/?isbn=${orders.isbn}"><img src="/img/book/${orders.bookpic}" width="100" height="100"></a>
				</td>
				<td>
				图书编号：${orders.isbn}
				</td>
				<td>
				数量：${orders.obookcount}
				</td>
				</tr>
				<tr>
				<td>
				图书名称：${orders.gname}
				</td>
				<td>
				总价：${orders.price*orders.obookcount}
				</td>
				</tr>
				<tr>
				<td>
				图书作者：${orders.author}
				</td>
				<td>
				创建时间：${orders.createdtime}
				</td>
				</tr>
				<tr>
				<td>
				</td>
				<td>
				单价￥：${orders.price}
				</td>
				<td>
				订单状态：
				<c:if test="${orders.ostatus==0}">
				未处理
				</c:if>
				<c:if test="${orders.ostatus==1}">
				已处理
				</c:if>
				</td>
				</tr>
				</table>
				</td>
				</tr>
				</c:forEach>
			</table>
			</div>
			<div class="col-md-2 column">
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