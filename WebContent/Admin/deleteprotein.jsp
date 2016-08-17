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
    
    <title>管理团队</title>
    
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
       <c:forEach var="proteinList" items="${proteinList}">
		<tr>
		<form method="post" action = "/bioinformatics/DeleteProteinServlet">
		<td><input class="inputid" type="text" name="id" value="${proteinList.id}" readonly onclick="alert('警告：ID号不允许修改！')"/> </td>
		<td><input  class="antigenstyle1" type="text" name="pdb_id" value="${proteinList.pdb_id}" /></td>
		<td><input  class="antigenstyle1" type="text" name="benchid" value="${proteinList.benchid}"/></td>
		<td class="antigen"><textarea  name="mimotopes">${proteinList.mimotopes}</textarea> </td>
		<td><input  class="antigenstyle1" type="text" name="tem_c_No" value="${proteinList.tem_c_No}"/> </td>
		<td><input  class="antigenstyle1" type="text" name="tar_c_No" value="${proteinList.tar_c_No}"/> </td>
		<td class="antigen"><textarea name="epitopes" >${proteinList.epitopes}</textarea> </td>
		<td><input  class="antigenstyle1" type="text" name="size_e" value="${proteinList.size_e}"/> </td>
		<td><input  class="antigenstyle1" type="text" name="ref" value="${proteinList.ref}"/> </td>
		<td><input  class="antigenstyle1" type="text" name="PMID" value="${proteinList.PMID}"/> </td>
		<td><input type="text" name="pdblink" value="${proteinList.pdblink}"/> </td>
		<td><input type="text" name="pmlink" value="${proteinList.pmlink}"/> </td>
		<td><input type="button" name="delete" value="删除" onclick="deletepost()"/></td>
		</form>
		</tr>
		
	 </c:forEach>
		</table>${message}
		</div>
      
    
</div>
</body>
</html>