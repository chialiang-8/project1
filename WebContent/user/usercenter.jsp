<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>ssss</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
<script type="text/javascript" src="templates/js/usercenter.js"></script>

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
<div id="main">
	<div class="container-fulid">
		<div class="row ">
			<div class="col-xs-2">
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
			<div class="col-xs-9">
				<div class="panel panel-default">
				<div class="panel-heading">
				 <i></i>
				 <div id="mainheader">
				 <span>用户信息</span>
				 </div>
				</div>
				<div class="panel-body">
					<div class="col-md-11 col-md-offset-1">
					    <div class="row">
					        <div id="addmanagerpanel">
					        
					        </div>
					        <div id="managerpanl">
	
						    </div>
					    </div>
						
					</div>
				</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div id="usermanagerblock">
<div class="modal fade" id="addUserDiag" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h3 class="modal-title" id="myModalLabel" style="font-size:14px">增加用户</h3>
      </div>
      <div class="modal-body">
          <div class="row">
           <div class="col-md-8">
           <form id="useraddform" class="form form-horizontal" onsubmit="return checkForm();" method="post">
           <div class="form-group">
              <label for="username">用户名:</label>
              <input id="username" name="username" type="text" class="form-control"> </input>
           </div>
            <div class="form-group">
              <label for="password">密码:</label>
              <input id="password" name="password" type="password" class="form-control"> </input>
             </div>
              <div class="form-group">
              <label for="role">角色:</label>
              <select id="role" name="role" class="form-control"> 
               </select>
              </div>
          </form>
          </div>
          </div>
 
      </div>
      <div class="modal-footer">
        <a class="btn btn-default" data-dismiss="modal">取消</a>
        <a id="userdiagaddbutton" class="btn btn-primary " data-dismiss="modal" aria-hidden="true" >保存</a>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>

<div class="modal fade" id="delUserDiag" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">确认删除</h4>
      </div>
      <div class="modal-body">
                     <p>确认要删除用户吗？</p>
      </div>
      <div class="modal-footer">
        <a class="btn btn-default" data-dismiss="modal">取消</a>
        <a id="userdiagdeletebutton"  class="btn btn-primary" data-dismiss="modal" aria-hidden="true" >删除</a>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>

<div class="modal fade" id="updateUserDiag" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">用户信息修改</h4>
      </div>
      <div class="modal-body">
                     <p>修改用户</p>
      </div>
      <div class="modal-footer">
        <a class="btn btn-default" data-dismiss="modal">取消</a>
        <a id="userdiagupdatebutton" class="btn btn-primary" data-dismiss="modal" aria-hidden="true" >保存</a>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>
</div>

<div id="rolemanagerblock">
<div class="modal fade" id="addRoleDiag" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">确认删除</h4>
      </div>
      <div class="modal-body">
                     <p>增加角色</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal" aria-hidden="true" onclick="javascript:;" >删除</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>

<div class="modal fade" id="delRoleDiag" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">确认删除</h4>
      </div>
      <div class="modal-body">
                     <p>确认要删除角色吗？</p>
      </div>
      <div class="modal-footer">
        <a class="btn btn-default" data-dismiss="modal">取消</a>
        <a id="rolediagbutton" class="btn btn-primary" data-dismiss="modal" aria-hidden="true" >删除</a>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>

<div class="modal fade" id="updateRoleDiag" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">确认删除</h4>
      </div>
      <div class="modal-body">
                     <p>修改用户</p>
      </div>
      <div class="modal-footer">
        <a class="btn btn-default" data-dismiss="modal">取消</a>
        <a id="rolediagbutton" class="btn btn-primary" data-dismiss="modal" aria-hidden="true" >保存</a>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>
</div>

</body>
</html>
