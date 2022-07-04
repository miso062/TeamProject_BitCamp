<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
</head>
<body>
	<input type="button" value="login" id="loginBtn">
  	<input type="button" value="공지사항" id="noticeBtn">
	<div id="header">
		<jsp:include page="${head }"></jsp:include>
	</div>
	<div id="container">
		<div id="container1"><jsp:include page="${container1 }"></jsp:include></div>
		<div id="container2"><jsp:include page="${container2 }"></jsp:include></div>
		<div id="container3"><jsp:include page="${container3 }"></jsp:include></div>
	</div>
	<div id="footer">
		<jsp:include page="${footer }"></jsp:include>
	</div>
  <script type="text/javascript">
  	$('#loginBtn').click(function(){
  		location.href="/TeamProject/user/login";
  	});
    $('#noticeBtn').click(function(){
      location.href="/TeamProject/notice"
    });
  </script>
</body>

</html>
