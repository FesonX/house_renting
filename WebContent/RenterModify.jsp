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
  	Landlord landlord = null;
	LandlordDao ld = new LandlordDaoImpl();
	String lid = "13055009491";
	landlord = ld.findLandlordBy(lid);
	District district = null;
	DistrictDao dd = new DistrictDaoImpl();
	//String str;
  	//test te=new test();
  	district = dd.findDistrictByDid(landlord.getdid());
%> 
<%=landlord%>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<form  action="landlordModify.do" method="post" id="" onsubmit="return check()">
				<fieldset>
					 <legend>个人信息</legend>		 
					  <label>账号</label>
					  <input type="text" name="name" value="<%=landlord.getname() %>" /><br> 
					  <label>真实姓名</label>
					  <input type="text" name="realname" value="<%=landlord.getrealname() %>"/><br>
					  <label>手机号码</label>
					  <input type="text" name="lid" value="<%=landlord.getlid() %>"/><br>
					  <label>性别</label>
					  <input type="radio" value="M" name="gender" />男
					  <input type="radio" value="F" name="gender" />女<br />
					  <label>区域</label>
					  <input type="text" name="didname" value="<%=district.getName() %>"/><br>
					  <button type="submit" class="btn">提交</button>
				</fieldset>
			</form>
		</div>
	</div>
</div>
</body>
</html>