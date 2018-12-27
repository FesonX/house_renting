<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="http://www.francescomalagrino.com/BootstrapPageGenerator/3/js/jquery-2.0.0.min.js"></script>
<script type="text/javascript" src="http://www.francescomalagrino.com/BootstrapPageGenerator/3/js/jquery-ui"></script>
<link href="http://www.francescomalagrino.com/BootstrapPageGenerator/3/css/bootstrap-combined.min.css" rel="stylesheet" media="screen">
<script type="text/javascript" src="http://www.francescomalagrino.com/BootstrapPageGenerator/3/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<h2 class="text-info">
				欢迎登录贝壳租房 | Login
			</h2>
			<form class="form-horizontal" action="adminLogin.do" method="post" id="" onsubmit="return check()">
				<div class="control-group">
					 <label class="control-label" for="inputEmail">手机</label>
					<div class="controls">
						<input id="inputEmail" name="name" placeholder="请输入手机" type="text" />
					</div>
				</div>
				<div class="control-group">
					 <label class="control-label" for="inputPassword" >密码</label>
					<div class="controls">
						<input id="inputPassword" type="password" name="password" placeholder="密码" />
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						 <label class="checkbox"><input type="checkbox" /> 记住我</label> <button type="submit" class="btn">登陆</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>