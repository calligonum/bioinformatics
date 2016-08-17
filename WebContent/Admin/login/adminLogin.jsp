<%@ page language="java" pageEncoding="GB18030"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>后台登陆</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<style type="text/css">

</style>
<script type="text/javascript">
	function login(self) {
		var name = document.getElementById("name");
		var password = document.getElementById("password");
		if(name.value != "" && password.value != "") {
			self.href = "AdminLoginServlet?name="+name.value+"&"+"password="+password.value;
		}
	}
	function reset() {
		var name = document.getElementById("username");
		var password = document.getElementById("password");
		name.value = "";
		password.value = "";
	}
</script>
<link rel="stylesheet" type="text/css" href="Admin/style/admin.css" />
  </head>
  
  <body >
  <div class="denglu" style="background-image:url(image/denglu1.gif)" >
   
    <form method="post" action="AdminLoginServlet" >
  
<p>用&nbsp;户&nbsp;名:&nbsp;&nbsp;&nbsp; <input type="text" name="name" id="name"/></p><br/>
<p> 密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;&nbsp; <input type="password" name="password" id="password"/></p><br/>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="button" value="重置" onclick="reset()"/> 
      &nbsp;&nbsp;<input type="submit" value="登录" />${message }
    </form>
   </div>

  </body>
</html>
