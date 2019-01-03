<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>租赁合同填写</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script>
$(document).ready(function(){
		var durationChangeEvent = $("#duration").change(function(){
	    	$("#price").val($("#pricePerMonth").val()*$("#duration").val());
	    	//alert($("#price").val());
    	});
});
</script>
<script type="text/javascript">
$(function () {
    $('.button-checkbox').each(function () {

        // Settings
        var $widget = $(this),
            $button = $widget.find('button'),
            $checkbox = $widget.find('input:checkbox'),
            color = $button.data('color'),
            settings = {
                on: {
                    icon: 'glyphicon glyphicon-check'
                },
                off: {
                    icon: 'glyphicon glyphicon-unchecked'
                }
            };

        // Event Handlers
        $button.on('click', function () {
            $checkbox.prop('checked', !$checkbox.is(':checked'));
            $checkbox.triggerHandler('change');
            updateDisplay();
        });
        $checkbox.on('change', function () {
            updateDisplay();
        });

        // Actions
        function updateDisplay() {
            var isChecked = $checkbox.is(':checked');

            // Set the button's state
            $button.data('state', (isChecked) ? "on" : "off");

            // Set the button's icon
            $button.find('.state-icon')
                .removeClass()
                .addClass('state-icon ' + settings[$button.data('state')].icon);

            // Update the button's color
            if (isChecked) {
                $button
                    .removeClass('btn-default')
                    .addClass('btn-' + color + ' active');
            }
            else {
                $button
                    .removeClass('btn-' + color + ' active')
                    .addClass('btn-default');
            }
        }

        // Initialization
        function init() {

            updateDisplay();

            // Inject the icon if applicable
            if ($button.find('.state-icon').length == 0) {
                $button.prepend('<i class="state-icon ' + settings[$button.data('state')].icon + '"></i>');
            }
        }
        init();
    });
});
</script>
<link href="css/contract.css" rel="stylesheet">
<!------ Include the above in your HEAD tag ---------->
<body>
<%String rid = (String)request.getAttribute("rid");
  String lid = (String)request.getAttribute("lid");
  String hid = (String)request.getAttribute("hid");
  String landlord_name = (String)request.getAttribute("landlord_name");
  Float house_area = (Float)request.getAttribute("house_area");
  String house_type = (String)request.getAttribute("house_type");
  Float house_price = (Float)request.getAttribute("house_price");%>
<div class="container">
<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		<form role="form" action="contract.do" method="post">
			<input class="common-text required" value="<%out.print(rid); %>" id="rid" name="rid" size="50" type="hidden">
	        <input class="common-text required" value="<%out.print(lid); %>" id="lid" name="lid" size="50" type="hidden">
	        <input class="common-text required" value="<%out.print(hid); %>" id="hid" name="hid" size="50" type="hidden">
			<h2>${renter.name },你好! 请填写租赁合同 <small>🐚贝壳租房</small></h2>
			<hr class="colorgraph">
			<!-- Landlord name -->
			<div class="form-group">
				<input type="text" name="rid" id="display_name" readonly 
				class="form-control input-lg" placeholder="房主姓名" tabindex="3" value="<%=landlord_name %>">
			</div>
			
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="text" name="area" id="password" readonly 
						class="form-control input-lg" placeholder="房屋面积" tabindex="5" value="<%=house_area %>">
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="text" name="houseType" id="password" readonly
						class="form-control input-lg" placeholder="房型" tabindex="6" value="<%=house_type%>">
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="text" name="pricePerMonth" id="pricePerMonth" readonly
						class="form-control input-lg" placeholder="单月价格" tabindex="5" value="<%=house_price %>">
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="text" name="duration" id="duration" 
						class="form-control input-lg" placeholder="请输入租赁月数" tabindex="6" >
					</div>
				</div>
			</div>
			<input class="common-text required" value="" id="price" name="price" size="50" type="hidden">
			
			
			<div class="row">
				<div class="col-xs-4 col-sm-3 col-md-3">
					<span class="button-checkbox">
						<button type="button" class="btn" data-color="info" tabindex="7">我同意</button>
                        <input type="checkbox" name="t_and_c" id="t_and_c" class="hidden" value="1">
					</span>
				</div>
				<div class="col-xs-8 col-sm-9 col-md-9">
					 点击 <strong class="label label-primary">提交</strong>按钮, 代表您已同意 <a href="#" data-toggle="modal" data-target="#t_and_c_m">
					 贝壳租房隐私责任条款</a>
				</div>
			</div>
			
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-12 col-md-6"><input type="submit" value="提交" class="btn btn-primary btn-block btn-lg" tabindex="7"></div>
				<div class="col-xs-12 col-md-6"><a onclick="history.go(-1)" class="btn btn-success btn-block btn-lg">返回</a></div>
			</div>
		</form>
	</div>
</div>
<!-- Modal -->
<div class="modal fade" id="t_and_c_m" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title" id="myModalLabel">贝壳租房隐私责任条款</h4>
			</div>
			<div class="modal-body">
				<p>科技向善，数据有度。</p>
				<p>贝壳租房严格遵守法律法规，遵循以下隐私保护原则，为您提供更加安全、可靠的服务：</p>
				<p><strong>安全可靠</strong>我们竭尽全力通过合理有效的信息安全技术及管理流程，防止您的信息泄露、损毁、丢失。</p>
				<p><strong>自主选择</strong>我们为您提供便利的信息管理选项，以便您做出合适的选择，管理您的个人信息。</p>
				<p><strong>合理必要</strong>为了向您和其他用户提供更好的服务，我们仅收集必要的信息。</p>
				<p><strong>清晰透明</strong>我们在产品或服务开发的各个环节，综合法律、产品、设计等多方因素，融入隐私保护的理念。</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">我同意</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</div>

</body>