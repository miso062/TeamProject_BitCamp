<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="/TeamProject/css/shop/buy/buyPay.css"/>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

<input type="hidden" id="payment_method" value="${map.payment_method}">
<div class="container buy lg">
    <div class="content">
        <div class="buy_immediate">
            <div class="product_info_area">
                <div class="product_info">
                    <div class="product" style="background-color: rgb(235, 240, 245);">
                    	<img alt="상품 이미지"
	                        src=${map.productImgDTO.file_path}
	                        class="image"/>
                    </div>
                    <div class="product_detail">
                        <strong class="model_number">${map.productDTO.model_number }</strong>
                        <p class="model_title">${map.productDTO.eng_name }</p>
                        <p class="model_ko">${map.productDTO.kor_name }</p>
                        <div class="model_desc">
                            <p class="size_txt">${map.size }</p>
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
                        <div class="must_add_address" style="display: none;">
	                        <div class="way_info">
	                            <div class="way_desc">
	                                <p class="sub_text"> + 배송지를 추가해주세요. </p>
	                            </div>
                            </div>
                        </div>
                        <div class="delivery_info">
                            <div class="address_info">
                                <dl class="info_list">
                                    <input type="hidden" id="selected_addr_id">
                                    <input type="hidden" id="selected_zipcode">
                                    <div class="info_box"><dt class="title">받는 분</dt><dd class="desc" id="address_name"></dd></div>
                                    <div class="info_box"><dt class="title">연락처</dt><dd class="desc" id="address_hp"></dd></div>
                                    <div class="info_box">
                                        <dt class="title">배송 주소</dt>
                                        <dd class="desc" id="address_detail"></dd>
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
	                                    alt="3,000원" class="way_img"/>
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
                
                <div class="layer_address layer lg" style="display: none;">
				    <div class="layer_container">
				        <div class="layer_header"><h2 class="layer_title">주소록</h2></div>
				        <div class="layer_content">
				            <div class="list_wrap">
				                <div class="my_list">
				                    <div class="other">
				                        <div class="other_list">
				                            
				                        </div>
				                    </div>
				                </div>
				            </div>
				        </div>
				        <a href="#" class="btn_layer_close">
                            <img src="/TeamProject/img/shop/cancel.png" alt="닫기" class="address_close_btn">
				        </a>
				    </div>
				</div>

                <div class="layer_delivery layer lg" style="display: none;">
                    <div class="layer_container">
                        <div class="layer_header"><h2 class="layer_title">새 주소 추가</h2></div>
                        <div class="layer_content">
                            <div class="delivery_bind">
                                <div class="delivery_input">
                                    <div class="input_box" id="input_box">
                                        <h4 class="input_title" id="input_name">이름</h4>
                                        <div class="input_item"><input type="text" placeholder="수령인의 이름" autocomplete="off" class="input_txt a" oninput="oninputName(this.value)" id="name_input" /></div>
                                        <p class="input_error" id="input_error1" >올바른 이름을 입력해주세요. (2 - 50자)</p>
                                    </div>
                                    <div class="input_box" id="input_box1">
                                        <h4 class="input_title" id="input_phone">휴대폰 번호</h4>
                                        <div class="input_item"><input type="text" placeholder="- 없이 입력" autocomplete="off" class="input_txt a" oninput="oninputPhone(this.value)" id="phone_input"/></div>
                                        <p class="input_error" id="input_error2" >정확한 휴대폰 번호를 입력해주세요.</p>
                                    </div>
                                    <div class="input_box">
                                        <h4 class="input_title">우편번호</h4>
                                        <div class="input_item">
                                            <input type="text" placeholder="우편 번호를 검색하세요" readonly="readonly" autocomplete="off" class="input_txt" id="zipcode" />
                                            <input type="button" value="우편번호" onclick="checkPost()" class="bTn bTn_zipcode outline small">
                                        </div>
                                    </div>
                                    <div class="input_box">
                                        <h4 class="input_title">주소</h4>
                                        <div class="input_item"><input type="text" placeholder="우편 번호 검색 후, 자동입력 됩니다" readonly="readonly" autocomplete="off" class="input_txt" id="addr1" /></div>
                                    </div>
                                    <div class="input_box">
                                        <h4 class="input_title">상세 주소</h4>
                                        <div class="input_item"><input type="text" placeholder="건물, 아파트, 동/호수 입력" autocomplete="off" class="input_txt a" id="addr2" oninput="oninputaddr2(this.value)"/></div>
                                    </div>
                                </div>
                                <div class="delivery_check">
                                    <div class="checkbox_item" >
                                        <input id="check1" type="checkbox" name="" class="blind" value="0" id="check2"/>
                                        <label for="check1" class="check_default_address_label">
                                            <img src="/TeamProject/img/shop/checkbox-inactive.png" class="icon sprite-icons ico-check-inactive">
                                            <span class="label_txt">기본 배송지로 설정</span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="layer_bTn" id="layer_bTn">
                                <a href="#" class="bTn bTn_delete outlinegrey medium"> 취소 </a>
                                <a disabled="disabled" href="#" class="bTn bTn_save solid medium disabled" id="saveBtn"> 저장하기 </a>
                            </div>
                        </div>
                        <a href="#" class="bTn_layer_close">
                            <div>
                                <!-- <img src="/TeamProject/img/shop/cancel.png" alt="닫기" class="address_close_btn"> -->
                            </div>
                        </a>
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
                                <dd class="price"><span class="amount">${map.total_price}</span><span class="unit">원</span></dd>
                            </dl>

                        </div>
                        <div class="price_bind">
                            <dl class="price_addition is_dark">
                                <dt class="price_title">
                                    <span id="payment_method_price"></span>
                                </dt>
                                <dd class="price_text">${map.price}</dd>
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
                        <div class="price_bind" id="deadline_peroid">
                            <dl class="price_addition is_dark">
                                <dt class="price_title">
                                    <span>입찰 마감 기한</span>
                                </dt>
                                <dd class="price_text">${map.deadline}일 - ${map.peroid}까지</dd>
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
                            <dd class="total_price"><span class="amount">${map.total_price}</span><span class="unit">원</span></dd>
                        </dl>
                    </div>
                    <div class="btn_confirm"><a class="buy_btn"></a></div>
                </div>
            </section>
            <div class="layer_order_price_confirm layer lg" style="display: none">
                <div class="layer_container">
                    <div class="layer_header"></div>
                    <div class="layer_content">
                        <div class="alert_title">
                            <div class="alert_notice">
                                <p class="notice">한번 더 확인하세요</p>
                                <span class="rectangle"></span>
                            </div>
                            <p class="alert_total_price">총 결제금액</p>
                            <p class="price">${map.total_price}원</p>
                        </div>
                        <div class="alert_box">
                            <p class="alert_desc">해당 거래는 개인간 거래로 단순변심 또는 실수에 따른 <em>체결 후 취소는 불가능합니다.</em></p>
                        </div>
                        <div class="layer_btn"><button type="button" class="alert_done_btn" data-v-350bc372="">구매 입찰완료</button></div>
                    </div>
                    <a href="#" class="btn_layer_close">
                        <img src="/TeamProject/img/shop/cancel.png" alt="닫기" class="address_close_btn">
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">

var resultName = false; //defalt값이 틀렸을떄를 가정
var resultPhone = false;
var resultzipcode = false;
var resultaddr1 = false;
var resultaddr2 = false;

var img = '<img src="/TeamProject/img/shop/check.png" alt="선택" class="address_check_flag">';

// open change address modal
$('.change_btn').click(function(){
    $('.layer_address').fadeIn();
    $('body').css("overflow", "hidden");
    $.ajax({
        url: '/TeamProject/shop/getAddrList',
        type: 'post',
        dataType: 'json',
        success: function(data){
            $('.other_list').html('');
            $.each(data, function(index, items){
                var addr;
                var hp = items.hp.replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/\-{1,2}$/g, "");
                if(index == 0){
                    addr = '<div class="my_item select">'+
                        '<div class="info_bind">'+
                        '<div class="address_info"><div class="name_box">'+
                        '<span class="name">'+items.name+'</span>'+
                        '<span class="mark">기본 배송지</span>'+
                        '<p class="phone">'+hp+'</p>'+
                        '<div class="address_box">'+
                        '<span class="zipcode">('+items.zipcode+') </span>'+
                        '<span class="address">'+items.addr+' '+items.addr_detail+'</span>'+
                        '</div></div></div></div><div class="btn_bind"></div>'+
                        '<input type="hidden" class="address_id" value='+items.address_id+'></div>';
                }
                else{
                    addr = '<div class="my_item select">'+
                        '<div class="info_bind">'+
                        '<div class="address_info"><div class="name_box">'+
                        '<span class="name">'+items.name+'</span>'+
                        '<p class="phone">'+hp+'</p>'+
                        '<div class="address_box">'+
                        '<span class="zipcode">('+items.zipcode+') </span>'+
                        '<span class="address">'+items.addr+' '+items.addr_detail+'</span>'+
                        '</div></div></div></div><div class="btn_bind"></div>'+
                        '<input type="hidden" class="address_id" value='+items.address_id+'></div>';
                }
                $(".other_list").append(addr);
            });

            $.each($('.my_item'), function(){
                if($('#selected_addr_id').val() == $(this).find('.address_id').val()){
                	$(this).addClass('is_active');
                	$(this).find('.btn_bind').html(img);
                }
            })
        },
        error: function(err){
            console.log(err);
        }
    });
});

$(document).on('click', '.my_item', function(){
    $('.my_item').removeClass('is_active');
    $(this).addClass('is_active');
    $('.btn_bind').empty();
    $(this).find('.btn_bind').html(img);
    $.ajax({
        url: '/TeamProject/shop/getAddress',
        type: 'post',
        data: {addr_id : $(this).find('.address_id').val()},
        dataType: 'json',
        success: function(data){
            $('#address_name').text(data.name);
            $('#address_hp').text(data.hp);
            $('#address_detail').text(data.addr + ' ' + data.addr_detail);
            $('#selected_addr_id').val(data.address_id);
            $('#selected_zipcode').val(data.zipcode);
            $('.layer_address').fadeOut();
            $('body').css("overflow-y", "scroll");
        },
        error: function(err){
            console.log(err);
        }
    });
})

$(document).on("click",function(e){
    if($('.layer_address').is(e.target)) {
        $('.layer_address').fadeOut();
        $('body').css("overflow-y", "scroll");
    }
});
$('.btn_layer_close').click(function(){ // 취소 버튼 눌러서 종료
    $('.layer_address').fadeOut();
    $('body').css("overflow-y", "scroll");
});

// open add address modal
function addr_initialization(){
    $('.input_error').css('display', 'none');
    $('.has_error').removeClass('has_error');
    $('.b').removeClass('b');
    $('#name_input').val('');
    $('#phone_input').val('');
    $('#zipcode').val('');
    $('#addr1').val('');
    $('#addr2').val('');
}

$('.add_more_btn, .must_add_address').click(function(){
    $('.layer_delivery').fadeIn();
    $('body').css("overflow", "hidden");
    addr_initialization();
});
$(document).on("click",function(e){
    if($('.layer_delivery').is(e.target)) {
        $('.layer_delivery').fadeOut();
        $('body').css("overflow-y", "scroll");
    }
});
$('.layer_bTn').click(function(){ // 취소 버튼 눌러서 종료
    $('.layer_delivery').fadeOut();
    $('body').css("overflow-y", "scroll");
});


// open alert check modal
$('.btn_confirm').click(function(){
    $('.layer_order_price_confirm').fadeIn();
    $('body').css("overflow", "hidden");
    addr_initialization();
});
$(document).on("click",function(e){
    if($('.layer_order_price_confirm').is(e.target)) {
        $('.layer_order_price_confirm').fadeOut();
        $('body').css("overflow-y", "scroll");
    }
});
$('.btn_layer_close').click(function(){ // 취소 버튼 눌러서 종료
    $('.layer_order_price_confirm').fadeOut();
    $('body').css("overflow-y", "scroll");
});

function oninputaddr2(value){
	console.log(value);
	resultaddr2 = checkaddr2(value);  // 1개의 글자이벤트를 받을때마다 checkEmail호출
	resultaddr1 = checkaddr1(value);
	resultzipcode = checkzipcode(value);
	console.log(resultaddr2);
	console.log(resultaddr1);
	console.log(resultzipcode);
	saveOkCheck();
}
function oninputName(value){
	console.log(value);
	resultName = checkName(value);  // 1개의 글자이벤트를 받을때마다 checkEmail호출
	console.log(resultName);
	saveOkCheck();
}

function oninputPhone(value){
	console.log(value);
	resultPhone = checkPhone(value);	// 1개의 글자이벤트를 받을때마다 checkPwd호출
	console.log(resultPhone);
	saveOkCheck();
}

//로그인 버튼 활성 비활성
function saveOkCheck(){ 
	if((resultName == true) && (resultPhone == true ) && (resultzipcode == true ) && (resultaddr1 == true ) && (resultaddr2 == true )){
		document.getElementById('saveBtn').className = 'bTn bTn_save solid medium passadd';
	}else {
		document.getElementById('saveBtn').className = 'bTn bTn_save solid medium disabled';
	}
}

function checkzipcode(value) { //이름 유효성 검사
	if(document.getElementById('zipcode').value==''){
		return false;
	} else {
		return true;
	}
}
function checkaddr1(value) { //이름 유효성 검사
	if(document.getElementById('zipcode').value==''){
		return false;
	} else {
		return true;
	}
}
function checkaddr2(value) { //이름 유효성 검사
	var reg_required = /.{1,}/;
	
	if (reg_required.test(value) == true) {
		return true;
	} else {
		return false;
	}
}
function checkName(value) { //이름 유효성 검사
	var regName = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|]+$/;
	
	if (regName.test(value) == true) {
		document.getElementById('input_box').className = 'input_box';
		document.getElementById('input_error1').style.display = "none";
		document.getElementById('name_input').className = 'input_txt a';
		return true;
	} else {
		document.getElementById('input_box').className ='input_box has_error';
		document.getElementById('input_error1').style.display = "block";
		document.getElementById('name_input').className ='input_txt b';
		return false;
	}
}
function checkPhone(value) { //핸드폰 유효성 검사
	var regPhone = /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/;

	if(regPhone.test(value) == true) {
		document.getElementById('input_box1').className = 'input_box';
		document.getElementById('input_error2').style.display = "none";
		document.getElementById('phone_input').className = 'input_txt a';
		return true;
	} else {
		document.getElementById('input_box1').className ='input_box has_error';
		document.getElementById('input_error2').style.display = "block";
		document.getElementById('phone_input').className ='input_txt b';
		return false;
	}
}

function checkPost() { // 우편 번호
    new daum.Postcode({
        oncomplete: function(data) {
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }
            document.getElementById('zipcode').value = data.zonecode;
            document.getElementById("addr1").value = addr;
            document.getElementById("addr2").focus();
        }
    }).open();
}

$(document).on('click','.check_default_address_label',function(){ // 기본 배송지 선택
		if($(this).children('img').hasClass('icon sprite-icons ico-check-inactive')){
			$(this).children('img').attr('src', '/TeamProject/img/shop/checkbox-active.png');
			$(this).children('img').addClass('ico-check-active');
			$(this).children('img').removeClass('ico-check-inactive');
			$(this).prev().val('1');
		}
		else{
			$(this).children('img').attr('src', '/TeamProject/img/shop/checkbox-inactive.png');
			$(this).children('img').addClass('ico-check-inactive');
			$(this).children('img').removeClass('ico-check-active');
			$(this).prev().val('0');
		}
});

$(document).on('click','.bTn.bTn_save.solid.medium.passadd',function(){ // 배송지 저장
	$.ajax({
		url:'/TeamProject/user/addAddressBook',
		type: 'post',
		data: {
			'name': $('#name_input').val(),
			'hp': $('#phone_input').val(),
			'zipcode': $('#zipcode').val(),
			'addr': $('#addr1').val(),
			'addr_detail': $('#addr2').val(),
			'flag' : $('#check1').val()
		},
		success: function(){
			alert('저장되었습니다.');
            location.reload();
		},
		error: function(err){
		console.log(err);
		}
	});
});

$(function(){
    // 결제 방법에 따른 구매 시기 표시
    if($('#payment_method').val() == '구매 입찰'){
        $('#payment_method_price').text('구매 희망가');
    } else{
        $('#payment_method_price').text('즉시 구매가');
        $('#deadline_peroid').css('display', 'none');
    }

    // 사용자 기본 배송지 불러오기
    $.ajax({
        url: '/TeamProject/shop/getDefalutAddress',
        type: 'get',
        dataType: 'json',
        success: function(data){
            if(!data.address_id){
                $('.delivery_info').css('display', 'none');
                $('.must_add_address').css('display', 'block');
            }
            else{
                $('#address_name').text(data.name);
                $('#address_hp').text(data.hp);
                $('#address_detail').text(data.addr + " " + data.addr_detail);
                $('#selected_addr_id').val(data.address_id);
                $('#selected_zipcode').val(data.zipcode);
            }
            $('.buy_btn').text($('#payment_method').val()+'하기');
        },
        error: function(err){
            console.log(err);
        }
    });

    // 구매 확인 사항 체크
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
		
		if($('.active').length == 4 && $('#address_name').html() != ''){
			$('.buy_btn').css('background-color', '#ef6253');
            $('.buy_btn').css('cursor', 'pointer');
            $('.buy_btn').addClass('able');
		}
		else{
			$('.buy_btn').css('background-color', '#ebebeb');
            $('.buy_btn').css('cursor', 'default');
            $('.buy_btn').removeClass('able');
		}
	});
	
    // 입찰 방법 결정
	$('.alert_done_btn').click(function(){
		if($('.buy_btn').hasClass('able')){
            if($('#payment_method').val() == '구매 입찰'){
                reservation_request_pay();
            }else{
                general_request_pay();
            }
        }
	})
});

var IMP = window.IMP; // 생략 가능
IMP.init("imp50328177");

var merchant_uid = $('.model_number').text() + "_"+ new Date().getTime();
var name = $('.model_title').text() + " | " + $('.size_txt').text() + "mm";
// username + pro_seq + size
var customer_uid = '${map.userDTO.user_name}' + "_" + "${map.productDTO.product_id }" + "_" + $('.size_txt').text();
var buyer_email = '${sessionScope.memId}';
var buyer_name = '${map.userDTO.user_name}';
var buyer_tel = '${map.userDTO.hp}';
var amount = '${map.total_price}';

// 즉시 결제
function general_request_pay() {
	IMP.request_pay({ // param
		pg : 'kakaopay.TC0ONETIME',
	    pay_method : 'card', //생략 가능
	    merchant_uid: merchant_uid, // 상점에서 관리하는 주문 번호
	    name : name,
	    amount : amount,
	    buyer_email : buyer_email,
	    buyer_name : buyer_name,
	    buyer_tel : buyer_tel,
	    buyer_addr : $('#address_detail').text(),
	    buyer_postcode : $('#selected_zipcode').val()
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

// 정기 결제
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
	    buyer_addr : $('#address_detail').text(),
	    buyer_postcode : $('#selected_zipcode').val()
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