<%@ page import="java.util.*,cn.bean.*" language="java" contentType="text/html; charset=UTF-8"
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
									<td>房源id</td>
									<td>房主id</td>
									<td>房主名字</td>
									<td>地址id</td>
									<td>城市</td>
									<td>描述</td>
									<td>房型</td>
									<td>具体地址</td>
									<td>面积</td>
									<td>图片</td>
									<td>租赁状态</td>
									<td>价格</td>
									<td>发布时间</td>
									<td>审核状态</td>
									<td>操作</td>
								</tr>
								<%   ArrayList houses = (ArrayList)request.getAttribute("houseList");
								   String landlord_name = (String)request.getAttribute("landlord_name");
								   String district_name = (String)request.getAttribute("district_name");
								   Random r = new Random();
								   int pic_id = r.nextInt(16)+1;
								   /*iterate over the arraylist*/
								   for (int i = 0; i < houses.size(); i++) { 
								       House a_house = (House)houses.get(i); %>
								       <tr><img src="images/<%out.print(pic_id); %>.jpg" class="img-responsive" alt="/"></tr>  
								       <tr style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
								       	   <td><% out.print(a_house.getHid()); %></td>
									       <td><% out.print(a_house.getLid()); %></td>
									       <td><% out.print(landlord_name); %></td>
									       <td><% out.print(a_house.getDid()); %></td>
									       <td><% out.print(district_name); %></td>
									       <td><% out.print(a_house.getTitle()); %></td>
									       <td><% out.print(a_house.getHouseType()); %></td>
									       <td><% out.print(a_house.getAddress()); %></td>
									       <td><% out.print(a_house.getArea()); %></td>
									       <td><% out.print(a_house.getPic()); %></td>
									       <td><% out.print(a_house.getStatus()); %></td>
									       <td><% out.print(a_house.getPrice()); %></td>
									       <td><% out.print(a_house.getIssueDate()); %></td>
									       <td><% out.print(a_house.getReviewed()); %></td>
									       <td>
									       <a class="" href="book.do?rid=<% out.print("13030645753"); %>&lid=<% out.print(a_house.getLid()); %>&hid=<% out.print(a_house.getHid()); %>">预约看房</a>
									       &nbsp;&nbsp;
									       <a class="" href="contract.do?rid=<% out.print("13030645753"); %>&lid=<% out.print(a_house.getLid()); %>&hid=<% out.print(a_house.getHid()); %>">租赁此房</a>
									       </td>
								       </tr>
								<% } %>
							</tbody>
						</table>
					</div>
	 </form>
</div>
</body>
</html>