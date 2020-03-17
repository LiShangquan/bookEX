<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="/common/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/common/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="/common/add/css/indexshop.css">
<script src="/common/jquery/jquery-3.2.0.js"></script>
<script src="/common/jquery/jquery.goup.min.js"></script>
<script src="/common/bootstrap/js/bootstrap.min.js"></script>
<script src="/common/add/js/BackTop.js"></script>
<script src="/js/cart/cartcount.js"></script>
<script src="/js/cart/cart.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>order</title>
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
		<div class="col-md-12 column">
			<div class="row clearfix">
			<div class="col-md-2 column">
				</div>
				<div class="col-md-8 column">
					 <address> <strong>地址:</strong>${sessionScope.user.address}<br /><abbr title="Phone">电话:</abbr> ${sessionScope.user.telephone}</address>
				</div>
				<div class="col-md-2 column">
				</div>
			</div>
			<div class="row clearfix">
			<div class="col-md-2 column">
				</div>
				<div class="col-md-8 column">
				<table class="table">
				<tr>
				
				<td>
				</td>				
				<td>
				店铺：<a href="/bookEX/shop/?shopid=${requestScope.cart.owner}&pagenow=1" target="_blank" style="text-decoration:none;">${requestScope.cart.shopname}</a>
				</td>
				<td>
				</td>
				</tr>
				<tr>
			
				<td rowspan="3" align="center">
				<a href="/bookEX/user/userdetail/?isbn=${requestScope.cart.isbn}"><img src="/img/book/${requestScope.cart.bookpic}" width="100" height="100"></a>
				</td>
				<td>
				图书编号：${requestScope.cart.isbn}
				</td>
				<td>
				现有数量：${requestScope.cart.count}
				</td>
				</tr>
				<tr>
				
				<td>
				图书名称：${requestScope.cart.gname}
				</td>
				<td>
				<input id="nowcount${requestScope.cart.isbn}" type="hidden" value="${requestScope.cart.count}"/>
				<input id="price${requestScope.cart.isbn}" type="hidden" value="${requestScope.cart.price}"/> 
				<input id="owner${requestScope.cart.isbn}" type="hidden" value="${requestScope.cart.owner}"/>  
				数量：
				<input id="min${requestScope.cart.isbn}" onclick="cartmincount(${requestScope.cart.isbn})" name="" type="button" value="-" />
				<input id="quantity${requestScope.cart.isbn}" name="" type="text" value="${requestScope.cart.gcount}"  style="width:30px;"/> 
				<input id="add${requestScope.cart.isbn}" onclick="cartaddcount(${requestScope.cart.isbn})" name="" type="button" value="+" />
				</td>
				</tr>
				<tr>
				
				<td>
				图书作者：${requestScope.cart.author}
				</td>
				<td>
				总价￥：<span style="width:80px;" id="total${requestScope.cart.isbn}">${requestScope.cart.gcount*requestScope.cart.price}</span>
				</td>
				</tr>
				<tr>
				
				<td>
				</td>
				<td>
				单价￥：${requestScope.cart.price}
				</td>
				<td>
				<a class="btn" href="/bookEX/user/mycart/" style="text-decoration:none;">取消订单</a>  
				
				</td>
				</tr>
				<tr>
				<td>
				</td>
				<td>
				</td>
				<td align="right">
				 <button id="submit" onclick="pay(${requestScope.cart.owner},${requestScope.cart.price},${requestScope.cart.id},${requestScope.cart.isbn})" type="button" class="btn btn-default">提交订单</button>
				</td>
				</tr>
				</table>
				</div>
				<div class="col-md-2 column">
				</div>
			</div>
		</div>
	</div>
		<!-- 提示框 -->
		<a id="test" data-toggle="modal" data-target="#myModal1" style="text-decoration: none;cursor:pointer;"></a>
		<!-- 模态框（Modal） -->
		<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabel">支付提示</h4>
					</div>
					<div id="paymsg">
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
		<!-- 提示框 -->
		
		<!-- 提交成功提示 -->
		<a id="success" data-toggle="modal" data-target="#myModal2" style="text-decoration: none;cursor:pointer;"></a>
		<!-- 模态框（Modal） -->
		<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button onclick="backToCart()" type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
						</button>
				<h4 class="modal-title" id="myModalLabel">
					订单提交成功
				</h4>
			</div>
			<div class="modal-body">
				亲，您的订单已提交成功，正在等待店主处理。<br>
				记得及时关注订单消息状态。<br>
				有任何疑问请与店家联系<br>
			</div>
			<div class="modal-footer">
				<!-- <a href="/bookEX/user/mycart/"> -->
				<button onclick="backToCart()" type="button" class="btn btn-default" data-dismiss="modal">确定
				</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
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