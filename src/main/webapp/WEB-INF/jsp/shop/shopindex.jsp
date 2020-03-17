<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>shop index</title>
<link rel="stylesheet" href="/common/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/common/fontawesome/css/font-awesome.min.css">
<script src="/common/jquery/jquery-3.2.0.js"></script>
<script src="/common/jquery/jquery.goup.min.js"></script>
<script src="/common/bootstrap/js/bootstrap.min.js"></script>
<script src="/common/add/js/BackTop.js"></script>
<script src="/js/shopindex/shopindex.js"></script>
<script src="/js/shopindex/categoryshopindex.js"></script>
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
			<center>
				<h2>${requestScope.shop.shopname}</h2>
				<input id="searchshopid" type="hidden"
					value="${requestScope.shop.shopid}"></input>
					</center>
			</div>
			<div class="col-md-6 column">
				<%-- <blockquote>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Integer posuere erat a ante.</p>
					<small>Someone famous <cite>Source Title</cite></small>
				</blockquote> --%>
				<center>
				<img  src="/img/shop/logo/${requestScope.shop.shoplogo}" width="100px" height="100px" style="-moz-border-radius: 15px;      
 	-webkit-border-radius: 15px;   
    border-radius:15px;">
				</center>
			</div>
		</div>
		<!-- 分割图片 + 引用块 -->
		<br>
		<br>
		<div class="row clearfix">
			<div class="col-md-2 column">
			<ul class="nav nav-tabs nav-stacked">
			<li><a onclick="dividepage(${requestScope.shop.shopid},1)"
			 style="text-decoration: none;cursor:pointer;">全部</a></li>
				<c:forEach var="category" items="${requestScope.category}"
					varStatus="i" begin="0">
					<li><a onclick="searchdividepage(1,'${category}')"
						style="text-decoration: none;cursor:pointer;">${category}</a></li>
				</c:forEach>
			</ul>
			</div>
			<div class="col-md-10 column">
				<input id="quantity" type="hidden" value="1" />
				<div class="row">
					<div id="display">
						<c:forEach var="book" items="${requestScope.books}" varStatus="i">
							<div class="col-md-3">
								<div class="thumbnail">
									<a
										href="/bookEX/shop/detail/?isbn=${book.isbn }&owner=${book.owner}&ownertype=${book.ownertype}"
										target="_blank" style="text-decoration: none;">
										<img alt="300x200" src="/img/book/${book.bookpic}" width="200px" height="200px" /></a>
									<div class="caption">
										<a
											href="/bookEX/shop/detail/?isbn=${book.isbn }&owner=${book.owner}&ownertype=${book.ownertype}"
											target="_blank" style="text-decoration: none;"><h3>${book.bookname}</h3></a>
										<p>${book.author}</p>
										<p>${book.press}</p>
										<p>￥：${book.bookprice}</p>
										<p>
											<c:if test="${!empty sessionScope.user.userid}">
												<a  class="btn"
												onclick="BuyItRightNow(${book.isbn },${book.owner},${book.nowcount})"
												 style="text-decoration: none;cursor:pointer;">直接购买</a>
												<a class="btn"
													onclick="add2Cart(${book.isbn },${book.owner},${book.nowcount})"
													style="text-decoration: none;cursor:pointer;">加入购物车</a>
											</c:if>
											<c:if test="${empty sessionScope.user.userid}">
												<a data-toggle="modal" data-target="#myModal1"
													style="text-decoration: none;cursor:pointer;">直接购买</a>&nbsp;&nbsp;&nbsp;
												<a data-toggle="modal" data-target="#myModal1"
													style="text-decoration: none;cursor:pointer;">加入购物车</a>
											</c:if>
										</p>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-4 column"></div>
			<div class="col-md-4 column"></div>
			<div class="col-md-4 column">
				<!-- 分页 -->
				<div id="pagedisplay">
				<ul class="pagination">
					<c:choose>
						<c:when test="${requestScope.pagemap.pagenow==1}">
							<li><a >&laquo;</a></li>
						</c:when>
						<c:otherwise>
							<li>
							<a onclick="dividepage(${requestScope.shop.shopid},${requestScope.pagemap.pagenow-1})" style="text-decoration: none;cursor:pointer;" >&laquo;</a></li>
						</c:otherwise>
					</c:choose>
					<c:forEach begin="1" end="${requestScope.pagemap.pagecount}"
						varStatus="i">
						<li>
						<a onclick="dividepage(${requestScope.shop.shopid},${i.index })" style="text-decoration: none;cursor:pointer;">${i.index }</a></li>
					</c:forEach>
					<c:choose>
						<c:when test="${requestScope.pagemap.pagenow==requestScope.pagemap.pagecount}">
							<li><a >&raquo;</a></li>
						</c:when>
						<c:otherwise>
							<li>
							<a onclick="dividepage(${requestScope.shop.shopid},${requestScope.pagemap.pagenow+1})" style="text-decoration: none;cursor:pointer;">&raquo;</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
				<!-- 分页 -->
				</div>
			</div>
		</div>
		<!-- 模态框（Modal） -->
		<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabel">温馨提示</h4>
					</div>
					<div class="modal-body">
						<p>亲~为了更好地购物体验，您需要先登录哦！</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
		<!-- 提示框 -->
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