<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>shop manage add book</title>
<link rel="stylesheet" href="/common/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/common/fontawesome/css/font-awesome.min.css">
<script src="/common/jquery/jquery-3.2.0.js"></script>
<script src="/common/jquery/jquery.goup.min.js"></script>
<script src="/common/bootstrap/js/bootstrap.min.js"></script>
<script src="/common/add/js/BackTop.js"></script>
<script src="/js/shopindex/shopindex.js"></script>
<script src="/js/category/addcategory.js"></script>
</head>
<body style="padding-top: 30px;">
<div class="container">
		<!-- 页头-->
		<div class="row clearfix">
			<div class="col-md-12 column">
				<%@ include file="../common/admintop.jsp"%>
			</div>
		</div>
		<!-- 页头 -->
		<!--内容显示区域  -->
		<div id="display">
		<div class="row clearfix">
		<div class="col-md-4 column">
		</div>
		<div class="col-md-4 column">
		<br>
		<th>已有分类:</th>
		<br>
		<br>
		<table class="table">
		<c:forEach var="category" items="${requestScope.category}" varStatus="i">
		<tr>
		<td>
		${category.description}
		</td>   
		</tr>
		</c:forEach>
		</table>
		</div>
		 <div class="col-md-4 column">
		 <br>
		 <th>添加分类：</th>
		 <br>
		 <br>
		<div class="input-group">
			<span class="input-group-addon">分类</span>
			<input id="class" type="text" class="form-control" placeholder="请输入类别">
		</div>
		<br>
		<center>
		<button id="addclassbtn" style="width:50%" type="button" class="btn btn-primary"> 
		添加
		</button>
		</center>
		</div>
		</div>
		<!-- 分割线 -->
		<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="80%" color=black SIZE=3>
		<!-- 分割线 -->
		</div>
		<!--内容显示区域  -->
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