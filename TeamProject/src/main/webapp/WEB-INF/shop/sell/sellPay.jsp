<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="/TeamProject/css/shop/sell/sellPay.css"/>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

<input type="hidden" id="payment_method" value="${map.payment_method}">
<div class="container sell lg" style="background: #fafafa;">
    <div class="content">
        <div class="sell_immediate">
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
                <div class="section_unit">
                    <div class="section_title"><h3 class="title_txt">판매 정산 계좌</h3></div>
                    <div class="section_content account_content">
                        <div class="account_info">
                            <dl class="info_list">
                                <div class="info_box">
                                    <dt class="title">계좌</dt>
                                    <dd class="desc" id="enter_account">정산 받을 계좌번호를 입력해주세요.</dd>
                                </div>
                                <div class="info_box">
                                    <dt class="title">예금주</dt>
                                    <dd class="desc" id="enter_owner"></dd>
                                </div>
                            </dl>
                        </div>
                        <a href="#" id="account_change_btn" class="btn btn_edit outlinegrey small"> 변경 </a>
                    </div>
                </div>
                <div class="layer_payout_account layer lg" style="display: none">
				    <div class="layer_account_container">
				        <div class="layer_header"><h2 class="title">판매 정산 계좌</h2></div>
				        <div class="layer_content" style="padding: 0 20px 20px;">
				            <div class="content_registration">
				                <div class="account_registration">
				                    <div class="input_logistics_companies input_box">
				                        <h4 class="input_title">은행명</h4>
				                        <div class="input_item" style="height: 36px;">
				                            <input type="text" placeholder="선택하세요" readonly="readonly" id="selected_bank" autocomplete="off" class="input_txt" />
				                            <button type="button" class="btn btn_dropdown">
				                                <img src="/TeamProject/img/shop/dropdown.png" alt="닫기" class="address_close_btn">
				                            </button>
				                            <div class="layer_dropdown layer lg" style="height: 230px; display: none;">
											    <div class="layer_container">
											        <div class="layer_dropdown_header"><h2 class="title">은행 선택</h2></div>
											        <div class="layer_content" style="height: 228px;">
											            <ul class="drop_list">
											                <li class="drop_item"><a href="#" class="drop_link"> 국민은행 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 신한은행 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 우리은행 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 하나은행 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 기업은행 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 농협은행 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> SC은행 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 우체국 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 한국씨티은행 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 산업은행 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 카카오뱅크 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 부산은행 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 대구은행 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 광주은행 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 케이뱅크 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 수협중앙회 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 제주은행 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 전북은행 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 지역농축협 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 경남은행 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 새마을금고연합회 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 신협 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 저축은행 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> HSBC은행 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 도이치은행 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 제이피모간체이스은행 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> BOA은행 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 비엔피파리바은행 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 중국공상은행 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 산림조합 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 중국건설은행 </a></li>
											                <li class="drop_item"><a href="#" class="drop_link"> 토스뱅크 </a></li>
											            </ul>
											        </div>
											    </div>
											</div>
															                            
				                        </div>
				                    </div>
				                    <div class="input_box">
				                        <h4 class="input_title">계좌번호</h4>
				                        <div class="input_item">
				                        	<input type="text" placeholder="- 없이 입력하세요" autocomplete="off" class="input_txt" id="account_num" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
				                        </div>
				                        <p class="input_error">올바른 계좌번호를 입력해주세요.</p>
				                    </div>
				                    <div class="input_box">
				                        <h4 class="input_title">예금주</h4>
				                        <div class="input_item">
                                            <input type="text" placeholder="예금주명을 정확히 입력하세요." autocomplete="off" id="account_owner_name" class="input_txt" />
                                        </div>
				                        <p class="input_error">올바른 이름을 입력해주세요. (2-50자)</p>
				                    </div>
				                </div>
				                <div class="registration_btn_box"  style="text-align: center;">
				                	<a href="#" id="regist_account" class="btn btn_save solid medium disabled"> 변경하기 </a>
			                	</div>
				            </div>
				        </div>
				        <a href="#" class="btn_layer_close" id="account_layer_close">
				            <img src="/TeamProject/img/shop/cancel.png" alt="닫기" class="address_close_btn">
				        </a>
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
                                <dd class="price_text">선불 · 판매자 부담</dd>
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
            <!-- <section>
                <div class="section_title"><h3 class="title_txt">페널티 결제 방법</h3></div>
                <div class="section_content">
                    <div class="simple_payment">
                        <div class="card_list" >
                            <div class="main_card selected" style="cursor: pointer;">
                                <div class="clickable_card">
                                <span class="sub_title">카카오페이 간편결제&emsp;</span>
                                <img alt="카카오페이 결제" src="/TeamProject/img/shop/payment_icon_yellow_large.png" id="kakaoPay_payment_btn" style="height: 20px;">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="method_desc">
                        <p class="desc_txt">페널티 결제는 일시불만 지원합니다.<br>구매 입찰의 경우 입찰 당일 혹은 다음 날 오후 4시에 등록된 결제 수단으로 결제 됩니다.</p>
                    </div>
                </div>
            </section> -->
            <section class="sell_check">
                <div>
                    <ul class="check_list lg">
                        <li class="check_item">
                            <a class="check_area">
                                <div class="notice_group">
                                    <p class="notice_maintext">
                                        거래가 체결되면 일요일 · 공휴일을 제외하고 48시간 내에 KREAM으로 발송을 완료한 후, 발송 정보를 정확히 입력해야 합니다.
                                    </p>
                                    <p class="notice_subtext">착불 배송 시 판매 금액에서 차감 정산하며, 미정산 시 별도 고지없이 해당 금액을 결제 시도할 수 있습니다.</p>
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
                                    <p class="notice_maintext">송장 번호 미기재·오입력 시 입고가 진행되지 않으며, 발송 후 5일(일요일·공휴일 제외) 내 미도착은 허위 정보 입력으로 간주하여 미입고 페널티를 부과합니다.</p>
                                    <p class="notice_subtext">앱 알림 해제, 알림톡 차단, 전화번호 변경 후 미등록 시에는 거래 진행 상태 알림을 받을 수 없으며 이로 인한 거래 실패는 판매자의 책임입니다.</p>
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
                                    <p class="notice_maintext">검수 기준과 페널티 및 이용 정책을 다시 한번 확인하였습니다.</p>
                                    <p class="notice_subtext">이용정책 위반 시, 판매 금액의 최대 15.0%의 페널티가 부과됩니다. 페널티 회피 시 이후 거래가 제한되며 별도 고지없이 해당 금액을 결제 시도할 수 있습니다.</p>
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
                                    <p class="notice_maintext">판매 조건을 모두 확인하였으며, 입찰 진행에 동의합니다.</p>
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
                <div class="sell_total_confirm">
                    <div class="price_total_confirm">
                        <dl class="price_box">
                            <dt class="price_title">총 결제금액</dt>
                            <dd class="total_price"><span class="amount">${map.total_price}</span><span class="unit">원</span></dd>
                        </dl>
                    </div>
                    <div class="btn_confirm"><a class="sell_btn"></a></div>
                </div>
            </section>
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

// open enter account modal
$('#account_change_btn').click(function(){
    $('#account_owner_name').val('');
    $('#account_num').val('');
    $('#selected_bank').val('');
    $('.layer_payout_account').fadeIn();
    $('body').css("overflow", "hidden");
    addr_initialization();
});

// open select bank modal
$('.btn_dropdown, #selected_bank').click(function(){
    if($('.layer_dropdown').css('display') == 'none'){
        $('.layer_dropdown').fadeIn();
    }
    else{
    	$('.layer_dropdown').fadeOut();
    }
});

$('.drop_link').click(function(){
    $('#selected_bank').val($(this).text());
    $('.layer_dropdown').fadeOut();
});

$('#regist_account').click(function(){
    if(!$('#account_owner_name').val() || !$('#account_num').val() || !$('#selected_bank').val()){
        alert('정보를 전부 입력해주세요!');
    }
    else{
        $('#enter_account').text($('#selected_bank').val() + ' ' + $('#account_num').val());
        $('#enter_owner').text($('#account_owner_name').val());
    	$('.layer_payout_account').fadeOut();
        $('body').css("overflow-y", "scroll");
    }
});

$('#account_layer_close').click(function(){
    $('.layer_payout_account').fadeOut();
    $('body').css("overflow-y", "scroll");
});


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
    if($('#payment_method').val() == '판매 입찰'){
        $('#payment_method_price').text('판매 희망가');
    } else{
        $('#payment_method_price').text('즉시 판매가');
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
            $('.sell_btn').text($('#payment_method').val()+'하기');
        },
        error: function(err){
            console.log(err);
        }
    });

    // 판매 확인 사항 체크
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
		
		if($('.active').length == 4 && $('#address_name').html() != '' && $('#enter_owner').text() != ''){
			$('.sell_btn').css('background-color', '#31b46e');
            $('.sell_btn').css('cursor', 'pointer');
            $('.sell_btn').addClass('able');
		}
		else{
			$('.sell_btn').css('background-color', '#ebebeb');
            $('.sell_btn').css('cursor', 'default');
            $('.sell_btn').removeClass('able');
		}
	});
	
    // 입찰 방법 결정
	$('.btn_confirm').click(function(){
		if($('.sell_btn').hasClass('able')){
			
			var orig_price = '${map.price}';
            var regex = /[^0-9]/g;
            var sell_price = orig_price.replace(regex, "");
			
            var status1;
            var buy;
            var dateString;
            
            if($('#payment_method').val() == '판매 입찰'){
            	buy = 0;
	            var arr = $('.price_text:eq(4)').text().split(" ");
	            dateString = arr[2].substring(0, arr[2].length-2);
            }else{
	            buy = '${map.buy}'
            	var today = new Date();
                var year = today.getFullYear();
                var month = ('0' + (today.getMonth() + 1)).slice(-2);
                var day = ('0' + today.getDate()).slice(-2);
                dateString = year + '/' + month  + '/' + day;
            }
            $.ajax({
            	url: "/TeamProject/shop/insertSellPay",
            	type: 'post',
            	data: {
            		product_id : '${map.productDTO.product_id }',
                    address_id : $('#selected_addr_id').val(),
                    user_id: '${sessionScope.memId}',
                    sell_price: sell_price,
                    period: dateString,
                    size_type: '${map.size }',
                    account: $('#enter_account').text() + " 예금주: " + $('#enter_owner').text(),
                    status1: '판매 대기중',
                    buy: buy
            	},
            	success: function(data){
            		location.href = "/TeamProject/shop/sellFinish?sell="+data.sell_id;
            	}
            });
        }
	})
});

</script>