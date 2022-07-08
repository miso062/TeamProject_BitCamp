<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
	body,
	html {
	    height: 100%;
	    -ms-text-size-adjust: none;
	    -moz-text-size-adjust: none;
	    -webkit-text-size-adjust: none;
	    -moz-osx-font-smoothing: grayscale;
	    -webkit-font-smoothing: antialiased;
	    -webkit-overflow-scrolling: touch;
	    -ms-touch-action: manipulation;
	    touch-action: manipulation;
	}
	#header{
		width: 100%;
		height: 6%;
		margin: 0 auto;			
	}
	.input_title{
	    position: relative;
	    display: inline-block;
	    padding-right: 6px;
	    font-size: 13px;
	    letter-spacing: -.07px;
	    line-height: 18px;
    }
	.join_area {
	    margin: 0 auto;
	    padding: 58px 0 160px;
	    width: 400px;
	}
	.join_title {
	    padding-bottom: 42px;
	    text-align: center;
	    font-size: 32px;
	    letter-spacing: -0.48px;
	    color: #000;
	}
	.btn_size_select {
	    position: absolute;
	    top: 50%;
	    right: 0;
	    -webkit-transform: translateY(-50%);
	    -ms-transform: translateY(-50%);
	    transform: translateY(-50%);
	}
	.join_terms {
	    padding: 24px 0 40px;
	}
	.join_terms .plus-btn {
	    margin-left: auto;
	}
	.join_terms .btn_view {
	    position: absolute;
	    top: 2px;
	    right: 0;
	    font-size: 12px;
	    line-height: 20px;
	    letter-spacing: -0.18px;
	    color: rgba(34, 34, 34, 0.5);
	}
	.join_terms .btn_view,
	.join_terms .btn_view:hover {
	    text-decoration: underline;
	}
	.terms_box + .terms_box {
	    margin-top: 16px;
	}
	.check_main{
	    display: -webkit-box;
	    display: -ms-flexbox;
	    display: flex;
	    height: 24px;
	}
	.check_sub {
	    display: none;
	    padding: 16px 0 0 36px;
	}
	.terms_box.open .check_sub {
	    display: block;
	}
	.check_sub .checkbox_item + .checkbox_item {
	    margin-top: 12px;
	}
	#container{
		margin: 50px;
	}
	.input_box {
	    position: relative;
	    padding: 10px 0 14px;
	}
	.input_title {
	    font-size: 13px;
	    letter-spacing: -0.07px;
	    line-height: 18px;
	}
	.input_title.ess {
	    position: relative;
	    display: inline-block;
	    padding-right: 6px;
	}
	.input_title.ess:after {
	    content: "*";
	    position: absolute;
	    top: -2px;
	    right: 0;
	}
	.input_error {
	    display: none;
	}
	.input_item {
	    position: relative;
	}
	.input_txt {
	    padding: 8px 0;
	    width: 100%;
	    font-size: 15px;
	    letter-spacing: -0.15px;
	    line-height: 22px;
	    border-bottom: 1px solid #ebebeb;
	}
	.input_txt:focus {
	    padding-bottom: 7px;
	    border-bottom: 2px solid #333;
	}
	.input_txt.hover {
    	cursor: pointer;
    }
    .btn_size_select{
        display: inline-block;
	    cursor: pointer;
	    vertical-align: middle;
	    text-align: center;
	    color: rgba(34,34,34,.8);
	    background-color: #fff;
    }
    #size_choose_img{
    	width: 15px;
    }
    .ico-check-active{
    	width: 25px;
    	height: 25px;
    	filter: opacity(0.5) drop-shadow(0 0 0 #DCDCDC);
    }
    .label_txt{
    	vertical-align: top;
    }
    .ico-plus{
    	width: 20px;
    	height: 20px;
    	filter: opacity(0.5) drop-shadow(0 0 0 #DCDCDC);
    }
    .btn_join{
	    background-color: #ebebeb;
		color: #fff;
		cursor: default;
		height: 52px;
		width: 100%;
		font-size: 16px;
		letter-spacing: -.16px;
		font-weight: 700;
		border-radius: 12px;
		display: block;
		text-align: center;
		line-height: 30px;
		padding-top: 10px;
    }
	</style>
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
		        <div class="input_item">
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
	<div id="footer"><jsp:include page="/WEB-INF/main/footer.jsp"></jsp:include></div>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
		
	</script>
</body>
</html>