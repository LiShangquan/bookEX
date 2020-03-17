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
			<c:if test="${requestScope.book.ownertype==0}">
				<%@ include file="../common/CommonTop.jsp"%>
				</c:if>
				<c:if test="${requestScope.book.ownertype==1}">
				<%@ include file="../common/usertop.jsp"%>
				</c:if>
			</div>
		</div>
		<!-- 页头 -->
		<!-- 分割图片 + 引用块 -->
		<div class="row clearfix">
			<div class="col-md-6 column">
			<c:if test="${requestScope.book.ownertype==0}">
				<center><a href="/bookEX/shop/?shopid=${requestScope.book.owner}&pagenow=0"><img
				style="-moz-border-radius: 15px;-webkit-border-radius: 15px;border-radius:15px;"
				 width="100px" height="100px" src="/img/shop/logo/${sessionScope.shop.shoplogo}"
					class="responsive"></a></center>
					<input id="searchshopid" type="hidden" value="${requestScope.book.owner}">
			</c:if>
			<c:if test="${requestScope.book.ownertype==1}">
			<!-- <img src="/img/fg/fgf.jpg" width="100px" height="50px" class="responsive"> -->
			<br>
			</c:if>
			</div>
			<div class="col-md-6 column">
			</div>
		</div>
		<br>
		<br>
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
					<c:if test="${requestScope.book.ownertype==0}">
						<table class="table">
							<tr>
							<td>图书名</td>
								<td>${requestScope.book.bookname}</td>
							</tr>
							<tr>
								<td>商品编号</td>
								<td>${requestScope.book.isbn}</td>
							</tr>
							<tr>
								<td>新书价格</td>
								<td>￥${requestScope.book.bookprice}</td>
							</tr>
							<tr>
								<td>当前价格</td>
								<td>￥${requestScope.book.pricenow}</td>
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
								<td>库存</td>
								<td>${requestScope.book.nowcount}</td>
								<input id="nowcount" type="hidden" value="${requestScope.book.nowcount}"></input>
							</tr>
							<tr>
								<td>购买数量</td>
								<td>
								<input id="min" name="" type="button" value="-" /> 
								<input id="quantity" name="" type="text" value="1"  style="width:30px;"/> 
								<input id="add" name="" type="button" value="+" />
								</td>
							</tr>
							<tr>
								
								
								<c:if test="${!empty sessionScope.user.userid}">
									<td><a class="btn" onclick="BuyItRightNow(${book.isbn },${book.owner},${book.nowcount})" style="text-decoration:none;cursor:pointer;">直接购买</a></td>
									<td><a class="btn" onclick="add2Cart(${book.isbn },${book.owner},${book.nowcount})" style="text-decoration:none;cursor:pointer;">加入购物车</a></td>
								</c:if>
								<c:if test="${empty sessionScope.user.userid}">
									<td><a data-toggle="modal" data-target="#myModal1" style="text-decoration:none;cursor:pointer;">直接购买</a></td> 
									<td><a data-toggle="modal" data-target="#myModal1" style="text-decoration:none;cursor:pointer;">加入购物车</a></td>
									<!-- 模态框（Modal） -->
		<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
						</button>
				<h4 class="modal-title" id="myModalLabel">
					温馨提示
				</h4>
			</div>
			<div class="modal-body">			
				<p>亲~为了更好地购物体验，您需要先登录哦！</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">关闭
				</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		</c:if>
							</tr>
						</table>
						</c:if>
						<c:if test="${requestScope.book.ownertype==1}">
						<table class="table">
							<tr>
							<td>图书名</td>
								<td>${requestScope.book.bookname}</td>
							</tr>
							<%-- <tr>
								<td>商品编号</td>
								<td>${requestScope.book.isbn}</td>
							</tr> --%>
							<tr>
								<td>新书价格</td>
								<td>￥${requestScope.book.bookprice}</td>
							</tr>
							<tr>
								<td>当前价格</td>
								<td>￥${requestScope.book.pricenow}</td>
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
								<td>${requestScope.book.summary}</td>
							</tr>
							<tr>
							<td>
							微信联系
							</td>
							<td>
							<img src="/img/user/23.png" width="100px" height="100px">
							</td>
							</tr>
						</table>
						</c:if>
					</div>
					<div class="col-md-4 column"></div>
				</div>
			</div>
		</div>
		<br> <br> <br>
		<!-- <div class="row clearfix">
			<div class="col-md-4 column"></div>
			<div class="col-md-4 column">商品详情</div>
			<div class="col-md-4 column"></div>
		</div> -->
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