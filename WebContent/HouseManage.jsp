<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cn.bean.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>贝壳租房 - 租个好房 住个好家</title>
<!---css--->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!---css--->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Real Space Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!---js--->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<!---js--->
<!---fonts-->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
<!---fonts-->
<script src="js/responsiveslides.min.js"></script>
	 <script>
		$(function () {
		  $("#slider").responsiveSlides({
			auto:true,
			nav: false,
			speed: 500,
			namespace: "callbacks",
			pager:true,
		  });
		});
	</script>
<link href="css/owl.carousel.css" rel="stylesheet">
<script src="js/owl.carousel.js"></script>
	<script>
		$(document).ready(function() {
		$("#owl-demo").owlCarousel({
			items : 1,
			lazyLoad : true,
			autoPlay : true,
			navigation : false,
			navigationText :  false,
			pagination : true,
		});
		});
	</script>
	 <script src="js/jquery.flexslider.js"></script>
		<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
			<script>
			// Can also be used with $(document).ready()
				$(window).load(function() {
				$('.flexslider').flexslider({
				animation: "slide",
				controlNav: "thumbnails"
				});
				});
			</script>
<style>
ul.pagination {
    display: inline-block;
    padding: 0;
    margin: 0;
}

ul.pagination li {display: inline;}

ul.pagination li a {
    color: black;
    float: left;
    padding: 8px 16px;
    text-decoration: none;
    border-radius: 5px;
}

ul.pagination li a.active {
    background-color: #4CAF50;
    color: white;
    border-radius: 5px;
}

ul.pagination li a:hover:not(.active) {background-color: #ddd;}
</style>	
</head>
<body>

		<!---header--->
			<div class="header-section">
				<div class="container">
					<div class="head-top" style="padding-top:20px;padding-bottom:12px;">
						<%
								Renter renter=(Renter) session.getAttribute("renter");
								Landlord landlord = (Landlord) session.getAttribute("landlord");
								if(renter==null&&landlord==null){
						%>
						<div class="email">
						<ul>
							<li class="dropdown">				
							<i class="glyphicon glyphicon-log-in" aria-hidden="true"></i>
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">登录<span class="caret"></span></a>
											<ul class="dropdown-menu">
												<li><a href="renterLogin.jsp">租客&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
												<li><a href="landlordLogin.jsp">房东&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
											</ul>
									</li>
							<li class="dropdown"><i class="glyphicon glyphicon-lock" aria-hidden="true"></i><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">注册<span class="caret"></span></a>
											<ul class="dropdown-menu">
												<li><a href="renterRegister.jsp">租客&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
												<li><a href="landlordRegister.jsp">房东&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
											</ul></li>
						</ul>
						</div>
						<%
								}else{
									if(renter!=null){
						%>
							<div class="email">
								<ul>
									<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>欢迎，<% out.print(renter.getName());  %> <a href="LandlordInfo.jsp"></a> </li>
									<li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i>状态：已登录</li>
									<li><i class="glyphicon glyphicon-lock" aria-hidden="true"></i><a href="renterLoginOut.jsp">注销</a></li>
									<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="renterLogin.do?name=<%out.print(renter.getName());%>&password=<%out.print(renter.getPassword());%>">用户中心 </a> </li>
								</ul>
							</div>
						<%
									}
									if(landlord!=null){
						%>
							<div class="email">
								<ul>
									<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>欢迎，<% out.print(landlord.getname());  %> <a href="LandlordInfo.jsp"></a> </li>
									<li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i>状态：已登录</li>
									<li><i class="glyphicon glyphicon-lock" aria-hidden="true"></i><a href="landlordLoginOut.jsp">注销</a></li>
									<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="landlordLogin.do?name=<%out.print(landlord.getPassword());%>&password=<%out.print(landlord.getname());%>">用户中心 </a> </li>
								</ul>
							</div>
						<%
									}
						%>
							
						<%
								}	
						%>
						<div class="clearfix"></div>
					</div>
					<nav class="navbar navbar-default">
					<!---Brand and toggle get grouped for better mobile display--->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>				  
							<div class="navbar-brand">
								<h1><a href="index.jsp"><span>贝壳 </span>租房</a></h1>
							</div>
						</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class="active"><a href="index.jsp">首页 <span class="sr-only">(current)</span></a></li>
								<% if(renter!=null){%>
								<li><a href="query.do?method=showAllHouse">租房</a></li>
								<%} %>
								<% if(landlord!=null){%>
								<li><a href="FindHousebylid.do?lid=${landlord.getlid()}">房源</a></li>
								<%} %>
							</ul>
							<%if(renter!=null){ %>
							<div class="phone">
							<span><i class="glyphicon glyphicon-phone" aria-hidden="true"></i><%out.print(renter.getRid()); %></span>
							</div>
							<%} %>
							<div class="clearfix"></div>
						</div>
					</nav>
				</div>
			</div>
		<!---header--->
		<!---banner--->
		<div class="banner-section">
			<div class="container">
				<h2>我的房源</h2>
			</div>
		</div>
		<!---banner--->
		<div class="content">
			<div class="properties-section">
				<div class="container">
				<div class="properties-grids">
					<div class="col-md-9 forsales-left">
						<div class="forsale">
							<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
								<div id="myTabContent" class="tab-content">
									<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
									<% ArrayList houses = (ArrayList)request.getAttribute("houseList");
									   ArrayList districts = (ArrayList)request.getAttribute("districtList");
								   /*iterate over the arraylist*/
								   for (int i = 0; i < houses.size(); i++) { 
								       House a_house = (House)houses.get(i);
								       if(a_house.getArea()==0) continue;
								       String d = (String)districts.get(i);
								       Random r = new Random();
									   int pic_id = r.nextInt(14)+1;%>
										<div class="forsale-grids">
											<div class="forsale1">
												<div class="forsale-left">
													<a href="query.do?method=showOneHouse&hid=<% out.print(a_house.getHid()); %>"><img src="images/<%out.print(pic_id); %>.jpg" class="img-responsive" alt="/"></a>
												</div>
												<div class="forsale-right">
													<h5><label><% out.print(d); %></label> - <span><% out.print(a_house.getAddress()); %></span></h5>
													
													<% if(a_house.getStatus()==0){%>
														<h5>未售</h5>
													<%}%>
													<% if(a_house.getStatus()==1){%>
														<h5>已售</h5>
													<%}%>
													<% if(a_house.getReviewed()==0){%>
														<h5>管理员审核中</h5>
													<%}%>
													<% if(a_house.getReviewed()==1){%>
														<h5>审核通过</h5>
													<%}%>
													<% if(a_house.getReviewed()==2){%>
														<h5>审核未通过</h5>
													<%}%>
													<a href="UpdateHouse.jsp?hid=<% out.print(a_house.getHid()); %>">修改</a>&nbsp;&nbsp;
													<a href="${pageContext.request.contextPath}/UpdateHouseServlet?hid=<% out.print(a_house.getHid()); %>&delete=1">删除</a>&nbsp;&nbsp;
													<a href="BookandContract.do?hid=<% out.print(a_house.getHid()); %>">租赁状态</a>
												</div>
												<div class="clearfix"></div>
												<ul>
													<li><span> <% out.print(a_house.getArea()); %> </span>m²</li>
													<li><% out.print(a_house.getHouseType()); %></li>
													<li><span> <% out.print(a_house.getPrice()); %>元 </span>/月</li>
													<li><span> 所在地 </span><% out.print(a_house.getAddress()); %></li>
												</ul>
											</div>
										</div>	
									<% } %>
											
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 properties-right">
						<div class="properties-top">
						<div class="search1">
							<form action="${pageContext.request.contextPath}/AddHouseServlet?lid=${param.lid}"
							method="post" enctype="multipart/form-data">
							<h4>添加房源</h4>
							<div class="yourplace">
								<h5>所属区域</h5>
								  <select class="sel2" name="did" id="did">
									<option value="广州">广州</option>
									<option value="深圳">深圳</option>
									<option value="北京">北京</option>
									<option value="上海">上海</option>
									<option value="杭州">杭州</option>
									<option value="成都">成都</option>
									<option value="东莞">东莞</option>
								</select>
							</div>
							<div class="yourplace">
								 <label>房源描述：</label>
								 <input type="text" name="title" title="房源描述" id="title"/>
								 <label>具体地址：</label>
								 <input type="text" name="address" title="具体地址" id="address"/>
								 <label>房屋面积：</label>
								 <input type="text" name="Area" title="房屋面积" id="Area"/>
								 <label>每月租金：</label>
								 <input type="text" name="Price" title="租金" id="Price"/>
							</div>
							 <div class="yourplace">
								<h5>户型</h5>
								<select class="sel2" name="houseType" id="houseType">
									<option value="1室1厅">1室1厅</option>
									<option value="2室1厅">2室1厅</option>
									<option value="3室1厅">3室1厅</option>
									<option value="4室1厅">4室1厅</option>
									<option value="2室2厅">2室2厅</option>
									<option value="3室2厅">3室2厅</option>
									<option value="4室2厅">4室2厅</option>
									<option value="1室0厅">1室0厅</option>
								</select>
							</div>
								 <dl>
									<dt>房子图片：</dt>
								</dl>
								<input type="file" name="file" />
								<input type="submit" value="搜索">
								<div class="yourplace">
								<h5>.</h5>
								</div>
							</form>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-12" style="margin-top:36px;">
					<ul class="pagination">						
						<% int pageNum = (Integer)request.getAttribute("pageNum");
						 	int nowPage = (Integer)request.getAttribute("nowPage");
						 %>
						  	<%if(nowPage>0){%>
						  <li><a href="FindHousebylid.do?lid=<%out.print(landlord.getlid());%>&nowPage=<%out.print(nowPage-1);%>">&laquo;</a></li>
						  	<%}%>
						  	
						  	<%for (int i = 0; i < pageNum; i++) { %>
						  <li><a <%if(i==nowPage)out.print("class='active' "); %> href="FindHousebylid.do?lid=<%out.print(landlord.getlid());%>&nowPage=<%out.print(i);%>"><%out.print(i+1); %></a></li>
						  	<% } %>
						  	
						  	<%if(nowPage<pageNum-1){%>
						  <li><a href="FindHousebylid.do?lid=<%out.print(landlord.getlid());%>&nowPage=<%out.print(nowPage+1);%>">&raquo;</a></li>
						  	<%}%>
					</ul>
				</div>
				</div>
			</div>
		</div>
		<!---footer--->
			<div class="footer-section">
				<div class="container">
				</div>
			</div>
			<!---footer--->
<!-- login -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body real-spa">
							<div class="login-grids">
								<div class="login">
									
									<div class="login-right">
										<form>
											<h3>Login</h3>
											<input type="text" value="Enter your Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter your Email';}" required="">	
											<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">	
											<h4><a href="#">Forgot password</a> / <a href="#">Create new password</a></h4>
											<div class="single-bottom">
												<input type="checkbox"  id="brand" value="">
												<label for="brand"><span></span>Remember Me.</label>
											</div>
											<input type="submit" value="Login Now" >
										</form>
									</div>
																
								</div>
								<p>By logging in you agree to our <a href="#">Terms</a> and <a href="#">Conditions</a> and <a href="#">Privacy Policy</a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //login -->
			<!-- Register -->
			<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body real-spa">
							<div class="login-grids">
								<div class="login">
									<div class="login-right">
										<form>
											<h3>Register </h3>
											<input type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
											<input type="text" value="Mobile number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Mobile number';}" required="">
											<input type="text" value="Email id" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email id';}" required="">	
											<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">	
											
											<input type="submit" value="Register Now" >
										</form>
									</div>
									<div class="clearfix"></div>								
								</div>
								<p>By logging in you agree to our <a href="#">Terms</a> and <a href="#">Conditions</a> and <a href="#">Privacy Policy</a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //Register -->
</body>
</html>












<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="cn.bean.House"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>贝壳租房 - 租个好房 住个好家</title>
<!---css--->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!---css--->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Real Space Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!---js--->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<!---js--->
<!---fonts-->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
<!---fonts-->
<style>
#main {
	height: 400px;
	margin-top: 50px;
}

#main li {
	margin-top: 15px;
}

#img {
	margin-left: 250px;
}

#img input {
	width: 150px;
}

#mes {
	margin-left: 58px;
}

#search1 {
	width: 80px;
	height: 38px;
	margin-top: 30px;
	margin-right: 430px;
	float: right;
	color: white;
	border: none;
	background-color: #FFAD86;
}

#ltitle {
	width: 800px;
	margin-top: 40px;
}

#ltitle li {
	list-style: none;
	font-size: 20px;
	margin-top: 10px;
}

#houseli li {
	padding: 0px;
	margin: 0px;
	width: 16%;
	float: left;
	border: 1px solid black;
}
</style>
<script src="./js/jquery-3.3.1.min.js"></script>
<!-- <script>
	function load() {
		//获取城市信息
		$.ajax({
			url : "getcity.do",
			type : "get",
			dataType : "json",
			success : function(data) {
				for (var i = 0; i < data.length; ++i) {
					//城市选择框叫citysel内onchang事件触发cityListChange()改变townsel的值
					$('#citysel').append(
							"<option value = '" + data[i].id + "'>"
									+ data[i].name + "</option>");
				}
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
				console.log(XMLHttpRequest);
				console.log(textStatus);
				console.log(errorThrown);
			}
		});
	}

	//citysel的onchange事件触发函数
	function cityListChange() {
		$.ajax({
			url : "gettown.do?cid=" + $("#citysel").val(),
			type : "get",
			dataType : "json",
			success : function(data) {
				//镇区选择框叫townsel
				$("#townsel option:not(:first)").remove();
				for (var i = 0; i < data.length; ++i) {
					//城市选择框叫citysel
					$('#townsel').append(
							"<option value = '" + data[i].id + "'>"
									+ data[i].name + "</option>");
				}
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
				console.log(XMLHttpRequest);
				console.log(textStatus);
				console.log(errorThrown);
			}
		});
	}

	//多条件搜索的onclick执行的搜索房子的方法
	function searchHouse() {
		var min;
		if ($("#price1").val() !== "") {
			min = parseInt($("#price1").val());
		} else {
			min = 0;
		}

		var max;
		if ($("#price2").val() !== "") {
			max = parseInt($("#price2").val());
		} else {
			max = 0;
		}

		if (max < min) {
			alert("最大值不能小于等于最小值");
		}

		//添加多选框内数据
		var typeList = new Array();
		for (var i = 0; i < $('input:checkbox:checked').length; ++i) {
			typeList[i] = $($('input:checkbox:checked')[i]).val();
		}

		var json = {
			"search" : true,
			"cid" : $("#citysel").val(),
			"tid" : $("#townsel").val(),
			"min" : min,
			"max" : max,
			"type" : typeList,
		};

		console.log(json);
		//发送json请求
		$
				.ajax({
					url : "gethouse.do",
					type : "post",
					contentType : "application/json",
					data : JSON.stringify(json),
					dataType : "json",
					success : function(data) {
						$('#main').empty();
						for (var i = 0; i < data.length; ++i) {
							var str = "";
							str += "<div id='housebox'><p id='hpic'>";
							//详细信息超链接及图片
							str += "<a href='#'><img src='" + data[i].img + "'></a></p><div id='htext'>";
							//msg最多16个字
							str += "<h4><a href='#'>" + data[i].msg
									+ "</a></h4><ul>";
							//addresss
							str += "<li>" + data[i].address + "</li>";
							//type
							str += "<li>户型：" + data[i].type + "</li>";
							//state
							str += "<li>状态：" + data[i].state + "</li></ul>";
							str += "</div><div id='monthlyrent'>";
							//money
							str += "<p>" + data[i].money
									+ "元/月</p></div></div><hr />";
							$('#main').append(str);
						}
					},
					error : function(XMLHttpRequest, textStatus, errorThrown) {
						console.log(XMLHttpRequest);
						console.log(textStatus);
						console.log(errorThrown);
					}
				});
	}
</script> -->
</head>
<body id="inbody" onload="load()">
	<center>
		<div id="layout">
			<div id="middle">
				<center>
					<div id="men">
						<center>
							<ul>
								<li><a href="#">首&nbsp;&nbsp;&nbsp;&nbsp;页</a></li>
								<li><a href="#">留言板</a></li>
								<li><a href="#">用户管理</a></li>
								<li><a href="#">公&nbsp;&nbsp;&nbsp;&nbsp;告</a></li>
							</ul>
						</center>
					</div>

					<div id="left"></div>
					<div id="main" style="height: 500px;">

						<!-- 已上架的房屋信息 -->
						<c:forEach var="house" items="${requestScope.lh }">
							<div style="width: 95%; padding-bottom: 100px;">
								<ul id="houseli" style="list-style: none;">
									<li>房东</li>
									<li>具体地址</li>
									<li>租售状态</li>
									<li>信息发布日期</li>
									<li>审核状态</li>
									<li>操作</li>
									<li>${house.lid }</li>
									<li>${house.address }</li>
									<c:if test="${house.status==0}">
										<li>未售</li>
									</c:if>
									<c:if test="${house.status==1}">
										<li>已售</li>
									</c:if>
									<li>${house.issueDate }</li>
									<c:if test="${house.reviewed==0}">
										<li>未审核</li>
									</c:if>
									<c:if test="${house.reviewed==1}">
										<li>审核未通过</li>
									</c:if>
									<c:if test="${house.reviewed==2}">
										<li>审核通过</li>
									</c:if>
									<li><c:if test="${house.status==0}">
										<a href="UpdateHouse.jsp?hid=${house.hid}">修改</a>&nbsp;&nbsp;
										<a href="deleteHouse.do?hid=${house.hid}">删除</a>&nbsp;&nbsp;
										<a href="BookandContract.do?hid=${house.hid}">状态</a>
									</c:if></li>
								</ul>
							</div>
						</c:forEach>
						<!-- 已上架的房屋信息 -->

						<!-- 提交的表单 -->
						<ul id="ltitle" style="clear: both;">
							<li>添加房屋</li>
							<li><hr></li>
						</ul>


						<form action="${pageContext.request.contextPath}/AddHouseServlet?lid=${param.lid}"
							method="post" enctype="multipart/form-data">
							<fieldset>
								<legend>房源信息</legend>
								 <label>所属区域：</label>
								  <select name="did" id="did">
									<option value="北京">北京市</option>
									<option value="天津">天津市</option>
									<option value="上海">上海市</option>
									<option value="重庆">重庆市</option>
									<option value="河北">河北省</option>
									<option value="山西">山西省</option>
									<option value="辽宁">辽宁省</option>
									<option value="吉林">吉林省</option>
									<option value="黑龙江">黑龙江省</option>
									<option value="江苏">江苏省</option>
									<option value="浙江">浙江省</option>
									<option value="安徽">安徽省</option>
									<option value="福建">福建省</option>
									<option value="江西">江西省</option>
									<option value="山东">山东省</option>
									<option value="河南">河南省</option>
									<option value="湖北">湖北省</option>
									<option value="湖南">湖南省</option>
									<option value="广东">广东省</option>
									<option value="海南">海南省</option>
									<option value="四川">四川省</option>
									<option value="贵州">贵州省</option>
									<option value="云南">云南省</option>
									<option value="陕西">陕西省</option>
									<option value="甘肃">甘肃省</option>
									<option value="青海">青海省</option>
									<option value="台湾">台湾省</option>
									<option value="广西">广西壮族自治区</option>
									<option value="内蒙古">内蒙古自治区</option>
									<option value="西藏">西藏自治区</option>
									<option value="宁夏">宁夏回族自治区</option>
									<option value="新疆">新疆维吾尔自治区</option>
									<option value="香港">香港特别行政区</option>
									<option value="澳门">澳门特别行政区</option>
								</select>
								 <label>具体地址：</label>
								 <input type="text" name="address" title="具体地址" id="address"/>
								 <label>房屋面积：</label>
								 <input type="text" name="Area" title="房屋面积" id="Area"/>
								 <label>租金：</label>
								 <input type="text" name="Price" title="租金" id="Price"/>
								 <label>户型：</label>
								<select name="houseType" id="houseType">
									<option value="1室1厅">1室1厅</option>
									<option value="2室1厅">2室1厅</option>
									<option value="3室1厅">3室1厅</option>
									<option value="4室1厅">4室1厅</option>
									<option value="2室2厅">2室2厅</option>
									<option value="3室2厅">3室2厅</option>
									<option value="4室2厅">4室2厅</option>
									<option value="1室0厅">1室0厅</option>
								</select>
								
								<dl>
									<dt>房子图片：</dt>
								</dl>
								<input type="file" name="file" />
								<p>
									<button class="btn" type="submit">提交</button>
								</p>
							</fieldset>
						</form>
						<!-- 提交的表单 -->
					</div>
				</center>
</body>
</html> --%>