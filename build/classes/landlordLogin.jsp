<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>贝壳租房房主登陆</title>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<style>
@charset "utf-8";
	/* track base Css */
.container {
	margin-top:15px;
}
.red {
	color:red;
}
#ehong-code-input {
	width:42px;
	letter-spacing:2px;
	margin:0px 8px 0px 0px;
}
.ehong-idcode-val {
	position:relative;
	padding:1px 4px 1px 4px;
	top:0px;
	*top:-3px;
	letter-spacing:4px;
	display:inline;
	cursor:pointer;
	font-size:16px;
	font-family:"Courier New",Courier,monospace;
	text-decoration:none;
	font-weight:bold;
}
.ehong-idcode-val0 {
	border:solid 1px #A4CDED;
	background-color:#ECFAFB;
}
.ehong-idcode-val1 {
	border:solid 1px #A4CDED;
	background-color:#FCEFCF;
}
.ehong-idcode-val2 {
	border:solid 1px #6C9;
	background-color:#D0F0DF;
}
.ehong-idcode-val3 {
	border:solid 1px #6C9;
	background-color:#DCDDD8;
}
.ehong-idcode-val4 {
	border:solid 1px #6C9;
	background-color:#F1DEFF;
}
.ehong-idcode-val5 {
	border:solid 1px #6C9;
	background-color:#ACE1F1;
}
.ehong-code-val-tip {
	font-size:12px;
	color:#1098EC;
	top:0px;
	*top:-3px;
	position:relative;
	margin:0px 0px 0px 4px;
	cursor:pointer;
}
</style>
</head>
<body>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<div class="container">
    <div class="col-md-6 col-md-offset-3">
        <form action="landlordLogin.do" class="" method="post" id="" onsubmit="return check()">

            <div class="form-group has-feedback">
                <label for="name">用户名</label>
                <div class="input-group">
                    <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                    <input id="name" name="name" class="form-control" placeholder="请输入用户名" maxlength="20" type="text">
                </div>

                <span style="color:red;display: none;" class="tips"></span>
                <span style="display: none;" class=" glyphicon glyphicon-remove form-control-feedback"></span>
                <span style="display: none;" class="glyphicon glyphicon-ok form-control-feedback"></span>
            </div>

            <div class="form-group has-feedback">
                <label for="password">密码</label>
                <div class="input-group">
                    <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                    <input id="password" name="password" class="form-control" placeholder="请输入密码" maxlength="20" type="password">
                </div>
                <span style="color:red;display: none;" class="tips"></span>
                <span style="display: none;" class="glyphicon glyphicon-remove form-control-feedback"></span>
                <span style="display: none;" class="glyphicon glyphicon-ok form-control-feedback"></span>
            </div>
            <div class="form-group">
                <button type="submit" class="form-control btn btn-primary">登&nbsp;&nbsp;陆</button>
            </div>
        </form>
    </div>
</div>


</body>
</html>