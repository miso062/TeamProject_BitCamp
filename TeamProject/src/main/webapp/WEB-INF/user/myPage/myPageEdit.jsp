<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
.title {
    font-size: 24px;
    letter-spacing: -.36px;
}
.title> h3 {
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
    margin-top: 8px;
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
.title {
    font-size: 13px;
    letter-spacing: -.07px;
    color: rgba(34,34,34,.5);
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
    width: 24px;
    height: 24px;
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
</style>
</head>
<body>
<div class="content_area">
    <div class="my_profile">
        <div class="content_title border">
            <div class="title">
                <h3>프로필 정보</h3>
                <!---->
            </div>
            <!---->
        </div>
        <div class="user_profile">
            <div class="profile_thumb"><img src="/_nuxt/img/blank_profile.4347742.png" alt="사용자 이미지" class="thumb_img" /></div>
            <div class="profile_detail">
                <strong class="name">kellysj5065</strong>
                <div class="profile_btn_box">
                    <a href="#" class="btn outlinegrey small"> 이미지 변경 </a><a href="#" class="btn outlinegrey small"> 삭제 </a>
                </div>
            </div>
        </div>
        <input type="file" accept="image/jpeg,image/png" hidden="hidden" /><canvas width="1000" height="1000" style="display: none;"></canvas>
        <div class="profile_info">
            <div class="profile_group">
                <h4 class="group_title">로그인 정보</h4>
                <div class="unit">
                    <h5 class="title">이메일 주소</h5>
                    <p class="desc email">k*********5@naver.com</p>
                    <button type="button" class="btn btn_modify outlinegrey small">변경</button>
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
                    <p class="desc password">●●●●●●●●●</p>
                    <button type="button" class="btn btn_modify outlinegrey small">변경</button>
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
                    <button type="button" class="btn btn_modify outlinegrey small">변경</button>
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
                    <p class="desc">010-9***-*178</p>
                    <button type="button" class="btn btn_modify outlinegrey small">변경</button>
                </div>
                <div class="unit">
                    <h5 class="title">신발 사이즈</h5>
                    <p class="desc">235</p>
                    <button type="button" class="btn btn_modify outlinegrey small">변경</button>
                </div>
                <div class="layer lg" style="display: none;">
                    <div class="layer_container">
                        <div class="layer_header"><h2 class="title">사이즈 선택</h2></div>
                        <div class="layer_content">
                            <div class="size_list_area">
                                <div class="size_item">
                                    <a href="#" class="btn outlinegrey medium"><span class="info_txt">220</span></a>
                                </div>
                                <div class="size_item">
                                    <a href="#" class="btn outlinegrey medium"><span class="info_txt">225</span></a>
                                </div>
                                <div class="size_item">
                                    <a href="#" class="btn outlinegrey medium"><span class="info_txt">230</span></a>
                                </div>
                                <div class="size_item">
                                    <a href="#" class="btn outlinegrey medium on"><span class="info_txt">235</span></a>
                                </div>
                                <div class="size_item">
                                    <a href="#" class="btn outlinegrey medium"><span class="info_txt">240</span></a>
                                </div>
                                <div class="size_item">
                                    <a href="#" class="btn outlinegrey medium"><span class="info_txt">245</span></a>
                                </div>
                                <div class="size_item">
                                    <a href="#" class="btn outlinegrey medium"><span class="info_txt">250</span></a>
                                </div>
                                <div class="size_item">
                                    <a href="#" class="btn outlinegrey medium"><span class="info_txt">255</span></a>
                                </div>
                                <div class="size_item">
                                    <a href="#" class="btn outlinegrey medium"><span class="info_txt">260</span></a>
                                </div>
                                <div class="size_item">
                                    <a href="#" class="btn outlinegrey medium"><span class="info_txt">265</span></a>
                                </div>
                                <div class="size_item">
                                    <a href="#" class="btn outlinegrey medium"><span class="info_txt">270</span></a>
                                </div>
                                <div class="size_item">
                                    <a href="#" class="btn outlinegrey medium"><span class="info_txt">275</span></a>
                                </div>
                                <div class="size_item">
                                    <a href="#" class="btn outlinegrey medium"><span class="info_txt">280</span></a>
                                </div>
                                <div class="size_item">
                                    <a href="#" class="btn outlinegrey medium"><span class="info_txt">285</span></a>
                                </div>
                                <div class="size_item">
                                    <a href="#" class="btn outlinegrey medium"><span class="info_txt">290</span></a>
                                </div>
                                <div class="size_item">
                                    <a href="#" class="btn outlinegrey medium"><span class="info_txt">295</span></a>
                                </div>
                                <div class="size_item">
                                    <a href="#" class="btn outlinegrey medium"><span class="info_txt">300</span></a>
                                </div>
                            </div>
                            <div class="layer_btn"><a href="#" class="btn solid medium"> 확인 </a></div>
                        </div>
                        <a class="btn_layer_close">
                            <svg xmlns="http://www.w3.org/2000/svg" class="ico-close icon sprite-icons">
                                <use href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-close" xlink:href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-close"></use>
                            </svg>
                        </a>
                    </div>
                </div>
            </div>
            <a href="/my/withdrawal" class="btn_withdrawal">회원 탈퇴</a>
        </div>
    </div>
</div>

</body>
</html>