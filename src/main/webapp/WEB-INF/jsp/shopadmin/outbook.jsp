<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>shop manage shop outbookinfo</title>
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
				<%@ include file="../common/admintop.jsp"%>
			</div>
		</div>
		<!--内容显示区域  -->
		<div id="display">
		<div class="row clearfix">
		<div class="col-md-12 column">
		<span>本店已售罄图书如下：</span>
			<table class="table">
				<thead>
					<tr>
						<th>
							编号
						</th>
						<th>
							图书名
						</th>
						<th>
							作者
						</th>
						<th>
							出版社
						</th>
						<th>
							初始数量
						</th>
						<th>
							现在数量
						</th>
						<th>
							原价
						</th>
						<th>
							当前价格
						</th>
						<th>
							摘要
						</th>
						<th>
							操作
						</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="book" items="${requestScope.books}" varStatus="i">
					<c:if test="${i.index%2==0}">			
					<tr class="success">
					</c:if>
					<c:if test="${i.index%2!=0}">
					<tr class="warning">
					</c:if>
					<td>
							${book.isbn}
						</td>
						<td>
							${book.bookname}
						</td>
						<td>
							${book.author}
						</td>
						<td>
							${book.press}
						</td>
						<td>
							${book.bookcount}
						</td>
						<td>
							${book.nowcount}
						</td>
						<td>
							${book.bookprice}
						</td>
						<td>
							${book.pricenow}
						</td>
						<td>
							${book.summary}
						</td>
						<td>
						<a href="/bookEX/shopadmin/bookdetail/?isbn=${book.isbn}">详情</a>&nbsp;<a href="/bookEX/shopadmin/changebookdetail/?isbn=${book.isbn}">修改</a>
						</td>
						</tr>
				
					</c:forEach>
				</tbody>
			</table>
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