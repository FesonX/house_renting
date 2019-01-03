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
							<!-- <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>Email: <a href="">690886586@qq.com</a> </li> -->
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
									<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>用户中心 <a href="#"></a> </li>
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
									<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>用户中心 <a href="#"></a> </li>
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
								<li><a href="query.do?method=showAllHouse">租房</a></li>
							</ul>
							<div class="phone">
							<span><i class="glyphicon glyphicon-phone" aria-hidden="true"></i>15119419358</span>
							</div>
							<div class="clearfix"></div>
						</div>
					</nav>
				</div>
			</div>
		<!---header--->		
		<!---banner--->
		<div class="slider">
			<div class="callbacks_container">
				<ul class="rslides" id="slider">
					<div class="slid banner1">
						  <div class="caption">
								<h3>深圳南山花园社区，南北通透</h3>
								<p>南山花园对面是阳光科创商圈，近南山村市场，周末与朋友小憩聊天超方便，还有清吧等。离蛇口沃尔玛，来福士，海雅百货，茂业，海岸城都超级近，平常想逛街一口气都能去这几个地方买到心仪的东西。公交站有城市山林东/西，南山村等，地铁临近南山站。</p>
								<a href="#" class="button">查看详情</a>
						  </div>
					</div>
					<div class="slid banner2">	
						  <div class="caption">
								<h3>深圳龙悦居四期，坐北朝南</h3>
								<p>龙悦居北邻深圳北站，距梅林关约3公里，离深圳市中心9.3公里。是深圳市2010年开工建设的“十大民生工程”之一，是深圳市2011年度重大项目。龙悦居由1-3层地下室、2层商业区、1栋3层幼儿园及11栋33-35层高层住宅组成，是集商业、幼儿园、住宅为一体的保障性住房。</p>
								<a href="#" class="button">查看详情</a>
						  </div>
					</div>
					<div class="slid banner3">	
						<div class="caption">
							<h3>深圳南海中心，风水宝地</h3>
							<p>南海中心大厦位于深圳市东门中路繁华商业中心，大厦由商务公寓、购物商场组成，另有两层地下停车场，总占地面积5523平方米，总建筑面积52045平方米。南海中心大厦是东门地界早期最豪华的高级商住豪宅，集商住、购物、美食广场于一体，拥有一流的硬件设备设施。</p>
							<a href="#" class="button">查看详情</a>
						</div>
					</div>
				</ul>
			</div>
		</div>
<!---banner--->
	<div class="content">
		<div class="place-section">
			<div class="container">
				<h2>寻找房源</h2>
				<form action="query.do" method="get">
				<input type="hidden" name="method" value="searchHouseByDid">
				<div class="place-grids">
					<div class="col-md-4 place-grid">
						<h5>所在城市</h5>
						<select class="sel" name="district">
						<option value="">所有城市</option>
						<option value="guangzhou">广州</option>
						<option value="shenzhen">深圳</option>
						<option value="beijing">北京</option>
						<option value="shanghai">上海</option>
						<option value="hangzhou">杭州</option>
						<option value="chengdu">成都</option>
						<option value="dongguan">东莞</option>
						</select>
					</div>
					<div class="col-md-4 search">
					<input type="submit" value="搜索">
					</div>
					<div class="clearfix"></div>
				</div>
				</form>
			</div>
		</div>
			<div class="friend-agent">
				<div class="container">
					<div class="friend-grids">
						<div class="col-md-4 friend-grid">
							<img src="images/p.png">
							<h4>房源遍地</h4>
							<p>集全国各大城市房源于一体，随时随地任性找房。服务承诺让您安心，庞大的租房数据让您感受贴心漫漫找房路，我们努力为您想更多。</p>
						</div>
						<div class="col-md-4 friend-grid">
							<img src="images/p1.png">
							<h4>实地考察</h4>
							<p>租房难，房租贵，房子现如今已经成为了我们生活中的必须品。实地考察，是我们审核房源最直接的方式，通过我们您可以轻松挑选房子。</p>
						</div>
						<div class="col-md-4 friend-grid">
							<img src="images/p2.png">
							<h4>优质房源</h4>
							<p>租房，就上贝壳租房。海量公寓直租房源，拎包入住，零中介费。预约后直接联系公寓管理员看房，一键导航，全面提升租房体验，让租房更简单！</p>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="offering">
				<div class="container">
					<h3>优质房源推荐</h3>
					<div class="offer-grids">
						<div class="col-md-6 offer-grid">
							<div class="offer-grid1">
								<h4><a href="single.html" style="font-weight:bolder;">深圳罗湖置地逸轩</a></h4>
								<div class="offer1">
									<div class="offer-left">
										<a href="single.html" class="mask"><img src="images/p3.jpg" class="img-responsive zoom-img" alt=""/></a>
									</div>
									<div class="offer-right">
										<h5><label>￥</label>1500/两室一厅</h5>
										<p>房间采光通风超好，大落地窗，还有阳台，空调，热水器，液晶电视，双人床，衣柜，沙发，茶几，宽带，免费网络，遮光防强光高档窗帘独立厨房卫生间。</p>
										<a href="single.html"class="button1">查看详情</a>
									</div>
										<div class="clearfix"></div>
								</div>
							</div>
						</div>
							<div class="col-md-6 offer-grid">
								<div class="offer-grid1">
									<h4><a href="single.html" style="font-weight:bolder;">深圳南山集悦城</a></h4>
									<div class="offer1">
										<div class="offer-left">
											<a href="single.html" class="mask"><img src="images/p4.jpg" class="img-responsive zoom-img" alt=""/></a>
									</div>
										<div class="offer-right">
											<h5><label>￥</label>2200/一室一厅</h5>
											<p>公寓紧邻地铁站，距离老街地铁站300米，交通非常方便。出门就是东门步行街，购物出行都极其方便。所有的房间都是精美装修，家私家电全齐 ，拎包入住即可。 </p>
											<a href="single.html"class="button1">查看详情</a>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						<div class="clearfix"></div>
					</div>
					<div class="offer-grids">
						<div class="col-md-6 offer-grid">
							<div class="offer-grid1">
								<h4><a href="single.html" style="font-weight:bolder;">深圳南山魔方公寓</a></h4>
								<div class="offer1">
									<div class="offer-left">
										<a href="single.html" class="mask"><img src="images/p5.jpg" class="img-responsive zoom-img" alt=""/></a>
									</div>
									<div class="offer-right">
										<h5><label>￥</label>3000/三室一厅</h5>
										<p>室内配备空调，电视，冰箱，洗衣机等品牌家电，拥有带阳台、带飘窗等，周边汇聚岁宝百货、华城百货等等，临近白石洲、华侨城等。</p>
										<a href="single.html"class="button1">查看详情</a>
									</div>
										<div class="clearfix"></div>
								</div>
							</div>
						</div>
							<div class="col-md-6 offer-grid">
								<div class="offer-grid1">
									<h4><a href="single.html" style="font-weight:bolder;">深圳宝安庭苑公寓</a></h4>
									<div class="offer1">
										<div class="offer-left">
											<a href="single.html" class="mask"><img src="images/p6.jpg" class="img-responsive zoom-img" alt=""/></a>
									</div>
										<div class="offer-right">
											<h5><label>￥</label>4500/三室两厅</h5>
											<p>家电家私配置齐全，可拎包入住，有阳台，有电梯，可养宠物，可短租。双人床、沙发、WiFi、空调、洗衣机、双层冰箱、24h热水、电磁炉、油烟机等全新配备。</p>
											<a href="single.html"class="button1">查看详情</a>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						<div class="clearfix"></div>
					</div>
					<div class="offer-grids">
						<div class="col-md-6 offer-grid">
							<div class="offer-grid1">
								<h4><a href="#" style="font-weight:bolder;">深圳龙华窝趣轻社区</a></h4>
								<div class="offer1">
									<div class="offer-left">
										<a href="single.html" class="mask"><img src="images/p7.jpg" class="img-responsive zoom-img" alt=""/></a>
									</div>
									<div class="offer-right">
										<h5><label>￥</label>2200/一室一厅</h5>
										<p>社区周边生活便利，下楼即享受24小时品牌连锁便利店；社区房间风格多样，马卡龙、格调北欧、自由工业任你选，给您打造一个全新的住房体验。</p>
										<a href="single.html"class="button1">查看详情</a>
									</div>
										<div class="clearfix"></div>
								</div>
							</div>
						</div>
							<div class="col-md-6 offer-grid">
								<div class="offer-grid1">
									<h4><a href="single.html" style="font-weight:bolder;">深圳福田城家公寓</a></h4>
									<div class="offer1">
										<div class="offer-left">
											<a href="single.html" class="mask"><img src="images/p8.jpg" class="img-responsive zoom-img" alt=""/></a>
									</div>
										<div class="offer-right">
											<h5><label>￥</label>8500/四室两厅</h5>
											<p>公寓位于红岭路与八卦三路十字路口，距离红岭北A出口100米，周边体育中心，沃尔玛，万象城，租期灵活，房间配置齐全，你想到的全都有，满足您所有的住宿需求。</p>
											<a href="single.html"class="button1">查看详情</a>	
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<!---Featured Properties--->
				<div class="feature-section">
					<div class="container">
						<h3>高档别墅出租</h3>
						<div class="feature-grids">
							<div class="col-md-3 feature-grid">
								<img src="images/f1.jpg" class="img-responsive" alt="/">
								<h5 style="font-style:normal;font-weight:bolder;">新世界名镌</h5>
								<p>阔绰客厅开间，约4.1米宽阔开间客厅个，65寸家庭影院、8座家族沙发自由摆放，彰显非凡品味。 <a href="#">查看详情</a></p>
								<span>￥35000/月</span>
							</div>
							<div class="col-md-3 feature-grid">
								<img src="images/f2.jpg" class="img-responsive" alt="/">
								<h5 style="font-style:normal;font-weight:bolder;">承翰半山海</h5>
								<p>传世大宅，尊荣5房布局，四世同堂，尽显大家风范。舒居主卧套房，全景奢阔飘窗，美景尽收眼底。 <a href="#">查看详情</a></p>
								<span>￥27500/月</span>
							</div>
							<div class="col-md-3 feature-grid">
								<img src="images/f3.jpg" class="img-responsive" alt="/">
								<h5 style="font-style:normal;font-weight:bolder;">半山半海</h5>
								<p>奢阔观景阳台，观景阳台宽大约7.1米，一家人的第二会客厅，雍容尺度，阅览人生美景。 <a href="#">查看详情</a></p>
								<span>￥40000/月</span>
							</div>
							<div class="col-md-3 feature-grid">
								<img src="images/f4.jpg" class="img-responsive" alt="/">
								<h5 style="font-style:normal;font-weight:bolder;">高档泳池别墅</h5>
								<p>高档的别墅泳池庭院，放上遮阳伞和休闲躺椅你就可以美美的享受你的私家别墅泳池了。 <a href="#">查看详情</a></p>
								<span>￥50000/月</span>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			<!---testimonials--->
					<div class="testimonials">
						<div class="container">
							<h3>房客</h3>
							<span></span>
							<div id="owl-demo" class="owl-carousel">
								<div class="item">
									<div class="col-md-2 testmonial-img">
										<img src="images/t1.png" class="img-responsive" alt=""/>
									</div>
									<div class="col-md-10 testmonial-text">
										<p>真实存在，真实在售，真实价格，真实图片！贝壳郑重向用户承诺：真实房源，假一赔百元！</p>
										<h4><a href="#">许维恭</a></h4>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="item">
									<div class="col-md-2 testmonial-img">
										<img src="images/t3.png" class="img-responsive" alt=""/>
									</div>
									<div class="col-md-10 testmonial-text">
										<p>喜欢贝壳租房，贝壳租房比自己去外面找房好多了。买房是不可能买房的，这辈子都不可能买房的，就是租房这种东西才能维持生活。
										进出租房就像回家一样，卧室大床又大，室内干净卫生空气又好，周围环境又好，超喜欢住在里面。</p>
										<h4><a href="#">张宁 </a></h4>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</div>
		</div>
		<!---testmonials--->
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