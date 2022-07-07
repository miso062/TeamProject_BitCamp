<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="header">
		<jsp:include page="${head }"></jsp:include>
	</div>
	<div id="container1">
		<jsp:include page="${container1 }"></jsp:include>
	</div>
	<div id="container2">
		<jsp:include page="${container2}"></jsp:include>
	</div>
	<div id="footer">
		<jsp:include page="${footer }"></jsp:include>
	</div>
</body>
</html>