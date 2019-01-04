<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page import="cn.bean.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.util.ArrayList" %>
<%@include file="header.jsp"%>
<title>租户管理</title>
<body>

<script type="text/javascript">
function firm(id) {	 
	//利用对话框返回的值 （true 或者 false）  
	if(confirm("ATTENTION 删除不可撤销,确认删除？"))
	{
		location.href = "userManager.do?id="+id+"&type=1";
	} else
	{
	}
}
</script>

<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<h1 class="text-left text-success">
				租户管理.
			</h1>
			<h4 class="text-left text-success">_________________</h4>
			<h4 class="text-left text-success">
				Renter Management
			</h4> 
			<br><p>
			<button class="btn btn-success btn-primary" type="button"
			onclick="javascript:window.location.href='adminCenter.jsp'">管理中心</button>
			&nbsp;&nbsp;
			<button class="btn btn-success btn-large" type="button" 
			onclick="javascript:window.location.href='houseReview.do?type=0'">房源审核</button>
			&nbsp;&nbsp;
			<button class="btn btn-success btn-large" type="button"
			onclick="javascript:window.location.href='showUsers.do?type=2'">房东管理</button>
			&nbsp;&nbsp;
			<button class="btn btn-success btn-large" type="button"
			onclick="javascript:window.location.href='adminModify.jsp'">修改密码</button>
			
			<br>
		</div>
	<%
String msg = (String)request.getAttribute("msg");
if (admin!=null) {
	String message = "";
	ArrayList users = (ArrayList)request.getAttribute("users");	
	if(msg == null){
		System.out.println("Do Nothing");
		message = "删除不可撤销,请慎重操作";
	}
	else if(msg!=null && msg.equals("success") ){
		String id = (String)request.getAttribute("id");
		System.out.println("已删除");
		message = "编号No."+id+"租户已删除";
	}
	else{ System.out.println("删除失败");} 
	%>
	<div class="span12">
	<div class="alert">
		<button type="button" class="close" data-dismiss="alert">×</button>
		<h4>
		ATTENTION 提示!
		</h4> <strong>警告!</strong><%=message%>.
	</div>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>id</th>
						<th>用户名</th>
						<th>性别</th>
						<th>真实姓名</th>
						<th>操作</th>
					</tr>
				</thead>
				<c:forEach var="user" items="${users}">
				<tbody>
					<tr class="success">
						<td>${user.rid}</td>
						<td>${user.name}</td>
						<td>${user.gender }</td>
						<td>${user.realname}</td>
						<td><button class="btn btn-small btn-info" type="button"
						onclick="firm(${user.rid})">删除</button></td>
						
					</tr>
				</tbody>
				</c:forEach>
			</table>
			
				<ul class="pagination">
				<% int pageNum = (Integer)request.getAttribute("pageNum");
				   int nowPage = (Integer)request.getAttribute("nowPage");
				%>
				<%if(nowPage>0){%>
					<li>
						<a href="showUsers.do?type=1&nowPage=<%=nowPage-1 %>>">上一页</a>
					</li>
					<%} %>
					<%for (int i = 0; i < pageNum; i++) { %>
						  <li><a <%if(i==nowPage)out.print("class='active' ");%> 
						  href="showUsers.do?type=1&nowPage=<%out.print(i);%>"><%out.print(i+1); %></a></li>
					<% } %>
					<%if(nowPage<pageNum-1){%>
						  <li><a href="showUsers.do?type=1&nowPage=<%out.print(nowPage+1);%>">&raquo;</a></li>
					<%}%>
				</ul>
			</div>
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
	</div>
</body>