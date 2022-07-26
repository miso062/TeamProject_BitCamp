<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
.my_addressbook {
    min-height: 315px;
}
.content_title {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    padding: 5px 0 6px;
} 
.title {
    font-size: 24px;
    letter-spacing: -.36px;
}
.title>h3 {
    line-height: 29px;
    font-size: inherit;
}
.btn_box .btn, .btn_box {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
}
.btn_box {
    margin-left: auto;
    padding-left: 30px;
    -ms-flex-negative: 0;
    flex-shrink: 0;
}
.btn_box .btn.btn_add {
    margin-right: 0;
    padding: 0 14px;
    height: 34px;
    line-height: 32px;
    border-radius: 10px;
    border: 1px solid #222;
    font-size: 12px;
    letter-spacing: -.06px;
}
.basic {
    padding: 30px 0 29px;
    border-bottom: 2px solid #222;
}
.my_item {
    position: relative;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}
.my_item .info_bind {
    margin-right: 24px;
}
.address_info {
    line-height: 17px;
}
.is_active .address_info .name {
    font-weight: 700;
} 
.address_info .name {
    display: inline-block;
    vertical-align: top;
    line-height: 20px;
    font-size: 15px;
    letter-spacing: -.15px;
    font-weight: 700;
}
.address_info .mark {
    display: inline-block;
    vertical-align: top;
    line-height: 14px;
    margin-top: 0;
    margin-left: 4px;
    padding: 3px 6px;
    font-size: 12px;
    letter-spacing: -.06px;
    border-radius: 10px;
    background-color: #f4f4f4;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}
.address_info .phone {
    padding-top: 5px;
    font-size: 15px;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
}
.address_info .phone .hyphen {
    margin-left: 4px;
    margin-right: 2px;
    display: -webkit-inline-box;
    display: -ms-inline-flexbox;
    display: inline-flex;
    width: 4px;
    height: 1px;
    background-color: #000;
}
.address_info .phone .dot {
    white-space: nowrap;
    margin-top: -5px;
}
.address_info .phone .dot:after {
    content: "";
    margin-left: 2px;
    display: -webkit-inline-box;
    display: -ms-inline-flexbox;
    display: inline-flex;
    width: 5px;
    height: 5px;
    background-color: #222;
    border-radius: 100%;
}
.address_info .address_box {
    padding-top: 4px;
    font-size: 14px;
    letter-spacing: -.21px;
}
.basic .btn_bind {
    margin-top: 12px;
}
.btn_bind {
    margin-left: auto;
}
.btn_bind .btn {
    padding-left: 11px;
    padding-right: 12px;
}
.outlinegrey {
    border: 1px solid #d3d3d3;
    color: rgba(34,34,34,.8);
}
.small {
    padding: 0 14px;
    height: 34px;
    line-height: 32px;
    border-radius: 10px;
}
.small, .xsmall {
    font-size: 12px;
    letter-spacing: -.06px;
}
.btn {
    display: inline-block;
    cursor: pointer;
    vertical-align: middle;
    text-align: center;
    color: rgba(34,34,34,.8);
    background-color: #fff;
}
.other .my_item {
    padding: 17px 0 16px;
    border-bottom: 1px solid #ebebeb;
}
.pagination {
    padding: 28px 0;
}
.pagination_box {
    position: relative;
    font-size: 0;
    text-align: center;
}
.pagination_box.first .prev_btn_box, 
.pagination_box.last .next_btn_box {
    display: none;
}
a {
    color: inherit;
    -webkit-tap-highlight-color: rgba(0,0,0,.1);
}
.next_btn_box .btn_arr, 
.prev_btn_box .btn_arr {
    padding: 3px;
    width: 24px;
    height: 24px;
}
.next_btn_box .btn_arr+.btn_arr, 
.prev_btn_box .btn_arr+.btn_arr {
    margin-left: 5px;
}
[class*=arr-page-] {
    width: 18px;
    height: 22px;
}.page_bind {
    display: inline-block;
    vertical-align: top;
}
.btn_page.active {
    font-weight: 700;
    color: #222;
}
.btn_page {
    display: inline-block;
    padding: 0 8px;
    font-size: 16px;
    color: rgba(34,34,34,.5);
}
.btn_page+.btn_page {
    margin-left: 12px;
}
.next_btn_box {
    margin-left: 25px;
}
.next_btn_box, .prev_btn_box {
    display: inline-block;
    vertical-align: top;
}
/* 모달창 css */

.input_txt.b{
	border-bottom: 1px solid #f15746;
	padding: 8px 0;
    width: 100%;
    font-size: 15px;
    letter-spacing: -.15px;
    line-height: 22px;
	
}
.has_error{
	border-bottom:#f15746;
	color: #f15746; 
}
.input_txt.a:focus::placeholder{
    color:transparent;
}
.input_txt.a:focus{
	border-bottom: 2px solid #000000;
}

.layer_bTn .bTn+.bTn {
    margin-left: 8px;
}
.outlinegrey{
    border: 1px solid #d3d3d3;
    color: rgba(34,34,34,.8);
}
.layer_bTn .bTn{
    width: 120px;
}
.layer_bTn{
    padding: 24px 32px 32px;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
}
.layer_delivery .layer_bTn{
    padding-top: 32px;
}
.checkbox_item .label_txt{
    padding-left: 8px;
    display: inline-block;
    line-height: 24px;
    font-size: 13px;
    letter-spacing: -.07px;
    vertical-align: top;
}
.checkbox_item {
    position: relative;
    font-size: 0;
}
.checkbox_item .check_label {
    position: relative;
    cursor: pointer;
    display: inline-block;
}
[class*=ico-] {
    width: 24px;
    height: 24px;
}
.small {
    font-size: 12px;
    letter-spacing: -.06px;
}
.small {
    padding: 0 14px;
    height: 34px;
    line-height: 32px;
    border-radius: 10px;
}
.outline {
    border: 1px solid #d3d3d3;
}
.bTn.bTn_zipcode{
    position: absolute;
    right: 0;
    bottom: 8px;
}
.bTn{
    display: inline-block;
    cursor: pointer;
    vertical-align: middle;
    text-align: center;
    color: rgba(34,34,34,.8);
    background-color: #fff;
}
.input_item {
    position: relative;
}
.input_error{
    display: block;
    position: absolute;
    line-height: 16px;
    font-size: 11px;
    color: #f15746;
}
.input_error {
    display: none;
}

.layer_delivery .input_box:first-of-type {
    padding-top: 0;
}
.layer_delivery .delivery_bind {
    padding: 0 32px;
}
.layer{
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(34,34,34,.5);
    z-index: 1010;
}
.layer_delivery .input_box{
    padding-top: 16px;
}
.input_box {
    position: relative;
    padding: 10px 0 14px;
}
.layer_delivery .layer_container{
    width: 520px;
}
.input_title{
    font-size: 13px;
    letter-spacing: -.07px;
    line-height: 18px;
}
input::placeholder{
	color: #B8B7B7;	
}
.input_txt{
    padding: 8px 0;
    width: 100%;
    font-size: 15px;
    letter-spacing: -.15px;
    line-height: 22px;
    border-bottom: 1px solid #ebebeb;
}
.layer_container{
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
.solid {
    font-weight: 600;
    color: #fff;
    background-color: #222;
}
.solid.disabled, .solid:disabled {
    background-color: #ebebeb;
    color: #fff;
    cursor: default;
}
.medium{
    padding: 0 18px;
    height: 42px;
    line-height: 40px;
    border-radius: 12px;
    font-size: 14px;
    letter-spacing: -.14px;
}

</style>
<div class="my_addressbook">
    <div class="content_title">
        <div class="title">
            <h3>주소록</h3>
            <!---->
        </div>
        <div class="btn_box">
            <a href="#" class="btn btn_add">
                <!---->
                <span class="btn_txt">+ 새 배송지 추가</span>
            </a>
        </div>
    </div>
    <div class="my_list">
        <div class="basic">
            <div class="my_item is_active" default-mark="기본 배송지">
                <div class="info_bind">
                    <!---->
                    <div class="address_info">
                        <div class="name_box"><span class="name"></span><span class="mark"></span></div>
                        <p class="phone"><span class="hyphen"></span>7<span class="dot"></span><span class="dot"></span><span class="hyphen"></span><span class="dot"></span></p>
                        <div class="address_box"><span class="zipcode"></span><span class="address"></span></div>
                    </div>
                </div>
                <div class="btn_bind">
                    <!---->
                    <a href="#" class="btn outlinegrey small"> 수정 </a><a href="#" class="btn outlinegrey small"> 삭제 </a>
                </div>
            </div>
        </div>
        <div class="other">
            <div class="other_list">
                <div class="my_item">
                    <div class="info_bind">
                        <!---->
                        <div class="address_info">
                            <div class="name_box">
                                <span class="name">김**</span>
                                <!---->
                            </div>
                            <p class="phone">010<span class="hyphen"></span>4<span class="dot"></span><span class="dot"></span><span class="hyphen"></span><span class="dot"></span>321</p>
                            <div class="address_box"><span class="zipcode">(18148)</span><span class="address">경기 오산시 부산중앙로 11 (부산동, 오산시티자이 1단지) 4324</span></div>
                        </div>
                    </div>
                    <div class="btn_bind">
                        <a href="#" class="btn outlinegrey small"> 기본 배송지 </a><a href="#" class="btn outlinegrey small"> 수정 </a>
                        <a href="#" class="btn outlinegrey small"> 삭제 </a>
                    </div>
                </div>
                <div class="my_item">
                    <div class="info_bind">
                        <!---->
                        <div class="address_info">
                            <div class="name_box">
                                <span class="name">로**</span>
                                <!---->
                            </div>
                            <p class="phone">010<span class="hyphen"></span>1<span class="dot"></span><span class="dot"></span><span class="hyphen"></span><span class="dot"></span>432</p>
                            <div class="address_box"><span class="zipcode">(05573)</span><span class="address">서울 송파구 도곡로 434 (잠실동) 234</span></div>
                        </div>
                    </div>
                    <div class="btn_bind">
                        <a href="#" class="btn outlinegrey small"> 기본 배송지 </a><a href="#" class="btn outlinegrey small"> 수정 </a>
                        <a href="#" class="btn outlinegrey small"> 삭제 </a>
                    </div>
                </div>
                <div class="my_item">
                    <div class="info_bind">
                        <!---->
                        <div class="address_info">
                            <div class="name_box">
                                <span class="name">로**</span>
                                <!---->
                            </div>
                            <p class="phone">010<span class="hyphen"></span>2<span class="dot"></span><span class="dot"></span><span class="hyphen"></span><span class="dot"></span>282</p>
                            <div class="address_box"><span class="zipcode">(06313)</span><span class="address">서울 강남구 논현로 6 (개포동, 혜정빌딩) fsd</span></div>
                        </div>
                    </div>
                    <div class="btn_bind">
                        <a href="#" class="btn outlinegrey small"> 기본 배송지 </a><a href="#" class="btn outlinegrey small"> 수정 </a>
                        <a href="#" class="btn outlinegrey small"> 삭제 </a>
                    </div>
                </div>
                <div class="my_item">
                    <div class="info_bind">
                        <!---->
                        <div class="address_info">
                            <div class="name_box">
                                <span class="name">5****</span>
                                <!---->
                            </div>
                            <p class="phone">010<span class="hyphen"></span>2<span class="dot"></span><span class="dot"></span><span class="hyphen"></span><span class="dot"></span>422</p>
                            <div class="address_box"><span class="zipcode">(06035)</span><span class="address">서울 강남구 가로수길 9 (신사동) 324</span></div>
                        </div>
                    </div>
                    <div class="btn_bind">
                        <a href="#" class="btn outlinegrey small"> 기본 배송지 </a><a href="#" class="btn outlinegrey small"> 수정 </a>
                        <a href="#" class="btn outlinegrey small"> 삭제 </a>
                    </div>
                </div>
                <div class="my_item">
                    <div class="info_bind">
                        <!---->
                        <div class="address_info">
                            <div class="name_box">
                                <span class="name">홍**</span>
                                <!---->
                            </div>
                            <p class="phone">010<span class="hyphen"></span>0<span class="dot"></span><span class="dot"></span><span class="hyphen"></span><span class="dot"></span>010</p>
                            <div class="address_box"><span class="zipcode">(30068)</span><span class="address">세종특별자치시 연동면 내송길 5 4324</span></div>
                        </div>
                    </div>
                    <div class="btn_bind">
                        <a href="#" class="btn outlinegrey small"> 기본 배송지 </a><a href="#" class="btn outlinegrey small"> 수정 </a>
                        <a href="#" class="btn outlinegrey small"> 삭제 </a>
                    </div>
                </div>
                <div class="my_item">
                    <div class="info_bind">
                        <!---->
                        <div class="address_info">
                            <div class="name_box">
                                <span class="name">김****</span>
                                <!---->
                            </div>
                            <p class="phone">010<span class="hyphen"></span>10<span class="dot"></span><span class="dot"></span><span class="hyphen"></span><span class="dot"></span>101</p>
                            <div class="address_box"><span class="zipcode">(17704)</span><span class="address">경기 평택시 서탄면 방꼬지길 199-6 ㄹㄴㅇ</span></div>
                        </div>
                    </div>
                    <div class="btn_bind">
                        <a href="#" class="btn outlinegrey small"> 기본 배송지 </a><a href="#" class="btn outlinegrey small"> 수정 </a>
                        <a href="#" class="btn outlinegrey small"> 삭제 </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="pagination">
            <div class="pagination_box first last">
                <div class="prev_btn_box">
                    <a href="/my/address?page=1" class="btn_arr" aria-label="첫 페이지">
                        <svg  class="arr-page-first icon sprite-icons">
                            <use ></use>
                        </svg>
                    </a>
                    <a href="/my/address?page=0" class="btn_arr" aria-label="이전 페이지">
                        <svg xmlns="http://www.w3.org/2000/svg" class="arr-page-prev icon sprite-icons">
                            <use  ></use>
                        </svg>
                    </a>
                </div>
                <div class="page_bind"><a href="/my/address?page=1" class="btn_page active" aria-label="1페이지"> 1 </a></div>
                <div class="next_btn_box">
                    <a href="/my/address?page=2" class="btn_arr" aria-label="다음 페이지">
                        <svg xmlns="http://www.w3.org/2000/svg" class="arr-page-next icon sprite-icons">
                            <use ></use>
                        </svg>
                    </a>
                    <a href="/my/address?page=1" class="btn_arr" aria-label="마지막 페이지">
                        <svg xmlns="http://www.w3.org/2000/svg" class="arr-page-last icon sprite-icons">
                            <use ></use>
                        </svg>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div></div>
    <!---->
</div>
<!-- 모달창 부분-->
<div class="layer_delivery layer lg" style="display :none;">
    <div class="layer_container">
        <div class="layer_header"><h2 data-v-728c367a="" data-v-350bc372="" class="title">새 주소 추가</h2></div>
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
                        <label for="check1" class="check_label">
                            <img src="/TeamProject/img/shop/checkbox-inactive.png" class="icon sprite-icons ico-check-inactive">
                            <span class="label_txt">기본 배송지로 설정</span>
                            <!---->
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
                <!-- <svg xmlns="http://www.w3.org/2000/svg" class="ico-close icon sprite-icons">
                    <use href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-close" xlink:href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-close"></use>
                </svg> -->
            </div>
            <!---->
        </a>
    </div>
    </div>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
window.onload = function() {
	$('.snb_menu').eq(1).find('.menu_link').eq(1).removeClass('unbold');
	$('.snb_menu').eq(1).find('.menu_link').eq(1).addClass('bold');
    //DB에서 기본주소가 아닌  정보 가져와서 뿌려주기
    comeAddress1()
    comeAddress()
}


//기본주소 아닌 것들 불러오기
function comeAddress() {
    $.ajax({
        type: 'post',
        url : '/TeamProject/user/comeAddress',
        success: function(data){
        	var addr;
        	if(data.list != null) {
            $.each(data.list, function(index, items){
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
        	}//
        },//sccuess
        error : function(err){
            console.log(err)
        }
    })
}
//기본주소 불러오기
function comeAddress1() {
    $.ajax({
        type: 'post',
        url : '/TeamProject/user/comeAddress1',
        success: function(data){
        	
			if(data !="") {
				var hp = data.hp.replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
            $('.basic .name').text(data.name)
            $('.basic .phone').text(hp)
            $('.basic .zipcode').text('('+data.zipcode+')')
            $('.basic .address').text(data.addr + " " + data.addr_detail)
			}

        },
        error : function(err){
            console.log(err)
        }
    })
}


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
//켰을  addr_initialization() 초기화
$('.btn_txt').click(function(){
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

//주소록 유효성 검사
var resultName = false; //defalt값이 틀렸을떄를 가정
var resultPhone = false;
var resultzipcode = false;
var resultaddr1 = false;
var resultaddr2 = false;

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

//저장하기 버튼 비활성화
function saveOkCheck(){ 
	if((resultName == true) && (resultPhone == true ) && (resultzipcode == true ) && (resultaddr1 == true ) && (resultaddr2 == true )){
		document.getElementById('saveBtn').className = 'bTn bTn_save solid medium passadd';
	}else {
		document.getElementById('saveBtn').className = 'bTn bTn_save solid medium disabled';
	}
}

function checkzipcode(value) { //우편주소 유효성 검사
	if(document.getElementById('zipcode').value==''){
		return false;
	} else {
		return true;
	}
}
function checkaddr1(value) { //기본주소  유효성 검사
	if(document.getElementById('zipcode').value==''){
		return false;
	} else {
		return true;
	}
}
function checkaddr2(value) { //상세주소 유효성 검사
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



function checkPost() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

           
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('zipcode').value = data.zonecode;
            document.getElementById("addr1").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("addr2").focus();
        }
    }).open();
}

$(document).on('click','.check_label',function(){
		if($(this).children('img').hasClass('icon sprite-icons ico-check-inactive')){
			$(this).children('img').attr('src', '/TeamProject/img/shop/checkbox-active.png');
			$(this).children('img').addClass('ico-check-active');
			$(this).children('img').removeClass('ico-check-inactive');
			$(this).prev().val('1'); //기본주소로 설정
		}
		else{
			$(this).children('img').attr('src', '/TeamProject/img/shop/checkbox-inactive.png');
			$(this).children('img').addClass('ico-check-inactive');
			$(this).children('img').removeClass('ico-check-active');
			$(this).prev().val('0');
		}
});
$(document).on('click','.bTn.bTn_save.solid.medium.passadd',function(){
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
		},
		error: function(err){
		console.log(err);
		}
	});
});

</script>
