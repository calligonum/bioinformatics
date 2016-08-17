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
    
    <title>管理antigen</title>
    
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
		
		<div class="right">
		<table class="admintable">
		<tr class="admintabletitle">
				<td align="left" valign="top"><strong>ID</strong></td>
                <td align="left" valign="top"><strong>BenchID</strong></td>
                <td align="left" valign="top"><strong>PDB_ID</strong></td>
                <td align="left" valign="top"><strong>Mimotopes</strong></td>
                <td align="left" valign="top"><strong>tem_c_No</strong></td>
                <td align="left" valign="top"><strong>tar_c_No</strong></td>
                <td align="left" valign="top"><strong>epitopes</strong></td>
                <td align="left" valign="top"><strong>size_e</strong></td>
                <td align="left" valign="top"><strong>ref</strong></td>
                <td align="left" valign="top"><strong>PMID</strong></td>
                <td align="left" valign="top"><strong>pdblink</strong></td>
				<td align="left" valign="top"><strong>pmlink</strong></td>
              </tr>	
		
       <c:forEach var="antigenList" items="${antigenList}">
		<tr>
		<form method="post" action = "/bioinformatics/UpdateAntigenServlet">
		<td><input class="inputid" type="text" name="id" value="${antigenList.id}" readonly onclick="alert('警告：ID号不允许修改！')"/> </td>
		<td><input class="antigenstyle1" type="text" name="pdb_id" value="${antigenList.pdb_id}" /></td>
		<td><input class="antigenstyle1" type="text" name="benchid" value="${antigenList.benchid}"/></td>
		<td class="antigen"><textarea  name="mimotopes" />${antigenList.mimotopes}</textarea>  </td>
		<td><input class="antigenstyle1" type="text" name="tem_c_No" value="${antigenList.tem_c_No}"/> </td>
		<td><input class="antigenstyle1" type="text" name="tar_c_No" value="${antigenList.tar_c_No}"/> </td>
		<td class="antigen"><textarea  name="epitopes"/>${antigenList.epitopes}</textarea> </td>
		<td><input class="antigenstyle1" type="text" name="size_e" value="${antigenList.size_e}"/> </td>
		<td><input class="antigenstyle1" type="text" name="ref" value="${antigenList.ref}"/> </td>
		<td><input class="antigenstyle1" type="text" name="PMID" value="${antigenList.PMID}"/> </td>
		<td><input type="text" name="pdblink" value="${antigenList.pdblink}"/> </td>
		<td><input type="text" name="pmlink" value="${antigenList.pmlink}"/> </td>
		<td><input type="submit" name="update" value="修改" /></td>
		
		</form>
		</tr>
		
	 </c:forEach>
		</table>${message}
		</div>
      
    
</div>
</body>
</html>