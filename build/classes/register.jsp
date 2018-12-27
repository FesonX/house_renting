<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>注册</title>

		<link rel="stylesheet" href="css/register.css" />
		<script src="js/jquery-1.4.2.js"></script>
	
		<script>
		  var a1=false;
		  var a2=false;
		  var a3=false;
		  var a4=false;
		  var a5=false;
		  var a6=false;
		  var a7=false;
		  var a8=false;		  
		  
		  function checkinput(inid,msgid,msg){
		  	
		  	if($(inid).val().length==0){
		  		$(msgid).html(msg);
		  	}else{
		  		$(msgid).html("");
		  		if(inid=="#uname"){		  			
			  		if($(inid).val()=="aaa"){
			  			$(msgid).html("×用户已存在");
			  		}else{
			  			$(msgid).html("");
			  			a1=true;
			  		}
		  		}else if(inid=="#pwd"){
		  			if(($(inid).val().length<6)||($(inid).val().length>15)){
		  				$(msgid).html("×密码长度为6~15位");
		  			}else{
		  				$(msgid).html("");
		  				a2=true;
		  			}
		  			
		  		}else if(inid=="#repwd"){
		  			if($(inid).val()!=$("#pwd").val()){
		  				$(msgid).html("×两次密码不一致");
		  			}else{
		  				$(msgid).html("");
		  				a3=true;
		  			}
		  		}else if(inid=="#rname"){
		  			a4=true;
		  		}else if(inid=="#phone"){
		  			var tt=/^1[34578]\d{9}$/;
		  			var phone=$(inid).val();
		  			var resu=tt.test(phone);
		  			if(!resu){
		  				$(msgid).html("×请输入正确的电话格式");
		  			}else{
		  				$(msgid).html("");
		  				a5=true;
		  			}
                }else if(inid=="#ide"){
                	a6=true;
                }else if(inid=="#qq"){
                	a7=true;
                }else{
                	a8=true;
                }
		  	}
		  }
		  function check(){
		  	if(a1&&a2&&a3&&a4&&a5&&a6&&a7&&a8){
		  	   return true;
		  	}else{
		  		$("#onsub").html("请按要求输入全部注册信息");
		  		return false;
		  		
		  	}
		  }
			
		</script>
    
	</head>

	<body style="background-color: #f6f6f6;">
		<div class="register">
			<div class="top">
			<a href="#">
		        <div style="width: 177px;height: 93px;background-image: url(img/logo.jpg); float: left;">
		               	
		        </div>
            </a>
               <div style="float: left;width: 300px;height:100px ; font-size:25px ;font-family:'宋体';color: gray;line-height: 150px;">
               	欢迎注册
               </div>
               <div class="" style="float: right;width: 300px;height:100px ;font-family:'宋体';font-size:15px ;line-height: 170px;">
               	<p style="float: right;">我已注册，<a href="login.jsp">直接登录</a></p>
               </div>
			</div>
			<div class="main">
				    <div style="font-size:35px ;font-family:'fixedsys';width: 100%;height: 60px;line-height: 60px; color: gray;">
				    	<center>注册账号</center>
				    </div>
				    <div id="onsub" style="width: 100%;height: 20px;text-align: center;color: red;font-size: 12px;">
				    	
				    </div>
					<div class="register_form">
						
						<form action="register.do" method="post" id="" onsubmit="return check()">
							
							<div class="">
								<input type="text" class="register_input" name="uname" id="uname" placeholder="用户名" onblur="checkinput('#uname','#uname_msg','×用户名不能为空')">
								<span id="uname_msg"></span>
								<hr />
							</div>
							<div class="">
								<input type="password" class="register_input" name="password" id="pwd" placeholder="密码(6~15位)" onblur="checkinput('#pwd','#pwd_msg','×密码不能为空')">
								<span id="pwd_msg"></span>
								<hr />
							</div>
							<div class="">
								<input type="password" class="register_input" name="repassword" id="repwd" placeholder="确认密码" onblur="checkinput('#repwd','#repwd_msg','×确认密码不能为空')">
								<span id="repwd_msg"></span>
								<hr />
							</div>
							
							<div class="">
								<input type="text" class="register_input" name="realname" id="rname" placeholder="真实姓名" onblur="checkinput('#rname','#rname_msg','×真实姓名不能为空')">
								<span id="rname_msg"></span>
								<hr />
							</div>
							<div class="">
								<input type="text" class="register_input" name="uid" id="phone" placeholder="电话" onblur="checkinput('#phone','#phone_msg','×电话不能为空')">
								<span id="phone_msg"></span>
								<hr />
							</div>
							<div  class="sex">
								<div id="" style="height: 13px;">
									
								</div>
								<input type="radio" id="" value="男" name="sex" checked="true"><span style="font-size: 15px;color: gray;">男</span>&nbsp;&nbsp;
								<input type="radio" id="" value="女" name="sex" ><span style="font-size: 15px;color: gray;">女</span>
								
							</div>
							<hr />
							<div class="">
								<input type="text" class="register_input" name="identify"  id="ide" placeholder="身份证号" onblur="checkinput('#ide','#ide_msg','×身份证不能为空')">
								<span id="ide_msg"></span>
								<hr />
							</div>
							<div class="">
								<input type="text" class="register_input" name="qq" id="qq" placeholder="QQ号码" onblur="checkinput('#qq','#qq_msg','×qq不能为空')">
								<span id="qq_msg"></span>
								<hr />
							</div>
							<div class="">
								<input type="text" class="register_input" name="wechat" id="wechat" placeholder="微信" onblur="checkinput('#wechat','#wechat_msg','×微信不能为空')">
								<span id="wechat_msg"></span>
								<hr />
							</div>
							<br />

							<button class="btn" type="submit">注册账号</button>
						</form>				
					</div>
			</div>
			<div class="footer">
             <br />
             <center>
             	
             <p style="color: gray;">Copyright  2018 18 www.fc2.com 东莞理 东莞理工紫禁之巅控股集团有限公司 版权所有 All Rights Reserved 粤ICP备171XXXXX号-X</p>
             </center>
			</div>
		</div>
	</body>

</html>