<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

[data-v-454fa0b2] button {
	border: none;
	background: none;
	cursor: pointer;
	-webkit-tap-highlight-color: rgba(0, 0, 0, .1);
	-webkit-tap-highlight-color: transparent;
	outline: none
}

.select_list[data-v-02c63ee6] {
	line-height: 0;
	margin: -4px;
	font-size: 0;
}
.change{
	border:1px solid #000000;
}
.select_item[data-v-02c63ee6] {
	overflow: hidden;
	margin: 4px;
	display: inline-block;
	vertical-align: top;
	width: calc(33.33333% - 8px);
	border: 1px solid #d3d3d3;
	height: 52px;
	border-radius: 10px;
	background-color: #fff;
	-webkit-box-sizing: border-box;
	box-sizing: border-box
}

.select_item.active{
	border-color: #000000
}

.select_item.active .price[data-v-02c63ee6], .select_item.active .size[data-v-02c63ee6]
	{
	font-weight: 700
}

.select_item[data-v-02c63ee6]:only-child {
	width: calc(100% - 8px)
}

.select_link[data-v-02c63ee6] {
	width: 100%;
	height: 100%;
	cursor: pointer
}

.link_inner[data-v-02c63ee6] {
	margin: 0 auto;
	max-width: 90px
}

.size[data-v-02c63ee6] {
	display: block;
	line-height: 17px;
	margin-top: -3px;
	font-size: 14px
}

.size .ico-express[data-v-02c63ee6] {
	width: 11px;
	height: 12px;
	margin-right: -1px;
	margin-bottom: -1px
}

.price[data-v-02c63ee6] {
	display: block;
	line-height: 14px;
	margin-top: 1px;
	font-size: 12px;
	color: #222
}

.select_link.buy .price {
	color: #f15746
}

.select_link.sell .price {
	color: #31b46e
}

.select_link.bid .price {
	color: #222
}

.buy_before .select_item, .sell_before .select_item {
	height: 60px
}


}
.product {
	overflow: hidden;
	position: relative;
	padding-top: 100%;
	border-radius: 8px
}

.product:after {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background: rgba(0, 0, 0, 0)
}

.stock_list .stock_list_item .product {
	border-radius: 10px
}

.product.is_flat {
	border-radius: 0 !important
}

.product_img {
	position: absolute;
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	width: 81.5%;
	height: auto
}

.detail_stock .product_img, .is_exclusive .product_img,
	.lucky_draw_column .product_img, .other_stock .product_img, .stock .product_img
	{
	width: 100%;
	height: auto
}

.status_value {
	position: absolute;
	top: 10px;
	right: 10px;
	font-size: 12px;
	line-height: 20px
}

.status_value.premium_same {
	color: rgba(34, 34, 34, .5);
	font-weight: 700
}

.status_value.premium_up {
	color: #f15746;
	font-weight: 700
}

.status_value.premium_down {
	color: #31b46e;
	font-weight: 700
}

.status_value.sale {
	font-size: 12px;
	letter-spacing: -.06px;
	color: rgba(34, 34, 34, .8)
}

.product_date {
	position: absolute;
	top: 16px;
	left: 16px;
	min-width: 30px;
	text-align: center
}

.product_date .month {
	line-height: 19px;
	padding-bottom: 2px;
	font-size: 16px;
	letter-spacing: -.16px;
	letter-spacing: -.05px;
	border-bottom: 2px solid #222
}

.product_date .month em {
	display: inline-block;
	vertical-align: top;
	letter-spacing: -.07px
}

.product_date .day {
	padding-top: 2px;
	line-height: 24px;
	font-size: 20px;
	letter-spacing: -.3px;
	font-weight: 700;
	letter-spacing: -.5px
}


.picture {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex
}

.image {
	-o-object-fit: cover;
	object-fit: cover;
	width: 100%;
	height: 100%;
	image-rendering: -webkit-optimize-contrast
}

.product_info {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	width: 100%
}


.product_thumb {
	-webkit-box-flex: 0;
	-ms-flex: none;
	flex: none;
	width: 80px;
	height: 80px
}

.product_thumb .product {
	border-radius: 10px
}

.product_detail {
	overflow: hidden;
	-webkit-box-flex: 1;
	-ms-flex: 1;
	flex: 1;
	padding-left: 16px;
}

.product_detail p {
	display: block;
	overflow: hidden;
	-o-text-overflow: ellipsis;
	text-overflow: ellipsis;
	white-space: nowrap;
	font-size: 17px
}

.product_detail p+p {
	margin-top: 2px
}

.product_detail .code {
	font-weight: 700
}

.product_detail .code, .product_detail .name {
	line-height: 17px;
	font-size: 14px
}

.product_detail .translated_name {
	line-height: 16px;
	font-size: 13px;
	letter-spacing: -.07px;
	letter-spacing: -.05px;
	color: rgba(34, 34, 34, .5)
}

.product_detail .express_mark {
	position: relative;
	display: inline-block;
	vertical-align: top;
	line-height: 11px;
	padding: 3px 5.5px 4px 17px;
	color: #31b46e;
	border: 1px solid #31b46e;
	border-radius: 2px;
	font-size: 11px;
	letter-spacing: -.33px;
	margin-top: 6px
}

.product_detail .express_mark:before {
	content: "";
	position: absolute;
	left: 3.5px;
	top: 3px;
	width: 11px;
	height: 13px;
	background: url(/_nuxt/img/ico-express.8dac9dc.svg) 0 0 no-repeat;
	background-size: 11px 13px
}

.box {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	padding: 12px 18px 14px 14px;
	border-radius: 10px;
	color: #fff;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	position: relative
}

body {
	background-color: #fafafa
}

 .content_area {
	margin: 0 auto;
	padding: 40px 40px 160px 0px;
	width: 1000px
} 

.buy_before {
	padding: 32px 32px 28px;
	-webkit-box-shadow: 0 4px 10px 0 rgba(0, 0, 0, .1);
	box-shadow: 0 4px 10px 0rgba(0, 0, 0, .1);
	background-color: white;
	margin: 0px
}

body, button, dd, div, dl, dt, fieldset, figcaption, figure, form, h1,
	h2, h3, h4, h5, h6, input, legend, li, ol, p, select, table, td,
	textarea, th, ul {
	margin: 0;
	padding: 0
}

.buy_before .product_info {
	padding-bottom: 20px
}

.buy_before_select {
	position: relative;
	min-height: 484px;
	border-top: 1px solid #ebebeb
}

button {
	border: 0;
	background-color: white;
	padding: 0px;
}

#background-color {
	background-color: #FAFAFA;
}

*, :after, :before {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-tap-highlight-color: transparent;
}

 .content_area {
	overflow: hidden;
	max-width: 780px;
	min-height: 900px;
	margin: 0 auto;
	padding: 65px 40px 160px;
} 

.container buy md {
	width: 802.400px;
	height: 900px;
}

#black_box {
	width: 600px;
	height: 55px;
	background-color: #333;
	border: 0px;
	margin: 22px 0px 0px 0px;
	padding:3px 0;
	border-radius: 10px
}

#font1 {
	color: white;
	font-size: 15px;
	font-weight: bold;
	text-align: center;
	margin:5px 0;
	font-wegiht:600;
}

#font2 {
	color: white;
	font-size: 12px;
	text-align: center;
}
.select_area{
	padding: 20px 20px;
}

.blind {
	overflow: hidden;
	position: absolute !important;
	width: 1px;
	height: 1px;
	border: 0;
	padding: 0;
	clip: rect(0, 0, 0, 0)
}

.wrap{
	min-width: 320px;
	min-height: 100%;
	max-width: 640px;
	color: #222;
	font-family: Noto Sans KR, sans-serif;
	font-size: 14px;
	line-height: 1.2;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	padding: 0
}

.category_option{
	display: block;
	margin-top: 8px;
	position: relative
}

.category_option .selected_txt{
	display: block;
	padding: 0 28px 0 16px;
	width: 100%;
	height: 48px;
	background-color: #fff;
	border: 1px solid #d3d3d3;
	border-radius: 6px;
	font-size: 15px;
	letter-spacing: -.15px;
	font-weight: 700;
	text-align: left;
	line-height: 46px
}

.category_option .ico-arr-down-gray{
	position: absolute;
	top: 50%;
	margin-top: -13px;
	right: 8px;
	width: 28px;
	height: 28px
}

.category_option select{
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 48px;
	opacity: 0
}

.category_list{
	padding: 15px 0 4px;
	border-bottom: 1px solid #ebebeb
}

.category_list:after {
	content: "";
	display: block;
	clear: both
}

.banner_inventory {
	margin-top: 12px
}

.banner_link {
	position: relative;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	overflow: hidden;
	padding: 13px 30px 13px 16px;
	border-radius: 10px
}

.applicable .banner_link{
	background-color: #41b979
}

.requested .banner_link{
	background-color: #f2f9f6;
	pointer-events: none;
	cursor: default
}


.banner_link:before {
	content: "";
	display: block;
	width: 34px;
	height: 34px;
	float: left;
	margin-right: 10px;
	background: url(/_nuxt/img/ico-inventory-express-01.73ecab9.svg) 0 0
		no-repeat;
	background-size: 34px 34px
}

.banner_detail{
	overflow: hidden
}

.banner_detail .banner_title{
	line-height: 17px;
	font-size: 14px;
	letter-spacing: -.21px;
	font-weight: 700
}

.banner_detail .banner_desc{
	line-height: 14px;
	margin-top: 2px;
	font-size: 12px;
	letter-spacing: -.06px;
	color: rgba(34, 34, 34, .5)
}

.link_inner{
	margin: 0 auto;
	max-width: 90px
}

.size{
	display: block;
	line-height: 17px;
	margin-top: -3px;
	font-size: 14px;
	font-weight:600
}

.size .ico-express{
	width: 11px;
	height: 12px;
	margin-right: -1px;
	margin-bottom: -1px
}

.price{
	display: block;
	line-height: 14px;
	margin-top: 1px;
	font-size: 12px;
	color: #222
}

.buy_before .select_item, .sell_before .select_item
	{
	height: 60px
}

.product{
	overflow: hidden;
	position: relative;
	padding-top: 100%;
	border-radius: 8px
}

.product:after {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background: rgba(0, 0, 0, 0)
}

.stock_list .stock_list_item .product {
	border-radius: 10px
}

.product.is_flat {
	border-radius: 0 !important
}

.product_img{
	position: absolute;
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	width: 81.5%;
	height: auto
}

.picture{
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex
}

.image{
	-o-object-fit: cover;
	object-fit: cover;
	width: 100%;
	height: 100%;
	image-rendering: -webkit-optimize-contrast
}

.product_info{
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	width: 100% .box[data-v-57f23419] {   
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	padding: 12px 18px 14px 14px;
	border-radius: 10px;
	color: #fff;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	position: relative
}

body{
	background-color: #fafafa
}



.buy_before{
	padding: 32px 32px 28px;
	-webkit-box-shadow: 0 4px 10px 0 rgba(0, 0, 0, .1);
	box-shadow: 0 4px 10px 0rgba(0, 0, 0, .1);
	background-color: #fff;
}

.buy_before[data-v-23c6d8a8] .product_info {
	padding-bottom: 20px
}

.buy_before_select {
	position: relative;
	min-height: 484px;
	border-top: 1px solid #ebebeb
}
.size{
	align: center;
}

</style>
</head>
<body>
	<div id="background-color">
		<div data-v-23c6d8a8="" data-v-7ab136e9="" class="container buy md">
			<div data-v-23c6d8a8="" class="content_area">
				<div data-v-23c6d8a8="" class="buy_before">
					<div data-v-23c6d8a8="" class="buy_before_check">
						<div data-v-299f50cf="" data-v-23c6d8a8="" class="product_info">
							<div data-v-299f50cf="" class="product_thumb">
								<div data-v-75e33658="" data-v-299f50cf="" class="product"
									style="background-color: rgb(246, 238, 237);">
									<picture data-v-548c90f9="" data-v-75e33658=""
										class="picture product_img">
									<source data-v-548c90f9="" type="image/webp"
										srcset="
                                        https://kream-phinf.pstatic.net/MjAyMDEwMjJfOCAg/MDAxNjAzMzQwOTUzNzMx.nCU7Bumo43r7JZcTRjq4blFOcj33dPIxNYW-_94RtWgg.rJwsoEL3W-f7pgpwfYISb-0HBItIWL04h7p8Ixyp8CUg.PNG/p_4cedd884b4a3427ca616bc31b3bf2867.png?type=m_webp
                                    " />
									<source data-v-548c90f9=""
										srcset="
                                        https://kream-phinf.pstatic.net/MjAyMDEwMjJfOCAg/MDAxNjAzMzQwOTUzNzMx.nCU7Bumo43r7JZcTRjq4blFOcj33dPIxNYW-_94RtWgg.rJwsoEL3W-f7pgpwfYISb-0HBItIWL04h7p8Ixyp8CUg.PNG/p_4cedd884b4a3427ca616bc31b3bf2867.png?type=m
                                    " />
									<img data-v-548c90f9="" alt="상품 이미지"
										src="https://kream-phinf.pstatic.net/MjAyMDEwMjJfOCAg/MDAxNjAzMzQwOTUzNzMx.nCU7Bumo43r7JZcTRjq4blFOcj33dPIxNYW-_94RtWgg.rJwsoEL3W-f7pgpwfYISb-0HBItIWL04h7p8Ixyp8CUg.PNG/p_4cedd884b4a3427ca616bc31b3bf2867.png?type=m"
										class="image" /> </picture>
									<!---->
									<!---->
									<!---->
								</div>
							</div>
							<div data-v-299f50cf="" class="product_detail">
								<p data-v-299f50cf="" class="code">555088-105</p>
								<p data-v-299f50cf="" class="name">Jordan 1 Retro High OG
									Black Mocha</p>
								<p data-v-299f50cf="" class="translated_name">조던 1 레트로 하이 OG
									블랙 모카</p>

							</div>
						</div>
						<div data-v-23c6d8a8="" class="buy_before_select">
							<div data-v-02c63ee6="" data-v-23c6d8a8=""
								class="select_area mo column_double" id="select_area">
								<!---->
								<ul data-v-02c63ee6="" class="select_list">

									<li data-v-02c63ee6="" class="select_item" id="select_item">
										<button data-v-02c63ee6="" role="button" aria-selected="false"
											class="select_link buy bid" id="button">
											<div data-v-02c63ee6="" class="link_inner">
												<span data-v-02c63ee6="" class="size"> 225 </span> <span
													data-v-02c63ee6="" class="price">구매입찰</span>
											</div>
										</button>
									</li>
									<li data-v-02c63ee6="" class="select_item">
										<button data-v-02c63ee6="" role="button" aria-selected="false"
											class="select_link buy bid">
											<div data-v-02c63ee6="" class="link_inner">
												<span data-v-02c63ee6="" class="size"> 230 </span> <span
													data-v-02c63ee6="" class="price">구매입찰</span>
											</div>
										</button>
									</li>
									<li data-v-02c63ee6="" class="select_item">
										<button data-v-02c63ee6="" role="button" aria-selected="false"
											class="select_link buy bid">
											<div data-v-02c63ee6="" class="link_inner">
												<span data-v-02c63ee6="" class="size"> 235 </span> <span
													data-v-02c63ee6="" class="price">구매입찰</span>
											</div>
										</button>
									</li>
									<li data-v-02c63ee6="" class="select_item">
										<button data-v-02c63ee6="" role="button" aria-selected="false"
											class="select_link buy bid">
											<div data-v-02c63ee6="" class="link_inner">
												<span data-v-02c63ee6="" class="size"> 235 </span> <span
													data-v-02c63ee6="" class="price">구매입찰</span>
											</div>
										</button>
									</li>
									<li data-v-02c63ee6="" class="select_item">
										<button data-v-02c63ee6="" role="button" aria-selected="false"
											class="select_link buy bid">
											<div data-v-02c63ee6="" class="link_inner">
												<span data-v-02c63ee6="" class="size"> 240 </span> <span
													data-v-02c63ee6="" class="price">구매입찰</span>
											</div>
										</button>
									</li>
									<li data-v-02c63ee6="" class="select_item">
										<button data-v-02c63ee6="" role="button" aria-selected="false"
											class="select_link buy">
											<div data-v-02c63ee6="" class="link_inner">
												<span data-v-02c63ee6="" class="size"> 240
												</span> <span data-v-02c63ee6="" class="price">780,000</span>
											</div>
										</button>
									</li>
									<li data-v-02c63ee6="" class="select_item">
										<button data-v-02c63ee6="" role="button" aria-selected="false"
											class="select_link buy bid">
											<div data-v-02c63ee6="" class="link_inner">
												<span data-v-02c63ee6="" class="size"> 245 </span> <span
													data-v-02c63ee6="" class="price">구매입찰</span>
											</div>
										</button>
									</li>
									<li data-v-02c63ee6="" class="select_item">
										<button data-v-02c63ee6="" role="button" aria-selected="false"
											class="select_link buy">
											<div data-v-02c63ee6="" class="link_inner">
												<span data-v-02c63ee6="" class="size"> 250
												</span> <span data-v-02c63ee6="" class="price">707,000</span>
											</div>
										</button>
									</li>
									<li data-v-02c63ee6="" class="select_item">
										<button data-v-02c63ee6="" role="button" aria-selected="false"
											class="select_link buy">
											<div data-v-02c63ee6="" class="link_inner">
												<span data-v-02c63ee6="" class="size">255
												</span> <span data-v-02c63ee6="" class="price">683,000</span>
											</div>
										</button>
									</li>
									<li data-v-02c63ee6="" class="select_item">
										<button data-v-02c63ee6="" role="button" aria-selected="false"
											class="select_link buy">
											<div data-v-02c63ee6="" class="link_inner">
												<span data-v-02c63ee6="" class="size">260
												</span> <span data-v-02c63ee6="" class="price">690,000</span>
											</div>
										</button>
									</li>
									<li data-v-02c63ee6="" class="select_item">
										<button data-v-02c63ee6="" role="button" aria-selected="false"
											class="select_link buy">
											<div data-v-02c63ee6="" class="link_inner">
												<span data-v-02c63ee6="" class="size">265
												</span> <span data-v-02c63ee6="" class="price">699,000</span>
											</div>
										</button>
									</li>
									<li data-v-02c63ee6="" class="select_item">
										<button data-v-02c63ee6="" role="button" aria-selected="false"
											class="select_link buy">
											<div data-v-02c63ee6="" class="link_inner">
												<span data-v-02c63ee6="" class="size">270
												</span> <span data-v-02c63ee6="" class="price">782,000</span>
											</div>
										</button>
									</li>
									<li data-v-02c63ee6="" class="select_item">
										<button data-v-02c63ee6="" role="button" aria-selected="false"
											class="select_link buy">
											<div data-v-02c63ee6="" class="link_inner">
												<span data-v-02c63ee6="" class="size">275
												</span> <span data-v-02c63ee6="" class="price">689,000</span>
											</div>
										</button>
									</li>
									<li data-v-02c63ee6="" class="select_item">
										<button data-v-02c63ee6="" role="button" aria-selected="false"
											class="select_link buy">
											<div data-v-02c63ee6="" class="link_inner">
												<span data-v-02c63ee6="" class="size">280
												</span> <span data-v-02c63ee6="" class="price">670,000</span>
											</div>
										</button>
									</li>
									<li data-v-02c63ee6="" class="select_item">
										<button data-v-02c63ee6="" role="button" aria-selected="false"
											class="select_link buy">
											<div data-v-02c63ee6="" class="link_inner">
												<span data-v-02c63ee6="" class="size"> 285
												</span> <span data-v-02c63ee6="" class="price">634,000</span>
											</div>
										</button>
									</li>
									<li data-v-02c63ee6="" class="select_item">
										<button data-v-02c63ee6="" role="button" aria-selected="false"
											class="select_link buy">
											<div data-v-02c63ee6="" class="link_inner">
												<span data-v-02c63ee6="" class="size"> 290
												</span> <span data-v-02c63ee6="" class="price">600,000</span>
											</div>
										</button>
									</li>
									<li data-v-02c63ee6="" class="select_item">
										<button data-v-02c63ee6="" role="button" aria-selected="false"
											class="select_link buy">
											<div data-v-02c63ee6="" class="link_inner">
												<span data-v-02c63ee6="" class="size">295
												</span> <span data-v-02c63ee6="" class="price">639,000</span>
											</div>
										</button>
									</li>
									<li data-v-02c63ee6="" class="select_item">
										<button data-v-02c63ee6="" role="button" aria-selected="false"
											class="select_link buy">
											<div data-v-02c63ee6="" class="link_inner">
												<span data-v-02c63ee6="" class="size">300
												</span> <span data-v-02c63ee6="" class="price">600,000</span>
											</div>
										</button>
									</li>
									<li data-v-02c63ee6="" class="select_item">
										<button data-v-02c63ee6="" role="button" aria-selected="false"
											class="select_link buy bid">
											<div data-v-02c63ee6="" class="link_inner">
												<span data-v-02c63ee6="" class="size"> 305 </span> <span
													data-v-02c63ee6="" class="price">구매입찰</span>
											</div>
										</button>
									</li>
									<li data-v-02c63ee6="" class="select_item">
										<button data-v-02c63ee6="" role="button" aria-selected="false"
											class="select_link buy">
											<div data-v-02c63ee6="" class="link_inner">
												<span data-v-02c63ee6="" class="size"> 310 </span> <span
													data-v-02c63ee6="" class="price">1,200,000</span>
											</div>
										</button>
									</li>
									<li data-v-02c63ee6="" class="select_item">
										<button data-v-02c63ee6="" role="button" aria-selected="false"
											class="select_link buy bid">
											<div data-v-02c63ee6="" class="link_inner">
												<span data-v-02c63ee6="" class="size"> 320 </span> <span
													data-v-02c63ee6="" class="price">구매입찰</span>
											</div>
										</button>
									</li>
								</ul>
								<br>
								<div id="black_button">
								<hr>
								<a href="">
									<div id="black_box">
										<div id="font1"></div>
										<div id="font2">일반배송(5-7일소요)</div>
									</div>
								</a>
								</div>
							</div>
							<!---->
						</div>
					</div>
				</div>
			</div>
			<!---->
			<!---->
		</div>

	</div>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#black_button').hide();
	$('.select_item').click(function(){
		$('#black_button').show();	
	})
});

$(function(){
	$('.select_item').each(function(){
		$(this).click(function(){
			$(this).css('border','1px solid black');
			$('.select_item').not(this).css('border', '1px solid #d3d3d3');
		});
	});
	
});




	
	




</script>
</html>