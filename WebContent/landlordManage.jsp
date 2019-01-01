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
				房东管理.
			</h1>
			<h4 class="text-left text-success">_________________</h4>
			<h4 class="text-left text-success">
				Landlord Manage
			</h4> 
			<br><p>
			<button class="btn btn-success btn-primary" type="button"
			onclick="javascript:window.location.href='adminCenter.jsp'">管理中心</button>
			&nbsp;&nbsp;
			<button class="btn btn-success btn-large" type="button" 
			onclick="javascript:window.location.href='houseReview.jsp'">房源审核</button>
			&nbsp;&nbsp;
			<button class="btn btn-success btn-large" type="button"
			onclick="javascript:window.location.href='renterManage.jsp'">租户管理</button>
			&nbsp;&nbsp;
			<button class="btn btn-success btn-large" type="button"
			onclick="javascript:window.location.href='adminModify.jsp'">修改密码</button>
			
			<br>
		</div>
	</div>
</div>
</body>