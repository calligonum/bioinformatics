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
    
    <title>������Դ</title>
    
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
</div>	
<div class="middle">
<div class="leftmenu">
	<%@include file="adminmenu.jsp" %>	
	</div>	
		
		<div class="right">
		<table class="admintable">
		 <tr>
  		<td class="admintabletitle">ID��</td>
    	<td class="admintabletitle">list</td>
  		<td class="admintabletitle">link</td>
		</tr>
       <c:forEach var="datasetsList" items="${datasetsList}">
       	<tr>
       	<form method="post" action = "/bioinformatics/DeleteDatasetsServlet">
		<td><input class="inputid" type="text" name="id" value="${datasetsList.id}" readonly onclick="alert('���棺ID�Ų������޸ģ�')"/></td>
		<td><input type="text" name="list" value="${datasetsList.list}"/></td>
		<td><input type="text" name="link" value="${datasetsList.link}"/>  </td>
		
		<td><input class="adminbutton" type="submit" name="delete" value="ɾ��" /></td>
		 </form>
		</tr>	
	   </c:forEach>
		</table>${message}
		</div>
     
    
</div>
</body>
</html>