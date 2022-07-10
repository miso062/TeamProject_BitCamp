<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body,
html {
    height: 100%;
    width:100%;
    margin: 0 auto;
}
#header{
height: 10%;
}
#nav_container{
    max-width: 1280px;
    margin: 0 auto;
    padding: 40px 40px 160px;
    width: 100%;
    height: auto;
    overflow: hidden;
}
#nav{
	float:left;
	width: 17%;
}
#container{
	float:left;
	width: 83%;
}
#container:after{
clear:both;
display:block;
}
#footer{
	display:block;
}
a {
	text-decoration: none;
}
</style>
</head>
<body>
	<div id="header">
		<jsp:include page="${head }"></jsp:include>
	</div>
	<div id=nav_container>
		<div id="nav">
			<jsp:include page="${nav }"></jsp:include>
		</div>
		<div id="container">
			<jsp:include page="${container }"></jsp:include>
		</div>
	</div>
	<div id="footer">
		<jsp:include page="${footer }"></jsp:include>
	</div>
</body>
</html>