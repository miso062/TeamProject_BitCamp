<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style type="text/css">
 *, :after, :before {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    -webkit-tap-highlight-color: transparent;
    }
    .user_membership[data-v-5acef129] {
        padding: 23px 0 23px 23px;
        border: 1px solid #ebebeb;
        border-radius: 10px;
        background-color: #fff;
    }
    .user_detail[data-v-5acef129],
    .user_membership[data-v-5acef129] {
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
    }
    .user_thumb[data-v-5acef129] {
        position: relative;
        margin-right: 12px;
        width: 100px;
        height: 100px;
        border-radius: 100%;
        -ms-flex-negative: 0;
        flex-shrink: 0;
    }
    .user_thumb[data-v-5acef129]:after {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        bottom: 0;
        right: 0;
        border: 1px solid rgba(34, 34, 34, 0.05);
        border-radius: 50%;
    }
    .user_thumb .thumb_img[data-v-5acef129] {
        width: 100%;
        height: 100%;
        border-radius: 100%;
    }
    .user_info[data-v-5acef129] {
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
    }
    .user_info .name[data-v-5acef129],
    .user_info[data-v-5acef129] {
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
    }
    .user_info .name[data-v-5acef129] {
        line-height: 21px;
        font-size: 18px;
        letter-spacing: -0.27px;
        font-weight: 600;
        color: #000;
    }
    .user_info .email[data-v-5acef129] {
        line-height: 18px;
        font-size: 14px;
        letter-spacing: -0.21px;
        letter-spacing: -0.05px;
        color: rgba(34, 34, 34, 0.5);
    }
    .btn[data-v-5acef129] {
        margin-top: 12px;
        -ms-flex-item-align: start;
        align-self: flex-start;
        height: 36px;
        line-height: 34px;
    }
    .btn.btn_my_style[data-v-5acef129] {
        margin-left: 7px;
    }
    .info_box[data-v-5acef129] {
        max-width: 100%;
    }
    .info_box .title[data-v-4e153e07] {
        float: left;
        min-width: 80px;
        font-size: 13px;
        letter-spacing: -0.07px;
        color: rgba(34, 34, 34, 0.5);
    }
    .mbtn .btn_my_style[data-v-5acef129] {
        margin-left: 7px;
    }
    .membership_detail[data-v-5acef129] {
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
    .membership_detail[data-v-5acef129]:before {
        content: "";
        position: absolute;
        top: 0;
        left: 50%;
        bottom: 0;
        background-color: #ebebeb;
        width: 1px;
    }
    .membership_item[data-v-5acef129] {
        display: inline-block;
        width: 159px;
        text-align: center;
    }
    .btn[data-v-3d1bcc82] {
        display: inline-block;
        cursor: pointer;
        vertical-align: middle;
        text-align: center;
        color: rgba(34, 34, 34, 0.8);
        background-color: #fff;
    }
    .outlinegrey[data-v-3d1bcc82] {
        border: 1px solid #d3d3d3;
        color: rgba(34, 34, 34, 0.8);
    }
    .outlinegrey[data-v-3d1bcc82]:active {
        border-color: #ebebeb;
        background-color: #f4f4f4;
        color: rgba(34, 34, 34, 0.5);
    }
    .small[data-v-3d1bcc82],
    .xsmall[data-v-3d1bcc82] {
        font-size: 12px;
        letter-spacing: -0.06px;
    }
    .small[data-v-3d1bcc82] {
        padding: 0 14px;
        height: 34px;
        line-height: 32px;
        border-radius: 10px;
    }
    .membership_item.disabled[data-v-5acef129] {
        pointer-events: none;
        cursor: default;
    }
    .membership_item .info[data-v-5acef129] {
        display: block;
        line-height: 19px;
        font-size: 16px;
        letter-spacing: -0.16px;
        font-weight: 700;
    }
    .membership_item .title[data-v-5acef129] {
        line-height: 19px;
        font-size: 13px;
        letter-spacing: -0.07px;
        color: rgba(34, 34, 34, 0.5);
    }
    .my_home_title[data-v-6752ceb2] {
        margin-top: 42px;
        padding-bottom: 16px;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        max-width: 100%;
    }
    .my_home_title .title[data-v-6752ceb2] {
        font-size: 18px;
        letter-spacing: -0.27px;
    }
    .my_home_title .btn_more[data-v-6752ceb2] {
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
    .my_home_title .btn_txt[data-v-6752ceb2] {
        font-size: 13px;
        letter-spacing: -0.07px;
        color: rgba(34, 34, 34, 0.5);
    }
    .my_home_title .arr-right-gray[data-v-6752ceb2] {
        width: 20px;
        height: 20px;
    }
    .purchase_list_tab[data-v-bbed98be] {
        display: table;
        table-layout: fixed;
        width: 100%;
        background-color: #fafafa;
        border-radius: 12px;
    }
    .tab_item[data-v-bbed98be] {
        display: table-cell;
        text-align: center;
    }
    .tab_item.total .count[data-v-bbed98be] {
        color: #f15746;
    }
    .tab_link[data-v-bbed98be] {
        position: relative;
        display: block;
        padding-top: 18px;
        height: 96px;
    }
    .tab_item:first-of-type .tab_link[data-v-bbed98be]:before {
        content: "";
        position: absolute;
        top: 18px;
        right: 0;
        width: 1px;
        bottom: 18px;
        background-color: #ebebeb;
    }
    .tab_link .title[data-v-bbed98be] {
        font-size: 13px;
        letter-spacing: -0.07px;
        color: rgba(34, 34, 34, 0.8);
    }
    .tab_link .count[data-v-bbed98be] {
        margin-top: 2px;
        font-size: 18px;
        line-height: 20px;
        letter-spacing: -0.09px;
        font-weight: 700;
    }
    .purchase_list .purchase_item[data-v-62dace61] {
        border-bottom: 1px solid #ebebeb;
    }
    .history_product[data-v-62dace61] {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    }
    .history_product .product_box[data-v-62dace61] {
        position: relative;
        -webkit-box-flex: 0;
        -ms-flex: none;
        flex: none;
        width: 80px;
        height: 80px;
    }
    .history_product .product_box .product[data-v-62dace61] {
        border-radius: 12px;
    }
    .product_detail[data-v-62dace61] {
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
    .name[data-v-62dace61] {
        line-height: 17px;
        font-size: 14px;
        overflow: hidden;
        -o-text-overflow: ellipsis;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
    }
    .size[data-v-62dace61] {
        line-height: 19px;
        margin-top: 4px;
    }
    .size_text[data-v-62dace61] {
        display: inline-block;
        vertical-align: top;
        font-size: 14px;
        letter-spacing: -0.21px;
        font-weight: 700;
        letter-spacing: -0.5px;
        color: rgba(34, 34, 34, 0.5);
    }
    .history_status[data-v-62dace61] {
        margin-left: auto;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        text-align: right;
    }
    .history_status .status_box[data-v-62dace61] {
        display: none;
        margin-left: 10px;
        width: 134px;
    }
    .history_status .status_box[data-v-62dace61]:first-child {
    width: 140px;
    }
    .purchase_list.active_first .history_status .status_box[data-v-62dace61]:first-child {
        font-weight: 700;
    }
    .date[data-v-62dace61] {
        font-size: 14px;
    }
    .history_product .date[data-v-62dace61] {
        display: none;
    }
    .all .status_box.field_status[data-v-62dace61],
    .ask.finished .status_box.field_date_paid[data-v-62dace61],
    .bid.finished .status_box.field_date_purchased[data-v-62dace61],
    .bidding .status_box.field_expires_at[data-v-62dace61],
    .bidding .status_box.field_price[data-v-62dace61],
    .finished .status_box.field_status[data-v-62dace61],
    .pending .status_box.field_status[data-v-62dace61] {
        display: block;
    }
    .price[data-v-62dace61] {
        margin-top: 2px;
        font-size: 0;
    }
    .amount[data-v-62dace61],
    .unit[data-v-62dace61] {
        display: inline-block;
        font-size: 14px;
    }
    .unit[data-v-62dace61] {
        margin-top: -1px;
    }
    .product[data-v-75e33658] {
        overflow: hidden;
        position: relative;
        padding-top: 100%;
        border-radius: 8px;
    }
    .product[data-v-75e33658]:after {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: rgba(0, 0, 0, 0);
        height: 80px;
    }
    .purchase_item[data-v-62dace61] {
        padding: 12px;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        cursor: pointer;
    }
    .purchase_list .purchase_item[data-v-62dace61] {
    border-bottom: 1px solid #ebebeb;
    }
    .purchase_item.bg_warning[data-v-62dace61] {
        background-color: #fef9f5;
    }
    .purchase_item.buy_95[data-v-62dace61] .stocked_status_mark {
        top: 3px;
        left: 3px;
    }
    .image[data-v-548c90f9] {
        -o-object-fit: cover;
        object-fit: cover; 
        width: 100%; 
        height: 100%;
        image-rendering: -webkit-optimize-contrast; 
    }
    .product_img[data-v-75e33658] {
        width: 91.03%;
    }
    .product_img[data-v-75e33658] {
        position: absolute;
        top: 50%;
        left: 50%;
        -webkit-transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
        transform: translate(-50%, -50%);
        width: 81.5%;
        height: auto;
    }
    .purchase_list_tab.sell .tab_item.total .count[data-v-bbed98be] {
        color: #31b46e;
    }
    .my .empty_area[data-v-e2f6767a] {
        padding: 80px 0;
    }
    .empty_area[data-v-e2f6767a] {
      text-align: center;
    }
    .empty_area .desc[data-v-e2f6767a] {
        font-size: 13px;
        letter-spacing: -.07px;
        color: rgba(34,34,34,.5);
        }
        .interest_product .empty_area[data-v-e2f6767a] {
        margin: 0 10px;
        border-radius: 12px;
    }
    .interest_product .empty_area .desc[data-v-e2f6767a] {
        font-size: 14px;
        letter-spacing: -0.21px;
    }
    .interest_product .empty_area .btn[data-v-e2f6767a] {
        background-color: #fafafa;
    }
    .interest_product[data-v-5f779880] {
        margin: 0 -10px;
    }
    .interest_product[data-v-5f779880]:after {
        content: "";
        display: block;
        clear: both;
    }
    .product_item[data-v-eb375314] {
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
    .product_item .item_inner[data-v-eb375314] {
        display: block;
        background-color: #fff;
        border-radius: 12px;
    }
    .product_item .info_box[data-v-eb375314] {
        padding-top: 9px;
    }
    .product_item .name[data-v-eb375314] {
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
    .product_item .price[data-v-eb375314] {
        padding-top: 7px;
    }
    .product_item .amount[data-v-eb375314] {
        font-size: 0;
        line-height: 0;
    }
    .product_item .num[data-v-eb375314],
    .product_item .won[data-v-eb375314] {
        display: inline-block;
        vertical-align: top;
        line-height: 17px;
        font-size: 15px;
        letter-spacing: -0.15px;
        font-weight: 700;
        letter-spacing: -0.04px;
    }
    .product_item .desc[data-v-eb375314] {
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
</style>

<div data-v-5f779880="" class="my_home">
    <div data-v-5acef129="" data-v-5f779880="" class="user_membership">
        <div data-v-5acef129="" class="user_detail">
            <div data-v-5acef129="" class="user_thumb"><img data-v-5acef129="" src="https://kream.co.kr/_nuxt/img/blank_profile.4347742.png" alt="사용자 이미지" class="thumb_img" /></div>
            <div data-v-5acef129="" class="user_info">
                <div data-v-5acef129="" class="info_box">
                    <strong data-v-5acef129="" class="name">wnscks19</strong>
                    <p data-v-5acef129="" class="email">w******9@naver.com</p>
                    <a data-v-3d1bcc82="" data-v-5acef129="" href="/my/profile" class="btn btn outlinegrey small" type="button"> 프로필 수정 </a>
                    <a data-v-3d1bcc82="" data-v-5acef129="" href="/social/users/@ein7di" class="btn btn btn_my_style outlinegrey small" type="button"> 내 스타일 </a>
                </div>
            </div>
        </div>
        <div data-v-5acef129="" class="membership_detail">
            <a data-v-5acef129="" href="#" class="membership_item disabled">
                <strong data-v-5acef129="" class="info"> 일반 회원 </strong>
                <p data-v-5acef129="" class="title">회원 등급</p>
            </a>
            <a data-v-5acef129="" href="#" class="membership_item">
                <strong data-v-5acef129="" class="info"> 400000P </strong>
                <p data-v-5acef129="" class="title">포인트</p>
            </a>
        </div>
    </div>
    <div data-v-6752ceb2="" data-v-5f779880="" class="my_home_title">
        <h3 data-v-6752ceb2="" class="title">구매 내역</h3>
        <a data-v-6752ceb2="" href="/my/buying" class="btn_more">
            <span data-v-6752ceb2="" class="btn_txt">더보기</span>
            <div data-v-6752ceb2=""  class="icon sprite-icons arr-right-gray">
                <img data-v-6752ceb2="" src="/TeamProject/img/user/myPageContainer/more_icon.svg" art="더보기" style="width:16px; height:16px;">
            </div>
        </a>
    </div>
    <div data-v-5f779880="" class="recent_purchase">
        <div data-v-bbed98be="" data-v-5f779880="" class="purchase_list_tab">
            <div data-v-bbed98be="" class="tab_item total">
                <a data-v-bbed98be="" href="#" class="tab_link">
                    <dl data-v-bbed98be="" class="tab_box">
                        <dt data-v-bbed98be="" class="title">전체</dt>
                        <dd data-v-bbed98be="" class="count">1</dd>
                    </dl>
                </a>
            </div>
            <div data-v-bbed98be="" class="tab_item tab_on">
                <a data-v-bbed98be="" href="#" class="tab_link">
                    <dl data-v-bbed98be="" class="tab_box">
                        <dt data-v-bbed98be="" class="title">입찰 중</dt>
                        <dd data-v-bbed98be="" class="count">0</dd>
                    </dl>
                </a>
            </div>
            <div data-v-bbed98be="" class="tab_item">
                <a data-v-bbed98be="" href="#" class="tab_link">
                    <dl data-v-bbed98be="" class="tab_box">
                        <dt data-v-bbed98be="" class="title">진행 중</dt>
                        <dd data-v-bbed98be="" class="count">0</dd>
                        <!---->
                    </dl>
                </a>
            </div>
            <div data-v-bbed98be="" class="tab_item">
                <a data-v-bbed98be="" href="#" class="tab_link">
                    <dl data-v-bbed98be="" class="tab_box">
                        <dt data-v-bbed98be="" class="title">종료</dt>
                        <dd data-v-bbed98be="" class="count">1</dd>
                    </dl>
                </a>
            </div>
        </div>
        <div data-v-5f779880="">
            <div data-v-21d527e4="" data-v-5f779880="" class="purchase_list all bid">
                <!---->
                <div data-v-62dace61="" data-v-21d527e4="" class="purchase_item buy">
                    <div data-v-62dace61="" class="history_product">
                        <div data-v-62dace61="" class="product_box">
                            <div data-v-75e33658="" data-v-62dace61="" class="product" style="background-color: rgb(235, 240, 245);">
                                <picture data-v-548c90f9="" data-v-75e33658="" class="picture product_img" style="height:80px;">
                                    <source
                                        data-v-548c90f9=""
                                        type="image/webp"
                                        srcset="
                                            https://kream-phinf.pstatic.net/MjAyMjAzMDdfMTMw/MDAxNjQ2NjM5MjMzNzM2.pELmvUZpCO9IHBnqPuT-MM_3KgRHEBM3PwKQITCziUwg.qa5jj2sXWiAyhwX4RP5m5ozoZinAf3yX8kSdf7UChDEg.PNG/a_1379738ed20947a8a52338c76436c3b8.png?type=m_webp
                                        "
                                    />
                                    <source
                                        data-v-548c90f9=""
                                        srcset="
                                            https://kream-phinf.pstatic.net/MjAyMjAzMDdfMTMw/MDAxNjQ2NjM5MjMzNzM2.pELmvUZpCO9IHBnqPuT-MM_3KgRHEBM3PwKQITCziUwg.qa5jj2sXWiAyhwX4RP5m5ozoZinAf3yX8kSdf7UChDEg.PNG/a_1379738ed20947a8a52338c76436c3b8.png?type=m
                                        "
                                    />
                                    <img
                                        data-v-548c90f9=""
                                        alt="Nike x Supreme Air Force 1 Low White"
                                        src="https://kream-phinf.pstatic.net/MjAyMjAzMDdfMTMw/MDAxNjQ2NjM5MjMzNzM2.pELmvUZpCO9IHBnqPuT-MM_3KgRHEBM3PwKQITCziUwg.qa5jj2sXWiAyhwX4RP5m5ozoZinAf3yX8kSdf7UChDEg.PNG/a_1379738ed20947a8a52338c76436c3b8.png?type=m"
                                        class="image"
                                    />
                                </picture>
                                <!----><!----><!---->
                            </div>
                        </div>
                        <div data-v-62dace61="" class="product_detail">
                            <!---->
                            <p data-v-62dace61="" class="name">Nike x Supreme Air Force 1 Low White</p>
                            <p data-v-62dace61="" class="size"><span data-v-62dace61="" class="size_text">270</span></p>
                        </div>
                    </div>
                    <div data-v-62dace61="" class="history_status">
                        <div data-v-62dace61="" class="status_box field_price">
                            <div data-v-62dace61="" class="price"><span data-v-62dace61="" class="amount">244,000</span><span data-v-62dace61="" class="unit">원</span></div>
                        </div>
                        <div data-v-62dace61="" class="status_box field_date_purchased"><span data-v-62dace61="" class="date"> 21/11/08</span></div>
                        <div data-v-62dace61="" class="status_box field_date_paid"><span data-v-62dace61="" class="date"> </span></div>
                        <div data-v-62dace61="" class="status_box field_expires_at"><span data-v-62dace61="" class="date text-default">-</span></div>
                        <div data-v-62dace61="" class="status_box field_status">
                            <span data-v-62dace61="" class="status_txt text-default">배송완료</span>
                            <!---->
                        </div>
                    </div>
                </div>
                <!----><!----><!----><!----><!---->
            </div>
            <!---->
        </div>
    </div>
    <div data-v-6752ceb2="" data-v-5f779880="" class="my_home_title">
        <h3 data-v-6752ceb2="" class="title">판매 내역</h3>
        <a data-v-6752ceb2="" href="/my/selling" class="btn_more">
            <span data-v-6752ceb2="" class="btn_txt">더보기</span>
            <div data-v-6752ceb2=""  class="icon sprite-icons arr-right-gray">
                <img data-v-6752ceb2="" src="/TeamProject/img/user/myPageContainer/more_icon.svg" art="더보기" style="width:16px; height:16px;">
            </div>
        </a>
    </div>
    <div data-v-5f779880="" class="recent_purchase">
        <div data-v-bbed98be="" data-v-5f779880="" class="purchase_list_tab sell">
            <div data-v-bbed98be="" class="tab_item total">
                <a data-v-bbed98be="" href="#" class="tab_link">
                    <dl data-v-bbed98be="" class="tab_box">
                        <dt data-v-bbed98be="" class="title">전체</dt>
                        <dd data-v-bbed98be="" class="count">0</dd>
                    </dl>
                </a>
            </div>
            <div data-v-bbed98be="" class="tab_item tab_on">
                <a data-v-bbed98be="" href="#" class="tab_link">
                    <dl data-v-bbed98be="" class="tab_box">
                        <dt data-v-bbed98be="" class="title">입찰 중</dt>
                        <dd data-v-bbed98be="" class="count">0</dd>
                    </dl>
                </a>
            </div>
            <div data-v-bbed98be="" class="tab_item">
                <a data-v-bbed98be="" href="#" class="tab_link">
                    <dl data-v-bbed98be="" class="tab_box">
                        <dt data-v-bbed98be="" class="title">진행 중</dt>
                        <dd data-v-bbed98be="" class="count">0</dd>
                        <!---->
                    </dl>
                </a>
            </div>
            <div data-v-bbed98be="" class="tab_item">
                <a data-v-bbed98be="" href="#" class="tab_link">
                    <dl data-v-bbed98be="" class="tab_box">
                        <dt data-v-bbed98be="" class="title">종료</dt>
                        <dd data-v-bbed98be="" class="count">0</dd>
                    </dl>
                </a>
            </div>
        </div>
        <div data-v-5f779880="">
            <div data-v-21d527e4="" data-v-5f779880="" class="purchase_list all ask">
                <!---->
                <div data-v-e2f6767a="" data-v-21d527e4="" class="empty_area">
                    <p data-v-e2f6767a="" class="desc">거래 내역이 없습니다.</p>
                    <!---->
                </div>
                <!----><!----><!----><!---->
            </div>
            <!---->
        </div>
    </div>
    <div data-v-6752ceb2="" data-v-5f779880="" class="my_home_title">
        <h3 data-v-6752ceb2="" class="title">관심 상품</h3>
        <a data-v-6752ceb2="" href="/my/wish" class="btn_more">
            <span data-v-6752ceb2="" class="btn_txt">더보기</span>
            <div data-v-6752ceb2=""  class="icon sprite-icons arr-right-gray">
                <img data-v-6752ceb2="" src="/TeamProject/img/user/myPageContainer/more_icon.svg" art="더보기" style="width:16px; height:16px;">
            </div>
        </a>
    </div>
    <div data-v-5f779880="" class="interest_product">
        <div data-v-5f779880="" class="product_list">
            <div data-v-eb375314="" data-v-5f779880="" class="product_item">
                <a data-v-eb375314="" href="/products/57553" class="item_inner">
                    <div data-v-eb375314="" class="thumb_box">
                        <div data-v-75e33658="" data-v-eb375314="" class="product" style="background-color: rgb(244, 244, 244);">
                            <picture data-v-548c90f9="" data-v-75e33658="" class="picture product_img">
                                <source
                                    data-v-548c90f9=""
                                    type="image/webp"
                                    srcset="
                                        https://kream-phinf.pstatic.net/MjAyMjA0MTNfMjY4/MDAxNjQ5ODQyMTA1ODc0.-TvJ4Ce3ZEkJvgGL1EA64df67Vyow_t31WKv126nxbwg.s_s7bWMGTmnEAKAuQ-Iz4Ml9oKoaxIIvp4QcLNdbHfog.PNG/a_3e9ab26474954befb3fb619a0ec2191d.png?type=m_webp
                                    "
                                />
                                <source
                                    data-v-548c90f9=""
                                    srcset="
                                        https://kream-phinf.pstatic.net/MjAyMjA0MTNfMjY4/MDAxNjQ5ODQyMTA1ODc0.-TvJ4Ce3ZEkJvgGL1EA64df67Vyow_t31WKv126nxbwg.s_s7bWMGTmnEAKAuQ-Iz4Ml9oKoaxIIvp4QcLNdbHfog.PNG/a_3e9ab26474954befb3fb619a0ec2191d.png?type=m
                                    "
                                />
                                <img
                                    data-v-548c90f9=""
                                    alt="상품 이미지"
                                    src="https://kream-phinf.pstatic.net/MjAyMjA0MTNfMjY4/MDAxNjQ5ODQyMTA1ODc0.-TvJ4Ce3ZEkJvgGL1EA64df67Vyow_t31WKv126nxbwg.s_s7bWMGTmnEAKAuQ-Iz4Ml9oKoaxIIvp4QcLNdbHfog.PNG/a_3e9ab26474954befb3fb619a0ec2191d.png?type=m"
                                    class="image"
                                />
                            </picture>
                            <!----><!----><!---->
                        </div>
                    </div>
                    <div data-v-eb375314="" class="info_box">
                        <div data-v-eb375314="" class="brand">
                            <!---->
                            <p data-v-eb375314="" class="brand-text">Hermes</p>
                        </div>
                        <p data-v-eb375314="" class="name">Hermes Izmir Sandal Calfskin &amp; Gold</p>
                        <!---->
                        <div data-v-eb375314="" class="price">
                            <div data-v-eb375314="" class="amount md"><em data-v-eb375314="" class="num"> 1,199,000 </em><span data-v-eb375314="" class="won md">원</span></div>
                            <div data-v-eb375314="" class="desc"><p data-v-eb375314="">즉시 구매가</p></div>
                        </div>
                    </div>
                </a>
            </div>
            <div data-v-eb375314="" data-v-5f779880="" class="product_item">
                <a data-v-eb375314="" href="/products/46178" class="item_inner">
                    <div data-v-eb375314="" class="thumb_box">
                        <div data-v-75e33658="" data-v-eb375314="" class="product" style="background-color: rgb(244, 244, 244);">
                            <picture data-v-548c90f9="" data-v-75e33658="" class="picture product_img">
                                <source
                                    data-v-548c90f9=""
                                    type="image/webp"
                                    srcset="
                                        https://kream-phinf.pstatic.net/MjAyMTEyMDJfMjUw/MDAxNjM4NDIyMTM5MzY4.R9ZV4AuKye2tKA3g6W_zCeDEKTWgsAhJyYnbAvjFAYsg.PQ8cY_jktruT6TjdGhhczKmkySmR-wfv7rhv-gmJWmAg.PNG/a_0bfa4c7bd3f64cc5b2f6689f97607277.png?type=m_webp
                                    "
                                />
                                <source
                                    data-v-548c90f9=""
                                    srcset="
                                        https://kream-phinf.pstatic.net/MjAyMTEyMDJfMjUw/MDAxNjM4NDIyMTM5MzY4.R9ZV4AuKye2tKA3g6W_zCeDEKTWgsAhJyYnbAvjFAYsg.PQ8cY_jktruT6TjdGhhczKmkySmR-wfv7rhv-gmJWmAg.PNG/a_0bfa4c7bd3f64cc5b2f6689f97607277.png?type=m
                                    "
                                />
                                <img
                                    data-v-548c90f9=""
                                    alt="상품 이미지"
                                    src="https://kream-phinf.pstatic.net/MjAyMTEyMDJfMjUw/MDAxNjM4NDIyMTM5MzY4.R9ZV4AuKye2tKA3g6W_zCeDEKTWgsAhJyYnbAvjFAYsg.PQ8cY_jktruT6TjdGhhczKmkySmR-wfv7rhv-gmJWmAg.PNG/a_0bfa4c7bd3f64cc5b2f6689f97607277.png?type=m"
                                    class="image"
                                />
                            </picture>
                            <!----><!----><!---->
                        </div>
                    </div>
                    <div data-v-eb375314="" class="info_box">
                        <div data-v-eb375314="" class="brand">
                            <!---->
                            <p data-v-eb375314="" class="brand-text">Mihara Yasuhiro</p>
                        </div>
                        <p data-v-eb375314="" class="name">Maison Mihara Yasuhiro Blakey OG Sole Canvas Low-top Sneaker Black White</p>
                        <!---->
                        <div data-v-eb375314="" class="price">
                            <div data-v-eb375314="" class="amount md">
                                <em data-v-eb375314="" class="num"> - </em>
                                <!---->
                            </div>
                            <div data-v-eb375314="" class="desc"><p data-v-eb375314="">즉시 구매가</p></div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <!---->
    </div>
    <!---->
    <div data-v-350bc372="" data-v-28cabbb5="" data-v-5f779880="" class="layer_point layer md" style="display: none;">
        <div data-v-350bc372="" class="layer_container">
            <div data-v-350bc372="" class="layer_header"><h2 data-v-28cabbb5="" data-v-350bc372="" class="title">이용안내</h2></div>
            <div data-v-350bc372="" class="layer_content">
                <div data-v-28cabbb5="" data-v-350bc372="" class="usable_wrap">
                    <div data-v-28cabbb5="" data-v-350bc372="" class="usable_point">
                        <h3 data-v-28cabbb5="" data-v-350bc372="" class="title">사용 가능한 포인트</h3>
                        <p data-v-28cabbb5="" data-v-350bc372="" class="point_box"><span data-v-28cabbb5="" data-v-350bc372="" class="point">0</span><span data-v-28cabbb5="" data-v-350bc372="" class="unit">P</span></p>
                        <div data-v-28cabbb5="" data-v-350bc372="" class="point_info">
                            <p data-v-28cabbb5="" data-v-350bc372="" class="info_item">이번달 소멸 예정 포인트 0P</p>
                            <p data-v-28cabbb5="" data-v-350bc372="" class="info_item">포인트 유효기간은 적립일로부터 최대 1년까지이며, 유형에 따라 달라질 수 있습니다.</p>
                        </div>
                    </div>
                    <ul data-v-28cabbb5="" data-v-350bc372="" class="usable_list">
                        <li data-v-28cabbb5="" data-v-350bc372="" class="usable_item">1,000P 이상부터 구매금액 제한 없이 사용하실 수 있습니다.</li>
                        <li data-v-28cabbb5="" data-v-350bc372="" class="usable_item">입찰 삭제, 거래 취소 시 사용한 포인트는 환불됩니다.</li>
                        <li data-v-28cabbb5="" data-v-350bc372="" class="usable_item">먼저 적립된 포인트부터 순서대로 사용되며, 사용하지 않으실 경우 유효기간이 지나면 자동 소멸됩니다.</li>
                        <li data-v-28cabbb5="" data-v-350bc372="" class="usable_item">유효기간이 지난 후 환불받은 포인트는 다시 사용하실 수 없습니다.</li>
                    </ul>
                </div>
                <div data-v-28cabbb5="" data-v-350bc372="" class="layer_btn"><a data-v-3d1bcc82="" data-v-28cabbb5="" href="#" class="btn outline medium" data-v-350bc372=""> 확인 </a></div>
            </div>
            <a data-v-28cabbb5="" data-v-350bc372="" href="#" class="btn_layer_close">
                <svg data-v-28cabbb5="" data-v-350bc372="" xmlns="http://www.w3.org/2000/svg" class="ico-close icon sprite-icons">
                    <use data-v-28cabbb5="" data-v-350bc372="" href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-close" xlink:href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-close"></use>
                </svg>
            </a>
        </div>
    </div>
</div>
