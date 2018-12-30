<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			onclick="javascript:window.location.href='renterManage.jsp'">租户管理</button>
			&nbsp;&nbsp;
			<button class="btn btn-success btn-large" type="button"
			onclick="javascript:window.location.href='landlordManage.jsp'">房东管理</button>
			
			<p><br>
			<h4 class="text-left text-success">_________________</h4>
			<div class="hero-unit" contenteditable="true">
		</div>
	</div>
</div>
</body>