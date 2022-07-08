<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body, button, dd, div, dl, dt, fieldset, figcaption, figure, form, h1, h2, h3, h4, h5, h6, input, legend, li, ol, p, select, table, td, textarea, th, ul {
   		margin: 0;
   		padding: 0;
	}
	body, button, input, select, table, textarea {
    	font-family: -apple-system,BlinkMacSystemFont,Roboto,AppleSDGothicNeo-Regular,NanumBarunGothic,NanumGothic,나눔고딕,Segoe UI,Helveica,Arial,Malgun Gothic,Dotum,sans-serif;
    	color: #222;
	}
	body {
		width: 100%;
		height : 100%;
	}
	#header {
		width: 100%;
		height:100px;
	}
	
	.my_snb {
		float:left;
		width : 170px;
	}
	.my_content {
		position : relative;
	
		width : 560px;
	}
	
	body, html {
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
	.container.my[data-v-3259a5f6] {
    	margin: 0 auto;
    	padding: 40px 40px 160px;
    	max-width: 1280px;
	}
    .container.my .content_area1[data-v-3259a5f6] {
        overflow: hidden;
        min-height: 380px;
    }
	*, :after, :before {
		-webkit-box-sizing: border-box;
		box-sizing: border-box;
		-webkit-tap-highlight-color: transparent;
	}	
</style>

</head>
<body>
	<div id="header">
		<jsp:include page="${head }"></jsp:include>
	</div>
	<div data-v-3259a5f6="" class="container my lg">
		<div data-v-3259a5f6="">
			 <jsp:include page="${nav }"></jsp:include> 
		</div>
		<div data-v-5f779880="" data-v-3259a5f6="" class="content_area1">
			<jsp:include page="${container }"></jsp:include>
		</div>
	</div>
	<div id="footer">
		<jsp:include page="${footer }"></jsp:include> 
	</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>

</body>
</html>