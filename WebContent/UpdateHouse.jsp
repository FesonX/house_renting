<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="cn.bean.House"%>
<%@ page import="java.util.*"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul id="ltitle" style="clear: both;">
							<li>更新房源信息</li>
							<li><hr></li>
						</ul>
<form action="${pageContext.request.contextPath}/UpdateHouseServlet?hid=${param.hid}"
							method="post" enctype="multipart/form-data">
							<fieldset>
								<legend>房源信息</legend>
								 <label>具体地址：</label><input
									type="text" name="address" title="具体地址" id="address" /><br />
								<br /> <label>房屋面积：</label><input type="text" name="Area"
									title="房屋面积" id="Area" /><br /> <br /> <label>租金：</label><input
									type="text" name="Price" title="租金" id="Price" /><br /> <br />
								<dl>
									<dt>房子图片：</dt>
								</dl>
								<input type="file" name="file" />
								<p>
									<button class="btn" type="submit">提交</button>
								</p>
							</fieldset>
						</form>
</body>
</html>