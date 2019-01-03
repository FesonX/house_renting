<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).ready(function(){
		var durationChangeEvent = $("#duration").change(function(){
	    	$("#price").val($("#pricePerMonth").val()*$("#duration").val());
	    	//alert($("#price").val());
    	});
});
</script>
</head>
<body>
<div class="result-title">
<h1>申请租房</h1>
</div>
<div class="result-content">
<div class="sidebar-title">
<%String rid = (String)request.getAttribute("rid");
  String lid = (String)request.getAttribute("lid");
  String hid = (String)request.getAttribute("hid");
  String landlord_name = (String)request.getAttribute("landlord_name");
  Float house_area = (Float)request.getAttribute("house_area");
  String house_type = (String)request.getAttribute("house_type");
  Float house_price = (Float)request.getAttribute("house_price");%>
        <form action="contract.do" method="post" id="myform">
		        <input class="common-text required" value="<%out.print(rid); %>" id="rid" name="rid" size="50" type="hidden">
		        <input class="common-text required" value="<%out.print(lid); %>" id="lid" name="lid" size="50" type="hidden">
		        <input class="common-text required" value="<%out.print(hid); %>" id="hid" name="hid" size="50" type="hidden">
		        <input class="common-text required" value="" id="price" name="price" size="50" type="hidden">
                    <table class="insert-tab" width="100%">
                        <tbody>
                        	<tr>
                                <th><i class="require-red">*</i>房主：</th>
                                <td><input class="common-text required" value="<%out.print(landlord_name); %>" size="50" type="text"></td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>面积：</th>
                                <td><input class="common-text" value="<%out.print(house_area); %>" size="50" type="text"></td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>房型：</th>
                                <td><input class="common-text" value="<%out.print(house_type); %>" size="50" type="text" ></td>
                            </tr>
                           <tr>
                                <th><i class="require-red">*</i>每月租金：</th>
                                <td><input class="common-text" value="<%out.print(house_price); %>" id="pricePerMonth" size="50" type="text"></td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>租赁月数：</th>
                                <td><input class="common-text" id="duration" name="duration" size="2" type="text"></td>
                            </tr>
							<tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" value="提交" type="submit">
                                    <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                                </td>
                            </tr>
                        </tbody>
                        </table>
                </form>
          </div>
          </div>
</body>
</html>