<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<head>
<title>RenterInfo</title>
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
						<!--<div class="social-icon">
							<a href="#"><i class="icon"></i></a>
							<a href="#"><i class="icon1"></i></a>
							<a href="#"><i class="icon2"></i></a>
							<a href="#"><i class="icon3"></i></a>
							<a href="#"><i class="icon4"></i></a>
						</div>-->
						<div class="email">
						<ul>
							<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>欢迎， <a href="RenterInfo.jsp">${renter.name}</a> </li>
							<li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i>状态：已登录</li>
							<li><i class="glyphicon glyphicon-lock" aria-hidden="true"></i><a href="renterLoginOut.jsp">注销</a></li>
						</ul>
						</div>
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
								<h1><a href="index.html"><span>贝壳 </span>租房</a></h1>
							</div>
						</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li><a href="index.html">首页 <span class="sr-only">(current)</span></a></li>
								<li class="active"><a href="forrent.html">租房</a></li>
							</ul>
							<div class="phone">
							<span><i class="glyphicon glyphicon-phone" aria-hidden="true"></i>${renter.name}</span>
							</div>
							<div class="clearfix"></div>
						</div>
					</nav>
				</div>
			</div>
		<!---header--->
		<!---banner--->
		<div class="banner-section">
			<div class="container">
				<h2>个人信息</h2>
			</div>

		</div>
		<!---banner--->
		<div class="content">
			<div class="agent-section">
				<div class="container">
					<div class="agent-grids">
						<div class="col-md-12 agent-grid" style="background-color:white;padding-top:38px;">
							<img src="images/a3.jpg" class="img-responsive" style="margin:auto;" alt="/">
						</div>
						<div class="col-md-12 agent-grid" style="padding-left:0;padding-right:0;">
							<div class="agent-right">
								<h4>基本信息</h4>
								<ul>
								<li><i class="glyphicon glyphicon-user" aria-hidden="true"></i> 用户id : ${renter.rid}</li>
								<li><i class="glyphicon glyphicon-phone" aria-hidden="true"></i> 昵称 : ${renter.name}</li>
								<li><i class="glyphicon glyphicon-heart" aria-hidden="true"></i> 性别 : ${renter.gender}</li>
								<li><i class="glyphicon glyphicon-print" aria-hidden="true"></i> 姓名 : ${renter.realname}</li>
							</ul>
							<a href="RenterModify.jsp" class="button3 hvr-shutter-out-horizontal">修改信息</a>
							</div>
							<div class="agent-right">
								<h4>隐秘信息</h4>
								<ul>
								<li><i class="glyphicon glyphicon-pencil" aria-hidden="true"></i> QQ号 : ${renter.qq}</li>
								<li><i class="glyphicon glyphicon-pencil" aria-hidden="true"></i> 微信号 : ${renter.wechat}</li>
								<li><i class="glyphicon glyphicon-lock" aria-hidden="true"></i> 密码 : **********</li>
							</ul>
							<a href="RenterPw.jsp" class="button3 hvr-shutter-out-horizontal" style="margin-top:3.32em;">修改密码</a>
							</div>
							<div class="clearfix"></div>
						</div>
					<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
		<!---footer--->
			<div class="footer-section">
						<div class="container">
							<!--<div class="footer-grids">
								<div class="col-md-3 footer-grid">
									<h4>About Real Homes</h4>
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
								</div>
								<div class="col-md-3 footer-grid">
									<h4>Recent Posts</h4>
									<ul>
										<li><a href="#">Lorem Post With Image Format</a></li>
										<li><a href="#">Example Video Blog Post</a></li>
										<li><a href="#">Example Post With Gallery Post </a></li>
										<li><a href="#">Example Video Blog Post</a></li>
										<li><a href="#">Lorem Post With Image Format</a></li>
										<li><a href="#">Example Video Blog Post</a></li>
									</ul>
								</div>
								<div class="col-md-3 footer-grid">
									<h4>Useful links</h4>
									<ul>
										<li><a href="terms.html">Terms of Use</a></li>
										<li><a href="privacy.html">Privacy Policy</a></li>
										<li><a href="contact.html">Contact Support </a></li>
										<li><a href="agents.html"> All Agents</a></li>
										<li><a href="blog.html">Blog</a></li>
										<li><a href="faqs.html">FAQs</a></li>
									</ul>
								</div>
								<div class="col-md-3 footer-grid">
									<h4>Get In Touch</h4>
									<p>8901 Marmora Road</p>
									<p>Glasgow, DO4 89GR.</p>
									<p>Freephone : +1 234 567 890</p>
									<p>Telephone : +1 234 567 890</p>
									<p>FAX : + 1 234 567 890</p>
									<p>E-mail : <a href="mailto:example@mail.com"> example@mail.com</a></p>
								</div>
							<div class="clearfix"> </div>
							</div>
							-->
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