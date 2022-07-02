<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <style type="text/css">
.h_header {
position :fixed;
top : 0;
left : 0;
right : 0;
z-index : 1000;
background-color : #ffffff;
}
.h_header .h_top_inner {
padding : 8px 20px;
display : flex;
}
.h_header .h_top_list {
align-items : center;
margin-left : auto;
}
body, button, dd, div, dl, dt,
fieldset, figcaption, figure, form,
 h1, h2, h3, h4, h5, h6, 
input, legend, li, ol, p, select,
 table, td, textarea, th, ul {
 margin : 0;
 padding : 0;
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
a, a:active, a:focus, a:hover {
    text-decoration: none;
}
.h_header .h_top_link{
    display: flex;
    align-items: center;
    font-size: 12px;
    color: rgba(34,34,34,.8);
}
li, ol, ul {
 list-style-position: initial;
    list-style-image: initial;
    list-style-type: none;
}
ul {
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 20px;
}
body,
button,
input,
select,
table,
textarea {
    font-family: -apple-system, BlinkMacSystemFont, Roboto, AppleSDGothicNeo-Regular, NanumBarunGothic, NanumGothic, 나눔고딕, Segoe UI, Helveica, Arial, Malgun Gothic, Dotum, sans-serif;
    color: #222;
}
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
body, html {
    height: 100%;
    touch-action: manipulation;
}
*, :after, :before {
    
    box-sizing: border-box;
   
}
.h_top_item {
float : left;
margin-left : 10px;
}
.header .top_link {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    align-items: center;
    font-size: 12px;
    letter-spacing: -.06px;
    color: rgba(34,34,34,.8);
}
a {
    -webkit-tap-highlight-color: rgba(0,0,0,.1);
}
a:-webkit-any-link {
    cursor: pointer;
}
li {
    text-align: -webkit-match-parent;
}
h1 {
    display: block;
    font-size: 2em;
    margin-block-start: 0.67em;
    margin-block-end: 0.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
.h_gnb_area, .h_header .h_gnb_list {
    -webkit-box-align: center;
    align-items: center;
}
.h_header .h_gnb_area {
    display : flex;
    -webkit-box-align : center;
}
nav {
    display: block;
}
.h_header .h_gnb_link{
    position: relative;
    font-size: 15px;
    letter-spacing: -.15px;
    align-items : center;
}
.h_gnb_item {
float : left;
margin-left : 10px;
}

.h_logo {
margin-left : 20px;
}
.h_top , .h_top_inner {
	weight:20px;
}
.h_header .h_main_inner {
    padding: 0 40px;
    height: 68px;
    min-width: 320px;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}
.h_h1 {
float: left;
}
.h_gnb_area {
float : right;
}

</style>    
<div class="h_header h_mo">
	<div id="h_top">
		<div class="h_top_inner" >
			<ul class="h_top_list">
				<li class="h_top_item">
					<a href="#" class="h_top_link">고객센터</a>
				</li>
				<li class="h_top_item">
					<a href="#" class="h_top_link">관심상품</a>
				</li>
				<li class="h_top_item">
					<a href="#" class="h_top_link">마이페이지</a>
				</li>
				<li class="h_top_item">
					<a href="#" class="h_top_link">로그인</a>
				</li>
			</ul>
		</div>
	</div>
	<hr>
	<div class="h_header_main">
		<div class="h_main_inner">
			<h1 class="h_h1">
				<a href="#" class="h_logo">
					<img src="/TeamProject/img/kream.jpg" alt="kream로고" style="width:100px; height:50px;">
					</a>
			</h1>
		<div class="h_gnb_area">
			<nav class="h_gnb">
				<ul class="h_gnb_list">
					<li class="h_gnb_item">
						<a href="#"  class="gnb_link">STYLE</a>
					</li>
					<li class="h_gnb_item">
						<a href="#"  class="gnb_link">SHOP</a>
					</li>
				</ul>
				
			</nav>
			<div class="h_search_btn_box">
				<a href="#" class="h_btn_search">
					<image id="h_search_look" href="/TeamProjecet/img/123.jpg"  alt="돋보기">
				</a>
			</div>
		</div>
	
		</div>
	</div>
</div>
<script type="text/javascript">


</script>
