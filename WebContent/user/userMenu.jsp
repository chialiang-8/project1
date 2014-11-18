<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="templates/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="templates/bootstrap/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css"
	href="templates/css/usercenter.css">
<script type="text/javascript"
	src="templates/jquery/js/jquery-1.10.2.js"></script>
<script type="text/javascript"
	src="templates/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="templates/jquery/js/jquery-ui-1.10.3.js"></script>
<script type="text/javascript"
	src="templates/jquery/js/jquery.form.js"></script>
<script type="text/javascript"
	src="templates/jquery/js/jquery.validate.js"></script>
<script type="text/javascript" src="templates/js/userMenu.js"></script>
</head>
<body>
<div class="container-fulid">
		<div class="row ">
			<div class="col-xs-12">
					<div id="menu" class="panel">
					<div class="panel panel-default">
					<div class="panel-heading">
						<span>用户管理</span>				
					</div>
					<div id="collapse1" class="panel-collapse" style="height: auto">
					<div id="sidbarmenu" class="panel-body ">
							<ul class="nav nav-pills nav-stacked" role="tablist">
								<li class="active">
								<a id="usermanager"  href="javascript:;">用户管理</a>
								</li>
								<li >
								<a id="rolemanager" href="javascript:;">角色管理</a>
								</li>
							</ul>
					</div>
					</div>
					</div>
				</div>
			</div>
</div>
</body>
</html>