<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<script>
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
</script>
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
											<a href="UpdateHouse.jsp?hid=${house.hid}">修改</a>&nbsp;&nbsp;<a
												href="deleteHouse.do?hid=${house.hid}">删除</a>&nbsp;&nbsp;
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
								 <label>所属区域：</label> <select
									name="did" id="did">
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
								</select> <br /> <br /> <label>相应评价：</label><input type="text"
									name="title" title="相应评价" id="title" /><br /> <br /> <label>具体地址：</label><input
									type="text" name="address" title="具体地址" id="address" /><br />
								<br /> <label>房屋面积：</label><input type="text" name="Area"
									title="房屋面积" id="Area" /><br /> <br /> <label>租金：</label><input
									type="text" name="Price" title="租金" id="Price" /><br /> <br />
								<label>户型：</label><select name="houseType" id="houseType">
									<option value="1室1厅">1室1厅</option>
									<option value="2室1厅">2室1厅</option>
									<option value="3室1厅">3室1厅</option>
									<option value="4室1厅">4室1厅</option>
									<option value="2室2厅">2室2厅</option>
									<option value="3室2厅">3室2厅</option>
									<option value="4室2厅">4室2厅</option>
									<option value="1室0厅">1室0厅</option>

								</select><br /> <br />
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
</html>