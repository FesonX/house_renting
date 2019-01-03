<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cn.bean.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<!-- header.html -->
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <title>
        租个好房,住个好家
    </title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
    <link rel="stylesheet" type="text/css" href="css/header.css">
     <!-- Latest compiled and minified JavaScript -->
    <script src="http://cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
</head>

<body>

<div class="container">
  <div class="row clearfix">
    <div class="col-md-12 column">
            <div class='panel panel-default'>
                <div class='panel-body'>
                </div>
            </div>
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="navbar-header" id="navbar">
           <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                         <span class="sr-only">Toggle navigation</span>
                         <span class="icon-bar"></span><span class="icon-bar"></span>
                         <span class="icon-bar"></span></button>
                    <a class="navbar-brand" href="index.jsp">🐚贝壳租房</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
            <li class="active">
               <a href="adminCenter.jsp">首页</a>
            </li>
            <li>
               <a href="adminModify.jsp">修改密码</a>
            </li>
          </ul>
          <form action="query.do?method=searchHouseByDid" class="navbar-form navbar-left" role="search" method="post">
            <div class="form-group">
              <input type="text" class="form-control" name="district" value=""/>
            </div> <button type="submit" class="btn btn-default">搜索</button>
          </form>
          <ul class="nav navbar-nav navbar-right">
            <li>
               <a href="adminLogin.jsp">管理</a>
            </li>
            <li class="dropdown">
               <a href="#" class="dropdown-toggle" data-toggle="dropdown">个人中心<strong class="caret"></strong></a>
              <ul class="dropdown-menu">
              <%
				Admin admin=(Admin) session.getAttribute("currentUser");
				if (admin!=null) {
				%>
                <li>
                   <a href="https://github.com/FesonX">修改密码</a>
                </li>
                <li class="divider">
                </li>
                <li>
                   <a onclick=<%%>href="adminLogin.jsp">退出</a>
                </li>
                <%}
				else{%>
				<li>
                   <a href="http://localhost:8080/House_rent/login.jsp">登录</a>
                </li>
                <li>
                   <a href="http://localhost:8080/House_rent/register.jsp">注册</a>
                </li>
				<%} %>
              </ul>
            </li>
          </ul>
        </div>
      </nav>
      </div>
    </div>
</div>