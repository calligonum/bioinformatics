<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@include file="common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>������Ŀ</title>

<link rel="stylesheet" type="text/css" href="style/style.css" />
</head>
<body>

		<%@include file="header.jsp" %>
		<div class="project">
			<h1>��Ŀ���</h1>
    <h2>������Ŀ��Դ������������Ȼ��ѧ����ίԱ�ᡢ�п�Ժ��������������ʦ����ѧ ������ʡ�Ƽ���������ʡ�����������ǳ�ֿ�ظ�л���ǡ�</h2> 
      </div>     		
           		<ul id="projectlist">
           		<c:forEach var="project" items="${projectList}">           		
                   <li>${project.list}</li>
                </c:forEach>
                </ul>
               
  
   <%@include file="footer.jsp" %>         
</body>
</html>