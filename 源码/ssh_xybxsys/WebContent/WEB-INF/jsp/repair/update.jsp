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
<body>
<script>
function del(id){
	if(confirm("您确定要删除吗?")){
		
	}
}
</script>
<!-- private Integer id;
	private String sbm;//设备名
	private String yy;//原因
	private String dd;//地点
	private String phone;//手机号
	private String name;
	private String bm;//部门 -->
<div class="panel admin-panel margin-top">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>设备报修</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="${ctx}/repair_exUpdate.do" enctype="multipart/form-data">
    <input type="hidden" name="id" value="${Repair.id}">    
      <div class="form-group">
        <div class="label">
          <label>设备名：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="sbm" value="${Repair.sbm}" data-validate="required:请输入设备名称" />         
          <div class="tips"></div>
        </div>
      </div> 
        <div class="form-group">
        <div class="label">
          <label>地点：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="dd" value="${Repair.dd}" data-validate="required:请输入地点" />         
          <div class="tips"></div>
        </div>
      </div> 
       <div class="form-group">
        <div class="label">
          <label>姓名：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="name" value="${Repair.name}" data-validate="required:请输入姓名" />         
          <div class="tips"></div>
        </div>
      </div> 
       <div class="form-group">
        <div class="label">
          <label>手机号：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="phone" value="${Repair.phone}" data-validate="required:请输入手机号" />         
          <div class="tips"></div>
        </div>
      </div> 
       </if>
      <div class="form-group">
        <div class="label">
          <label>原因：</label>
        </div>
        <div class="field">
          <textarea class="input" name="yy" style=" height:90px;">${Repair.yy}</textarea>
          <div class="tips"></div>
        </div>
      </div>
    <!--   后勤部；教务处；校长办公室；宿管部 -->
      <div class="form-group">
          <div class="label">
            <label>部门:</label>
          </div>
          <div class="field">
            <select name="bm" class="input w50">
            <option value="">请选择分类</option>
              <c:if test="${Repair.bm ==后勤部}">
                <option value="后勤部" selected="selected">后勤部</option>
              </c:if>
               <c:if test="${Repair.bm !=后勤部}">
                <option value="后勤部">后勤部</option>
              </c:if>
               <c:if test="${Repair.bm ==教务处}">
                <option value="教务处" selected="selected">教务处</option>
              </c:if>
               <c:if test="${Repair.bm != 教务处}">
                <option value="教务处">教务处</option>
              </c:if>
              
            <c:if test="${Repair.bm ==校长办公室}">
                <option value="校长办公室" selected="selected">校长办公室</option>
              </c:if>
               <c:if test="${Repair.bm !=校长办公室}">
                <option value="校长办公室">校长办公室</option>
              </c:if>
              
              <c:if test="${Repair.bm ==宿管部}">
                <option value="宿管部" selected="selected">宿管部</option>
              </c:if>
               <c:if test="${Repair.bm !=宿管部室}">
                <option value="宿管部">宿管部</option>
              </c:if>
            </select>
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