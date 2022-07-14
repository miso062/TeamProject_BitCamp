<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
	<script src="/TeamProject/js/shop/chart.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
	<link rel="stylesheet" href="../css/shop/shopDetailContainer2.css">
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
			height: 100px;
		}
	</style>
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