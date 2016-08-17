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
		<h1>Introduction</h1>

<p class="downloadcontent">The benchmark datasets is free. All of the three parts can be download and use seprately or together. All data has been exported in the .zip files. Please click the interlinkages below to download the corresponding data archives.</p>
       <ul class="downloadlink">
       <c:forEach var="downloadList" items="${downloadList}">
     <li ><strong>Download:</strong><a href="download/${downloadList.name}">${downloadList.name}</a>(${downloadList.size }MB)Version${downloadList.version } ${downloadList.time }</li>
       </c:forEach>
       </ul>
</div>
<%@include file="footer.jsp" %>
</body>
</html>