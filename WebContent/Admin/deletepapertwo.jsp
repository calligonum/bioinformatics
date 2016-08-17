<%@ page language="java" pageEncoding="GB2312"%>
<%@page contentType="text/html;charset=gb2312" %>
<%@include file="common.jsp" %>
<% request.setCharacterEncoding("gb2312");%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>管理成果</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="Admin/style/admin.css" />
	<link rel="stylesheet" type="text/css" href="Admin/style/manage.css" />
	<script type="text/javascript" src="Admin/js/jquery.js"></script>
	
	
</head>

<body>


	
		<div class="right">
		
		
		<table class="admintable">
		 <tr>
  		<td class="admintabletitle">ID</td>
    	<td class="admintabletitle">论文</td>
    	
		</tr>
		
        <c:forEach var="papersList" items="${papersList}"> 
		<tr>
		 <form method="post" action = "/bioinformatics/DeletePaperServlet">
		<td><input class="inputid" type="text" name="paperid" value="${papersList.id}" readonly/>  </td>
		<td><input style="width: 800px;" type="text" name="list" value="${papersList.list}" /><input type="hidden" name="year" value="${papersList.year}"/> </td>
		 
		
		<td><input class="adminbutton" type="submit" name="delete" value="删除"/></td>
		 </form>
		</tr>
	 </c:forEach>
	
		</table>${message}
		
      </div>
    

</body>
</html>