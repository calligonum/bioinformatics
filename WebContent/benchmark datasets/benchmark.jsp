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
		<table class="benchmarktable">
		<tr>
            <td id="showaa"  title="dfjkljewoif" onclick="if(aa.style.display=='none'){aa.style.display='';}
 else{aa.style.display='none';}"><p align="left">Antigen-Antnbody complex▽(单击此处展开或折叠)</p> </td>
        </tr>
		<tr id="aa">
		<td>
		<table><tr class="benchmarktabletitle" >
                <td width="9%" align="left" valign="top"><strong>BenchID</strong></td>
                <td width="9%" align="left" valign="top"><strong>PDB_ID</strong></td>
                <td width="22%" align="left" valign="top"><strong>Mimotopes</strong></td>
                <td width="10%" align="left" valign="top"><strong>tem_c_No</strong></td>
                <td width="9%" align="left" valign="top"><strong>tar_c_No</strong></td>
                <td width="20%" align="left" valign="top"><strong>epitopes</strong></td>
                <td width="6%" align="left" valign="top"><strong>size_e</strong></td>
                <td width="6%" align="left" valign="top"><strong>ref</strong></td>
                <td width="9%" align="left" valign="top"><strong>PMID</strong></td>
              </tr>	
       <c:forEach var="antigenList" items="${antigenList}">
      <tr class="benchmarktablecontent" >
      
                <td align="left" valign="top"> ${antigenList.pdb_id}</td>
                <td align="left" valign="top"><a href="${antigenList.benchid }" target="_blank">${antigenList.benchid }</a></td>
                <td align="left" valign="top">${antigenList.mimotopes}</td>
                <td align="left" valign="top">${antigenList.tem_c_No}</td>
                <td align="left" valign="top">${antigenList.tar_c_No}</td>
                <td align="left" valign="top"><span class="STYLE14">${antigenList.epitopes}</span></td>
                <td align="left" valign="top">${antigenList.size_e}</td>
                <td align="left" valign="top">${antigenList.ref}</td>
                <td align="left" valign="top"><a href="${antigenList.pmlink}">${antigenList.PMID}</a></td>
      </tr>
       </c:forEach>
       </table>
     
       </td>
       </tr>
         </table>
      
       <table class="benchmarktable">
       <tr>
                 <td id="showpp" onclick="if(pp.style.display=='none'){pp.style.display='';}
 else{pp.style.display='none';}"><p align="left">Protein-protein interactions▽(单击此处展开或折叠)</p></td>
          </tr>
         
		<tr id="pp" style="display:none" >
		<td>
		<table>
		<tr class="benchmarktabletitle" >
                <td width="9%" align="left" valign="top"><strong>BenchID</strong></td>
                <td width="9%" align="left" valign="top"><strong>PDB_ID</strong></td>
                <td width="22%" align="left" valign="top" ><strong>Mimotopes</strong></td>
                <td width="10%" align="left" valign="top"><strong>tem_c_No</strong></td>
                <td width="9%" align="left" valign="top"><strong>tar_c_No</strong></td>
                <td width="20%" align="left" valign="top"><strong>epitopes</strong></td>
                <td width="6%" align="left" valign="top"><strong>size_e</strong></td>
                <td width="6%" align="left" valign="top"><strong>ref</strong></td>
                <td width="9%" align="left" valign="top"><strong>PMID</strong></td>
              </tr>	
       <c:forEach var="proteinList" items="${proteinList}">
      <tr class="benchmarktablecontent">
     
                <td align="left" valign="top">${proteinList.pdb_id}</td>
                 <td align="left" valign="top"><a href="${proteinList.benchid }" target="_blank">${proteinList.benchid }</a></td>
                <td align="left" valign="top" >${proteinList.mimotopes}</td>
                <td align="left" valign="top">${proteinList.tem_c_No}</td>
                <td align="left" valign="top">${proteinList.tar_c_No}</td>
                <td align="left" valign="top"><span class="STYLE14">${proteinList.epitopes}</span></td>
                <td align="left" valign="top">${proteinList.size_e}</td>
                <td align="left" valign="top">${proteinList.ref}</td>
                <td align="left" valign="top"><a href="${proteinList.pmlink}">${proteinList.PMID}</a></td>
      </tr>
       </c:forEach> 
       </table>
       </td>
       </tr>
       </table>
       <p><a href="#">Top↑</a></p>
</div>
<%@include file="footer.jsp" %>
</body>
</html>