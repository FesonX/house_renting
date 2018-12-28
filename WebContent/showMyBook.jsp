<%@ page import="java.util.ArrayList,cn.bean.*" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- provide an html table start tag -->
   <table style="border: 1px solid;">
   <!--get the collection from the attribute from appropriate scope (here, request) -->
   <%
   ArrayList books = (ArrayList)request.getAttribute("bookList"); 
   /*iterate over the arraylist*/
   for (int i = 0; i < books.size(); i++) { 
       Book a_book = (Book)books.get(i); %>  
       <!-- create an html table row -->
       <tr>
       <!-- create cells of row -->
       <td><a href="login.jsp"><% out.print(a_book.getBid()); %></a></td>
       <td><% out.print(a_book.getLid()); %></td>
       <td><% out.print(a_book.getHid()); %></td>
       <td><% out.print(a_book.getReviewed()); %></td>
       <td><% out.print(a_book.getBooktime()); %></td>
       <!-- close row -->
       </tr>
       <!-- close the loop -->
   <% } %>
   <!-- close table --> 
   </table>
</body>
</html>