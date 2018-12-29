<%@ page import="java.util.ArrayList,cn.bean.*" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
<div class="result-title">
<h1>我的预约</h1>
</div>
	<form id="houseForm" name="houseForm"
		action=""
		method=post >
					<div class="">
						<table id=grid
							class="result-tab" width="100%">
							<tbody>
								<tr style="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none">
									<td>预订id</td>
									<td>房主id</td>
									<td>房源id</td>
									<td>审核状态</td>
									<td>预约日期</td>
								</tr>
								 <%
									   ArrayList books = (ArrayList)request.getAttribute("bookList"); 
									   /*iterate over the arraylist*/
									   for (int i = 0; i < books.size(); i++) { 
									       Book a_book = (Book)books.get(i); %>  
								       <tr style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
								       	   	   <td><% out.print(a_book.getBid()); %></td>
										       <td><% out.print(a_book.getLid()); %></td>
										       <td><% out.print(a_book.getHid()); %></td>
										       <td><% out.print(a_book.getReviewed()); %></td>
										       <td><% out.print(a_book.getBooktime()); %></td>
								       </tr>
								<% } %>
							</tbody>
						</table>
					</div>
	 </form>
</div>
</body>
</html>
