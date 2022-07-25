<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/TeamProject/css/user/login.css">
<style type="text/css">
.h_header {
	z-index: 1000;
	position :fixed;
	top : 0;
	left : 0;
	right : 0;
	background-color : #ffffff;
}
.h_header .h_top_inner {
	padding : 8px 40px;
	display : flex;
}
.h_main_inner {
    border-top : 1px solid #e0e0e0;
}
.h_header .h_top_list {
	align-items : center;
	margin-left : auto;
}
.h_header .h_top_link{
    display: flex;
    align-items: center;
    font-size: 12px;
    color: rgba(34,34,34,.8);
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

h1 {
    display: block;
    font-size: 2em;
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
    vertical-align:middle;
}

.h_gnb_item {
float : left;
margin-left : 20px;

}
.h_gnb_item:after {
clear: both;
}
.h_header .h_gnb_link{
    position: relative;
    font-size: 15px;
    letter-spacing: -.15px;
    align-items : center;
    vertical-align:middle;
}



.h_logo {
margin-left : -35px;
}

.h_header .h_main_inner {
    padding: 0 40px;
    height: 50px;
    min-width: 320px;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}
.h_h1 , .h_logo{
display : inline;

}
.h_h1 {
height: 30px;
margin-top: 15px;
}

.h_gnb_area {
float : right;
}
.h_gnb_area:after {
clear : both;
}
.h_search_area .h_input_search {
    width: 100%;
    height: 100%;
    -webkit-transition: all 0.1s;
    -o-transition: all 0.1s;
    transition: all 0.1s;
    font-size: 14px;
    letter-spacing: -0.21px;
}
.h_search_area .h_input_search:focus {
    border: none;
    outline: none;
    -moz-outline-style: none;
    font-size: 14px;
    letter-spacing: -0.21px;
}
.h_search_area .h_input_search {
    font-weight: 700;
    font-size: 15px;
}
input.h_show_placeholder_on_focus:focus::-webkit-input-placeholder {
    color: rgba(34, 34, 34, 0.3);
}
input.h_show_placeholder_on_focus:focus:-ms-input-placeholder-ms-input-placeholder,
input.h_show_placeholder_on_focus:focus::-moz-placeholder,
input.h_show_placeholder_on_focus:focus::-webkit-input-placeholder,
input.h_show_placeholder_on_focus:focus::placeholder {
    color: rgba(34, 34, 34, 0.3);
}
.h_search_area .h_search {
    position: relative;
    padding: 0 40px 0 44px;
    height: 40px;
    background-color: #f4f4f4;
    border-radius: 8px;
}
.h_search_area .h_ico-search-gray {
    position: absolute;
    top: 8px;
    left: 12px;
}
.h_search_area .h_btn_search_delete {
    position: absolute;
    top: 8px;
    right: 8px;
    width: 24px;
    height: 24px;
}
@media (max-width: 359px) {
    .h_search_area .h_search {
        padding-right: 35px;
    }
}
 .h_search_area .h_ico-search-gray {
    width: 19px;
    height: 19px;
    top: 10px;
    left: 14px;
}
 .h_search_area .h_btn_search_delete {
    top: 10px;
    right: 10px;
    width: 20px;
    height: 20px;
}
.h_search_area .h_btn_search_delete .h_ico-delete-circle-gray {
    width: 20px;
    height: 20px;
}
.h_search_area .h_input_search {
    font-weight: 700;
    font-size: 15px;
}
._search .h_search_container,
._search .h_search_content_wrap {
    background-color : #ffffff;
}
.h_search_wrap {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    padding: 25px 40px 19px;
}
.h_search_wrap .h_search_area {
    -webkit-box-flex: 1;
    -ms-flex: 1;
    flex: 1;
    margin-right: 20px;
}
.h_search_wrap .h_btn_close {
    margin-left: auto;
}
.h_search_list {
    margin-top: 4px;
}
button {
    appearance: auto;
    writing-mode: horizontal-tb !important;
    text-rendering: auto;
    color: buttontext;
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    box-sizing: border-box;
    background-color: buttonface;
    margin: 0em;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonborder;
    border-image: initial;
}
input, textarea {
    padding: 0;
    outline: 0;
    border: 0;
    resize: none;
    border-radius: 0;
    -webkit-appearance: none;
    background-color: rgba(0,0,0,0);
}
body, button, input, select, table, textarea {
    font-family: -apple-system,BlinkMacSystemFont,Roboto,AppleSDGothicNeo-Regular,NanumBarunGothic,NanumGothic,나눔고딕,Segoe UI,Helveica,Arial,Malgun Gothic,Dotum,sans-serif;
    color: #222;
}
body, button, dd, div, dl, dt, fieldset, figcaption, figure, form, h1, h2, h3, h4, h5, h6, input, legend, li, ol, p, select, table, td, textarea, th, ul {
    margin: 0;
    padding: 0;
}
input {
    writing-mode: horizontal-tb !important;
    text-rendering: auto;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    -webkit-rtl-ordering: logical;
    cursor: text;
    
}
.h_search {
padding : 0 , 40px, 0 , 44px;
width: 570px;
height: 40;
}
button {
    padding: 0;
    border: 0;
    outline: none;
    background: none;
    background-color: rgba(0,0,0,0);
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border-radius: 0;
}
.h_search_area {
    -webkit-box-flex: 1;
    -ms-flex: 1;
    flex: 1;
    margin-right: 20px;
    width:657px;
    float: left;
    
}
.h_search_area:after {
clear : both;
}
.h_btn_close {
height: 40px;
cursor: pointer;
}
.h_search_wrap{
margin: 0px  auto;
width: 744px;
}
.h_brand_name {
    max-width: 80px;
    margin: -8px auto 0;
    font-size: 12px;
}

.h_brand_box {
    display: block;
    width: 100px;
    height: 100px;
    text-align: center;
    cursor: pointer;
}
a, a:active, a:focus, a:hover {
    text-decoration: none;
}
a {
    color: inherit;
    -webkit-tap-highlight-color: rgba(0,0,0,.1);
}
.h_brand_img {
    width: 80px;
    height: 80px;
}
.h_brand_item+.h_brand_item {
    margin-left: 20px;
}
li, ol, ul {
    list-style: none;
}
li {
    text-align: -webkit-match-parent;
}
.h_brand_item {
    display: inline-block;
    vertical-align: top;
    border-radius: 8px;
}
.h_brand_list {
width:744px;
height: 100px;
margin : 0 auto;
}
.h_recent_area {
    position: relative;
    padding-bottom: 42px;
}
.h_search_container {
height:80px;
}
.h_search_wrap {
    display: flex;
    padding: 25px 40px 19px;
}
._search {  /* 모달창 */
	  z-index: 1000;
    position: fixed;
    top: 0;
    right: 0;
    left: 0;
    bottom: 0;
    height: 100%;
    background-color: rgba(34,34,34,.5);
    overflow: hidden;
    display : none;
}
.h_layout_content {
	background-color:#ffffff;
}
.h_gnb_area {
    margin : 10px 0;
}
.content_login {
    z-index: 1000;
    position: fixed;
    top: 0;
    right: 0;
    left: 0;
    height: 100%;
    background-color: rgba(7, 7, 7, 0.882);
    display : none;
}
.content_area0 {
    background-color: #ffffff;
    top: 50%;
    left: 50%;
    transform: translate(0, 20%);
    max-width: 100%;
    width: 500px;
    margin: 0 auto;
    margin-top: -70px;
    border-radius: 15px;
    
}
a {
cursor: pointer;
}
#h_main_logo {
	vertical-align : baseline;
	width : atuo;
	height: 45px;
}
</style>    
<div class="h_header h_mo">
	<div id="h_top">
		<div class="h_top_inner" >
			<ul class="h_top_list">
				<li class="h_top_item">
					<a href="/TeamProject/admin/notice" class="h_top_link">고객센터</a>
				</li>
				<li class="h_top_item">
					<a id="h_likePro" class="h_top_link">관심상품</a>
				</li>
				<li class="h_top_item">
					<a id="h_myPage" class="h_top_link">마이페이지</a>
				</li>
        <li class="h_top_item">
        <%-- ${sessionScope.memId } --%>
        <c:if test="${sessionScope.memId == null}">
          <a id="h_login" class="h_top_link">로그인</a>
        </c:if>
        <c:if test="${sessionScope.memId != null}">
          <a id="h_logout" class="h_top_link">로그아웃</a>
        </c:if>
        </li>
			</ul>
		</div>
	</div>
	<div class="h_header_main">
		<div class="h_main_inner">
			<h1 class="h_h1">
				<a href="/TeamProject/" class="h_logo">
					<img src="/TeamProject/img/main/header/gese_logo.png" alt="kream로고"  id="h_main_logo">
					</a>
			</h1>
		<div class="h_gnb_area">
			<nav class="h_gnb">
				<ul class="h_gnb_list" style="text-align:center;">
					<li class="h_gnb_item">
						<a href="#"  class="gnb_link">STYLE</a>
					</li>
					<li class="h_gnb_item">
						<a href="/TeamProject/shop?filter=popular"  class="gnb_link">SHOP</a>
					</li>
				</ul>
				
			</nav>
			<div class="h_search_btn_box">
					<img src="/TeamProject/img/main/header/h1_search.JPG" class="h_searchBtn" alt="돋보기" style="width:21.6px; height:21.6px; margin-left:20px; cursor:pointer;">
			</div>
		</div>
	
		</div>
	</div>
</div>
<!-- 모달창 -->
<div class="_search lg layer">
<div class="h_normal"></div>
<div class="h_layout_content">
	<div class="h_search_container">
		<div class="h_search_wrap">
			<div class="h_search_area">
				<div class="h_search">
					<img src="/TeamProject/img/main/header/h_search.svg" class="h_ico-search-gray h_icon sprite-icons">
					<input type="text" placeholder="브랜드명,모델명,모델번호 등" title="검색창" class="h_input_search h_show_placeholder_on_focus">
					<button class="h_btn_search_delete" style="display: none;"></button>
				</div>
			</div>
			<button class="h_btn_close">취소</button>
		</div>
	</div>
	<div class="h_search_content_wrap">
		<div class="h_recent_area">
			<ul class="h_brand_list lg">
				<li class="h_brand_item">
					<a class="h_brand_box">
						<img data-v-93eb701a="" src="https://kream-phinf.pstatic.net/MjAyMjA2MjBfMjEg/
							MDAxNjU1NzE5Mjk1NjIw.EgETkO07hvahKa8N8TKIBDsFLVPY64DF1mXkVs-7y0og.ceydvFvV8_
							DFrpCV0Kmk6pVUtWm5o0bImHpgz8K9Xi0g.PNG/a_0846b96415c74bb98fe6f4d26adc1431.png" alt="레고" class="h_brand_img">
						<p class="h_brand_name">레고</p>
					</a>
				</li>
				<li  class="h_brand_item">
   					 <a  class="h_brand_box">
      				  <img src="https://kream-phinf.pstatic.net/MjAyMjA3MDFfMzcg/MDAxNjU2NjU3NDcyMjg3.wGQcxYmu13AXH30CxLIZiIZ1nKWYF26qsIgT2lskutQg.sRNKkg1Zm7FW0L4iPAf0Zqd0GG5YbLLYYlrloP2BAtcg.PNG/a_401923126a5247a7b7d31726a77a5cb5.png"
			            alt="뉴발란스"  class="h_brand_img"  />
       				 <p  class="h_brand_name">뉴발란스</p>
   					 </a>
				</li>
				<li  class="h_brand_item">
            <a  class="h_brand_box">
                <img
                    src="https://kream-phinf.pstatic.net/MjAyMjA3MDFfMjIw/MDAxNjU2NjU3NDY3MzA3.RgJ-ItIZXlrPrPvCnCbXKEMzlyFZc49phEm0N-Hz68Ig.BwX1qTkFEjdBiYm07oXZX3pCUrwq3a9SuMoOc561hGkg.PNG/a_b1b730d5786b41f286e4f23a8055b7c1.png"    alt="샤넬"  class="h_brand_img"/>
                <p  class="h_brand_name">샤넬</p>
            </a>
        </li>
        <li  class="h_brand_item">
            <a class="h_brand_box">
                <img
                    src="https://kream-phinf.pstatic.net/MjAyMjA2MjRfMjYw/MDAxNjU2MDUzMzU4NDk2.7gi5qbcMXneM-G5YMK-37RjQrGcBgjF4_q1f1rYFNXgg.XJDHvbcguH9EPJIsTxrO2nWpcRJBovmbG8FA1NS08F0g.PNG/a_e1232dee841b4b47bec24545ff0e1957.png"    alt="야스히로" class="h_brand_img"   />
                <p class="h_brand_name">야스히로</p>
            </a>
        </li>
        <li  class="h_brand_item">
            <a  class="h_brand_box">
                <img
                    src="https://kream-phinf.pstatic.net/MjAyMjA2MjRfMTcx/MDAxNjU2MDUzNDAzODEy.OYeCZNVmKMVDdybFtkL6MQDLWdqmvKnHqpSiNwrpMt0g.fMO5AI3P6TOE18l_4aQ7ogNJ5AaYY3raRVOeLUIfCbsg.PNG/a_c264b1cd15d34f44bb856673edf7c245.png"  alt="롤렉스"   class="h_brand_img"  />
                <p  class="h_brand_name">롤렉스</p>
            </a>
        </li>
        <li class="h_brand_item">
            <a  class="h_brand_box">
                <img
                    src="https://kream-phinf.pstatic.net/MjAyMjA3MDFfMTMy/MDAxNjU2NjU3NDkzNzk0.PcHpHUIgXwF1Xy2czvIt_3LVzhkKe7f19pqwUG416Akg.gBQJuZf-w4YxiXDLlaZ7jzIvv8efMohC9vzGI2A-ZL0g.PNG/a_2b1291a531cd4b0ba90bee895c4e796a.png"  alt="헬리녹스"  class="h_brand_img" />
                <p data-v-93eb701a="" class="h_brand_name">헬리녹스</p>
            </a>
        </li>
			</ul>
		</div>
	</div>
</div>
</div>


<!-- 은지 -->
<!-- 로그인 모달창-->
<div class="content_login">
    <div class="content_area0">
        <div class="content_area">
			<div class="logo_wrap">
				<div class="kream_logo" ></div>
			</div>
			
			
			
				<div class="input_email_box">
					<h3 class="input_email_title" id="log_email_label" >이메일 주소</h3>
					<div class="input_email_item">
						<div class="input_email_text">
							<input name="email" class="input_email_txt" type="text" id= "log_email_input" oninput="oninputEmail(this.value)" placeholder="예) kream@kream.co.kr">
						</div>
					</div>
					<p class="input_email_error" id="log_email_error" >이메일 주소를 정확히 입력해주세요.</p>
				</div>
				<div class="input_pwd_box">
					<h3 class="input_pwd_title" id="log_pwd_label">비밀번호</h3>
					<div class="input_pwd_item">
						<div class="input_pwd_text" >
							<input name="pwd" class="input_pwd_txt" type="password"  id= "log_pwd_input" oninput="oninputPwd(this.value)" autocomplete="off" >
						</div>
					</div>
					<p class="input_pwd_error" id="log_pwd_error" >영문, 숫자, 특수문자를 조합해서 입력해주세요. (8-16자)</p>
				</div>
				<div class="login_btn_box">
					<button class="login_btn_disabled" id="login_btn">로그인</button>
				</div>
			
			
			<ul class="look_box">
				<li class="look_list">
					<a href="/TeamProject/user/signUp" class="look_link">이메일 가입</a>
				</li>
				<li class="look_list">
					<a href="/TeamProject/user/findEmail" class="look_link" >이메일 찾기</a>
				</li>
				<li class="look_list">
					<a href="/TeamProject/user/findPWD" class="look_link" >비밀번호 찾기</a>
				</li>
			</ul>
			<div class="social_login">
				<li>
					<a id="naverIdLogin_loginButton" href="javascript:void(0)"> <!-- GU6NNwfSmxJ3JXmCBaTf  -->
						<img src="/TeamProject/img/main/header/miso.png" id="naver_login_button"class="login_login_logo" alt="네이버계정 로그인" style="width: 400px; height: auto; border-radius: 12px;" />
					</a>
				</li>		 
				 	<a href="javascript:kakaoLogin();"> <!-- 144932b30082932e5eba55d918d38249 -->
				 		<img src="/TeamProject/img/main/header/kakao_login_large_wide.png"  class="login_login_logo"  alt="카카오계정 로그인" style="width: 400px; height: auto;  border-radius: 12px;"/>
				 	</a>
			</div>
	    </div>
    </div>
</div>



<script type="text/javascript" src="/TeamProject/js/user/login.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<script type="text/javascript">
//로그아웃
$('#h_logout').click(function(){
	$.ajax({
		url:'/TeamProject/user/checkLogout',
		type:'post',
		
		success: function(){
			alert("로그아웃 되었습니다.");
			location.href='/TeamProject/';
		},
		error:function(err){
			console.log(err);
		}
	});
});

//돋보기 클릭시 검색 모달창
$('.h_searchBtn').click(function(){
	$('._search').fadeIn();
    $('body').css("overflow", "hidden");
});
//모달창 검색어 삭제 
$('.h_btn_close').click(function(){
    $('.h_input_search').val('');
    
})//모달창 검색창 끄기 
$(document).on("click",function(e){
	if($('._search').is(e.target)) {
		$('._search').fadeOut();
        $('.h_input_search').val('');
        $('body').css("overflow", "scroll");
        
	}
})
//로그인시 모달창
$('#h_login').click(function(){
	$('.content_login').fadeIn();
    $('body').css("overflow", "hidden");
    $('.content_login').css('overflow-y', 'scroll')
});

//로그인 모달창 닫기
$(document).on("click",function(e){
	if($('.content_login').is(e.target)) {
		$('.content_login').fadeOut();
		$('.input_email_txt').val(''); //아이디 텍스트 창 비우기
		$('.input_pwd_txt').val(''); //pwd 텍스트 창 비우기
		document.getElementById('log_email_label').style.color = "black";
		document.getElementById('log_email_error').style.display = "none";
		document.getElementById('log_email_input').style.borderColor = "black";
		document.getElementById('log_pwd_label').style.color ="black";
		document.getElementById('log_pwd_error').style.display = "none";
		document.getElementById('log_pwd_input').style.borderColor = "black";
		document.getElementById('login_btn').className = 'login_btn_disabled'
        $('body').css("overflow-y", "scroll"); //스크롤 다시 보여주기
	}
})

//이미지 클릭시 검색차에 텍스트 담기  
//submit은 미구현
$('.h_brand_box').click(function(){
	$('.h_input_search').val($(this).children().eq(1).text())
})
//엔터로 검색하기 submit 미구현
$(document).on('keyup','.h_input_search' ,function(key){
	if(key.keyCode ==13) {
		alert($('.h_input_search').val())
	}
})
// 스크롤 최상단일 때 .h_main_inner css 지우기
$(window).scroll(function(){
	
	let scrollLocation = $(document).scrollTop();
	if(scrollLocation == 0) {
		$('.h_main_inner').css("border-bottom","none");
	}
	
	if(scrollLocation !=0) {
		$('.h_main_inner').css("border-bottom","1px  solid #e0e0e0");
	}
})


//로그인 

var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "GU6NNwfSmxJ3JXmCBaTf",  //내 애플리케이션 정보에 cliendId를 입력해줍니다.
			callbackUrl: "http://localhost:8080/TeamProject/", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
			isPopup: false,
			callbackHandle: true
		}
	);

naverLogin.init();
var id = document.getElementById('naver_login_button')
id.addEventListener('click', function () {
	naverLogin.getLoginStatus(function (status) {
		console.log(status);
		if (status) {
			var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
    		//네이버 회원가입 및 로그인
			if(sessionStorage.getItem("memId")==null) {
	    		$.ajax({
					url : '/TeamProject/user/signUpCheckNaver',
					type : 'post',
					data :  'user_id='+naverLogin.user.email+
							'&user_pwd='+naverLogin.user.id+
							'&user_name='+naverLogin.user.name+
							'&hp='+naverLogin.user.mobile+
							'&authority='+1,
					success: function(data){
						if(data=='fail') {
						}
						else {
						}
					},
					error : function(err){
						console.log(err);
						
					}
					
				});
    		
			}
            if( email == undefined || email == null) {
				alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
				naverLogin.reprompt();
				return;
			}
            
		} else {
			/* console.log("callback 처리에 실패하였습니다."); */
		}
		
	});
});

var testPopUp;
function openPopUp() {
    testPopUp= window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
}
function closePopUp(){
    testPopUp.close();
}

function naverLogout() {
	openPopUp();
	setTimeout(function() {
		closePopUp();
		}, 1000);
}

//로그인 여부에 따른 마이페이지 이동
$('#h_myPage').click(function(){
    if(!'${sessionScope.memId}') {
        $('#h_login').trigger('click');
    }
    else {
    	location.href="/TeamProject/user/myPage"
    	
    }
});
//비로그인시 관심상품 x
$('#h_likePro').click(function(){
 if(!'${sessionScope.memId}') {
        $('#h_login').trigger('click');
    }
    else {
    	location.href="/TeamProject/user/likePro"
    	
    }
})

</script>
