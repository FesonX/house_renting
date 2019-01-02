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
			<form  action="landlordModify.do" method="post" id="" onsubmit="return check()">
				<fieldset>
					 <legend>个人信息</legend>
					 <a href="LandlordModify.jsp">修改个人信息</a> <a href="LandlordPw.jsp">修改密码</a><br>
					  <label>账号</label>
					  <input type="text" name="name" value="${landlord.name}" /><br> 
					  <label>真实姓名</label>
					  <input type="text" name="realname" value="${landlord.realname}"/><br>
					  <label>手机号码</label>
					  <input type="text" name="lid" value="${landlord.lid}"/><br>
					  <label>性别</label>
					  <input type="text" name="gender" value="${landlord.gender}" /><br>
					  <label>区域</label>
					  <input type="text" name="didname" value="${district.name}" /><br>
				</fieldset>
			</form>
		</div>
	</div>
</div>
</body>
</html>