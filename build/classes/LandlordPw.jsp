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
			<form  action="landlordPw.do" method="post" id="" onsubmit="return check()">
				<fieldset>
					 <legend>修改密码</legend>
					  <label>原密码</label>
					  <input type="text" name="old_password" placeholder="原密码"/><br> 
					  <label>新密码</label>
					  <input type="text" name="new_password" placeholder="新密码"><br>
					  <label>确认新密码</label>
					  <input type="text" name="cnew_password" placeholder="确认新密码"><br>
					  <button type="submit" class="btn">提交</button>
				</fieldset>
			</form>
		</div>
	</div>
</div>
</body>
</html>