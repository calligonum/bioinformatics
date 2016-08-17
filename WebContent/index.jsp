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
		<div class="indexmiddle">
		<div class="indexcontent" >
           <c:forEach var="homeList" items="${homeList}">
           <h1>${homeList.title}</h1>
           ${homeList.home_content}
       </c:forEach>
       </div>
       
       <div class="indexnews" >
       
           
          <div class="news">
           <c:forEach var="newstitleList" items="${newstitleList}">
       <li>  <a href="NewsServlet?id=${newstitleList.id}"> ${newstitleList.title}${newstitleList.publictime}</a> </li>
         
       </c:forEach>
          </div>
       </div>
  </div>    
	
		
<%@include file="footer.jsp" %>
</body>
</html>