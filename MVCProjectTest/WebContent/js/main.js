/* *******************************************************
 * filename : main.js
 * description : 메인에만 사용되는 JS
 * date : 2017-05-30
******************************************************** */


jQuery(function($){
	var $slick_carousel = $(".main-visual");
	var $slick_visual_list = $slick_carousel.find(".visual-inner");

	// 비주얼 시작할때
	$slick_carousel.on('init', function(event, slick) {
		setTimeout(function  () {
			$(".visual-inner").eq(0).addClass("active");
			$(".visual-inner").eq(0).find(".visual-txt").addClass("active");
		},1000);
	});
	// 비주얼이 돌아갈때
	$slick_carousel.on('afterChange', function(event, slick, currentSlide){
        $(".visual-inner").removeClass("active");
		$(".visual-txt").removeClass("active");
		$(this).find(".visual-inner").eq(currentSlide).addClass("active");
		$(this).find(".visual-inner").eq(currentSlide).children(".visual-txt").addClass("active");
    });
	// 메인 비주얼 롤링
	$slick_carousel.slick({
		dots: false,
		infinite: true,
		arrows:false,
		pauseOnHover:false,
		autoplay:true,
		autoplaySpeed: 5000,
		slidesToShow: 1,
		slidesToScroll: 1,
		fade:true,
		prevArrow: '<button type="button" data-role="none" class="slick-prev" aria-label="Prev" tabindex="0" role="button"><img src="/images/main/visual_prev.png" alt=""></button>',
		nextArrow: '<button type="button" data-role="none" class="slick-next" aria-label="Next" tabindex="0" role="button"><img src="/images/main/visual_next.png" alt=""></button>'
	});

	$(".main-rolling").slick({
		dots: false,
		infinite: true,
		arrows:true,
		pauseOnHover:false,
		autoplay:true,
		autoplaySpeed: 5000,
		slidesToShow: 4,
		slidesToScroll: 1,
		fade:false,
		prevArrow: '<button type="button" data-role="none" class="slick-prev" aria-label="Prev" tabindex="0" role="button"><img src="/kr/images/main/main_rolling_prev.png" alt=""></button>',
		nextArrow: '<button type="button" data-role="none" class="slick-next" aria-label="Next" tabindex="0" role="button"><img src="/kr/images/main/main_rolling_next.png" alt=""></button>'
	});

	$(".main-notice-inner").slick({
		dots: false,
		infinite: true,
		arrows:false,
		pauseOnHover:false,
		autoplay:true,
		autoplaySpeed: 5000,
		slidesToShow: 1,
		slidesToScroll: 1,
		fade:false,
		vertical:true
	});
});