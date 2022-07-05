<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>GESE</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
	<style type="text/css">
		body{
		    margin-top: 50px;
		    padding-top: 0;
		    padding-bottom: 0;
		}
		body, button, input, select, table, textarea {
		    font-family: -apple-system,BlinkMacSystemFont,Roboto,AppleSDGothicNeo-Regular,NanumBarunGothic,NanumGothic,나눔고딕,Segoe UI,Helveica,Arial,Malgun Gothic,Dotum,sans-serif;
		    color: #222;
		}
		body, button, dd, div, dl, dt, fieldset, figcaption, figure, form, h1, h2, h3, h4, h5, h6, input, legend, li, ol, p, select, table, td, textarea, th, ul {
		    margin: 0;
		    padding: 0;
		}
		div {
		    display: block;
		}
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
		a {
		    color: inherit;
		    -webkit-tap-highlight-color: rgba(0,0,0,.1);
		}
		a, a:active, a:focus, a:hover {
		    text-decoration: none;
		}
		a:-webkit-any-link {
		    cursor: pointer;
		}
		*, :after, :before {
		    -webkit-box-sizing: border-box;
		    box-sizing: border-box;
		    -webkit-tap-highlight-color: transparent;
		}
		li, ol, ul {
			list-style-position: initial;
		    list-style-image: initial;
		    list-style-type: none;
		}
		ul {
		    margin-inline-start: 0px;
		    margin-inline-end: 0px;
		    padding-inline-start: 40px;
		}
		li {
		    display: list-item;
		    text-align: -webkit-match-parent;
		}
		#header{
			width: 100%;
			height: 6%;
			margin: 0 auto;			
		}
		#container{
		}
	</style>
</head>
<body>
	<div id="header">
		<jsp:include page="${head }"></jsp:include>
	</div>
	<div id="container">
		<div id="container1"><jsp:include page="${container1 }"></jsp:include></div>
		<div id="container2"><jsp:include page="${container2 }"></jsp:include></div>
		<div id="container3"><jsp:include page="${container3 }"></jsp:include></div>
	</div>
	<div id="footer" style="margin-top: 5%">
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
