<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页</title>
<link rel="stylesheet" type="text/css" href="../style/style.css" />
</head>
<body>
	
<div id="wrap">
		
		<%@include file="header.jsp" %>
		
       <c:forEach var="contactList" items="${contactList}">
     <p class="contactcontent">${contactList.content }</p>
     <p class="contactlink"><strong>Email:</strong><a href="mailto:${contactList.email }" >${contactList.email }</a></p>
       </c:forEach>
     
</div>
<%@include file="footer.jsp" %>
</body>
</html>