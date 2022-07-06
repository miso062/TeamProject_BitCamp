<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body, button, dd, div, dl, dt, fieldset, figcaption, figure, form, h1, h2, h3, h4, h5, h6, input, legend, p, select, table, td, textarea, th {
    margin: 0;
    padding: 0;
}
a {
    color: inherit;
    -webkit-tap-highlight-color: rgba(0,0,0,.1);
}
a, a:active, a:focus, a:hover {
    text-decoration: none;
}
a:-webkit-any-link {
    cursor: pointer;
}
*, :after, :before {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    -webkit-tap-highlight-color: transparent;
}
button {
    padding: 0;
    border: 0;
    outline: none;
    background: none;
    background-color: rgba(0,0,0,0);
    appearance: none;
    border-radius: 0;
}
li, ol, ul {
    list-style: none;
}
.shop_content {
    display: flex;
    position: relative;
    margin: 0 auto;
    padding: 0 40px 80px;
    max-width: 1280px;
}
.shop_search_filter {
    width: 210px;
    margin-right: 10px;
    padding-right: 10px;
    overflow-x: hidden;
    overflow-y: auto;
}
.shop_search_content {
    flex: 1;
}
.shop_search_option{
    display: flex;
    justify-content: flex-end;
    align-items: center;
    height: 60px;
}
.shop_sorting_title {
    font-size: 13px;
    letter-spacing: -.07px;
    
    display: -webkit-box;
    align-items: center;
    cursor: pointer;
    font-weight: 600;
}
.shop_sorting_title:after {
    width: 20px;
    height: 20px;
    background-size: 20px 20px;
    content: "";
    margin-left: 2px;
}
.shop_sorting_list {
    overflow: hidden;
    position: absolute;
    top: 28px;
    right: 0;
    width: 310px;
    background-color: #fff;
    border: 1px solid #ebebeb;
    box-shadow: 0 4px 10px 0 rgb(0 0 0 / 10%);
    z-index: 10;
    padding: 5px;
}
.shop_sorting_link{
    position: relative;
    display: block;
    padding: 0px 40px 0px 10px;
}
.shop_sorting_item{
	margin:4px;
	padding:5px;
}
.shop_sorting_item .shop_main_desc {
    color: #222;
    font-size: 14px;
    letter-spacing: -.21px;
}
.shop_sorting_item.item_on .shop_main_desc {
    color: #222;
    font-weight: 700;
}
.shop_sub_desc{
    padding-top: 4px;
    font-size: 12px;
    letter-spacing: -.06px;
    color: rgba(34,34,34,.5);
}
.shop_check{
	display:none;
	/* display: block; */
	position: absolute;
    top: 50%;
    right: 12px;
    margin-top: -12px;
}
.shop_item_on .shop_check{
	display: block;
	position: absolute;
    top: 50%;
    right: 12px;
    margin-top: -12px;
}
/* shop_search_result */
.shop_search_result{
	display: block;
}
.shop_search_result_list {
    margin: -20px -10px 0;
}
.shop_search_result_list:after {
    content: "";
    display: block;
    clear: both;
}
.shop_search_result_list .shop_search_result_item {
	max-width : 770px;
	width: 22%;
    padding: 0 6.5px;
	position: relative;
    float: left;
    margin: 20px 0;
}
.shop_item_inner {
    display: block;
    background-color: #fff;
    border-radius: 12px;
}
.shop_product {
    overflow: hidden;
    position: relative;
    padding-top: 100%;
    border-radius: 8px;
}
.shop_product:after {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(0,0,0,0);
}
.shop_product_img {
	display: felx;
    position: absolute;
    top: 50%;
    left: 50%;
    -ms-transform: translate(-50%,-50%);
    transform: translate(-50%,-50%);
    width: 81.5%;
    height: auto;
}
.shop_product_info {
    padding-top: 9px;
}
.shop_title .shop_brand {
    display: inline-block;
    vertical-align: top;
    line-height: 16px;
    font-size: 14px;
    letter-spacing: -.21px;
    font-weight: 700;
    color: #333;
}
.shop_title .shop_name, .shop_title .shop_translated_name {
    margin-top: 2px;
    overflow: hidden;
    text-overflow: ellipsis;
}
.shop_title .shop_translated_name {
    line-height: 14px;
    font-size: 12px;
    letter-spacing: -.06px;
    color: rgba(34,34,34,.5);
}
.shop_price {
    padding-top: 11px;
}
.shop_price .shop_amount {
    line-height: 17px;
    font-size: 14px;
    font-weight: 700;
}
.shop_price .shop_desc {
    line-height: 13px;
    font-size: 11px;
    color: rgba(34,34,34,.5);
}
/* 관심&리뷰 */
.shop_interest_figure {
    padding-top: 12px;
    margin: 0 -8px;
}
.shop_interest_figure > span {
    display: inline-flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    vertical-align: top;
    padding: 0 8px;
    height: 20px;
}
.shop_interest_figure .shop_wish_figure .shop_text {
    margin-left: 2px;
    font-size: 13px;
}
.shop_interest_figure .shop_review_figure .shop_text {
    margin-left: 2px;
    font-size: 13px;
}
.shop_interest_figure svg {
    width: 16px;
    height: 16px;
}

</style>
</head>
<body>
<div class="shop_content">
	<div class="shop_search_filter"></div>
	
<div class="shop_search_content">
    <div class="shop_search_option" >
        <div style="display: ;" >
            <div class="shop_filter_sorting" >
                <button type="button" class="shop_sorting_title" id="shop_sorting_title" >인기순
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
						<path fill-rule="evenodd" d="M11.5 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L11 2.707V14.5a.5.5 0 0 0 .5.5zm-7-14a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L4 13.293V1.5a.5.5 0 0 1 .5-.5z"/>
					</svg>
                </button>
                <ul class="shop_sorting_list" style="display:none" >
                    <li class="shop_sorting_item item_on">
                        <a href="#" class="shop_sorting_link" >
                            <div class="shop_sorting_desc" >
                                <p class="shop_main_desc" >인기순</p>
                                <p class="shop_sub_desc" >많이 판매된 순서대로 정렬합니다.</p>
                            </div>
                            <img class="shop_check" alt="" src="/TeamProject/img/shop/check-lg.svg">
                        </a>
                    </li>
                    <li class="shop_sorting_item" >
                        <a href="#" class="shop_sorting_link" >
                            <div class="shop_sorting_desc" >
                                <p class="shop_main_desc" >즉시 구매가순</p>
                                <p class="shop_sub_desc" >즉시 구매가가 낮은 순서대로 정렬합니다.</p>
                            </div>
                            <img class="shop_check" alt="" src="/TeamProject/img/shop/check-lg.svg">
                        </a>
                    </li>
                    <li class="shop_sorting_item" >
                        <a href="#" class="shop_sorting_link" >
                            <div class="shop_sorting_desc" >
                                <p class="shop_main_desc" >즉시 판매가순</p>
                                <p class="shop_sub_desc" >즉시 판매가가 높은 순서대로 정렬합니다.</p>
                            </div>
                            <img class="shop_check" alt="" src="/TeamProject/img/shop/check-lg.svg">
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
<div style="display: none;">
    <div><div class="shop_filter_tag" style="display: none;" ></div></div>
</div>
    <!-- content 시작-->
    <div class="shop_search_result">
        <div class="shop_search_result_list">

            <!-- 상품 -->
            <div class="shop_search_result_item">
                <a href="#" class="shop_item_inner">
                    <div class="shop_product" style="background-color: rgb(235, 240, 245);">
                            <img
                                data-v-dddd5b16=""
                                alt="나이키 덩크 로우 레트로 블랙"
                                src="https://kream-phinf.pstatic.net/MjAyMTA3MjhfMjIg/MDAxNjI3NDQxMDA1NjE5.HOgIYywGZaaBJDqUzx2OnX9HAxoOWPvuWHqUn_LZGcgg.VYIuOfA5_GgjBGRowv6dmQuAOPtUvmAxbGpOyUCOCtYg.PNG/p_9d8ed1a74d2540ab9842e63363607bf4.png?type=m"
                                class="shop_product_img"
                            />
                    </div>
                    <div class="shop_product_info">
                        <div class="shop_title">
                            <p class="shop_brand">Nike</p>
                            <p class="shop_name">Nike Dunk Low Retro Black</p>
                            <p class="shop_translated_name">나이키 덩크 로우 레트로 블랙</p>
                        </div>
                        <div class="shop_price">
                            <div class="shop_amount">174,000원</div>
                            <div class="shop_desc"><p>즉시 구매가</p></div>
                        </div>
                    </div>
                </a>
                <div class="shop_interest_figure">
                    <span class="shop_wish_figure">
                            <img alt="" src="/TeamProject/img/container2/bookmark.svg" >
                        <span class="shop_text">10.2만</span>
                    </span>
                    <span class="shop_review_figure">
                        <a href="/social/shop_products/28029" class="review_link" aria-label="나이키 덩크 로우 레트로 블랙 리뷰">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-postcard" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H2ZM1 4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V4Zm7.5.5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7ZM2 5.5a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5ZM10.5 5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3ZM13 8h-2V6h2v2Z"/>
                            </svg>
                        </a>
                        <span class="shop_text">1.1만</span>
                    </span>
                </div>
            </div>
            
            <div class="shop_search_result_item">
                <a href="#" class="shop_item_inner">
                    <div class="shop_product" style="background-color: rgb(235, 240, 245);">
                            <img
                                data-v-dddd5b16=""
                                alt="나이키 덩크 로우 레트로 블랙"
                                src="https://kream-phinf.pstatic.net/MjAyMTA3MjhfMjIg/MDAxNjI3NDQxMDA1NjE5.HOgIYywGZaaBJDqUzx2OnX9HAxoOWPvuWHqUn_LZGcgg.VYIuOfA5_GgjBGRowv6dmQuAOPtUvmAxbGpOyUCOCtYg.PNG/p_9d8ed1a74d2540ab9842e63363607bf4.png?type=m"
                                class="shop_product_img"
                            />
                    </div>
                    <div class="shop_product_info">
                        <div class="shop_title">
                            <p class="shop_brand">Nike</p>
                            <p class="shop_name">Nike Dunk Low Retro Black</p>
                            <p class="shop_translated_name">나이키 덩크 로우 레트로 블랙</p>
                        </div>
                        <div class="shop_price">
                            <div class="shop_amount">174,000원</div>
                            <div class="shop_desc"><p>즉시 구매가</p></div>
                        </div>
                    </div>
                </a>
                <div class="shop_interest_figure">
                    <span class="shop_wish_figure">
                            <img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
                        <span class="shop_text">10.2만</span>
                    </span>
                    <span class="shop_review_figure">
                        <a data-v-1c683be8="" href="/social/shop_products/28029" class="review_link" aria-label="나이키 덩크 로우 레트로 블랙 리뷰">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-postcard" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H2ZM1 4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V4Zm7.5.5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7ZM2 5.5a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5ZM10.5 5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3ZM13 8h-2V6h2v2Z"/>
                            </svg>
                        </a>
                        <span class="shop_text">1.1만</span>
                    </span>
                </div>
            </div>
            
            <div class="shop_search_result_item">
                <a href="#" class="shop_item_inner">
                    <div class="shop_product" style="background-color: rgb(235, 240, 245);">
                            <img
                                data-v-dddd5b16=""
                                alt="나이키 덩크 로우 레트로 블랙"
                                src="https://kream-phinf.pstatic.net/MjAyMTA3MjhfMjIg/MDAxNjI3NDQxMDA1NjE5.HOgIYywGZaaBJDqUzx2OnX9HAxoOWPvuWHqUn_LZGcgg.VYIuOfA5_GgjBGRowv6dmQuAOPtUvmAxbGpOyUCOCtYg.PNG/p_9d8ed1a74d2540ab9842e63363607bf4.png?type=m"
                                class="shop_product_img"
                            />
                    </div>
                    <div class="shop_product_info">
                        <div class="shop_title">
                            <p class="shop_brand">Nike</p>
                            <p class="shop_name">Nike Dunk Low Retro Black</p>
                            <p class="shop_translated_name">나이키 덩크 로우 레트로 블랙</p>
                        </div>
                        <div class="shop_price">
                            <div class="shop_amount">174,000원</div>
                            <div class="shop_desc"><p>즉시 구매가</p></div>
                        </div>
                    </div>
                </a>
                <div class="shop_interest_figure">
                    <span class="shop_wish_figure">
                            <img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
                        <span class="shop_text">10.2만</span>
                    </span>
                    <span class="shop_review_figure">
                        <a data-v-1c683be8="" href="/social/shop_products/28029" class="review_link" aria-label="나이키 덩크 로우 레트로 블랙 리뷰">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-postcard" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H2ZM1 4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V4Zm7.5.5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7ZM2 5.5a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5ZM10.5 5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3ZM13 8h-2V6h2v2Z"/>
                            </svg>
                        </a>
                        <span class="shop_text">1.1만</span>
                    </span>
                </div>
            </div>

            <div class="shop_search_result_item">
                <a href="#" class="shop_item_inner">
                    <div class="shop_product" style="background-color: rgb(235, 240, 245);">
                            <img
                                data-v-dddd5b16=""
                                alt="나이키 덩크 로우 레트로 블랙"
                                src="https://kream-phinf.pstatic.net/MjAyMTA3MjhfMjIg/MDAxNjI3NDQxMDA1NjE5.HOgIYywGZaaBJDqUzx2OnX9HAxoOWPvuWHqUn_LZGcgg.VYIuOfA5_GgjBGRowv6dmQuAOPtUvmAxbGpOyUCOCtYg.PNG/p_9d8ed1a74d2540ab9842e63363607bf4.png?type=m"
                                class="shop_product_img"
                            />
                    </div>
                    <div class="shop_product_info">
                        <div class="shop_title">
                            <p class="shop_brand">Nike</p>
                            <p class="shop_name">Nike Dunk Low Retro Black</p>
                            <p class="shop_translated_name">나이키 덩크 로우 레트로 블랙</p>
                        </div>
                        <div class="shop_price">
                            <div class="shop_amount">174,000원</div>
                            <div class="shop_desc"><p>즉시 구매가</p></div>
                        </div>
                    </div>
                </a>
                <div class="shop_interest_figure">
                    <span class="shop_wish_figure">
                            <img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
                        <span class="shop_text">10.2만</span>
                    </span>
                    <span class="shop_review_figure">
                        <a data-v-1c683be8="" href="/social/shop_products/28029" class="review_link" aria-label="나이키 덩크 로우 레트로 블랙 리뷰">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-postcard" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H2ZM1 4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V4Zm7.5.5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7ZM2 5.5a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5ZM10.5 5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3ZM13 8h-2V6h2v2Z"/>
                            </svg>
                        </a>
                        <span class="shop_text">1.1만</span>
                    </span>
                </div>
            </div>

            <div class="shop_search_result_item">
                <a href="#" class="shop_item_inner">
                    <div class="shop_product" style="background-color: rgb(235, 240, 245);">
                            <img
                                data-v-dddd5b16=""
                                alt="나이키 덩크 로우 레트로 블랙"
                                src="https://kream-phinf.pstatic.net/MjAyMTA3MjhfMjIg/MDAxNjI3NDQxMDA1NjE5.HOgIYywGZaaBJDqUzx2OnX9HAxoOWPvuWHqUn_LZGcgg.VYIuOfA5_GgjBGRowv6dmQuAOPtUvmAxbGpOyUCOCtYg.PNG/p_9d8ed1a74d2540ab9842e63363607bf4.png?type=m"
                                class="shop_product_img"
                            />
                    </div>
                    <div class="shop_product_info">
                        <div class="shop_title">
                            <p class="shop_brand">Nike</p>
                            <p class="shop_name">Nike Dunk Low Retro Black</p>
                            <p class="shop_translated_name">나이키 덩크 로우 레트로 블랙</p>
                        </div>
                        <div class="shop_price">
                            <div class="shop_amount">174,000원</div>
                            <div class="shop_desc"><p>즉시 구매가</p></div>
                        </div>
                    </div>
                </a>
                <div class="shop_interest_figure">
                    <span class="shop_wish_figure">
                            <img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
                        <span class="shop_text">10.2만</span>
                    </span>
                    <span class="shop_review_figure">
                        <a data-v-1c683be8="" href="/social/shop_products/28029" class="review_link" aria-label="나이키 덩크 로우 레트로 블랙 리뷰">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-postcard" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H2ZM1 4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V4Zm7.5.5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7ZM2 5.5a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5ZM10.5 5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3ZM13 8h-2V6h2v2Z"/>
                            </svg>
                        </a>
                        <span class="shop_text">1.1만</span>
                    </span>
                </div>
            </div>

            <div class="shop_search_result_item">
                <a href="#" class="shop_item_inner">
                    <div class="shop_product" style="background-color: rgb(235, 240, 245);">
                            <img
                                data-v-dddd5b16=""
                                alt="나이키 덩크 로우 레트로 블랙"
                                src="https://kream-phinf.pstatic.net/MjAyMTA3MjhfMjIg/MDAxNjI3NDQxMDA1NjE5.HOgIYywGZaaBJDqUzx2OnX9HAxoOWPvuWHqUn_LZGcgg.VYIuOfA5_GgjBGRowv6dmQuAOPtUvmAxbGpOyUCOCtYg.PNG/p_9d8ed1a74d2540ab9842e63363607bf4.png?type=m"
                                class="shop_product_img"
                            />
                    </div>
                    <div class="shop_product_info">
                        <div class="shop_title">
                            <p class="shop_brand">Nike</p>
                            <p class="shop_name">Nike Dunk Low Retro Black</p>
                            <p class="shop_translated_name">나이키 덩크 로우 레트로 블랙</p>
                        </div>
                        <div class="shop_price">
                            <div class="shop_amount">174,000원</div>
                            <div class="shop_desc"><p>즉시 구매가</p></div>
                        </div>
                    </div>
                </a>
                <div class="shop_interest_figure">
                    <span class="shop_wish_figure">
                            <img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
                        <span class="shop_text">10.2만</span>
                    </span>
                    <span class="shop_review_figure">
                        <a data-v-1c683be8="" href="/social/shop_products/28029" class="review_link" aria-label="나이키 덩크 로우 레트로 블랙 리뷰">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-postcard" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H2ZM1 4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V4Zm7.5.5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7ZM2 5.5a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5ZM10.5 5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3ZM13 8h-2V6h2v2Z"/>
                            </svg>
                        </a>
                        <span class="shop_text">1.1만</span>
                    </span>
                </div>
            </div>
            <!-- shop_product 끝-->
        </div>
    </div>
    <!-- content 끝-->
</div>

    <div class="list_loading" style="display: none;">
        <img src="/_nuxt/img/loading.410eb77.gif" alt="리스트 로딩중입니다." class="loading_img" />
    </div>
</div>    
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">  
/* 필터클릭시 목록보이기 */
$("#shop_sorting_title").click(function(){
	if($('.shop_sorting_list').css('display')=='none'){
		$('.shop_sorting_list').css({'display': 'block'});
	}else{
		$('.shop_sorting_list').css({'display': 'none'});
	}
});
/* 필터목록클릭시 체크 */
$(function() {
	$(".shop_sorting_list .shop_sorting_item").on('click', function(){
 		$(this).addClass("item_on");
		$(".shop_sorting_list .shop_sorting_item").not(this).removeClass("item_on"); 
	});
});
</script>
</body>
</html>
 