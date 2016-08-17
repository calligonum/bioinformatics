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
			
       <c:forEach var="subhomeList" items="${subhomeList}">
     <h1>${subhomeList.title}</h1> 
      <p class="subcontent">${subhomeList.content} </p>
    <p class="subcontent"><strong>${subhomeList.subtitle}:</strong>${subhomeList.subcontent}</p>
       </c:forEach>
       </div>

<%@include file="footer.jsp" %>
</body>
</html>