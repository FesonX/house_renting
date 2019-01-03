<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="cn.bean.Book"%>
<%@ page import="java.util.*"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<!-- 预约看房信息 -->
		<c:if test="${booklistnull == 1}" var="flag">该房暂未被预约看房</c:if>
		<c:if test="${not flag}">
			<c:forEach var="book" items="${requestScope.booklist }">
				<div style="width: 95%; padding-bottom: 100px;">
					<ul id="bookli" style="list-style: none;">
						<li>预约租客：</li>
						<li>${book.rid }</li>
						<li>预约时间：</li>
						<li>${book.booktime }</li>
						<li>审核状态：</li>
						<c:if test="${book.reviewed == 1}">
							<li>已接受预约</li>
							<li><a href="BookReviewed.do?bid=${book.bid}&reviewed=0">取消预约</a></li>
						</c:if>
						<c:if test="${book.reviewed == 0}">
							<li><a href="BookReviewed.do?bid=${book.bid}&reviewed=1">接受预约</a>
						</c:if>
					</ul>
				</div>
			</c:forEach>
		</c:if>
		<!-- 预约看房信息 -->
		<!-- 租房信息 -->
		<div>
		<c:if test="${contractlistnull == 1}" var="flag">暂未有人提起租房申请</c:if>
		<c:if test="${not flag}">
			<c:forEach var="contract" items="${requestScope.contractlist }">
				<div style="width: 95%; padding-bottom: 100px;">
					<ul id="bookli" style="list-style: none;">
						<li>租客：</li>
						<li>${contract.rid }</li>
						<li>租赁时间：</li>
						<li>${contract.duration }</li>
						<li>审核状态：</li>
						<c:if test="${contract.reviewed == 1}">
							<li>已接受租赁</li>
						</c:if>
						<c:if test="${contract.reviewed == 0}">
							<li><a href="ContractReviewed.do?cid=${contract.cid}">接受租赁</a>
						</c:if>
					</ul>
				</div>
			</c:forEach>
		</c:if>
		</div>
		<!-- 租房信息 -->
	</div>
</body>
</html>