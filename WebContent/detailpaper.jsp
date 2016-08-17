   <%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
	<%@include file="common.jsp"%>
	<html>
	<ul>
    <c:forEach var="papersList" items="${papersList}">
    
    <li>
  	${papersList.list}
  	</li>
  	</c:forEach>
</ul>
    </html>   