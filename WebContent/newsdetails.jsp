<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@include file="common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Ê×Ò³</title>
<link rel="stylesheet" type="text/css" href="style/style.css" />
</head>
<body>
	<%@include file="header.jsp" %>
<div id="wrap">
	
		
		 <c:forEach var="news" items="${newsList}">
      <h2>${news.title }</h2><br/>
      ${news.publictime }<br/>
     
      <p>${news.content }</p>
   </c:forEach>
</div>
<%@include file="footer.jsp" %>
</body>
</html>