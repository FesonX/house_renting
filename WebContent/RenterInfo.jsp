<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="cn.bean.*"%>
<%@ page import="cn.dao.*"%>
<%@ page import="cn.dao.impl.*"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="header.jsp"%>
</head>
<body>
<%
  	Renter renter = null;
	RenterDao rd = new RenterDaoImpl();
	String rid = "13030645753";
	renter = rd.findRenterByRid(rid);
	//District district = null;
	//DistrictDao dd = new DistrictDaoImpl();
  	//district = dd.findDistrictByDid(Renter.getdid());
%> 
<%=renter%>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<form  action="RenterModify.do" method="post" id="" onsubmit="return check()">
				<fieldset>
					 <legend>个人信息</legend>
					 <a href="RenterModify.jsp">修改个人信息</a><br>
					  <label>账号</label>
					  
					  <input type="text" name="name" value="<%=renter.getName() %>" /><br> 
					  <label>真实姓名</label>
					  <input type="text" name="realname" value="<%=renter.getRealname() %>"/><br>
					  <label>手机号码</label>
					  <input type="text" name="lid" value="<%=renter.getRid() %>"/><br>
					  <label>性别</label>
					  <input type="text" name="gender" value="<%=renter.getGender() %>" /><br>
					  <label>QQ</label>
					  <input type="text" name="qq" value="<%=renter.getQq() %>" /><br>
					  <label>微信</label>
					  <input type="text" name="wechat" value="<%=renter.getWechat() %>" /><br>
					  
					  <div >
						<ul>
							<li>账号：${renter.rid}</li>
							<li>昵称：${renter.name}</li>
							<li>真实姓名：${renter.realname}</li>
							
						</ul>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>
</body>
</html>