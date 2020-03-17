<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
<link rel="stylesheet" href="/common/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/common/fontawesome/css/font-awesome.min.css">
<script src="/common/jquery/jquery-3.2.0.js"></script>
<script src="/common/jquery/jquery.goup.min.js"></script>
<script src="/common/bootstrap/js/bootstrap.min.js"></script>
 <script src="/common/add/js/BackTop.js"></script>
 <script src="/js/login/login.js"></script>
</head>
<body>
	<div class="container">
		<!-- 页头-->
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="page-header">
					<h1>
						<!-- <div class="glyphicon glyphicon-home"></div> -->
						<a href="/bookEX/" style="text-decoration:none;">Book E X</a> <small>Exchange for books</small>
					</h1>
				</div>
			</div>
			</div>
		<!-- 页头 -->
		<div class="row clearfix" style="background-image:url(/img/user/t2.jpg);no-repeat;">
			<div class="col-md-6 column">
			</div>
			<div class="col-md-4 column" style="padding-top:5%;padding-bottom:5%">
			<div style="display:block;background-color:gainsboro;width:100%;height:100%;"> 
			<center>
			<div style="width:80%;height:80%;padding-top:10%;padding-bottom:10%">
			<form id="loginform" class="bs-example bs-example-form" role="form">
		<div class="input-group">
			<span class="input-group-addon"><div class="icon-user"></div></span>
			<input id="username" type="text" class="form-control" placeholder="学号/邮箱/用户名~">
		</div>
		<br>
		<br>
		<div class="input-group">
			<span class="input-group-addon"><div class="icon-lock"></div></span>
			<input id="pwd" type="password"class="form-control" placeholder="密码/初始密码为学号~">
		</div>
		<br>
		<div style="padding-left:0;">
		没有账号？去<a href="/bookEX/register/">注册</a>&nbsp;&nbsp;&nbsp;<a  href="">忘记密码</a>
		</div>
		<br>
		<br>

						<button id="loginbtn" style="width:100%" type="button" class="btn btn-primary"  data-toggle="button"> 
						登录
						</button>

	   </form>
	   </div>
	   </center>
			</div>
		</div>
		<div class="col-md-2 column">
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