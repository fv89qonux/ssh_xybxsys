<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<link href="${ctx}/resource/css/mian.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/css/sub.css">
<!--//theme-style-->
  <link rel="stylesheet" href="${ctx}/resource/css/pintuer.css">
    <link rel="stylesheet" href="${ctx}/resource/css/admin.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<!--fonts-->
<!--//fonts-->
</head>
<body >
<%@ include file="/common/menu.jsp" %>
<div class="submain">
  <div class="mainline"></div>
  <div class="subtitle">
    <div class="subtitle_body">
      <div class="subt_left"><span>修改密码</span></div>
      <div class="subt_right"> 首页 > 修改密码 </div>
    </div>
  </div>
  <div class="subten">
    <div class="subtenbo"><span>Make an appointment</span></div>
  </div>
  <div class="subbody">
    <div class="subside">
      <div class="sidemenu">
        <ul>
                </ul>
      </div>
      <div class="sideblock">
        <div class="blockone">
          <div class="blockonett"> <span class="tel01">热线电话：</span> <span class="tel02">023-xxxxx 9393 <br/>
            023-xxxx 9555</span> </div>
        </div>
    <!--   private String content;//预约内容
	private String keshi;//预约可是
	private String  nian;//
	private String  yue;//
	private  String ri;//
	private String sjd;//时间段 -->
      </div>
    </div>
    <div class="subcontent">
      <div class="smtit"><span class="smtle">修改密码</span></div>
      <div class="article">
        <div class="message_show">
          <div class="message_form" style="height: 700px">
            <div class="message_form_body">
           <div class="panel admin-panel margin-top">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>修改密码</strong></div>
  <div class="body-content" style="height: 600px">
    <form method="post" class="form-x" action="${ctx}/user_exUpdate3.do" enctype="multipart/form-data">   
     <input type="hidden" name="id" value="${User.id}"> 
      <div class="form-group" >
        <div class="label">
          <label>登陆名：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="userName" value="${User.userName}" data-validate="required:请输入登录名" />         
          <div class="tips"></div>
        </div>
      </div> 
        <div class="form-group">
        <div class="label">
          <label>密码：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="passWord" value="${User.passWord}" data-validate="required:请输入密码" />         
          <div class="tips"></div>
        </div>
      </div> 
        <div class="form-group">
        <div class="label">
          <label>手机号码：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="phone" value="${User.phone}" data-validate="required:请输入手机号" />         
          <div class="tips"></div>
        </div>
      </div> 
      
       <div class="form-group">
        <div class="label">
          <label>真实名：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="realName" value="${User.realName}" data-validate="required:请输入真实名" />         
          <div class="tips"></div>
        </div>
      </div> 
      
     <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>



<div class="di" style="height: 100px;width: 100%;background: #1f5406;clear: both;margin: 0 auto">
<div class="footerline" style="margin: 15px auto;width: 200px;" >
  <div class="foline">
    <div class="foleft" >
      <ul>
        <li><a href="#"><span style="color: white;">联系我们</span></a></li>
        <li>|</li>
        <li><a href="#"><span style="color: white;">法律声明</span></a></li>
      </ul>
    </div>
    <div class="foright">
    </div>
  </div>
</div>
<div class="footerbottom" style="margin: 0 auto;width: 600px;"><span class="cop" style="color: white;"><span style="color: white;">社区医院 版权所有 联系地址：XXXXXX 邮编：401122</span> <span class="itle" style="color: white;">就医热线咨询电话：023-XXXXXXXX</span> </div>


</div>
</body>
</html>