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
    
    <title>管理contact</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="Admin/style/admin.css" />
	<link rel="stylesheet" type="text/css" href="Admin/style/manage.css" />
	<script type="text/javascript" src="Admin/js/jquery.js"></script>
	<script type="text/javascript" src="Admin/js/manage.js"></script>
	<script type="text/javascript">
		function updatepost() {
			var oform = document.getElementsByTagName("form")[0];
			oform.action = "/bioinformatics/UpdateContactServlet";
			oform.submit();
				}
	</script>
</head>

<body>
	
<div class="middle">
<div class="leftmenu">
	<%@include file="adminmenu.jsp" %>	
	</div>	
		<form method="post" >
		<div class="right">
		<table class="admintable">
		  <c:forEach var="contactList" items="${contactList}">
		 
    	<tr><td class="admintabletitle">内容:</td><td><input type="hidden" name="id" value="${contactList.id}"/><textarea class="textareastyle" name="content">${contactList.content}</textarea> </td></tr>
  		<tr><td class="admintabletitle">Email:</td><td><input class="textwidth" type="text" name="email" value="${contactList.email}"/>  </td></tr>
		
     
		<tr>
		<td><input class="adminbutton" type="button" name="update" value="修改" onclick="updatepost()"/></td>
		</tr>
		
	 </c:forEach>
		</table>${message}
		</div>	
      </form>
    
</div>
</body>
</html>