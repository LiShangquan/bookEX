<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>get book</title>
<link rel="stylesheet" href="/common/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/common/fontawesome/css/font-awesome.min.css">
<script src="/common/jquery/jquery-3.2.0.js"></script>
<script src="/common/jquery/jquery.goup.min.js"></script>
<script src="/common/bootstrap/js/bootstrap.min.js"></script>
<script src="/common/add/js/BackTop.js"></script>
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
			<table class="table">
			<th>以下是最近发布的淘书内容</th>
			<c:forEach var="msgs" items="${requestScope.msgs}" varStatus="i">
			<tr>
			<td>
			书名：${msgs.bookname}
			</td>
			<td>
			作者：${msgs.bookauthor}
			</td>
			<td>
			淘书用户：${msgs.username}
			</td>
			<td>
			备注：${msgs.msgcontent}
			</td>
			<td>
			发布时间：${msgs.createdtime}
			</td>
			</tr>
			</c:forEach>
			</table>
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