<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<input type="button" value="login" id="loginBtn">
	<div id="header">
		<jsp:include page="${head }"></jsp:include>
	</div>
	<div id="container">
		<div id="container1"><jsp:include page="${container1 }"></jsp:include></div>
		<div id="container2"><jsp:include page="${container2 }"></jsp:include></div>
		<div id="container3"><jsp:include page="${container3 }"></jsp:include></div>
	</div>
	<div id="footer">
		<jsp:include page="${foot }"></jsp:include>
	</div>
  <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script type="text/javascript">
  		$('#loginBtn').click(function(){
          location.href="/TeamProject/user/login";
      })
  </script>
</body>

</html>
