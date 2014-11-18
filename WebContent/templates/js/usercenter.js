function refreshuserlist(){
	 $.getJSON("sys/user/user_getAllUsers.do", function(data, status){
			// alert("--------------");
		 var dataObj = eval("("+data+")");
		 var usershtml="";
		 if(dataObj == null){
			 $("#managerpanl").html("");
			 usershtml ="<tr><td colspan=6  align=\"center\">暂无记录</td></tr>";
			 $("#managerpanl").append("<table class=\"table table-hover table-condensed\">"+
						"<thead>"+
						"<tr>"+
						"<th>序号</th><th>用户名</th><th>状态</th><th>角色</th><th>操作</th>"+
						"<th><a href=\"javascript:void(0)\" id=\"useradd\" class=\"btn btn-large btn-info pull-right\">新增用户</a></th>"+								
						"</tr>"+	
						"</thead>"+		
						"<tbody>"+
						usershtml+
						"</tbody>"+	
						"<tfoot>"+
						"<tr><td colspan=\"6\">"+
						"<span>"+"共有 "+"0"+" 条记录"+"</span>"+
						"</td></tr>"+
						"</tfoot>"+
						"</table>"
					 );
			 return;
		 }
		
		 if(dataObj.success == true){
			 $("#managerpanl").html("");
			 var users = dataObj.user;
			 for(var i=0; i<users.length; i++){
				 usershtml +="<tr>"+
				             "<td>"+users[i].id+"</td>"+
				             "<td>"+users[i].name+"</td>"+
				             "<td>"+users[i].status+"</td>"+
				             "<td>"+users[i].roleid+"</td>"+
				             "<td colspan=\"2\">"+"<a href=\"javascript:void(0)\" _idx=\""+users[i].id+"\" id=\"userdelete\" class=\"btn btn-info kongge\">删除</a>"+
				             "<a href=\"javascript:void(0)\" _idx=\""+users[i].id+"\" id=\"userupdate\" class=\"btn btn-info kongge\">修改</a>"+"</td>"+
				             "</tr>";
				 //alert(usershtml);
			 }
			// alert(usershtml);
			 $("#managerpanl").append("<table class=\"table table-hover table-condensed\">"+
						"<thead>"+
						"<tr>"+
						"<th>序号</th><th>用户名</th><th>状态</th><th>角色</th><th>操作</th>"+
						"<th><a href=\"javascript:void(0)\" id=\"useradd\" class=\"btn btn-large btn-info pull-right\">新增用户</a></th>"+								
						"</tr>"+	
						"</thead>"+		
						"<tbody>"+
						usershtml+
						"</tbody>"+	
						"<tfoot>"+
						"<tr><td colspan=\"6\">"+
						"<span>"+"共有 "+users.length+" 条记录"+"</span>"+
						"</td></tr>"+
						"</tfoot>"+
						"</table>"
					 );
		 }
	 });
}

function refreshrolelist(){
	 $.getJSON("sys/user/role_getAllRoles.do", function(data, status){
			// alert("--------------");
		 var dataObj = eval("("+data+")");
		 var roleshtml="";
		 if(dataObj == null){
			 $("#managerpanl").html("");
			 roleshtml = "<tr><td colspan=\"4\" align=\"center\">暂无记录</td></tr>";
			 $("#managerpanl").append("<table class=\"table table-hover table-condensed\">"+
						"<thead>"+
						"<tr>"+
						"<th>序号</th><th>角色名</th><th>操作 </th>"+	
						"<th><a href=\"javascript:void(0)\" id=\"roleadd\" class=\"btn btn-large btn-info pull-right\">新增角色</a></th>"+
						"</tr>"+	
						"</thead>"+		
						"<tbody>"+
						roleshtml+
						"</tbody>"+	
						"<tfoot>"+
						"<tr><td colspan=\"4\">"+
						"<span>"+"共有 "+"0"+" 条记录"+"</span>"+
						"</td></tr>"+
						"</tfoot>"+
						"</table>"
					 );
			 return;
		 }

		 if(dataObj.success == true){
			 $("#managerpanl").html("");
			 var roles = dataObj.role;
			 for(var i=0; i<roles.length; i++){
				 roleshtml +="<tr>"+
				             "<td>"+roles[i].id+"</td>"+
				             "<td>"+roles[i].name+"</td>"+
				             "<td colspan=\"2\">"+"<a href=\"javascript:void(0)\" _idx=\""+roles[i].id+"\" id=\"roledelete\" class=\"btn btn-info kongge\">删除</a>"+
				             "<a href=\"javascript:void(0)\" _idx=\""+roles[i].id+"\" id=\"roleupdate\" class=\"btn btn-info kongge\">修改</a>"+"</td>"+
				             "</tr>";
				 //alert(usershtml);
			 }
			// alert(usershtml);
			 $("#managerpanl").append("<table class=\"table table-hover table-condensed\">"+
						"<thead>"+
						"<tr>"+
						"<th>序号</th><th>角色名</th><th>操作 </th>"+	
						"<th><a href=\"javascript:void(0)\" id=\"roleadd\" class=\"btn btn-large btn-info pull-right\">新增角色</a></th>"+
						"</tr>"+	
						"</thead>"+		
						"<tbody>"+
						roleshtml+
						"</tbody>"+	
						"<tfoot>"+
						"<tr><td colspan=\"4\">"+
						"<span>"+"共有 "+roles.length+" 条记录"+"</span>"+
						"</td></tr>"+
						"</tfoot>"+
						"</table>"
					 );
		 }
	 });
}

function checkForm(){
	alert("----------------------------------------------222-----ssssssssssssss-------\n");
	 $("#useraddform").validate({
		  	rules:{
		  		username:{required:true},
		  		password:{required:true, maxlength:10, minlength:6},
		  		role:{required:true},
		  	},
		  	messages:{
		  		username:{required:"不能为空"},
		  		password:{required:"不能为空", maxlength:jQuery.format("不能超过{0}个字符"),minlength:jQuery.format("不能少于{0}个字符")},
		  		role:{required:"不能为空"},
		  	},
			submitHandler:function(form){
		  		alert("----------------------------------------------222------------\n");
		  		var str = $("#useraddform").formSerialize();
		  		//alert(str);
		  		$.post('sys/user/user_addUser.do', str, function(data,textStatus){
		  			if(data == "0"){
		  			  		 alert("sssssssss");
		  				  	 //$("#showmsg").html("信息填写错误");
		  				  	 // $("#showmsg").css("display","block");
		  			}else{
		  			  		alert("sssssssss1");
		  					refreshuserlist();
		  			  	 	//$("#showmsg").html("保存成功");
		  			  	 	//  $("#showmsg").css("display","block");
		  			  	 }
		  		   },'json'
		  	    );
		  	},
	  });
}
$(document).ready(function(){
  //alert("ssssssssssssssssssssssss");
	refreshuserlist();
	
	 $(document).on( "click", "#usermanager", function(){
		 $(this).parent().parent().find("li").removeClass("active");
		 $(this).parent().addClass("active");
		 $("#mainheader").children("span").val("sssssss");
		 refreshuserlist();
	 });
	 
	 $(document).on( "click", "#rolemanager", function(){
		 //alert("--------------------");
		 $(this).parent().parent().find("li").removeClass("active");
		 $(this).parent().addClass("active");
		 refreshrolelist();
	 });
	 
	 $(document).on( "click", "#useradd", function(){
		 $("#userdiagaddbutton").attr("_action","add");
		 
		 $('#addUserDiag').modal('show').on('shown',function(){
				// alert(id);
				// $("#diagbutton").attr("href","user_deleteUser.do?userid="+id);
	     });
	 });
	 
	 $(document).on( "click", "#userdelete", function(){
		 id = $(this).attr("_idx");
		 //alert("sssssssssssssssss"+id);
		 $("#userdiagdeletebutton").attr("_idx",id);
		 $("#userdiagdeletebutton").attr("_action","delete");
		 $('#delUserDiag').modal('show').on('shown',function(){
			 //alert(id);
			// $("#diagbutton").attr("href","user_deleteUser.do?userid="+id);
		 });
		// alert("sssssssssssssssss");
	 });
	 
	 $(document).on("click", "#userdiagdeletebutton", function(){
		 action = $(this).attr("_action");
		 id = $(this).attr("_idx");
		 $.get("user_deleteUser.do?userid="+id,function(data, status){
		     if(data=="1"){
				 refreshuserlist();
			 }
	     });
	 });
	 
	 $(document).on("click", "#userdiagupdatebutton", function(){
		 action = $(this).attr("_action");
	
			 //alert("---------------------"+action+"-----"+id);
			 id = $(this).attr("_idx");
			 $.get("user_deleteUser.do?userid="+id,function(data, status){
				 if(data=="1"){
					 refreshuserlist();
				 }
			 });
	 });
	 $(document).on( "click", "#userdiagaddbutton", function(){

			 //alert("------------------1111111----------------------------------------\n");
		 $("#addUserDiag").find("useraddform").submit();
		//	 $("#useraddform").submit();
			
	 });
	 
	 $(document).on( "click", "#roledelete", function(){
		 id = $(this).attr("_idx");
		 $("#rolediagbutton").attr("_idx",id);
		 $("#rolediagbutton").attr("_action","delete");
		 $('#delRoleDiag').modal('show').on('shown',function(){
			// alert(id);
			// $("#diagbutton").attr("href","user_deleteUser.do?userid="+id);
		 });
		// alert("sssssssssssssssss");
	 });
	 
	 $(document).on( "click", "#rolediagbutton", function(){
		 action = $(this).attr("_action");
		 id = $(this).attr("_idx");
		 
		 if("delete" == action){
			 //alert("---------------------"+action+"-----"+id);
			 $.get("sys/user/role_deleteRole.do?roleid="+id,function(data, status){
				 if(data=="1"){
					 refreshrolelist();
				 }
			 });
		 }else if("update" == action){
			 
		 }
	 });
 });