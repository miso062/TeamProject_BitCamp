<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style type="text/css">
    .my_user_detail , .my_user_membership {
        display : flex;
        
    }
    .my_user_membership {
        padding: 23px 0 23px 23px;
        border: 1px solid #ebebeb;
        border-radius: 10px;
        background-color: #fff;
        display: block;
        padding: 0;
        width: 711px;
    }
    .my_btn {
        display: inline-block;
        border : 1px solid #9B9B9B;
        height: 34px;
        width : 85px;
        text-align: center;
        font-size : 11px;
        border-radius : 10px;
    }
    .my_user_detail {
        padding: 30px 32px 22px;
        display : flex;
    }
    .my_email {
        margin-top: 5px;
        color : #443e3ede;
        font-size : 14px;
    }
    .my_info_box {
        margin-left: 12px;
        height: 120px;
    }
    .my_membership_detail {
        display : flex;
    }
    .my_membership_detail {
        position: relative;
        margin-left: auto;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        justify-content: center;
    }
    .my_membership_detail:before {
        content: "";
        position: absolute;
        top: 0;
        left: 50%;
        bottom: 0;
        background-color: #ebebeb;
        width: 1px;
    }
    .my_membership_item {
        display: inline-block;
        width: 159px;
        text-align: center;
    }
    .my_membership_item.disabled {
        pointer-events: none;
        cursor: default;
    }
    .my_membership_item .my_info {
        display: block;
        line-height: 19px;
        font-size: 16px;
        letter-spacing: -0.16px;
        font-weight: 700;
    }
    .my_membership_item .my_title {
        line-height: 19px;
        font-size: 13px;
        letter-spacing: -0.07px;
        color: rgba(34, 34, 34, 0.5);
    }
    
    

    
</style>
<div class="my_content_area">
    <div class="my_my_home">
        <div class="my_user_membership">
            <div  class="my_user_detail">
                <div  class="my_user_thumb">
                    <img  src="https://kream.co.kr/_nuxt/img/blank_profile.4347742.png" alt="사용자 이미지" class="thumb_img" />
                </div>
                <div  class="my_user_info">
                    <div  class="my_info_box">
                        <strong  class="my_name">honghinghung</strong>
                        <p  class="my_email">w******9@naver.com</p>
                        <a   href="#" class="my_btn my_outlinegrey my_small" type="button">
                            <div style="margin-top:9px;">프로필 수정</div>
                        </a>&ensp;
                        <a   href="#" class="my_btn my_btn_my_style my_outlinegrey my_small" type="button">
                            <div style="margin-top:9px;">내 스타일</div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="my_membership_detail">
                <a href="#" class="my_membership_item disabled">
                    <strong class="my_info"> 일반 회원 </strong>
                    <p class="my_title">회원 등급</p>
                </a>
                <a href="#" class="my_membership_item">
                    <strong class="my_info"> 400000P </strong>
                    <p class="my_title">포인트</p>
                </a>
            </div>
        </div>
    </div>
</div>
