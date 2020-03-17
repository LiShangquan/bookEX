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
<script src="/js/logout/adminlogout.js"></script>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<span class="navbar-text navbar-left">&nbsp;</span> <span
				class="navbar-text navbar-left">&nbsp;</span>
			<div class="navbar-header">
				<a href=""><span class="navbar-brand">育网·重师图书交易网网站管理</span></a>
			</div>
			
			<span class="navbar-text navbar-left">&nbsp;</span>
				<!--向左对齐-->
				<p class="navbar-text navbar-left">
				欢迎~${sessionScope.admin.username}
				</p>
				<!--向右对齐-->
				<p class="navbar-text navbar-right">&nbsp;&nbsp;</p>
				<p class="navbar-text navbar-right">&nbsp;&nbsp;</p>
				<span class="navbar-text navbar-right">&nbsp;&nbsp;</span> <span
					class="navbar-text navbar-right">&nbsp;&nbsp;</span>
				<span class="navbar-text navbar-right">&nbsp;</span> <span
					class="navbar-text navbar-right">&nbsp;</span> 
					<span id="adminlogout" class="navbar-text navbar-right"><a id="adminlogout" href="">注销</a></span>
			</div>
	</nav>
		<div class="row clearfix">
			<div class="col-md-6 column">
				<div class="page-header">
					<h1>
						 <!-- <div class="glyphicon glyphicon-home"></div> -->
						 <!-- <a href="/bookEX/" style="text-decoration:none;"> -->Book E X<!-- </a> --> <small>Exchange for books</small>
					</h1>
				</div>
			</div>
			<div class="col-md-6 column">
			</div>
		</div>
		<!-- 导航条 -->
		<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">Brand</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<!-- <li>
							 <a href="#">首页管理</a>
						</li> -->
						
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">首页管理<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="#">新增首页样式</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="#">修改首页样式</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="#">选择首页样式</a>
								</li>
								
							</ul>
						</li>
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">店铺管理<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="#">店铺订单</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="#">店铺交易记录</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="#">店铺图书</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="#">店铺信息</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="#">店铺管理员</a>
								</li>
							</ul>
						</li>
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">用户管理<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="#">用户信息查询</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="#">用户订单</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="#">用户交易记录</a>
								</li>
							</ul>
						</li>
					</ul>
					<form class="navbar-form navbar-right" role="search">
						
						<table>
						<tr>
						<td align="left">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="search" />
						</div>
						</td> 
						<td align="right">
						<button type="submit" class="btn btn-default">搜店铺</button>
						</td>
						<td align="right">
						<button type="submit" class="btn btn-default">搜订单</button>
						</td>
						<td align="right">
						<button type="submit" class="btn btn-default">搜交易记录</button>
						</td>
						<td align="right">
						<button type="submit" class="btn btn-default">搜用户</button>
						</td>
						<td align="right">
						<button type="submit" class="btn btn-default">搜图书</button>
						</td>
						</tr>
						</table>
					</form>
				</div>
				</nav>	
		</div>
	<!-- 导航条 -->
	</div>
</body>
</html>