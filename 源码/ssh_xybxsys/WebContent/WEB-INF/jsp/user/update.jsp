<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
   <title>后台管理中心</title>  
    <link rel="stylesheet" href="${ctx}/resource/css/pintuer.css">
    <link rel="stylesheet" href="${ctx}/resource/css/admin.css">
    <script src="${ctx}/resource/js/jquery.js"></script>
     <script src="${ctx}/resource/js/pintuer.js"></script>  
</head>
<style>
    .file1 {
        position: relative;
        display: inline-block;
        background: #D0EEFF;
        border: 1px solid #99D3F5;
        border-radius: 4px;
        padding: 4px 12px;
        overflow: hidden;
        color: #1E88C7;
        text-decoration: none;
        text-indent: 0;
        line-height: 20px;
    }
    .file1 input {
        position: absolute;
        font-size: 100px;
        right: 0;
        top: 0;
        opacity: 0;
    }
    .file1:hover {
        background: #AADFFD;
        border-color: #78C3F3;
        color: #004974;
        text-decoration: none;
    }
</style>
<!--//姓名，教工编号，系别，职称，电子邮件，联系电话，个人简介
	private int id;
	private String userName;//登陆名
	private String passWord;//密码
	private int sex;//1男 2女
	private String phone;//手机号
	private String realName;//真实名
	private String code;//教师编号
	private String department;//那个系的
	private String level;//职称
	private String  email;//邮件
	private String  intro;//个人简介
	private Date createTime;
	private  int isDelete;//是否删除1是 2否 -->
<body>

<script>
function del(id){
	if(confirm("您确定要删除吗?")){
		
	}
}
</script>
<div class="panel admin-panel margin-top">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>修改教师信息</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="${ctx}/user_exUpdate.do" enctype="multipart/form-data">   
     <input type="hidden" name="id" value="${User.id}"> 
      <div class="form-group">
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
</body>
<script type="text/javascript">
$("#zp1").on("change","input[type='file']",function(){
    var filePath = $(this).val();
    var filePath = filePath.split('\\');
    var filePath = filePath[filePath.length-1];
    $('#file').val(filePath);
})

</script>
</html>