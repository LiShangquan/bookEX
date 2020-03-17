<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link rel="stylesheet" href="/common/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/common/fontawesome/css/font-awesome.min.css">
<script src="/common/jquery/jquery-3.2.0.js"></script>
<script src="/common/jquery/jquery.goup.min.js"></script>
<script src="/common/bootstrap/js/bootstrap.min.js"></script>
<script src="/js/search/search.js"></script>
<script src="/js/logout/logout.js"></script>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<span class="navbar-text navbar-left">&nbsp;</span> <span
				class="navbar-text navbar-left">&nbsp;</span>
			<div class="navbar-header">
				<a href=""><span class="navbar-brand">育网·重师图书交易网</span></a>
			</div>
			<c:if test="${empty sessionScope.user}">
			<span class="navbar-text navbar-left">&nbsp;</span>
				<!--向左对齐-->
				<p class="navbar-text navbar-left">
				<a href="/bookEX/login/">登录</a>
				</p>
				<span class="navbar-text navbar-left"></span>
				<p class="navbar-text navbar-left">
			<a href="/bookEX/register/">快速注册</a>
			</p>
			<p class="navbar-text navbar-right">&nbsp;&nbsp;</p>
				<p class="navbar-text navbar-right">&nbsp;&nbsp;</p>
				<span class="navbar-text navbar-right">&nbsp;&nbsp;</span> <span
					class="navbar-text navbar-right">&nbsp;&nbsp;</span>
					<span id="logout" class="navbar-text navbar-right">计算机与信息科学学院</span>
			</c:if>
			<c:if test="${! empty sessionScope.user}">
			<span class="navbar-text navbar-left">&nbsp;</span>
				<!--向左对齐-->
				<p class="navbar-text navbar-left">
				欢迎~${sessionScope.user.username}
				</p>
				<p class="navbar-text navbar-left">
				<c:if test="${sessionScope.user.usertype !=1 && sessionScope.user.usertype !=0}">
				<a href="/bookEX/shopadmin/applyshop/" style="text-decoration:none;">店铺申请</a>
				</c:if>
				</p>
				<!--向右对齐-->
				<p class="navbar-text navbar-right">&nbsp;&nbsp;</p>
				<p class="navbar-text navbar-right">&nbsp;&nbsp;</p>
				<span class="navbar-text navbar-right">&nbsp;&nbsp;</span> <span
					class="navbar-text navbar-right">&nbsp;&nbsp;</span>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">
							<div class="icon-reorder"></div> 与我相关<b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a href="/bookEX/user/linktouserinfo/">个人信息</a></li>
							<c:if test="${sessionScope.user.usertype !=1 && sessionScope.user.usertype !=0}">
							<li><a href="/bookEX/user/linktouseraddbook/">我要上传</a></li>
							</c:if>
							<li><a href="/bookEX/user/linktofindbook/">我要淘书</a></li>
							<li><a href="/bookEX/user/myorder/">我的订单</a></li>
							<li><a href="/bookEX/user/mycart/"><div class="icon-shopping-cart"></div>我的购物车</a></li>
						</ul>
					</li>
				</ul>
				</c:if>
				<c:if test="${! empty sessionScope.user}">
				<span class="navbar-text navbar-right">&nbsp;</span> <span
					class="navbar-text navbar-right">&nbsp;</span> 
					<span id="logout" class="navbar-text navbar-right"><a id="logout" href="">注销</a></span>
					</c:if>
			</div>
	</nav>
	   <!-- 页头 -->
		<div class="row clearfix">
			<div class="col-md-6 column">
				<div class="page-header">
					<h1>
						<!-- <div class="glyphicon glyphicon-home"></div> -->
						<a href="/bookEX/" style="text-decoration:none;">Book E X</a> <small>Exchange for books</small>
					</h1>
				</div>
			</div>
			<div class="col-md-6 column">
				<div class="page-header">
					<!-- <form class="navbar-form navbar-left" role="search"> -->
					<div class="form-group">
					<table width="100%">
					<tr>
					<td align="center">
						<input id="searchcondition" type="text" class="form-control" placeholder="Search"></input>
					</td>
					<td align="center"><button id="search" class="btn btn-default"  type="submit" >搜本站</button></td>
					<td align="left"><button id="searchself" class="btn btn-default"  type="submit" >搜本店</button></td>
					</tr>
					</table>
					</div>
					<!--  </form> -->
				</div>
			</div>
		</div>
		<!-- 页头 -->
</body>
</html>