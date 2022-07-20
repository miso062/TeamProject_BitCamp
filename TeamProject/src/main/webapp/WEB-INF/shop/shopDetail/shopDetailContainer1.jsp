<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<style type="text/css">
*, :after, :before {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    -webkit-tap-highlight-color: transparent;
}
div {
    display: block;
}
li, ol, ul {
    list-style: none;
}
.c1_wrap {
    position: relative;
    padding-top: 100px;
    overflow-anchor: none;
}
.c1_content {
    overflow: hidden;
    margin: 0 auto;
    padding: 30px 40px 120px;
    max-width: 1280px;
}
.c1_blind, .c1_u_skip {
    overflow: hidden!important;
    position: absolute!important;
    clip: rect(0,0,0,0)!important;
    width: 1px!important;
    height: 1px!important;
    margin: -1px!important;
}
.c1_column_bind {
    position: relative;
}
.c1_column_bind .c1_column_box1 {
	margin-left: 70px;
    width: 84%;
}
.c1_is_fixed .c1_column_box1 {
    width: 24.7%;
    position: fixed;
    top: 130px;
}
.c1_is_absolute .c1_column_box1 {
    position: absolute;
    width: 39.2%;
    bottom: 0;
    top: 1550px;
}
.c1_column {
    width: 50%;
}
.c1_column:first-child {
    float: left;
    padding-right: 3.334%;
}
.c1_column:nth-child(2):before {
    content: "";
    display: block;
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    border-left: 1px solid #ebebeb;
}
.c1_column:nth-child(2) {
    position: relative;
    float: right;
    padding-left: 3.334%;
}
.c1_banner_slide {
    overflow: hidden;
    position: relative;
}
.c1_product {
    overflow: hidden;
    position: relative;
    padding-top: 100%;
    border-radius: 12px;
}
.c1_image{
	position: absolute;
    top: 0%;
    object-fit: cover;
    width: 100%;
    height: 100%;
    image-rendering: -webkit-optimize-contrast;
}
/* 위에뜨는거 */
.c1_floating_price {
    position: fixed;
    left: 0;
    right: 0;
    padding: 10px 40px 15px;
    background-color: #fff;
    -webkit-box-shadow: 4px 0 10px 0 rgb(0 0 0 / 10%);
    box-shadow: 4px 0 10px 0 rgb(0 0 0 / 10%);
    z-index: 1;
}
.c1_floating_price .c1_inner_box, .c1_floating_price .c1_product_area {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
}
.c1_floating_price .c1_inner_box {
    -webkit-box-pack: justify;
    justify-content: space-between;
}
.c1_floating_price .c1_product_area {
    padding-right: 40px;
}
.c1_floating_price .c1_product_thumb {
    overflow: hidden;
    -webkit-box-flex: 0;
    flex: none;
    margin-right: 12px;
    width: 64px;
    height: 64px;
    border-radius: 12px;
    position: relative;
}
.is_open {
    display: block;
}
.c1_floating_price{
    display: none;
    top: 80px;
}
.c1_floating_price .c1_product_info{
    -webkit-box-flex: 1;
    flex: 1;
}
.c1_floating_price .c1_btn_area {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    width: 560px;
    height: 50px;
}
.c1_floating_price .c1_btn_area .c1_btn_wish {
    width: 180px;
    min-width: 160px;
}
.c1_floating_price .c1_btn_area .c1_btn_wish {
    -webkit-box-flex: 0;
    flex: none;
    height: inherit;
    line-height: 48px;
    margin-right: 10px;
    border-radius: 10px;
   	margin-top: 0;
}
.c1_btn_wish {
    width: 20px;
    height: 20px;
}
.c1_floating_price .c1_btn_area .c1_division_btn_box {
    -webkit-box-flex: 1;
    flex: 1;
    width: 100%;
    height: inherit;
    margin-top: 0;
}
.c1_floating_price .c1_btn_area .c1_division_btn_box .c1_title {
    width: 44px;
    font-size: 15px;
    letter-spacing: -.15px;
}
.c1_floating_price .c1_product_info .c1_name, .c1_floating_price .c1_product_info .c1_translated_name {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.c1_floating_price .c1_product_info .c1_translated_name {
    line-height: 14px;
    margin-top: 4px;
    font-size: 12px;
    letter-spacing: -.06px;
    color: rgba(34,34,34,.5);
}
.c1_floating_price .c1_product_info .c1_name {
    line-height: 18px;
    font-size: 15px;
}
.c1_product_img {
	position: absolute;
    top: 0%;
    object-fit: cover;
    width: 100%;
    height: 100%;
    top: 40%;
    left: 50%;
    image-rendering: -webkit-optimize-contrast;

	display: flex;
    transform: translate(-50%,-50%);
    height: auto;
}
/* detail */
.c1_detail_main_title {
    position: relative;
}
.c1_detail_main_title .c1_sub_title {
    line-height: 17px;
    font-size: 14px;
    letter-spacing: -.21px;
    letter-spacing: -.15px;
    color: rgba(34,34,34,.5);
}
.c1_detail_main_title .c1_brand {
    display: inline-block;
    vertical-align: top;
    line-height: 19px;
    padding-top: 1px;
    margin-bottom: 9px;
    font-size: 18px;
    letter-spacing: -.27px;
    font-weight: 800;
    border-bottom: 2px solid #222;
}
.c1_detail_main_title .c1_title {
    margin-bottom: 4px;
    font-size: 18px;
    letter-spacing: -.09px;
    font-weight: 400;
}
.c1_detail_price {
    padding-top: 19px;
    padding-bottom: 12px;
    border-bottom: 1px solid #ebebeb;
}
.c1_detail_price .c1_title {
    float: left;
}
.c1_detail_price .c1_size {
    float: right;
}
.c1_btn_size {
    font-size: 16px;
    line-height: 24px;
    letter-spacing: -.21px;
    font-weight: 700;
}
.c1_btn_text {
    vertical-align: top;
    display: inline-block;
    margin-right: 5px;
}
.c1_down_arrow{
	margin-top: 3px;
	width: 15px;
	height: 15px;
	vertical-align: top;
	overflow: hidden;
}
..c1_detail_price:after {
    content: "";
    display: block;
    clear: both;
}
.c1_title_txt {
    padding-top: 5px;
    display: inline-block;
    font-size: 13px;
    letter-spacing: -.07px;
    color: rgba(34,34,34,.8);
}
.c1_price {
    float: right;
    padding-top: 2px;
    text-align: right;
}
.c1_amount {
    font-weight: 700;
}
.c1_num {
    font-size: 20px;
    letter-spacing: -.1px;
}
.c1_num, .c1_won {
    display: inline-block;
    line-height: 26px;
    vertical-align: top;
}
.c1_won {
    font-size: 18px;
    letter-spacing: -.27px;
}
.c1_fluctuation {
    position: relative;
    padding-top: 1px;
    padding-left: 17px;
    font-size: 13px;
}
.c1_detail_price:after {
    content: "";
    display: block;
    clear: both;
}
.c1_division_btn_box .c1_btn_division:before {
    content: "";
    position: absolute;
    top: 0;
    bottom: 0;
    left: 55px;
    width: 1px;
    background-color: rgba(34,34,34,.1);
}
.c1_division_btn_box {
    margin-top: 17px;
    display: flex;
    height: 60px;
}
.c1_division_btn_box .c1_btn_division {
    position: relative;
    display: inline-flex;
    -webkit-box-flex: 1;
    flex: 1;
    -webkit-box-align: center;
    align-items: center;
    border-radius: 10px;
    color: #fff;
}
.c1_division_btn_box .c1_buy {
    background-color: #ef6253;
}
.c1_division_btn_box .c1_title {
    width: 55px;
    text-align: center;
    font-size: 18px;
    letter-spacing: -.27px;
    margin-left: 4px
}
.c1_division_btn_box .c1_price {
    margin-left: 10px;
    line-height: 15px;
}
.c1_division_btn_box .c1_price {
    margin-left: 10px;
    line-height: 15px;
}
.c1_division_btn_box .c1_amount {
    display: block;
    font-size: 0;
}
.c1_division_btn_box .c1_num, .c1_division_btn_box .c1_won {
    display: inline-block;
    vertical-align: top;
    font-weight: 700;
}
.c1_division_btn_box .c1_num {
    font-size: 15px;
}
.c1_division_btn_box .c1_desc {
    display: block;
    font-size: 11px;
    font-weight: 600;
    color: hsla(0,0%,100%,.8);
}
.c1_division_btn_box .c1_sell {
    background-color: #41b979;
    margin-left: 10px;
}
.c1_division_btn_box .c1_buy {
    margin-right: 10px;
}
.c1_bookmark{
	margin-right: 3px;
}
.c1_full{
    height: 60px;
    line-height: 58px;
}
.c1_btn_wish {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    border: 1px solid #ebebeb;
    border-radius: 10px;
    color: #333;
    margin-top: 12px;
}
.c1_outlinegrey{
    border: 1px solid #d3d3d3;
    color: rgba(34,34,34,.8);
}
.c1_large {
    padding: 0 25px;
    font-size: 16px;
    letter-spacing: -.16px;
}
.c1_full {
    width: 100%;
    font-weight: 700;
}
.c1_medium {
    font-weight: 400;
   	padding: 0 18px;
    height: 42px;
    line-height: 40px;
    border-radius: 12px;
    font-size: 14px;
    letter-spacing: -.14px;
}
.c1_tab_area .c1_btn{
    display: inline-block;
    cursor: pointer;
    vertical-align: middle;
    text-align: center;
    color: rgba(34,34,34,.8);
    background-color: #fff;
}
.c1_btn_wish [class*=ico-]~.c1_wish_count_num {
    margin-left: 4px;
}
.c1_btn_wish .c1_btn_text {
    font-size: 15px;
    letter-spacing: -.15px;
    font-weight: 400;
    letter-spacing: normal;
}
.c1_btn_wish .c1_wish_count_num {
    font-size: 15px;
    font-weight: 600;
    letter-spacing: normal;
}
.c1_product_info_wrap .c1_info_title{
    color: rgb(7 7 7 / 88%);
}
.c1_info_title {
    padding-bottom: 13px;
}
.c1_detail_title {
    line-height: 22px;
    padding: 39px 0 20px;
    font-size: 18px;
    letter-spacing: -.15px;
}
.detail_product_wrap {
    border: 1px solid #ebebeb;
    border-width: 1px 0;
}
.detail_product_wrap .detail_product {
    display: flex;
    min-height: 20px;
    padding-top: 20px;
    padding-bottom: 20px;
}
.detail_product_wrap .detail_box:first-child {
    padding-left: 0;
    border-left: none;
}
.detail_product_wrap .detail_box {
    -webkit-box-flex: 1;
    flex: 1;
    padding: 0 12px;
}
.detail_product_wrap .c1_product_title {
    line-height: 14px;
    font-size: 12px;
    letter-spacing: -.33px;
    color: rgba(34,34,34,.5);
}
.detail_product_wrap .model_num .c1_product_info {
    font-weight: 600;
}
.detail_product_wrap .c1_product_info {
    margin-top: 4px;
    word-break: break-word;
    line-height: 17px;
    font-size: 14px;
}
.detail_product_wrap .detail_box {
    border-left: 1px solid #ebebeb;
}
/* 배송정보 */
.c1_delivery_way_wrap .c1_detail_title {
    line-height: 17px;
    padding-bottom: 0;
    font-size: 14px;
    letter-spacing: -.21px;
    font-weight: 400;
    color: rgba(34,34,34,.8);
}
.c1_delivery_way_wrap .c1_delivery_way {
    padding-top: 19px;
    padding-bottom: 10px;
    position: relative;
}
.c1_way_info {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    width: 100%;
}
.c1_way_status_thumb {
    width: 40px;
    height: 40px;
}
.c1_way_img {
    width: 40px;
    height: 40px;
    
    border: 0;
    vertical-align: top;
}
.c1_way_desc {
	margin-left: 18px;
    -webkit-box-flex: 1;
    flex: 1;
}
.c1_company {
    line-height: 17px;
    margin: 0 auto;
}
.c1_company .c1_badge_title {
    font-weight: 600;
}
.c1_company .c1_badge_title, .c1_company {
    font-size: 14px;
    letter-spacing: -.21px;
}
.c1_sub_text {
    line-height: 16px;
    margin-top: 3px;
    font-size: 14px;
    color: rgba(34,34,34,.5);
}
/* 광고 배너 */
.c1_banner_box {
    position: relative;
    padding-top: 20px;
}
.c1_detail_slide {
	position: realtive;
}
.c1_detail_slide .c1_slick-list {
    height: 80px;
    display: block;
}
.c1_detail_slide .c1_slick-slide {
    float: left;
}
.c1_slick-active{
	outline: none;
    width: 430px;
    position: relative;
    left: 0px;
    opacity: 1;
    transition: opacity 600ms ease 0s, visibility 600ms ease 0s;
}
.c1_detail_banner {
    position: relative;
    vertical-align: top;
}
.c1_banner_link {
    display: flex;
    -webkit-box-pack: center;
    justify-content: center;
    height: 80px;
    background-color: rgb(239, 68, 25);
}
.c1_banner_link img {
    height: 100%;
    vertical-align: top;
}
/* 시세 */
.c1_product_sales_graph {
    position: relative;
}
.c1_product_sales_graph .c1_title {
    display: flex;
}
.c1_detail_title {
    line-height: 22px;
    padding: 39px 0 20px;
    font-size: 18px;
    letter-spacing: -.15px;
}
.c1_product_sales_graph .c1_title .c1_sales_filter {
    position: relative;
    margin-left: auto;
    padding: 40px 0 20px;
    font-size: 0;
}
.c1_product_sales_graph .c1_title .c1_sales_filter .c1_filter_unit {
    position: relative;
    display: inline-block;
    vertical-align: top;
}
.c1_product_sales_graph .c1_title .c1_btn_select {
    font-size: 13px;
    letter-spacing: -.07px;
    color: rgba(34,34,34,.8);
}
.c1_product_sales_graph .c1_title .c1_btn_select .c1_select_text {
    position: relative;
    display: inline-block;
    vertical-align: top;
    line-height: 24px;
}
.c1_product_sales_graph .c1_title .c1_btn_select .c1_select_text:after {
    content: "";
    display: inline-block;
    vertical-align: top;
    width: 24px;
    height: 24px;
    background-size: 24px 24px;
}
.c1_wrap_sales, .c1_tab_area{
    position: relative;
}
.c1_tab_area .c1_tab_list {
    display: flex;
    border-radius: 10px;
    background-color: #f4f4f4;
}
.c1_tab_area .c1_item_tab, .c1_tab_area .item{
    -webkit-box-flex: 1;
    flex: 1;
    margin: 2px;
}
.c1_tab_area .c1_item_link {
    display: block;
    line-height: 16px;
    padding: 7px 0 9px;
    font-size: 13px;
    letter-spacing: -.05px;
    text-align: center;
    border-radius: 8px;
    background-color: #f4f4f4;
    color: rgba(34,34,34,.8);
}
.c1_tab_area .on .c1_item_link {
    background-color: #fff;
    color: #222;
    font-weight: 700;
    -webkit-box-shadow: 0 0 0 0.5px #ebebeb inset;
    box-shadow: inset 0 0 0 0.5px #ebebeb;
}
.c1_wrap_bids, .c1_wrap_sales {
    position: relative;
}
.c1_show {
    display: block;
    height: auto;
}
.c1_tab_content {
    overflow: hidden;
}
table {
    table-layout: fixed;
    width: 100%;
    border-spacing: 0;
    border: 0;
    border-collapse: collapse;
}
.c1_table_wrap {
    padding: 21px 0 20px;
}
caption {
    display: table-caption;
    text-align: -webkit-center;
}
col {
    display: table-column;
}
thead {
    display: table-header-group;
    vertical-align: middle;
    border-color: inherit;
}
tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}
.table_th {
    line-height: 14px;
    padding-bottom: 9px;
    border-bottom: 1px solid #ebebeb;
    font-size: 12px;
    letter-spacing: -.06px;
    color: rgba(34,34,34,.5);
    font-weight: 400;
    text-align: left;
}
.table_td {
    line-height: 17px;
    padding-top: 9px;
    font-size: 14px;
}
.table_td:nth-child(2) {
    position: relative;
}
.align_right {
    text-align: right;
}

.c1_tab_content {
    overflow: hidden;
    display: none;
}
.c1_graph{
    height: 200px;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
}
/* 구매확인박스 */
.c1_confirm_wrap {
    padding-top: 39px;
}
.c1_confirm_wrap .c1_confirm_title {
    line-height: 22px;
    padding-bottom: 12px;
    font-size: 18px;
    letter-spacing: -.27px;
}
.c1_confirm_wrap .c1_confirm_content {
    border-top: 1px solid #ebebeb;
}
.c1_dropdown_head {
    padding: 18px 0 17px;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    border-bottom: 1px solid #ebebeb;
    cursor: pointer;
}
.c1_dropdown_head .c1_title {
    max-width: 320px;
    font-size: 15px;
    letter-spacing: -.15px;
}
.open .c1_dropdown_head {
    border-bottom: 1px solid #222;
}
.open .c1_dropdown_content{
	display: block;
}
.open .c1_title{
	font-weight: 700;
}
.c1_dropdown_content {
    display: none;
    padding: 20px 0;
    border-bottom: 1px solid #ebebeb;
}
.c1_dropdown_content .c1_content_in {
    font-size: 13px;
    letter-spacing: -.07px;
    color: rgba(34,34,34,.8);
}
[class*=ico-arr-] {
    margin-left: auto;
    flex-shrink: 0;
    width: 24px;
    height: 24px;
}
.c1_point_guide {
    padding-top: 40px;
}
.c1_guide_list .c1_guide_item .c1_thumb_area {
    float: left;
    width: 40px;
    margin-right: 14px;
}
.c1_guide_list .c1_guide_item .c1_thumb_area .c1_img {
    width: 100%;
    vertical-align: top;
}
.c1_guide_list .c1_guide_item .c1_text_area {
    overflow: hidden;
}
.c1_guide_list .c1_guide_item .c1_text_area .c1_title {
    display: block;
    line-height: 20px;
    font-size: 13px;
    font-weight: 600;
    letter-spacing: normal;
}
.c1_guide_list .c1_guide_item .c1_text_area .c1_desc {
    margin-top: 2px;
    margin-bottom: 7px;
    line-height: 16px;
    font-size: 13px;
    letter-spacing: normal;
    color: rgba(34,34,34,.5);
}
.c1_meditaion_notice_product, .c1_point_guide {
    padding-top: 40px;
}
.c1_meditaion_notice_product {
    margin-top: 20px;
    line-height: 16px;
    border-top: 1px solid #f0f0f0;
    font-size: 12px;
    letter-spacing: -.05px;
    color: rgba(34,34,34,.5);
}
.c1_confirm_wrap_box{
	margin: 10px;
    padding: 10px;
}
</style>
</head>
<body>
<input type="hidden" name="product_id" id="product_id" value="${product_id }">
<div class="c1_container detail">
    <div class="c1_content">
        <h2 class="c1_blind">상품 상세</h2>
        <div class="c1_column_bind">
            <div class="c1_column">
                <div class="c1_column_box1">
                    <div class="c1_detail_banner_area">
                                       
                          <div class="c1_item_inner">
                              <div class="c1_product" style="background-color: rgb(235, 240, 245);">
                                      <img alt="상품 이미지"
                                          src=""
                                          class="c1_image"/>
                              </div>
                          </div>
                                     

                    </div>
                </div>
            </div>
            
            <div class="c1_column">
                <div class="c1_column_box">
                    <div class="c1_column_top">
                        <div class="c1_detail_main_title lg">
                            <div class="c1_main_title_box">
                               <a href="https://naver.com" class="c1_brand"><span class="c1_getbrand"></span></a>
                                <p class="c1_title" id="eng_name"></p>
                                <p class="c1_sub_title" id="kor_name"></p>
                            </div>
                        </div>
                        
                        <div class="c1_product_figure_wrap lg">
                            <div class="c1_detail_price">
                                <div class="c1_title"><span class="c1_title_txt">최근 거래가</span></div>
                                <div class="c1_price">
                                    <div class="c1_amount"><span class="c1_num" id="signingdateprice"></span><span class="c1_won">원</span></div>
                                    <div class="c1_fluctuation decrease"><p data-v-5943a237="">5,000원 (-3.6%)</p></div>
                                </div>
                            </div>
                        </div>
                        <div class="c1_btn_wrap">
                            <div class="c1_division_btn_box">
                                <a href="#" class="c1_btn_division c1_buy">
                                    <strong class="c1_title">구매</strong>
                                    <div class="c1_price">
                                        <span class="c1_amount"><em class="c1_num" id="buyprice"></em><span class="c1_won">원</span></span><span class="c1_desc">즉시 구매가</span>
                                    </div>
                                </a>
                                <a href="#" class="c1_btn_division c1_sell">
                                    <strong class="c1_title">판매</strong>
                                    <div class="c1_price">
                                        <span class="c1_amount"><em class="c1_num" id="sellprice"></em><span class="c1_won">원</span></span><span class="c1_desc">즉시 판매가</span>
                                    </div>
                                </a>
                            </div>
                            <a href="#" class="c1_btn c1_full c1_outlinegrey c1_btn_wish c1_large" aria-label="관심상품">
                            <img alt="" src="/TeamProject/img/shopDetail/bookmark.svg" class="c1_bookmark ico-wish-off">
                                <span class="c1_btn_text">관심상품</span><span class="c1_wish_count_num" id="likepro"></span>
                            </a>
                        </div>
                    </div>
                    <div class="c1_product_info_wrap">
                        <h3 class="c1_detail_title c1_info_title lg">상품 정보</h3>
                        <div class="detail_product_wrap">
                            <dl class="detail_product">
                                <div class="detail_box model_num">
                                    <dt class="c1_product_title">모델번호</dt>
                                    <dd class="c1_product_info" id="c1_product_info_modelnum"></dd>
                                </div>
                                <div class="detail_box">
                                    <dt class="c1_product_title">출시일</dt>
                                    <dd class="c1_product_info" id="c1_product_info_reldate"></dd>
                                </div>
                                <div class="detail_box">
                                    <dt class="c1_product_title">컬러</dt>
                                    <dd class="c1_product_info" id="c1_product_info_color"></dd>
                                </div>
                                <div class="detail_box">
                                    <dt class="c1_product_title">발매가</dt>
                                    <dd class="c1_product_info" id="c1_product_info_release_price"></dd>
                                </div>
                            </dl>
                        </div>
                    </div>
                    <div class="c1_delivery_way_wrap">
                        <h3 class="c1_detail_title lg">배송 정보</h3>
                        <div class="c1_delivery_way">
                            <div class="c1_way_info">
                                <div class="c1_way_status_thumb">
                                    <img
                                        data-v-12ba7144=""
                                        src="https://kream-phinf.pstatic.net/MjAyMTExMjlfMTQ4/MDAxNjM4MTc4MjI5NTk3.2phJLPtRvFqViNfhZu06HzNRiUBlT4cmZR4_Ukqsyesg.ikrfWOrL7WXCVO0Rqy5kMvOn3B2YpjLUj6RuJqosPX0g.PNG/a_8b54cbca40e945f4abf1ee24bdd031f7.png"
                                        alt="3,000원"
                                        class="c1_way_img"
                                    />
                                </div>
                                <div class="c1_way_desc">
                                    <p class="c1_company">
                                        <span class="c1_badge_title">일반배송 </span><span class="title">3,000원</span>
                                        <!---->
                                    </p>
                                    <p class="c1_sub_text">검수 후 배송 ・ 5-7일 내 도착 예정</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="c1_banner_box">
                        <div class="c1_banner_slide c1_detail_slide">
                            <div class="c1_slick-list">
                                <div class="c1_slick-track" style="width: 560px; opacity: 1;">
                                    <div
                                        tabindex="-1"
                                        data-index="0"
                                        aria-hidden="false"
                                        class="c1_slick-slide c1_slick-active"
                                        style="outline: none; width: 560px; position: relative; left: 0px; opacity: 1; transition: opacity 600ms ease 0s, visibility 600ms ease 0s;"
                                    >
                                        <div>
                                            <div tabindex="-1" class="c1_detail_banner" style="width: 100%; display: inline-block;">
                                                <a href="https://kream.co.kr/promotions/272" class="c1_banner_link" style="background-color: rgb(239, 68, 25);">
                                                    <img
                                                        alt="배너"
                                                        src="https://kream-phinf.pstatic.net/MjAyMjA2MjlfMTIw/MDAxNjU2NDkzNDY2NDM1.VWp3oO6-D0c3CkRqXXlQF2q2uj51z6Ww-_cM5dwzLUsg.FMawZ4eiJYo6DEEa9cSogFlKmUB_Nlnd3BCIcY9IipEg.JPEG/a_0d8cb287f49d44429760a25cd8653a2e.jpg"
                                                    />
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="c1_detail_wrap">
                        <div class="c1_product_sales_graph">
                        
                            <div class="c1_title">
                                <h3 class="c1_detail_title lg">시세</h3>
                                    <div class="c1_sales_filter lg">
                                    <div class="c1_filter_unit">
                                        <button type="button" class="c1_btn c1_btn_select" slot="button"><span class="c1_select_text layer_open">모든 사이즈</span></button>
                                    </div>
                                </div>
                            </div>
                           
                            <div class="c1_wrap_sales">
                                <div class="c1_tab_area">
                                    <ul role="tablist" class="c1_tab_list">
                                        <li role="tab" aria-selected="true" aria-controls="c1_sales_panel" class="item on"><a href="#" class="c1_item_link">전체</a></li>
                                    </ul>

                                    <div id="c1_sales_panel" role="tabpanel" class="c1_show" span="all" >
                                        <div class="c1_graph">
                                            <canvas id="shoeChart" width="560" height="200" style="display: block; box-sizing: border-box; height: 200px; width: 560px;"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="c1_wrap_bids">
                                <div class="c1_tab_area">
                                    <ul role="tablist" class="c1_tab_list">
                                        <li role="tab" aria-selected="true" aria-controls="panel1" class="c1_item_tab on"><a href="#" class="c1_item_link">체결 거래</a></li>
                                    </ul>
                                    
                                    <div id="panel1" role="tabpanel" class="c1_tab_content c1_show" span="sales" style="display:block;">
                                        <div class="c1_table_wrap lg" >
                                            <table>
                                                <caption>
                                                    <span class="c1_blind">데이터 테이블</span>
                                                </caption>
                                                <colgroup>
                                                    <col style="width: 29.76%;" />
                                                    <col style="width: 36.52%;" />
                                                    <col style="width: 33.72%;" />
                                                </colgroup>
                                                <thead>
                                                    <tr>
                                                        <th class="table_th">사이즈</th>
                                                        <th class="table_th align_right">거래가</th>
                                                        <th class="table_th align_right">거래일</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td class="table_td">290</td>
                                                        <td class="table_td align_right">133,000원</td>
                                                        <td class="table_td align_right">22/07/07</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="table_td">265</td>
                                                        <td class="table_td align_right">138,000원</td>
                                                        <td class="table_td align_right">22/07/07</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="table_td">275</td>
                                                        <td class="table_td align_right">133,000원</td>
                                                        <td class="table_td align_right">22/07/07</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="table_td">285</td>
                                                        <td class="table_td align_right">140,000원</td>
                                                        <td class="table_td align_right">22/07/07</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="table_td">280</td>
                                                        <td class="table_td align_right">138,000원</td>
                                                        <td class="table_td align_right">22/07/07</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <a href="#" class="c1_btn c1_outlinegrey c1_full c1_medium" > 체결 내역 더보기 </a>
                                    </div>
 
                                </div>
                            </div>
                            
                            <%-- <c:if test="${session.Email != null}">
                            <!-- 로그인안했을시 -->
                            <div class="layer_alert_login">
                                <div class="layer_content">
                                    <p class="notice">
                                        모든 체결 거래는<br />
                                        로그인 후 확인 가능합니다.
                                    </p>
                                    <a href="/login" class="btn btn_login solid c1_medium" type="button"> 로그인 </a>
                                </div>
                            </div>
                            </c:if> --%>
                            
                        </div class="c1_confirm_box">
                            <div class="c1_confirm_wrap">
                                <h3 class="c1_confirm_title">구매 전 꼭 확인해주세요!</h3>
                                <div class="c1_confirm_content">
                                    <ul class="c1_dropdown_list">
                                        <li class="c1_dropdownli">
                                            <div class="c1_dropdown">
                                                <div class="c1_dropdown_head">
                                                    <p class="c1_title">배송 기간 안내</p>
                                                    <img alt="" src="/TeamProject/img/shopDetail/chevron-down.svg"
                                                     class="c1_down_btn   ico-arr-down-gray"
                                                     >
                                                </div>
                                                
                                                <div class="c1_dropdown_content">
                                                    <div class="c1_content_in">
                                                        <div class="c1_content_box">
                                                            <div class="c1_emphasis_box">
                                                                <strong class="emphasis">KREAM은 최대한 빠르게 모든 상품을 배송하기 위해 노력하고 있습니다. 배송 시간은 판매자가 검수를 위하여 상품을 검수센터로 보내는 속도에 따라 차이가 있습니다.</strong>
                                                            </div>
                                                            <ul class="c1_content_list">
                                                                <li class="c1_content_item">
                                                                    <p class="c1_title_txt">[빠른배송 구매]</p>
                                                                </li>
                                                                <li class="c1_content_item">
                                                                    <p class="c1_main_txt">
                                                                        - 판매자가 보관 신청한 상품 중 검수에 합격한 상품을 KREAM의 전용 창고에 보관합니다. 보관 상품에 한하여 바로 구매와 95점 구매가 가능합니다.
                                                                    </p>
                                                                </li>
                                                                <li class="c1_content_item">
                                                                    <p class="c1_main_txt">
                                                                        - 오늘(오후 11:59까지) 결제하면 내일 바로 출고되어 빠른 배송이 가능합니다. (연휴 및 공휴일, 천재지변, 택배사 사유 등 예외적으로 출고일이 변경될 수 있습니다.
                                                                        <a target="_blank" href="/about/inventory?type=stocked" class="c1_txt_link"> 빠른배송 안내 </a>
                                                                    </p>
                                                                </li>
                                                                <li class="c1_content_item">
                                                                    <p class="c1_title_txt">[일반 구매]</p>
                                                                </li>
                                                                <li class="c1_content_item">
                                                                    <p class="c1_main_txt">
                                                                        - 거래가 체결된 시점부터 48시간(일요일•공휴일 제외) 내에 판매자가 상품을 발송해야 하며, 통상적으로 발송 후 1-2일 내에 KREAM 검수센터에 도착합니다.
                                                                    </p>
                                                                </li>
                                                                <li class="c1_content_item">
                                                                    <p class="c1_main_txt">
                                                                        - 검수센터에 도착한 상품은 입고 완료 후 3영업일 이내에 검수를 진행합니다. 검수 합격시 배송을 준비합니다.
                                                                    </p>
                                                                    <p class="c1_sub_txt">
                                                                        * 상품 종류 및 상태에 따라 검수 소요 시간은 상이할 수 있으며, 구매의사 확인에 해당할 경우 구매자와 상담 진행으로 인해 지연이 발생할 수 있습니다.
                                                                    </p>
                                                                </li>
                                                                <li class="c1_content_item">
                                                                    <p class="c1_main_txt">
                                                                        - 검수센터 출고는 매 영업일에 진행하고 있으며, 출고 마감시간은 오후 5시입니다. 출고 마감시간 이후 검수 완료건은 운송장번호는 입력되지만 다음 영업일에 출고됩니다.
                                                                    </p>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        
                                        <li class="c1_dropdownli">
                                            <div class="c1_dropdown">
                                                <div class="c1_dropdown_head">
                                                    <p class="c1_title">검수 안내</p>
                                                    <img alt="" src="/TeamProject/img/shopDetail/chevron-down.svg"
                                                     class="c1_down_btn   ico-arr-down-gray"
                                                     >
                                                </div>
                                                <div class="c1_dropdown_content">
                                                    <div class="c1_content_in">
                                                        <div class="c1_content_box">
                                                            <div class="c1_emphasis_box">
                                                                <strong class="emphasis">판매자의 상품이 검수센터에 도착하면 전담 검수팀이 철저한 분석과 검사로 정가품 확인을 진행합니다.</strong>
                                                            </div>
                                                            <ul class="c1_content_list">
                                                                <li class="c1_content_item">
                                                                    <p class="c1_main_txt"> - 검수센터에서는 정가품 여부를 확인하기 위하여, 지속적으로 데이터를 쌓고 분석하여 기록하고 있습니다. </p>
                                                                </li>
                                                                <li class="c1_content_item">
                                                                    <p class="c1_main_txt"> - 업계 전문가로 구성된 검수팀은 박스와 상품의 라벨에서 바느질, 접착, 소재 등 모든 것을 검수합니다. </p>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="c1_content_box">
                                                            <div class="c1_emphasis_box">
                                                                <strong class="emphasis">검수 결과는 불합격•검수 보류•합격의 세가지 상태로 결과가 변경됩니다.</strong>
                                                                <a href="#" class="c1_txt_link"> 검수기준 보기 </a>
                                                            </div>
                                                            <ul class="c1_content_list">
                                                                <li class="c1_content_item">
                                                                    <p class="c1_sub_txt">* 검수 합격: KREAM 검수택(Tag)이 부착되어 배송을 준비함</p>
                                                                </li>
                                                                <li class="c1_content_item">
                                                                    <p class="c1_sub_txt">* 검수 보류: 앱에서 사진으로 상품의 상태 확인 및 구매 여부를 선택. (24시간 이후 자동 검수 합격)</p>
                                                                </li>
                                                                <li class="c1_content_item">
                                                                    <p class="c1_sub_txt">* 검수 불합격: 즉시 거래가 취소되고 구매하신 금액을 환불 처리함.(환불 수단은 결제 수단과 동일)</p>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="c1_dropdownli">
                                            <div class="c1_dropdown">
                                                <div class="c1_dropdown_head">
                                                    <p class="c1_title">구매 환불/취소/교환 안내</p>
                                                    <img alt="" 
                                                    src="/TeamProject/img/shopDetail/chevron-down.svg" 
                                                    class="c1_down_btn   ico-arr-down-gray"
                                                    >
                                                </div>
                                                <div class="c1_dropdown_content">
                                                    <div class="c1_content_in">
                                                        <div class="c1_content_box">
                                                            <div class="c1_emphasis_box">
                                                                <strong class="emphasis">KREAM은 익명 거래를 기반으로 판매자가 판매하는 상품을 구매자가 실시간으로 구매하여 거래를 체결합니다.</strong>
                                                            </div>
                                                            <ul class="c1_content_list">
                                                                <li class="c1_content_item">
                                                                    <p class="c1_main_txt">- 단순 변심이나 실수에 의한 취소/교환/반품이 불가능합니다. 상품을 원하지 않으시는 경우 언제든지 KREAM에서 재판매를 하실 수 있습니다.</p>
                                                                </li>
                                                                <li class="c1_content_item">
                                                                    <p class="c1_main_txt"> - 상품 수령 후, 이상이 있는 경우 KREAM 고객센터로 문의해주시기 바랍니다.</p>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="c1_point_guide lg">
                                <ul class="c1_guide_list">
                                    <li class="c1_guide_item">
                                        <div class="c1_thumb_area">
                                        <img 
                                        	src="/TeamProject/img/shop/img-guide-item01.svg"  
                                        	alt="" 
                                        	class="c1_img" 
                                        />
                                        </div>
                                        <div class="c1_text_area">
                                            <strong class="c1_title">100% 정품 보증</strong>
                                            <p class="c1_desc">KREAM에서 검수한 상품이 정품이 아닐 경우, 구매가의 3배를 보상합니다.</p>
                                        </div>
                                    </li>
                                    <li class="c1_guide_item">
                                        <div class="c1_thumb_area">
                                            <img
                                                src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDAiIGhlaWdodD0iMzYiIHZpZXdCb3g9IjAgMCA0MCAzNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE3LjUgMjYuM0MxMS41MzUzIDI2LjMgNi43IDIxLjQ2NDcgNi43IDE1LjVDNi43IDkuNTM1MzMgMTEuNTM1MyA0LjcgMTcuNSA0LjdDMjMuNDY0NyA0LjcgMjguMyA5LjUzNTMzIDI4LjMgMTUuNUMyOC4zIDIxLjQ2NDcgMjMuNDY0NyAyNi4zIDE3LjUgMjYuM1oiIGZpbGw9IndoaXRlIiBzdHJva2U9IiMyMjIyMjIiIHN0cm9rZS13aWR0aD0iMS40IiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0yNSAyM0wzMSAyOSIgc3Ryb2tlPSIjMjIyMjIyIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8cGF0aCBkPSJNMTYgMTMuMzMzM0wyMC43NzI3IDE4TDMxIDgiIHN0cm9rZT0iIzIyMjIyMiIgc3Ryb2tlLXdpZHRoPSIyLjIiLz4KPC9zdmc+Cg=="
                                                alt=""
                                                class="c1_img"
                                            />
                                        </div>
                                        <div class="c1_text_area">
                                            <strong class="c1_title">엄격한 다중 검수</strong>
                                            <p class="c1_desc">모든 상품은 검수센터에 도착한 후, 상품별 전문가 그룹의 체계적인 시스템을 거쳐 검수를 진행합니다.</p>
                                        </div>
                                    </li>
                                    <li class="c1_guide_item">
                                        <div class="c1_thumb_area">
                                        	<img src="/TeamProject/img/shop/img-guide-item02.svg" alt="" 
                                        		class="c1_img"
                                        	/>
                                        </div>
                                        <div class="c1_text_area">
                                            <strong class="c1_title">정품 인증 패키지</strong>
                                            <p class="c1_desc">검수에 합격한 경우에 한하여 KREAM의 정품 인증 패키지가 포함된 상품이 배송됩니다.</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <p class="c1_meditaion_notice_product">
			                                크림(주)는 통신판매 중개자로서 통신판매의 당사자가 아닙니다. 본 상품은 개별판매자가 등록한 상품으로 상품, 상품정보, 거래에 관한 의무와 책임은 각 판매자에게 있습니다. 단, 거래과정에서 검수하고 보증하는 내용에
			                                대한 책임은 크림(주)에 있습니다.
                            </p>
                        </div>
                    </div>
                    
                    <div class="c1_floating_price lg is_open">
                        <div class="c1_inner_box">
                            <div class="c1_product_area">
                                <div class="c1_product_thumb" style="background-color: rgb(235, 240, 245);">
                                        <img
                                            alt="상품 이미지"
                                            src="https://kream-phinf.pstatic.net/MjAyMjA2MTVfMjYw/MDAxNjU1MjgzNjk2Mzk3.gh8n5rs7p-pWVqzIhNh7yj_KdyjLFBeJr9QbsDumoFEg.KdvPfvgBYmjm7MKKhcbIEQIP6FGeuof_GnmcDUgrvyAg.PNG/a_baa1ccea3726495badba419dfede63f9.png?type=m"
                                            class="c1_product_img"
                                        />
                                </div>
                                <div class="c1_product_info">
                                    <p class="c1_name" id="eng_name1"></p>
                                    <p class="c1_translated_name" id="kor_name1"></p>
                                </div>
                            </div>
                            <div class="c1_btn_area">
                                <a href="#" class="c1_btn c1_outlinegrey c1_large c1_btn_wish" aria-label="관심상품">
                            	<img alt="" src="/TeamProject/img/shopDetail/bookmark.svg" class="c1_bookmark ico-wish-off">
                                    <span class="c1_wish_count_c1_num" id="likepro1"></span>
                                </a>
                                <div class="c1_division_btn_box lg">
                                    <a href="#" class="c1_btn_division c1_buy">
                                        <strong class="c1_title">구매</strong>
                                        <div class="c1_price">
                                            <span class="c1_amount"><em class="c1_num" id="buyprice1"></em><span class="c1_won">원</span></span><span class="c1_desc">즉시 구매가</span>
                                        </div>
                                    </a>
                                    <a href="#" class="c1_btn_division c1_sell">
                                        <strong class="c1_title">판매</strong>
                                        <div class="c1_price">
                                            <span class="c1_amount"><em class="c1_num" id="sellprice1"></em><span class="c1_won">원</span></span><span class="c1_desc">즉시 판매가</span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="/TeamProject/js/shop/chart.js"></script>
<script type="text/javascript">
$("document").ready(function() {
		$(window).scroll(function() { 
			var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다. 
		     });    
		});

$(function(){     
	var lastScroll = 0;
		$(window).scroll(function(event) {
			var scroll = $(this).scrollTop();
			if (scroll < 1560) { //이벤트를 적용시킬 스크롤 높이               
				$(".c1_column:eq(0)").addClass("c1_is_fixed");
				$(".c1_column:eq(0)").removeClass("c1_is_absolute");
			} else{
				$(".c1_column:eq(0)").removeClass("c1_is_fixed");
				$(".c1_column:eq(0)").addClass("c1_is_absolute");
			}
			lastScroll = scroll;
		});
	});

$(function(){     
	var lastScroll = 0;
		$(window).scroll(function(event) {
			var scroll = $(this).scrollTop();
			if (scroll > 400) { //이벤트를 적용시킬 스크롤 높이               
				$(".c1_floating_price").addClass("is_open");
				$(".c1_floating_price").show();
			} else{
				$(".c1_floating_price").removeClass("is_open");
				$(".c1_floating_price").hide();
			}
			lastScroll = scroll;
		});
	});

/* 관심버튼 이미지 클릭시 로테이션으로 변경하기 */
$('.c1_bookmark').on(	{'click' : function() {
		var src = ($(this).attr('src') === '/TeamProject/img/shopDetail/bookmark.svg') ? '/TeamProject/img/shopDetail/bookmark-fill.svg'
				: '/TeamProject/img/shopDetail/bookmark.svg';
		$(this).attr('src', src);
	}
});

$('.c1_dropdown_head').on('click',function(){
	 let index = $(".c1_dropdown_head").index(this);	
	 
	if(index == 0){
		if($('.c1_dropdownli').eq(index).hasClass('open')){
			$('.open .c1_dropdown_content').css('display','none');
			$('.c1_dropdownli').eq(index).removeClass('open');
			$(this).children('img').attr('src', '/TeamProject/img/shopDetail/chevron-down.svg');
		}else{
			$('.c1_dropdownli').removeClass('open');
			$('.c1_dropdown_head').not(this).children('img').attr('src', '/TeamProject/img/shopDetail/chevron-down.svg');
			$('.c1_dropdownli').eq(index).addClass('open');
			$(this).children('img').attr('src', '/TeamProject/img/shopDetail/chevron-up.svg');
			$('.c1_dropdown_content').css({"display": "none"});
			$('.c1_dropdown_content').eq(index).css({"display": "block"});	
		}
	}else if(index == 1){
		if($('.c1_dropdownli').eq(index).hasClass('open')){
			$('.open .c1_dropdown_content').css('display','none');
			$('.c1_dropdownli').eq(index).removeClass('open');
			$(this).children('img').attr('src', '/TeamProject/img/shopDetail/chevron-down.svg');
		}else{
			$('.c1_dropdownli').removeClass('open');
			$('.c1_dropdown_head').not(this).children('img').attr('src', '/TeamProject/img/shopDetail/chevron-down.svg');
			$('.c1_dropdownli').eq(index).addClass('open');
			$(this).children('img').attr('src', '/TeamProject/img/shopDetail/chevron-up.svg');
			$('.c1_dropdown_content').css({"display": "none"});
			$('.c1_dropdown_content').eq(index).css({"display": "block"});	
		}
	}else{
		if($('.c1_dropdownli').eq(index).hasClass('open')){
			$('.open .c1_dropdown_content').css('display','none');
			$('.c1_dropdownli').eq(index).removeClass('open');
			$(this).children('img').attr('src', '/TeamProject/img/shopDetail/chevron-down.svg');
		}else{
			$('.c1_dropdownli').removeClass('open');
			$('.c1_dropdown_head').not(this).children('img').attr('src', '/TeamProject/img/shopDetail/chevron-down.svg');
			$('.c1_dropdownli').eq(index).addClass('open');
			$(this).children('img').attr('src', '/TeamProject/img/shopDetail/chevron-up.svg');
			$('.c1_dropdown_content').css({"display": "none"});
			$('.c1_dropdown_content').eq(index).css({"display": "block"});	
		}
	}
});


/* 팝업 체결거래, 판매 입찰, 구매입찰 버튼 */
$(document).on('click', '.c1_item_tab', function () {
    let index = $(".c1_item_tab").index(this);
    console.log(index)

    $(this).addClass('on');
    $('.c1_item_tab').not($(this)).removeClass('on')

    if (index == 0) {

        $('.c1_tab_content').css({"display": "none"})
        $('.c1_tab_content').eq(index).css({"display": "block"})

    } else if (index == 1) {
        $('.c1_tab_content').css({"display": "none"})
        $('.c1_tab_content').eq(index).css({"display": "block"})
    } else {
        $('.c1_tab_content').css({"display": "none"})
        $('.c1_tab_content').eq(index).css({"display": "block"})
    }

});
/* 구매 사이즈 판매사이즈로 이동 */
$('.c1_buy').on('click',function(){
	var href = "/TeamProject/shop/selectBuySize?product_id=" +  $('#product_id').val();
	$(location).attr("href", href);
})

$('.c1_sell').on('click',function(){
	$(location).attr("href", "/TeamProject/shop/selectSellSize");
})
Number.prototype.format = function(){    
	if(this==0) return 0;     
	var reg = /(^[+-]?\d+)(\d{3})/;    
	var n = (this + '');     
	while (reg.test(n)) n = n.replace(reg, '$1' + ',' + '$2');     
	return n;
}; 
$(document).ready(function(){
	$.ajax({
		type:'post',
		url:'/TeamProject/shop/getshopDetail',
		data:'product_id='+$('#product_id').val(),
		dataType:'json',
		success: function(data){
			$('.c1_image').prop('src',data.productImgDTO.file_path);
			$('.c1_product_img').prop('src',data.productImgDTO.file_path);
			$('.c1_getbrand').text(data.product.brand);
			$('#eng_name').text(data.product.eng_name);
			$('#eng_name1').text(data.product.eng_name);
			$('#kor_name').text(data.product.kor_name);
			$('#kor_name1').text(data.product.kor_name);
			$('#c1_product_info_color').text(data.product.color);
			$('#c1_product_info_modelnum').text(data.product.model_number);
			if(data.product.release_price == null){
				$('#c1_product_info_release_price').text('-');	
			}else{
				$('#c1_product_info_release_price').text(data.product.release_price);
			}
			if(data.product.release_date == null){
				$('#c1_product_info_reldate').text('-');	
			}else{
				$('#c1_product_info_reldate').text(data.product.release_date);	
			}
			$('#buyprice').text(data.buyhistory);
			$('#sellprice').text(data.sellhistory);
			$('#buyprice1').text(data.buyhistory);
			$('#sellprice1').text(data.sellhistory);
			$('#signingdateprice').text(data.signingdateprice.price.format());
			$('#likepro').text(data.likeproduct.format());
			$('#likepro1').text(data.likeproduct.format());
		},
		error:function(err){
			console.log(err);
		}		
	});
});
</script>
</body>
</html>
