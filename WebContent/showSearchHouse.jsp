<%@ page import="java.util.ArrayList,cn.bean.*" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
<div>
<div class="result-title">
<h1>房源列表</h1>
</div>
	<form id="houseForm" name="houseForm"
		action=""
		method=post >
					<div class="">
						<table id=grid
							class="result-tab" width="100%">
							<tbody>
								<tr style="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none">
									<td>图片</td>
									<td>描述</td>
									<td>房型</td>
									<td>价格</td>
									<td>地址</td>
									<td>面积</td>
									<td>操作</td>
								</tr>
								<% ArrayList houses = (ArrayList)request.getAttribute("houseList");
								   String district = (String)request.getAttribute("district");
								   /*iterate over the arraylist*/ for (int i = 0; i < houses.size(); i++) { 
								       House a_house = (House)houses.get(i); %>  
								       <tr style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
								       <td><% out.print(a_house.getPic()); %></td>
								       <td><% out.print(a_house.getTitle()); %></td>
								       <td><% out.print(a_house.getHouseType()); %></td>
								       <td><% out.print(a_house.getPrice()); %></td>
								       <td><% out.print(a_house.getAddress()); %></td>
								       <td><% out.print(a_house.getArea()); %></td>
								       <td><a class="" href="query.do?method=showOneHouse&hid=<% out.print(a_house.getHid()); %>">详细信息</a></td>
								       </tr>
								<% } %>
							</tbody>
						</table>
						<ul class="pagination">
						 <% int pageNum = (Integer)request.getAttribute("pageNum");
						 	int nowPage = (Integer)request.getAttribute("nowPage");
						 %>
						  	<%if(nowPage>0){%>
						  <li><a href="query.do?method=searchHouseByDid&district=<% out.print(district);%>&nowPage=<%out.print(nowPage-1);%>">«</a></li>
						  	<%}%>
						  	
						  	<%for (int i = 0; i < pageNum; i++) { %>
						  <li><a <%if(i==nowPage)out.print("class='active' "); %> href="query.do?method=searchHouseByDid&district=<%out.print(district); %>&nowPage=<%out.print(i);%>"><%out.print(i+1); %></a></li>
						  	<% } %>
						  	
						  	<%if(nowPage<pageNum-1){%>
						  <li><a href="query.do?method=searchHouseByDid&district=<%out.print(district); %>&nowPage=<%out.print(nowPage+1);%>">»</a></li>
						  	<%}%>
						</ul>
					</div>
	 </form>
</div>
</body>
</html>