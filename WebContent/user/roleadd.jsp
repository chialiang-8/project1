<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>roleadd</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link rel="stylesheet" type="text/css" href="templates/bootstrap/css/bootstrap.min.css">
    <script type="text/javascript" src="templates/jquery/js/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="templates/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="templates/js/usercenter.js"></script>
  </head>
  
  <body>
    <form action="role_addRole.do" method="post">
    	role:<input type="text" name="rolename">
    	<br>
    	<input type="submit" value="submit">
    </form>
    
    <table border="1px">
       <thead>
        <tr>
         <th width="10%">序号</th>
         <th width="40%">名称</th>
         <th width="20%">操作</th>
        </tr>
       </thead>
       <tbody>
       <s:if test="#session.allroles.size>0">
       	    <s:iterator value="#session.allroles" var="role" begin="0">
       	    	<tr>
       	    	    <td>${role.id }</td>
       	    	    <td>${role.name }</td>
       	    	    <td><a href="role_deleteRole.do?roleid=${role.id}" class="btn">删除</a></td>
       	    	    <td><a href="role_editRole.do?roleid=${role.id}" class="btn">修改</a></td>
       	    	</tr>
       	    </s:iterator>
       	</s:if>
       </tbody>
    </table>

  </body>
</html>
