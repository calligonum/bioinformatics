<%@ page language="java" pageEncoding="GB2312"%>
<%@page contentType="text/html;charset=gb2312" %>
<%@include file="common.jsp" %>
<% request.setCharacterEncoding("gb2312");%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>������</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="Admin/style/admin.css" />
	<link rel="stylesheet" type="text/css" href="Admin/style/manage.css" />
	<script type="text/javascript" src="Admin/js/jquery.js"></script>
	<script type="text/javascript" src="Admin/js/manage.js"></script>
</head>
<body onload="reload()">
	

		
		<div class="middle">
<div class="leftmenu">
	<%@include file="adminmenu.jsp" %>	
	</div>	
		<form action="/bioinformatics/UpdateIntroduceServlet" method="post">
		<div class="right">
		<table class="admintable">
       <c:forEach var="homeList" items="${homeList}">
   <tr class="admintabletitle"><td>����:</td><td>����:</td>
   </tr>
   
   <tr>
   
   <td><input type="hidden" name="id" value="${homeList.id}"/><input type="text" name="title" value="${homeList.title}"/></td>
      <td><textarea class="textareastyle" name="home_content" >${homeList.home_content}</textarea></td>
       </c:forEach>
       
		
	<tr><td><input class="adminbutton" type="submit" value="�޸�"/>	���иĶ��������˴����棬������Ϊ�����޸�</td>
		<td>��ʾ������ֶ���ʾ��������������html�еĶ����ǩ���зֺö��䡣<br />
		����<p>ʾ��</p></td>
	</tr>
		</table>${message}
		
		</div>
      </form>
</div>
</body>
</html>