<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#fotter{
width:100%;
height:10%;
}
#header{
width:100%;
height:10%;
}
#container{
width:100%;
heighet:80%;
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
		<%-- <jsp:include page="${footer }"></jsp:include> --%>
	</div>
</body>
</html>