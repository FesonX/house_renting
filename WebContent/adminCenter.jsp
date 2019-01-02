<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cn.bean.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@include file="header.jsp"%>
<body>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<h1 class="text-left text-success">
				管理中心.
			</h1>
			<h4 class="text-left text-success">_________________</h4>
			<h4 class="text-left text-success">
				Administration Center
			</h4> 
			
			<br><p>
			<button class="btn btn-success btn-large" type="button" 
			onclick="javascript:window.location.href='houseReview.do?type=0'">房源审核</button>
			&nbsp;&nbsp;
			<button class="btn btn-success btn-large" type="button"
			onclick="javascript:window.location.href='showUsers.do?type=1'">租户管理</button>
			&nbsp;&nbsp;
			<button class="btn btn-success btn-large" type="button"
			onclick="javascript:window.location.href='showUsers.do?type=2'">房东管理</button>
			&nbsp;&nbsp;
			<button class="btn btn-success btn-large" type="button"
			onclick="javascript:window.location.href='adminModify.jsp'">修改密码</button>

			<h4 class="text-left text-success">_________________</h4>
		</div>
	</div>
	
	<%
	String msg = (String)request.getAttribute("msg");
	if (admin!=null) {
		if(msg == null){
			System.out.println("Do Nothing");
		}%><%
		else if(msg!=null && msg.equals("success") ){
			String id = admin.aid;
			System.out.println("修改成功");
		%>
		 <h3 contenteditable="false" class="text-warning">管理员No.<%=id %>你好, 密码修改成功!</h3>
		<% }
		else{ System.out.println("修改失败");%>
	<h3 contenteditable="false" class="text-warning">修改失败!</h3><%} }
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
</body>