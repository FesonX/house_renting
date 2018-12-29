<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page import="cn.bean.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.util.ArrayList" %>
<%@include file="header.jsp"%>
<body>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<h1 class="text-left text-success">
				房源审核.
			</h1>
			<h4 class="text-left text-success">_________________</h4>
			<h4 class="text-left text-success">
				House Review
			</h4> 
			<br><p>
			<button class="btn btn-success btn-primary" type="button"
			onclick="javascript:window.location.href='adminCenter.jsp'">管理中心</button>
			&nbsp;&nbsp;
			<button class="btn btn-success btn-large" type="button"
			onclick="javascript:window.location.href='renterManage.jsp'">租户管理</button>
			&nbsp;&nbsp;
			<button class="btn btn-success btn-large" type="button"
			onclick="javascript:window.location.href='landlordManage.jsp'">房东管理</button>
			<br>
		</div>
<%
String msg = (String)request.getAttribute("message");
if (admin!=null) {
	ArrayList houses = (ArrayList)request.getAttribute("houseList");	
	
	 if(msg != null && msg.equals("success") ){
		System.out.println("修改成功");
	%>
	 <h3 contenteditable="true" class="text-warning">修改成功!</h3>
	<% } else{ System.out.println("修改失败");%>
	<h3 contenteditable="true" class="text-warning">修改失败!</h3><%} %>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<div class="list-group">
			<c:forEach var="house" items="${houseList}">		
			<div class="panel panel-primary">
			<div class="panel-heading">
			<h3 class="panel-title" contenteditable="false">id:&nbsp;${house.hid}&nbsp;${house.title }</h3>
			</div>
			<div class="panel-body" contenteditable="false">房型:&nbsp;${house.houseType }&nbsp;&nbsp;
			|&nbsp;&nbsp; 面积:&nbsp;${house.area }平方米 &nbsp;&nbsp;| &nbsp;&nbsp;月付:&nbsp;${house.price}元
			&nbsp;&nbsp;发布日期:&nbsp;${house.issueDate }&nbsp;&nbsp;|
			&nbsp;&nbsp;地址:&nbsp;&nbsp;${house.address }
			<div class="span12">
			<button class="btn btn-primary" type="button"
			onclick="javascript:window.location.href='confirmHouseReview.do?hid=${house.hid}'">通过</button>&nbsp;&nbsp;
			<button class="btn btn-danger" type="button"
			onclick="javascript:window.location.href='rejectHouseReview.do?hid=${house.hid}'">拒绝</button> 
			</div>
			</div>
			</div>		
				</div></c:forEach>
				</div> 			
			</div>
		</div>	
	<%  	} 
	else{%>	
	
	<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<div class="list-group">	
			<div class="panel panel-primary">
			<div class="panel-heading">
			<h3 class="panel-title" contenteditable="false">检测到您尚未登录</h3>
			</div>
			<div class="panel-body" contenteditable="false">请<a href="adminLogin.jsp">登录管理员账号</a></div>
			</div>
				</div>
				</div> 	
			</div>
		</div>
		<%} %>
	</div>
	</div>
</body>