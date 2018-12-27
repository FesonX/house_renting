<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="header.jsp"%>
</head>
<body>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<form action="renterLogin.do" method="post" id="" onsubmit="return check()">
				<fieldset>
					 <legend>欢迎登陆</legend>
					  <label>账号</label>
					  <input type="text" name="name" placeholder="用户名" /><br>
					  <label>密码</label>
					  <input type="password" placeholder="密码" name='password'><br>
					  <button type="submit" class="btn">提交</button>
				</fieldset>
			</form>
		</div>
	</div>
</div>
</body>
</html>