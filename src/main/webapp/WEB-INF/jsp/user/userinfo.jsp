<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>user_info</title>
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
<script src="/js/user/changeuserinfo.js"></script>
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
						 <a href="#panel-138720" data-toggle="tab">个人信息</a>
					</li>
					<li>
						 <a href="#panel-72883" data-toggle="tab">修改个人信息</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-138720">
					<br>
					<div class="row clearfix">
						<div class="col-md-6 column">
						<table class="table">
						<tr>
						<td>
						用户名：${sessionScope.user.username}
						</td>
						<td>
						</td>
						</tr>
						<tr>
						<td>
						电话：${sessionScope.user.telephone}
						</td>
						<td>
						</td>
						</tr>
						<tr>
						<td>
						地址：${sessionScope.user.address}
						</td>
						<td>
						</td>
						</tr>
						<tr>
						<td>
						创建时间：${sessionScope.user.createdtime}
						</td>
						<td>
						</td>
						</tr>
						<tr>
						<td>
						修改时间：${sessionScope.user.updatedtime}
						</td>
						<td>
						</td>
						</tr>
						</table>
						</div>
						<div class="col-md-6 column">
						</div>
					</div>
					</div>
					<div class="tab-pane" id="panel-72883">
					<br>
					<div class="row clearfix">
					<div class="col-md-4 column">
			</div>
			<div class="col-md-4 column">
				<form class="bs-example bs-example-form" role="form">
		<div class="input-group">
			<span class="input-group-addon">用户名</span>
			<input id="username" type="text" class="form-control" value="${sessionScope.user.username}" readonly="readonly" >
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">电话</span>
			<input id="tel"  type="text" class="form-control" value="${sessionScope.user.telephone}">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">地址</span>
			<input id="address"  type="text" class="form-control" value="${sessionScope.user.address}">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">原密码</span>
			<input id="pwd"  type="password" class="form-control" placeholder="请输入原始密码" >
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">新密码</span>
			<input id="pwd1"  type="password" class="form-control" placeholder="请输入新密码">
		</div>
		<br>
		<div class="input-group">
			<span class="input-group-addon">确认新密码</span>
			<input id="pwd2"  type="password" class="form-control" placeholder="请确认新密码">
		</div>
		<br>
		<button id="submit" onclick="changeUserInfo(${sessionScope.user.pwd})" type="submit" style="width:100%;" type="button" class="btn btn-primary" > 
						保存修改
						</button>
		<br>
		<br>
		</form>
		</div>
			<div class="col-md-4 column">
			</div>
		</div>
		
		
	<!-- 提示框 -->
		<a id="changeuserinfo" data-toggle="modal" data-target="#myModal1" style="text-decoration: none;cursor:pointer;"></a>
	<!-- 模态框（Modal） -->
		<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">×
						</button>
				<h4 class="modal-title" id="myModalLabel">
					用户信息修改提示
				</h4>
			</div>
			<div class="modal-body">
				
				<p>用户信息修改成功请重新登录。
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