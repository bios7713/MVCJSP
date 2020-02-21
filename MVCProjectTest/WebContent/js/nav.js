/* ----------------------------------------
	nav.js (다국어 공통)
---------------------------------------- */

var dep1;
var dep2;

jQuery(function($){
	$gnbList = $("#gnb > ul");
	
	gnb_on();

	/* ======== GNB 하나씩 ========== */ 
	function gnb_on () {
		$gnbList.children("li").on("mouseenter focus",function  () {
			$gnbList.children("li").removeClass("on").children(".gnb-2dep").hide();
			$(this).children(".gnb-2dep").stop().slideDown(200);
		})
	
		$gnbList.on("mouseleave",gnb_return);
		$gnbList.find("a").last().on("focusout",gnb_return);
		function gnb_return () {
			$gnbList.children("li").removeClass("on").children(".gnb-2dep").hide();
			if ( dep1> 0 && dep2> 0 ) {
				$gnbList.children("li").eq(dep1-1).addClass("on");
			}
		}
	}


	// 오버하거나 포커스가 있을경우 활성화
	$gnbList.children("li").on("mouseenter focusin",function(){
		$(this).addClass("on");
	}).on("mouseleave focusout", function(){
		$(this).removeClass("on");
	})
	
	// SNB ON
	if ( dep1> 0 && dep2> 0 ) {
		$gnbList.children("li").eq(dep1-1).addClass("on");
		$(".snb").children("li").eq(dep2-1).addClass("on");
	}
	
	/* SNB 2DEPTH 오픈하기 */ 
	$(".snb > li:has('ul')").children("a").click(function(event){
		/* 2dep가 열려있을때 	*/	
		if ( $(this).parent("li").hasClass("active") ){
			$(this).parent("li").removeClass("active");
			$(this).siblings("ul").slideUp(400);					
		}
		/* 2dep가 닫혀있을때 */
		else{	  
			$(".snb > li").has("ul").each(function() {
				if ( $(this).hasClass("active") ){
					$(this).removeClass("active");
					$(this).children("ul").slideUp(400);
				}
			});	
			$(this).parent("li").addClass("active");
			$(this).siblings("ul").slideDown(400);
		}
		return false;
	});
});