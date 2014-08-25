// list-group-item 图片显示条目容器
// resources-wrap  所有条目的容器


$(function(){
  var  $_resource_info = $(".resource-info");

  //图片显示容器效果
  $(".list-group-item").click(function(){
  	  $_resource_info.show();
  	  $_resource_info.html('<div class="demo-box-loader"><div class="loader-help"></div></div>');
  	  $.get('/hoo/resources/getImage',{id:$(this).attr('id')},function(d){
  	  	$_resource_info.html(d);
  	  });
      
  });
  $("#resource-edi-save").click(function(){
      $_resource_info.children().remove();
  });

  $("#create-new-folder").click(function(){
  	var name = $("#new-folder-name").val();
  	$("#resources-left-nav").append('<li class=""><a href="#" data-toggle="tab">'+name+'</a></li>');

  	$("#create-new-folder-modal").modal("hide");
  });




});