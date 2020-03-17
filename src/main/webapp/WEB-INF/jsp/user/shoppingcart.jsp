<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>shopping cart</title>
<link rel="stylesheet" href="/common/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/common/fontawesome/css/font-awesome.min.css">
<script src="/common/jquery/jquery-3.2.0.js"></script>
<script src="/common/jquery/jquery.goup.min.js"></script>
<script src="/common/bootstrap/js/bootstrap.min.js"></script>
<script src="/common/add/js/BackTop.js"></script>
<script src="/js/shopindex/shopindex.js"></script>
<!-- <script src="/common/count/js/count.js"></script> -->
<script src="/js/cart/cart.js"></script>
<script src="/js/cart/cartcount.js"></script>
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
			<c:if test="${!empty requestScope.cartlist}">
				<p>您的购物车内容如下：</p>
			</c:if>
			<c:if test="${empty requestScope.cartlist}">
				<h3>您还没有选择图书哦！</h3>
			</c:if>
				<c:forEach var="carts" items="${requestScope.cartlist}" varStatus="i"> 			
				<table id="${carts.id}" class="table">
				<tr>
				
				<td>
				</td>				
				<td>
				店铺：<a href="/bookEX/shop/?shopid=${carts.owner}&pagenow=1" target="_blank" style="text-decoration:none;">${carts.shopname}</a>
				</td>
				<td>
				</td>
				</tr>
				<tr>
			
				<td rowspan="3" align="center">
				<a href="/bookEX/user/userdetail/?isbn=${carts.isbn}"><img src="/img/book/${carts.bookpic}" width="100" height="100"></a>
				</td>
				<td>
				图书编号：${carts.isbn}
				</td>
				<td>
				现有数量：${carts.count}
				</td>
				</tr>
				<tr>
				
				<td>
				图书名称：${carts.gname}
				</td>
				<td>
				<input id="nowcount${carts.isbn}" type="hidden" value="${carts.count}"/>
				<input id="price${carts.isbn}" type="hidden" value="${carts.price}"/> 
				<input id="owner${carts.isbn}" type="hidden" value="${carts.owner}"/>  
				数量：
				<input id="min${carts.isbn}" onclick="cartmincount(${carts.isbn})" name="" type="button" value="-" />
				<input id="quantity${carts.isbn}" name="" type="text" value="${carts.gcount}"  style="width:30px;"/> 
				<input id="add${carts.isbn}" onclick="cartaddcount(${carts.isbn})" name="" type="button" value="+" />
				</td>
				</tr>
				<tr>
				
				<td>
				图书作者：${carts.author}
				</td>
				<td>
				总价￥：<span style="width:80px;" id="total${carts.isbn}">${carts.gcount*carts.price}</span>
				</td>
				</tr>
				<tr>
				
				<td>
				</td>
				<td>
				单价￥：${carts.price}
				</td>
				<td>
				<a class="btn" onclick="removeFromCart(${carts.id})" style="text-decoration:none;">移除</a>  
				<a class="btn" href="/bookEX/user/gotocommitorder/?cartid=${carts.id}" style="text-decoration:none;">结算</a>
				</td>
				</tr>
				</table>
				</c:forEach>
				<table class="table">
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
	</div>
	<!-- footer -->
</body>
</html>