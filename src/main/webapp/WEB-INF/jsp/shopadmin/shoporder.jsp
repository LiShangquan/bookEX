<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>shop manage order</title>
<link rel="stylesheet" href="/common/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/common/fontawesome/css/font-awesome.min.css">
<script src="/common/jquery/jquery-3.2.0.js"></script>
<script src="/common/jquery/jquery.goup.min.js"></script>
<script src="/common/bootstrap/js/bootstrap.min.js"></script>
<script src="/common/add/js/BackTop.js"></script>
<script src="/js/shopindex/shopindex.js"></script>
<script src="/js/admin/dealorder.js"></script>
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
		<div class="col-md-2 column">
		</div>
		 <div class="col-md-8 column">
		 <c:if test="${requestScope.result==0}">
		 亲~，你的店铺暂时还没有订单哦！
		 </c:if>
		 <c:if test="${requestScope.result==1}">
		 <table class="table">
			<th>本店未处理的订单内容如下：</th>
				<c:forEach var="orders" items="${requestScope.order}" varStatus="i"> 
				<tr>
				<td>
				<table class="table">
				<tr>
				<td>
				订单编号：${orders.orderid}
				</td>				
				<td>
				买家：${orders.buyername}
				</td>
				<td>
				</td>
				</tr>
				<tr>
				<td rowspan="3">
				<img src="/img/book/${orders.bookpic}" width="100" height="100">
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
				创建时间：${orders.createdtime}
				</td>
				</tr>
				<tr>
				<td>
				图书作者：${orders.author}
				</td>
				<td>
				总价￥：￥${orders.price*orders.obookcount}
				</td>
				</tr>
				<tr>
				<td>
				</td>
				<td>
				单价￥：${orders.price}
				</td>
				<td>
				<a onclick="dealorder(${orders.orderid})" style="text-decoration:none;cursor:pointer;">处理订单</a>
				</td>
				</tr>
				</table>
				</td>
				</tr>
				</c:forEach>
			</table>
		 </c:if>
		 <div class="col-md-2 column">
		</div>
		<!-- 分割线 -->
		<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="100%" color=black SIZE=3>
		<!-- 分割线 -->
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
</div>
</div>
</body>
</html>