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
		        <h3 class="input_title ess">이메일 주소</h3>
		        <div class="input_item"><input type="text" placeholder="예) gese_t@gese.co.kr" autocomplete="off" class="input_txt" /></div>
		        <p class="input_error">이메일 주소를 정확히 입력해주세요.</p>
		    </div>
		    <div class="input_box has_error has_button">
		        <h3 class="input_title ess">비밀번호</h3>
		        <div class="input_item"><input type="password" placeholder="영문, 숫자, 특수문자 조합 8-16자" autocomplete="off" class="input_txt" /></div>
		        <p class="input_error">영문, 숫자, 특수문자를 조합하여 입력해주세요. (8-16자)</p>
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
		                    <label for="group_check_1" class="check_label">
		                    	<img class="ico-check-active" src="/TeamProject/img/user/signUp/checkbox-inactive.png" alt="선택">
		                        <span class="label_txt">[필수] 만 14세 이상이며 모두 동의합니다.</span>
		                    </label>
		                </div>
		                <button type="button" class="plus-btn">
		                    <img class="ico-plus" src="/TeamProject/img/user/signUp/plus.png" alt="선택">
		                </button>
		            </div>
		            <div class="check_sub">
		                <div class="checkbox_item">
		                    <label for="agreement" class="check_label">
		                        <img class="ico-check-active" src="/TeamProject/img/user/signUp/checkbox-inactive.png" alt="선택">
		                        <span class="label_txt">이용약관 동의</span>
		                    </label>
		                    <a href="#" class="btn_view"> 내용 보기 </a>
		                </div>
		                <div class="checkbox_item">
		                    <label for="privacy" class="check_label">
		                        <img class="ico-check-active" src="/TeamProject/img/user/signUp/checkbox-inactive.png" alt="선택">
		                        <span class="label_txt">개인정보 수집 및 이용 동의</span>
		                    </label>
		                    <a  href="#" class="btn_view"> 내용 보기 </a>
		                </div>
		            </div>
		        </div>
		        <div  class="terms_box">
		            <div  class="check_main">
		                <div  class="checkbox_item">
		                    <label for="group_check_2" class="check_label">
		                        <img class="ico-check-active" src="/TeamProject/img/user/signUp/checkbox-inactive.png" alt="선택">
		                        <span class="label_txt">[선택] 광고성 정보 수신에 모두 동의합니다.</span>
		                    </label>
		                </div>
		                <button  type="button" class="plus-btn">
		                   <img class="ico-plus" src="/TeamProject/img/user/signUp/plus.png" alt="선택">
		                </button>
		            </div>
		            <div  class="check_sub">
		                <div  class="checkbox_item">
		                    <input id="allow_marketing" type="checkbox" name="" class="blind" />
		                    <label for="allow_marketing" class="check_label">
		                        <img class="ico-check-active" src="/TeamProject/img/user/signUp/checkbox-inactive.png" alt="선택">
		                        <span class="label_txt">앱 푸시</span>
		                    </label>
		                </div>
		                <div  class="checkbox_item">
		                    <input id="allow_marketing_sms" type="checkbox" name="" class="blind" />
		                    <label for="allow_marketing_sms" class="check_label">
		                        <img class="ico-check-active" src="/TeamProject/img/user/signUp/checkbox-inactive.png" alt="선택">
		                        <span class="label_txt">문자 메시지</span>
		                    </label>
		                </div>
		                <div  class="checkbox_item">
		                    <input id="allow_marketing_email" type="checkbox" name="" class="blind" />
		                    <label for="allow_marketing_email" class="check_label">
		                        <img class="ico-check-active" src="/TeamProject/img/user/signUp/checkbox-inactive.png" alt="선택">
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
			        <a href="#" class="btn outlinegrey medium on"><span class="info_txt" >275</span></a>
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
		$('.layer_btn').click(function(){
		    $('.layer_point').fadeOut();
		    $('body').css("overflow-y", "scroll");
		})
	</script>
</body>
</html>