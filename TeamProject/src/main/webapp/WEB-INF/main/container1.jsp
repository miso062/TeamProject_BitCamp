<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<style>

.slider-wrap{
}
.slick-arrow{
position: absolute; top:50%; transform:translateY(-50%);
width: 64px; height:64px;
color:#fff;
border: none;
text-indent: -9999px;
overflow: hidden;

}
.slick-prev{z-index:100;left:1%;
	background: url(/TeamProject/img/container1/prev.png) no-repeat 0 0;
}
.slick-next{right:1%;
	background: url(/TeamProject/img/container1/next.png) no-repeat 0 0;
}
.slick-dots {
  bottom: 10px;
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
.banner {

  
}
#bannerimg{
	width: 100%;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
</head>
<body topmargin="0"  leftmargin="0" marginwidth="0" marginheight="0">
<div class="slider-wrap">
    <div class="banner"><img id="bannerimg" src="/TeamProject/img/container1/banner1.jpg" alt=""></div>
    <div class="banner"><img id="bannerimg" src="/TeamProject/img/container1/banner2.jpg" alt=""></div>
    <div class="banner"><img id="bannerimg" src="/TeamProject/img/container1/banner3.jpg" alt=""></div>
    <div class="banner"><img id="bannerimg" src="/TeamProject/img/container1/banner4.jpg" alt=""></div>
    <div class="banner"><img id="bannerimg" src="/TeamProject/img/container1/banner5.jpg" alt=""></div>
    <div class="banner"><img id="bannerimg" src="/TeamProject/img/container1/banner6.jpg" alt=""></div>
    <div class="banner"><img id="bannerimg" src="/TeamProject/img/container1/banner7.jpg" alt=""></div>
    <div class="banner"><img id="bannerimg" src="/TeamProject/img/container1/banner8.jpg" alt=""></div>
    <div class="banner"><img id="bannerimg" src="/TeamProject/img/container1/banner9.jpg" alt=""></div>
</div>
<h1>?</h1>

</body>
<script type="text/javascript">
$(function(){
	$.noConflict();
	$('.slider-wrap').slick({
		  dots: true,
		  infinite: true,
		  speed: 500,
		  fade: true,
		  cssEase: 'linear',
		  autoplay: true,
		  autoplaySpeed: 2000
		});
});
</script>
</html>