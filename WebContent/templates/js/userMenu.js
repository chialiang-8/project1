$(document).ready(function(){
	 $(document).on( "click", "#usermanager", function(){
		 $(this).parent().parent().find("li").removeClass("active");
		 $(this).parent().addClass("active");
		 $("#contentFrame",window.parent.document).attr("src","user/userInfo.jsp");
	 });
	 
	 $(document).on( "click", "#rolemanager", function(){
		 //alert("--------------------");
		 $(this).parent().parent().find("li").removeClass("active");
		 $(this).parent().addClass("active");
		 $("#contentFrame",window.parent.document).attr("src","user/roleInfo.jsp");
	 });
});