<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<style>
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
<title>Insert title here</title>
<div class="layer_delivery layer lg">
<div class="layer_container">
    <div class="layer_header"><h2 data-v-728c367a="" data-v-350bc372="" class="title">??? ?????? ??????</h2></div>
    <div class="layer_content">
        <div class="delivery_bind">
            <div class="delivery_input">
                <div class="input_box" id="input_box">
                    <h4 class="input_title" id="input_name">??????</h4>
                    <div class="input_item"><input type="text" placeholder="???????????? ??????" autocomplete="off" class="input_txt a" oninput="oninputName(this.value)" id="name_input" /></div>
                    <p class="input_error" id="input_error1" >????????? ????????? ??????????????????. (2 - 50???)</p>
                </div>
                <div class="input_box" id="input_box1">
                    <h4 class="input_title" id="input_phone">????????? ??????</h4>
                    <div class="input_item"><input type="text" placeholder="- ?????? ??????" autocomplete="off" class="input_txt a" oninput="oninputPhone(this.value)" id="phone_input"/></div>
                    <p class="input_error" id="input_error2" >????????? ????????? ????????? ??????????????????.</p>
                </div>
                <div class="input_box">
                    <h4 class="input_title">????????????</h4>
                    <div class="input_item">
                        <input type="text" placeholder="?????? ????????? ???????????????" readonly="readonly" autocomplete="off" class="input_txt" id="zipcode" />
                        <input type="button" value="????????????" onclick="checkPost()" class="bTn bTn_zipcode outline small">
                    </div>
                </div>
                <div class="input_box">
                    <h4 class="input_title">??????</h4>
                    <div class="input_item"><input type="text" placeholder="?????? ?????? ?????? ???, ???????????? ?????????" readonly="readonly" autocomplete="off" class="input_txt" id="addr1" /></div>
                </div>
                <div class="input_box">
                    <h4 class="input_title">?????? ??????</h4>
                    <div class="input_item"><input type="text" placeholder="??????, ?????????, ???/?????? ??????" autocomplete="off" class="input_txt a" id="addr2" oninput="oninputaddr2(this.value)"/></div>
                </div>
            </div>
            <div class="delivery_check">
                <div class="checkbox_item" >
                    <input id="check1" type="checkbox" name="" class="blind" value="0" id="check2"/>
                    <label for="check1" class="check_label">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png" class="icon sprite-icons ico-check-inactive">
                        <span class="label_txt">?????? ???????????? ??????</span>
                        <!---->
                    </label>
                </div>
            </div>
        </div>
        <div class="layer_bTn" id="layer_bTn">
            <a href="#" class="bTn bTn_delete outlinegrey medium"> ?????? </a>
            <a disabled="disabled" href="#" class="bTn bTn_save solid medium disabled" id="saveBtn"> ???????????? </a>
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

var resultName = false; //defalt?????? ??????????????? ??????
var resultPhone = false;
var resultzipcode = false;
var resultaddr1 = false;
var resultaddr2 = false;

function oninputaddr2(value){
	console.log(value);
	resultaddr2 = checkaddr2(value);  // 1?????? ?????????????????? ??????????????? checkEmail??????
	resultaddr1 = checkaddr1(value);
	resultzipcode = checkzipcode(value);
	console.log(resultaddr2);
	console.log(resultaddr1);
	console.log(resultzipcode);
	saveOkCheck();
}
function oninputName(value){
	console.log(value);
	resultName = checkName(value);  // 1?????? ?????????????????? ??????????????? checkEmail??????
	console.log(resultName);
	saveOkCheck();
}

function oninputPhone(value){
	console.log(value);
	resultPhone = checkPhone(value);	// 1?????? ?????????????????? ??????????????? checkPwd??????
	console.log(resultPhone);
	saveOkCheck();
}

//????????? ?????? ?????? ?????????
function saveOkCheck(){ 
	if((resultName == true) && (resultPhone == true ) && (resultzipcode == true ) && (resultaddr1 == true ) && (resultaddr2 == true )){
		document.getElementById('saveBtn').className = 'bTn bTn_save solid medium passadd';
	}else {
		document.getElementById('saveBtn').className = 'bTn bTn_save solid medium disabled';
	}
}

function checkzipcode(value) { //?????? ????????? ??????
	if(document.getElementById('zipcode').value==''){
		return false;
	} else {
		return true;
	}
}
function checkaddr1(value) { //?????? ????????? ??????
	if(document.getElementById('zipcode').value==''){
		return false;
	} else {
		return true;
	}
}
function checkaddr2(value) { //?????? ????????? ??????
	var reg_required = /.{1,}/;
	
	if (reg_required.test(value) == true) {
		return true;
	} else {
		return false;
	}
}
function checkName(value) { //?????? ????????? ??????
	var regName = /^[???-???|???-???|a-z|A-Z|0-9|]+$/;
	
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
function checkPhone(value) { //????????? ????????? ??????
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
            // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.

            // ??? ????????? ?????? ????????? ?????? ????????? ????????????.
            // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
            var addr = ''; // ?????? ??????
            var extraAddr = ''; // ???????????? ??????

            //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
            if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
                addr = data.roadAddress;
            } else { // ???????????? ?????? ????????? ???????????? ??????(J)
                addr = data.jibunAddress;
            }

           
            // ??????????????? ?????? ????????? ?????? ????????? ?????????.
            document.getElementById('zipcode').value = data.zonecode;
            document.getElementById("addr1").value = addr;
            // ????????? ???????????? ????????? ????????????.
            document.getElementById("addr2").focus();
        }
    }).open();
}

$(document).on('click','.check_label',function(){
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
$(document).on('click','.bTn.bTn_save.solid.medium.passadd',function(){
	$.ajax({
		url:'/TeamProject/user/addaddressbook',
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
			alert('?????????????????????.');
		},
		error: function(err){
		console.log(err);
		}
	});
});

</script>















