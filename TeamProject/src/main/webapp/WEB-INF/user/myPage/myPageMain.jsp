<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<style type="text/css">
.pwdinput2{
	text-align:center;
	
	
}
#pwdinput{
	border:1px solid black;
	height: 20px;
	border-radius: 16px;
	text-align:center;
}
.checkpwd {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(34,34,34,.5);
    z-index: 1010;
}
.checkpwd .checkpwd_container {
    width: 444px;
}
.checkpwd_container {
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
.checkpwd_header .title2 {
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
.checkpwd_btn {
    padding: 24px 32px 32px;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
}
.checkpwd_btn .checkpwd_btn2 {
    width: 120px;
}
.checkpwd_btn2 {
    border: 1px solid #d3d3d3;
}
.checkpwd_btn2 {
    padding: 0 18px;
    height: 42px;
    line-height: 40px;
    border-radius: 12px;
    font-size: 14px;
    letter-spacing: -.14px;
}
.checkpwd_btn2 {
    display: inline-block;
    cursor: pointer;
    vertical-align: middle;
    text-align: center;
    color: rgba(34,34,34,.8);
    background-color: #fff;
}
.checkpwd_btn3 {
    position: absolute;
    top: 18px;
    right: 20px;
    cursor: pointer;
}    

/* -------------------------------------------- */
 *, :after, :before {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    -webkit-tap-highlight-color: transparent;
    }
    .user_membership {
        padding: 23px 0 23px 23px;
        border: 1px solid #ebebeb;
        border-radius: 10px;
        background-color: #fff;
    }
    .user_detail,
    .user_membership {d
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
    }
    .user_thumb {
        position: relative;
        margin-right: 12px;
        width: 100px;
        height: 100px;
        border-radius: 100%;
        -ms-flex-negative: 0;
        flex-shrink: 0;
    }
    .user_thumb:after {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        bottom: 0;
        right: 0;
        border: 1px solid rgba(34, 34, 34, 0.05);
        border-radius: 50%;
    }
    .user_thumb .thumb_img {
        width: 100%;
        height: 100%;
        border-radius: 100%;
    }
    .user_info {
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
    }
    .user_info .name,
    .user_info {
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
    }
    .user_info .name {
        line-height: 21px;
        font-size: 18px;
        letter-spacing: -0.27px;
        font-weight: 600;
        color: #000;
    }
    .user_info .email {
        line-height: 18px;
        font-size: 14px;
        letter-spacing: -0.21px;
        letter-spacing: -0.05px;
        color: rgba(34, 34, 34, 0.5);
    }
    .btn {
        margin-top: 12px;
        -ms-flex-item-align: start;
        align-self: flex-start;
        height: 36px;
        line-height: 34px;
    }
    .btn.btn_my_style {
        margin-left: 7px;
    }
    .info_box {
        max-width: 100%;
    }
    .info_box .title {
        float: left;
        min-width: 80px;
        font-size: 13px;
        letter-spacing: -0.07px;
        color: rgba(34, 34, 34, 0.5);
    }
    .mbtn .btn_my_style {
        margin-left: 7px;
    }
    .membership_detail {
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
    .membership_detail:before {
        content: "";
        position: absolute;
        top: 0;
        left: 50%;
        bottom: 0;
        background-color: #ebebeb;
        width: 1px;
    }
    .membership_item {
        display: inline-block;
        width: 159px;
        text-align: center;
    }
    .btn {
        display: inline-block;
        cursor: pointer;
        vertical-align: middle;
        text-align: center;
        color: rgba(34, 34, 34, 0.8);
        background-color: #fff;
    }
    .outlinegrey {
        border: 1px solid #d3d3d3;
        color: rgba(34, 34, 34, 0.8);
    }
    .outlinegrey:active {
        border-color: #ebebeb;
        background-color: #f4f4f4;
        color: rgba(34, 34, 34, 0.5);
    }
    .small,
    .xsmall {
        font-size: 12px;
        letter-spacing: -0.06px;
    }
    .small {
        padding: 0 14px;
        height: 34px;
        line-height: 32px;
        border-radius: 10px;
    }
    .membership_item.disabled {
        pointer-events: none;
        cursor: default;
    }
    .membership_item .info {
        display: block;
        line-height: 19px;
        font-size: 16px;
        letter-spacing: -0.16px;
        font-weight: 700;
    }
    .membership_item .title {
        line-height: 19px;
        font-size: 13px;
        letter-spacing: -0.07px;
        color: rgba(34, 34, 34, 0.5);
    }
    .my_home_title {
        margin-top: 42px;
        padding-bottom: 16px;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        max-width: 100%;
    }
    .my_home_title .title {
        font-size: 18px;
        letter-spacing: -0.27px;
    }
    .my_home_title .btn_more {
        margin-top: 3px;
        margin-left: auto;
        padding-top: 3px;
        padding-left: 5px;
        display: -webkit-inline-box;
        display: -ms-inline-flexbox;
        display: inline-flex;
        -ms-flex-negative: 0;
        flex-shrink: 0;
    }
    .my_home_title .btn_txt {
        font-size: 13px;
        letter-spacing: -0.07px;
        color: rgba(34, 34, 34, 0.5);
    }
    .my_home_title .arr-right-gray {
        width: 20px;
        height: 20px;
    }
    .purchase_list_tab {
        display: table;
        table-layout: fixed;
        width: 100%;
        background-color: #fafafa;
        border-radius: 12px;
    }
    .tab_item {
        display: table-cell;
        text-align: center;
    }
    .tab_item.total .count {
        color: #f15746;
    }
    .tab_link {
        position: relative;
        display: block;
        padding-top: 18px;
        height: 96px;
    }
    .tab_item:first-of-type .tab_link:before {
        content: "";
        position: absolute;
        top: 18px;
        right: 0;
        width: 1px;
        bottom: 18px;
        background-color: #ebebeb;
    }
    .tab_link .title {
        font-size: 13px;
        letter-spacing: -0.07px;
        color: rgba(34, 34, 34, 0.8);
    }
    .tab_link .count {
        margin-top: 2px;
        font-size: 18px;
        line-height: 20px;
        letter-spacing: -0.09px;
        font-weight: 700;
    }
    .purchase_list .purchase_item {
        border-bottom: 1px solid #ebebeb;
    }
    .history_product {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    }
    .history_product .product_box {
        position: relative;
        -webkit-box-flex: 0;
        -ms-flex: none;
        flex: none;
        width: 80px;
        height: 80px;
    }
    .history_product .product_box .product {
        border-radius: 12px;
    }
    .text-danger {
    color: #f15746;
   }
   .status_txt {
       display: block;
       font-size: 14px;
       letter-spacing: -.21px;
   }
    .product_detail {
        margin-left: 16px;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -ms-flex-direction: column;
        flex-direction: column;
        -ms-flex-item-align: center;
        align-self: center;
    }
    .name {
        line-height: 17px;
        font-size: 14px;
        overflow: hidden;
        -o-text-overflow: ellipsis;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
    }
    .size {
        line-height: 19px;
        margin-top: 4px;
    }
    .size_text {
        display: inline-block;
        vertical-align: top;
        font-size: 14px;
        letter-spacing: -0.21px;
        font-weight: 700;
        letter-spacing: -0.5px;
        color: rgba(34, 34, 34, 0.5);
    }
    .history_status {
        margin-left: auto;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        text-align: right;
    }
    .history_status .status_box {
        display: none;
        margin-left: 10px;
        width: 134px;
    }
    .history_status .status_box:first-child {
    width: 140px;
    }
    .purchase_list.active_first .history_status .status_box:first-child {
        font-weight: 700;
    }
    .date {
        font-size: 14px;
    }
    .history_product .date {
        display: none;
    }
    .all .status_box.field_status,
    .ask.finished .status_box.field_date_paid,
    .bid.finished .status_box.field_date_purchased,
    .bidding .status_box.field_expires_at,
    .bidding .status_box.field_price,
    .finished .status_box.field_status,
    .pending .status_box.field_status {
        display: block;
    }
    .price {
        margin-top: 2px;
        font-size: 0;
    }
    .amount,
    .unit {
        display: inline-block;
        font-size: 14px;
    }
    .unit {
        margin-top: -1px;
    }
    .product {
        overflow: hidden;
        position: relative;
        padding-top: 100%;
        border-radius: 8px;
    }
    .product:after {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: rgba(0, 0, 0, 0);
        height: 80px;
    }
    .purchase_item {
        padding: 12px;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        cursor: pointer;
    }
    .purchase_list .purchase_item {
    border-bottom: 1px solid #ebebeb;
    }
    .purchase_item.bg_warning {
        background-color: #fef9f5;
    }
    .purchase_item.buy_95 .stocked_status_mark {
        top: 3px;
        left: 3px;
    }
    .image {
        -o-object-fit: cover;
        object-fit: cover; 
        width: 100%; 
        height: 100%;
        image-rendering: -webkit-optimize-contrast; 
    }
    .product_img {
        width: 91.03%;
    }
    .product_img {
        position: absolute;
        top: 50%;
        left: 50%;
        -webkit-transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
        transform: translate(-50%, -50%);
        width: 81.5%;
        height: auto;
    }
    .purchase_list_tab.sell .tab_item.total .count {
        color: #31b46e;
    }
    .my .empty_area {
        padding: 80px 0;
    }
    .empty_area {
      text-align: center;
    }
    .empty_area .desc {
        font-size: 13px;
        letter-spacing: -.07px;
        color: rgba(34,34,34,.5);
        }
        .interest_product .empty_area {
        margin: 0 10px;
        border-radius: 12px;
    }
    .interest_product .empty_area .desc {
        font-size: 14px;
        letter-spacing: -0.21px;
    }
    .interest_product .empty_area .btn {
        background-color: #fafafa;
    }
    .interest_product {
        margin: 0 -10px;
    }
    .interest_product:after {
        content: "";
        display: block;
        clear: both;
    }
    .product_item {
        position: relative;
        display: inline-block;
        vertical-align: top;
        margin: 20px 0;
        padding: 0 12px;
        width: 25%;
        -webkit-transition: all 0.4s ease-in-out;
        -o-transition: all 0.4s ease-in-out;
        transition: all 0.4s ease-in-out;
    }
    .product_item .item_inner {
        display: block;
        background-color: #fff;
        border-radius: 12px;
    }
    .product_item .info_box {
        padding-top: 9px;
    }
    .product_item .name {
        line-height: 17px;
        margin-top: 8.5px;
        max-height: 34px;
        overflow: hidden;
        -o-text-overflow: ellipsis;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
        white-space: normal;
        font-size: 14px;
        color: #222;
    }
    .product_item .price {
        padding-top: 7px;
    }
    .product_item .amount {
        font-size: 0;
        line-height: 0;
    }
    .product_item .num ,
    .product_item .won {
        display: inline-block;
        vertical-align: top;
        line-height: 17px;
        font-size: 15px;
        letter-spacing: -0.15px;
        font-weight: 700;
        letter-spacing: -0.04px;
    }
    .product_item .desc {
        line-height: 13px;
        font-size: 11px;
        color: rgba(34, 34, 34, 0.5);
    }
    .brand-text {
        overflow: hidden;
        display: inline-block;
        vertical-align: top;
        height: 17px;
        line-height: 17px;
        padding-bottom: 2px;
        font-size: 14px;
        font-weight: 700;
        color: #333;
        white-space: nowrap;
        -o-text-overflow: ellipsis;
        text-overflow: ellipsis;
        border-bottom: 1px solid #222;
        margin : 0;
    }
    .brand-text.long-name {
        font-size: 12px;
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
    .usable_wrap {
        padding: 19px 32px 30px;
    }
    .usable_point {
        padding-bottom: 30px;
    }
    .usable_point .title {
        font-size: 14px;
        letter-spacing: -.21px;
    }
    .point_box {
        padding: 18px 0 2px;
        border-bottom: 2px solid #222;
        line-height: 36px;
        font-size: 24px;
        letter-spacing: -.12px;
    }
    .point_box .point {
        font-weight: 700;
    }
    .point_box {
        padding: 18px 0 2px;
        border-bottom: 2px solid #222;
        line-height: 36px;
        font-size: 24px;
        letter-spacing: -.12px;
    }
    .point_info {
        padding-top: 13px;
        font-size: 13px;
        letter-spacing: -.07px;
        color: rgba(34,34,34,.8);
    }
    .point_info .info_item+.info_item {
        margin-top: 8px;
        color: rgba(34,34,34,.5);
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
    [class*=ico-] {
        width: 24px;
        height : 24px;
    }
</style>

<div class="my_home">
    <div class="user_membership">
        <div class="user_detail">
            <div class="user_thumb">
               <img src="/TeamProject/img/user/profile.png" name="profile_img" alt="사용자이미지" class="thumb_img" /></div>
            <div class="user_info">
                <div class="info_box">
                    <strong class="name">${userDTO.nickname }</strong>
                    <p class="email" id="user_id">${userDTO.user_id }</p>
                    <a href="#" class="btn btn outlinegrey small" id="profileUpdate" type="button"> 프로필 수정 </a>
                    <a href="/social/users/@ein7di" class="btn btn btn_my_style outlinegrey small" type="button"> 내 스타일 </a>
                </div>
            </div>
        </div>
        <div class="membership_detail">
            <a href="#" class="membership_item disabled">
                <strong class="info"> 일반 회원 </strong>
                <p class="title">회원 등급</p>
            </a>
            <a  class="membership_item">
                <strong class="info"> 400000P </strong>
                <p class="title">포인트</p>
            </a>
        </div>
    </div>
    <div class="my_home_title">
        <h3 class="title">구매 내역</h3>
        <a href="/TeamProject/user/buyHistory" class="btn_more">
            <span class="btn_txt">더보기</span>
            <div  class="icon sprite-icons arr-right-gray">
                <img src="/TeamProject/img/user/myPageContainer/more_icon.svg" art="더보기" style="width:16px; height:16px;">
            </div>
        </a>
    </div>
    <div class="recent_purchase">
        <div class="purchase_list_tab">
            <div class="tab_item total">
                <a href="#" class="tab_link">
                    <dl class="tab_box">
                        <dt class="title">전체</dt>
                        <dd class="count buy_countAll">1</dd>
                    </dl>
                </a>
            </div>
            <div class="tab_item tab_on">
                <a href="/TeamProject/user/buyHistory" class="tab_link">
                    <dl class="tab_box">
                        <dt class="title">입찰 중</dt>
                        <dd class="count buy_status1">0</dd>
                    </dl>
                </a>
            </div>
            <div class="tab_item">
                <a href="/TeamProject/user/buyHistory" class="tab_link">
                    <dl class="tab_box">
                        <dt class="title">종료</dt>
                        <dd class="count buy_status2">1</dd>
                    </dl>
                </a>
            </div>
        </div>
      <div class="purchase_list buy_list all bid">
               <div class="empty_area buy_empty_area" style="display: none;">
                   <p class="desc">거래 내역이 없습니다.</p>
               </div>
      </div>
    </div>
    <div class="my_home_title">
        <h3 class="title">판매 내역</h3>
        <a href="/TeamProject/user/sellHistory" class="btn_more">
            <span class="btn_txt">더보기</span>
            <div class="icon sprite-icons arr-right-gray">
                <img src="/TeamProject/img/user/myPageContainer/more_icon.svg" art="더보기" style="width:16px; height:16px;">
            </div>
        </a>
    </div>
   <div class="recent_purchase">
        <div class="purchase_list_tab sell">
            <div class="tab_item total">
                <a href="/TeamProject/user/sellHistory" class="tab_link">
                    <dl class="tab_box">
                        <dt class="title">전체</dt>
                        <dd class="count sell_countAll">0</dd>
                    </dl>
                </a>
            </div>
            <div class="tab_item tab_on">
                <a href="/TeamProject/user/sellHistory" class="tab_link">
                    <dl class="tab_box">
                        <dt class="title">입찰 중</dt>
                        <dd class="count sell_status1">0</dd>
                    </dl>
                </a>
            </div>
            <div class="tab_item">
                <a href="/TeamProject/user/sellHistory" class="tab_link">
                    <dl class="tab_box ">
                        <dt class="title">종료</dt>
                        <dd class="count sell_status2">0</dd>
                    </dl>
                </a>
            </div>
        </div>
        
      <div class="purchase_list sell_list all ask">
               <div class="empty_area sell_empty_area" style="display: none;" >
                   <p class="desc">거래 내역이 없습니다.</p>
               </div>
      </div>
   </div>
    <div class="my_home_title">
        <h3 class="title">관심 상품</h3>
        <a href="/TeamProject/user/likePro" class="btn_more">
            <span class="btn_txt">더보기</span>
            <div class="icon sprite-icons arr-right-gray">
                <img src="/TeamProject/img/user/myPageContainer/more_icon.svg" alt="더보기" style="width:16px; height:16px;">
            </div>
        </a>
    </div>
    <div class="interest_product">
        <div class="product_list">
        <!--관심 상품 -->
            <div class="product_item">
                <a href="/products/46178" class="item_inner">
                    <div class="thumb_box">
                        <div class="product" style="background-color: rgb(244, 244, 244);">
                                <img
                                    alt="상품 이미지"
                                    src="https://kream-phinf.pstatic.net/MjAyMTEyMDJfMjUw/MDAxNjM4NDIyMTM5MzY4.R9ZV4AuKye2tKA3g6W_zCeDEKTWgsAhJyYnbAvjFAYsg.PQ8cY_jktruT6TjdGhhczKmkySmR-wfv7rhv-gmJWmAg.PNG/a_0bfa4c7bd3f64cc5b2f6689f97607277.png?type=m"
                                    class="image picture product_img"
                                />
                        </div>
                    </div>
                    <div class="info_box">
                        <div class="brand">
                            <p class="brand-text">Mihara Yasuhiro</p>
                        </div>
                        <p class="name">Maison Mihara Yasuhiro Blakey OG Sole Canvas Low-top Sneaker Black White</p>
                        <div class="price">
                            <div class="amount md">
                                <em class="num"> - </em>
                            </div>
                            <div class="desc"><p data-v-eb375314="">즉시 구매가</p></div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <!---->
    </div>
    <!--포인트 레이어 -->
    <div class="layer_point layer md" style="display: none;">
        <div class="layer_container">
            <div class="layer_header"><h2 class="title">이용안내</h2></div>
            <div class="layer_content">
                <div class="usable_wrap">
                    <div class="usable_point">
                        <h3 class="title">사용 가능한 포인트</h3>
                        <p class="point_box"><span class="point" id="point"></span><span class="unit">P</span></p>
                        <div class="point_info">
                            <p class="info_item">이번달 소멸 예정 포인트 0P</p>
                            <p class="info_item">포인트 유효기간은 적립일로부터 최대 1년까지이며, 유형에 따라 달라질 수 있습니다.</p>
                        </div>
                    </div>
                    <ul class="usable_list">
                        <li class="usable_item">1,000P 이상부터 구매금액 제한 없이 사용하실 수 있습니다.</li>
                        <li class="usable_item">입찰 삭제, 거래 취소 시 사용한 포인트는 환불됩니다.</li>
                        <li class="usable_item">먼저 적립된 포인트부터 순서대로 사용되며, 사용하지 않으실 경우 유효기간이 지나면 자동 소멸됩니다.</li>
                        <li class="usable_item">유효기간이 지난 후 환불받은 포인트는 다시 사용하실 수 없습니다.</li>
                    </ul>
                </div>
                <div class="layer_btn"><a data-v-28cabbb5="" href="#" class="btn outline medium" > 확인 </a></div>
            </div>
            <a href="#" class="btn_layer_close"></a>
        </div>
    </div>
   <!---->
</div>
<div class="checkpwd" style="display: none;">
<div class="checkpwd_container">
<div class="checkpwd_header"><h2 class="title2">보안을 위하여 비밀번호 확인</h2></div>
<div class="checkpwd_list">
<div class="pwdinput2"><input type="password" id="pwdinput" /></div>
</div>
<div class="checkpwd_btn"><ahref="#" class="checkpwd_btn2" > 확인 </a></div>
            <a href="#" class="checkpwd_btn3">
            </a>
</div>
</div>
<script type="text/javascript">
$('#profileUpdate').click(function(){
	$('.checkpwd').fadeIn();
	$('#pwdinput').focus();
    $('body').css("overflow", "hidden");
});
$(document).on("click",function(e){
	if($('.checkpwd').is(e.target)) {
		$('.checkpwd').fadeOut();
        $('body').css("overflow-y", "scroll");
	}
})
 $('#pwdinput').on('keypress', function(e){
  if(e.keyCode == '13'){
	  $('.checkpwd_btn2').click();
  }
});
$('.checkpwd_btn2').click(function(){
		
	$.ajax({
		type: 'post',
		url: '/TeamProject/user/pwdcheck',
		data: {'pwd': $('#pwdinput').val()},
		dataType: 'text',
		success: function(data){
			data = data.trim();
			if(data == 'exist'){
			alert('비밀번호를 틀렸습니다.')
		}else if(data == 'non_exist'){
			$('.checkpwd').fadeOut();
		    $('body').css("overflow-y", "scroll");
		 location.href='/TeamProject/user/myPageEdit';
		 }
		},
		error: function(err){
			console.log(err);
		}
	});
	
});


	/*  --------------------------------------  */
window.onload = function() {
   alert(document.getElementsByClassName('membership_item > info').value());
   document.getElementById('point').value() = document.getElementsByClassName('membership_item > info').value();
}
window.onload = function(){
	var date = new Date();	
	var image = '${userDTO.profile_img}';
   
	if(image==null || image==''){
        document.querySelector('.thumb_img').setAttribute('src','/TeamProject/img/user/profile.png');
	}else{
       document.querySelector('.thumb_img').setAttribute('src', 'https://storage.googleapis.com/gese-t.appspot.com/'+ image + '?' + date.getTime());
    }
}
$('.membership_item').click(function(){
   $('.layer_point').fadeIn();
    $('body').css("overflow", "hidden");
});
$(document).on("click",function(e){
   if($('.layer_point').is(e.target)) {
      $('.layer_point').fadeOut();
        $('body').css("overflow-y", "scroll");
   }
})
$('.layer_btn').click(function(){
    $('.layer_point').fadeOut();
    $('body').css("overflow", "scroll");
})

$(document).ready(function(){
   $.ajax({
      type:'post',
      url:'/TeamProject/user/getBuyHistory',
      dataType:'json',
      success: function(data){
		//배경 색
		var colorList = [ '#ebf0f5', 'rgb(235, 240, 245)', 'rgb(241, 241, 234)', 'rgb(246, 238, 237)' ]
		//거래내역없을 때
		if(data.buy_historyList.length == 0){
			$('.buy_empty_area').show();
		}
		//구매거래내역 카운트
		var buy_status1_count = 0;
		var buy_status2_count = 0;
		
       	for(var i = 0; i < data.buy_historyList.length; i++){
       		if(data.buy_historyList[i].status1 != null){
       			buy_status1_count = buy_status1_count + 1;
       		}
       		if(data.buy_historyList[i].status2 != null){
       			buy_status2_count = buy_status2_count + 1;
       		}
       	}
   		$('.buy_status1').text(buy_status1_count);
   		$('.buy_status2').text(buy_status2_count);
   		$('.buy_countAll').text(buy_status1_count + buy_status2_count);
      	
        for(var i = 0; i< data.buy_historyList.length ; i++){
	        var user_id = data.buy_historyList[i].user_id;
	        var buy_id = data.buy_historyList[i].buy_id;
	        var product_id = data.buy_historyList[i].product_id;
	        var product_name = data.productImgList[i].org_file_name;
	        var img = data.productImgList[i].file_path;
	        var status1 = data.buy_historyList[i].status1; 
	        var status2 = data.buy_historyList[i].status2; 
	        var size_type = data.buy_historyList[i].size_type;
	        if(size_type == 'null'){
	            size_type = ' - ';
	        } 
	        var buy_price = data.buy_historyList[i].buy_price;
            if ( buy_price == 'null') {
            	buy_price = ' - ';
            } else {
            	buy_price = buy_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
            }
	       	var random = Math.floor( Math.random() * 4 ); 
	       	
            let buylist = $('<div class="purchase_item" onclick="location.href=\'/TeamProject/user/buyHistoryDetail?buy_id='+ buy_id + '\'">').append(
  	                '<div class="history_product">' +
  	                '<div class="product_box">' +
  	                '<div class="product" style="background-color:' + colorList[random] + ';">' +
  	                '<img src="' + img + '" alt="' + product_name + '" class="image picture product_img">' +
  	                '</div></div>' +
  	                '<div class="product_detail">' +
  	                '<p class="name">' + product_name + '</p><span class="size">' + size_type + '</span>' +
  	                '</div></div><div class="history_status">' +
  	                '<div class="status_box field_price"><div class="price">' +
  	                '<span class="amount">' + buy_price + '</span>' +
  	                '<span class="unit">원</span>' +
  	                '</div></div>' +
  	                '<div class="status_box field_status">' +
  	                '<span class="status_txt text-default status1_text">' + status1 + '</span>' +
  	              	'<span class="status_txt text-default status2_text">' + status2 + '</span>' +
  	                '</div></div></div>'
  	                );
            $('.buy_list').append(buylist);
			//상품 3개까지 보이게하기
			if( i > 1){
			   break;
			}
            if( status1 == null){
            	$(this).text('');
            }
            if(status2 == null){
            	$(this).text('');
            }
         }
      },error:function(err){
         console.log(err);
      }      
   });
});

$(document).ready(function(){
   $.ajax({
      type:'post',
      url:'/TeamProject/user/getSellHistory',
      dataType:'json',
      success: function(data){
		//배경 색
		var colorList = [ '#ebf0f5', 'rgb(235, 240, 245)', 'rgb(241, 241, 234)', 'rgb(246, 238, 237)' ]
		//거래내역 없을때
		if(data.sell_historyList.length == 0){
            $('.sell_empty_area').show();
		}
		//구매거래내역 카운트
		var sell_status1_count = 0;
		var sell_status2_count = 0;
		
       	for(var i = 0; i < data.sell_historyList.length; i++){
       		if(data.sell_historyList[i].status1 != null){
       			sell_status1_count = sell_status1_count + 1;
       		}
       		if(data.sell_historyList[i].status2 != null){
       			sell_status2_count = sell_status2_count + 1;
       		}
       	}
       	
   		$('.sell_status1').text(sell_status1_count);
   		$('.sell_status2').text(sell_status2_count);
   		$('.sell_countAll').text(sell_status1_count + sell_status2_count);
          
         for(var i = 0; i< data.sell_historyList.length ; i++){
	        var user_id = data.sell_historyList[i].user_id;
	        var sell_id = data.sell_historyList[i].sell_id;
	        var product_id = data.sell_historyList[i].product_id;
	        var product_name = data.productImgList[i].org_file_name;
	        var img = data.productImgList[i].file_path;
	        var status1 = data.sell_historyList[i].status1;   
	        var status2 = data.sell_historyList[i].status2;   
	        var size_type = data.sell_historyList[i].size_type;
	        if(size_type == 'null'){
	            size_type = ' - ';
	        } 
	        var sell_price = data.sell_historyList[i].sell_price;
            if ( sell_price == 'null') {
            	sell_price = ' - ';
            } else {
            	sell_price = sell_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
            }
	       	var random = Math.floor( Math.random() * 4 ); 
	       	
            let selllist = $('<div class="purchase_item" onclick="location.href=\'/TeamProject/user/sellHistoryDetail?sell_id='+ sell_id + '\'">').append(
  	                '<div class="history_product">' +
  	                '<div class="product_box">' +
  	                '<div class="product" style="background-color:' + colorList[random] + ';">' +
  	                '<img src="' + img + '" alt="' + product_name + '" class="image picture product_img">' +
  	                '</div></div>' +
  	                '<div class="product_detail">' +
  	                '<p class="name">' + product_name + '</p><span class="size">' + size_type + '</span>' +
  	                '</div></div><div class="history_status">' +
  	                '<div class="status_box field_price"><div class="price">' +
  	                '<span class="amount">' + sell_price + '</span>' +
  	                '<span class="unit">원</span>' +
  	                '</div></div>' +
  	                '<div class="status_box field_status">' +
  	                '<span class="status_txt text-default status1_text">' + status1 + '</span>' +
  	              	'<span class="status_txt text-default status2_text">' + status2 + '</span>' +
  	                '</div></div></div>'
  	                );
            $('.sell_list').append(selllist);
			 //상품 3개까지 보이게하기
			if( i > 1){
			   break;
			}
         }
      },error:function(err){
         console.log(err);
      }      
   });
});

//마이페이지 관심상품 뿌리기
$(document).ready(function(){
	$.ajax({
		type:'post',
		url:'/TeamProject/user/getLikeProductList',
		dataType:'json',
		success:function(data){
			alert(JSON.stringify(data))
			var colorList = [ 'rgb(241, 233, 252)', 'rgb(235, 240, 245)', 'rgb(241, 241, 234)', 'rgb(246, 238, 237)' ]
			for(var i = 0; i < 4; i++){
				//console.log(data.list2[i].brand, data.list2[i].eng_name, data.list2[i].release_price, data.list3[i].file_path );
				var random = Math.floor( Math.random() * 4 ); 
				
				$('<div/>',{
					class: 'product_item'
				}).append($('<a/>',{
					href:'#',
					class: 'cd2_item_inner'
				}).append($('<div/>',{
					class: 'thum_box'
				}).append($('<div/>',{
					class: 'product',
	                style: 'background-color: '+ colorList[random] + ';'
				}).append($('<img/>',{
						   src: data.list3[i].file_path,
						   class: 'image picture product_img' 
						})))).append($('<div/>',{
							class: 'info_box'
						}).append($('<div/>',{
							class: 'brand'
						}).append($('<p/>',{
							class: 'brand-text',
							text: data.list2[i].brand
					   }))).append($('<p/>',{
						   class: 'name',
						   text: data.list2[i].eng_name
					   })).append($('<div/>',{
						   class: 'price'
					   }).append($('<div/>',{
							class: 'amount md'
					   }).append($('<em/>',{
						   class: 'num',
						   text: data.list2[i].release_price
						   }))).append($('<div/>',{
					   class : 'desc'
				   }).append($('<p/>',{
					   text: '즉시구매가'
				   })))))).append($('<input/>',{
					   type:'hidden',
					   class : 'myPage_product_id',
					   id: 'myPage_product_id'+data.list2[i].product_id,
					   value : data.list2[i].product_id
				   })).appendTo($('.product_list'));
			   
			}
			
		},error: function(e){
			 console.log(e);
		 }
	})
})

</script>