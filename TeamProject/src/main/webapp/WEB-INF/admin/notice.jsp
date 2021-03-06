<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GESE | 한정판 거래의 Flex</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">
#fadein {
    animation: fadein 0.7s;
    -moz-animation: fadein 0.7s; /* Firefox */
    -webkit-animation: fadein 0.7s; /* Safari and Chrome */
    -o-animation: fadein 0.7s; /* Opera */
}
@keyframes fadein {
    from {
        opacity:0;
    }
    to {
        opacity:1;
    }
}
@-moz-keyframes fadein { /* Firefox */
    from {
        opacity:0;
    }
    to {
        opacity:1;
    }
}
@-webkit-keyframes fadein { /* Safari and Chrome */
    from {
        opacity:0;
    }
    to {
        opacity:1;
    }
}
@-o-keyframes fadein { /* Opera */
    from {
        opacity:0;
    }
    to {
        opacity: 1;
    }
}
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