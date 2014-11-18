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
						"<tr><td colspan=\"7\">"+
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
				             "<td>"+"q"+"</td>"+
				             "<td>"+users[i].id+"</td>"+
				             "<td>"+users[i].name+"</td>"+
				             "<td>"+users[i].status+"</td>"+
				             "<td>"+users[i].roleid+"</td>"+
				             "<td colspan=\"2\">"+"<a href=\"javascript:delUser("+users[i].id+");\" _idx=\""+users[i].id+"\" id=\"userdelete\" class=\"btn btn-info kongge\">删除</a>"+
				             "<a href=\"javascript:void(0)\" _idx=\""+users[i].id+"\" id=\"userupdate\" class=\"btn btn-info kongge\">修改</a>"+"</td>"+
				             "</tr>";
				 //alert(usershtml);
			 }
			// alert(usershtml);
			 $("#managerpanl").append("<table class=\"table table-hover table-condensed\">"+
						"<thead>"+
						"<tr>"+
						"<th></th>"+
						"<th>序号</th><th>用户名</th><th>状态</th><th>角色</th><th>操作</th>"+
						"<th></th>"+								
						"</tr>"+	
						"</thead>"+		
						"<tbody>"+
						usershtml+
						"</tbody>"+	
						"<tfoot>"+
						"<tr><td colspan=\"7\">"+
						"<span>"+"共有 "+users.length+" 条记录"+"</span>"+
						"</td></tr>"+
						"</tfoot>"+
						"</table>"
					 );
		 }
	 });
}

function delUser(id){
	//alert(id);
	var submit = function (v, h, f) {
	    if (v == 'ok') {
	        $.jBox.tip("正在删除数据...", 'loading');
	        // 模拟2秒后完成操作
	        window.setTimeout(function () { 
	        	$.get("sys/user/user_deleteUser.do?userid="+id,function(data, status){
	       	     if(data=="1"){
	       	    	$.jBox.tip('删除成功。', 'success');
	       	    	 refreshuserlist();
	       		 }else{
	       			$.jBox.tip('删除失败。', 'error');
	       		 }
	            });
	        	 }, 2000);
	    }
	    else if (v == 'cancel') {
	        // 取消
	    }
	    return true; //close
	};
	$.jBox.confirm("确定要删除数据吗？", "提示", submit);
}
$(document).ready(function(){
  //alert("ssssssssssssssssssssssss");
	refreshuserlist();
	
	 $(document).on( "click", "#useradd", function(){
		 $("#userdiagaddbutton").attr("_action","add");
		 
		 $('#addUserDiag').modal('show').on('shown',function(){
				// alert(id);
				// $("#diagbutton").attr("href","user_deleteUser.do?userid="+id);
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
});