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
    <title></title>  
    <link rel="stylesheet" href="${ctx}/resource/css/pintuer.css">
    <link rel="stylesheet" href="${ctx}/resource/css/admin.css">
    <script src="${ctx}/resource/js/jquery.js"></script>
    <script src="${ctx}/resource/js/pintuer.js"></script>  

<title>个人信息</title>
</head>
<body>
<form method="post" action="${ctx}/repair_repair3.do" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder">报修管理</strong></div>
    <div class="padding border-bottom">
      <ul class="search">
         <li>
          <input type="text" placeholder="请输入姓名" name="name"  value="${Repair.name}" class="input" style="width:250px; line-height:17px;display:inline-block" />
          <a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 搜索</a>
          </li>
      </ul>
    </div>
    <table class="table table-hover text-center">
  <!--  /*//设备名；故障原因；地点；电话；姓名;部门：后勤部；教务处；校长办公室；宿管部；
		private Integer id;
		private String sbm;//设备名
		private String yy;//原因
		private String dd;//地点
		private String phone;//手机号
		private String name;
		private String bm;//部门
		private Worker worker;//维修工
		private Integer status;//0未分配 1已分配 2已维修
		private String fankui;//反馈 -->
      <tr>
        <th width="100" style="text-align:left; padding-left:20px;">ID</th>
        <th width="">姓名</th>
        <th>手机号</th>
        <th>部门</th>
        <th>设备名</th>
        <th width="310">操作</th>
      </tr>
        <c:forEach items="${pagers.datas}" var="data" varStatus="l">
        <tr>
           <td>${data.id}</td>
           <td>${data.name}</td>
           <td>${data.phone }</td>
            <td>${data.bm }</td>
           <td>${data.sbm }</td>
           <td>
              <div class="button-group"> 
              <a class="button border-main" href="${ctx}/repair_bl.do?id=${data.id}"><span class="icon-edit"></span>办理</a>
           </td>
        </tr>
       </c:forEach>
      <tr>
        <td colspan="8"><div class="pagelist">
        <!-- 分页开始 -->
			      <pg:pager  url="${ctx}/repair_repair3.do" maxIndexPages="5" items="${pagers.total}"  maxPageItems="15" export="curPage=pageNumber" >
			        <pg:param name="name" value="${Repair.name}"/>
					<pg:last>  
						共${pagers.total}记录,共${pageNumber}页,  
					</pg:last>  
						当前第${curPage}页 
			        <pg:first>  
			    		<a href="${pageUrl}">首页</a>  
					</pg:first>  
					<pg:prev>  
			    		<a href="${pageUrl}">上一页</a>  
					</pg:prev>  
			       	<pg:pages>  
			        	<c:choose>  
			            	<c:when test="${curPage eq pageNumber}">  
			                	<font color="red">[${pageNumber }]</font>  
			            	</c:when>  
			            	<c:otherwise>  
			               		<a href="${pageUrl}">${pageNumber}</a>  
			            	</c:otherwise>  
			        	</c:choose>  
			    	</pg:pages>
			             
			        <pg:next>  
			    		<a href="${pageUrl}">下一页</a>  
					</pg:next>  
					<pg:last>  
						<c:choose>  
			            	<c:when test="${curPage eq pageNumber}">  
			                	<font color="red">尾页</font>  
			            	</c:when>  
			            	<c:otherwise>  
			               		<a href="${pageUrl}">尾页</a>  
			            	</c:otherwise>  
			        	</c:choose> 
			    		  
					</pg:last>
				</pg:pager>
				 </div></td>
                    <!-- 分页结束 -->
      </tr>
    </table>
  </div>
</form>
<script type="text/javascript">

//搜索
function changesearch(){	
		$("#listform").submit();
}

//单个删除
function del(id){
	if(confirm("您确定要删除吗?")){
		window.location.href="${ctx}/repair_delete.do?id="+id;
	}
}
function DelSelect(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		var t=confirm("您确认要删除选中的内容吗？");
		if (t==false) return false; 		
	}
	else{
		alert("请选择您要删除的内容!");
		return false;
	}
}

</script>
</body>
</html>