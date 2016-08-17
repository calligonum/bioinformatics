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
    <title>添加antigen</title>
	  <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
	<link rel="stylesheet" type="text/css" href="Admin/style/admin.css" />
	<link rel="stylesheet" type="text/css" href="Admin/style/manage.css" />
	<script type="text/javascript" src="Admin/js/jquery.js"></script>
	<script type="text/javascript" src="Admin/js/manage.js"></script></head> 
    <script type="text/javascript"> 
    
	function chick(){
		
		if(document.getElementsByName("name")[0].value==""){
			alert("存在空值！！！");
			return false;				
		}
		if(document.getElementsByName("size")[0].value==""){
			alert("存在空值！！！");
			return false;
		}
		if(document.getElementsByName("version")[0].value==""){
			alert("存在空值！！！");
			return false;
		}
		if(document.getElementsByName("time")[0].value==""){
			alert("存在空值！！！");
			return false;
		}
		return true;					
	}
</script>
	
<body onload="reload()">
<div class="middle">
<div class="leftmenu">
	<%@include file="adminmenu.jsp" %>	
	</div>
	<form action="/bioinformatics/AddAntigenServlet" method="get" onsubmit="return chick()" >
<div class="right">	
		
		<table class="admintable">
		 <tr>
   		<td class="admintabletitle">benchid:</td><td><input class="antigenadd" type="text" name="benchid" /></td></tr>
  		<tr><td class="admintabletitle">pdb_id:</td><td><input class="antigenadd" type="text" name="pdb_id"/></td></tr>
   		<tr><td class="admintabletitle">mimotopes:</td><td class="antigen"><textarea name="mimotopes"/> </textarea> </td></tr>
   		<tr><td class="admintabletitle">tem_c_No:</td><td><input class="antigenadd" type="text" name="tem_c_No"/> </td></tr>
		<tr><td class="admintabletitle">tar_c_No:</td><td><input class="antigenadd" type="text" name="tar_c_No"/> </td></tr>
		<tr><td class="admintabletitle"> epitopes:</td>	<td class="antigen"><textarea name="epitopes"/> </textarea></td></tr>
		<tr><td class="admintabletitle">size_e:</td><td><input class="antigenadd" type="text" name="size_e" /> </td></tr>
		<tr><td class="admintabletitle">ref:</td><td><input class="antigenadd" type="text" name="ref" /> </td></tr>
		<tr><td class="admintabletitle">PMID:</td>	<td><input class="antigenadd" type="text" name="PMID" /> </td></tr>
		<tr><td class="admintabletitle">pdblink:</td><td><input class="antigenadd" type="text" name="pdblink" /> </td></tr>
		<tr><td class="admintabletitle">pmlink:</td><td><input class="antigenadd" type="text" name="pmlink" /> </td></tr>
		<tr><td><input  class="adminbutton" type="submit" name="add" value="添加" /></td></tr>
		</table>${message}
		 </div>  
      </form>
 
</div>
</body>
</html>