<%@ page language="java" pageEncoding="GB18030"%>
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
    
    <title>��ӳ�Ա</title>
    
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
		
		if(document.getElementsByName("name")[0].value==""){
			alert("�����Ŀ����Ϊ�գ�");
			return false;
		}
		return true;					
	}
	</script>
</head>

<body>
	
<div class="middle">
<div class="leftmenu">
	<%@include file="adminmenu.jsp" %>	
	</div>	
		<form action="/bioinformatics/AddTeamServlet" method="get" onsubmit="
		return chick()">
		<div class="right">
		<table class="admintable">
		 <tr>
    	<td class="admintabletitle">����</td>
  		<td class="admintabletitle">ְλ</td>
   		<td class="admintabletitle">�о�����</td>
		</tr>
      
		<tr>
		<td><input type="text" name="name" /></td>
		<td><input type="text" name="professional" />  </td>
		<td><input type="text" name="study" /> </td>
		<td><input class="adminbutton" type="submit" name="add" value="���" /></td>
		</tr>
		</table>${message}
		</div>	
      </form>
    
</div>
</body>
</html>