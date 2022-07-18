<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>GESE | 회원가입</title>
	<link rel="stylesheet" href="/TeamProject/css/user/signUp.css">
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
</head>
<body>
	<div id="header"><jsp:include page="/WEB-INF/main/header.jsp"></jsp:include></div>
	<div id="container">
		<div class="join_area">
		    <h2 class="join_title">회원가입</h2>
		    <div class="input_box has_error">
		        <h3 class="input_title ess log_email_label" >이메일 주소</h3>
		        <div class="input_item"><input type="text" placeholder="예) gese_t@gese.co.kr" onchange="oninputEmail1(this.value)"  autocomplete="off" class="input_txt log_email_input" /></div>
		        <p class="input_error log_email_error" >이메일 주소를 정확히 입력해주세요.</p>
		    </div>
		    <div class="input_box has_error has_button">
		        <h3 class="input_title ess log_pwd_label" >비밀번호</h3>
		        <div class="input_item"><input type="password" placeholder="영문, 숫자, 특수문자 조합 8-16자" onchange="oninputPwd1(this.value)"  autocomplete="off" class="input_txt log_pwd_input" /></div>
		        <p class="input_error log_pwd_error" >영문, 숫자, 특수문자를 조합하여 입력해주세요. (8-16자)</p>
		    </div>
			<div class="input_box has_error has_button">
		        <h3 class="input_title ess log_name_label" >이름</h3>
		        <div class="input_item"><input type="text" placeholder="ex)홍길동 2-10자" onchange="inputName(this.value)"  autocomplete="off" class="input_txt log_name_input" /></div>
		        <p class="input_error log_name_error" > 옳바르지 않은 표현입니다. </p>
		    </div>
			<div class="input_box has_error has_button">
		        <h3 class="input_title ess log_nick_name_label" >별명</h3>
		        <div class="input_item"><input type="text" placeholder="한글,영어.숫자 조합 2-12자" oninput="inputNick(this.value)"  autocomplete="off" class="input_txt log_nick_name_input" /></div>
		        <p class="input_error log_nick_name_error" >영문 또는 한글을 조합하여 입력해주세요.</p>
		    </div>
			<div class="input_box has_error has_button">
		        <h3 class="input_title ess log_hp_label" >휴대전화</h3>
		        <div class="input_item">
					<input type="text" placeholder="- 없이 숫자만" oninput="onHp(this.value)"  autocomplete="off" id="hp" class="input_txt log_hp_input"  style="width:70%;"/>
					<span   class="check_number disabled" disabled="disabled">인증번호 받기</span>
					<input type="number" class="input_txt" id="hp_key" placeholder="인증 번호" disabled="disabled">
					<p class="input_error log_hp_key_error" >영문 또는 한글을 조합하여 입력해주세요.</p>
				</div>
		        <p class="input_error log_hp_error" >형식에 맞지 않는 번호입니다.</p>
		    </div>
		    <div  class="input_box">
		        <h3  class="input_title ess">신발 사이즈</h3>
		        <div class="input_item input_choose_size">
		            <input type="text" placeholder="선택하세요"  autocomplete="off" class="input_txt hover text_fill"  />
					<input type="hidden" value="false">
		            <button type="button" class="btn btn_size_select" >
		                <img id="size_choose_img" src="/TeamProject/img/user/signUp/next.png" alt="선택">
		            </button>
		        </div>
		    </div>
		    <div class="join_terms">
		        <div class="terms_box">
		            <div class="check_main">
		                <div class="checkbox_item">
		                    <label for="group_check_1" class="check_label check_label_main">
		                    	<img class="ico-check-inactive"  id="essential_check" src="/TeamProject/img/user/signUp/checkbox-inactive.png" alt="선택">
		                        <span class="label_txt">[필수] 만 14세 이상이며 모두 동의합니다.</span>
		                    </label>
		                </div>
		                <button type="button" class="plus-btn">
		                    <img class="ico-plus" src="/TeamProject/img/user/signUp/plus.png" alt="선택">
		                </button>
		            </div>
		            <div class="check_sub">
		                <div class="checkbox_item">
		                    <label for="agreement" class="sub_check_label">
		                        <img class="ico-check-inactive" src="/TeamProject/img/user/signUp/checkbox-inactive.png" alt="선택">
		                        <span class="label_txt">이용약관 동의</span>
		                    </label>
		                    <a href="#" class="btn_view"> 내용 보기 </a>
		                </div>
		                <div class="checkbox_item">
		                    <label for="privacy" class="sub_check_label">
		                        <img class="ico-check-inactive" src="/TeamProject/img/user/signUp/checkbox-inactive.png" alt="선택">
		                        <span class="label_txt">개인정보 수집 및 이용 동의</span>
		                    </label>
		                    <a  href="#" class="btn_view"> 내용 보기 </a>
		                </div>
		            </div>
		        </div>
		        <div  class="terms_box">
		            <div  class="check_main">
		                <div  class="checkbox_item">
		                    <label for="group_check_2" class="check_label check_label_main">
		                        <img class="ico-check-inactive" src="/TeamProject/img/user/signUp/checkbox-inactive.png" alt="선택">
		                        <span class="label_txt">[선택] 광고성 정보 수신에 모두 동의합니다.</span>
		                    </label>
		                </div>
		                <button  type="button" class="plus-btn">
		                   <img class="ico-plus" src="/TeamProject/img/user/signUp/plus.png" alt="선택">
		                </button>
		            </div>
		            <div  class="check_sub">
		                <div  class="checkbox_item">
		                    <input id="allow_marketing_sms" type="checkbox" name="" class="blind" />
		                    <label for="allow_marketing_sms" class="sub_check_label">
		                        <img class="ico-check-inactive" src="/TeamProject/img/user/signUp/checkbox-inactive.png" alt="선택">
		                        <span class="label_txt">문자 메시지</span>
		                    </label>
		                </div>
		                <div  class="checkbox_item">
		                    <input id="allow_marketing_email" type="checkbox" name="" class="blind" />
		                    <label for="allow_marketing_email" class="sub_check_label">
		                        <img class="ico-check-inactive" src="/TeamProject/img/user/signUp/checkbox-inactive.png" alt="선택">
		                        <span class="label_txt">이메일</span>
		                    </label>
		                </div>
		            </div>
		        </div>
		    </div>
		    <div class="btn_join disabled" disabled="disabled"> 가입하기 </div>
		</div>
	</div>
	<div class="layer_point layer md" style="display: none;">
        <div class="layer_container">
            <div class="layer_header"><h2 class="title">사이즈</h2></div>
            <div class="size_list_area" >
			    <div class="size_item" >
			        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >220</span></a>
			    </div>
			    <div class="size_item" >
			        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >225</span></a>
			    </div>
			    <div class="size_item" >
			        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >230</span></a>
			    </div>
			    <div class="size_item" >
			        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >235</span></a>
			    </div>
			    <div class="size_item" >
			        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >240</span></a>
			    </div>
			    <div class="size_item" >
			        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >245</span></a>
			    </div>
			    <div class="size_item" >
			        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >250</span></a>
			    </div>
			    <div class="size_item" >
			        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >255</span></a>
			    </div>
			    <div class="size_item" >
			        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >260</span></a>
			    </div>
			    <div class="size_item" >
			        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >265</span></a>
			    </div>
			    <div class="size_item" >
			        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >270</span></a>
			    </div>
			    <div class="size_item" >
			        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >275</span></a>
			    </div>
			    <div class="size_item" >
			        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >280</span></a>
			    </div>
			    <div class="size_item" >
			        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >285</span></a>
			    </div>
			    <div class="size_item" >
			        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >290</span></a>
			    </div>
			    <div class="size_item" >
			        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >295</span></a>
			    </div>
			    <div class="size_item" >
			        <a href="#" class="btn outlinegrey medium"><span class="info_txt" >300</span></a>
			    </div>
			</div>
			<div class="layer_btn"><ahref="#" class="btn outline medium" > 확인 </a></div>
            <a href="#" class="btn_layer_close">
            </a>
        </div>
    </div>
	<div id="footer"><jsp:include page="/WEB-INF/main/footer.jsp"></jsp:include></div>
	
	<script type="text/javascript">
		$('.input_choose_size').click(function(){
			$('.layer_point').fadeIn();
		    $('body').css("overflow", "hidden");
		});
		$(document).on("click",function(e){
			if($('.layer_point').is(e.target)) {
				$('.layer_point').fadeOut();
		        $('body').css("overflow-y", "scroll");
			}
		})
		$('.layer_btn').click(function(){ //신발 확인 버튼 눌러서 끄기
		    $('.layer_point').fadeOut();
		    $('body').css("overflow-y", "scroll");
			$('.input_txt.hover.text_fill').val($('.btn.on > .info_txt').text());
			$('.input_txt.hover.text_fill').next().val('true');
		})

	
		

		$('.size_item > .btn.outlinegrey').click(function(){
			$(this).addClass("on");
			$('.size_item > .btn.outlinegrey').not($(this)).removeClass("on");
		});

		var resultEmail1 = false; //defalt값이 틀렸을떄를 가정
		var resultPwd1 = false;
		var resultName =false;
		var resultNick = false;
		var resultHp = false;
		var resultSize =false;
		//신발 사이즈

		//email 유효성 검사
		function oninputEmail1(value){
		//	console.log(value);
			resultEmail1 = checkEmail1(value);  // 1개의 글자이벤트를 받을때마다 checkEmail호출
		//	console.log(resultEmail);
			signupCheck();
		}

		//비밀번호 유효성검사
		function oninputPwd1(value){
			//console.log(value);
			resultPwd1 = checkPwd1(value);	// 1개의 글자이벤트를 받을때마다 checkPwd호출
			//console.log(resultPwd);
			signupCheck();
		}
		//이름 유효성 검사
		function inputName(value) {
			var regName =/^[가-힣]{2,10}$/;
			console.log(value)
			
			if(regName.test(value) ==true) {
				document.getElementsByClassName("log_name_label")[0].style.color = "black";
				document.getElementsByClassName("log_name_error")[0].style.display = "none";
				document.getElementsByClassName("log_name_input")[0].style.borderColor = "black";
				resultName = true;
				signupCheck();
			}else {
				document.getElementsByClassName("log_name_label")[0].style.color = "#f15746";
				document.getElementsByClassName("log_name_error")[0].style.display = "block";
				document.getElementsByClassName("log_name_input")[0].style.borderColor = "#f15746";
				resultName = false;
				signupCheck();
			}
		}
		//닉네임 유효성검사
		function inputNick(value) {
			var regNick=/^[가-힣a-zA-Z0-9]{2,12}$/;

			if(regNick.test(value) ==true) {
				document.getElementsByClassName("log_nick_name_label")[0].style.color = "black";
				document.getElementsByClassName("log_nick_name_input")[0].style.borderColor = "black";
				resultNick = true;
				$.ajax({
					type: 'post',
					url : '/TeamProject/user/checkNick' ,
					data : 'nickname='+value,
					success : function(data){
						if(data =='ok') {
							$('.log_nick_name_error').html('사용가능한 아이디입니다.');
						}else {
							$('.log_nick_name_error').html('이미 사용하고 있는 아이디입니다.');
						}

					},
					error : function(err){
						console.log(err);
					}
				});
				signupCheck();
			}else {
				document.getElementsByClassName("log_nick_name_label")[0].style.color = "#f15746";
				document.getElementsByClassName("log_nick_name_error")[0].style.display = "block";
				document.getElementsByClassName("log_nick_name_input")[0].style.borderColor = "#f15746";
				$('.log_nick_name_error').html('올바르지 않은 표현 입니다.')
				resultNick = false;
				signupCheck();
			}
		}
		//인증번호 받기 버튼 활성화/비활성화
		function onHp(value) {
			var regHp= /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;

			if(regHp.test(value) ==true) {
				$('.check_number').removeClass('disabled');
				$('.check_number').addClass('abled');
				$('.check_number').prop('disabled',false);
				
			}else {
				$('.check_number').removeClass('abled');
				$('.check_number').addClass('disabled');
				$('.check_number').prop('disabled',true);
				
			}

		}
		//난수 var로 전역 생성
		var verifyCode = Math.floor(Math.random() * (999999 - 100000)) + 100000;
		//인증번호 보내고 인증번호 입력칸 활성화
		$(document).on('click' , '.check_number.abled' , function(){
			if(confirm('인증번호를 전송하시겠습니까?')) {
				$('#hp_key').prop('readonly' ,false);
				$('#hp_key').prop('disabled', false);
				verifyCode.toString();
				
				console.log(verifyCode);
				
				//실제로 이메일 보내는 기능
		/* 		$.ajax({
					url: '/TeamProject/user/sms-sends',
					type: 'post',
					data: {
						'recipientPhoneNumber' : $('#hp').val(),
						'title' : 'test',
						'content' : '[GESE-T] \n 인증번호  ['+ verifyCode+']'
					},
					success: function(data){
						$('#hp_key').prop('disabled', false);
					},
					error : function(err) {
						console.log(err);
					} 
				}); */
			}
				
		});
		// 인증번호 입력값 가져가서 비교하기 
		$(document).on('change' ,'#hp_key' , function(){
			if($('#hp_key').val()==verifyCode) {
				alert('인증완료')
				resultHp=true;
				$('#hp_key').prop('readonly' ,true);

			}			
			else{
				alert('인증번호가 일치하지 않습니다.')


			}


		});

		function checkEmail1(value) { //이메일 유효성 검사
			var regEmail1 = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
			
			if(regEmail1.test(value) ==true) {
				$.ajax({
					type: 'post',
					url : '/TeamProject/user/checkId',
					data : {'user_id' : $('.log_email_input').val()},
					success : function (data){
						document.getElementsByClassName("log_email_label")[0].style.color = "black";
						document.getElementsByClassName("log_email_input")[0].style.borderColor = "black";
						if(data == "0") {
							document.getElementsByClassName("log_email_error")[0].innerHTML='사용 가능한 아이디입니다.';
							resultEmail1 = true;
							signupCheck();
						}else{
							document.getElementsByClassName("log_email_error")[0].innerHTML='이미 사용중인 아이디입니다.';  
						}
						
					},	
					error: function(){}
				});
				
			}else {
				document.getElementsByClassName("log_email_label")[0].style.color = "#f15746";
				document.getElementsByClassName("log_email_error")[0].style.display = "block";
				document.getElementsByClassName("log_email_input")[0].style.borderColor = "#f15746";
				document.getElementsByClassName("log_email_error")[0].innerHTML='이메일 주소를 정확히 입력해주세요.';
				resultEmail1 = false;
				signupCheck();
			}
		}
		function checkPwd1(value) { //비밀번호 유효성 검사
			var regPwd1 = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;

			if(regPwd1.test(value) == true) {
				document.getElementsByClassName("log_pwd_label")[0].style.color ="black";
				document.getElementsByClassName("log_pwd_error")[0].style.display = "none";
				document.getElementsByClassName("log_pwd_input")[0].style.borderColor = "black";
				return true;
			} else {
				document.getElementsByClassName("log_pwd_label")[0].style.color = "#f15746";
				document.getElementsByClassName("log_pwd_error")[0].style.display = "block";
				document.getElementsByClassName("log_pwd_input")[0].style.borderColor = "#f15746";
				return false;
			}
		}
		//회원가입 버튼 활성 비활성   잠깐 테스트를 위해 && (resultHp == true)
		function signupCheck(){ 
			if((resultEmail1 == true) && (resultPwd1 == true) && (resultName == true) && (resultNick == true)  && (resultHp == true) && ($('#essential_check').hasClass('ico-check-active') )){
				$('.btn_join').removeClass('disabled');
				$('.btn_join').addClass('abled');
				$('.btn_join').prop('disabled','false');
				
			}else {
				$('.btn_join').removeClass('abled');
				$('.btn_join').addClass('disabled');
				$('.btn_join').prop('disabled','true');

			}
		}
		//+ 버튼보이면 show
		$(document).on('click' , '.ico-plus', function(){
			$(this).attr('src','/TeamProject/img/user/signUp/minus.png');
			$(this).parents('.check_main').next().css('display', 'block');
			$(this).addClass('ico-minus');
			$(this).removeClass('ico-plus');

		});
		//- 버튼 누르면 hide
		$(document).on('click' , '.ico-minus', function(){
			$(this).attr('src','/TeamProject/img/user/signUp/plus.png');
			$(this).parents('.check_main').next().css('display', 'none');
			$(this).addClass('ico-plus');
			$(this).removeClass('ico-minus');
		});
		
		//체크박스 사진 넣기
		$('.check_label_main').click(function(){
			if($(this).children().eq(0).attr('class') == 'ico-check-inactive') {
				$(this).children().eq(0).attr('class', 'ico-check-active');
				$(this).children().eq(0).attr('src', '/TeamProject/img/user/signUp/checkbox-active.png');
				var this_sub = $(this).parents('.check_main').next().find('.ico-check-inactive');
				this_sub.attr('src', '/TeamProject/img/user/signUp/checkbox-active.png');
				this_sub.attr('class', 'ico-check-active');
				signupCheck();
			}
			else{
				$(this).children().eq(0).attr('class', 'ico-check-inactive');
				$(this).children().eq(0).attr('src', '/TeamProject/img/user/signUp/checkbox-inactive.png');
				var this_sub = $(this).parents('.check_main').next().find('.ico-check-active');
				this_sub.attr('src', '/TeamProject/img/user/signUp/checkbox-inactive.png');
				this_sub.attr('class', 'ico-check-inactive');
				signupCheck();
			}
		});
	//sub_check_box 모두 선택시 main_check_box 선택
	$(document).on('click', '.sub_check_label', function(){
		var img = $(this).children().eq(0);
		if(img.hasClass('ico-check-inactive')){
			img.attr('src', '/TeamProject/img/user/signUp/checkbox-active.png');
			img.attr('src', '/TeamProject/img/user/signUp/checkbox-active.png');
			img.attr('class', 'ico-check-active');
			img.attr('class', 'ico-check-active');
			if($(this).parents('.check_sub').find('.ico-check-active').length ==2) {
				$(this).parents('.check_sub').prev().find('.ico-check-inactive').attr('src' , '/TeamProject/img/user/signUp/checkbox-active.png');
				$(this).parents('.check_sub').prev().find('.ico-check-inactive').attr('class' , 'ico-check-active');
				signupCheck();
			}
		}
		else{
			img.attr('src', '/TeamProject/img/user/signUp/checkbox-inactive.png');
			img.attr('class', 'ico-check-inactive');
			if($(this).parents('.check_sub').find('.ico-check-active').length !=2) {

				$(this).parents('.check_sub').prev().find('.ico-check-active').attr('src' , '/TeamProject/img/user/signUp/checkbox-inactive.png');
				$(this).parents('.check_sub').prev().find('.ico-check-active').attr('class' , 'ico-check-inactive');
				signupCheck();
			}
		}
	});
	//본인인증 창 후 DB에 정보 전달
	$(document).on('click', '.btn_join.abled', function(){
		var allow_sms = 0;
		var allow_email = 0;
		if($('.check_sub').eq(1).children('.checkbox_item').eq(0).children('#allow_marketing_sms').next().children().hasClass('ico-check-active')) {
			allow_sms = 1;
		}else {
			allow_sms = 0 ;
		}
		if($('.check_sub').eq(1).children('.checkbox_item').eq(1).children('#allow_marketing_email').next().children().hasClass('ico-check-active')) {
			allow_email = 1;
		}else {
			allow_email = 0 ;
		}
		//db로 정보전달
		$.ajax({
			type: 'post',
			url : '/TeamProject/user/signUpWrite',
			data : { 'user_id' : $('.log_email_input').val(),
					 'user_name' : $('.log_name_input').val(),
					 'nickname' : $('.log_nick_name_input').val(),
					 'user_pwd' : $('.log_pwd_input').val(),
					 'hp' : $('#hp').val(),
					 'shoesize' : $('.input_txt.hover.text_fill').val(),
					 'sms_allow' : allow_sms,
					 'email_allow' : allow_email
			},
			success : function(data){
				if(data=="1") {
					alert('이미 가입된 회원 입니다. 가입한 아이디로 로그인해주세요.')
				}else {
					alert('회원가입이 완료되었습니다.')
					location.href="/TeamProject/"
				}
			},
			error : function(err){
				console.log(err)
			}
		});
	});
		
	
	</script>
</body>
</html>