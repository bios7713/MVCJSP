jQuery(function($){
	/* TOP 버튼 */ 
	$(".top-btn").on("click",function  () {	
		$("html, body").animate({scrollTop:0},1000,"easeOutQuint");
		return false; 
	});

	/* ------  TAB 공통  ------ */
	$(".tab-container").each(function  () {
		var $TabList = $(this).children(".tab-list");
		var $TabListli = $TabList.children("li");
		var $ConWrapper = $(this).children(".sub-content");
		var $Content = $ConWrapper.children(".tab-con");
		
		//$TabListli.first().addClass("select");
		$Content.first().fadeIn(400);

		$TabListli.children("a").click(function  () {
			if ( !$(this).parent().hasClass("select")) {
				var visibleCon = $(this).attr("href");
				//alert(visibleCon);
				$TabListli.removeClass("select");
				$(this).parent("li").addClass("select");
				$Content.hide();
				$(visibleCon).fadeIn(400);
			}
			return false;
		});
	});
});