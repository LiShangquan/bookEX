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
<link rel="stylesheet" href="/common/fileupload/css/fileinput.min.css">
<script src="/common/jquery/jquery-3.2.0.js"></script>
<script src="/common/jquery/jquery.goup.min.js"></script>
<script src="/common/bootstrap/js/bootstrap.min.js"></script>
<script src="/js/search/search.js"></script>
<script src="/js/logout/adminlogout.js"></script>
 <script src="/common/fileupload/js/fileinput.min.js"></script><!-- 文件上传 -->
 <script src="/common/fileupload/js/initialfileupload.js"></script><!-- 文件上传 -->
<!-- <script src="/js/admin/addbook.js"></script>增加图书 -->
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<span class="navbar-text navbar-left">&nbsp;</span> <span
				class="navbar-text navbar-left">&nbsp;</span>
			<div class="navbar-header">
				<a href=""><span class="navbar-brand">育网·重师图书交易网店铺管理</span></a>
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
					<c:if test="${!empty sessionScope.admin}">
					<span id="adminlogout" class="navbar-text navbar-right"><a id="adminlogout" href="">注销</a></span>
					</c:if>
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
			<div class="page-header">
					<h1>
					${sessionScope.shopadmin.shopname}&nbsp; <%-- <img src="/img/shop/logo/${sessionScope.shop.shoplogo}" width="50px" height="50px"> --%> 
					</h1>
				</div>
			</div>
		</div>
		<c:if test="${!empty sessionScope.admin}">
		<!-- 导航条 -->
		<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span>
					 <span class="icon-bar"></span>
					 <span class="icon-bar"></span>
					 <span class="icon-bar"></span>
					 </button> 
					 <a class="navbar-brand" href="/bookEX/shopadmin/shopadminsuccess/">首页</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">店铺管理<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
								 <a href="/bookEX/shopadmin/linktoshopcategory/" id="" style="text-decoration: none;cursor:pointer;">类别管理</a>
								</li>
								<li class="divider">
								</li>
								<li> 
									 <a href="/bookEX/shopadmin/linktoshopchangelogo/"  style="text-decoration: none;cursor:pointer;">店铺LOGO</a>
								</li>
								<li class="divider">
								</li>
								<!-- <li> 
									 <a style="text-decoration: none;cursor:pointer;">店铺其他信息</a>
								</li> -->
							</ul>
						</li>
						
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">图书管理<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
								 <a href="/bookEX/shopadmin/linktoaddbook/" id="addbook" style="text-decoration: none;cursor:pointer;">增加图书</a>
								</li>
								<li class="divider">
								</li>
								<li> 
									 <a href="/bookEX/shopadmin/linktoshopbookinfo/" style="text-decoration: none;cursor:pointer;">本店图书</a>
								</li>
								<li class="divider">
								</li>
								<li> 
									 <a href="/bookEX/shopadmin/linktoshopoutbookinfo/" style="text-decoration: none;cursor:pointer;">已售罄图书</a>
								</li>
							</ul>
						</li>
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">订单管理<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="/bookEX/shopadmin/linktoshoporder/" style="text-decoration: none;cursor:pointer;">未处理订单</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="/bookEX/shopadmin/linktoshopdealedorder/" style="text-decoration: none;cursor:pointer;">已处理订单</a>
								</li>
							</ul>
						</li>
					</ul>
					<form class="navbar-form navbar-right" action="/bookEX/shopadmin/searchselfbook/" method="POST" role="search">
						
						<table>
						<tr>
						<td align="left">
						<div class="form-group">
							<input type="text" name="searchcontext" class="form-control" placeholder="search" />
						</div>
						</td> 
						<!-- <td align="right">
						<button type="submit" class="btn btn-default">搜订单</button>
						</td> -->
						<td align="right">
						<button type="submit" class="btn btn-default">搜索本店图书</button>
						</td>
						</tr>
						</table>
					</form>
				</div>
				</nav>	
		</div>
	<!-- 导航条 -->
	</div>
	</c:if>
	<c:if test="${empty sessionScope.admin}">
	<div class="row clearfix">
			<div class="col-md-4 column">
			</div>
			<div class="col-md-4 column">
			亲~请先登录哦！
			</div>
			<div class="col-md-4 column">
			</div>
		</div>
	</c:if>
</body>
</html>