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
    
    <title>管理项目</title>
    
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

<body>
	
<div class="middle">
<div class="leftmenu">
	<%@include file="adminmenu.jsp" %>	
	</div>	
		
		<div class="right">
		<table class="admintable">
		
       <c:forEach var="projectList" items="${projectList}">
		<tr>
		<form method="post" action = "/bioinformatics/UpdateProjectServlet">
		<td><input class="inputid" type="text" name="id" value="${projectList.id}" readonly onclick="alert('警告：ID号不允许修改！')"/></td>
		<td><input class="adminprojectlist" type="text" name="list" value="${projectList.list}"/></td>
		<td><input class="adminbutton" type="submit" name="update" value="修改" /></td>
		
		  </form>
		</tr>
		
	 </c:forEach>
		</table>${message}
		</div>
</div>
</body>
</html>