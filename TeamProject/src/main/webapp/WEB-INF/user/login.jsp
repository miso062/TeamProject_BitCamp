<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KREAM | 한정판 거래의 FLEX</title>
<link rel="stylesheet" href="../css/user/login.css">
</head>
<body>
	<div class="content_login">
		<div class="content_area">
			<div class="logo_wrap">
				<div class="kream_logo" ></div>
			</div>
			
			<div class="input_email_box">
				<h3 class="input_email_title" id="email_label" >이메일 주소</h3>
				<div class="input_email_item">
					<div class="input_email_text">
						<input class="input_email_txt" type="text" id= "email_input" oninput="oninputEmail(this.value)" placeholder="예) kream@kream.co.kr">
					</div>
				</div>
				<p class="input_email_error" id="email_error" >이메일 주소를 정확히 입력해주세요.</p>
			</div>
			<div class="input_pwd_box">
				<h3 class="input_pwd_title" id="pwd_label">비밀번호</h3>
				<div class="input_pwd_item">
					<div class="input_pwd_text" >
						<input class="input_pwd_txt" type="password"  id= "pwd_input" oninput="oninputPwd(this.value)" autocomplete="off" >
					</div>
				</div>
				<p class="input_pwd_error" id="pwd_error" >영문, 숫자, 특수문자를 조합해서 입력해주세요. (8-16자)</p>
			</div>
			<div class="login_btn_box">
				<button class="login_btn_disabled" id="login_btn">로그인</button>
			</div>
			<ul class="look_box">
				<li class="look_list">
					<a href="#" class="look_link">이메일 가입</a>
				</li>
				<li class="look_list">
					<a href="#" class="look_link">이메일 찾기</a>
				</li>
				<li class="look_list">
					<a href="#" class="look_link">비밀번호 찾기</a>
				</li>
			</ul>
			<div class="social_login">
				<button type="button" class="naver_btn">
					<img src="../img/naver_login_logo.png" class="logo_naver" width="16" height="16">
					네이버로 로그인 <!-- GU6NNwfSmxJ3JXmCBaTf  -->
				</button>
			 	<a href="javascript:kakaoLogin();"> <!-- 144932b30082932e5eba55d918d38249 -->
			 		<img src="../img/kakao_login_large_wide.png" alt="카카오계정 로그인" style="width: 400px; height: auto;"/>
			 	</a>
			</div>
	    </div>
    </div>
    
<script type="text/javascript" src="../js/user/login.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
</body>
</body>
</html>