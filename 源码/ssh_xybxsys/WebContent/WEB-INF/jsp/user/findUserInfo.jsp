<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@include file="../../../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息</title>
<link href="${ctx}/resource/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${ctx}/resource/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="${ctx}/resource/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='http://fonts.useso.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!--//fonts-->
<script type="text/javascript" src="${ctx}/resource/js/move-top.js"></script>
<script type="text/javascript" src="${ctx}/resource/js/easing.js"></script>
				<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
				</script>
<!--slider-script-->
		<script src="${ctx}/resource/js/responsiveslides.min.js"></script>
			<script>
				$(function () {
				  $("#slider1").responsiveSlides({
					auto: true,
					speed: 500,
					namespace: "callbacks",
					pager: true,
				  });
				});
			</script>
<!--//slider-script-->
<script>$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.message').fadeOut('slow', function(c){
	  		$('.message').remove();
		});
	});	  
});
</script>
<script>$(document).ready(function(c) {
	$('.alert-close1').on('click', function(c){
		$('.message1').fadeOut('slow', function(c){
	  		$('.message1').remove();
		});
	});	  
});
</script>
</head>
<body>
<%@ include file="/common/menu.jsp" %>
<div class="container">
		<div class="account">
			<h2 class="account-in">个人信息</h2>
				<form  action="${ctx}/user_toUpdate.do" method="post">
				<div>
					<span>登录名</span>
					<input type="text" name="userName" value="${user.userName}" readonly="readonly">
					 <input type="hidden" name="id"  value="${user.id}"/>
				</div> 	
				<div>			
					<span>用户名</span>
					<input type="text" name="realName" value="${user.realName}"> 
				</div>	
				<div> 
				<span>&nbsp;性别&nbsp;&nbsp;</span>
				 <input type="radio" name="sex" value="1" <c:if test="${user.sex == 1 }"> checked="checked" </c:if>>&nbsp;&nbsp;男&nbsp;&nbsp;&nbsp;
                 <input type="radio" name="sex" value="2" <c:if test="${user.sex == 2 }"> checked="checked" </c:if>>&nbsp;&nbsp;女
				</div>			
				<div> 	
					<span>&nbsp;密码&nbsp;&nbsp;</span>
					<input type="password" name="passWord" value="${user.passWord}"> 
				</div>
				<div> 
					<span>手机号</span>
					<input type="text" name="phone" value="${user.phone}">
				</div>				
				<div> 
					<span>&nbsp;地址&nbsp;&nbsp;</span>
					<input type="text" name="address" value="${user.address}">
				</div>	
				<div> 
					<span>&nbsp;积分&nbsp;&nbsp;</span>
					<input type="text" name="jf" value="${user.jf}" readonly="readonly">
				</div>				
					<input type="submit" value="保存"> 
				</form>
		</div>
	</div>
<div class="footer" style="position: fixed;bottom: 0px;width: 100%">
		<p class="footer-class">Copyright &copy; 2016.Company name All rights reserved.</p>
		<script type="text/javascript">
					$(document).ready(function() {
						$().UItoTop({ easingType: 'easeOutQuart' });
						
					});
				</script>
			<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
		</div>	
</body>
</html>