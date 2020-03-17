<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>hmsearchresult</title>
<link rel="stylesheet" href="/common/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/common/fontawesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="/common/add/css/indexshop.css">
<script src="/common/jquery/jquery-3.2.0.js"></script>
<script src="/common/jquery/jquery.goup.min.js"></script>
<script src="/common/bootstrap/js/bootstrap.min.js"></script>
<script src="/common/add/js/BackTop.js"></script>
<script src="/common/count/js/count.js"></script>
<script src="/js/search/search.js"></script>
</head>
<body style="padding-top: 30px;">
	<div class="container">
		<!-- 顶条 -->
		<div class="row clearfix">
			<div class="col-md-12 column">
				<%@ include file="../common/HomePageTop.jsp"%>
			</div>
		</div>
		<!-- 顶条 -->
		<!-- 页头 -->
		<div class="row clearfix">
			<div class="col-md-8 column">
				<div class="page-header">
					<h1>
						<!-- <div class="glyphicon glyphicon-home"></div> -->
						<a href="/bookEX/">Book E X</a> <small>Exchange for books</small>
					</h1>
				</div>
			</div>
			<div class="col-md-4 column">
				<div class="page-header">
					<!-- <form class="navbar-form navbar-left" role="search"> -->
					<div class="form-group">
						<table width="100%">
					<tr>
					<td>
						<input id="searchcondition" type="text" class="form-control" placeholder="搜索图书/店铺">
						</td>
						<td>
						 <button id="search" type="submit" class="btn btn-default">搜索</button>
						 </td>
					</tr>
					</table>
					</div>
					<!-- </form> -->
				</div>
			</div>
		</div>
		<!-- 页头 -->
		<div class="row clearfix">
			<div class="col-md-10 column">
			<div class="row">
			<c:if test="${!empty requestScope.shops}">
			<p>亲，为您找到如下店铺：</p>
			<table class="table">
					<c:forEach var="shop" items="${requestScope.shops}" varStatus="i"> 
						<c:if test="${i.count % 4 ==1}">
						<tr>
					</c:if>
							<td>
								<div class="box">
									<img src="/img/shop/logo/${shop.shoplogo}" width="130px" height="130px"></img>
									<div class="bmbox">
									<p style="color:black;font-size:15px;font-weight: bold;">${shop.shopname}</p>
										<a class="btn" href="/bookEX/shop/?shopid=${shop.shopid}&pagenow=0" style="color:black;font-size:15px;font-weight: bold;">点击进入 </a>
									</div>
								</div>
							</td>
						<c:if test="${i.count % 4 ==0}">
						</tr>
					    </c:if> 
					</c:forEach>
					</table>
			</c:if>
			<c:if test="${!empty requestScope.shops && !empty requestScope.books }">
			<!-- 分割图片 + 引用块 -->
		<div class="row clearfix">
			<div class="col-md-6 column">
				<img src="/img/index/2.png">
			</div>
			<div class="col-md-6 column">
				<blockquote>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Integer posuere erat a ante.</p>
					<small id="latestbook">Someone famous <cite>Source Title</cite></small>
				</blockquote>
			</div>
		</div>
		</c:if>
			<c:if test="${!empty requestScope.books}">
			<p>亲，为您找到如下图书：</p>
					<c:forEach var="book" items="${requestScope.books}" varStatus="i"> 
				<div class="col-md-3">
						<div class="thumbnail">
							<a href="/bookEX/shop/detail/?isbn=${book.isbn }&owner=${book.owner}&ownertype=${book.ownertype}" target="_blank"><img alt="300x200" src="/img/book/${book.bookpic}"/></a>
							<div class="caption">
								<a href="/bookEX/shop/detail/?isbn=${book.isbn }&owner=${book.owner}&ownertype=${book.ownertype}" target="_blank"><h3>${book.bookname}</h3></a>
								<p>${book.author}</p>
								<p>${book.press}</p>
								<p>￥：${book.bookprice}</p>
								<!-- <p>
									<a class="btn" href="#">直接购买</a>  
									<a class="btn" href="#">加入购物车</a>
								</p> -->
							</div>
						</div>
					</div>
					</c:forEach> 
			</c:if>
			<c:if test="${!empty requestScope.result}">
			${requestScope.result}<p>
			</c:if>
			</div>
			</div>
			<div class="col-md-2 column">
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-12 column">
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