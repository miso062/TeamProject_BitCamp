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
			height: 30%;
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
</body>
</html>