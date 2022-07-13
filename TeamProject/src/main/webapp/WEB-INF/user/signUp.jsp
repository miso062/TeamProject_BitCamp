<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="/TeamProject/css/user/signUp.css">
</head>
<body>
	<div id="header"><jsp:include page="/WEB-INF/main/header.jsp"></jsp:include></div>
	<div id="container">
		<div class="join_area">
		    <h2 class="join_title">회원가입</h2>
		    <div class="input_box has_error">
		        <h3 class="input_title ess log_email_label" >이메일 주소</h3>
		        <div class="input_item"><input type="text" placeholder="예) gese_t@gese.co.kr" oninput="oninputEmail1(this.value)"  autocomplete="off" class="input_txt log_email_input" /></div>
		        <p class="input_error log_email_error" >이메일 주소를 정확히 입력해주세요.</p>
		    </div>
		    <div class="input_box has_error has_button">
		        <h3 class="input_title ess log_pwd_label" >비밀번호</h3>
		        <div class="input_item"><input type="password" placeholder="영문, 숫자, 특수문자 조합 8-16자" oninput="oninputPwd1(this.value)"  autocomplete="off" class="input_txt log_pwd_input" /></div>
		        <p class="input_error log_pwd_error" >영문, 숫자, 특수문자를 조합하여 입력해주세요. (8-16자)</p>
		    </div>
		    <div  class="input_box">
		        <h3  class="input_title">신발 사이즈</h3>
		        <div class="input_item input_choose_size">
		            <input type="text" placeholder="선택하세요" disabled="disabled" autocomplete="off" class="input_txt hover text_fill" />
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
            <div class="layer_header"><h2 class="title">이용안내</h2></div>
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
                <svg xmlns="http://www.w3.org/2000/svg" class="ico-close icon sprite-icons">
                    <use href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-close" xlink:href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-close"></use>
                </svg>
            </a>
        </div>
    </div>
	<div id="footer"><jsp:include page="/WEB-INF/main/footer.jsp"></jsp:include></div>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
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
			alert($('.btn.on > .info_txt').text());
			$('.input_txt.hover.text_fill').val($('.btn.on > .info_txt').text());
		})

		$('.size_item > .btn.outlinegrey').click(function(){
			$(this).addClass("on");
			$('.size_item > .btn.outlinegrey').not($(this)).removeClass("on");
		});
		

		var resultEmail1 = false; //defalt값이 틀렸을떄를 가정
		var resultPwd1 = false;


		function oninputEmail1(value){
		//	console.log(value);
			resultEmail1 = checkEmail1(value);  // 1개의 글자이벤트를 받을때마다 checkEmail호출
		//	console.log(resultEmail);
			signupCheck();
		}

		function oninputPwd1(value){
			//console.log(value);
			resultPwd1 = checkPwd1(value);	// 1개의 글자이벤트를 받을때마다 checkPwd호출
			//console.log(resultPwd);
			signupCheck();
		}

		function checkEmail1(value) { //이메일 유효성 검사
			var regEmail1 = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
			
			if (regEmail1.test(value) == true) {
				document.getElementsByClassName("log_email_label")[0].style.color = "black";
				document.getElementsByClassName("log_email_error")[0].style.display = "none";
				document.getElementsByClassName("log_email_input")[0].style.borderColor = "black";
				return true;
			} else {
				console.log('올바른 이메일을 입력해주세요.');
				document.getElementsByClassName("log_email_label")[0].style.color = "#f15746";
				document.getElementsByClassName("log_email_error")[0].style.display = "block";
				document.getElementsByClassName("log_email_input")[0].style.borderColor = "#f15746";
				return false;
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
		//회원가입 버튼 활성 비활성
		function signupCheck(){ 
			if((resultEmail1 == true) && (resultPwd1 == true && $('#essential_check').hasClass('ico-check-active') )){
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
	$(document).on('click', '.btn_join.abled', function(){
	

	});
		
	
	</script>
</body>
</html>