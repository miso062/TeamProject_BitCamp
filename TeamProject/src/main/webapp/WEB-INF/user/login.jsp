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
			
			<div class="input_box">
				<h3 class="input_title">이메일 주소</h3>
				<div class="input_item">
					<div class="input_text">
						<input class="input_txt" type="text" placeholder="예) kream@kream.co.kr">
					</div>
				</div>
			</div>
			<div class="input_box">
				<h3 class="input_title">비밀번호</h3>
				<div class="input_item">
					<div class="input_text">
						<input class="input_txt" type="password" placeholder autocomplete="off" >
					</div>
				</div>
			</div>
			<div class="login_btn_box">
				<a disabled="disabled" href="#" class="login_btn_disabled">로그인</a>
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
					<svg xmlns="http://www.w3.org/2000/svg" class="logo_naver">
						<use href="../img/naver.svg" xlink:href="../img/naver.svg">
						</use>
					</svg>
					네이버로 로그인
				</button>
				<button type="button" class="apple_btn">
					<svg xmlns="http://www.w3.org/2000/svg" class="logo_apple">
						<use href="https://kream.co.kr/_nuxt/3eb827d04a461ab3eecd387024737978.svg#i-logo-naver" xlink:href="https://kream.co.kr/_nuxt/3eb827d04a461ab3eecd387024737978.svg#i-logo-naver">
						</use>
					</svg>
					Apple로 로그인
				</button>
			</div>
	    </div>
    </div>
    
    
</body>
</html>