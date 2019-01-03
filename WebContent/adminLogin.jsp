<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>管理员登录</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<link href="css/header.css" rel="stylesheet">
<script src="http://cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>
</head>
<body>
<!------ Include the above in your HEAD tag ---------->
<div class = "container">
			<div class="wrapper">
				<form action="adminLogin.do" method="post" name="Login_Form" class="form-signin">       
				    <h3 class="form-signin-heading">欢迎登录贝壳租房🐚</h3>
					  <hr class="colorgraph"><br>
					  
					  <input type="text" class="form-control" name="name" placeholder="手机号码" required="" autofocus="" />
					  <input type="password" class="form-control" name="password" placeholder="密码" required=""/>     		  
					 
					  <button class="btn btn-lg btn-primary btn-block"  name="Submit" value="Login" type="Submit">Login</button>  			
				</form>			
			</div>
		</div>
</body>
</html>