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
   ArrayList houses = (ArrayList)request.getAttribute("houseList"); 
   /*iterate over the arraylist*/
   for (int i = 0; i < houses.size(); i++) { 
       House a_house = (House)houses.get(i); %>  
       <!-- create an html table row -->
       <tr>
       <!-- create cells of row -->
       <td><% out.print(a_house.getHid()); %></td>
       <td><% out.print(a_house.getLid()); %></td>
       <td><% out.print(a_house.getDid()); %></td>
       <td><% out.print(a_house.getTitle()); %></td>
       <td><% out.print(a_house.getHouseType()); %></td>
       <td><% out.print(a_house.getAddress()); %></td>
       <td><% out.print(a_house.getArea()); %></a></td>
       <td><% out.print(a_house.getPic()); %></td>
       <td><% out.print(a_house.getStatus()); %></a></td>
       <td><% out.print(a_house.getPrice()); %></td>
       <td><% out.print(a_house.getIssueDate()); %></td>
       <td><% out.print(a_house.getReviewed()); %></td>
       <!-- close row -->
       </tr>
       <!-- close the loop -->
   <% } %>
   <!-- close table --> 
   </table>
</body>
</html>