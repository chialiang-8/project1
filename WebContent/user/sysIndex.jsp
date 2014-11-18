<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">

<title>用户管理</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<script type="text/javascript" src="templates/js/sysIndex.js"></script>
</head>
<body>
<div id="header">
	<div class="navbar navbar-default navbar-static-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">业务中心</a>
			</div>
			<div class="navbar-collapse in collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">门户首页</a>
					</li>
					<li class="active"><a href="#about">用户中心</a>
					</li>
					<li><a href="#contact">控制中心</a>
					</li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Dropdown <b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#">Action</a>
							</li>
							<li><a href="#">Another action</a>
							</li>
							<li><a href="#">Something else here</a>
							</li>
							<li class="divider"></li>
							<li class="dropdown-header">Nav header</li>
							<li><a href="#">Separated link</a>
							</li>

							<li class="divider"></li>
							<li><a href="user_logout"> <i
									class="glyphicon glyphicon-off"></i> 退出账号</a>
							</li>
						</ul></li>
				</ul>

			</div>
			<!--/.nav-collapse -->
		</div>

	</div>
</div>
<div id="center">
	<table align="center" width="99%">
		<tbody>
			<tr>
			 <td width="200px">
			  <iframe id="menuFrame" width="99%" height="500" frameborder="0" scrolling="no" border="false" framespacing="0" src="user/userMenu.jsp" name="menuFrame">
			  </iframe>
			 </td>
			 <td width="10px"></td>
			 <td>
			 <iframe id="contentFrame" width="99%" height="500"  frameborder="0" scrolling="no" border="false" framespacing="0" src="user/userInfo.jsp" name="contentFrame">
			  </iframe>
			 </td>
			</tr>
		</tbody>
	</table>
</div>
</body>
</html>