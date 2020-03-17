<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>give book</title>
<link rel="stylesheet" href="/common/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/common/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="/common/fileupload/css/fileinput.min.css">
<script src="/common/jquery/jquery-3.2.0.js"></script>
<script src="/common/jquery/jquery.goup.min.js"></script>
<script src="/common/bootstrap/js/bootstrap.min.js"></script>
 <script src="/common/fileupload/js/fileinput.min.js"></script><!-- 文件上传 -->
 <script src="/common/fileupload/js/initialfileupload.js"></script><!-- 文件上传 -->
<script src="/common/add/js/BackTop.js"></script>
<script src="/js/user/updategivebook.js"></script>
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
			<div class="tabbable" id="tabs-489443">
				<ul class="nav nav-tabs">
					<li class="active">
						 <a href="#panel-138720" data-toggle="tab">已上传图书</a>
					</li>
					<li>
						 <a href="#panel-72883" data-toggle="tab">上传图书</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-138720">
					<br>
						<table class="table">
				<th>你的图书奉献记录如下：</th>
				<c:forEach var="book" items="${requestScope.books}" varStatus="i"> 
				<tr>
				<td>
				<table class="table">
				<tr>
				<td rowspan="3">
				<img src="/img/book/${book.bookpic}" width="100" height="100">
				</td>
				<td>
				图书名称：${book.bookname}
				</td>
				<td>
				原价：${book.bookprice}
				</td>
				</tr>
				<tr>
				<td>
				图书作者：${book.author}
				</td>
				<td>	 
				现价：${book.pricenow}
				</td>
				</tr>
				<tr>
				<td>
				出版社：${book.press}
				</td>
				<td>
				数量：${book.nowcount}
				</td>
				</tr>
				<tr>
				<td>
				</td>
				<td>
				摘要：${book.summary}
				</td>
				<td>
				<c:if test="${book.deleted==1}">
				已处理
				</c:if>
				<c:if test="${book.deleted==0}">
				<a class="btn" onclick="updateGiveBook(${book.isbn})" style="text-decoration:none;">标记为已处理</a>  
				</c:if>
				</td>
				</tr>
				</table>
				</td>
				</tr>
				</c:forEach>
				<!-- <tr>
				<td align="right">
				<input type="button" class="btn btn-default" value="全部提交" onclick="addAllToOrder()" style="font-size:15px;">
				</td>
				</tr> -->
				</table>
					</div>
					<div class="tab-pane" id="panel-72883">
					<br>
						<div class="row clearfix">
			<div class="col-md-4 column">
		</div>
		<div class="col-md-4 column">
		<form class="bs-example bs-example-form" role="form" action="/bookEX/user/useraddbook/" method="post" enctype="multipart/form-data">
		<div class="input-group">
			<span class="input-group-addon">书名</span>
			<input name="bookname" type="text" class="form-control" placeholder="图书名字">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">作者</span>
			<input name="author" type="text" class="form-control" placeholder="图书作者">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">出版社</span>
			<input name="press" type="text" class="form-control" placeholder="图书出版社">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">数量</span>
			<input name="bookcount" type="text" class="form-control" placeholder="请输入图书数量">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">原价</span>
			<input name="bookprice" type="text" class="form-control" placeholder="请输入图书原价">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">现价</span>
			<input name="pricenow" type="text" class="form-control" placeholder="请输入图书现价">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">破损程度</span>
			<select name="wornlevel" class="form-control"> 
			<option>请选择...</option>
			 <c:forEach var="wornlevel" items="${requestScope.wornlevel}" varStatus="i" begin="0">
			<option value="${wornlevel.cid}">${wornlevel.description}</option>		
			</c:forEach>
			</select>
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">联系电话</span>
			<input name="summary" type="text" class="form-control" placeholder="请输入你的联系电话">
		</div>
		<br>
		<div class="input-group"> 
			 <span class="input-group-addon">图片</span> 
			<input name="file" id="input-id" type="file" class="file" data-preview-file-type="text" >
		</div>
		<br>
		<button type="submit" style="width:100%;" type="button" class="btn btn-primary" > 
						上传
						</button>
		<br>
		<br>
		</form>
		</div>
		<div class="col-md-4 column">
		</div>
		</div>
					</div>
				</div>
			</div>
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