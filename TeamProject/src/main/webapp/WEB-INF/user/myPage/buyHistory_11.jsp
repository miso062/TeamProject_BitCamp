<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    .my_buying_detail .content_title[data-v-88eb18f6] {
        margin-bottom: 20px;
    }
    .content_title[data-v-88eb18f6] {
        display: flex;
        padding: 5px 0 6px;
    }
    .title_1[data-v-88eb18f6] {
        font-size: 24px;
        letter-spacing: -.36px;
    }
    .title_1>h3[data-v-88eb18f6] {
        line-height: 29px;
        font-size: inherit;
    }
    .btn_box[data-v-88eb18f6] {
 	 	margin-left: auto;
    	padding-left: 30px;
	    flex-shrink: 0;
	}
    .btn_box .btn[data-v-88eb18f6] {
	    margin-right: -6px;
	    padding: 0 6px;
	    -webkit-box-align: center;
	    -ms-flex-align: center;
	    align-items: center;
	    font-size: 14px;
	    letter-spacing: -.21px;
	    display : flex ;
	}
	.btn[data-v-3d1bcc82] {
	    cursor: pointer;
	    vertical-align: middle;
	    text-align: center;
	    color: rgba(34,34,34,.8);
	    background-color: #fff;
	}
    .btn_box .icon[data-v-4c65ffef] {
	    margin-right: 4px;
	    width: 20px;
	    height: 20px;
	}
    .section_title.order_title[data-v-5fd118dc] {
        margin-top: 0;
    }
    .title_box[data-v-5fd118dc] {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
    }
    .section_title.order_title .title[data-v-5fd118dc] {
        padding: 11px 0;
        font-size: 18px;
        line-height: 26px;
        letter-spacing: -.27px;
        font-weight: 400;
    }
    .section_title.order_title .order_number[data-v-5fd118dc] {
        line-height: 28px;
        letter-spacing: -.09px;
        font-weight: 700;
        font-style : normal;
    }
    .order_info[data-v-7b82d713] {
        position: relative;
        border-top: 2px solid #222;
    }
    .order_product[data-v-7b82d713] {
        display: flex;
        padding: 15px 105px 16px 0;
        border-bottom: 1px solid #ebebeb;
    }
    .product_box[data-v-7b82d713] {
        -webkit-box-flex: 0;
        flex: none;
        width: 100px;
        height: 100px;
        margin-top: 1px;
    }
    .product_box .product[data-v-7b82d713] {
        border-radius: 12px;
        overflow: hidden;
        position: relative;
        padding-top: 100%;
    }
    .product_img[data-v-75e33658] {
        position: absolute;
        top: 50%;
        left: 50%;
        -webkit-transform: translate(-50%,-50%);
        -ms-transform: translate(-50%,-50%);
        transform: translate(-50%,-50%);
        width: 81.5%;
        height: auto;
    }
    .picture[data-v-548c90f9] {
        display: flex;
    }
    .image[data-v-548c90f9] {
        object-fit: cover;
        width: 100%;
        height: 100%;
        image-rendering: -webkit-optimize-contrast;
    }
    img, video {
        border: 0;
        vertical-align: top;
        user-select: none!important;
        -webkit-user-drag: none;
    }
    .product_detail[data-v-7b82d713] {
        margin-left: 12px;
        display: flex;
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        flex-direction: column;
        align-self: center;
    }
    .name[data-v-7b82d713], .number[data-v-7b82d713] {
        font-size: 14px;
        letter-spacing: -.015px;
    }
    .number[data-v-7b82d713] {
        line-height: 20px;
        font-weight: 700;
    }
    .name[data-v-7b82d713] {
        line-height: 17px;
        margin-top: 2px;
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
    }
    .size[data-v-7b82d713] {
        margin-top: 8px;
        font-size: 0;
    }
    .size .size_text[data-v-7b82d713] {
        line-height: 17px;
        font-size: 14px;
        font-weight: 700;
        letter-spacing: -.015px;
        color: rgba(34,34,34,.5);
    }
    .size .mark_95[data-v-7b82d713], .size .size_text[data-v-7b82d713] {
        display: inline-block;
        vertical-align: top;
    }
    .order_price[data-v-7b82d713] {
        border-bottom: 1px solid #ebebeb;
    }
    .price_list[data-v-7b82d713] {
        display: table;
        table-layout: fixed;
        width: 100%;
    }
    li, ol, ul {
        list-style: none;
    }
    .price_item[data-v-7b82d713] {
        padding: 16px 0 20px;
        display: table-cell;
        text-align: center;
    }
    .price_item+.price_item .item_inner[data-v-7b82d713]:before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        bottom: 0;
        width: 1px;
        background-color: #ebebeb;
    }
    .price_item .item_inner[data-v-7b82d713] {
        position: relative;
    }
    .price_title[data-v-7b82d713] {
        font-size: 12px;
        letter-spacing: -.06px;
        color: rgba(34,34,34,.5);
    }
    .price[data-v-7b82d713] {
        font-size: 0;
    }
    .amount[data-v-7b82d713], .unit[data-v-7b82d713] {
        display: inline-block;
        font-size: 14px;
    }
    .order_btn[data-v-7b82d713] {
        position: absolute;
        top: 49px;
        right: 0;
    }
    .outlinegrey[data-v-3d1bcc82] {
        border: 1px solid #d3d3d3;
        color: rgba(34,34,34,.8);
    }
    .small[data-v-3d1bcc82] {
        font-size: 12px;
        letter-spacing: -.06px;
        padding: 8px 14px;
        height: 34px;
        line-height: 32px;
        border-radius: 10px;
    }
    .purchase_history_wrap .section_title[data-v-5fd118dc] {
        margin-top: 28px;
    }
    .title[data-v-5fd118dc] {
        line-height: 20px;
        padding: 6px 0 7px;
        font-size: 16px;
        letter-spacing: -.16px;
    }
    .purchase_history[data-v-c90bb174] {
        border-top: 2px solid #222;
    }
    .history_detail[data-v-c90bb174] {
        border-bottom: 1px solid #ebebeb;
    }
    .main_box[data-v-c90bb174] {
        background-color: #fafafa;
    }
    .main_item[data-v-c90bb174] {
        padding: 25px 0 26px 16px;
        font-weight: 700;
    }
    .main_item .title[data-v-c90bb174] {
        float: left;
        margin-right: 12px;
        width: 160px;
        font-size: 14px;
        line-height: 28px;
    }
    .main_item .price[data-v-c90bb174] {
        overflow: hidden;
        font-size: 0;
    }
    .main_item[data-v-c90bb174]:after {
        content: "";
        display: block;
        clear: both;
    }
    .main_item .amount[data-v-c90bb174], .main_item .unit[data-v-c90bb174] {
        display: inline-block;
        font-size: 22px;
        line-height: 28px;
        letter-spacing: -.11px;
        vertical-align: top;
    }
    .main_item .unit[data-v-c90bb174] {
        font-size: 20px;
        letter-spacing: -.33px;
    }
    .detail_box[data-v-c90bb174] {
        padding: 16px 16px 17px;
        border-top: 1px solid #ebebeb;
    }
    .purchase_history .price_addition[data-v-3a2a7b6b] {
        -webkit-box-pack: start;
        -ms-flex-pack: start;
        justify-content: flex-start;
    }
    .price_addition[data-v-3a2a7b6b] {
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-pack: justify;
        -ms-flex-pack: justify;
        justify-content: space-between;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        min-height: 26px;
        font-size: 13px;
        letter-spacing: -.07px;
    }
    .purchase_history .price_title[data-v-3a2a7b6b] {
        margin-right: 12px;
        width: 160px;
        line-height: 20px;
        letter-spacing: -.2px;
    }
    .price_title[data-v-3a2a7b6b] {
        color: rgba(34,34,34,.5);
    }
    .purchase_history .price_text[data-v-3a2a7b6b] {
        font-size: 14px;
        line-height: 20px;
        letter-spacing: -.2px;
    }
    .price_text[data-v-3a2a7b6b] {
        text-align: right;
        white-space: nowrap;
        color: #222;
    }
    .price_text[data-v-3a2a7b6b].buy {
        color: #f15746;
    }
    .price_text[data-v-3a2a7b6b]:after {
        content: "";
        display: block;
        clear: both;
    }
    .price_title.dark[data-v-3a2a7b6b] {
        color: #222;
    }
    .history_btn[data-v-c90bb174] {
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        justify-content: center;
    }
    .history_btn .btn[data-v-c90bb174] {
        margin-top: 24px;
    }
    .outline[data-v-3d1bcc82] {
        border: 1px solid #d3d3d3;
    }
    .medium[data-v-3d1bcc82] {
        padding: 0 18px;
        height: 42px;
        line-height: 40px;
        border-radius: 12px;
        font-size: 14px;
        letter-spacing: -.14px;
    }
    .history_btn .btn+.btn[data-v-c90bb174] {
        margin-left: 8px;
    }
    .history_btn .btn.buy[data-v-c90bb174] {
        background-color: #ef6253;
        border-color: #ef6253;
        color: #fff;
    }
    .section_title[data-v-5fd118dc] {
        margin-top: 31px;
    }
    .noti[data-v-5fd118dc] {
        line-height: 14px;
        padding-bottom: 6px;
        font-size: 12px;
        letter-spacing: -.06px;
        letter-spacing: -.01px;
        color: rgba(34,34,34,.5);
    }
    .shipping_address[data-v-8c2dcbf2] {
        border-top: 2px solid #222;
    }
    .shipping_address .address_item[data-v-8c2dcbf2] {
        padding: 16px 0 17px;
        border-bottom: 1px solid #ebebeb;
    }
    .shipping_address .address_title[data-v-8c2dcbf2] {
        float: left;
        margin-right: 26px;
        width: 100px;
        font-size: 14px;
        letter-spacing: -.21px;
    }
    .shipping_address .address_txt[data-v-8c2dcbf2] {
        overflow: hidden;
        font-size: 14px;
        letter-spacing: -.21px;
    }
    .shipping_address .address_item[data-v-8c2dcbf2]:after {
        content: "";
        display: block;
        clear: both;
    }
    .detail_btn_box[data-v-4c65ffef] {
        padding-top: 100px;
        text-align: center;
    }
    .layer_alert[data-v-350bc372] {
        text-align: center;
    }
    .layer[data-v-350bc372] {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: rgba(34,34,34,.5);
        z-index: 1010;
    }
    .layer_alert .layer_container[data-v-350bc372] {
        width: 360px;
    }
    .layer_container[data-v-350bc372] {
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
    .layer_alert .layer_header .title[data-v-350bc372] {
        padding: 32px 16px 0;
        min-height: 46px;
    }  
    .layer_header .title[data-v-350bc372] {
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
    .layer_alert .alert_box[data-v-350bc372] {
        padding: 8px 32px 0;
    }
    .layer_alert .alert_desc[data-v-350bc372] {
        font-size: 14px;
        letter-spacing: -.21px;
        color: rgba(34,34,34,.8);
    }
    .layer_btn[data-v-350bc372] {
        padding: 24px 32px 32px;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        justify-content: center;
    }
    .layer_btn .btn[data-v-350bc372] {
        width: 120px;
    } 
    
    
</style>
<div class="my_buying_detail bidding" data-v-4c65ffef="">
    <div class="content_title" data-v-88eb18f6="" data-v-4c65ffef="">
        <div class="title_1" data-v-88eb18f6="">
            <h3 data-v-88eb18f6="">구매내역 &gt; 입찰 중</h3>
            <!---->
        </div>
        <div class="btn_box" data-v-88eb18f6="" data-v-4c65ffef="">
            <!---->
            <a href="#" class="btn" data-v-3d1bcc82="" data-v-4c65ffef="" data-v-88eb18f6="">
                <img src="/TeamProject/img/user/myPage/buyHistory_11/can_trash.png" alt="쓰레기통" class="ico-delete icon sprite-icons" data-v-4c65ffef="">
                
                <span class="btn_txt" data-v-4c65ffef="">삭제하기</span>
            </a>
        </div>
        <!---->
    </div>
    <!---->
    <div class="order_info_wrap" data-v-7b82d713="" data-v-4c65ffef="">
        <div class="section_title order_title" data-v-5fd118dc="" data-v-7b82d713="">
            <div class="title_box" data-v-5fd118dc="">
                <h4 class="title" data-v-5fd118dc="">주문번호 <em class="order_number" data-v-5fd118dc="" data-v-7b82d713=""> B-SN27998458 </em></h4>
            </div>
            <!---->
        </div>
        <div class="order_info" data-v-7b82d713="">
            <div class="order_product" data-v-7b82d713="">
                <div class="product_box" data-v-7b82d713="">
                    <div class="product" style="background-color: #ebf0f5;" data-v-75e33658="" data-v-7b82d713="">
                        <picture class="picture product_img" data-v-548c90f9="" data-v-75e33658="">
                            <source
                                type="image/webp"
                                srcset="
                                    https://kream-phinf.pstatic.net/MjAyMjA2MTVfMjYw/MDAxNjU1MjgzNjk2Mzk3.gh8n5rs7p-pWVqzIhNh7yj_KdyjLFBeJr9QbsDumoFEg.KdvPfvgBYmjm7MKKhcbIEQIP6FGeuof_GnmcDUgrvyAg.PNG/a_baa1ccea3726495badba419dfede63f9.png?type=m_webp
                                "
                                data-v-548c90f9=""
                            />
                            <source
                                srcset="
                                    https://kream-phinf.pstatic.net/MjAyMjA2MTVfMjYw/MDAxNjU1MjgzNjk2Mzk3.gh8n5rs7p-pWVqzIhNh7yj_KdyjLFBeJr9QbsDumoFEg.KdvPfvgBYmjm7MKKhcbIEQIP6FGeuof_GnmcDUgrvyAg.PNG/a_baa1ccea3726495badba419dfede63f9.png?type=m
                                "
                                data-v-548c90f9=""
                            />
                            <img
                                alt="Nike Air Force 1 '07 Low White"
                                src="https://kream-phinf.pstatic.net/MjAyMjA2MTVfMjYw/MDAxNjU1MjgzNjk2Mzk3.gh8n5rs7p-pWVqzIhNh7yj_KdyjLFBeJr9QbsDumoFEg.KdvPfvgBYmjm7MKKhcbIEQIP6FGeuof_GnmcDUgrvyAg.PNG/a_baa1ccea3726495badba419dfede63f9.png?type=m"
                                class="image"
                                data-v-548c90f9=""
                            />
                        </picture>
                        <!----><!----><!---->
                    </div>
                </div>
                <div class="product_detail" data-v-7b82d713="">
                    <!---->
                    <strong class="number" data-v-7b82d713="">새상품 · 315122-111/CW2288-111</strong>
                    <p class="name" data-v-7b82d713="">Nike Air Force 1 '07 Low White</p>
                    <p class="size" data-v-7b82d713=""><span class="size_text" data-v-7b82d713="">270</span></p>
                </div>
            </div>
            <div class="order_price" data-v-7b82d713="">
                <ul class="price_list" data-v-7b82d713="">
                    <li class="price_item" data-v-7b82d713="">
                        <div class="item_inner" data-v-7b82d713="">
                            <span class="price_title" data-v-7b82d713="">즉시 구매가</span>
                            <p class="price" data-v-7b82d713=""><span class="amount" data-v-7b82d713="">149,000</span><span class="unit" data-v-7b82d713="">원</span></p>
                        </div>
                    </li>
                    <li class="price_item" data-v-7b82d713="">
                        <div class="item_inner" data-v-7b82d713="">
                            <span class="price_title" data-v-7b82d713="">즉시 판매가</span>
                            <p class="price" data-v-7b82d713=""><span class="amount" data-v-7b82d713="">141,000</span><span class="unit" data-v-7b82d713="">원</span></p>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="order_btn" data-v-7b82d713=""><a href="#" class="btn outlinegrey small" data-v-3d1bcc82="" data-v-7b82d713=""> 상품 상세보기 </a></div>
            <!---->
        </div>
    </div>
    <!---->
    <div class="purchase_history_wrap" data-v-c90bb174="" data-v-4c65ffef="">
        <div class="section_title" data-v-5fd118dc="" data-v-c90bb174="">
            <div class="title_box" data-v-5fd118dc=""><h4 class="title" data-v-5fd118dc="">구매 입찰 내역</h4></div>
            <!---->
        </div>
        <div class="purchase_history bidding buy" data-v-c90bb174="">
            <div class="history_detail" data-v-c90bb174="">
                <div class="main_box" data-v-c90bb174="">
                    <dl class="main_item" data-v-c90bb174="">
                        <dt class="title" data-v-c90bb174="">구매 희망가</dt>
                        <dd class="price" data-v-c90bb174=""><span class="amount" data-v-c90bb174="">30,000</span><span class="unit" data-v-c90bb174="">원</span></dd>
                    </dl>
                </div>
                <div item="[object Object],[object Object],[object Object],[object Object]" class="detail_box" data-v-c90bb174="">
                    <dl class="price_addition" data-v-3a2a7b6b="" data-v-c90bb174="">
                        <dt class="price_title" data-v-3a2a7b6b="">
                            <span data-v-3a2a7b6b="">검수비</span>
                            <!---->
                        </dt>
                        <dd class="price_text" data-v-3a2a7b6b="">무료</dd>
                    </dl>
                    <dl class="price_addition" data-v-3a2a7b6b="" data-v-c90bb174="">
                        <dt class="price_title" data-v-3a2a7b6b="">
                            <span data-v-3a2a7b6b="">수수료</span>
                            <!---->
                        </dt>
                        <dd class="price_text" data-v-3a2a7b6b="">600원</dd>
                    </dl>
                    <dl class="price_addition" data-v-3a2a7b6b="" data-v-c90bb174="">
                        <dt class="price_title" data-v-3a2a7b6b="">
                            <span data-v-3a2a7b6b="">배송비</span>
                            <!---->
                        </dt>
                        <dd class="price_text" data-v-3a2a7b6b="">3,000원</dd>
                    </dl>
                    <dl class="price_addition" data-v-3a2a7b6b="" data-v-c90bb174="">
                        <dt class="price_title dark" data-v-3a2a7b6b="">
                            <span data-v-3a2a7b6b="">총 결제금액</span>
                            <!---->
                        </dt>
                        <dd class="price_text bold buy" data-v-3a2a7b6b="">33,600원</dd>
                    </dl>
                </div>
                <div item="[object Object],[object Object]" class="detail_box" data-v-c90bb174="">
                    <dl class="price_addition" data-v-3a2a7b6b="" data-v-c90bb174="">
                        <dt class="price_title dark" data-v-3a2a7b6b="">
                            <span data-v-3a2a7b6b="">입찰일</span>
                            <!---->
                        </dt>
                        <dd class="price_text" data-v-3a2a7b6b="" style="font-weight: 500;">22/07/20</dd>
                    </dl>
                    <dl class="price_addition" data-v-3a2a7b6b="" data-v-c90bb174="">
                        <dt class="price_title dark" data-v-3a2a7b6b="">
                            <span data-v-3a2a7b6b="" >입찰 마감기한</span>
                            <!---->
                        </dt>
                        <dd class="price_text" data-v-3a2a7b6b="" style="font-weight: 500;">1일 - 22/07/21까지</dd>
                    </dl>
                </div>
            </div>
            <div class="history_btn" data-v-c90bb174="">
                <a href="#" class="btn outline medium" data-v-3d1bcc82="" data-v-c90bb174=""> 입찰 변경하기 </a>
                <!---->
                <a href="#" class="btn buy outline medium" data-v-3d1bcc82="" data-v-c90bb174=""> 즉시 구매하기 </a>
                <!---->
            </div>
        </div>
    </div>
    <!---->
    <div class="shipping_address_wrap" data-v-8c2dcbf2="" data-v-4c65ffef="">
        <div class="section_title" data-v-5fd118dc="" data-v-8c2dcbf2="">
            <div class="title_box" data-v-5fd118dc=""><h4 class="title" data-v-5fd118dc="">배송 주소</h4></div>
            <p class="noti" data-v-5fd118dc="">대기 중, 발송완료, 입고완료 상태에서만 배송지 변경이 가능합니다.</p>
        </div>
        <div class="shipping_address" data-v-8c2dcbf2="">
            <dl class="address_item" data-v-8c2dcbf2="">
                <dt class="address_title" data-v-8c2dcbf2="">받는 사람</dt>
                <dd class="address_txt" data-v-8c2dcbf2="">김**</dd>
            </dl>
            <dl class="address_item" data-v-8c2dcbf2="">
                <dt class="address_title" data-v-8c2dcbf2="">휴대폰 번호</dt>
                <dd class="address_txt" data-v-8c2dcbf2="">010-7**-*333</dd>
            </dl>
            <dl class="address_item" data-v-8c2dcbf2="">
                <dt class="address_title" data-v-8c2dcbf2="">주소</dt>
                <dd class="address_txt" data-v-8c2dcbf2="">(06296) 서울 강남구 논현로32길 5 (도곡동) ㄹㄴㅇㄴㄹㄴ</dd>
            </dl>
        </div>
        <!----><!---->
    </div>
   
    <div data-v-4c65ffef=""></div>
    <div class="detail_btn_box" data-v-4c65ffef=""><a href="#" class="btn btn_view_list outlinegrey medium" data-v-3d1bcc82="" data-v-4c65ffef="" style="padding: 10px 28px;"> 목록보기 </a></div>
    <!----><!----><!----><!----><!---->
        <div class="layer lg layer_alert" style="display: none;" data-v-350bc372="" data-v-4c65ffef="">
        <div class="layer_container" data-v-350bc372="">
            <div class="layer_header" data-v-350bc372=""><h2 class="title" data-v-350bc372="">입찰 지우기</h2></div>
            <div class="layer_content" data-v-350bc372="">
                <div class="alert_box" data-v-350bc372=""><p class="alert_desc" data-v-350bc372="">등록하신 입찰을 지우시면 주문이 취소됩니다.</p></div>
                <div class="layer_btn" data-v-350bc372="">
                    <button type="button" class="btn outlinegrey medium" data-v-3d1bcc82="" data-v-350bc372="">취소</button><button type="button" class="btn outlinegrey medium" data-v-3d1bcc82="" data-v-350bc372="">입찰 지우기</button>
                </div>
            </div>
        </div>
    </div>
    <!----><!---->
</div>
