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
<script src="/js/user/dealfindbook.js"></script>
<script src="/js/user/findbook.js"></script>
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
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="tabbable" id="tabs-132681">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#panel-746656" data-toggle="tab">已发布</a></li>
						<li><a href="#panel-594121" data-toggle="tab">找书</a>
						</li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane  active" id="panel-746656">
						<br>
							<div class="row clearfix">
							<div class="col-md-2 column">
							</div>
								<div class="col-md-8 column">
							<c:if test="${! empty requestScope.msgs}">
							<table class="table">
							<c:forEach var="msgs" items="${requestScope.msgs}" varStatus="i">
							<tr>
							<td>
							<table class="table">
							<tr>
							<td>
							书名：${msgs.bookname}
							</td>
							<td>
							发布时间：${msgs.createdtime}
							</td>
							</tr>
							<tr>
							<td>
							作者：${msgs.bookauthor}
							</td>
							<td>
							<c:if test="${msgs.msgstatus==0}">
							<a onclick="dealFindBook(${msgs.msgid})" style="text-decoration: none;cursor:pointer;" >标记为已处理</a>
							</c:if>
							<c:if test="${msgs.msgstatus==1}">
							已处理
							</c:if>
							</td>
							</tr>
							<tr>
							<td>
							备注：${msgs.msgcontent}
							</td>
							<td>
							</td>
							</tr>
							</table>
							</td>
							</tr>
							</c:forEach>
							</table>
							</c:if>
							<c:if test="${empty requestScope.msgs}">
							你还没有贴出相关信息哦！
							</c:if>
							</div>
							
							<div class="col-md-2 column">
							</div>
							</div>
						</div>
						<div class="tab-pane" id="panel-594121">
							<div class="row clearfix">
								<div class="col-md-6 column"></div>
								<div class="col-md-4 column">
								<br>
									<form class="bs-example bs-example-form" role="form">
										<div class="input-group">
											<span class="input-group-addon">*图书名字</span> <input
												type="text" id="bookname" name="bookname" class="form-control" placeholder="请输入图书名字">
										</div>
										<br>
										<div class="input-group">
											<span class="input-group-addon">作者</span> <input id="bookauthor" type="text"
											name="bookauthor"	class="form-control" placeholder="请输入图书作者">
										</div>
										<br>
										<div class="input-group">
											<span class="input-group-addon">备注</span> <input type="text"
											name="remark" id="remark"	class="form-control" placeholder="请输入备注/包括你的联系方式">
										</div>
										<br>
										<button id="findbook" style="width: 100%" type="button"
											class="btn btn-primary" >发布</button>
										<br> <br>
									</form>
								</div>
								<div class="col-md-2 column"></div>
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