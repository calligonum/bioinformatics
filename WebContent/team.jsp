<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@include file="common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>�����Ŷ�</title>
<link rel="stylesheet" type="text/css" href="style/style.css" />
</head>
<body>


		
		<%@include file="header.jsp" %>
		<div class="team">
		<h1>�����Ŷ�</h1>
		</div>
          <table id="teamtable">
          <tr id="tabletitle">
          <td>����</td><td>ְ��</td><td>�о�����</td>
          </tr>
            <c:forEach var="team" items="${teamList}">
            <tr> 
            <td>${team.name}</td><td>${team.professional}</td><td>${team.study}</td>
            </tr>
                </c:forEach>	
                 </table>  

<%@include file="footer.jsp" %>
</body>
</html>