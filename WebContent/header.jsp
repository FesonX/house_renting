<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- base.html -->
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
                    <a class="navbar-brand" href="#">DGUT</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
            <li class="active">
               <a href="#navbar">首页</a>
            </li>
            <li>
               <a href="#trend">热门房源</a>
            </li>
            <li>
               <a href="#landlords">热门房东</a>
            </li>
            <li>
               <a href="#issue_house">发布房源</a>
            </li>
          </ul>
          <form class="navbar-form navbar-left" role="search">
            <div class="form-group">
              <input type="text" class="form-control" />
            </div> <button type="submit" class="btn btn-default">搜索</button>
          </form>
          <ul class="nav navbar-nav navbar-right">
            <li>
               <a href="/admin">管理</a>
            </li>
            <li class="dropdown">
               <a href="#" class="dropdown-toggle" data-toggle="dropdown">个人中心<strong class="caret"></strong></a>
              <ul class="dropdown-menu">
                <li>
                   <a href="https://github.com/FesonX">我的主页</a>
                </li>
                <li>
                   <a href="https://github.com/huangjiarong">我的合同</a>
                </li>
                <li>
                   <a href="mailto:fesonx@foxmail.com">fesonx@foxmail.com</a>
                </li>
                <li class="divider">
                </li>
                <li>
                   <a href="#navbar">退出</a>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </nav>
      </div>
    </div>
</div>