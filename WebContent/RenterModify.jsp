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
			<form  action="renterModify.do" method="post" id="" onsubmit="return check()">
				<fieldset>
					 <legend>修改个人信息</legend>
					  <label>账号</label>
					  <input type="text" name="name" value="${renter.name}" /><br> 
					  <label>真实姓名</label>
					  <input type="text" name="realname" value="${renter.realname}"/><br>
					  <label>手机号码</label>
					  <input type="text" name="rid" value="${renter.rid}"/><br>
					  <label>性别</label>
					  <input type="text" name="gender" value="${renter.gender}" /><br>
					  <label>QQ</label>
					  <input type="text" name="qq" value="${renter.qq}" /><br>
					  <label>微信</label>
					  <input type="text" name="Wechat" value="${renter.wechat }" /><br>
					  <button type="submit" class="btn">提交</button>
				</fieldset>
			</form>
		</div>
	</div>
</div>
</body>
</html>