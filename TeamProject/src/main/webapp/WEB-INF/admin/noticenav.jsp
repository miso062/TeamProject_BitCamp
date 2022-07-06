<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#content_wrap {
	float: left;
}
   
li a	{
	text-decoration: none;
	color: gray;
	cursor: pointer;
	font-size: 15px;
	line-height: 18px;
}

#sub_area li  {
	margin-top: 10px;
}

#sub_menu {
	margin-top: 30px;
}
.bold a{
	font-weight: bold;
	color: black;
}
</style>
<div >

 <div id="content_wrap">
 	<div id="sub_area">
    	<a href=""><h1>고객센터</h1></a>
        	<ul id="sub_menu" style=" list-style: none;">
				<li class="bold"><a class="menu1" href="#">공지사항</a></li>
				<li><a class="menu1" href="#">자주 묻는 질문</a></li> 
				<li><a class="menu1" href="#">검수 기준</a></li>        
				<li><a class="menu1" href="#">공지사항 작성</a></li>        
           	</ul>
   </div>
</div>


</div>
<script type="text/javascript">
	$('#sub_area > ul > li ').each(function(){
		$(this).click(function(){
			$(this).addClass('bold');
			$(this).siblings().removeClass('bold');
		});
	});
</script>

