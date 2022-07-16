<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="/TeamProject/css/shop/buy/buyPay.css"/>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

<input type="hidden" id="payment_method" value="${payment_method}">
<div class="container buy lg">
    <div class="content">
        <div class="buy_immediate">
            <div class="product_info_area">
                <div class="product_info">
                    <div class="product" style="background-color: rgb(235, 240, 245);">
                    	<img alt="상품 이미지"
	                        src="https://kream-phinf.pstatic.net/MjAyMTA3MjhfMjIg/MDAxNjI3NDQxMDA1NjE5.HOgIYywGZaaBJDqUzx2OnX9HAxoOWPvuWHqUn_LZGcgg.VYIuOfA5_GgjBGRowv6dmQuAOPtUvmAxbGpOyUCOCtYg.PNG/p_9d8ed1a74d2540ab9842e63363607bf4.png?type=l"
	                        class="image"/>
                    </div>
                    <div class="product_detail">
                        <strong class="model_number">DD1391-100</strong>
                        <p class="model_title">Nike Dunk Low Retro Black</p>
                        <p class="model_ko">나이키 덩크 로우 레트로 블랙</p>
                        <div class="model_desc">
                            <p class="size_txt">230</p>
                        </div>
                    </div>
                </div>
            </div>
            <section>
                <div class="section_unit">
                    <div class="section_title">
                        <h3 class="title_txt">배송 주소</h3>
                        <a href="#" class="add_more_btn">+ 새 주소 추가</a>
                    </div>
                    <div class="section_content">
                        <div class="delivery_info">
                            <div class="address_info">
                                <dl class="info_list">
                                    <div class="info_box"><dt class="title">받는 분</dt><dd class="desc">김**</dd></div>
                                    <div class="info_box"><dt class="title">연락처</dt><dd class="desc">010-9***-*150</dd></div>
                                    <div class="info_box">
                                        <dt class="title">배송 주소</dt>
                                        <dd class="desc">경기 성남시 ㅇㅇ구 ㅇㅇㅇ로 000번길 00-00 (ㅇㅇ동) 0층</dd>
                                    </div>
                                </dl>
                            </div>
                            <a href="#" class="change_btn btn_edit outlinegrey small"> 변경 </a>
                        </div>
                    </div>
                </div>
                <div class="section_unit">
                    <div class="section_title"><h3 class="title_txt">배송 방법</h3></div>
                    <div class="section_content">
                        <div class="delivery_service_option">
	                        <div class="way_info">
	                            <div class="way_status_thumb">
	                                <img
	                                    src="https://kream-phinf.pstatic.net/MjAyMTExMjlfMTQ4/MDAxNjM4MTc4MjI5NTk3.2phJLPtRvFqViNfhZu06HzNRiUBlT4cmZR4_Ukqsyesg.ikrfWOrL7WXCVO0Rqy5kMvOn3B2YpjLUj6RuJqosPX0g.PNG/a_8b54cbca40e945f4abf1ee24bdd031f7.png"
	                                    alt="3,000원"
	                                    class="way_img"/>
	                            </div>
	                            <div class="way_desc">
	                                <p class="company">
	                                    <span class="badge_title">일반배송</span><span class="company_title">3,000원</span>
	                                </p>
	                                <p class="sub_text">검수 후 배송 ・ 5-7일 내 도착 예정</p>
	                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section>
                <div class="section_title"><h3 class="title_txt">포인트</h3></div>
                <div class="section_content">
                    <div class="section_input">
                        <input placeholder="결제 시점에 최대 사용" disabled="disabled" class="input_credit" /><button class="btn_use_credit">최대 사용</button>
                    </div>
                    <div class="info_point">
                        <div>
                            <span class="text_current">보유 포인트</span>
                            <div class="value_current"><span class="point">0</span><span class="unit">P</span></div>
                        </div>
                        <p class="guide_point">구매 입찰은 ‘최대 사용'만 선택 가능하며, 거래 체결 시점에 보유한 모든 포인트를 사용합니다.</p>
                    </div>
                </div>
            </section>
            <section>
                <div class="section_title"><h3 class="title_txt">최종 주문 정보</h3></div>
                <div class="section_content">
                    <div class="instant_group">
                        <div class="price_total order_info">
                            <dl class="price_box">
                                <dt class="price_title">총 결제금액</dt>
                                <dd class="price"><span class="amount">33,600</span><span class="unit">원</span></dd>
                            </dl>

                        </div>
                        <div class="price_bind">
                            <dl class="price_addition is_dark">
                                <dt class="price_title">
                                    <span>구매 희망가</span>
                                </dt>
                                <dd class="price_text">30,000원</dd>
                            </dl>
                            <dl class="price_addition">
                                <dt class="price_title">
                                    <span>포인트</span>
                                </dt>
                                <dd class="price_text">-</dd>
                            </dl>
                            <dl class="price_addition">
                                <dt class="price_title">
                                    <span>검수비</span>
                                </dt>
                                <dd class="price_text">무료</dd>
                            </dl>
                            <dl class="price_addition">
                                <dt class="price_title">
                                    <span>수수료</span>
                                    <button class="btn_title">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="icon sprite-icons info-circle-white">
                                            <use href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-info-circle-white" xlink:href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-info-circle-white"></use>
                                        </svg>
                                    </button>
                                </dt>
                                <dd class="price_text">600원</dd>
                            </dl>
                            <dl class="price_addition">
                                <dt class="price_title">
                                    <span>배송비</span>
                                </dt>
                                <dd class="price_text">3,000원</dd>
                            </dl>
                        </div>
                        <div class="price_bind">
                            <dl class="price_addition is_dark">
                                <dt class="price_title">
                                    <span>입찰 마감 기한</span>
                                </dt>
                                <dd class="price_text">1일 - 2022/07/11까지</dd>
                            </dl>
                        </div>
                    </div>
                </div>
            </section>
            <section>
                <div class="section_title"><h3 class="title_txt">결제 방법</h3></div>
                <div class="section_content">
                    <div class="simple_payment">
                        <!-- <h4 class="method_title">
                            <div class="main_title">카카오페이 간편 결제 <span class="sub_title">카카오페이 간편결제</span></div>
                            <a href="#none" class="btn_card_add">+ 새 카드 추가</a>
                        </h4> -->
                        <div class="card_list" >
                            <div class="main_card selected" style="cursor: pointer;">
                                <div class="clickable_card">
                                <span class="sub_title">카카오페이 간편결제&emsp;</span>
                                <img alt="카카오페이 결제" src="/TeamProject/img/shop/payment_icon_yellow_large.png" id="kakaoPay_payment_btn" style="height: 20px;">
                                    <!-- <div class="card_info" style="text-align: center;">
                                    	간편 결제 하기
                                        <span class="card_name"> BC</span>
                                        <div class="card_num">
                                            <span class="num_bind">
                                                <span class="dot"><span class="dot"></span></span><span class="hyphen"></span>
                                                <span class="dot"><span class="dot"></span></span><span class="hyphen"></span>
                                                <span class="dot"><span class="dot"></span></span><span class="hyphen"></span>
                                                <span class="last_num">9324</span>
                                            </span>
                                        </div>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="method_desc">
                        <p class="desc_txt">결제는 일시불만 지원합니다.<br>구매 입찰의 경우 입찰 당일 혹은 다음 날 오후 4시에 등록된 결제 수단으로 결제 됩니다.</p>
                    </div>
                </div>
            </section>
            <section class="buy_check">
                <div>
                    <ul class="check_list lg">
                        <li class="check_item">
                            <a class="check_area">
                                <div class="notice_group">
                                    <p class="notice_maintext">판매자의 판매거부, 배송지연, 미입고 등의 사유가 발생할 경우, 거래가 취소될 수 있습니다.</p>
                                    <p class="notice_subtext">앱 알림 해제, 알림톡 차단, 전화번호 변경 후 미등록 시에는 거래 진행 상태 알림을 받을 수 없습니다.</p>
                                </div>
                                <div class="checkbox_item">
                               		<label for="undefined" class="check_label">
                               			<img class="check_area_checkbox" alt="check1" src="/TeamProject/img/shop/checkbox-inactive.png">
									</label>
								</div>
                            </a>
                        </li>
                        <li class="check_item">
                            <a class="check_area">
                                <div class="notice_group">
                                    <p class="notice_maintext">창고 보관을 선택한 경우, 구매자에게 배송되지 않고 KREAM 창고에 보관됩니다.</p>
                                    <p class="notice_subtext">검수 합격 후 보관이 완료되면 창고 이용료(현재 첫 30일 무료)가 결제됩니다.</p>
                                </div>
                                <div class="checkbox_item">
                               		<label for="undefined" class="check_label">
                               			<img class="check_area_checkbox" alt="check2" src="/TeamProject/img/shop/checkbox-inactive.png">
									</label>
								</div>
                            </a>
                        </li>
                        <li class="check_item">
                            <a class="check_area">
                                <div class="notice_group">
                                    <p class="notice_maintext">구매 입찰의 거래가 체결되면, 단순 변심이나 실수에 의한 취소가 불가능합니다.</p>
                                    <p class="notice_subtext">본 거래는 개인간 거래로 전자상거래법(제17조)에 따른 청약철회(환불, 교환) 규정이 적용되지 않습니다.</p>
                                </div>
                                <div class="checkbox_item">
                               		<label for="undefined" class="check_label">
                               			<img class="check_area_checkbox" alt="check3" src="/TeamProject/img/shop/checkbox-inactive.png">
									</label>
								</div>
                            </a>
                        </li>
                        <li class="check_item">
                            <a class="check_area">
                                <div class="notice_group">
                                    <p class="notice_maintext">구매 조건을 모두 확인하였으며, 입찰 진행에 동의합니다.</p>
                                </div>
                                <div class="checkbox_item">
                               		<label for="undefined" class="check_label">
                               			<img class="check_area_checkbox" alt="check4" src="/TeamProject/img/shop/checkbox-inactive.png">
									</label>
								</div>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="buy_total_confirm">
                    <div class="price_total_confirm">
                        <dl class="price_box">
                            <dt class="price_title">총 결제금액</dt>
                            <dd class="total_price"><span class="amount">33,600</span><span class="unit">원</span></dd>
                        </dl>
                    </div>
                    <div class="btn_confirm"><a href="#" class="buy_btn"> 구매 입찰하기 </a></div>
                    <%-- <a href="#" class="buy_btn"> 구매 입찰하기 </a> --%>
                </div>
            </section>
        </div>
    </div>
</div>

<script type="text/javascript">

$(function(){
	$('.check_area').click(function(){
		img = $(this).find('.check_area_checkbox');
		if(img.hasClass('active')){
			img.attr('src', '/TeamProject/img/shop/checkbox-inactive.png');
			img.removeClass('active');
		}
		else{
			img.addClass('active');
			img.attr('src', '/TeamProject/img/shop/checkbox-active.png');
		}
		
		if($('.active').length == 4){
			$('.buy_btn').css('background-color', '#ef6253');
		}
		else{
			$('.buy_btn').css('background-color', '#ebebeb');
		}
	});
	
	$('.card_list').click(function(){
		if($('#payment_method').val() == '구매입찰'){
			reservation_request_pay();
		}else{
			general_request_pay();
		}
	})
});

var IMP = window.IMP; // 생략 가능
IMP.init("imp50328177");

var merchant_uid = $('.model_number').text() + "_"+ new Date().getTime();
var name = $('.model_title').text() + " | " + $('.size_txt').text() + "mm";
// nickname + pro_seq + size
var customer_uid = "nickname" + "_" + "1234" + "_" + $('.size_txt').text();
var buyer_email = '구매자@이메일';
var buyer_name = '구매자이름';
var buyer_tel = '폰-번-호';
var buyer_addr = '구매자시 배송지구 주소동';
var buyer_postcode = '우편-번호'

function general_request_pay() {
	IMP.request_pay({ // param
		pg : 'kakaopay.TC0ONETIME',
	    pay_method : 'card', //생략 가능
	    merchant_uid: merchant_uid, // 상점에서 관리하는 주문 번호
	    name : name,
	    amount : 1,
	    buyer_email : buyer_email,
	    buyer_name : buyer_name,
	    buyer_tel : buyer_tel,
	    buyer_addr : buyer_addr,
	    buyer_postcode : buyer_postcode
	}, function (rsp) { // callback
		if (rsp.success) {
            alert(rsp.imp_uid + " | " + rsp.merchant_uid);
			jQuery.ajax({
				url: "/TeamProject/shop/insertBuyPay",
				method: "POST",
				headers: { "Content-Type": "application/json" },
				data: {
				    product_id : '1234',
                    addredd_id : '3',
                    buy_price: '128000',
                    period: '2022-07-14',
                    size_type: 230,
                    customer_uid: ''
				},
                success: function(){
                    alert('저장 성공');
                },
                error: function(err){
                    console.log(err);
                }
			}).done(function(data){
				
			})
		} else {
			alert("결제에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
		}
	});
}

function reservation_request_pay(){
	IMP.request_pay({
		pg : 'kakaopay.TCSUBSCRIP',
		pay_method: 'card',
		merchant_uid: merchant_uid, // 상점에서 관리하는 주문 번호
		name : name,
		amount : 0, // 빌링키 발급만 진행하며 결제승인을 하지 않습니다.
		customer_uid: customer_uid, // 필수 입력
		buyer_email : buyer_email,
		buyer_name : buyer_name,
		buyer_tel : buyer_tel,
		buyer_addr: buyer_addr,
	}, function(rsp) {
		if ( rsp.success ) {
            $.ajax({
                url: '/TeamProject/shop/insertBuyPay',
				type: 'post',
				data: {
                    product_id : '1234',
                    addredd_id : '3',
                    buy_price: '128000',
                    period: '2022-07-14',
                    size_type: 230,
                    customer_uid: customer_uid
				},
				success: function(){
                    alert('빌링키 발급 성공');
				},
				error: function(err){
					console.log(err);
				}
			});
		} else {
			alert('빌링키 발급 실패' + rsp.error_msg);
		}
	});
}
</script>