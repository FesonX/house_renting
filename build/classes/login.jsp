<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" href="css/login.css" />
		<script type="text/javascript" src="js/login.js" ></script>
	</head>
<body>
		<div class="loginLayout">
			<div class="login_top">
				<a href="#"><div class="login_top_left"></div></a><div class="login_top_right">&nbsp;欢迎登陆</div>
			</div>
			<div class="login_center">
				<div class="login_center_center">
					<form action="Login.do" method="post" onsubmit="return check()">
						<div class="l_c_c_01">用户登录</div>
						<div class="l_c_c_00" id="tip"></div>
						<div class="l_c_c_02">
							<div class="l_c_c022">
								<input class="login_input" type="text" placeholder="请输入手机号" id="phone" name="phone" onfocus="showTip()" onblur="checkPhone()" onkeyup="checkPhoneNum()"/>
								<hr color="#DCDCDC" width="300px">
							</div>
						</div>
						<div class="l_c_c_02">
							<div class="l_c_c022">
								<input class="login_input" type="password" placeholder="请输入密码" id="password" name="password" onfocus="showTip()" onkeyup="checkPwd()"/>
								<hr color="#DCDCDC" width="300px">
							</div>
						</div>
						<div class="l_c_c_02">
							<div class="l_c_c022">
							<div style="float: left; width: 150px;"><input class="login_input2" type="text" placeholder="请输入验证码" id="checkNum" onfocus="showTip()" name="checkNum"/></div>
							<div style="float: left; width: 150px;"><input type = "button" id="code" onclick="createCode()"/></div>
							
								<hr color="#DCDCDC" width="300px">
							</div>
						</div>
						<div class="l_c_c_03">
							<div class="l_c_c022">
								<input type="submit" value="立即登录" class="btn" id="sub"/>
							</div>
						</div>
						<div class="l_c_c_03">
							<div class="l_c_c022">还没有账号，<a href="register.jsp">立即注册</a></div>
						</div>
					</form>
				</div>
			</div>
			<div class="login_foot">Copyright © 2018 www.fc2.com 东莞理工紫禁之巅控股集团有限公司 版权所有 All Rights Reserved 粤ICP备171XXXXX号-X</div>
    	</div>
	</body>
</html>