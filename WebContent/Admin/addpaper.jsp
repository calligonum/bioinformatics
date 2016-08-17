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
    
    <title>添加论文</title>
    
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
	function chick(){
		
		if(document.getElementsByName("paper")[0].value==""){
			alert("添加项目不能为空！");
			return false;
		}
		return true;					
	}
	
	</script>
</head>

<body onload="reload()">
	
<div class="middle">
<div class="leftmenu">
	<%@include file="adminmenu.jsp" %>	
	</div>	
		<form action="/bioinformatics/AddPaperTwoServlet" method="get" onsubmit="
		return chick()">
		<div class="right">	
		<c:forEach var="yearList" items="${yearList}">
		<input name="choosedyear" type="radio" value="${yearList.year}" />${yearList.year}
		</c:forEach>
		<table class="admintable">
		 <tr>
   		<td class="admintabletitle">paper</td>
		</tr>
		<tr>
		<td><input style="width: 800px;" type="text" name="paper" /></td>
		<td><input class="adminbutton" type="submit" name="add" value="添加" /></td>
		</tr>
		</table>${message}
		</div>	
      </form>
    
</div>
</body>
</html>