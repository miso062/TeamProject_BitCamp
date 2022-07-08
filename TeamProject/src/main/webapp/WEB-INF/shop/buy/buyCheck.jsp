<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.product[data-v-75e33658] {
	overflow: hidden;
	position: relative;
	padding-top: 100%;
	border-radius: 8px
}

.product[data-v-75e33658]:after {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background: rgba(0, 0, 0, 0)
}

.stock_list .stock_list_item .product[data-v-75e33658] {
	border-radius: 10px
}

.product.is_flat[data-v-75e33658] {
	border-radius: 0 !important
}

.product_img[data-v-75e33658] {
	position: absolute;
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	width: 81.5%;
	height: auto
}

.detail_stock .product_img[data-v-75e33658], .is_exclusive .product_img[data-v-75e33658],
	.lucky_draw_column .product_img[data-v-75e33658], .other_stock .product_img[data-v-75e33658],
	.stock .product_img[data-v-75e33658] {
	width: 100%;
	height: auto
}

.status_value[data-v-75e33658] {
	position: absolute;
	top: 10px;
	right: 10px;
	font-size: 12px;
	line-height: 20px
}

.product_date[data-v-75e33658] {
	position: absolute;
	top: 16px;
	left: 16px;
	min-width: 30px;
	text-align: center
}

.product_date .day[data-v-75e33658] {
	padding-top: 2px;
	line-height: 24px;
	font-size: 20px;
	letter-spacing: -.3px;
	font-weight: 700;
	letter-spacing: -.5px
}

.select_list[data-v-02c63ee6] {
	line-height: 0;
	margin: -4px;
	font-size: 0
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

[class*=column_double] .select_item[data-v-02c63ee6] {
	width: calc(50% - 8px)
}

.select_item.active[data-v-02c63ee6] {
	border-color: #222
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

.select_link.buy .price[data-v-02c63ee6] {
	color: #f15746
}

.select_link.sell .price[data-v-02c63ee6] {
	color: #31b46e
}

.select_link.bid .price[data-v-02c63ee6] {
	color: #222
}

.buy_before .select_item[data-v-02c63ee6], .sell_before .select_item[data-v-02c63ee6]
	{
	height: 60px
}

.buy_before .buy_product .product[data-v-75e33658],
	.inventory_item_product .product[data-v-75e33658], .layer_market_price .buy_product .product[data-v-75e33658],
	.sell_before .buy_product .product[data-v-75e33658] {
	padding-top: 0;
	width: 80px;
	height: 80px;
	-ms-flex-negative: 0;
	flex-shrink: 0;
	border-radius: 10px
}

.buy_before .buy_product .product_img[data-v-75e33658],
	.inventory_item_product .product_img[data-v-75e33658],
	.layer_market_price .buy_product .product_img[data-v-75e33658],
	.sell_before .buy_product .product_img[data-v-75e33658] {
	width: 100%
}

.stocked_status_mark[data-v-75e33658] {
	position: absolute;
	top: 10px;
	left: 10px;
	line-height: 13px;
	padding: 1px 4px 2px 3px;
	font-size: 11px;
	font-weight: 700;
	letter-spacing: -.5px;
	color: rgba(34, 34, 34, .8);
	background-color: #fff;
	border-radius: 14px;
	border: 1px solid rgba(34, 34, 34, .2);
	-webkit-box-sizing: border-box;
	box-sizing: border-box
}

.mo .stocked_status_mark[data-v-75e33658], .sm .stocked_status_mark[data-v-75e33658]
	{
	top: 8px;
	left: 8px
}

.layer_market_price .buy_product .product[data-v-75e33658] {
	width: 80px;
	height: 80px
}

.picture[data-v-548c90f9] {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex
}

.image[data-v-548c90f9] {
	-o-object-fit: cover;
	object-fit: cover;
	width: 100%;
	height: 100%;
	image-rendering: -webkit-optimize-contrast
}

.select_area[data-v-02c63ee6] {
	padding: 20px 0;
	min-height: 488px
}

.select_area.mo[data-v-02c63ee6], .select_area.sm[data-v-02c63ee6] {
	min-height: 0;
	overflow-y: auto;
	padding: 16px 16px 25px;
	background-color: #fafafa
}

}
.banner_link[data-v-e8c8b39e] {
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

.applicable .banner_link[data-v-e8c8b39e] {
	background-color: #41b979
}

.requested .banner_link[data-v-e8c8b39e] {
	background-color: #f2f9f6;
	pointer-events: none;
	cursor: default
}

.rejected .banner_link[data-v-e8c8b39e] {
	background-color: #f4f4f4;
	pointer-events: none;
	cursor: default
}

.available .banner_link[data-v-e8c8b39e] {
	background-color: rgba(34, 34, 34, .8)
}

.banner_link[data-v-e8c8b39e]:before {
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

.product_info[data-v-299f50cf] {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	width: 100%
}

.mo .product_info[data-v-299f50cf], .sm .product_info[data-v-299f50cf] {
	padding: 0 16px 16px
}

.product_thumb[data-v-299f50cf] {
	-webkit-box-flex: 0;
	-ms-flex: none;
	flex: none;
	width: 80px;
	height: 80px
}

.product_thumb .product[data-v-299f50cf] {
	border-radius: 10px
}

.title_area[data-v-30c0be66] {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	line-height: 38px;
	padding: 32px 32px 40px;
}

.title_area .btn[data-v-30c0be66] {
	margin-left: auto
}

.check_title[data-v-30c0be66] {
	font-size: 32px;
	letter-spacing: -.48px;
	font-weight: 700
}

.check_title .accent_text[data-v-30c0be66] {
	color: #f15746
}

.container.sell .check_title .accent_text[data-v-30c0be66] {
	color: #31b46e
}

.buy_product_area[data-v-30c0be66] {
	padding: 0 32px 18px
}

.buy_product_area .buy_product[data-v-30c0be66] {
	-webkit-box-align: start;
	-ms-flex-align: start;
	align-items: flex-start;
	padding: 0
}

.buy_product[data-v-30c0be66] {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	padding: 0 32px 22px;
	background-color: #fff
}

.buy_info[data-v-30c0be66] {
	overflow: hidden;
	-webkit-box-flex: 1;
	-ms-flex: 1;
	flex: 1;
	padding-left: 16px
}

.mo .dropdown_content[data-v-3aa49a5b], .sm .dropdown_content[data-v-3aa49a5b]
	{
	padding: 0
}

.check_list[data-v-c9dd64ec] {
	padding: 20px 0 32px
}

.check_list.mo[data-v-c9dd64ec], .check_list.sm[data-v-c9dd64ec] {
	padding: 8px 0 0
}

.check_list.mo .check_view[data-v-c9dd64ec], .check_list.sm .check_view[data-v-c9dd64ec]
	{
	margin-top: 5px
}

.check_list[data-v-c9dd64ec] {
	padding-bottom: 16px
}

.check_item[data-v-c9dd64ec] {
	padding: 19px 0 20px;
	border-top: 1px solid #ebebeb
}

.check_item[data-v-c9dd64ec]:first-child {
	border-top: none
}

section .check_item[data-v-c9dd64ec]:first-child {
	padding-top: 0
}

.step-2 .check_item[data-v-c9dd64ec]:last-child {
	font-weight: 600
}

.check_area[data-v-c9dd64ec] {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center
}

.checkbox_item[data-v-c9dd64ec] {
	margin-left: auto
}

.notice_maintext[data-v-c9dd64ec] {
	line-height: 18px;
	font-size: 15px;
	letter-spacing: -.15px;
	letter-spacing: -.01px
}

.notice_subtext[data-v-c9dd64ec] {
	margin-top: 4px;
	line-height: 16px;
	font-size: 13px;
	letter-spacing: -.07px;
	letter-spacing: -.05px;
	color: rgba(34, 34, 34, .5)
}

.check_view[data-v-c9dd64ec] {
	margin-top: 8px;
	display: inline-block;
	vertical-align: top;
	line-height: 20px;
	font-size: 14px;
	letter-spacing: -.21px;
	letter-spacing: -.15px;
	color: #1d85e6
}

.check_view[data-v-c9dd64ec], .check_view[data-v-c9dd64ec]:hover {
	text-decoration: underline
}

.buy_before_check .check_list.mo[data-v-4146ec1a], .buy_before_check .check_list.sm[data-v-4146ec1a],
	.sell_before_check .check_list.mo[data-v-4146ec1a], .sell_before_check .check_list.sm[data-v-4146ec1a]
	{
	margin: 0;
	padding: 0 24px 12px;
	border-top: 8px solid #f4f4f4
}

.buy_before_check .check_list.sm[data-v-4146ec1a], .sell_before_check .check_list.sm[data-v-4146ec1a]
	{
	padding-left: 16px;
	padding-right: 16px
}

.btn_confirm[data-v-4146ec1a] {
	padding: 0 32px 32px
}

body, button, dd, div, dl, dt, fieldset, figcaption, figure, form, h1,
	h2, h3, h4, h5, h6, input, legend, li, ol, p, select, table, td,
	textarea, th, ul {
	margin: 0;
}

.content[data-v-66e3a22e] {
	margin: 0 auto;
	padding: 60px 40px 160px;
	max-width: 780px
}

.mo .btn_confirm[data-v-4146ec1a], .sm .btn_confirm[data-v-4146ec1a] {
	padding-left: 24px;
	padding-right: 24px;
	padding-bottom: 32px
}

.payment_inventory .notice_maintext[data-v-c9dd64ec] {
	font-size: 16px;
	letter-spacing: -.16px
}

.payment_inventory .notice_subtext[data-v-c9dd64ec] {
	font-size: 14px;
	letter-spacing: -.21px
}

.wrap_btn[data-v-0a0e4784] {
	margin: 20px 16px 0
}

.buy_before_check .check_list[data-v-4146ec1a], .sell_before_check .check_list[data-v-4146ec1a]
	{
	margin: 0 32px 8px;
	padding: 0;
	border-top: 2px solid #222
}

.sm .btn_confirm[data-v-4146ec1a] {
	padding-left: 16px;
	padding-right: 16px
}

.container.buy[data-v-66e3a22e] {
	background-color: #fafafa
}

.container.buy.mo[data-v-66e3a22e], .container.buy.sm[data-v-66e3a22e] {
	background-color: #fff
}

.container.buy.mo .content[data-v-66e3a22e], .container.buy.sm .content[data-v-66e3a22e]
	{
	padding: 0
}

body[data-v-66e3a22e] {
	background-color: #fafafa
}

.buy_before[data-v-66e3a22e] {
	-webkit-box-shadow: 0 4px 10px 0 rgba(0, 0, 0, .1);
	box-shadow: 0 4px 10px 0 rgba(0, 0, 0, .1)
}

.buy_before_check[data-v-66e3a22e] {
	background-color: #fff
}

.main[data-v-9d0b9634], .wrap[data-v-9d0b9634] {
	width: 100%;
	height: 100%
}

.wrap[data-v-9d0b9634] {
	margin: 0 auto
}

.container[data-v-9d0b9634] {
	display: table;
	width: 100%;
	height: 100%
}

.wrap_exception[data-v-9d0b9634] {
	display: table-cell;
	vertical-align: middle;
	text-align: center
}

body, button, dd, div, dl, dt, fieldset, figcaption, figure, form, h1,
	h2, h3, h4, h5, h6, input, legend, li, ol, p, select, table, td,
	textarea, th, ul {
	margin: 0;
	padding: 0;
}

body, html {
	height: 100%;
	-ms-text-size-adjust: none;
	-moz-text-size-adjust: none;
	-webkit-text-size-adjust: none;
	-moz-osx-font-smoothing: grayscale;
	-webkit-font-smoothing: antialiased;
	-webkit-overflow-scrolling: touch;
	-ms-touch-action: manipulation;
	touch-action: manipulation
}

body, button, input, select, table, textarea {
	font-family: -apple-system, BlinkMacSystemFont, Roboto,
		AppleSDGothicNeo-Regular, NanumBarunGothic, NanumGothic, 나눔고딕,
		Segoe UI, Helveica, Arial, Malgun Gothic, Dotum, sans-serif;
	color: #222
}

a {
	color: inherit;
	-webkit-tap-highlight-color: rgba(0, 0, 0, .1)
}

a, a:active, a:focus, a:hover {
	text-decoration: none
}

.blind, .u_skip {
	overflow: hidden !important;
	position: absolute !important;
	clip: rect(0, 0, 0, 0) !important;
	width: 1px !important;
	height: 1px !important;
	margin: -1px !important
}

*, :after, :before {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-tap-highlight-color: transparent
}

[class*=brand-] {
	width: auto;
	height: 20px
}

[class*=ico-] {
	width: 24px;
	height: 24px
}

.br_pc {
	display: block
}

.br_mo {
	display: none
}

.is_hidden {
	display: none !important
}

@media ( max-width :768px) {
	.br_pc {
		display: none
	}
	.br_mo {
		display: block
	}
}

.page-enter-active {
	-webkit-animation: erase-in .3s;
	animation: erase-in .3s
}

.page-leave-active {
	-webkit-animation: erase-out .1s;
	animation: erase-out .1s
}

@
-webkit-keyframes erase-in { 0%{
	-webkit-transform: scale(1);
	transform: scale(1);
	opacity: 0
}

to {
	-webkit-transform: scale(1);
	transform: scale(1);
	opacity: 1
}

}
@
keyframes erase-in { 0%{
	-webkit-transform: scale(1);
	transform: scale(1);
	opacity: 0
}

to {
	-webkit-transform: scale(1);
	transform: scale(1);
	opacity: 1
}

}
@
-webkit-keyframes erase-out { 0%{
	-webkit-transform: scale(1);
	transform: scale(1);
	opacity: 1
}

to {
	-webkit-transform: scale(1);
	transform: scale(1);
	opacity: 0
}

}
@
keyframes erase-out { 0%{
	-webkit-transform: scale(1);
	transform: scale(1);
	opacity: 1
}

to {
	-webkit-transform: scale(1);
	transform: scale(1);
	opacity: 0
}

}
@
-webkit-keyframes op-erase-in { 0%{
	-webkit-transform: scale(1);
	transform: scale(1);
	opacity: .4
}

to {
	-webkit-transform: scale(1);
	transform: scale(1);
	opacity: 1
}

}
@
keyframes op-erase-in { 0%{
	-webkit-transform: scale(1);
	transform: scale(1);
	opacity: .4
}

to {
	-webkit-transform: scale(1);
	transform: scale(1);
	opacity: 1
}

}
@
-webkit-keyframes op-erase-out { 0%{
	-webkit-transform: scale(1);
	transform: scale(1);
	opacity: 1
}

to {
	-webkit-transform: scale(1);
	transform: scale(1);
	opacity: .2
}

}
@
keyframes op-erase-out { 0%{
	-webkit-transform: scale(1);
	transform: scale(1);
	opacity: 1
}

to {
	-webkit-transform: scale(1);
	transform: scale(1);
	opacity: .2
}

}
.kream-op-enter, .kream-op-enter-active {
	-webkit-animation: op-erase-in .7s;
	animation: op-erase-in .7s
}

.kream-op-leave, .kream-op-leave-active {
	-webkit-animation: op-erase-out .7s;
	animation: op-erase-out .7s
}

.kream-op-speedy-enter, .kream-op-speedy-enter-active {
	-webkit-animation: erase-in .5s;
	animation: erase-in .5s
}

.kream-op-speedy-leave, .kream-op-speedy-leave-active {
	-webkit-animation: erase-out .3s;
	animation: erase-out .3s
}
</style>
</head>
<body>
	<div data-v-66e3a22e="" data-v-7ab136e9="" class="container buy md">
		<div data-v-66e3a22e="" class="content">
			<div data-v-66e3a22e="" class="buy_before">
				<div data-v-66e3a22e="" class="buy_before_check">
					<div data-v-30c0be66="" data-v-66e3a22e="">
						<div data-v-30c0be66="" class="title_area">
							<h2 data-v-30c0be66="" class="check_title">
								<span data-v-30c0be66="" class="accent_text">구매</span>하시기 전에 <br
									data-v-30c0be66="" class="br_mo">꼭 확인하세요.
							</h2>
						</div>
						<div data-v-30c0be66="" class="buy_product_area">
							<div data-v-30c0be66="" class="buy_product">
								<div data-v-75e33658="" data-v-30c0be66="" class="product"
									style="background-color: rgb(246, 238, 237);">
									<picture data-v-548c90f9="" data-v-75e33658=""
										class="picture product_img">
									<source data-v-548c90f9="" type="image/webp"
										srcset="https://kream-phinf.pstatic.net/MjAyMDEwMjJfOCAg/MDAxNjAzMzQwOTUzNzMx.nCU7Bumo43r7JZcTRjq4blFOcj33dPIxNYW-_94RtWgg.rJwsoEL3W-f7pgpwfYISb-0HBItIWL04h7p8Ixyp8CUg.PNG/p_4cedd884b4a3427ca616bc31b3bf2867.png?type=l_webp">
									<source data-v-548c90f9=""
										srcset="https://kream-phinf.pstatic.net/MjAyMDEwMjJfOCAg/MDAxNjAzMzQwOTUzNzMx.nCU7Bumo43r7JZcTRjq4blFOcj33dPIxNYW-_94RtWgg.rJwsoEL3W-f7pgpwfYISb-0HBItIWL04h7p8Ixyp8CUg.PNG/p_4cedd884b4a3427ca616bc31b3bf2867.png?type=l">
									<img data-v-548c90f9="" alt="상품 이미지"
										src="https://kream-phinf.pstatic.net/MjAyMDEwMjJfOCAg/MDAxNjAzMzQwOTUzNzMx.nCU7Bumo43r7JZcTRjq4blFOcj33dPIxNYW-_94RtWgg.rJwsoEL3W-f7pgpwfYISb-0HBItIWL04h7p8Ixyp8CUg.PNG/p_4cedd884b4a3427ca616bc31b3bf2867.png?type=l"
										class="image"></picture>
									<!---->
									<!---->
									<!---->
								</div>
								<div data-v-30c0be66="" class="buy_info">
									<div data-v-56991a6e="" data-v-30c0be66="" class="model_info">
										<strong data-v-56991a6e="" class="model_number"> <!---->
											<span data-v-56991a6e="" class="text">555088-105</span>
										</strong>
										<p data-v-56991a6e="" class="model_title">Jordan 1 Retro
											High OG Black Mocha</p>
										<p data-v-56991a6e="" class="model_ko">조던 1 레트로 하이 OG 블랙
											모카</p>
										<div data-v-56991a6e="" class="model_desc">
											<p data-v-56991a6e="" class="size_txt">240(US 5.5)</p>
											<!---->
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div data-v-4146ec1a="" data-v-66e3a22e="" buy-type="bid">
						<ul data-v-c9dd64ec="" data-v-4146ec1a="" class="check_list md">
							<li data-v-c9dd64ec="" class="check_item"><a
								data-v-c9dd64ec="" href="#" class="check_area">
									<div data-v-c9dd64ec="" class="notice_group">
										<p data-v-c9dd64ec="" class="notice_maintext">구매하려는 상품이
											맞습니다.</p>
										<p data-v-c9dd64ec="" class="notice_subtext">상품 이미지, 모델번호,
											출시일, 상품명, 사이즈를 한 번 더 확인했습니다.</p>
										<!---->
									</div>
									<!-- <div data-v-4c714e9f="" data-v-c9dd64ec=""
										class="checkbox_item">
										<input data-v-4c714e9f="" id="undefined" type="checkbox"
											name="checklist" class="blind"><label
											data-v-4c714e9f="" for="undefined" class="check_label"><svg
												data-v-4c714e9f="" xmlns="http://www.w3.org/2000/svg"
												class="icon sprite-icons ico-check-inactive">
												<use data-v-4c714e9f=""
													href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-check-inactive"
													xlink:href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-check-inactive"></use></svg>
											</label>
									</div> -->
							</a></li>
							<li data-v-c9dd64ec="" class="check_item"><a
								data-v-c9dd64ec="" href="#" class="check_area"><div
										data-v-c9dd64ec="" class="notice_group">
										<p data-v-c9dd64ec="" class="notice_maintext">국내/해외에서 발매한
											정품 · 새상품입니다.</p>
										<p data-v-c9dd64ec="" class="notice_subtext">모든 구성품이
											그대로이며, 한 번도 착용하지 않은 정품・새상품입니다. 국내 발매 상품 여부는 확인드리지 않습니다.</p>
										<!---->
									</div>
									<!-- <div data-v-4c714e9f="" data-v-c9dd64ec=""
										class="checkbox_item">
										<input data-v-4c714e9f="" id="undefined" type="checkbox"
											name="checklist" class="blind"><label
											data-v-4c714e9f="" for="undefined" class="check_label"><svg
												data-v-4c714e9f="" xmlns="http://www.w3.org/2000/svg"
												class="icon sprite-icons ico-check-inactive">
												<use data-v-4c714e9f=""
													href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-check-inactive"
													xlink:href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-check-inactive"></use></svg>
											</label>
									</div> -->
									
									</a></li>
							<li data-v-c9dd64ec="" class="check_item"><a
								data-v-c9dd64ec="" href="#" class="check_area"><div
										data-v-c9dd64ec="" class="notice_group">
										<p data-v-c9dd64ec="" class="notice_maintext">제조사에서 불량으로
											인정하지 않는 기준은 하자로 판단하지 않습니다.</p>
										<p data-v-c9dd64ec="" class="notice_subtext">박스/패키지와 상품
											컨디션에 민감하시다면 검수 기준을 반드시 확인하시기 바랍니다.</p>
										<div data-v-c9dd64ec="">
											<a data-v-c9dd64ec=""
												href="https://kream.co.kr/auth_policy?category=sneakers"
												target="_blank" class="check_view"> 검수기준 보기 </a>
										</div>
									</div>
									<!-- <div data-v-4c714e9f="" data-v-c9dd64ec=""
										class="checkbox_item">
										<input data-v-4c714e9f="" id="undefined" type="checkbox"
											name="checklist" class="blind"><label
											data-v-4c714e9f="" for="undefined" class="check_label"><svg
												data-v-4c714e9f="" xmlns="http://www.w3.org/2000/svg"
												class="icon sprite-icons ico-check-inactive">
												<use data-v-4c714e9f=""
													href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-check-inactive"
													xlink:href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-check-inactive"></use></svg>
											</label>
									</div> -->
									
									
									</a></li>
							<li data-v-c9dd64ec="" class="check_item"><a
								data-v-c9dd64ec="" href="#" class="check_area">
									<div data-v-c9dd64ec="" class="notice_group">
										<p data-v-c9dd64ec="" class="notice_maintext">KREAM의 최신
											이용정책을 모두 확인하였으며, 구매를 계속합니다.</p>
										<p data-v-c9dd64ec="" class="notice_subtext">건전하고 안전한 거래를
											위해 반드시 숙지해야 할 미입고, 페널티, 부정거래 등의 이용정책을 확인했습니다.</p>
										<div data-v-c9dd64ec="">
											<a data-v-c9dd64ec=""
												href="https://kream.co.kr/faq?category=policy"
												target="_blank" class="check_view"> 이용정책 보기 </a>
										</div>
									</div>
									<!-- <div data-v-4c714e9f="" data-v-c9dd64ec=""
										class="checkbox_item">
										<input data-v-4c714e9f="" id="undefined" type="checkbox"
											name="checklist" class="blind"><label
											data-v-4c714e9f="" for="undefined" class="check_label"><svg
												data-v-4c714e9f="" xmlns="http://www.w3.org/2000/svg"
												class="icon sprite-icons ico-check-inactive">
												<use data-v-4c714e9f=""
													href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-check-inactive"
													xlink:href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-check-inactive"></use></svg>
											</label>
									</div> -->
							</a></li>
						</ul>
						<div data-v-4146ec1a="" class="btn_confirm md">
							<a data-v-3d1bcc82="" data-v-4146ec1a="" disabled="disabled"
								href="#" class="btn full solid disabled"> 구매 계속 </a>
						</div>
						<!---->
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>