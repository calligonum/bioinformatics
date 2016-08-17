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
    
    <title>π‹¿Ìhelp</title>
    
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
			oform.action = "/bioinformatics/UpdateHelpServlet";
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
		   <c:forEach var="helpList" items="${helpList}">
    	 <tr><td class="admintabletitle">Introduction:</td><td><input type="hidden" name="id" value="${helpList.id}"/><textarea class="textareastyle" name="introduction">${helpList.introduction}</textarea> </td></tr>
  		 <tr><td class="admintabletitle">Inclusion:</td><td><textarea class="textareastyle" name="inclusion">${helpList.inclusion}</textarea>   </td></tr>
   		 <tr><td class="admintabletitle">Acknowledgments:</td><td><textarea class="textareastyle" name="acknowledgments" >${helpList.acknowledgments}</textarea> </td></tr>
		<tr>
		<td><input class="adminbutton" type="button" name="update" value="–ﬁ∏ƒ" onclick="updatepost()"/></td>
		</tr>
	 </c:forEach>
		</table>${message}
		</div>
      </form>
    
</div>
</body>
</html>