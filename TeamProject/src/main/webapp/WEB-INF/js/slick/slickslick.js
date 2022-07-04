(function(){
$.noConflict();
	
	$('.c1_slider-wrap').slick({
		  dots: true,
		  infinite: true,
		  speed: 500,
		  fade: true,
		  cssEase: 'linear',
		  autoplay: true,
		  autoplaySpeed: 2000
	});
	$.noConflict();
	$('.c3_slider-wrap').slick({
		
		slide : 'div', //슬라이드 되어야 할 태그
		infinite : false, //무한 반복 옵션     
		slidesToShow : 6, // 한 화면에 보여질 컨텐츠 개수
		slidesToScroll : 1, //스크롤 한번에 움직일 컨텐츠 개수
		speed : 500, // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
		arrows : true, // 옆으로 이동하는 화살표 표시 여부
		dots : false, // 스크롤바 아래 점으로 페이지네이션 여부
		autoplay : false, // 자동 스크롤 사용 여부
		pauseOnHover : false, // 슬라이드 이동    시 마우스 호버하면 슬라이더 멈추게 설정
		vertical : false, // 세로 방향 슬라이드 옵션
		prevArrow : "<div class='c3_slick-prev'><<div>",
		nextArrow : "<div class='c3_slick-next'>></div>",
		draggable : true, //드래그 가능 여부 
		responsive : [ // 반응형 웹 구현 옵션
		{
			breakpoint : 960, //화면 사이즈 960px
			settings : {
				slidesToShow : 4
			}
		}, {
			breakpoint : 768, //화면 사이즈 768px
			settings : {
				slidesToShow : 5
			}
		} ]
	});
})