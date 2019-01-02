<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>贝壳租房房主注册</title>
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
        <form action="renterRegister.do" class="" method="post" id="" onsubmit="return check()">

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

            <div class="form-group has-feedback">
                <label for="passwordConfirm">确认密码</label>
                <div class="input-group">
                    <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                    <input id="passwordConfirm" class="form-control" placeholder="请再次输入密码" maxlength="20" type="password">
                </div>
                <span style="color:red;display: none;" class="tips"></span>
                <span style="display: none;" class="glyphicon glyphicon-remove form-control-feedback"></span>
                <span style="display: none;" class="glyphicon glyphicon-ok form-control-feedback"></span>
            </div>

			<div class="form-group has-feedback">
                <label for="username">真实姓名</label>
                <div class="input-group">
                    <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                    <input id="realname" name="realname" class="form-control" placeholder="真实姓名" maxlength="20" type="text">
                </div>

                <span style="color:red;display: none;" class="tips"></span>
                <span style="display: none;" class=" glyphicon glyphicon-remove form-control-feedback"></span>
                <span style="display: none;" class="glyphicon glyphicon-ok form-control-feedback"></span>
            </div>
            
            <div class="form-group has-feedback">
                <label for="gender">性别</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="btn-group" data-toggle="buttons">
        			<label  class="btn btn-info">
            			<input type="radio" name="gender" value="M"> 男&nbsp;&nbsp;&nbsp;&nbsp;
        			</label>
        			<label  class="btn btn-info">
            			<input type="radio" name="gender" value="F"> 女&nbsp;&nbsp;&nbsp;&nbsp;
        			</label>
        		</div>
            </div>
            
            <div class="form-group has-feedback">
                <label for="didname">区域</label>
                <div class="input-group">
                    <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                    <select name="didname" class="form-control">
					  <option value="广州" selected='selected'>广州</option>
					  <option value="深圳">深圳</option>
					  <option value="北京">北京</option>
					  <option value="上海">上海</option>
					  <option value="杭州">杭州</option>
					  <option value="成都">成都</option>
					  <option value="东莞">东莞</option>
					</select>
                </div>
                <span style="color:red;display: none;" class="tips"></span>
                <span style="display: none;" class=" glyphicon glyphicon-remove form-control-feedback"></span>
                <span style="display: none;" class="glyphicon glyphicon-ok form-control-feedback"></span>
            </div>

            <div class="row">
                <div class="col-xs-7">
                    <div class="form-group has-feedback">
                        <label for="idcode-btn">验证码</label>
                        <div class="input-group">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-qrcode"></span></span>
                            <input id="idcode-btn" name="code" class="form-control" placeholder="请输入验证码" maxlength="4" type="text">
                        </div>
                        <span style="color:red;display: none;" id="yanzhengma" class="tips"></span>
                        <span style="display: none;" class="glyphicon glyphicon-remove form-control-feedback"></span>
                        <span style="display: none;" class="glyphicon glyphicon-ok form-control-feedback"></span>
                    </div>
                </div>
                <div class="col-xs-5" style="padding-top: 30px">
                    <div id="idcode" style="background: transparent;"></div>
                </div>
            </div>

            <div class="form-group has-feedback">
                <label for="lid">手机号码</label>
                <div class="input-group">
                    <span class="input-group-addon"><span class="glyphicon glyphicon-phone"></span></span>
                    <input id="rid" name="rid" class="form-control" placeholder="请输入手机号码" maxlength="11" type="text">
                </div>
                <span style="color:red;display: none;" id="shouji" class="tips"></span>
                <span style="display: none;" class="glyphicon glyphicon-remove form-control-feedback"></span>
                <span style="display: none;" class="glyphicon glyphicon-ok form-control-feedback"></span>
            </div>
            
            <div class="form-group has-feedback">
                <label for="username">QQ</label>
                <div class="input-group">
                    <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                    <input id="qq" name="qq" class="form-control" placeholder="请输入QQ号" maxlength="20" type="text">
                </div>

                <span style="color:red;display: none;" class="tips"></span>
                <span style="display: none;" class=" glyphicon glyphicon-remove form-control-feedback"></span>
                <span style="display: none;" class="glyphicon glyphicon-ok form-control-feedback"></span>
            </div>
            
            <div class="form-group has-feedback">
                <label for="username">Wechat</label>
                <div class="input-group">
                    <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                    <input id="Wechat" name="Wechat" class="form-control" placeholder="请输入微信号" maxlength="20" type="text">
                </div>
                <span style="color:red;display: none;" class="tips"></span>
                <span style="display: none;" class=" glyphicon glyphicon-remove form-control-feedback"></span>
                <span style="display: none;" class="glyphicon glyphicon-ok form-control-feedback"></span>
            </div>

            

            <div class="form-group">
                <!-- <input class="form-control btn btn-primary" id="submit" value="立&nbsp;&nbsp;即&nbsp;&nbsp;注&nbsp;&nbsp;册" type="submit"> -->
                <button type="submit" class="form-control btn btn-primary">立&nbsp;&nbsp;即&nbsp;&nbsp;注&nbsp;&nbsp;册</button>
            </div>

            <div class="form-group">
                <input value="重置" id="reset" class="form-control btn btn-danger" type="reset">
            </div>
        </form>
    </div>
</div>

<script>
var settings = {
    e: 'idcode',
    codeType: {
        name: 'follow',
        len: 4
    }, //len是修改验证码长度的
    codeTip: '换个验证码?',
    inputID: 'idcode-btn' //验证元素的ID
};
var _set = {
    storeLable: 'codeval',
    store: '#ehong-code-input',
    codeval: '#ehong-code'
}
$.idcode = {
    getCode: function(option) {
        _commSetting(option);
        return _storeData(_set.storeLable, null);
    },
    setCode: function(option) {
        _commSetting(option);
        _setCodeStyle("#" + settings.e, settings.codeType.name, settings.codeType.len);
    },
    validateCode: function(option) {
        _commSetting(option);
        var inputV;
        if (settings.inputID) {
            inputV = $('#' + settings.inputID).val();
        } else {
            inputV = $(_set.store).val();
        }
        if (inputV.toUpperCase() == _storeData(_set.storeLable, null).toUpperCase()) { //修改的不区分大小写
            return true;
        } else {
            _setCodeStyle("#" + settings.e, settings.codeType.name, settings.codeType.len);
            return false;
        }
    }
};
function _commSetting(option) {
    $.extend(settings, option);
}
function _storeData(dataLabel, data) {
    var store = $(_set.codeval).get(0);
    if (data) {
        $.data(store, dataLabel, data);
    } else {
        return $.data(store, dataLabel);
    }
}
function _setCodeStyle(eid, codeType, codeLength) {
    var codeObj = _createCode(settings.codeType.name, settings.codeType.len);
    var randNum = Math.floor(Math.random() * 6);
    var htmlCode = ''
    if (!settings.inputID) {
        htmlCode = '<span><input id="ehong-code-input" type="text" maxlength="4" /></span>';
    }
    htmlCode += '<div id="ehong-code" class="ehong-idcode-val ehong-idcode-val';
    htmlCode += String(randNum);
    htmlCode += '" href="#" onblur="return false" onfocus="return false" oncontextmenu="return false" onclick="$.idcode.setCode()">' + _setStyle(codeObj) + '</div>' + '<span id="ehong-code-tip-ck" class="ehong-code-val-tip" onclick="$.idcode.setCode()">' + settings.codeTip + '</span>';
    $(eid).html(htmlCode);
    _storeData(_set.storeLable, codeObj);
}
function _setStyle(codeObj) {
    var fnCodeObj = new Array();
    var col = new Array('#BF0C43', '#E69A2A', '#707F02', '#18975F', '#BC3087', '#73C841', '#780320', '#90719B', '#1F72D8', '#D6A03C', '#6B486E', '#243F5F', '#16BDB5');
    var charIndex;
    for (var i = 0; i < codeObj.length; i++) {
        charIndex = Math.floor(Math.random() * col.length);
        fnCodeObj.push('<font color="' + col[charIndex] + '">' + codeObj.charAt(i) + '</font>');
    }
    return fnCodeObj.join('');
}
function _createCode(codeType, codeLength) {
    var codeObj;
    if (codeType == 'follow') {
        codeObj = _createCodeFollow(codeLength);
    } else if (codeType == 'calc') {
        codeObj = _createCodeCalc(codeLength);
    } else {
        codeObj = "";
    }
    return codeObj;
}
function _createCodeCalc(codeLength) {
    var code1, code2, codeResult;
    var selectChar = new Array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9');
    var charIndex;
    for (var i = 0; i < codeLength; i++) {
        charIndex = Math.floor(Math.random() * selectChar.length);
        code1 += selectChar[charIndex];
        charIndex = Math.floor(Math.random() * selectChar.length);
        code2 += selectChar[charIndex];
    }
    return [parseInt(code1), parseInt(code2), parseInt(code1) + parseInt(code2)];
}
function _createCodeFollow(codeLength) {
    var code = "";
    var selectChar = new Array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
    for (var i = 0; i < codeLength; i++) {
        var charIndex = Math.floor(Math.random() * selectChar.length);
        if (charIndex % 2 == 0) {
            code += selectChar[charIndex].toLowerCase();
        } else {
            code += selectChar[charIndex];
        }
    }
    return code;
}
var regUsername = /^[a-zA-Z_][a-zA-Z0-9_]{4,19}$/;
var regPasswordSpecial = /[~!@#%&=;':",./<>_\}\]\-\$\(\)\*\+\.\[\?\\\^\{\|]/;
var regPasswordAlpha = /[a-zA-Z]/;
var regPasswordNum = /[0-9]/;
var password;
var check = [false, false, false, false, false, false];
//校验成功函数
function success(Obj, counter) {
	Obj.parent().parent().removeClass('has-error').addClass('has-success');
	$('.glyphicon-ok').eq(counter).show();
	$('.glyphicon-remove').eq(counter).hide();
    check[counter] = true;
		$('.tips').eq(counter).hide();
}
// 校验失败函数
function fail(Obj, counter, msg) {
    Obj.parent().parent().removeClass('has-success').addClass('has-error');
    $('.glyphicon-remove').eq(counter).show();
    $('.glyphicon-ok').eq(counter).hide();
		$('.tips').eq(counter).text(msg).show();
    check[counter] = false;
}
// 用户名匹配
$('.container').find('input').eq(0).change(function() {
    if (regUsername.test($(this).val())) {
        success($(this), 0);
    } else if ($(this).val().length < 5) {
        fail($(this), 0, '用户名太短，不能少于5个字符');
    } else {
        fail($(this), 0, '用户名只能为英文数字和下划线,且不能以数字开头')
    }
});
// 真实姓名匹配
$('.container').find('input').eq(3).change(function() {
    if ($(this).val().length < 1) {
        fail($(this), 3, '姓名不能为空');
    }else{
	success($(this), 3);
	}
});
// 密码匹配
// 匹配字母、数字、特殊字符至少两种的函数
function atLeastTwo(password) {
    var a = regPasswordSpecial.test(password) ? 1 : 0;
    var b = regPasswordAlpha.test(password) ? 1 : 0;
    var c = regPasswordNum.test(password) ? 1 : 0;
    return a + b + c;
}
$('.container').find('input').eq(1).change(function() {
    password = $(this).val();
    if ($(this).val().length < 8) {
        fail($(this), 1, '密码太短，不能少于8个字符');
    } else {
        if (atLeastTwo($(this).val()) < 2) {
            fail($(this), 1, '密码中至少包含字母、数字、特殊字符的两种')
        } else {
            success($(this), 1);
        }
    }
});
// 再次输入密码校验
$('.container').find('input').eq(2).change(function() {
    if ($(this).val() == password) {
        success($(this), 2);
    } else {
		
        fail($(this), 2, '两次输入的密码不一致');
    }
});
// 验证码
$.idcode.setCode();
$('.container').find('input').eq(6).change(function() {
    var IsBy = $.idcode.validateCode();
    if (IsBy) {
        success($(this), 5);
    } else {
		console.log("b")
        fail($(this), 5, '验证码输入错误');
    }
});
// 手机号码
var regPhoneNum = /^[0-9]{11}$/
$('.container').find('input').eq(7).change(function() {
    if (regPhoneNum.test($(this).val())) {
        success($(this), 6);
    } else {
		console.log("b")
        fail($(this), 6, '手机号码只能为11位数字');
    }
});
$('#submit').click(function(e) {
    if (!check.every(function(value) {
            return value == true
        })) {
        e.preventDefault();
        for (key in check) {
            if (!check[key]) {
                $('.container').find('input').eq(key).parent().parent().removeClass('has-success').addClass('has-error')
            }
        }
    }
});
$('#reset').click(function() {
    $('input').slice(0, 6).parent().parent().removeClass('has-error has-success');
    $('.tips').hide();
    $('.glyphicon-ok').hide();
    $('.glyphicon-remove').hide();
    check = [false, false, false, false, false, false, ];
});
</script>

</body>
</html>