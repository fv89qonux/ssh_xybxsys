<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@include file="/common/taglibs.jsp"%>
  <div id="header">
  <div class="logo" style="background: white;text-align: center;"><span style="color:#1f5406;font-size: 40;font-weight: bold;">社区医院--关爱万家</span></div>
  <div class="ser">
          <c:if test="${userName == null}">
          <span class=""><a href="${ctx}/login_ulogin.do"><span>注册/登陆</span></a></span>
          </c:if>
          <c:if test="${userName != null}">
                           欢迎您：${userName}
          </c:if>
		  
  </div>
</div>
<div id="nav">
  <div class="navmain">
    <ul>
      <li><a href="${ctx}/login_uIndex.do">首页 <br/>
        <span>Home</span></a></li>
      <li><a href="${ctx}/login_yygk.do">医院概况 <br/>
        <span>About Us </span></a></li>
      <li><a href="${ctx}/login_jyzn.do">就医指南 <br/>
        <span>Doctor Guide</span></a></li>
      <li><a href="${ctx}/news_news2.do">新闻动态 <br/>
        <span>Academic Exchange </span></a></li>
      <li><a href="${ctx}/medicine_medicine2.do">药物公开 <br/>
        <span>Party Construction</span></a></li>
        <li><a href="${ctx}/user_view.do">个人信息 <br/>
        <span>Personal information</span></a></li>
    </ul>
  </div>
</div>
