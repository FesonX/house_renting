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
			<button class="btn btn-success btn-primary" type="button"
			onclick="javascript:window.location.href='adminCenter.jsp'">管理中心</button>
			&nbsp;&nbsp;
			<button class="btn btn-success btn-large" type="button"
			onclick="javascript:window.location.href='renterManage.jsp'">租户管理</button>
			&nbsp;&nbsp;
			<button class="btn btn-success btn-large" type="button"
			onclick="javascript:window.location.href='landlordManage.jsp'">房东管理</button>
			&nbsp;&nbsp;
			<button class="btn btn-success btn-large" type="button" 
			onclick="javascript:window.location.href='houseReview.do?type=0'">房源审核</button>
			<h4 class="text-left text-success">_________________</h4>
	</div>
	<%
	String msg = (String)request.getAttribute("msg");
	if (admin!=null) {
		if(msg == null){
			System.out.println("Do Nothing");
		%> <%}
		else if(msg!=null && msg.equals("wrong") ){
			String id = admin.aid;
			System.out.println("旧密码不匹配");
		%>
		 <h3 contenteditable="false" class="text-warning">管理员No.<%=id %>你好, 旧密码不匹配!请重新输入</h3>
		<% }
		else{ System.out.println("修改失败");%>
	<h3 contenteditable="false" class="text-warning">修改失败!</h3><%}%>
</div>


<form class="form-horizontal" action="adminPwdModify.do" method="post" onsubmit="return check()">
	<div class="control-group">
		<label class="control-label" contenteditable="false" for="inputPassword">旧密码</label>
		<div class="controls">
			<input id="oldPwd" name="oldPwd" placeholder="请输入旧密码" type="password" />
		</div>
	</div>
	
	<div class="control-group">
		<label class="control-label" contenteditable="false" for="inputPassword">新密码</label>
		<div class="controls">
			<input id="newPwd" name="newPwd" placeholder="请输入新密码" type="password" />
		</div>
	</div>
	
	<div class="control-group">
		<label class="control-label" contenteditable="false" for="inputPassword">再次输入</label>
		<div class="controls">
			<input id="ConfirmNewPwd" placeholder="请确认新密码" type="password" />
		</div>
	</div>
	<p><br>
	<div class="control-group">
	<div class="controls">
		<button type="submit" class="btn">验证并修改</button>
	</div>
	</div>
</form>
<%}else{%>	

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