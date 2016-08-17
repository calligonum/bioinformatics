<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@include file="common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>科研资源</title>
<link rel="stylesheet" type="text/css" href="style/style.css" />
</head>

  <body>
   
		
		<%@include file="header.jsp" %>
		<div class="resource">
		<h2>科研资源主要包括数据集和工具两部分:</h2></div>
		<p class="tooltitle">Datasets:</p>
		<c:forEach var="datasetsList" items="${datasetsList}">
       			<a href="${datasetsList.link}" class="link">${datasetsList.list}</a><br/>
        
      		 </c:forEach>
      	<p class="tooltitle">TOOLS:</p>
      		 <c:forEach var="toolsList" items="${toolsList}">
       			<a href="${toolsList.link}" class="link">${toolsList.list}</a><br/>
        
      		 </c:forEach>
			
			<%@include file="footer.jsp" %>
  </body>
</html>
