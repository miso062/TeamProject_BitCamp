<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body, button, dd, div, dl, dt, fieldset, figcaption, figure, form, h1, h2, h3, h4, h5, h6, input, legend, li, ol, p, select, table, td, textarea, th, ul {
    margin: 0;
    padding: 0;
}
*, :after, :before {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    -webkit-tap-highlight-color: transparent;
}
div {
    display: block;
}
button {
    padding: 0;
    border: 0;
    outline: none;
    appearance: none;
    border-radius: 0;
}
.content {
    overflow: hidden;
    margin: 0 auto;
    padding: 30px 40px 120px;
    max-width: 1280px;
}
.blind, .u_skip {
    overflow: hidden!important;
    position: absolute!important;
    clip: rect(0,0,0,0)!important;
    width: 1px!important;
    height: 1px!important;
    margin: -1px!important;
}
.column_bind {
    position: relative;
}
.container .is_absolute .spread, .container .is_fixed .spread {
    position: static;
    display: block;
    height: 560px;
    background-color: rgba(0,0,0,0);
}
.is_fixed .column_box {
    position: fixed;
    top: 130px;
}
.column {
    width: 50%;
}
.column:first-child {
    float: left;
    padding-right: 3.334%;
}
.column:nth-child(2):before {
    content: "";
    display: block;
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    border-left: 1px solid #ebebeb;
}
.column:nth-child(2) {
    position: relative;
    float: right;
    padding-left: 3.334%;
}
.detail_main_title {
    position: relative;
}
.detail_main_title .brand {
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
.banner_slide {
    overflow: hidden;
    position: relative;
}
.detail_slide .slick-arrow {
    position: absolute;
    bottom: 50%;
    transform: translateY(50%);
    width: 44px;
    height: 44px;
    font-size: 0;
    color: rgba(0,0,0,0);
    cursor: pointer;
}
.detail_slide .slick-prev {
    left: 0;
    z-index: 1;
    background: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGZpbGw9Im5vbmUiIHZpZXdCb3g9IjAgMCA0NCA0NCI+PHBhdGggc3Ryb2tlPSIjRDNEM0QzIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTI3LjUgMzNsLTExLTExIDExLTExIi8+PC9zdmc+) no-repeat;
}
.detail_slide .slick-next {
    right: 0;
    z-index: 1;
    background: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGZpbGw9Im5vbmUiIHZpZXdCb3g9IjAgMCA0NCA0NCI+PHBhdGggc3Ryb2tlPSIjRDNEM0QzIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTE2LjUgMTFsMTEgMTEtMTEgMTEiLz48L3N2Zz4=) no-repeat;
}
.detail_slide .slick-slide {
    float: left;
}
.slide_content {
    vertical-align: top;
    width: 100%;
    display: inline-block;
}
.slide_item {
    position: relative;
}
.banner_slide .slick-dots {
    position: absolute;
    bottom: 12px;
    left: 0;
    right: 0;
    text-align: center;
    display: table!important;
    width: 100%;
    padding: 0 16px;
}
.product {
    overflow: hidden;
    position: relative;
    padding-top: 100%;
    border-radius: 8px;
}
.product:after, .slide_item:after {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(0,0,0,0);
}
.product_img {
	display: flex;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 81.5%;
    height: auto;
}
/* 위에뜨는거 */
.floating_price .inner_box, .floating_price .product_area {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
}
.floating_price .inner_box {
    -webkit-box-pack: justify;
    justify-content: space-between;
}
.floating_price .product_area {
    padding-right: 40px;
}
.is_open {
    display: block;
}
.floating_price{
    display: none;
    top: 99px;
}
.image {
    object-fit: cover;
    width: 100%;
    height: 100%;
    image-rendering: -webkit-optimize-contrast;
}
</style>
</head>
<body>
<div class="container detail lg">
    <div class="content">
        <h2 class="blind">상품 상세</h2>
        <div class="column_bind">
            <div class="column is_absolute">
                <div class="spread"></div>
                <div class="column_box" style="width: 560px;">
                    <div class="detail_banner_area lg">
                        <div dir="ltr" class="banner_slide detail_slide slick-slider slick-initialized">
                            <button type="button" data-role="none" class="slick-arrow slick-prev slick-disabled" style="display: block;">Previous</button>
                            <div class="slick-list">
                                <div class="slick-track" style="width: 2240px; opacity: 1;">
                                    <div
                                        tabindex="-1"
                                        data-index="0"
                                        aria-hidden="false"
                                        class="slick-slide slick-active slick-current"
                                        style="outline: none; width: 560px; position: relative; left: 0px; opacity: 1; transition: opacity 500ms ease 0s, visibility 500ms ease 0s;"
                                    >
                                        <div>
                                            <div tabindex="-1" class="slide_content" style="width: 100%; display: inline-block;">
                                                <div href="/" class="slide_item" style="background-color: rgb(235, 240, 245);">
                                                    <div class="item_inner">
                                                        <div class="product" style="background-color: rgb(235, 240, 245);">
                                                            <picture  class="picture product_img">
                                                                <source
                                                                    type="image/webp"
                                                                    srcset="
                                                                        https://kream-phinf.pstatic.net/MjAyMjA2MTVfMjYw/MDAxNjU1MjgzNjk2Mzk3.gh8n5rs7p-pWVqzIhNh7yj_KdyjLFBeJr9QbsDumoFEg.KdvPfvgBYmjm7MKKhcbIEQIP6FGeuof_GnmcDUgrvyAg.PNG/a_baa1ccea3726495badba419dfede63f9.png?type=l_webp
                                                                    "
                                                                />
                                                                <source
                                                                    srcset="
                                                                        https://kream-phinf.pstatic.net/MjAyMjA2MTVfMjYw/MDAxNjU1MjgzNjk2Mzk3.gh8n5rs7p-pWVqzIhNh7yj_KdyjLFBeJr9QbsDumoFEg.KdvPfvgBYmjm7MKKhcbIEQIP6FGeuof_GnmcDUgrvyAg.PNG/a_baa1ccea3726495badba419dfede63f9.png?type=l
                                                                    "
                                                                />
                                                                <img
                                                                    alt="상품 이미지"
                                                                    src="https://kream-phinf.pstatic.net/MjAyMjA2MTVfMjYw/MDAxNjU1MjgzNjk2Mzk3.gh8n5rs7p-pWVqzIhNh7yj_KdyjLFBeJr9QbsDumoFEg.KdvPfvgBYmjm7MKKhcbIEQIP6FGeuof_GnmcDUgrvyAg.PNG/a_baa1ccea3726495badba419dfede63f9.png?type=l"
                                                                    class="image"
                                                                />
                                                            </picture>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div
                                        tabindex="-1"
                                        data-index="1"
                                        aria-hidden="true"
                                        class="slick-slide"
                                        style="outline: none; width: 560px; position: relative; left: -560px; opacity: 0; transition: opacity 500ms ease 0s, visibility 500ms ease 0s;"
                                    >
                                        <div>
                                            <div tabindex="-1" class="slide_content" style="width: 100%; display: inline-block;">
                                                <div href="/" class="slide_item" style="background-color: rgb(235, 240, 245);">
                                                    <div class="item_inner">
                                                        <div class="product" style="background-color: rgb(235, 240, 245);">
                                                            <picture  class="picture product_img">
                                                                <source
                                                                    type="image/webp"
                                                                    srcset="
                                                                        https://kream-phinf.pstatic.net/MjAyMjA2MTVfMTAz/MDAxNjU1MjgzNjk2Mzk0.WpldpxWVYc8jltLDZcSjTKP9D6qvNUboMCJ1KCwyJnEg.NSbWSQAKH0s4sSQM9okLSjAObQjV9xHSNy_-Tc6cahwg.PNG/a_25272afc5f6f4ff4bc6f474ebae0406c.png?type=l_webp
                                                                    "
                                                                />
                                                                <source
                                                                    
                                                                    srcset="
                                                                        https://kream-phinf.pstatic.net/MjAyMjA2MTVfMTAz/MDAxNjU1MjgzNjk2Mzk0.WpldpxWVYc8jltLDZcSjTKP9D6qvNUboMCJ1KCwyJnEg.NSbWSQAKH0s4sSQM9okLSjAObQjV9xHSNy_-Tc6cahwg.PNG/a_25272afc5f6f4ff4bc6f474ebae0406c.png?type=l
                                                                    "
                                                                />
                                                                <img
                                                                    
                                                                    alt="상품 이미지"
                                                                    src="https://kream-phinf.pstatic.net/MjAyMjA2MTVfMTAz/MDAxNjU1MjgzNjk2Mzk0.WpldpxWVYc8jltLDZcSjTKP9D6qvNUboMCJ1KCwyJnEg.NSbWSQAKH0s4sSQM9okLSjAObQjV9xHSNy_-Tc6cahwg.PNG/a_25272afc5f6f4ff4bc6f474ebae0406c.png?type=l"
                                                                    class="image"
                                                                />
                                                            </picture>
                                                            <!----><!----><!---->
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div
                                        tabindex="-1"
                                        data-index="2"
                                        aria-hidden="true"
                                        class="slick-slide"
                                        style="outline: none; width: 560px; position: relative; left: -1120px; opacity: 0; transition: opacity 500ms ease 0s, visibility 500ms ease 0s;"
                                    >
                                        <div>
                                            <div tabindex="-1" class="slide_content" style="width: 100%; display: inline-block;">
                                                <div href="/" class="slide_item" style="background-color: rgb(235, 240, 245);">
                                                    <div class="item_inner">
                                                        <div class="product" style="background-color: rgb(235, 240, 245);">
                                                            <picture class="picture product_img">
                                                                <source
                                                                    type="image/webp"
                                                                    srcset="
                                                                        https://kream-phinf.pstatic.net/MjAyMjA2MTVfODcg/MDAxNjU1MjgzNjk2NDY0.gBmV8zQTrogKxLlWybcJeOniUxB42mLgOu4s6i2duoQg.685Pc1Kp8CXY2yAeM8OUmvYKbjwJnEIOiyVPCDaYeWUg.PNG/a_5860ca7dd5a64b78ab3d2a2f395f2403.png?type=l_webp
                                                                    "
                                                                />
                                                                <source
                                                                    srcset="
                                                                        https://kream-phinf.pstatic.net/MjAyMjA2MTVfODcg/MDAxNjU1MjgzNjk2NDY0.gBmV8zQTrogKxLlWybcJeOniUxB42mLgOu4s6i2duoQg.685Pc1Kp8CXY2yAeM8OUmvYKbjwJnEIOiyVPCDaYeWUg.PNG/a_5860ca7dd5a64b78ab3d2a2f395f2403.png?type=l
                                                                    "
                                                                />
                                                                <img
                                                                    alt="상품 이미지"
                                                                    src="https://kream-phinf.pstatic.net/MjAyMjA2MTVfODcg/MDAxNjU1MjgzNjk2NDY0.gBmV8zQTrogKxLlWybcJeOniUxB42mLgOu4s6i2duoQg.685Pc1Kp8CXY2yAeM8OUmvYKbjwJnEIOiyVPCDaYeWUg.PNG/a_5860ca7dd5a64b78ab3d2a2f395f2403.png?type=l"
                                                                    class="image"
                                                                />
                                                            </picture>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div
                                        tabindex="-1"
                                        data-index="3"
                                        aria-hidden="true"
                                        class="slick-slide"
                                        style="outline: none; width: 560px; position: relative; left: -1680px; opacity: 0; transition: opacity 500ms ease 0s, visibility 500ms ease 0s;"
                                    >
                                        <div>
                                            <div tabindex="-1" class="slide_content" style="width: 100%; display: inline-block;">
                                                <div href="/" class="slide_item" style="background-color: rgb(235, 240, 245);">
                                                    <div class="item_inner">
                                                        <div class="product" style="background-color: rgb(235, 240, 245);">
                                                            <picture  class="picture product_img">
                                                                <source
                                                                    type="image/webp"
                                                                    srcset="
                                                                        https://kream-phinf.pstatic.net/MjAyMjA2MTVfNTQg/MDAxNjU1MjgzNjk2NDIx.jqRhZsZwv2ExcogHji8tAK23HF4z7PD23j0w7yojYsEg.iSaFxyIpGcETNuV_-IfABX7vnEymbR8KNh4DPH9pMI0g.PNG/a_718ba68027f749b79313691f17a2e394.png?type=l_webp
                                                                    "
                                                                />
                                                                <source
                                                                    srcset="
                                                                        https://kream-phinf.pstatic.net/MjAyMjA2MTVfNTQg/MDAxNjU1MjgzNjk2NDIx.jqRhZsZwv2ExcogHji8tAK23HF4z7PD23j0w7yojYsEg.iSaFxyIpGcETNuV_-IfABX7vnEymbR8KNh4DPH9pMI0g.PNG/a_718ba68027f749b79313691f17a2e394.png?type=l
                                                                    "
                                                                />
                                                                <img
                                                                    alt="상품 이미지"
                                                                    src="https://kream-phinf.pstatic.net/MjAyMjA2MTVfNTQg/MDAxNjU1MjgzNjk2NDIx.jqRhZsZwv2ExcogHji8tAK23HF4z7PD23j0w7yojYsEg.iSaFxyIpGcETNuV_-IfABX7vnEymbR8KNh4DPH9pMI0g.PNG/a_718ba68027f749b79313691f17a2e394.png?type=l"
                                                                    class="image"
                                                                />
                                                            </picture>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <button type="button" data-role="none" class="slick-arrow slick-next" style="display: block;">Next</button>
                            <ul class="slick-dots" style="display: block;">
                                <li class="slick-active"><button>1</button></li>
                                <li class=""><button>2</button></li>
                                <li class=""><button>3</button></li>
                                <li class=""><button>4</button></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="column">
                <div class="column_box">
                    <div class="column_top">
                        <div class="detail_main_title lg">
                            <div class="main_title_box">
                                <a href="#" class="brand"> Nike </a>
                                <p class="title">Nike Air Force 1 '07 Low White</p>
                                <p class="sub_title">나이키 에어포스 1 '07 로우 화이트</p>
                            </div>
                        </div>
                        
                        <div class="product_figure_wrap lg">
                            <div class="detail_size">
                                <div class="title"><span class="title_txt">사이즈</span></div>
                                <div class="size">
                                    <a href="#" class="btn_size">
                                        <span class="btn_text">모든 사이즈</span>
                                        <svg xmlns="http://www.w3.org/2000/svg" class="ico-arr-dir-down-circle icon sprite-icons">
                                            <use href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-arr-dir-down-circle" xlink:href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-arr-dir-down-circle"></use>
                                        </svg>
                                    </a>
                                </div>
                            </div>
                            <div class="detail_price">
                                <div class="title"><span class="title_txt">최근 거래가</span></div>
                                <div class="price">
                                    <div class="amount"><span class="num">133,000</span><span class="won">원</span></div>
                                    <div class="fluctuation decrease"><p data-v-5943a237="">5,000원 (-3.6%)</p></div>
                                </div>
                            </div>
                        </div>
                        <div class="btn_wrap">
                            <div class="division_btn_box lg">
                                <a href="#" class="btn_division buy">
                                    <strong class="title">구매</strong>
                                    <div class="price">
                                        <span class="amount"><em class="num">129,000</em><span class="won">원</span></span><span class="desc">즉시 구매가</span>
                                    </div>
                                </a>
                                <a href="#" class="btn_division sell">
                                    <strong class="title">판매</strong>
                                    <div class="price">
                                        <span class="amount"><em class="num">170,000</em><span class="won">원</span></span><span class="desc">즉시 판매가</span>
                                    </div>
                                </a>
                            </div>
                            <a href="#" class="btn full outlinegrey large btn_wish" aria-label="관심상품">
                                <img alt="" src="/TeamProject/img/shop/bookmark.svg" class="shop_bookmark">
                                <span class="btn_text">관심상품</span><span class="wish_count_num">9.5만</span>
                            </a>
                        </div>
                    </div>
                    <div class="product_info_wrap">
                        <h3 class="detail_title info_title lg">상품 정보</h3>
                        <div class="detail_product_wrap">
                            <dl class="detail_product">
                                <div class="detail_box model_num">
                                    <dt class="product_title">모델번호</dt>
                                    <dd class="product_info">315122-111/CW2288-111</dd>
                                </div>
                                <div class="detail_box">
                                    <dt class="product_title">출시일</dt>
                                    <dd class="product_info">-</dd>
                                </div>
                                <div class="detail_box">
                                    <dt class="product_title">컬러</dt>
                                    <dd class="product_info">WHITE/WHITE</dd>
                                </div>
                                <div class="detail_box">
                                    <dt class="product_title">발매가</dt>
                                    <dd class="product_info">129,000원</dd>
                                </div>
                            </dl>
                        </div>
                    </div>
                    <div class="delivery_way_wrap">
                        <h3 class="detail_title lg">배송 정보</h3>
                        <div class="delivery_way">
                            <div class="way_info">
                                <div class="way_status_thumb">
                                    <img
                                        data-v-12ba7144=""
                                        src="https://kream-phinf.pstatic.net/MjAyMTExMjlfMTQ4/MDAxNjM4MTc4MjI5NTk3.2phJLPtRvFqViNfhZu06HzNRiUBlT4cmZR4_Ukqsyesg.ikrfWOrL7WXCVO0Rqy5kMvOn3B2YpjLUj6RuJqosPX0g.PNG/a_8b54cbca40e945f4abf1ee24bdd031f7.png"
                                        alt="3,000원"
                                        class="way_img"
                                    />
                                </div>
                                <div class="way_desc">
                                    <p class="company">
                                        <span class="badge_title">일반배송 </span><span class="title">3,000원</span>
                                        <!---->
                                    </p>
                                    <p class="sub_text">검수 후 배송 ・ 5-7일 내 도착 예정</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="banner_box">
                        <div class="banner_slide detail_slide slick-slider slick-initialized">
                            <div class="slick-list">
                                <div class="slick-track" style="width: 560px; opacity: 1;">
                                    <div
                                        tabindex="-1"
                                        data-index="0"
                                        aria-hidden="false"
                                        class="slick-slide slick-active slick-current"
                                        style="outline: none; width: 560px; position: relative; left: 0px; opacity: 1; transition: opacity 600ms ease 0s, visibility 600ms ease 0s;"
                                    >
                                        <div>
                                            <div tabindex="-1" class="detail_banner" style="width: 100%; display: inline-block;">
                                                <a href="https://kream.co.kr/promotions/272" class="banner_link" style="background-color: rgb(239, 68, 25);">
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
                    <div class="detail_wrap">
                        <div class="product_sales_graph">
                            <div class="title">
                                <h3 class="detail_title lg">시세</h3>
                                <div class="sales_filter lg">
                                    <div class="filter_unit">
                                        <button type="button" class="btn btn_select" slot="button"><span class="select_text layer_open">모든 사이즈</span></button>
                                    </div>
                                </div>
                            </div>
                            <div class="wrap_sales">
                                <div class="tab_area">
                                    <ul role="tablist" class="tab_list">
                                        <li role="tab" aria-selected="false" aria-controls="sales_panel1" class="item"><a href="#" class="item_link">1개월</a></li>
                                        <li role="tab" aria-selected="false" aria-controls="sales_panel2" class="item"><a href="#" class="item_link">3개월</a></li>
                                        <li role="tab" aria-selected="false" aria-controls="sales_panel3" class="item"><a href="#" class="item_link">6개월</a></li>
                                        <li role="tab" aria-selected="false" aria-controls="sales_panel4" class="item"><a href="#" class="item_link">1년</a></li>
                                        <li role="tab" aria-selected="true" aria-controls="sales_panel5" class="item on"><a href="#" class="item_link">전체</a></li>
                                    </ul>
                                    <div id="sales_panel1" role="tabpanel" class="tab_content" span="1m" data-v-b6b2883e="">
                                        <div class="graph" data-v-3c9dd7e9="">
                                            <canvas id="01689e63-5dd0-4d25-928a-d14faf5c9310" height="0" style="display: block; box-sizing: border-box; height: 0px; width: 0px;" width="0"></canvas>
                                        </div>
                                    </div>
                                    <div id="sales_panel2" role="tabpanel" class="tab_content" span="3m" data-v-b6b2883e="">
                                        <div class="graph" data-v-3c9dd7e9="">
                                            <canvas id="a0eef8fb-2c17-4ddc-9366-12a7c1590779" height="0" style="display: block; box-sizing: border-box; height: 0px; width: 0px;" width="0"></canvas>
                                        </div>
                                    </div>
                                    <div id="sales_panel3" role="tabpanel" class="tab_content" span="6m" data-v-b6b2883e="">
                                        <div class="graph" data-v-3c9dd7e9="">
                                            <canvas id="7bc7f4c2-9f0a-471a-b6fa-878667af4b40" height="0" style="display: block; box-sizing: border-box; height: 0px; width: 0px;" width="0"></canvas>
                                        </div>
                                    </div>
                                    <div id="sales_panel4" role="tabpanel" class="tab_content" span="1y" data-v-b6b2883e="">
                                        <div class="graph" data-v-3c9dd7e9="">
                                            <canvas id="9fa4c443-6553-4ee8-9d45-1993fa9e4117" height="0" style="display: block; box-sizing: border-box; height: 0px; width: 0px;" width="0"></canvas>
                                        </div>
                                    </div>
                                    <div id="sales_panel5" role="tabpanel" class="tab_content show" span="all" data-v-b6b2883e="">
                                        <div class="graph" data-v-3c9dd7e9="">
                                            <canvas id="8b3afff2-c526-433b-9dc8-b0d3db665395" width="560" height="200" style="display: block; box-sizing: border-box; height: 200px; width: 560px;"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="wrap_bids">
                                <div class="tab_area">
                                    <ul role="tablist" class="tab_list">
                                        <li role="tab" aria-selected="true" aria-controls="panel1" class="item on"><a href="#" class="item_link">체결 거래</a></li>
                                        <li role="tab" aria-selected="false" aria-controls="panel2" class="item"><a href="#" class="item_link">판매 입찰</a></li>
                                        <li role="tab" aria-selected="false" aria-controls="panel3" class="item"><a href="#" class="item_link">구매 입찰</a></li>
                                    </ul>
                                    <div id="panel1" role="tabpanel" class="tab_content show" span="sales" data-v-b6b2883e="">
                                        <div class="table_wrap lg" data-v-3c9dd7e9="">
                                            <table>
                                                <caption>
                                                    <span class="blind">데이터 테이블</span>
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
                                        <a href="#" class="btn outlinegrey full medium" data-v-3c9dd7e9=""> 체결 내역 더보기 </a>
                                    </div>
                                    <div id="panel2" role="tabpanel" class="tab_content" span="asks" data-v-b6b2883e="">
                                        <div class="table_wrap lg" data-v-3c9dd7e9="">
                                            <table>
                                                <caption>
                                                    <span class="blind">데이터 테이블</span>
                                                </caption>
                                                <colgroup>
                                                    <col style="width: 29.76%;" />
                                                    <col style="width: 36.52%;" />
                                                    <col style="width: 33.72%;" />
                                                </colgroup>
                                                <thead>
                                                    <tr>
                                                        <th class="table_th">사이즈</th>
                                                        <th class="table_th align_right">판매 희망가</th>
                                                        <th class="table_th align_right">수량</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td class="table_td">310</td>
                                                        <td class="table_td align_right">129,000원</td>
                                                        <td class="table_td align_right">1</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="table_td">310</td>
                                                        <td class="table_td align_right">130,000원</td>
                                                        <td class="table_td align_right">1</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="table_td">300</td>
                                                        <td class="table_td align_right">131,000원</td>
                                                        <td class="table_td align_right">1</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="table_td"> 300</td>
                                                        <td class="table_td align_right">132,000원</td>
                                                        <td class="table_td align_right">3</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="table_td">300</td>
                                                        <td class="table_td align_right">133,000원</td>
                                                        <td class="table_td align_right">3</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <a href="#" class="btn outlinegrey full medium" data-v-3c9dd7e9=""> 입찰 내역 더보기 </a>
                                    </div>
                                    <div id="panel3" role="tabpanel" class="tab_content" span="bids" data-v-b6b2883e="">
                                        <div class="table_wrap lg" data-v-3c9dd7e9="">
                                            <table>
                                                <caption>
                                                    <span class="blind">데이터 테이블</span>
                                                </caption>
                                                <colgroup>
                                                    <col style="width: 29.76%;" />
                                                    <col style="width: 36.52%;" />
                                                    <col style="width: 33.72%;" />
                                                </colgroup>
                                                <thead>
                                                    <tr>
                                                        <th class="table_th">사이즈</th>
                                                        <th class="table_th align_right">구매 희망가</th>
                                                        <th class="table_th align_right">수량</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td class="table_td">235</td>
                                                        <td class="table_td align_right">170,000원</td>
                                                        <td class="table_td align_right">1</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="table_td">235</td>
                                                        <td class="table_td align_right">157,000원</td>
                                                        <td class="table_td align_right">1</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="table_td">255</td>
                                                        <td class="table_td align_right">151,000원</td>
                                                        <td class="table_td align_right">1</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="table_td">255</td>
                                                        <td class="table_td align_right">150,000원</td>
                                                        <td class="table_td align_right">1</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="table_td">235</td>
                                                        <td class="table_td align_right">150,000원</td>
                                                        <td class="table_td align_right">1</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <a href="#" class="btn outlinegrey full medium" data-v-3c9dd7e9=""> 입찰 내역 더보기 </a>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- 로그인안했을시 -->
                            <div class="layer_alert_login">
                                <div class="layer_content">
                                    <p class="notice">
                                        모든 체결 거래는<br />
                                        로그인 후 확인 가능합니다.
                                    </p>
                                    <a href="/login" class="btn btn_login solid medium" type="button"> 로그인 </a>
                                </div>
                            </div>
                            
                        </div>
                        <div>
                            <div class="confirm_wrap">
                                <h3 class="confirm_title">구매 전 꼭 확인해주세요!</h3>
                                <div class="confirm_content">
                                    <ul class="dropdown_list">
                                        <li class="">
                                            <div class="dropdown">
                                                <div class="dropdown_head">
                                                    <p class="title">배송 기간 안내</p>
                                                    <svg xmlns="http://www.w3.org/2000/svg" class="icon sprite-icons ico-arr-down-gray">
                                                        <use href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-arr-down-gray" xlink:href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-arr-down-gray"></use>
                                                    </svg>
                                                </div>
                                                <div class="dropdown_content">
                                                    <div class="content">
                                                        <div class="content_box">
                                                            <div class="emphasis_box">
                                                                <strong class="emphasis">KREAM은 최대한 빠르게 모든 상품을 배송하기 위해 노력하고 있습니다. 배송 시간은 판매자가 검수를 위하여 상품을 검수센터로 보내는 속도에 따라 차이가 있습니다.</strong>
                                                            </div>
                                                            <ul class="content_list">
                                                                <li class="content_item">
                                                                    <p class="title_txt">[빠른배송 구매]</p>
                                                                </li>
                                                                <li class="content_item">
                                                                    <p class="main_txt">
                                                                        - 판매자가 보관 신청한 상품 중 검수에 합격한 상품을 KREAM의 전용 창고에 보관합니다. 보관 상품에 한하여 바로 구매와 95점 구매가 가능합니다.
                                                                    </p>
                                                                </li>
                                                                <li class="content_item">
                                                                    <p class="main_txt">
                                                                        - 오늘(오후 11:59까지) 결제하면 내일 바로 출고되어 빠른 배송이 가능합니다. (연휴 및 공휴일, 천재지변, 택배사 사유 등 예외적으로 출고일이 변경될 수 있습니다.
                                                                        <a target="_blank" href="/about/inventory?type=stocked" class="txt_link"> 빠른배송 안내 </a>
                                                                    </p>
                                                                </li>
                                                                <li class="content_item">
                                                                    <p class="title_txt">[일반 구매]</p>
                                                                </li>
                                                                <li class="content_item">
                                                                    <p class="main_txt">
                                                                        - 거래가 체결된 시점부터 48시간(일요일•공휴일 제외) 내에 판매자가 상품을 발송해야 하며, 통상적으로 발송 후 1-2일 내에 KREAM 검수센터에 도착합니다.
                                                                    </p>
                                                                </li>
                                                                <li class="content_item">
                                                                    <p class="main_txt">
                                                                        - 검수센터에 도착한 상품은 입고 완료 후 3영업일 이내에 검수를 진행합니다. 검수 합격시 배송을 준비합니다.
                                                                    </p>
                                                                    <p class="sub_txt">
                                                                        * 상품 종류 및 상태에 따라 검수 소요 시간은 상이할 수 있으며, 구매의사 확인에 해당할 경우 구매자와 상담 진행으로 인해 지연이 발생할 수 있습니다.
                                                                    </p>
                                                                </li>
                                                                <li class="content_item">
                                                                    <p class="main_txt">
                                                                        - 검수센터 출고는 매 영업일에 진행하고 있으며, 출고 마감시간은 오후 5시입니다. 출고 마감시간 이후 검수 완료건은 운송장번호는 입력되지만 다음 영업일에 출고됩니다.
                                                                    </p>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="">
                                            <div class="dropdown">
                                                <div class="dropdown_head">
                                                    <p class="title">검수 안내</p>
                                                    <svg xmlns="http://www.w3.org/2000/svg" class="icon sprite-icons ico-arr-down-gray">
                                                        <use href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-arr-down-gray" xlink:href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-arr-down-gray"></use>
                                                    </svg>
                                                </div>
                                                <div class="dropdown_content">
                                                    <div class="content">
                                                        <div class="content_box">
                                                            <div class="emphasis_box">
                                                                <strong class="emphasis">판매자의 상품이 검수센터에 도착하면 전담 검수팀이 철저한 분석과 검사로 정가품 확인을 진행합니다.</strong>
                                                            </div>
                                                            <ul class="content_list">
                                                                <li class="content_item">
                                                                    <p class="main_txt"> - 검수센터에서는 정가품 여부를 확인하기 위하여, 지속적으로 데이터를 쌓고 분석하여 기록하고 있습니다. </p>
                                                                </li>
                                                                <li class="content_item">
                                                                    <p class="main_txt"> - 업계 전문가로 구성된 검수팀은 박스와 상품의 라벨에서 바느질, 접착, 소재 등 모든 것을 검수합니다. </p>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="content_box">
                                                            <div class="emphasis_box">
                                                                <strong class="emphasis">검수 결과는 불합격•검수 보류•합격의 세가지 상태로 결과가 변경됩니다.</strong>
                                                                <a href="#" class="txt_link"> 검수기준 보기 </a>
                                                            </div>
                                                            <ul class="content_list">
                                                                <li class="content_item">
                                                                    <p class="sub_txt">* 검수 합격: KREAM 검수택(Tag)이 부착되어 배송을 준비함</p>
                                                                </li>
                                                                <li class="content_item">
                                                                    <p class="sub_txt">* 검수 보류: 앱에서 사진으로 상품의 상태 확인 및 구매 여부를 선택. (24시간 이후 자동 검수 합격)</p>
                                                                </li>
                                                                <li class="content_item">
                                                                    <p class="sub_txt">* 검수 불합격: 즉시 거래가 취소되고 구매하신 금액을 환불 처리함.(환불 수단은 결제 수단과 동일)</p>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="">
                                            <div class="dropdown">
                                                <div class="dropdown_head">
                                                    <p class="title">구매 환불/취소/교환 안내</p>
                                                    <svg xmlns="http://www.w3.org/2000/svg" class="icon sprite-icons ico-arr-down-gray">
                                                        <use href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-arr-down-gray" xlink:href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-arr-down-gray"></use>
                                                    </svg>
                                                </div>
                                                <div class="dropdown_content">
                                                    <div class="content">
                                                        <div class="content_box">
                                                            <div class="emphasis_box">
                                                                <strong class="emphasis">KREAM은 익명 거래를 기반으로 판매자가 판매하는 상품을 구매자가 실시간으로 구매하여 거래를 체결합니다.</strong>
                                                            </div>
                                                            <ul class="content_list">
                                                                <li class="content_item">
                                                                    <p class="main_txt">- 단순 변심이나 실수에 의한 취소/교환/반품이 불가능합니다. 상품을 원하지 않으시는 경우 언제든지 KREAM에서 재판매를 하실 수 있습니다.</p>
                                                                </li>
                                                                <li class="content_item">
                                                                    <p class="main_txt"> - 상품 수령 후, 이상이 있는 경우 KREAM 고객센터로 문의해주시기 바랍니다.</p>
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
                            <div class="point_guide lg">
                                <ul class="guide_list">
                                    <li class="guide_item">
                                        <div class="thumb_area"><img src="/_nuxt/img/img-guide-item-01.fa306b8.svg" alt="" class="img" /></div>
                                        <div class="text_area">
                                            <strong class="title">100% 정품 보증</strong>
                                            <p class="desc">KREAM에서 검수한 상품이 정품이 아닐 경우, 구매가의 3배를 보상합니다.</p>
                                        </div>
                                    </li>
                                    <li class="guide_item">
                                        <div class="thumb_area">
                                            <img
                                               
                                                src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDAiIGhlaWdodD0iMzYiIHZpZXdCb3g9IjAgMCA0MCAzNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE3LjUgMjYuM0MxMS41MzUzIDI2LjMgNi43IDIxLjQ2NDcgNi43IDE1LjVDNi43IDkuNTM1MzMgMTEuNTM1MyA0LjcgMTcuNSA0LjdDMjMuNDY0NyA0LjcgMjguMyA5LjUzNTMzIDI4LjMgMTUuNUMyOC4zIDIxLjQ2NDcgMjMuNDY0NyAyNi4zIDE3LjUgMjYuM1oiIGZpbGw9IndoaXRlIiBzdHJva2U9IiMyMjIyMjIiIHN0cm9rZS13aWR0aD0iMS40IiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0yNSAyM0wzMSAyOSIgc3Ryb2tlPSIjMjIyMjIyIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8cGF0aCBkPSJNMTYgMTMuMzMzM0wyMC43NzI3IDE4TDMxIDgiIHN0cm9rZT0iIzIyMjIyMiIgc3Ryb2tlLXdpZHRoPSIyLjIiLz4KPC9zdmc+Cg=="
                                                alt=""
                                                class="img"
                                            />
                                        </div>
                                        <div class="text_area">
                                            <strong class="title">엄격한 다중 검수</strong>
                                            <p class="desc">모든 상품은 검수센터에 도착한 후, 상품별 전문가 그룹의 체계적인 시스템을 거쳐 검수를 진행합니다.</p>
                                        </div>
                                    </li>
                                    <li class="guide_item">
                                        <div class="thumb_area"><img src="/_nuxt/img/img-guide-item-03.963fee7.svg" alt="" class="img" /></div>
                                        <div class="text_area">
                                            <strong class="title">정품 인증 패키지</strong>
                                            <p class="desc">검수에 합격한 경우에 한하여 KREAM의 정품 인증 패키지가 포함된 상품이 배송됩니다.</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <p class="meditaion_notice_product">
			                                크림(주)는 통신판매 중개자로서 통신판매의 당사자가 아닙니다. 본 상품은 개별판매자가 등록한 상품으로 상품, 상품정보, 거래에 관한 의무와 책임은 각 판매자에게 있습니다. 단, 거래과정에서 검수하고 보증하는 내용에
			                                대한 책임은 크림(주)에 있습니다.
                            </p>
                        </div>
                    </div>
                    
                    <div class="floating_price lg is_open">
                        <div class="inner_box">
                            <div class="product_area">
                                <div class="product_thumb" style="background-color: rgb(235, 240, 245);">
                                    <picture  class="picture product_img">
                                        <source
                                            type="image/webp"
                                            srcset="
                                                https://kream-phinf.pstatic.net/MjAyMjA2MTVfMjYw/MDAxNjU1MjgzNjk2Mzk3.gh8n5rs7p-pWVqzIhNh7yj_KdyjLFBeJr9QbsDumoFEg.KdvPfvgBYmjm7MKKhcbIEQIP6FGeuof_GnmcDUgrvyAg.PNG/a_baa1ccea3726495badba419dfede63f9.png?type=m_webp
                                            "
                                        />
                                        <source
                                            srcset="
                                                https://kream-phinf.pstatic.net/MjAyMjA2MTVfMjYw/MDAxNjU1MjgzNjk2Mzk3.gh8n5rs7p-pWVqzIhNh7yj_KdyjLFBeJr9QbsDumoFEg.KdvPfvgBYmjm7MKKhcbIEQIP6FGeuof_GnmcDUgrvyAg.PNG/a_baa1ccea3726495badba419dfede63f9.png?type=m
                                            "
                                        />
                                        <img
                                            alt="상품 이미지"
                                            src="https://kream-phinf.pstatic.net/MjAyMjA2MTVfMjYw/MDAxNjU1MjgzNjk2Mzk3.gh8n5rs7p-pWVqzIhNh7yj_KdyjLFBeJr9QbsDumoFEg.KdvPfvgBYmjm7MKKhcbIEQIP6FGeuof_GnmcDUgrvyAg.PNG/a_baa1ccea3726495badba419dfede63f9.png?type=m"
                                            class="image"
                                        />
                                    </picture>
                                </div>
                                <div class="product_info">
                                    <p class="name">Nike Air Force 1 '07 Low White</p>
                                    <p class="translated_name">나이키 에어포스 1 '07 로우 화이트</p>
                                </div>
                            </div>
                            <div class="btn_area">
                                <a href="#" class="btn outlinegrey large btn_wish btn_wish_simple" aria-label="관심상품">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="icon sprite-icons ico-wish-off">
                                        <use href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-wish-off" xlink:href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-wish-off"></use>
                                    </svg>
                                    <span class="wish_count_num">9.5만</span>
                                </a>
                                <div class="division_btn_box lg">
                                    <a href="#" class="btn_division buy">
                                        <strong class="title">구매</strong>
                                        <div class="price">
                                            <span class="amount"><em class="num">129,000</em><span class="won">원</span></span><span class="desc">즉시 구매가</span>
                                        </div>
                                    </a>
                                    <a href="#" class="btn_division sell">
                                        <strong class="title">판매</strong>
                                        <div class="price">
                                            <span class="amount"><em class="num">170,000</em><span class="won">원</span></span><span class="desc">즉시 판매가</span>
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

</body>
</html>