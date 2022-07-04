<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<style>

.slider-wrap{
}
.c1_slick-arrow{
position: absolute; top:50%; transform:translateY(-50%);
width: 64px; height:64px;
color:#fff;
border: none;
text-indent: -9999px;
overflow: hidden;

}
.c1_slick-prev{
	z-index:100;
	left:1%;
	background: url(/TeamProject/img/container1/c1_prev.png) no-repeat 0 0;
}
.c1_slick-next{
	right:1%;
	background: url(/TeamProject/img/container1/c1_next.png) no-repeat 0 0;
}
.slick-dots {
  bottom: 2%;
  left: 50%; 
  transform:translateX(-50%);
  list-style: none;
  text-align: end;
  position: absolute;
  padding: 0;
}

.slick-dots li {
  position: relative;
  display: inline-block;
  width: 20px;
  height: 20px;
  /*margin: 1px;*/
  padding: 0;
  cursor: pointer;
}

.slick-dots li button {
  font-size: 0;
  line-height: 0;
  display: block;
  width: 20px;
  height: 20px;
  padding: 5px;
  cursor: pointer;
  color: transparent;
  border: 0;
  outline: 0;
  background: 0 0;
}

.slick-dots li button:before {
  font-size: 2.7rem;
  line-height: 20px;
  position: absolute;
  top: 0;
  left: 0;
  width: 20px;
  height: 20px;
  content: '•';
  text-align: center;
  opacity: .75;
  color: #6D6968;
}

.slick-dots li.slick-active button:before {
  opacity: .75;
  color: #ffffff;
}
#c1_bannerimg{
	width: 100%;
}
</style>
<style type="text/css">
.c1_bannerimg1{
	border-radius: 8px;
	width:100%;
}
.c1_banner1-1{
	margin-right: 7%;
	margin-left: 7%;
	display: flex;
}
.c1_banner1{
	flex:1;
	margin:0.7%;
	width: 20%;
}
.c1_text{
  text-align: center;
}
</style>

<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script type="text/javascript">
$(function(){
	$.noConflict();
	$('.c1_slider-wrap').slick({
		  dots: true,
		  infinite: true,
		  speed: 500,
		  fade: true,
		  cssEase: 'linear',
		  autoplay: true,
		  prevArrow : "<button class='c1_slick-prev c1_slick-arrow'></button>",
		  nextArrow : "<button class='c1_slick-next c1_slick-arrow'></button>",
		  autoplaySpeed: 2000
	});
});
</script>
</head>
<body topmargin="0"  leftmargin="0" marginwidth="0" marginheight="0">
<div class="c1_slider-wrap">
    <div class="c1_banner"><img id="c1_bannerimg" src="/TeamProject/img/container1/c1_banner1.jpg" alt=""></div>
    <div class="c1_banner"><img id="c1_bannerimg" src="/TeamProject/img/container1/c1_banner2.jpg" alt=""></div>
    <div class="c1_banner"><img id="c1_bannerimg" src="/TeamProject/img/container1/c1_banner3.jpg" alt=""></div>
    <div class="c1_banner"><img id="c1_bannerimg" src="/TeamProject/img/container1/c1_banner4.jpg" alt=""></div>
    <div class="c1_banner"><img id="c1_bannerimg" src="/TeamProject/img/container1/c1_banner5.jpg" alt=""></div>
    <div class="c1_banner"><img id="c1_bannerimg" src="/TeamProject/img/container1/c1_banner6.jpg" alt=""></div>
    <div class="c1_banner"><img id="c1_bannerimg" src="/TeamProject/img/container1/c1_banner7.jpg" alt=""></div>
    <div class="c1_banner"><img id="c1_bannerimg" src="/TeamProject/img/container1/c1_banner8.jpg" alt=""></div>
    <div class="c1_banner"><img id="c1_bannerimg" src="/TeamProject/img/container1/c1_banner9.jpg" alt=""></div>
</div>
<br>
<div class="c1_banner1-1">
	<div class="c1_banner1">
		<img class="c1_bannerimg1" src="/TeamProject/img/container1/c1_banner1-1.jpg" alt="">
		<div class="c1_text">NEW!</div>
	</div>
	<div class="c1_banner1">
		<img class="c1_bannerimg1" src="/TeamProject/img/container1/c1_banner1-2.jpg" alt="">
		<div class="c1_text">남성 추천</div>
	</div>
	<div class="c1_banner1">
		<img class="c1_bannerimg1" src="/TeamProject/img/container1/c1_banner1-3.jpg" alt="">
		<div class="c1_text">여성 추천</div>
	</div>
	<div class="c1_banner1">
		<img class="c1_bannerimg1" src="/TeamProject/img/container1/c1_banner1-4.jpg" alt="">
		<div class="c1_text">골프</div>
	</div>
	<div class="c1_banner1">
		<img class="c1_bannerimg1"src="/TeamProject/img/container1/c1_banner1-5.jpg" alt="">
		<div class="c1_text">누구나 창고보관</div>
	</div>
</div>


<div class="c1_banner1-1">
	<div class="c1_banner1">
		<img class="c1_bannerimg1" src="/TeamProject/img/container1/c1_banner2-1.jpg" alt="">
		<div class="c1_text">빠른배송</div>
	</div>
	<div class="c1_banner1">
		<img class="c1_bannerimg1" src="/TeamProject/img/container1/c1_banner2-2.jpg" alt="">
		<div class="c1_text">샤넬 즉시구매</div>
	</div>
	<div class="c1_banner1">
		<img class="c1_bannerimg1" src="/TeamProject/img/container1/c1_banner2-3.jpg" alt="">
		<div class="c1_text">#하프앤하프 챌린지</div>
	</div>
	<div class="c1_banner1">
		<img class="c1_bannerimg1" src="/TeamProject/img/container1/c1_banner2-4.jpg" alt="">
		<div class="c1_text">서머 슈즈</div>
	</div>
	<div class="c1_banner1">
		<img class="c1_bannerimg1" src="/TeamProject/img/container1/c1_banner2-5.jpg" alt="">
		<div class="c1_text">이용 가이드</div>
	</div>
</div>

</body>
</html>
