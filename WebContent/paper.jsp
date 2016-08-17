<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@include file="common.jsp"%>
<%@taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>科研成果</title>
<link rel="stylesheet" type="text/css" href="style/style.css" />

</head>
<body>

 
      <%@include file="header.jsp" %>
      <div class="papercontent">
       <div class="paperyearlist"> 
       <ul>
         <c:forEach var="yearList" items="${yearList}">
  	<li>
  	<a href="Detailpaperfirstservlet?year=${yearList.year}"><input type="text" name="year" value="${yearList.year}" /></a>
  	</li>	
  		</c:forEach>	</ul></div>
  		
  		<div class="detailpaper">
		<%@include file="detailpaper.jsp" %>
		</div>
  </div>
    <%@include file="footer.jsp" %>
</body>
</html>
       