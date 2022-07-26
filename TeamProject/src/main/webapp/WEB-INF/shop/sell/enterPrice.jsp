<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">
.notice[data-v-2ab7e5d3] {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	padding: 10px 40px;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center
}

.notice.seller_notice[data-v-2ab7e5d3] {
	background-color: #e7efec
}

.notice.seller_notice .tag[data-v-2ab7e5d3] {
	background-color: #41b979
}

.notice.seller_notice .benefit[data-v-2ab7e5d3] {
	color: #31b46e
}

.notice.seller_notice[data-v-2ab7e5d3] {
	background-color: #fef7f6
}

.notice.seller_notice .tag[data-v-2ab7e5d3] {
	background-color: #41b979
}

.notice.seller_notice .benefit[data-v-2ab7e5d3] {
	color: #f15746
}

.notice .tag[data-v-2ab7e5d3] {
	padding: 3px 4px 2px;
	border-radius: 4px;
	font-size: 12px;
	letter-spacing: -.06px;
	color: #fafafa
}

.notice .condition[data-v-2ab7e5d3] {
	padding-left: 6px;
	font-size: 14px;
	letter-spacing: -.21px;
	font-weight: 600;
	letter-spacing: -.07px
}

.notice .arr-right-gray[data-v-2ab7e5d3] {
	width: 20px;
	height: 20px
}

.mo .notice[data-v-2ab7e5d3], .sm .notice[data-v-2ab7e5d3] {
	padding-left: 24px;
	padding-right: 20px;
	-webkit-box-pack: start;
	-ms-flex-pack: start;
	justify-content: flex-start;
	margin-bottom: 20px
}

.mo .notice .arr-right-gray[data-v-2ab7e5d3], .sm .notice .arr-right-gray[data-v-2ab7e5d3]
	{
	margin-left: auto
}

.sm .notice[data-v-2ab7e5d3] {
	padding-left: 16px;
	padding-right: 10px
}

.sm .sell_product[data-v-2ab7e5d3] {
	padding-left: 16px;
	padding-right: 16px
}

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

.sell_complete .product[data-v-75e33658] {
	border-radius: 0;
	padding-top: 0;
	height: 200px
}

.sell_complete .product_img[data-v-75e33658] {
	width: 200px
}

.sell_complete.mo .product[data-v-75e33658] {
	height: 410px
}

.sell_complete.mo .product_img[data-v-75e33658] {
	width: 410px
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
.product_info_area[data-v-1643775e] {
	padding: 32px
}

.product_info[data-v-1643775e] {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	width: 100%;
	background-color: #fff
}

.product_info[data-v-1643775e] .product {
	padding-top: 0;
	width: 80px;
	height: 80px;
	-ms-flex-negative: 0;
	flex-shrink: 0;
	border-radius: 10px
}

.product_info[data-v-1643775e] .product .product_img {
	width: 100%
}

.product_detail[data-v-1643775e] {
	overflow: hidden;
	-webkit-box-flex: 1;
	-ms-flex: 1;
	flex: 1;
	padding-left: 16px
}

.product_detail .model_number[data-v-1643775e] {
	display: block;
	line-height: 17px;
	font-size: 14px;
	overflow: hidden;
	-o-text-overflow: ellipsis;
	text-overflow: ellipsis;
	white-space: nowrap
}

 .product_detail .model_number .mark_95[data-v-1643775e] {
	-webkit-box-flex: 0;
	-ms-flex: none;
	flex: none;
	display: inline-block;
	vertical-align: top;
	padding: 1px 5px 3px;
	line-height: 13px;
	margin-right: 6px;
	color: #222;
	font-size: 11px;
	font-weight: 600;
	border: 1px solid #d3d3d3;
	border-radius: 20px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box
}

.product_detail .model_title[data-v-1643775e] {
	line-height: 17px;
	margin-top: 1px;
	font-size: 14px
}

.product_detail .model_ko[data-v-1643775e], .product_detail .model_title[data-v-1643775e]
	{
	overflow: hidden;
	-o-text-overflow: ellipsis;
	text-overflow: ellipsis;
	white-space: nowrap
}

.product_detail .model_ko[data-v-1643775e] {
	line-height: 16px;
	margin-top: 2px;
	font-size: 13px;
	letter-spacing: -.07px;
	letter-spacing: -.05px;
	color: rgba(34, 34, 34, .5)
}

.product_detail .model_desc[data-v-1643775e] {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: start;
	-ms-flex-align: start;
	align-items: flex-start;
	-webkit-box-pack: justify;
	-ms-flex-pack: justify;
	justify-content: space-between;
	margin-top: 7px
}

.product_detail .model_desc .size_txt[data-v-1643775e] {
	line-height: 17px;
	font-size: 14px;
	font-weight: 700;
	letter-spacing: 0
}

.product_detail .model_desc .express_mark[data-v-1643775e] {
	position: relative;
	display: inline-block;
	vertical-align: top;
	line-height: 11px;
	padding: 3px 5.5px 4px 17px;
	color: #31b46e;
	border: 1px solid #31b46e;
	border-radius: 2px;
	font-size: 11px;
	letter-spacing: -.33px
}

.product_detail .model_desc .express_mark[data-v-1643775e]:before {
	content: "";
	position: absolute;
	left: 3.5px;
	top: 3px;
	width: 11px;
	height: 13px;
	background: url(/_nuxt/img/ico-express.8dac9dc.svg) 0 0 no-repeat;
	background-size: 11px 13px
}

section[data-v-4963821f]:first-of-type {
	border-top: 0
}

.section_title[data-v-4963821f] {
	padding-bottom: 16px
}

.section_title .title_txt[data-v-4963821f] {
	font-size: 14px;
	letter-spacing: -.21px
}

.deadline_txt[data-v-4963821f] {
	font-size: 15px;
	letter-spacing: -.15px
}
.deadline_txt{
	font-size:15px
}

.deadline_tab[data-v-4963821f] {
	margin-top: 8px;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: justify;
	-ms-flex-pack: justify;
	justify-content: space-between
}

.deadline_tab .btn[data-v-4963821f] {
	-webkit-box-flex: 1;
	-ms-flex: 1;
	flex: 1;
	white-space: nowrap
}

.deadline_tab .btn+.btn[data-v-4963821f] {
	margin-left: 4px
}

.deadline_tab .btn[data-v-4963821f]:hover {
	background-color: #ebebeb
}

.deadline_tab .btn.is_active[data-v-4963821f] {
	border: 1px solid #222;
	background-color: #fff;
	font-weight: 700;
	color: #222
}

.mo .deadline_tab .btn[data-v-4963821f], .sm .deadline_tab .btn[data-v-4963821f]
	{
	height: 35px;
	line-height: 33px;
	font-size: 12px;
	letter-spacing: -.06px;
	border-radius: 10px
}

.price_total[data-v-679d7250] {
	padding-top: 16px;
	padding-bottom: 12px
}

.price_total.has_warning[data-v-679d7250] {
	position: relative
}

.price_total.has_warning .price_warning[data-v-679d7250] {
	font-size: 13px;
	color: #f15746;
	position: absolute;
	right: 0;
	top: 0
}

.price_warning{
	font-size: 13px;
	color: #f15746;
    position: absolute;
    margin-left: 445px;
}

.price_total.has_warning .price_warning em[data-v-679d7250] {
	font-weight: 700
}

.price_total.has_warning .price_box[data-v-679d7250] {
	-webkit-box-align: end;
	-ms-flex-align: end;
	align-items: end
}

.price_total.has_warning .price[data-v-679d7250] {
	margin-top: 17px
}

.price_box[data-v-679d7250] {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: justify;
	-ms-flex-pack: justify;
	justify-content: space-between;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center
}

.price_box .price_title[data-v-679d7250] {
	font-size: 15px;
	letter-spacing: -.15px;
	font-weight: 700;
	letter-spacing: -.01px
}

.price_box .price[data-v-679d7250] {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	color: #f15746
}

.container.sell .price_box .price[data-v-679d7250] {
	color: #31b46e
}

.price_box .empty_price[data-v-679d7250] {
	color: #222 !important
}

.price_box .amount[data-v-679d7250] {
	line-height: 26px;
	font-style: italic;
	font-size: 20px;
	letter-spacing: -.1px;
	font-weight: 600;
	letter-spacing: normal
}


.price_box .unit[data-v-679d7250] {
	line-height: 26px;
	font-size: 20px;
	letter-spacing: -.3px;
	font-weight: 700;
	letter-spacing: -.15px
}
.unit{
	font-size:20px;
	font-weight: 700;
	padding: 2px
}
.price_box.price_empty .price_title[data-v-679d7250] {
	font-size: 13px;
	letter-spacing: -.07px
}

.price_box.price_empty .price_empty_desc[data-v-679d7250] {
	color: rgba(34, 34, 34, .5)
}


.order_info .price_box[data-v-679d7250] {
	display: block
}

.order_info .price_box .price_title[data-v-679d7250] {
	width: 100%;
	font-size: 14px
}

.order_info .price_box .price[data-v-679d7250] {
	width: 100%;
	text-align: right;
	display: block
}

.order_info.has_warning .price[data-v-679d7250] {
	margin-top: 0
}

.sell_total_price .price_title[data-v-679d7250] {
	font-size: 13px;
	letter-spacing: -.07px
}

.sell_total_confirm[data-v-65a8cedc] {
	padding: 0 32px 32px;
	border-top: 1px solid #ebebeb;
	background-color: #fff
}

.step-2 .sell_total_confirm[data-v-65a8cedc] {
	border-top: 0
}

.btn_confirm[data-v-65a8cedc] .btn {
	font-weight: 600
}

.sell_total_price[data-v-65a8cedc] {
	padding: 14px 24px 12px;
	background-color: #fff;
	border-top: 1px solid #ebebeb;
	z-index: 1
}

.step-2 .sell_total_price[data-v-65a8cedc] {
	margin-top: 20px
}

.mo .sell_total_price[data-v-65a8cedc], .sm .sell_total_price[data-v-65a8cedc]
	{
	padding: 0 16px 32px
}

.price_list[data-v-638c1354] {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	padding-top: 28px;
	padding-bottom: 22px;
	border-top: 1px solid #ebebeb
}

.price_list .list_item[data-v-638c1354] {
	-webkit-box-flex: 1;
	-ms-flex: 1;
	flex: 1;
	text-align: center
}

.price_list .list_item+.list_item[data-v-638c1354] {
	position: relative
}

.price_list .list_item+.list_item[data-v-638c1354]:before {
	content: "";
	position: absolute;
	top: 1px;
	left: 0;
	width: 1px;
	height: 40px;
	background-color: #ebebeb
}

.price_list .title[data-v-638c1354] {
	line-height: 14px;
	font-size: 12px;
	letter-spacing: -.06px;
	color: rgba(34, 34, 34, .5)
}

.price_list .price[data-v-638c1354], .price_list .unit[data-v-638c1354]
	{
	display: inline-block;
	line-height: 24px;
	vertical-align: top;
	font-size: 15px;
	 font-weight: 500; 
}

.mo .price_list[data-v-638c1354], .sm .price_list[data-v-638c1354] {
	padding-top: 20px;
	border-top: none
}

.tab_area[data-v-b6b2883e] {
	position: relative
}

.tab_area .tab_list[data-v-b6b2883e] {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	border-radius: 10px;
	background-color: #f4f4f4
}

.tab_area .item[data-v-b6b2883e] {
	-webkit-box-flex: 1;
	-ms-flex: 1;
	flex: 1;
	margin: 2px
}

.tab_area .item.on .item_link[data-v-b6b2883e] {
	background-color: #fff;
	color: #222;
	font-weight: 700;
	-webkit-box-shadow: 0 0 0 .5px #ebebeb inset;
	box-shadow: inset 0 0 0 .5px #ebebeb
}

.tab_area .item_link[data-v-b6b2883e] {
	display: block;
	line-height: 16px;
	padding: 7px 0 9px;
	font-size: 13px;
	letter-spacing: -.07px;
	letter-spacing: -.05px;
	text-align: center;
	border-radius: 8px;
	background-color: #f4f4f4;
	color: rgba(34, 34, 34, .8)
}

.tab_area .item.disabled[data-v-b6b2883e] {
	cursor: default
}

.tab_area .item.disabled a[data-v-b6b2883e] {
	cursor: default;
	pointer-events: none
}

.tab_area.sell_tab .tab_list[data-v-b6b2883e] {
	border-radius: 80px;
	border: 1px solid #ebebeb;
	margin-bottom: 27px
}

.mo .tab_area.sell_tab .tab_list[data-v-b6b2883e], .sm .tab_area.sell_tab .tab_list[data-v-b6b2883e]
	{
	margin-bottom: 28px
}

.tab_area.sell_tab .item[data-v-b6b2883e] {
	margin: 3px 0
}

.tab_area.sell_tab .item[data-v-b6b2883e]:first-child {
	margin-left: 3px
}

.tab_area.sell_tab .item[data-v-b6b2883e]:last-child {
	margin-right: 3px
}

.tab_area.sell_tab .item.on .item_link[data-v-b6b2883e] {
	color: #fff;
	font-weight: 700;
	background-color: #41b979
}

.container.sell .tab_area.sell_tab .item.on .item_link[data-v-b6b2883e] {
	background-color: #41b979
}

.tab_area.sell_tab .item .item_link[data-v-b6b2883e] {
	border-radius: 80px;
	padding: 14px 0;
	font-size: 14px;
	letter-spacing: -.21px;
	letter-spacing: .15px;
	color: rgba(34, 34, 34, .8)
}

.tab_area.auth_policy_tab .item[data-v-b6b2883e], .tab_area.delivery_tab .item[data-v-b6b2883e]
	{
	margin: 0
}

.tab_area.auth_policy_tab .item:first-child .item_link[data-v-b6b2883e],
	.tab_area.delivery_tab .item:first-child .item_link[data-v-b6b2883e] {
	border-left-width: 0
}

.tab_area.auth_policy_tab .item.on .item_link[data-v-b6b2883e],
	.tab_area.delivery_tab .item.on .item_link[data-v-b6b2883e] {
	border-bottom-color: rgba(0, 0, 0, 0);
	color: #222
}

.tab_area.auth_policy_tab .item_link[data-v-b6b2883e], .tab_area.delivery_tab .item_link[data-v-b6b2883e]
	{
	padding: 11px 0;
	background-color: #f8f8f8;
	border-radius: 0;
	border: 1px solid #ebebeb;
	border-right-width: 0;
	font-size: 13px;
	letter-spacing: -.07px;
	color: rgba(34, 34, 34, .5)
}

.tab_content[data-v-3c9dd7e9] {
	overflow: hidden;
	display: none
}

.show[data-v-3c9dd7e9] {
	display: block;
	height: auto
}

.price_now_box[data-v-03750f89] {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: justify;
	-ms-flex-pack: justify;
	justify-content: space-between;
	padding-bottom: 10px;
	border-bottom: 2px solid #ebebeb
}


.price_now_title[data-v-03750f89] {
	font-size: 14px;
	letter-spacing: -.21px;
	font-weight: 700;
	min-width: 63px
}

.price[data-v-03750f89] {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	margin-top: 15px
}

.input_amount[data-v-03750f89] {
	line-height: 26px;
	font-size: 24px;
	letter-spacing: -.12px;
	font-weight: 900;
	text-align: right;
	font-style: normal;
	letter-spacing: normal;
	max-width: 200px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	border-width: 0;
	overflow: visible;
	color: #222;
	font-weight: 600;
	caret-color:#222
	
}
input.input_amount[data-v-03750f89]:placeholder-shown {
    font-size: 20px;
    color: #ebebeb;
}   
input {
    writing-mode: horizontal-tb !important;
    text-rendering: auto;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    -webkit-rtl-ordering: logical;
    cursor: text;
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
	letter-spacing: -.07px
}

.price_addition+.price_addition[data-v-3a2a7b6b] {
	margin-top: 2px
}

.price_addition.sell_point .price_title[data-v-3a2a7b6b] {
	color: rgba(34, 34, 34, .8)
}

.price_addition.is_dark .price_title[data-v-3a2a7b6b] {
	color: #222
}

.price_title[data-v-3a2a7b6b] {
	color: rgba(34, 34, 34, .5)
}

.price_title.dark[data-v-3a2a7b6b] {
	color: #222
}

.price_title.sell[data-v-3a2a7b6b] {
	color: #f15746
}

.price_title .btn_title[data-v-3a2a7b6b] {
	position: relative;
	top: 4px;
	padding: 0 2px
}

.price_title .btn_title svg[data-v-3a2a7b6b] {
	width: 15px;
	height: 15px
}

.price_text[data-v-3a2a7b6b] {
	text-align: right;
	white-space: nowrap;
	color: #222;
	font-size: 14px;
	letter-spacing: -.21px
}

.price_text[data-v-3a2a7b6b]:after {
	content: "";
	display: block;
	clear: both
}

.price_text[data-v-3a2a7b6b].bold {
	font-weight: 700
}

.price_text[data-v-3a2a7b6b].semibold {
	font-weight: 600
}

.price_text[data-v-3a2a7b6b].sell {
	color: #f15746
}

.price_text[data-v-3a2a7b6b].sell {
	color: #31b46e
}

.price_text[data-v-3a2a7b6b] .multi_line {
	text-align: right;
	padding: 7px 0
}

.price_text[data-v-3a2a7b6b] .multi_line small {
	font-size: 13px;
	letter-spacing: -.07px;
	color: rgba(34, 34, 34, .5)
}


.section_title[data-v-72f3c169] {
	padding-bottom: 16px
}

.section_title .title_txt[data-v-72f3c169] {
	font-size: 14px;
	letter-spacing: -.21px
}

.step-2 .section_title .title_txt[data-v-72f3c169] {
	font-size: 18px;
	letter-spacing: -.27px
}

.delivery_info[data-v-72f3c169] {
	position: relative;
	padding-right: 60px
}

.sell_immediate[data-v-1e6a25e8], .price_descision_box[data-v-1e6a25e8] {
	box-shadow: 0 4px 10px 0 rgb(0 0 0 / 10%);
	background-color: #fff
}

.price_descision_box[data-v-1e6a25e8] {
	padding: 0 32px 32px
}


.deadline_info_area[data-v-1e6a25e8] {
	padding: 32px;
	border-top: 8px solid #fafafa
}

.deadline_info_area[data-v-1e6a25e8] .bid_deadline {
	margin-top: -3px
}

.deadline_info_area[data-v-1e6a25e8] .deadline_tab {
	margin-top: 7px
}

.mo .deadline_info_area[data-v-1e6a25e8], .sm .deadline_info_area[data-v-1e6a25e8]
	{
	padding: 16px 16px 20px
}

.sell_check[data-v-1e6a25e8], .sm .deadline_info_area[data-v-1e6a25e8] .deadline_tab .btn
	{
	padding: 0
}

.sell_check[data-v-1e6a25e8] .check_list {
	padding-top: 32px;
	padding-left: 32px;
	padding-right: 32px
}

.sell_check .sell_total_confirm[data-v-1e6a25e8] {
	padding: 0 32px 32px
}

.sell_check .sell_total_confirm[data-v-1e6a25e8] .price_total .price_title
	{
	line-height: 18px;
	font-size: 15px;
	letter-spacing: -.15px;
	letter-spacing: -.01px
}

.title_txt[data-v-5b2bf95b] {
	line-height: 26px;
	font-size: 22px;
	font-weight: 600;
	letter-spacing: -.15px;
	color: #000
}

.list_item[data-v-04587d2a] {
	padding-top: 21px;
	padding-bottom: 20px
}

.list_item[data-v-04587d2a]:first-child {
	padding-top: 0
}

.list_item+.list_item[data-v-04587d2a] {
	border-top: 1px solid #ebebeb
}

.list_item .list_title[data-v-04587d2a] {
	line-height: 22px;
	margin-bottom: 8px;
	font-size: 18px;
	letter-spacing: -.27px;
	font-weight: 700;
	color: #000
}

.list_item .list_desc[data-v-04587d2a] {
	font-size: 14px;
	letter-spacing: -.21px;
	letter-spacing: -.15px;
	color: rgba(34, 34, 34, .8)
}

.list_item .list_desc .text_desc[data-v-04587d2a]>.details_list {
	margin-top: 8px
}

.list_item[data-v-04587d2a] .sub_desc {
	display: block;
	line-height: 16px;
	margin-top: 3px;
	font-size: 13px;
	letter-spacing: -.07px;
	color: rgba(34, 34, 34, .4)
}

.list_item .text_link[data-v-04587d2a] {
	display: inline-block;
	vertical-align: top;
	margin-top: 4px;
	text-decoration: underline;
	color: #297dcb
}

.list_item img[data-v-04587d2a] {
	width: 100%;
	padding: 20px 16.5px
}

.guide_desc_list_keep[data-v-04587d2a] {
	border-top: 2px solid #222;
	padding-top: 22px
}

@media ( max-width :374px) {
	.premium_shipping .info_thumb[data-v-8faee3f8] {
		zoom: .8
	}
}

.container[data-v-4c316a60] {
	background-color: #fff
}

.content_area[data-v-4c316a60] {
	overflow: hidden;
	max-width: 580px;
	margin: 0 auto;
	padding: 20px 40px 160px
}

.mo .content_area[data-v-4c316a60], .sm .content_area[data-v-4c316a60] {
	max-width: 532px;
	padding-left: 16px;
	padding-right: 16px;
	padding-bottom: 40px
}

.title[data-v-4c316a60] {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	line-height: 38px;
	padding-bottom: 18px;
	font-size: 32px;
	letter-spacing: -.48px;
	font-weight: 700
}

.title .ico-express[data-v-4c316a60] {
	width: 25px;
	height: 31px;
	vertical-align: top;
	margin-right: 8px
}


.method_title[data-v-97d9ba3a] {
	padding: 16px 0 13px
}

.main_title[data-v-97d9ba3a], .method_title[data-v-97d9ba3a] {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center
}

.main_title[data-v-97d9ba3a] {
	font-size: 15px;
	letter-spacing: -.15px;
	font-weight: 400
}

.main_title strong[data-v-97d9ba3a] {
	font-weight: 600
}

.sub_title[data-v-97d9ba3a] {
	padding-left: 5px;
	font-size: 12px;
	letter-spacing: -.06px
}

.wrap_loading[data-v-6bcea0de] {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: rgba(34, 34, 34, .5);
	z-index: 1010
}

.wrap_loading_center[data-v-6bcea0de] {
	position: absolute;
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%)
}

.kream_loading[data-v-6bcea0de] {
	margin: 0 auto;
	background: url(/_nuxt/img/loading_kream_white.0728fb3.gif) no-repeat;
	background-size: 100px 100px;
	width: 100px;
	height: 100px;
	display: block
}

.kream_loading_text[data-v-6bcea0de] {
	position: absolute;
	bottom: 0;
	width: 100%;
	font-style: normal;
	font-weight: 700;
	font-size: 15px;
	line-height: 18px;
	text-align: center;
	letter-spacing: -.01em;
	color: #fff;
	white-space: nowrap
}


[data-v-454fa0b2] * {
	box-sizing: border-box;
	-webkit-box-sizing: border-box
}

[data-v-454fa0b2] img {
	border: 0;
	vertical-align: top
}

[data-v-454fa0b2] li, [data-v-454fa0b2] ol, [data-v-454fa0b2] ul {
	list-style: none
}

[data-v-454fa0b2] address, [data-v-454fa0b2] em {
	font-style: normal
}

[data-v-454fa0b2] a {
	color: inherit;
	-webkit-tap-highlight-color: rgba(0, 0, 0, .1);
	-webkit-tap-highlight-color: transparent;
	outline: none
}

[data-v-454fa0b2] a, [data-v-454fa0b2] a:active, [data-v-454fa0b2] a:focus,
	[data-v-454fa0b2] a:hover {
	text-decoration: none
}

[data-v-454fa0b2] button {
	border: none;
	background: none;
	cursor: pointer;
	-webkit-tap-highlight-color: rgba(0, 0, 0, .1);
	-webkit-tap-highlight-color: transparent;
	outline: none
}

.blind[data-v-454fa0b2] {
	overflow: hidden;
	position: absolute !important;
	width: 1px;
	height: 1px;
	border: 0;
	padding: 0;
	clip: rect(0, 0, 0, 0)
}

.wrap[data-v-454fa0b2] {
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

 [data-v-454fa0b2] .content .description_wrap {
	padding: 20px 0 19px
}

[data-v-454fa0b2] .content .description {
	line-height: 17px;
	letter-spacing: .11px
}

[data-v-454fa0b2] .content .description+.description {
	margin-top: 17px
}

[data-v-454fa0b2] .content .description span {
	font-family: -apple-system
}

[data-v-454fa0b2] .content .description_list {
	margin-bottom: 14px
}

[data-v-454fa0b2] .content .description_list .list_item {
	position: relative;
	margin-top: 14px;
	padding-left: 10px;
	color: rgba(34, 34, 34, .6);
	line-height: 17px;
	letter-spacing: .15px
}

[data-v-454fa0b2] .content .description_list .list_item+.list_item {
	margin-top: 6px
}

[data-v-454fa0b2] .content .description_list .list_item:before {
	position: absolute;
	left: 0;
	top: 5px;
	width: 3px;
	height: 3px;
	background-color: #333;
	content: ""
}

[data-v-454fa0b2] .content .description_list .list_item>ul {
	margin: 5px 0 9px;
	padding: 5px 0;
	border-top: 1px solid #ebebeb;
	border-bottom: 1px solid #ebebeb;
	font-size: 12px;
	letter-spacing: .13px
}

[data-v-454fa0b2] .content .check_wrap {
	padding: 0 0 20px
}

[data-v-454fa0b2] .content .title_check {
	position: relative;
	padding: 30px 0 6px;
	font-weight: 600;
	font-size: 18px;
	letter-spacing: .17px
}

[data-v-454fa0b2] .content .title_check:before {
	position: absolute;
	top: 0;
	left: -16px;
	right: -16px;
	height: 8px;
	content: ""
}

[data-v-454fa0b2] .content .title_check+.description {
	margin-top: 3px
}

[data-v-454fa0b2] .content .add_check {
	position: relative;
	padding: 30px 0 6px;
	letter-spacing: .17px
}

[data-v-454fa0b2] .content .btn_check {
	position: relative;
	width: 100%;
	height: 67px;
	min-height: 32px;
	padding-top: 25px;
	text-align: left;
	letter-spacing: .16px
}

[data-v-454fa0b2] .content .more_info_list {
	padding: 15px 0;
	border-top: 1px solid #f2f2f2
}

[data-v-454fa0b2] .content .more_info_list .more_list_item {
	color: rgba(34, 34, 34, .5);
	font-size: 11px;
	line-height: 14px;
	letter-spacing: .12px;
	margin-top: 2px
}

[data-v-454fa0b2] .content .etc_desc {
	font-size: 13px;
	color: rgba(34, 34, 34, .6);
	margin-top: 5px
}

.category_option[data-v-8b2e8920] {
	display: block;
	margin-top: 8px;
	position: relative
}

.category_option .selected_txt[data-v-8b2e8920] {
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

.category_option .ico-arr-down-gray[data-v-8b2e8920] {
	position: absolute;
	top: 50%;
	margin-top: -13px;
	right: 8px;
	width: 28px;
	height: 28px
}

.category_option select[data-v-8b2e8920] {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 48px;
	opacity: 0
}

@media screen and (-webkit-min-device-pixel-ratio:0) {
	.category_option input[data-v-8b2e8920]:focus, .category_option select[data-v-8b2e8920]:focus,
		.category_option textarea[data-v-8b2e8920]:focus {
		font-size: 15px;
		letter-spacing: -.15px;
		font-weight: 700
	}
}

.category_list[data-v-f1ee2dae] {
	padding: 15px 0 4px;
	border-bottom: 1px solid #ebebeb
}

.category_list[data-v-f1ee2dae]:after {
	content: "";
	display: block;
	clear: both
}


.category[data-v-f1ee2dae] {
	float: left;
	width: 72px;
	height: 40px;
	font-size: 13px;
	letter-spacing: -.07px;
	color: rgba(34, 34, 34, .5);
	text-align: center;
	line-height: 38px;
	background-color: #fff;
	border-radius: 30px;
	margin-bottom: 12px;
	margin-right: 8px;
	border: 1px solid #d3d3d3;
	cursor: pointer
}

.category.flexible[data-v-f1ee2dae] {
	width: auto;
	padding: 0 19px
}

.category.category_on[data-v-f1ee2dae] {
	border-color: #222;
	background-color: #222;
	color: #fff;
	font-weight: 700
}

.category_list[data-v-f1ee2dae] {
	padding: 0 0 16px
}

.category[data-v-f1ee2dae] {
	width: auto;
	padding: 0 17px
}

.container.sell[data-v-6657f7cc] {
	background-color: #fafafa
}

.container.sell.lg .is_absolute .spread[data-v-6657f7cc], .container.sell.lg .is_fixed .spread[data-v-6657f7cc],
	.container.sell.md .is_absolute .spread[data-v-6657f7cc], .container.sell.md .is_fixed .spread[data-v-6657f7cc]
	{
	position: static;
	display: block;
	height: 456px;
	background-color: rgba(0, 0, 0, 0)
}

.container.sell.lg .is_fixed .column_box[data-v-6657f7cc], .container.sell.md .is_fixed .column_box[data-v-6657f7cc]
	{
	position: fixed;
	top: 130px
}

.container.sell.lg .is_absolute .column_box[data-v-6657f7cc], .container.sell.md .is_absolute .column_box[data-v-6657f7cc]
	{
	position: absolute;
	bottom: 100px
}

.container.sell.mo[data-v-6657f7cc], .container.sell.sm[data-v-6657f7cc] {
	background-color: #fff
}

.container.sell.mo .content[data-v-6657f7cc], .container.sell.sm .content[data-v-6657f7cc]
	{
	padding: 0
}

.container.sell.mo .column[data-v-6657f7cc], .container.sell.sm .column[data-v-6657f7cc]
	{
	float: none;
	margin-left: 0;
	width: 100%
}

.container.sell.mo .column:first-child .column_box[data-v-6657f7cc],
	.container.sell.sm .column:first-child .column_box[data-v-6657f7cc] {
	border-bottom: 8px solid #f4f4f4
}

.container.sell.mo .column_box[data-v-6657f7cc], .container.sell.sm .column_box[data-v-6657f7cc]
	{
	width: 100% !important
}

.container.sell.mo .sell_product[data-v-6657f7cc], .container.sell.sm .sell_product[data-v-6657f7cc]
	{
	padding: 8px 24px 20px;
	-webkit-box-shadow: none;
	box-shadow: none
}

.container.sell.mo .sell_product[data-v-6657f7cc]:after, .container.sell.sm .sell_product[data-v-6657f7cc]:after
	{
	content: "";
	display: block;
	clear: both
}

.container.sell.mo .sell_product .product[data-v-6657f7cc], .container.sell.sm .sell_product .product[data-v-6657f7cc]
	{
	float: left;
	width: 100px;
	height: 100px;
	padding-top: 0;
	margin-right: 16px
}

.container.sell.mo .sell_product .sell_info[data-v-6657f7cc], .container.sell.sm .sell_product .sell_info[data-v-6657f7cc]
	{
	overflow: hidden
}

.content[data-v-6657f7cc] {
	margin: 0 auto;
	padding: 60px 40px 160px;
	max-width: 780px
}

.sell_product[data-v-6657f7cc] {
	padding: 32px;
	background-color: #fff;
	-webkit-box-shadow: 0 4px 10px 0 rgba(0, 0, 0, .1);
	box-shadow: 0 4px 10px 0 rgba(0, 0, 0, .1)
}

.btn_confirm .btn[data-v-6657f7cc] {
	height: 60px;
	line-height: 60px;
	border-radius: 0
}
#continue_btn{
	margin-top:15px;
	font: #ffffff;
	
}
#btn_continue{
	border-radius: 12px;
    font-weight: 700;
	width: 636px;
	height:52px;
	font-size: 16px;
	text-align:center;
	display: inline-block;
    vertical-align: middle;
    background-color: black;
    color: white;
}
.outlinegrey{
	border: 1px solid #d3d3d3;
	border-radius: 12px;
	height:42px;
	text-align: center;
	padding: 0 18px;
	line-height: 40px;
	font-size: 14px
}
.price_bind_empty{
	font-size: 14px;
	padding-top: 20px;
	color:#22222280
}
#deadline_text{
	font-size: 15px;
	letter-spacing: -.15px;
}

.change{
	color: #fff;
    font-weight: 700;
    background-color: #41b979;
}
</style>

<form id="enterPriceForm" method="post" action="/TeamProject/shop/sellPay">
	<input type="hidden" name="product_id" id="product_id"value=${productDTO.product_id}>
	<input type="hidden" name="buy" id="buy" value=${buyDTO.buy_id}>
	<input type="hidden" name="size" id="size" value=${size}>
	<input type="hidden" name="peroid" id="peroid" value="">
	<input type="hidden" name="payment_method" id="payment_method" value="">
	<input type="hidden" name="price" id="price" value="">
	<input type="hidden" name="deadline" id="deadline" value="">
</form>
<div id="content1">
	<div data-v-6657f7cc="" data-v-7ab136e9="" class="container sell md">
		<div data-v-6657f7cc="" class="content">
			<div data-v-1e6a25e8="" data-v-6657f7cc="" class="sell_immediate">
				<div data-v-1643775e="" data-v-1e6a25e8="" class="product_info_area">
					<div data-v-1643775e="" class="product_info">
						<div data-v-75e33658="" data-v-1643775e="" class="product" style="background-color: rgb(246, 238, 237);">
							<picture data-v-548c90f9="" data-v-75e33658="" class="picture product_img">
								<source data-v-548c90f9="" type="image/webp" srcset=${productImgDTO.file_path } />
								<source data-v-548c90f9="" srcset=${productImgDTO.file_path } />
								<img data-v-548c90f9="" alt="상품 이미지" src=${productImgDTO.file_path } class="image" /> 
							</picture>
						</div>
						<div data-v-1643775e="" class="product_detail">
							<strong data-v-1643775e="" class="model_number">${productDTO.model_number }</strong>
							<p data-v-1643775e="" class="model_title">${productDTO.eng_name }</p>
							<p data-v-1643775e="" class="model_ko">${productDTO.kor_name }</p>
							<div data-v-1643775e="" class="model_desc">
								<p data-v-1643775e="" class="size_txt">${size }</p>
							</div>
						</div>
					</div>
				</div>
				<div data-v-158ed304="" data-v-1e6a25e8="" class="price_descision_box">
					<ul data-v-638c1354="" data-v-158ed304="" class="price_list">
						<li data-v-638c1354="" class="list_item">
							<p data-v-638c1354="" class="title">즉시 구매가</p> 
							<span data-v-638c1354="" class="price im_buy_price"></span><span data-v-638c1354="" class="unit">원</span>
						</li>
						<li data-v-638c1354="" class="list_item">
							<p data-v-638c1354="" class="title">즉시 판매가</p> 
							<span data-v-638c1354="" class="price im_sell_price" id="title_price"></span><span data-v-638c1354="" class="unit">원</span>
						</li>
					</ul>
					<div data-v-158ed304="" class="instant_group">
						<div data-v-b6b2883e="" data-v-158ed304="" class="tab_area sell_tab">
							<ul data-v-b6b2883e="" role="tablist" class="tab_list">
								<li data-v-b6b2883e="" role="tab" aria-selected="true" aria-controls="panel1" class="item">
									<a data-v-b6b2883e="" href="#" class="item_link" id="hide_Btn1">판매 입찰</a>
								</li>
								<li data-v-b6b2883e="" role="tab" aria-selected="false" aria-controls="panel2" class="item on">
									<a data-v-b6b2883e="" href="#" class="item_link" id="disabledBtn">즉시 판매</a>
								</li>
							</ul>
						</div>
						<div class="hide_content1">
							<div data-v-03750f89="" data-v-158ed304="" class="price_now active_input">
								<dl data-v-03750f89="" class="price_now_box">
									<dt data-v-03750f89="" class="price_now_title">즉시 판매가</dt>
									<dd data-v-03750f89="" class="price_warning" style="display: none;">
										3만원 부터 천원단위로 입력하세요.
									</dd>
									<dd data-v-03750f89="" class="price">
										<input data-v-03750f89="" type="text" pattern="([0-9]+.{0,1}[0-9]*,{0,1})*[0-9]" required="required"
											placeholder="희망가 입력" autocomplete="off" class="input_amount" onfocus="this.placeholder=''" 
											onblur="this.placeholder='희망가 입력'" inputmode="numeric" oninput="check_price(this.value)" id="input_price"/>
										<span data-v-03750f89="" class="unit">원</span>
									</dd>
								</dl>
							</div>
							<div data-v-158ed304="" class="price_bind">
								<p data-v-158ed304="" class="price_bind_empty">총 결제금액은 다음화면에서 계산됩니다.</p>
							</div>
						</div>
					</div>
				</div>
				<div data-v-4963821f="" data-v-1e6a25e8="" class="deadline_info_area">
					<div data-v-4963821f="" class="section_title">
						<h3 data-v-4963821f="" class="title_txt">입찰 마감기한</h3>
					</div>
					<div data-v-4963821f="" class="section_content">
						<div data-v-4963821f="" class="bid_deadline">
							<p data-v-4963821f="" class="deadline_txt">
								<div id="deadline_text"></div>
							</p>
							<div data-v-4963821f="" class="deadline_tab">
								<a data-v-3d1bcc82="" data-v-4963821f="" href="#" class="btn outlinegrey medium" class="outlinegrey" id="D1"> 1일 </a>
								<a data-v-3d1bcc82="" data-v-4963821f="" href="#" class="btn outlinegrey medium" class="outlinegrey" id="D3"> 3일 </a> 
								<a data-v-3d1bcc82="" data-v-4963821f="" href="#" class="btn outlinegrey medium" class="outlinegrey" id="D7"> 7일 </a>
								<a data-v-3d1bcc82="" data-v-4963821f="" href="#" class="btn outlinegrey medium" class="outlinegrey" id="D30"> 30일 </a> 
								<a data-v-3d1bcc82="" data-v-4963821f="" href="#" class="btn outlinegrey medium" class="outlinegrey" id="D60"> 60일 </a>
							</div>
						</div>
					</div>
				</div>
				<div data-v-65a8cedc="" data-v-1e6a25e8="" class="sell_total_confirm">
					<div data-v-679d7250="" data-v-65a8cedc="" class="price_total">
						<dl data-v-679d7250="" class="price_box price_empty">
							<dt data-v-679d7250="" class="price_title">총 결제금액</dt>
							<dd data-v-679d7250="" class="price_empty_desc">다음 화면에서 확인</dd>
						</dl>
						<span data-v-679d7250="" class="price_warning" style="display:none;"><em data-v-679d7250=""> </em></span>
					</div>
					<div data-v-65a8cedc="" class="btn_confirm">
						<a data-v-3d1bcc82="" data-v-65a8cedc="" class="btn full solid false disabled" id="btn_continue">
							<div id="continue_btn"> 즉시 판매 계속 </div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$('.outlinegrey').each(function(){
		$(this).click(function(){
			$(this).css("border", "1px solid black");
			$('.outlinegrey').not(this).css('border', '1px solid #d3d3d3');
			$(this).css("font-weight", "700");
			$('.outlinegrey').not(this).css('font-weight', '300');
		})
	})	
});

//입력창 클릭시 border색깔 변경
$(function(){
	$(".input_amount").click(function(){
		$('.price_now_box').css('border-color', '#222');
		$('.input_amount').blur(function(){
			$('.price_now_box').css('border-color', '#ebebeb');
		});
	});
	
});
//판매입찰 즉시판매 버튼 
$(function(){
	$('.item_link').each(function(){
		$(this).click(function(){
			if($(this).attr('id') != 'disabledBtn'){
				$(this).css('background-color', '#41b979');
				$(this).css('color', '#fff');
				$(this).css('font-weight', '700');
				$('#payment_method').val($(this).text());
				$('.item_link').not(this).css('background-color', '#f4f4f4');
				$('.item_link').not(this).css('font-weight', '200');
				$('.item_link').not(this).css('color', '#222222CC');
			}
		})
	})
});

$(function(){
	if($('#continue_btn').val() != "판매 입찰 계속"){
		$('.input_amount').val($('#title_price').text());
		$('.input_amount').attr('readonly', true);
	}
})

$(function(){
	$('.deadline_info_area').hide();
	$('#hide_Btn1').click(function(){
		$('.deadline_info_area').show();
		$('#btn_continue').css('background-color', '#ebebeb');
		$('#btn_continue').attr('disabled', true);
		$('#continue_btn').html('판매 입찰 계속');
		$('.input_amount').val('');
		$('.input_amount').attr('readonly', false);
		$('.price_now_title').html('판매 희망가');
	});
	$(document).on('click', '#hide_Btn2', function(){
		$('.deadline_info_area').hide();
		$('#btn_continue').css('background-color', '#222');
		$('#btn_continue').attr('disabled', false);
		$('#continue_btn').html('즉시 판매 계속');
		$('.price_now_title').html('즉시 판매가');
		$('.input_amount').val($('#title_price').text());
		$('.input_amount').attr('readonly', true);
	});
});

var result;
function today(num){
	var today = new Date();//오늘 날짜
	
	var calDate = new Date();
	calDate.setDate(today.getDate()+ num);
	
	var yy = calDate.getFullYear();
	var mm = calDate.getMonth()+1;
	var dd = calDate.getDate();
	
	$('#peroid').val(yy+"/"+mm+'/'+dd);
	$('#deadline').val(num);
	result = num+"일"+""+"("+yy+"/"+mm+"/"+dd+"마감)";
} 

$('#D1').click(function(){
	today(1);
	$('#deadline_text').text(result);
});
$('#D3').click(function(){
	today(3);
	$('#deadline_text').text(result);
});
$('#D7').click(function(){
	today(7);
	$('#deadline_text').text(result);
});
$('#D30').click(function(){
	today(30);
	$('#deadline_text').text(result);
});
$('#D60').click(function(){
	today(60);
	$('#deadline_text').text(result);
});

$(function(){
	today(30);
	$('#deadline_text').append(result);
});

/* 숫자 세자리마다 콤마 */
$(function(){
	$(document).on('keyup','input[inputmode=numeric]',function(event){
		this.value = this.value.replace(/[^0-9]/g,'');   // 입력값이 숫자가 아니면 공백
		this.value = this.value.replace(/,/g,'');          // ,값 공백처리
		this.value = this.value.replace(/\B(?=(\d{3})+(?!\d))/g, ","); // 정규식을 이용해서 3자리 마다 , 추가 	
	});
});

function check_price(price){
	if(parseInt(price.replace(/,/g,'')) < 30000){
		$('.price_warning').css('display', 'block');
		$('.price_now_box').css('border-bottom', '2px solid #41b979');
		$('.price_now_title').css('color','#41b979');
		$("input").focusout(function(){
			$('#btn_continue').css('background-color', '#ebebeb');
			$('#btn_continue').attr('disabled', true);
			$('#btn_continue').attr('href', '#');
		});
		$("input").focusin(function(){
			$('#btn_continue').css('background-color', '#ebebeb');
			$('#btn_continue').attr('disabled', true);
			$('#btn_continue').attr('href', '#');
		});
	}
	else{
		$('.price_warning').css('display', 'none');
		$('.price_now_box').css('border-bottom', '2px solid #ebebeb');
		$('.price_now_title').css('color','#222');
		$("input").focusout(function(){
			$('#btn_continue').css('background-color', '#222');
			$('#btn_continue').attr('disabled', false);
			$('#btn_continue').attr('href', '#');
		});
		$("input").focusin(function(){
			$('#btn_continue').css('background-color', '#ebebeb');
			$('#btn_continue').attr('disabled', true);
			$('#btn_continue').attr('href', '#');
		});
	}
};

$('#input_price').on('focusout', function(){
	var input_price = $('#input_price').val().replace(/,/g,'');
	var title_price = $('#title_price').text().replace(/,/g,'');
	if(parseInt(input_price) <= parseInt(title_price)){
		$('#hide_Btn2').trigger('click');
	}
});

$('#input_price').focusout(function(){
	var input_price = parseInt($('#input_price').val().replace(/,/g,''));
	var count = Math.floor(input_price/1000)*1000;
	count = count.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	$('#input_price').val(count);
});

$(function(){
	$.ajax({
		url: '/TeamProject/shop/getSellPrice',
		type: 'post',
		data: {
			'product_id' : $('#product_id').val(),
			'size': $('.size_txt').text(),
			'buy': $('#buy').val()
		},
		dataType: 'json',
		success: function(data){
			// alert(JSON.stringify(data));
			if(!data.buyDTO){
				$('.im_sell_price').text('-');
				$('#hide_Btn1').trigger('click');
				$('#payment_method').val('판매 입찰');
				$('#disabledBtn').css('cursor', 'default');
			}
			else{
				$('.im_sell_price').text(data.buyDTO.buy_price.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ","));
				$('#disabledBtn').attr('id', 'hide_Btn2');
				$('#payment_method').val('즉시 판매');
				$('#input_price').val($('.im_sell_price').text());
			}
			if(!data.sellDTO){
				$('.im_buy_price').text('-');			
			}
			else{
				$('.im_buy_price').text(data.sellDTO.sell_price.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ","));
			}
		},
		error: function(err){
			console.log(err);
		}
	});
});

$('#btn_continue').click(function(){
	if($(this).prop('disabled') != 'disabled'){
		$('#price').val($('#input_price').val());
		if($('#payment_method').val() == '즉시 판매'){
			$('#peroid').val('');
			$('#deadline').val('');
		}
		else{
			$('#buy').val('');
		}
		$('#enterPriceForm').submit();
	}
});

</script>
</html>
