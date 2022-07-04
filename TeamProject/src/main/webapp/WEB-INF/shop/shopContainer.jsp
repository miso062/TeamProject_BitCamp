<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.content {
    display: flex;
    position: relative;
    margin: 0 auto;
    padding: 0 40px 80px;
    max-width: 1280px;
}
.search_filter {
    width: 210px;
    margin-right: 10px;
    padding-right: 10px;
    overflow-x: hidden;
    overflow-y: auto;
}
.search_content {
    flex: 1;
}
.search_option{
    display: flex;
    align-items: center;
    height: 68px;
}
.filter_sorting {
    position: relative;
}
.sorting_title {
    display: flex;
    align-items: center;
    cursor: pointer;
    font-size: 14px;
    letter-spacing: -.21px;
    font-weight: 600;
}
.sorting_list {
    overflow: hidden;
    position: absolute;
    top: 28px;
    right: 0;
    width: 278px;
    background-color: #fff;
    border: 1px solid #ebebeb;
    box-shadow: 0 4px 10px 0 rgb(0 0 0 / 10%);
    z-index: 10;
}
.sorting_title:after {
    content: "";
    margin-left: 2px;
    display: inline-flex;
    width: 24px;
    height: 24px;
    background: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGZpbGw9Im5vbmUiIHZpZXdCb3g9IjAgMCAyNCAyNCI+PHBhdGggZmlsbD0iIzIyMiIgZmlsbC1ydWxlPSJldmVub2RkIiBkPSJNNi40NyAxOS41M2wuNTMuNTMuNTMtLjUzIDQtNC0xLjA2LTEuMDYtMi43MiAyLjcyVjVoLTEuNXYxMi4xOWwtMi43Mi0yLjcyLTEuMDYgMS4wNiA0IDR6TTE3LjUzIDQuNDdMMTcgMy45NGwtLjUzLjUzLTQgNCAxLjA2IDEuMDYgMi43Mi0yLjcyVjE5aDEuNVY2LjgxbDIuNzIgMi43MiAxLjA2LTEuMDYtNC00eiIgY2xpcC1ydWxlPSJldmVub2RkIi8+PC9zdmc+) no-repeat;
}
/* search_result */
.search_result{
	display: block;
}
.search_result_list {
    margin: -20px -10px 0;
}
.search_result_list:after {
    content: "";
    display: block;
    clear: both;
}
.search_result_list .search_result_item {
	max-width : 770px;
	width: 22%;
    padding: 0 6.5px;
	position: relative;
    float: left;
    margin: 20px 0;
}
.item_inner {
    display: block;
}
.product {
    overflow: hidden;
    position: relative;
    padding-top: 100%;
    border-radius: 8px;
}
.product_img {
	display: felx;
    position: absolute;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%,-50%);
    -ms-transform: translate(-50%,-50%);
    transform: translate(-50%,-50%);
    width: 81.5%;
    height: auto;
}
.product_info {
    padding-top: 9px;
}
.title .brand {
    display: inline-block;
    vertical-align: top;
    line-height: 16px;
    font-size: 14px;
    letter-spacing: -.21px;
    font-weight: 700;
    color: #333;
}
.title .name, .title .translated_name {
    margin-top: 2px;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
}
.title .translated_name {
    line-height: 14px;
    font-size: 12px;
    letter-spacing: -.06px;
    color: rgba(34,34,34,.5);
}
.price {
    padding-top: 11px;
}

/* 관심&리뷰 */
.interest_figure {
    padding-top: 12px;
    margin: 0 -8px;
}
.interest_figure > span {
    display: inline-flex;
    -webkit-box-align: center;
    align-items: center;
    vertical-align: top;
    padding: 0 8px;
    height: 20px;
}
</style>
</head>
<body>
 <div class="content">
 	<div class="search_filter"></div>
	    <div class="search_content">
	        <div class="search_option">
	                <div class="filter_sorting">
	                    <button type="button" class="sorting_title">인기순</button>
	                    <ul class="sorting_list" style="display: none;">
	                        <li class="sorting_item item_on">
	                            <a href="#" class="sorting_link">
	                                <div class="sorting_desc">
	                                    <p class="main_desc">인기순</p>
	                                    <p class="sub_desc">많이 판매된 순서대로 정렬합니다.</p>
	                                </div>
	                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down-up" viewBox="0 0 16 16">
	                                    <path fill-rule="evenodd" d="M11.5 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L11 2.707V14.5a.5.5 0 0 0 .5.5zm-7-14a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L4 13.293V1.5a.5.5 0 0 1 .5-.5z"/>
	                                </svg>
	                            </a>
	                        </li>
	
	                        <li class="sorting_item">
	                            <a href="#" class="sorting_link">
	                                <div class="sorting_desc">
	                                    <p class="main_desc">즉시 구매가순</p>
	                                    <p class="sub_desc">즉시 구매가가 낮은 순서대로 정렬합니다.</p>
	                                </div>
	                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down-up" viewBox="0 0 16 16">
	                                    <path fill-rule="evenodd" d="M11.5 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L11 2.707V14.5a.5.5 0 0 0 .5.5zm-7-14a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L4 13.293V1.5a.5.5 0 0 1 .5-.5z"/>
	                                </svg>
	                            </a>
	                        </li>
	                        
	                        <li class="sorting_item">
	                            <a href="#" class="sorting_link">
	                                <div class="sorting_desc">
	                                    <p class="main_desc">즉시 판매가순</p>
	                                    <p class="sub_desc">즉시 판매가가 높은 순서대로 정렬합니다.</p>
	                                </div>
	                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down-up" viewBox="0 0 16 16">
	                                    <path fill-rule="evenodd" d="M11.5 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L11 2.707V14.5a.5.5 0 0 0 .5.5zm-7-14a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L4 13.293V1.5a.5.5 0 0 1 .5-.5z"/>
	                                </svg>
	                            </a>
	                        </li>
	                    </ul>
	                </div>
	
		        <div>
		            <div><div class="filter_tag" style="display: none;"></div></div>
		        </div>
	        </div><!-- searchOption -->
   
    <div class="search_result lg">

        <div class="search_result_list">

            <div class="search_result_item">
                <a href="#" class="item_inner">
                    <div class="product" style="background-color: rgb(235, 240, 245);">
                            <img
                                data-v-dddd5b16=""
                                alt="나이키 덩크 로우 레트로 블랙"
                                src="https://kream-phinf.pstatic.net/MjAyMTA3MjhfMjIg/MDAxNjI3NDQxMDA1NjE5.HOgIYywGZaaBJDqUzx2OnX9HAxoOWPvuWHqUn_LZGcgg.VYIuOfA5_GgjBGRowv6dmQuAOPtUvmAxbGpOyUCOCtYg.PNG/p_9d8ed1a74d2540ab9842e63363607bf4.png?type=m"
                                class="product_img"
                            />
                    </div>
                    <div class="product_info">
                        <div class="title">
                            <p class="brand">Nike</p>
                            <p class="name">Nike Dunk Low Retro Black</p>
                            <p class="translated_name">나이키 덩크 로우 레트로 블랙</p>
                        </div>
                        <div class="price">
                            <div class="amount">174,000원</div>
                            <div class="desc"><p>즉시 구매가</p></div>
                        </div>
                    </div>
                </a>
                <div class="interest_figure">
                    <span class="wish_figure">
                        <div class="cd2_btn_wish" >
                            <img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
                        </div>
                        <span class="text">10.2만</span>
                    </span>
                    <span class="review_figure">
                        <a data-v-1c683be8="" href="/social/products/28029" class="review_link" aria-label="나이키 덩크 로우 레트로 블랙 리뷰">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-postcard" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H2ZM1 4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V4Zm7.5.5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7ZM2 5.5a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5ZM10.5 5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3ZM13 8h-2V6h2v2Z"/>
                            </svg>
                        </a>
                        <span class="text">1.1만</span>
                    </span>
                </div>
            </div>
            
            <div class="search_result_item">
                <a href="#" class="item_inner">
                    <div class="product" style="background-color: rgb(235, 240, 245);">
                            <img
                                data-v-dddd5b16=""
                                alt="나이키 덩크 로우 레트로 블랙"
                                src="https://kream-phinf.pstatic.net/MjAyMTA3MjhfMjIg/MDAxNjI3NDQxMDA1NjE5.HOgIYywGZaaBJDqUzx2OnX9HAxoOWPvuWHqUn_LZGcgg.VYIuOfA5_GgjBGRowv6dmQuAOPtUvmAxbGpOyUCOCtYg.PNG/p_9d8ed1a74d2540ab9842e63363607bf4.png?type=m"
                                class="product_img"
                            />
                    </div>
                    <div class="product_info">
                        <div class="title">
                            <p class="brand">Nike</p>
                            <p class="name">Nike Dunk Low Retro Black</p>
                            <p class="translated_name">나이키 덩크 로우 레트로 블랙</p>
                        </div>
                        <div class="price">
                            <div class="amount">174,000원</div>
                            <div class="desc"><p>즉시 구매가</p></div>
                        </div>
                    </div>
                </a>
                <div class="interest_figure">
                    <span class="wish_figure">
                        <div class="cd2_btn_wish" >
                            <img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
                        </div>
                        <span class="text">10.2만</span>
                    </span>
                    <span class="review_figure">
                        <a data-v-1c683be8="" href="/social/products/28029" class="review_link" aria-label="나이키 덩크 로우 레트로 블랙 리뷰">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-postcard" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H2ZM1 4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V4Zm7.5.5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7ZM2 5.5a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5ZM10.5 5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3ZM13 8h-2V6h2v2Z"/>
                            </svg>
                        </a>
                        <span class="text">1.1만</span>
                    </span>
                </div>
            </div>
            
            <div class="search_result_item">
                <a href="#" class="item_inner">
                    <div class="product" style="background-color: rgb(235, 240, 245);">
                            <img
                                data-v-dddd5b16=""
                                alt="나이키 덩크 로우 레트로 블랙"
                                src="https://kream-phinf.pstatic.net/MjAyMTA3MjhfMjIg/MDAxNjI3NDQxMDA1NjE5.HOgIYywGZaaBJDqUzx2OnX9HAxoOWPvuWHqUn_LZGcgg.VYIuOfA5_GgjBGRowv6dmQuAOPtUvmAxbGpOyUCOCtYg.PNG/p_9d8ed1a74d2540ab9842e63363607bf4.png?type=m"
                                class="product_img"
                            />
                    </div>
                    <div class="product_info">
                        <div class="title">
                            <p class="brand">Nike</p>
                            <p class="name">Nike Dunk Low Retro Black</p>
                            <p class="translated_name">나이키 덩크 로우 레트로 블랙</p>
                        </div>
                        <div class="price">
                            <div class="amount">174,000원</div>
                            <div class="desc"><p>즉시 구매가</p></div>
                        </div>
                    </div>
                </a>
                <div class="interest_figure">
                    <span class="wish_figure">
                        <div class="cd2_btn_wish" >
                            <img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
                        </div>
                        <span class="text">10.2만</span>
                    </span>
                    <span class="review_figure">
                        <a data-v-1c683be8="" href="/social/products/28029" class="review_link" aria-label="나이키 덩크 로우 레트로 블랙 리뷰">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-postcard" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H2ZM1 4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V4Zm7.5.5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7ZM2 5.5a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5ZM10.5 5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3ZM13 8h-2V6h2v2Z"/>
                            </svg>
                        </a>
                        <span class="text">1.1만</span>
                    </span>
                </div>
            </div>
            
            <div class="search_result_item">
                <a href="#" class="item_inner">
                    <div class="product" style="background-color: rgb(235, 240, 245);">
                            <img
                                data-v-dddd5b16=""
                                alt="나이키 덩크 로우 레트로 블랙"
                                src="https://kream-phinf.pstatic.net/MjAyMTA3MjhfMjIg/MDAxNjI3NDQxMDA1NjE5.HOgIYywGZaaBJDqUzx2OnX9HAxoOWPvuWHqUn_LZGcgg.VYIuOfA5_GgjBGRowv6dmQuAOPtUvmAxbGpOyUCOCtYg.PNG/p_9d8ed1a74d2540ab9842e63363607bf4.png?type=m"
                                class="product_img"
                            />
                    </div>
                    <div class="product_info">
                        <div class="title">
                            <p class="brand">Nike</p>
                            <p class="name">Nike Dunk Low Retro Black</p>
                            <p class="translated_name">나이키 덩크 로우 레트로 블랙</p>
                        </div>
                        <div class="price">
                            <div class="amount">174,000원</div>
                            <div class="desc"><p>즉시 구매가</p></div>
                        </div>
                    </div>
                </a>
                <div class="interest_figure">
                    <span class="wish_figure">
                        <div class="cd2_btn_wish" >
                            <img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
                        </div>
                        <span class="text">10.2만</span>
                    </span>
                    <span class="review_figure">
                        <a data-v-1c683be8="" href="/social/products/28029" class="review_link" aria-label="나이키 덩크 로우 레트로 블랙 리뷰">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-postcard" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H2ZM1 4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V4Zm7.5.5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7ZM2 5.5a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5ZM10.5 5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3ZM13 8h-2V6h2v2Z"/>
                            </svg>
                        </a>
                        <span class="text">1.1만</span>
                    </span>
                </div>
            </div>
            
            <div class="search_result_item">
                <a href="#" class="item_inner">
                    <div class="product" style="background-color: rgb(235, 240, 245);">
                            <img
                                data-v-dddd5b16=""
                                alt="나이키 덩크 로우 레트로 블랙"
                                src="https://kream-phinf.pstatic.net/MjAyMTA3MjhfMjIg/MDAxNjI3NDQxMDA1NjE5.HOgIYywGZaaBJDqUzx2OnX9HAxoOWPvuWHqUn_LZGcgg.VYIuOfA5_GgjBGRowv6dmQuAOPtUvmAxbGpOyUCOCtYg.PNG/p_9d8ed1a74d2540ab9842e63363607bf4.png?type=m"
                                class="product_img"
                            />
                    </div>
                    <div class="product_info">
                        <div class="title">
                            <p class="brand">Nike</p>
                            <p class="name">Nike Dunk Low Retro Black</p>
                            <p class="translated_name">나이키 덩크 로우 레트로 블랙</p>
                        </div>
                        <div class="price">
                            <div class="amount">174,000원</div>
                            <div class="desc"><p>즉시 구매가</p></div>
                        </div>
                    </div>
                </a>
                <div class="interest_figure">
                    <span class="wish_figure">
                        <div class="cd2_btn_wish" >
                            <img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
                        </div>
                        <span class="text">10.2만</span>
                    </span>
                    <span class="review_figure">
                        <a data-v-1c683be8="" href="/social/products/28029" class="review_link" aria-label="나이키 덩크 로우 레트로 블랙 리뷰">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-postcard" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H2ZM1 4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V4Zm7.5.5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7ZM2 5.5a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5ZM10.5 5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3ZM13 8h-2V6h2v2Z"/>
                            </svg>
                        </a>
                        <span class="text">1.1만</span>
                    </span>
                </div>
            </div>
            
            <div class="search_result_item">
                <a href="#" class="item_inner">
                    <div class="product" style="background-color: rgb(235, 240, 245);">
                            <img
                                data-v-dddd5b16=""
                                alt="나이키 덩크 로우 레트로 블랙"
                                src="https://kream-phinf.pstatic.net/MjAyMTA3MjhfMjIg/MDAxNjI3NDQxMDA1NjE5.HOgIYywGZaaBJDqUzx2OnX9HAxoOWPvuWHqUn_LZGcgg.VYIuOfA5_GgjBGRowv6dmQuAOPtUvmAxbGpOyUCOCtYg.PNG/p_9d8ed1a74d2540ab9842e63363607bf4.png?type=m"
                                class="product_img"
                            />
                    </div>
                    <div class="product_info">
                        <div class="title">
                            <p class="brand">Nike</p>
                            <p class="name">Nike Dunk Low Retro Black</p>
                            <p class="translated_name">나이키 덩크 로우 레트로 블랙</p>
                        </div>
                        <div class="price">
                            <div class="amount">174,000원</div>
                            <div class="desc"><p>즉시 구매가</p></div>
                        </div>
                    </div>
                </a>
                <div class="interest_figure">
                    <span class="wish_figure">
                        <div class="cd2_btn_wish" >
                            <img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
                        </div>
                        <span class="text">10.2만</span>
                    </span>
                    <span class="review_figure">
                        <a data-v-1c683be8="" href="/social/products/28029" class="review_link" aria-label="나이키 덩크 로우 레트로 블랙 리뷰">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-postcard" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H2ZM1 4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V4Zm7.5.5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7ZM2 5.5a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5ZM10.5 5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3ZM13 8h-2V6h2v2Z"/>
                            </svg>
                        </a>
                        <span class="text">1.1만</span>
                    </span>
                </div>
            </div>

        </div> <!-- search_result_list -->
    </div> <!-- search_result -->
</div>


    <div class="list_loading" style="display: none;">
        <img src="/_nuxt/img/loading.410eb77.gif" alt="리스트 로딩중입니다." class="loading_img" />
    </div>
</div>    
<script type="text/javascript">

</script>
</body>
</html>
 