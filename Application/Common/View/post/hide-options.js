 var $hide_options_button = $("#hide_options_button");
 var $hide_help_button    = $("#hide_help_button");
 var $hide_help_wrap       = $("#hide_help_wrap");
 var $hide_options_wrap    = $("#hide_options_wrap");
 $hide_options_button.click(function(){
 	    $hide_help_button.find("i").removeClass("fa-caret-up").addClass("fa-caret-down");
 	    $hide_help_button.parent().removeClass("bg-cloud"); 
 	    $hide_options_wrap.slideToggle(200,function(){
		    if($(this).is(":hidden")){
		       $hide_options_button.find("i").removeClass("fa-caret-up").addClass("fa-caret-down");	
		       $hide_options_button.parent().removeClass("bg-cloud");	
		    }else{
		       $hide_options_button.find("i").removeClass("fa-caret-down").addClass("fa-caret-up");
		       $hide_options_button.parent().addClass("bg-cloud");
		    }
		    $hide_help_wrap.hide(200);
 	        
	    });
 	    
		
	    return false;
});
$hide_help_button.click(function(){
		$hide_options_button.find("i").removeClass("fa-caret-up").addClass("fa-caret-down");
		$hide_options_button.parent().removeClass("bg-cloud");
		$hide_help_wrap.slideToggle(200,function(){
		    if($(this).is(":hidden")){
		        $hide_help_button.find("i").removeClass("fa-caret-up").addClass("fa-caret-down");	
		        $hide_help_button.parent().removeClass("bg-cloud");
		    }else{
		       $hide_help_button.find("i").removeClass("fa-caret-down").addClass("fa-caret-up");
		       $hide_help_button.parent().addClass("bg-cloud");
		    }
		     $hide_options_wrap.hide(200);
	    });
	   
	    return false;
});
 