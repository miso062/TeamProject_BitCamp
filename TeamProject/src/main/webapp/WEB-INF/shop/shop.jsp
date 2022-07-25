<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<meta charset="UTF-8">
	<title>SHOP | GESE-T</title>
	
	<style type="text/css">
		body,
		html {
		    height: 100%;
		    -ms-text-size-adjust: none;
		    -moz-text-size-adjust: none;
		    -webkit-text-size-adjust: none;
		    -moz-osx-font-smoothing: grayscale;
		    -webkit-font-smoothing: antialiased;
		    -webkit-overflow-scrolling: touch;
		    -ms-touch-action: manipulation;
		    touch-action: manipulation;
		}
		#header{
			height: 320px;
		}
		.index_top_div {
			background-color : #ffffff;
			/* border: 1px solid #CCCCCC; */
			text-align : center;
			border-radius : 50%;
			box-shadow: 0px 1px 3px 3px #ccc;
		}	
	</style>
</head>
<body>
	<div id="header">
		<jsp:include page="${head }"></jsp:include>
	</div>
	<div id="container">
		<jsp:include page="${container }"></jsp:include>
	</div>
	<div id="footer">
		<jsp:include page="${footer }"></jsp:include>
	</div>
	<div style="position:fixed; bottom:30px; right:30px; width:50px; height:50px;" class="index_top_div">
		<img src="/TeamProject/img/up-arrow.png" alt =" 화살표" id="index_top" style="width:24px; height:24px; margin-top:10px;">
	</div>
	<script type="text/javascript">
		window.onload = function(){
			setTimeout(function(){
				scrollTo(0,0);
			}, 100);
		}
		//맨 위로 버튼
	    $(function(){
	    	$('.index_top_div').click(function(){
	    		$('html, body').animate({scrollTop:0}, '300');
	    	});
	    });
	    $('.index_top_div').hide();
	    $(window).scroll(function() {
		    // top button controll
		    if ($(this).scrollTop() > 200) {
		        $('.index_top_div').fadeIn();
		    } else {
		        $('.index_top_div').fadeOut();
		    }
		});
	</script>
</body>
</html>