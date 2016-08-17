<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@include file="common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>相关课程</title>
	<link rel="stylesheet" type="text/css" href="style/style.css" />
        
	</head>
	<body>
		<div id="wrap">
		<%@include file="header.jsp" %>
		<h2>相关课程</h2>
		<div style="width:900px;height:1px; background:#C0C0C0; margin:0 auto;"></div> 
		     <ul id="list">
		     <c:forEach var="classList" items="${classList}">
       			<li>${classList.classes}</li>
        
      		 </c:forEach>
      		 </ul>
		 
		</div>
        <%@include file="footer.jsp" %>
	</body>
</html>
