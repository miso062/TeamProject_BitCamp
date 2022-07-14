<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org/">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container.my .content_area {
    overflow: hidden;
    min-height: 380px;
}
.content_title.border {
    padding-bottom: 16px;
    border-bottom: 3px solid #222;
}
.content_title {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    padding: 5px 0 6px;
}
.content_title .title {
    font-size: 24px;
    letter-spacing: -.36px;
    color: black;
}
.title > h3 {
    line-height: 29px;
    font-size: inherit;
}

.user_profile {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    padding: 50px 0 38px;
    border-bottom: 1px solid #ebebeb;
    background-color: #fff;
}
.profile_thumb {
    -webkit-box-flex: 0;
    flex: none;
    overflow: hidden;
    margin-right: 18px;
    width: 100px;
    height: 100px;
    border-radius: 100%;
}
.profile_thumb .thumb_img {
    width: 100%;
    height: 100%;
}
img, video {
    border: 0;
    vertical-align: top;
    user-select: none!important;
    -webkit-user-drag: none;
}
.profile_detail .name {
    font-size: 24px;
    line-height: 32px;
    letter-spacing: -.12px;
    color: #000;
}
.profile_btn_box {
    margin-top: 10px;
    font-size: 0;
}
.outlinegrey {
    border: 1px solid #d3d3d3;
    color: rgba(34,34,34,.8);
}
.small, .xsmall {
    font-size: 12px;
    letter-spacing: -.06px;
}
.small {
    padding: 0 14px;
    height: 34px;
    line-height: 32px;
    border-radius: 10px;
}
.profile_btn_box .btn {
    margin-left: 8px;
}
.profile_btn_box .btn:first-child {
    margin-left: 0px;
}
.btn {
    display: inline-block;
    cursor: pointer;
    vertical-align: middle;
    text-align: center;
    color: rgba(34,34,34,.8);
    background-color: #fff;
}
canvas[Attributes Style] {
    aspect-ratio: auto 1000 / 1000;
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
.profile_info {
    padding-top: 38px;
    max-width: 480px;
}
.profile_group:first-of-type {
    padding-top: 0;
}
.profile_group {
    padding-top: 58px;
}
.group_title {
    font-size: 18px;
    letter-spacing: -.27px;
}
.unit {
    padding: 25px 60px 18px 0;
    position: relative;
    border-bottom: 1px solid #ebebeb;
}
.title {
    font-size: 13px;
    letter-spacing: -.07px;
    color: rgba(34,34,34,.5);
}
.desc.email {
    color: rgba(34,34,34,.5);
}
.desc {
    padding-top: 6px;
    font-size: 16px;
    letter-spacing: -.16px;
}
.btn.btn_modify {
    position: absolute;
    right: 0;
    bottom: 15px;
    padding-top: 1px;
    padding-left: 11px;
    padding-right: 12px;
}
.modify {
    padding-top: 23px;
}
.input_box {
    position: relative;
    padding: 10px 0 14px;
}
.input_title {
    font-size: 13px;
    letter-spacing: -.07px;
    line-height: 18px;
}

.input_item {
    position: relative;
}
.profile_group .modify .input_txt {
    padding: 7px 0;
    font-size: 15px;
    letter-spacing: -.15px;
}
.input_error {
    display: none;
}
.modify_btn_box {
    padding-top: 28px;
    text-align: center;
    font-size: 0;
}
.modify_btn_box .btn {
    padding: 0 38px;
    margin-left: 8px;
}
.desc.password {
    font-size: 14px;
    letter-spacing: .6px;
}
.modify .title {
    padding-bottom: 22px;
    color: #222;
}
.input_box {
    position: relative;
    padding: 10px 0 14px;
}
.profile_group {
    padding-top: 58px;
}
.group_title {
    font-size: 18px;
    letter-spacing: -.27px;
}
.layer {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(34,34,34,.5);
    z-index: 1010;
}
.layer_container {
    overflow: hidden;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    background-color: #fff;
    width: 448px;
    border-radius: 16px;
    box-shadow: 0 4px 10px 0 rgb(0 0 0 / 10%);
}
.layer_header .title {
    line-height: 22px;
    padding: 18px 50px 20px;
    min-height: 60px;
    font-size: 18px;
    letter-spacing: -.27px;
    font-weight: 700;
    letter-spacing: -.15px;
    color: #000;
    text-align: center;
    background-color: #fff;
}
.size_list_area {
    overflow-x: hidden;
    overflow-y: auto;
    padding: 6px 28px 0;
    height: 270px;
}
.size_item {
    float: left;
    display: table;
    margin: 4px;
    width: calc(33.33333% - 8px);
    height: 52px;
}
.size_item .btn {
    display: table-cell;
    width: 100%;
    height: 100%;
    border: 1px solid #d3d3d3;
    border-radius: 12px;
    text-align: center;
    background-color: #fff;
}
.medium {
    padding: 0 18px;
    height: 42px;
    line-height: 40px;
    border-radius: 12px;
    font-size: 14px;
    letter-spacing: -.14px;
}
.layer_btn {
    padding: 24px 32px 32px;
    display: flex;
    -webkit-box-pack: center;
    justify-content: center;
}
.layer_btn .btn {
    width: 120px;
}
.solid {
    font-weight: 600;
    color: #fff;
    background-color: #222;
}
.btn_layer_close {
    cursor: pointer;
}
.btn_layer_close {
    display: none;
}
.btn_layer_close {
    position: absolute;
    top: 18px;
    right: 20px;
    cursor: pointer;
}
[class*=ico-] {
    width: 18px;
    height: 18px;
}
svg:not(:root) {
    overflow: hidden;
}
.btn_withdrawal, .btn_withdrawal:hover {
    text-decoration: underline;
}
.btn_withdrawal {
    margin-top: 55px;
    padding: 5px 0;
    display: inline-block;
    font-size: 13px;
    letter-spacing: -.07px;
    color: rgba(34,34,34,.5);
}
/* 광고성수신 */
.unit.to_receive {
    padding-right: 200px;
    padding-bottom: 20px;
}
.unit.to_receive .desc {
    font-size: 15px;
    letter-spacing: -.15px;
}
.radio_txt_box {
    position: absolute;
    bottom: 15px;
    right: 0;
}
.radio_txt_box .radio_item {
    position: relative;
    margin-top: 0;
    float: left;
}
.radio_txt_box .radio_label {
    overflow: hidden;
    padding: 0;
    font-size: 14px;
    letter-spacing: -.21px;
    color: rgba(34,34,34,.8);
}
.radio_txt_box [class*=ico-] {
    float: right;
    -webkit-appearance: auto;
    width: 1.75rem;
    margin-top: 2px;
}
.radio_txt_box .label_txt {
    float: right;
    margin-top: 2px;
    margin-right: 4px;
}
.radio_txt_box .radio_item {
    margin-left: 19px;
}
.radio_input {
    overflow: hidden!important;
    position: absolute!important;
    clip: rect(0,0,0,0)!important;
    width: 1px!important;
    height: 1px!important;
    margin: -1px!important;
}
.radio_txt_box .radio_input:checked~.radio_label:before {
    right: 2px;
    margin: -10px 0 0;
}
.radio_input:checked~.radio_label:before {
    content: "";
    position: absolute;
    top: 50%;
    right: 50%;
    margin: -10px -15px 0 0;
    width: 20px;
    height: 20px;
    border: 1px solid #222;
    border-radius: 100%;
}
.radio_input:checked~.radio_label:after {
    content: "";
    position: absolute;
    top: 50%;
    right: 50%;
    margin: -5px -10px 0 0;
    width: 10px;
    height: 10px;
    border-radius: 100%;
    background-color: #222;
}
.radio_txt_box .radio_label {
    overflow: hidden;
    padding: 0;
    font-size: 14px;
    letter-spacing: -.21px;
    color: rgba(34,34,34,.8);
}
.unit {
    padding-top: 23px;
}
.radio_txt_box {
    position: absolute;
    bottom: 15px;
    right: 0;
}

/* 신발레이어 */
.layer {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(34,34,34,.5);
    z-index: 1010;
}
.layer_point .layer_container {
    width: 444px;
}
.layer_container {
    overflow: hidden;
    position: absolute;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%,-50%);
    -ms-transform: translate(-50%,-50%);
    transform: translate(-50%,-50%);
    background-color: #fff;
    width: 448px;
    border-radius: 16px;
    -webkit-box-shadow: 0 4px 10px 0 rgb(0 0 0 / 10%);
    box-shadow: 0 4px 10px 0 rgb(0 0 0 / 10%);
}
.layer_header .title {
    line-height: 22px;
    padding: 18px 50px 20px;
    min-height: 60px;
    font-size: 18px;
    letter-spacing: -.27px;
    font-weight: 700;
    letter-spacing: -.15px;
    color: #000;
    text-align: center;
    background-color: #fff;
}
.usable_list {
    border-top: 1px solid #ebebeb;
    padding-top: 20px;
}
.usable_item {
    position: relative;
    padding-left: 11px;
    font-size: 12px;
    letter-spacing: -.06px;
    color: rgba(34,34,34,.8);
}
.usable_item:before {
    content: "";
    position: absolute;
    top: 9px;
    left: 0;
    -webkit-transform: translateY(-50%);
    -ms-transform: translateY(-50%);
    transform: translateY(-50%);
    width: 3px;
    height: 3px;
    background-color: #333;
    border-radius: 50%;
}
.layer_btn {
    padding: 24px 32px 32px;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
}
.layer_btn .btn {
    width: 120px;
}
.outline {
    border: 1px solid #d3d3d3;
}
.medium {
    padding: 0 18px;
    height: 42px;
    line-height: 40px;
    border-radius: 12px;
    font-size: 14px;
    letter-spacing: -.14px;
}
.btn {
    display: inline-block;
    cursor: pointer;
    vertical-align: middle;
    text-align: center;
    color: rgba(34,34,34,.8);
    background-color: #fff;
}
.btn_layer_close {
    position: absolute;
    top: 18px;
    right: 20px;
    cursor: pointer;
}    
.banner_bottom {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
}
.banner_bottom .banner_box {
    position: relative;
    padding: 36px 32px 0;
    width: 100%;
    height: 200px;
    background-position: 100% 0;
    background-repeat: no-repeat;
    background-size: 350px 200px;
}
.banner_bottom .banner_box:first-child {
    background-color: #565656;
    background-image: url(/_nuxt/img/home_banner_bottom1.79549cb.png);
}
.banner_bottom .banner_box:nth-child(2) {
    background-color: #3b3a3c;
    background-image: url(/_nuxt/img/home_banner_bottom2.0077547.png);
}
.banner_bottom .banner_info {
    max-width: 300px;
    color: #fff;
}
.banner_bottom .info_subtitle {
    font-size: 12px;
    text-transform: uppercase;
}
.banner_bottom .info_title {
    padding-top: 12px;
    text-shadow: -1px 0 #565656, 0 1px #565656, 1px 0 #565656, 0 -1px #565656;
    font-size: 16px;
    letter-spacing: -0.16px;
}
.banner_bottom .info_txt {
    margin-top: 16px;
    padding: 0 7px;
    display: inline-block;
    font-size: 12px;
    letter-spacing: -0.06px;
    height: 29px;
    line-height: 27px;
    border-radius: 6px;
    border: 1px solid hsla(0, 0%, 100%, 0.8);
    color: #fff;
}
.banner_bottom.mo,
.banner_bottom.sm {
    display: block;
}
.banner_bottom.mo .banner_box,
.banner_bottom.sm .banner_box {
    padding: 29px 21px 0;
    display: block;
    background-position: calc(100% + 61px) 0;
}
.banner_bottom.mo .info_title,
.banner_bottom.sm .info_title {
    padding-top: 37px;
}
.container.detail .banner_bottom {
    margin-top: 80px;
}
.size_item {
    float: left;
    display: table;
    margin: 4px;
    width: calc(33.33333% - 8px);
    height: 52px;
}
.size_item .btn {
    display: table-cell;
    width: 100%;
    height: 100%;
    border: 1px solid #d3d3d3;
    border-radius: 12px;
    text-align: center;
    background-color: #fff;
}
.size_item .btn:active {
    border-color: #d3d3d3;
    background-color: #f4f4f4;
}
.size_item .btn.on {
    border-color: #333;
    font-weight: 700;
}
.size_item .info_txt {
    display: inline-block;
    font-size: 14px;
    color: #000;
}
.size_list_area {
    overflow-x: hidden;
    overflow-y: auto;
    padding: 6px 28px 0;
    height: 270px;
}
.size_list_area:after {
    content: "";
    display: block;
    clear: both;
}
.btn_layer_close {
    display: none;
}
.layer.mo .size_list_area,
.layer.sm .size_list_area {
    padding: 6px 12px 36px;
    height: 402px;
}
.layer.mo .btn_layer_close,
.layer.sm .btn_layer_close {
    display: block;
}
.solid.disabled,
.solid:disabled {
    background-color: #fff;
    border: 1px solid #ebebeb;
    color: rgba(34, 34, 34, 0.3);
    cursor: default;
}
.btn_layer_close {
    cursor: pointer;
}
</style>
<link style="">
</head>
<body>
<div class="my_profile">
    <div class="content_title border">
        <div class="title">
            <h3>프로필 정보</h3>
        </div>
    </div>
    <div class="user_profile">
        <div class="profile_thumb"><img src="${userDTO.profile_img }" alt="사용자 이미지" class="thumb_img" /></div>
        <div class="profile_detail">
            <strong id="nickName" class="name">${userDTO.nickname }</strong>
            <div class="profile_btn_box">
                <a href="#" class="btn outlinegrey small"> 이미지 변경 </a><a href="#" class="btn outlinegrey small"> 삭제 </a>
            </div>
        </div>
    </div>
    <input type="file" accept="image/jpeg,image/png"  style="visibility : hidden;" /><canvas width="1000" height="1000" style="display: none;"></canvas>
   
    <div class="profile_info">
        <div class="profile_group">
            <h4 class="group_title">로그인 정보</h4>
            <div class="unit">
                <h5 class="title">이메일 주소</h5>
                <p class="desc email">${userDTO.user_id }</p>
            </div>
            
            <div class="modify" style="display: none;">
                <div class="input_box">
                    <h6 class="input_title">이메일 주소 변경</h6>
                    <div class="input_item"><input type="email" autocomplete="off" class="input_txt" placeholder="k*********5@naver.com" /></div>
                    <p class="input_error"></p>
                </div>
                <div class="modify_btn_box">
                    <button type="button" class="btn outlinegrey medium" slot="button">취소</button>
                    <button disabled="disabled" type="button" class="btn solid medium disabled" slot="button">인증 메일 발송</button>
                </div>
            </div>
            
            <div class="unit">
                <h5 class="title">비밀번호</h5>
                <p class="desc password">${userDTO.user_pwd }</p>
            </div>
            <div class="unit">
                <h5 class="title">비밀번호 재확인</h5>
                <p class="desc password">●●●●●●●●●</p>
            </div>         
            
            <div class="modify" style="display: none;">
                <h5 class="title">비밀번호 변경</h5>
                <div class="input_box">
                    <h6 class="input_title">이전 비밀번호</h6>
                    <div class="input_item"><input type="password" placeholder="영문, 숫자, 특수문자 조합 8-16자" autocomplete="off" class="input_txt" /></div>
                    <p class="input_error">영문, 숫자, 특수문자를 조합해서 입력해주세요. (8-16자)</p>
                </div>
                <div class="input_box">
                    <h6 class="input_title">새 비밀번호</h6>
                    <div class="input_item"><input type="password" placeholder="영문, 숫자, 특수문자 조합 8-16자" autocomplete="off" class="input_txt" /></div>
                    <p class="input_error">영문, 숫자, 특수문자를 조합해서 입력해주세요. (8-16자)</p>
                </div>
                <div class="modify_btn_box">
                    <button type="button" class="btn outlinegrey medium" slot="button">취소</button>
                    <button disabled="disabled" type="button" class="btn solid medium disabled" slot="button">저장</button>
                </div>
            </div>
            
        </div>
        <div class="profile_group">
            <h4 class="group_title">개인 정보</h4>
            <div class="unit">
                <h5 class="title">이름</h5>
                <p class="desc">kellysj5065</p>
            </div>
            
            <div class="modify name" style="display: none;">
                <h5 class="title">이름</h5>
                <div class="input_box">
                    <h6 class="input_title">새로운 이름</h6>
                    <div class="input_item"><input type="text" placeholder="고객님의 이름" autocomplete="off" class="input_txt" /></div>
                    <p class="input_error">올바른 이름을 입력해주세요. (2-50자)</p>
                </div>
                <div class="modify_btn_box">
                    <button type="button" class="btn outlinegrey medium" slot="button">취소</button>
                    <button disabled="disabled" type="button" class="btn solid medium disabled" slot="button">저장</button>
                </div>
            </div>
            
            <div class="unit">
                <h5 class="title">휴대폰 번호</h5>
                <p class="desc">${userDTO.hp }</p>
            </div>
            
            <div class="unit">
                <h5 class="title">신발 사이즈</h5>
                <p class="desc input_txt hover text_fill" >${userDTO.shoesize }</p>
                <button type="button" class="btn btn_size_select btn_modify outlinegrey small">변경</button>
            </div>
	
			<div class="layer_point layer md" style="display: none;">
		        <div class="layer_container">
		            <div class="layer_header"><h2 class="title">이용안내</h2></div>
		            <div class="size_list_area" >
					    <div class="size_item" >
					        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >220</span></a>
					    </div>
					    <div class="size_item" >
					        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >225</span></a>
					    </div>
					    <div class="size_item" >
					        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >230</span></a>
					    </div>
					    <div class="size_item" >
					        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >235</span></a>
					    </div>
					    <div class="size_item" >
					        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >240</span></a>
					    </div>
					    <div class="size_item" >
					        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >245</span></a>
					    </div>
					    <div class="size_item" >
					        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >250</span></a>
					    </div>
					    <div class="size_item" >
					        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >255</span></a>
					    </div>
					    <div class="size_item" >
					        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >260</span></a>
					    </div>
					    <div class="size_item" >
					        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >265</span></a>
					    </div>
					    <div class="size_item" >
					        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >270</span></a>
					    </div>
					    <div class="size_item" >
					        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >275</span></a>
					    </div>
					    <div class="size_item" >
					        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >280</span></a>
					    </div>
					    <div class="size_item" >
					        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >285</span></a>
					    </div>
					    <div class="size_item" >
					        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >290</span></a>
					    </div>
					    <div class="size_item" >
					        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >295</span></a>
					    </div>
					    <div class="size_item" >
					        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >300</span></a>
					    </div>
					</div>
					<div class="layer_btn"><ahref="#" class="btn outline medium" > 확인 </a></div>
		            <a href="#" class="btn_layer_close">
		                <svg xmlns="http://www.w3.org/2000/svg" class="ico-close icon sprite-icons">
		                    <use href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-close" xlink:href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-close"></use>
		                </svg>
		            </a>
		        </div>
		    </div>
    
        </div>
        
		<div class="profile_group">
			<h4 class="group_title">광고성 정보 수신</h4>
			<div class="unit to_receive">
			    <p class="desc">문자 메시지</p>
			    <div class="radio_txt_box">
			        <div class="radio_item">
			            <label for="sms_agree" class="radio_label">
							<input type="radio" id="sms_agree" name="message_radio" value="1" class="ico-radio-inactive icon sprite-icons">
							<span class="label_txt">수신 동의</span>
                        </label>
			        </div>
			        <div class="radio_item">
			            <input id="disagree1" type="radio" name="message_radio" class="radio_input" />
                        <label for="sms_disagree" class="radio_label">
                            <input type="radio" id="sms_disagree" name="message_radio" value="0" class="ico-radio-inactive icon sprite-icons">
                            <span class="label_txt">수신 거부</span>
                        </label>
			         </div>
			     </div>
			 </div>
			<div class="unit to_receive">
			    <p class="desc">이메일</p>
			    <div class="radio_txt_box">
			        <div class="radio_item">
                        <label for="email_agree" class="radio_label">
                               <input type="radio" id="email_agree" name="email_radio" value="1" class="ico-radio-inactive icon sprite-icons">
                               <span class="label_txt">수신 동의</span>
                       	</label>
			       </div>
					<div class="radio_item">
                        <label for="email_disagree" class="radio_label">
                            <input type="radio" id="email_disagree" name="email_radio" value="0" class="ico-radio-inactive icon sprite-icons">
                            <span class="label_txt">수신 거부</span>
                        </label>
			        </div>
			    </div>
			</div>
			
			<button type="button" class="btn btn_modify outlinegrey small" onclick="location.reload(true)" ></button>
			<button type="button" class="btn btn_modify outlinegrey small">변경</button>
		</div>
        <a href="/my/withdrawal" class="btn_withdrawal">회원 탈퇴</a>
    </div>
</div>

</body>
<script type="text/javascript">
$('.btn_size_select').click(function(){
	$('.layer_point').fadeIn();
    $('body').css("overflow", "hidden");
});

$(document).on("click",function(e){
	if($('.layer_point').is(e.target)) {
		$('.layer_point').fadeOut();
        $('body').css("overflow-y", "scroll");
	}
})

$('.layer_btn').click(function(){ //신발 확인 버튼 눌러서 끄기
    $('.layer_point').fadeOut();
    $('body').css("overflow-y", "scroll");
	alert($('.btn.on > .info_txt').text());
	$('.desc.input_txt.hover.text_fill').text($('.btn.on > .info_txt').text());
})

$('.size_item > .btn.outlinegrey').click(function(){
	$(this).addClass("on");
	$('.size_item > .btn.outlinegrey').not($(this)).removeClass("on");
});



</script>
</html>