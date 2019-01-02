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
<h1>我的合同</h1>
</div>
	<form id="houseForm" name="houseForm"
		action=""
		method=post >
					<div class="">
						<table id=grid
							class="result-tab" width="100%">
							<tbody>
								<tr style="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none">
									<td>合同id</td>
									<td>租户id</td>
									<td>房主id</td>
									<td>房源id</td>
									<td>租借月数</td>
									<td>签约日期</td>
									<td>审核状态</td>
									<td>总价</td>
									<td>操作</td>
								</tr>
								 <%
									   ArrayList contracts = (ArrayList)request.getAttribute("contractList"); 
									   /*iterate over the arraylist*/
									   for (int i = 0; i < contracts.size(); i++) { 
									       Contract a_contract = (Contract)contracts.get(i); %>   
								       <tr style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
								       	   	   <td><% out.print(a_contract.getCid()); %></td>
										       <td><% out.print(a_contract.getRid()); %></td>
										       <td><% out.print(a_contract.getLid()); %></td>
										       <td><% out.print(a_contract.getHid()); %></td>
										       <td><% out.print(a_contract.getDuration()); %></td>
										       <td><% out.print(a_contract.getSigndate()); %></td>
										       <td><% out.print(a_contract.getReviewed()); %></td>
										       <td><% out.print(a_contract.getPrice()); %></td>
									       <td>
									       <a class="" href="#">付款</a>
									       &nbsp;&nbsp;
									       <a class="" href="#">撤销</a>
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