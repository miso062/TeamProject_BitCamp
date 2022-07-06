<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
	#container {
		width:100%;

	}
	.my_snb {
		float:left;
		width : 170px;
	}
	.my_content {
		position : relative;
	
		width : 560px;
	}
	
</style>

</head>
<body>
	<div id="header">
		<jsp:include page="${head }"></jsp:include>
	</div>
	<div id="container">
		<div class="my_snb">
			<%-- <jsp:inclued page="${nav }"></jsp:inclued> --%>
		</div>
		<div class="my_content">
			<jsp:include page="${container }"></jsp:include>
		</div>
	</div>
	<div id="footer">
		<%--<jsp:include page="${footer }"></jsp:include> --%>
	</div>
</body>
</html>