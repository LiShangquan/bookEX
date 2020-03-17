<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
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
						Book E X <small>Exchange for books</small>
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
		<!-- 分类侧边栏 + 轮播-->
		<div class="row clearfix">
			<div class="col-md-2 column">
				<a href="/bookEX/linktoforweb/" class="list-group-item">
				<div class="glyphicon glyphicon-bullhorn"></div>&nbsp;建站目标</a> 
				<a href="#shoprecommand" class="list-group-item">
				<div class="icon-tags"></div>&nbsp;店铺推荐</a> 
				<!-- <a href="#bookrecommand" class="list-group-item">
					<div class="icon-book"></div>图书推荐 </a> 
					<a href="#" class="list-group-item">-->
					<!-- <div class="icon-edit"></div>考研专区 </a>  -->
					<a href="#latestbook" class="list-group-item">
					<div class="icon-time"></div>&nbsp;最近上架</a> 
					<a href="/bookEX/linktogetbook/" class="list-group-item">
					<div class="icon-search"></div>&nbsp;大家都在淘</a> 
					<a href="#personalgive" class="list-group-item">
					<div class="icon-user"></div>&nbsp;个人专区</a>
					<a href="/bookEX/linktodonate/" class="list-group-item">
					<div class="icon-heart"></div>&nbsp;爱心捐赠</a>
			</div>
			<div class="col-md-10 column">
				<div class="carousel slide" id="carousel-159387">
					<ol class="carousel-indicators">
						<li data-slide-to="0" data-target="#carousel-159387"></li>
						<li data-slide-to="1" data-target="#carousel-159387"></li>
						<li data-slide-to="2" data-target="#carousel-159387"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item">
							<img alt="" src="/img/index/1.jpg" width="100%" height="100%"/>
							<div class="carousel-caption">
								<h4>思绪·智慧·美丽</h4>
								<p>读书诱发了人的思绪，使想象超越时空；<br>
								读书丰富了人的思想，如接触博大智慧的老人；<br>
								读书拓展了人的精神世界，使人生更加美丽。</p>
							</div>
						</div>
						<div class="item active left">
							<img alt="" src="/img/index/3.jpg" width="100%" height="100%" />
							<div class="carousel-caption">
								<h4>书·人生·意外</h4>
								<p>翻开书，我们吮吸着知识的甘霖，醉人的书香萦绕身旁。<br>
									合上书，我们参悟美好的人生，可爱的意外总是不经意地出现。</p>
							</div>
						</div>
						<div class="item next left">
							<img alt="" src="/img/index/4.jpg" width="100%" height="100%" />
							<div class="carousel-caption">
								<h4>书·恬静·世界</h4>
								<p>拿上一本好书，找一个幽静的地方坐下。<br>
								我们不当哲学家，从一滴水中看世界，从一朵花中参悟人生，只当一个读书人，<br>
								在那种返璞归真，妙不可言的时候，给自己多一些遐想，给自己多一些恬静的快乐。</p>
							</div>
						</div>
					</div>
					<a class="left carousel-control" href="#carousel-159387"
						data-slide="prev"><span
						class="glyphicon glyphicon-chevron-left"></span></a> <a
						class="right carousel-control" href="#carousel-159387"
						data-slide="next"><span
						class="glyphicon glyphicon-chevron-right"></span></a>
				</div>
			</div>
		</div>
		<!-- 分类侧边栏 + 轮播-->
		<!-- 分割图片 + 引用块 -->
		<div class="row clearfix">
		<br>
			<div class="col-md-12 column">
			<center>
				<img id="shoprecommand" src="/img/fg/timg2.gif">
				</center>
			</div>
		</div>
		<!-- 分割图片 + 引用块 -->
		<!-- 店家推荐 -->
		<div class="row clearfix">
			<div class="col-md-2 column">
				<h3>
					<a data-toggle="modal" data-target="#myModal1" style="text-decoration:none;cursor:pointer;">店铺推荐</a>
					<div class="icon-circle-arrow-right"></div>
				</h3>
		<!-- 模态框（Modal） -->
		<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
						</button>
				<h4 class="modal-title" id="myModalLabel">
					店铺推荐
				</h4>
			</div>
			<div class="modal-body">
				<h3>为您推荐最好的图书店铺</h3>
				<p>在这儿我们为您精心挑选了最好的图书店铺
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">关闭
				</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
			</div>
			<div class="col-md-10 column"></div>
		</div>
		<div class="row clearfix">
			<div class="col-md-6 column">
			<img src="/img/tj/t4.jpg" width="500px" height="400px">
			</div>
			<div class="col-md-6 column">
				<div class="row">
					<table class="table">
					<c:forEach var="shop" items="${requestScope.shop}" varStatus="i"> 
					<c:if test="${i.count % 4 ==1}">
					<tr>
					</c:if>
							<td>
								<div class="box">
									<img src="/img/shop/logo/${shop.shoplogo}" width="130px" height="130px"></img>
									<div class="bmbox">
									<p style="color:black;font-size:15px;font-weight: bold;">${shop.shopname}</p>
										<a class="btn" href="/bookEX/shop/?shopid=${shop.shopid}&pagenow=1" style="color:black;font-size:15px;font-weight: bold;text-decoration:none;">点击进入 </a>
									
									</div>
								</div>
							</td>
						<c:if test="${i.count % 4 ==0}">
					      </tr>
					    </c:if> 
					</c:forEach>  
					</table>
				</div>
			</div>
		</div>
		<!-- 店家推荐 ----结束 -->
		<!-- 分割图片 + 引用块 -->
		<div class="row clearfix">
			<div class="col-md-12 column">
			<center>
				<img id="latestbook" src="/img/fg/timg4.jpg" width="100%" height="100px">
				</center>
			</div>
		</div>
		<!-- 最近上架 -->
		<div class="row clearfix">
			<div class="col-md-10 column"></div>
			<div class="col-md-2 column">
				<h3 align="right">
					<div class="icon-circle-arrow-left"></div>
					<a data-toggle="modal" data-target="#myModal2" style="text-decoration:none;cursor:pointer;">最近上架</a>
				</h3>
				<!-- 模态框（Modal） -->
		<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
						</button>
				<h4 class="modal-title" id="myModalLabel">
					最近上架
				</h4>
			</div>
			<div class="modal-body">
				<h3>最近上架的图书</h3>
				<p>在这儿是用户或者店铺最近提供的图书
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">关闭
				</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-10 column">
				<div class="row">
				<c:forEach var="book" items="${requestScope.latestbooks}" varStatus="i"> 
				<div class="col-md-3">
						<div class="thumbnail">
							<a href="/bookEX/shop/detail/?isbn=${book.isbn}&owner=${book.owner}&ownertype=${book.ownertype}" target="_blank" style="text-decoration:none;"><img alt="300x200" src="/img/book/${book.bookpic}"/></a>
							<div class="caption">
								<a href="/bookEX/shop/detail/?isbn=${book.isbn}&owner=${book.owner}&ownertype=${book.ownertype}" target="_blank" style="text-decoration:none;"><h3>${book.bookname}</h3></a>
								<p>${book.author}</p>
								<!-- <p>
									<a class="btn" href="#">直接购买</a>  
									<a class="btn" href="#">加入购物车</a>
								</p> -->
							</div>
						</div>
					</div>
					</c:forEach>  
				</div>
				</div>
			<div class="col-md-2 column"></div>
		</div>
		<!-- 最近上架 -->
		<!-- 分割图片 + 引用块 -->
		<div class="row clearfix">
			<div class="col-md-12 column">
			<center>
				<img id="personalgive" src="/img/fg/timg4.jpg" width="100%" height="100px">
				</center>
			</div>
		</div>
		<!-- 个人奉献 -->
		<div class="row clearfix">
			<div class="col-md-2 column">
				<h3>
					<a data-toggle="modal" data-target="#myModal4" style="text-decoration:none;cursor:pointer;">个人专区</a>
					<div class="icon-circle-arrow-right"></div>
				</h3>
				<!-- 模态框（Modal） -->
		<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
						</button>
				<h4 class="modal-title" id="myModalLabel">
					个人专区
				</h4>
			</div>
			<div class="modal-body">
				<h3>个人提供的图书</h3>
				<p>在这儿是个人用户（非店家）提供的图书
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" 
						data-dismiss="modal">关闭
				</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
			</div>
			<div class="col-md-10 column">
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-2 column"></div>
			<div class="col-md-10 column">
				<div class="row">
				<c:forEach var="book" items="${requestScope.pbooks}" varStatus="i"> 
				<div class="col-md-3">
						<div class="thumbnail"><!-- style="text-decoration:none;" -->
							<a href="/bookEX/shop/detail/?isbn=${book.isbn}&owner=${book.owner}&ownertype=${book.ownertype}" target="_blank" ><img alt="300x200" src="/img/book/${book.bookpic}" /> </a>
							<div class="caption">
								<a href="/bookEX/shop/detail/?isbn=${book.isbn}&owner=${book.owner}&ownertype=${book.ownertype}" target="_blank" ><h3>${book.bookname}</h3></a>
								<p>${book.author}</p>
								<p>
<!-- 									<a class="btn" href="#">直接购买</a>  
									<a class="btn" href="#">加入购物车</a> -->
								</p>
							</div>
						</div>
					</div>
					</c:forEach>  
				</div>
			</div>
		</div>
		<!-- 个人奉献 ----结束 -->
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