<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<style>
    .my_buying_detail .content_title {
        margin-bottom: 20px;
    }
    .content_title {
        display: flex;
        padding: 5px 0 6px;
    }
    .title_1 {
        font-size: 24px;
        letter-spacing: -.36px;
    }
    .title_1>h3 {
        line-height: 29px;
        font-size: inherit;
    }
    .btn_box {
 	 	margin-left: auto;
    	padding-left: 30px;
	    flex-shrink: 0;
	}
    .btn_box .btn {
	    margin-right: -6px;
	    padding: 0 6px;
	    -webkit-box-align: center;
	    -ms-flex-align: center;
	    align-items: center;
	    font-size: 14px;
	    letter-spacing: -.21px;
	    display : flex ;
	}
	.btn {
	    cursor: pointer;
	    vertical-align: middle;
	    text-align: center;
	    color: rgba(34,34,34,.8);
	    background-color: #fff;
	}
    .btn_box .icon {
	    margin-right: 4px;
	    width: 20px;
	    height: 20px;
	}
    .section_title.order_title {
        margin-top: 0;
    }
    .title_box {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
    }
    .section_title.order_title .title {
        padding: 11px 0;
        font-size: 18px;
        line-height: 26px;
        letter-spacing: -.27px;
        font-weight: 400;
    }
    .section_title.order_title .order_number {
        line-height: 28px;
        letter-spacing: -.09px;
        font-weight: 700;
        font-style : normal;
    }
    .order_info {
        position: relative;
        border-top: 2px solid #222;
    }
    .order_product {
        display: flex;
        padding: 15px 105px 16px 0;
        border-bottom: 1px solid #ebebeb;
    }
    .product_box {
        -webkit-box-flex: 0;
        flex: none;
        width: 100px;
        height: 100px;
        margin-top: 1px;
    }
    .product_box .product {
        border-radius: 12px;
        overflow: hidden;
        position: relative;
        padding-top: 100%;
    }
    .product_img
        position: absolute;
        top: 50%;
        left: 50%;
        -webkit-transform: translate(-50%,-50%);
        -ms-transform: translate(-50%,-50%);
        transform: translate(-50%,-50%);
        width: 81.5%;
        height: auto;
    }
    .picture
        display: flex;
    }
    .image
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
    .product_detail {
        margin-left: 12px;
        display: flex;
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        flex-direction: column;
        align-self: center;
    }
    .name, .number {
        font-size: 14px;
        letter-spacing: -.015px;
    }
    .number {
        line-height: 20px;
        font-weight: 700;
    }
    .name {
        line-height: 17px;
        margin-top: 2px;
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
    }
    .size {
        margin-top: 8px;
        font-size: 0;
    }
    .size .size_text {
        line-height: 17px;
        font-size: 14px;
        font-weight: 700;
        letter-spacing: -.015px;
        color: rgba(34,34,34,.5);
    }
    .size .mark_95, .size .size_text {
        display: inline-block;
        vertical-align: top;
    }
    .order_price {
        border-bottom: 1px solid #ebebeb;
    }
    .price_list {
        display: table;
        table-layout: fixed;
        width: 100%;
    }
    li, ol, ul {
        list-style: none;
    }
    .price_item {
        padding: 16px 0 20px;
        display: table-cell;
        text-align: center;
    }
    .price_item+.price_item .item_inner:before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        bottom: 0;
        width: 1px;
        background-color: #ebebeb;
    }
    .product_img {
        width: 100%;
		position: absolute;
		height: 100%;
		top: -5%;
    }
    .price_item .item_inner {
        position: relative;
    }
    .price_title {
        font-size: 12px;
        letter-spacing: -.06px;
        color: rgba(34,34,34,.5);
    }
    .price {
        font-size: 0;
    }
    .amount, .unit {
        display: inline-block;
        font-size: 14px;
    }
    .order_btn {
        position: absolute;
        top: 49px;
        right: 0;
    }
    .small {
        font-size: 12px;
        letter-spacing: -.06px;
        padding: 8px 14px;
        height: 34px;
        line-height: 32px;
        border-radius: 10px;
    }
    .purchase_history_wrap .section_title {
        margin-top: 28px;
    }
    .title {
        line-height: 20px;
        padding: 6px 0 7px;
        font-size: 16px;
        letter-spacing: -.16px;
    }
    .purchase_history {
        border-top: 2px solid #222;
    }
    .history_detail {
        border-bottom: 1px solid #ebebeb;
    }
    .main_box {
        background-color: #fafafa;
    }
    .main_item {
        padding: 25px 0 26px 16px;
        font-weight: 700;
    }
    .main_item .title {
        float: left;
        margin-right: 12px;
        width: 160px;
        font-size: 14px;
        line-height: 28px;
    }
    .main_item .price {
        overflow: hidden;
        font-size: 0;
    }
    .main_item:after {
        content: "";
        display: block;
        clear: both;
    }
    .main_item .amount, .main_item .unit {
        display: inline-block;
        font-size: 22px;
        line-height: 28px;
        letter-spacing: -.11px;
        vertical-align: top;
    }
    .main_item .unit {
        font-size: 20px;
        letter-spacing: -.33px;
    }
    .detail_box {
        padding: 16px 16px 17px;
        border-top: 1px solid #ebebeb;
    }
    .purchase_history .price_addition {
        -webkit-box-pack: start;
        -ms-flex-pack: start;
        justify-content: flex-start;
    }
    .price_addition {
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
    .purchase_history .price_title {
        margin-right: 12px;
        width: 160px;
        line-height: 20px;
        letter-spacing: -.2px;
    }
    .price_title {
        color: rgba(34,34,34,.5);
    }
    .purchase_history .price_text {
        font-size: 14px;
        line-height: 20px;
        letter-spacing: -.2px;
    }
    .price_text {
        text-align: right;
        white-space: nowrap;
        color: #222;
    }
    .price_text.buy {
        color: #f15746;
    }
    .price_text:after {
        content: "";
        display: block;
        clear: both;
    }
    .price_title.dark {
        color: #222;
    }
    .price_text.bold {
	    font-weight: 700;
	}
    .history_btn {
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        justify-content: center;
    }
    .history_btn .btn {
        margin-top: 24px;
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
    .history_btn .btn+.btn {
        margin-left: 8px;
    }
    .history_btn .btn.buy {
        background-color: #ef6253;
        border-color: #ef6253;
        color: #fff;
    }
    .price_text.buy {
    	color: #f15746;
	}
    .section_title {
        margin-top: 31px;
    }
    .noti {
        line-height: 14px;
        padding-bottom: 6px;
        font-size: 12px;
        letter-spacing: -.06px;
        letter-spacing: -.01px;
        color: rgba(34,34,34,.5);
    }
    .shipping_address {
        border-top: 2px solid #222;
    }
    .shipping_address .address_item {
        padding: 16px 0 17px;
        border-bottom: 1px solid #ebebeb;
    }
    .shipping_address .address_title {
        float: left;
        margin-right: 26px;
        width: 100px;
        font-size: 14px;
        letter-spacing: -.21px;
    }
    .shipping_address .address_txt {
        overflow: hidden;
        font-size: 14px;
        letter-spacing: -.21px;
    }
    .shipping_address .address_item:after {
        content: "";
        display: block;
        clear: both;
    }
    .detail_btn_box {
        padding-top: 100px;
        text-align: center;
    }
    .layer_alert {
        text-align: center;
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
    .layer_alert .layer_container {
        width: 360px;
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
    .layer_alert .layer_header .title {
        padding: 32px 16px 0;
        min-height: 46px;
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
    .layer_alert .alert_box {
        padding: 8px 32px 0;
    }
    .layer_alert .alert_desc {
        font-size: 14px;
        letter-spacing: -.21px;
        color: rgba(34,34,34,.8);
    }
    .layer_btn {
        padding: 24px 32px 32px;
        display: flex;
        -webkit-box-pack: center;
        justify-content: center;
    }
    .layer_btn .btn {
        width: 120px;
    } 
    .layer_btn .btn {
 	   margin-left: 8px;
	}
    .outlinegrey {
		border: 1px solid #d3d3d3;
		color: rgba(34,34,34,.8);
	}
	.layer_alert .btn {
	    display: inline-block;
	    cursor: pointer;
	    vertical-align: middle;
	    text-align: center;
/* 	    color: rgba(34,34,34,.8);
	    background-color: #fff; */
	}
	.solid {
    font-weight: 600;
    color: #fff;
    background-color: #222;
	}
	.layer_alert .btn_layer_close {
	    display: none;
	}
	.btn_layer_close {
	    position: absolute;
	    top: 18px;
	    right: 20px;
	    cursor: pointer;
	}
</style>

<div class="my_buying_detail bidding">
    <div class="content_title">
        <div class="title_1">
            <h3>구매내역 &gt; <span id="buy_status"></span></h3>
        </div>
        <div class="btn_box">
            <div class="btn deleteBtn">
                <img src="/TeamProject/img/user/myPage/can_trash.png" alt="쓰레기통" class="ico-delete icon sprite-icons">
                <span class="btn_txt">삭제하기</span>
            </div>
        </div>
    </div>
    <!---->
    <div class="order_info_wrap">
        <div class="section_title order_title">
            <div class="title_box">
                <h4 class="title">주문번호 <em class="order_number">${ buy_historyDTO.buy_id }</em></h4>
            </div>
        </div>
        <div class="order_info">
            <div class="order_product">
                <div class="product_box">
                    <div class="product" style="background-color: #ebf0f5;">
                            <img
                                alt="Nike Air Force 1 '07 Low White"
                                src=${productImgDTO.file_path }
                                class="image picture product_img"
                            />
                    </div>
                </div>
                <div class="product_detail">
                    <strong class="number"></strong>
                    <p class="name">${productImgDTO.org_file_name }</p>
                    <p class="size"><span class="size_text">${ buy_historyDTO.size_type}</span></p>
                </div>
            </div>
            <div class="order_price">
                <ul class="price_list">
                    <li class="price_item">
                        <div class="item_inner">
                            <span class="price_title">즉시 구매가</span>
                            <p class="price"><span class="amount" id="max_buyPrice"></span><span class="unit">원</span></p>
                        </div>
                    </li>
                    <li class="price_item">
                        <div class="item_inner">
                            <span class="price_title">즉시 판매가</span>
                            <p class="price"><span class="amount" id="min_sellPrice"></span><span class="unit">원</span></p>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="order_btn">
            	<a href="/TeamProject/shop/shopDetail?product_id=${buy_historyDTO.product_id }" class="btn outlinegrey small"> 상품 상세보기 </a>
            </div>
        </div>
    </div>
    <!---->
    <div class="purchase_history_wrap">
        <div class="section_title">
            <div class="title_box"><h4 class="title">구매 내역</h4></div>
        </div>
        <div class="purchase_history bidding buy">
            <div class="history_detail">
                <div class="main_box">
                    <dl class="main_item">
                        <dt class="title">구매 희망가</dt>
                        <dd class="price"><span class="amount">
                        <fmt:formatNumber value="${buy_historyDTO.buy_price }" type="number" /></span><span class="unit">원</span>
                        </dd>
                    </dl>
                </div>
                <div class="detail_box">
                    <dl class="price_addition">
                        <dt class="price_title">
                            <span>검수비</span>
                        </dt>
                        <dd class="price_text">무료</dd>
                    </dl>
                    <dl class="price_addition">
                        <dt class="price_title">
                            <span>수수료</span>
                        </dt>
                        <dd class="price_text">600원</dd>
                    </dl>
                    <dl class="price_addition">
                        <dt class="price_title">
                            <span>배송비</span>
                        </dt>
                        <dd class="price_text">3,000원</dd>
                    </dl>
                    <dl class="price_addition">
                        <dt class="price_title dark">
                            <span>총 결제금액</span>
                        </dt>
                        <dd class="price_text bold buy" id="priceTot"></dd>
                    </dl>
                </div>
                <div class="detail_box">
                    <dl class="price_addition">
                        <dt class="price_title dark">
                            <span>입찰일</span>
                        </dt>
                        <dd class="price_text" style="font-weight: 500;">
                        	<fmt:formatDate value="${buy_historyDTO.buy_date }" pattern="yyyy/MM/dd(E)" />
                        </dd>
                    </dl>
                    <dl class="price_addition">
                        <dt class="price_title dark">
                            <span >입찰 마감기한</span>
                        </dt>
                        <dd class="price_text period" style="font-weight: 500;"> 
                        	<fmt:formatDate value="${buy_historyDTO.period }" pattern="yyyy/MM/dd(E)" />
                        </dd>
                        <dd class="price_text buy done" style="display: none">기한 만료</dd>
                    </dl>
                </div>
            </div>
			<div class="history_btn" style="display: none">
                <input type="button" class="reSell btn outline medium" value="다시 입찰하기" onclick="location.href='/TeamProject/shop/enterBuyPrice?product_id=${buy_historyDTO.product_id }&size=${ buy_historyDTO.size_type}'">
			</div>

        </div>
    </div>
    <!---->
    <div class="shipping_address_wrap">
        <div class="section_title">
            <div class="title_box"><h4 class="title">배송 주소</h4></div>
            <p class="noti">배송지 변경을 원하시면 고객센터로 문의 바랍니다.</p>
        </div>
        <div class="shipping_address">
            <dl class="address_item">
                <dt class="address_title">받는 사람</dt>
                <dd class="address_txt">${addressDTO.name }</dd>
            </dl>
            <dl class="address_item">
                <dt class="address_title">휴대폰 번호</dt>
                <dd class="address_txt address_hp" >
                	<input type="hidden" id="hidden_hp" value="${addressDTO.hp }" >
                </dd>
            </dl>
            <dl class="address_item">
                <dt class="address_title">주소</dt>
                <dd class="address_txt">(${addressDTO.zipcode}) ${addressDTO.addr } ${addressDTO.addr_detail }</dd>
            </dl>
        </div>
    </div>
   
    <div class="detail_btn_box">
    	<a href="/TeamProject/user/buyHistory" class="btn btn_view_list outlinegrey medium" style="padding: 10px 28px;"> 목록보기 </a>
    </div>
    <!----><!----><!----><!----><!---->
	<div class="layer lg layer_alert" style="display: none;">
        <div class="layer_container">
            <div class="layer_header"><h2 class="title">입찰 지우기</h2></div>
            <div class="layer_content">
                <div class="alert_box"><p class="alert_desc">등록하신 입찰을 지우시면 주문이 취소됩니다.</p></div>
                <div class="layer_btn">
                    <button type="button" class="btn outlinegrey medium">취소</button><button type="button" class="btn outlinegrey medium solid">입찰 지우기</button>
                </div>
            </div>
        </div>
    </div>
    <!----><!---->
</div>
<script type="text/javascript">
window.onload = function() {
	$('.snb_menu').eq(0).find('.menu_link').eq(0).removeClass('unbold');
	$('.snb_menu').eq(0).find('.menu_link').eq(0).addClass('bold');
}
$(document).ready(function() {    
	//status
	var status1 ="${buy_historyDTO.status1}"
	var status2 ="${buy_historyDTO.status2}"
	//alert(status1);
	//alert(status2);
	if(status1 != ''){
		$('#buy_status').text(status1);
	}
	if(status2 != ''){
		$('#buy_status').text(status2);
		$('.period').css('display','none');
		$('.done').css('display','block');
		$('.history_btn').css('display','flex');
	}
});
//번호 형식 맞추기
$(document).ready(function() {
	var hp = "${addressDTO.hp }";
	var testHp = hp.replace(/(\d{3})(\d{4})(\d{4})/, '$1-****-$3');
	$(".address_hp").text(testHp);
	//검수비, 배송료 합치기
	var priceTot = ${buy_historyDTO.buy_price } + 3600
	$('#priceTot').text(priceTot.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',') + "원");
    
	//즉시 판매, 구매가 , 모델번호 
	$.ajax({
		type:'post',
		url:'/TeamProject/user/getProductInfo',
		data:'product_id=${buy_historyDTO.product_id }',
		dataType:'json',
		success: function(data){
			//alert(JSON.stringify(data));
			if(data.max_buyPrice == null){
				$('#max_buyPrice').text('-');	
			}else{
				data.max_buyPrice = data.max_buyPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				$('#max_buyPrice').text(data.max_buyPrice);
			}
			if(data.min_sellPrice == null){
				$('#min_sellPrice').text('-');	
			}else{
				data.min_sellPrice = data.min_sellPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				$('#min_sellPrice').text(data.min_sellPrice);
			}
			$('.number').text(data.model_number);
		},error:function(err){
			console.log(err);
		}		
	});
});

//삭제 버튼 클릭 함수
$('.deleteBtn').on('click', function(){
	$('.layer_alert').css('display','block');
	//취소버튼
	$('.layer_alert').find('button').eq(0).on('click',function(){
		$('.layer_alert').css('display','none');
	})
	//입찰지우기
	$('.layer_alert').find('button').eq(1).on('click',function(){
		$.ajax({
			type:'post',
			url:'/TeamProject/user/delBuyHistory',
			data:'buy_id=${buy_historyDTO.buy_id }',
			dataType:'json',
			success: function(data){
				alert('입찰내역이 삭제되었습니다.')
				$('.layer_alert').css('display','none');
			},
			error:function(err){
				console.log(err);
			}		
		});
	})
});

</script>
