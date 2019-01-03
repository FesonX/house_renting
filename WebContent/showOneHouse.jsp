<%@ page import="java.util.*,cn.bean.*" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>房屋详情</title>
<!---css--->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/popuo-box.css" rel='stylesheet' type='text/css' />
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
<link href="css/button.css" rel="stylesheet">
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
<!-- FlexSlider -->
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
			<!-- //FlexSlider-->
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
							<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>Email: <a href="">1978069848@qq.com</a> </li>
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
								<li><a href="index.jsp">首页 <span class="sr-only">(current)</span></a></li>
								<li class="active"><a href="query.do?method=showAllHouse">租房</a></li>
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
				<h2>房屋详情</h2>
			</div>
		</div>
		<!---banner--->
		<div class="content">
			<div class="properties-section">
				<div class="container">
				<div class="properties-grids">
				<% ArrayList houses = (ArrayList)request.getAttribute("houseList");
				   String landlord_name = (String)request.getAttribute("landlord_name");
				   String district_name = (String)request.getAttribute("district_name");
				   /*iterate over the arraylist*/
				    for (int i = 0; i < houses.size(); i++) { 
				       House a_house = (House)houses.get(i);
				       Random r = new Random();%>
					<div class="col-md-9 properties-left">
						<div class="flexslider">
							<ul class="slides">
								<li data-thumb="images/d11.jpg">
									<div class="thumb-image"> <img src="images/d1.jpg" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								<li data-thumb="images/d12.jpg">
									 <div class="thumb-image"> <img src="images/d2.jpg" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								<li data-thumb="images/d13.jpg">
										<div class="thumb-image"> <img src="images/d3.jpg" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								<li data-thumb="images/d14.jpg">
									   <div class="thumb-image"> <img src="images/d4.jpg" data-imagezoom="true" class="img-responsive"> </div>
								</li>
							</ul>
						</div>
						<div class="clearfix"></div>
						<div class="properties-details">
							<div class="col-md-2 properties-detail">
								<h5><span><% out.print(a_house.getArea()); %></span> m²</h5>
							</div>
							<div class="col-md-2 properties-detail">
								<h5><% out.print(a_house.getHouseType()); %></h5>
							</div>
							<div class="col-md-2 properties-detail">
								<h5><span><% out.print(a_house.getPrice()); %>元</span> /月</h5>
							</div>
							<div class="col-md-4 properties-detail">
								<h5><span>地址</span> <% out.print(a_house.getAddress()); %></h5>
							</div>
							<div class="col-md-2 properties-detail">
								<h5><% out.print(district_name); %>市</h5>
							</div>
							<div class="clearfix"></div>
						</div>
						<p><% out.print(a_house.getTitle()); %></p>
													<div class="additional-details">
							<h3>房屋信息</h3>
							<ul>
								<li><span>发布：</span><% out.print(a_house.getIssueDate()); %></li>
								<li><span>入住：</span>随时入住</li>
								<li><span>楼层：</span><% int num1 = r.nextInt(29)+1;out.print(num1); %>楼</li>
								<li><span>电梯：</span><% int num2 = r.nextInt(2);String flag2 = (num2==1?"有":"无");out.print(flag2); %></li>
								<li><span>车位：</span>租用车位</li>
								<li><span>用水：</span>民水</li>
								<li><span>用电：</span>民电</li>
								<li><span>燃气：</span><% int num3 = r.nextInt(2);String flag3 = (num3==1?"有":"无");out.print(flag3); %></li>
								<li><span>冰箱：</span><% int num4 = r.nextInt(2);String flag4 = (num4==1?"有":"无");out.print(flag4); %></li>
								<li><span>洗衣机：</span><% int num5 = r.nextInt(2);String flag5 = (num5==1?"有":"无");out.print(flag5); %></li>
								<li><span>空调：</span><% int num6 = r.nextInt(2);String flag6 = (num6==1?"有":"无");out.print(flag6); %></li>
								<li><span>热水器：</span><% int num7 = r.nextInt(2);String flag7 = (num7==1?"有":"无");out.print(flag7); %></li>
								<li><span>床：</span><% int num8 = r.nextInt(2);String flag8 = (num8==1?"有":"无");out.print(flag8); %></li>
								<li><span>宽带：</span><% int num9 = r.nextInt(2);String flag9 = (num9==1?"有":"无");out.print(flag9); %></li>
								<li><span>衣柜：</span><% int num10 = r.nextInt(2);String flag10 = (num10==1?"有":"无");out.print(flag10); %></li>
							</ul>
							<div>
							  <%if(renter!=null){ %>
							  <a href="book.do?rid=<% out.print(renter.getRid()); %>&lid=<% out.print(a_house.getLid()); %>&hid=<% out.print(a_house.getHid()); %>" class="button button-glow button-rounded button-highlight"><h5>预约看房</h5></a>
							   &nbsp;&nbsp;
							  <a href="contract.do?rid=<% out.print(renter.getRid()); %>&lid=<% out.print(a_house.getLid()); %>&hid=<% out.print(a_house.getHid()); %>" class="button button-glow button-rounded button-caution"><h5>租赁此房</h5></a>
							  <%}else{%>
							  	<a href="renterLogin.jsp" class="button button-glow button-rounded button-highlight"><h5>还没登录！前往登录</h5></a>
							    &nbsp;&nbsp;
							    <a href="renterRegister.jsp" class="button button-glow button-rounded button-caution"><h5>还没账户？注册一个</h5></a>
							  <%} %>
							</div>
						</div>							  
					<!--fea-video-->
					</div>
					
					<div class="col-md-3 properties-right">
						<div class="properties-top">
							<h4><% out.print(landlord_name); %></h4>
							<img src="images/a3.jpg" class="img-responsive" alt=""/>
							<ul class="">
								<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i> 座机 : 0041-456-3692</li>
								<li><i class="glyphicon glyphicon-phone" aria-hidden="true"></i> 手机 : <% out.print(a_house.getLid()); %></li>
							</ul>
							
							<a href="#" class="button2">房东</a>
						</div>
						<div class="feature">
							<h4>优质房源推荐</h4>
							<div class="feature-top">
							<img src="images/s6.jpg" class="img-responsive" alt="/">
									<h5>60 Merrick Way, Miami</h5>
									<p>Lorem ipsum dolor sit amet, consectetuer  elit,… <a href="query.do?method=showOneHouse&hid=1817">Know More</a></p>
							</div>
							<div class="feature-top top2">
							<img src="images/s7.jpg" class="img-responsive" alt="/">
									<h5>Villa in Hialeah, Dade</h5>
									<p>Lorem ipsum dolor sit amet, consectetuer  elit,… <a href="query.do?method=showOneHouse&hid=3194">Know More</a></p>
							</div>
						</div>
					</div>
					<% } %>
					<div class="clearfix"></div>
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