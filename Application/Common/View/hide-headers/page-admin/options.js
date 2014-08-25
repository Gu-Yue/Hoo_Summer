/*
 * option
 * ident
 * para  hide/show
 * target
 */
if(para=="hide"){
	$("."+target).hide();
	if(target == "option_tiny_window"){
	   $("#main-table").removeClass("span9").addClass("span12");
	}
}else{
	$("."+target).show();
	if(target == "option_tiny_window"){
	$("#main-table").removeClass("span12").addClass("span9");
    }
}


