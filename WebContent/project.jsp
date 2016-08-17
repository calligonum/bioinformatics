<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@include file="common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>科研项目</title>

<link rel="stylesheet" type="text/css" href="style/style.css" />
</head>
<body>

		<%@include file="header.jsp" %>
		<div class="project">
			<h1>项目简介</h1>
    <h2>以下项目来源包括：国家自然科学基金委员会、中科院、教育部、东北师范大学 、吉林省科技厅、吉林省人事厅，我们诚挚地感谢你们。</h2> 
      </div>     		
           		<ul id="projectlist">
           		<c:forEach var="project" items="${projectList}">           		
                   <li>${project.list}</li>
                </c:forEach>
                </ul>
               
  
   <%@include file="footer.jsp" %>         
</body>
</html>