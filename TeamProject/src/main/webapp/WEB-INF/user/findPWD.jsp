<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>KREAM | 한정판 거래의 FLEX</title>
	<style type="text/css">
		body,
		html {
		    height: 100%;
		}
		#header{
			width: 100%;
			height: 80px;
			margin: 0 auto;			
		}
		.help_area {
		    margin: 0 auto;
		    padding: 60px 0 160px;
		    width: 400px;
		}
		.help_title {
		    padding-bottom: 41px;
		    text-align: center;
		    font-size: 32px;
		    letter-spacing: -0.48px;
		    color: #000;
		    border-bottom: 2px solid #000;
		}
		.help_title.success {
		    padding-top: 40px;
		    font-size: 24px;
		    letter-spacing: -0.36px;
		}
		.help_notice {
		    padding: 40px 0 30px;
		}
		.help_notice .notice_txt {
		    font-size: 14px;
		    letter-spacing: -0.21px;
		}
		.help_btn_box {
		    padding-top: 44px;
		}
		.success_notice {
		    padding-top: 30px;
		    text-align: center;
		}
		.success_notice .notice_title {
		    font-size: 12px;
		    letter-spacing: -0.06px;
		    color: rgba(34, 34, 34, 0.5);
		}
		.success_notice .notice_txt {
		    padding-top: 8px;
		    font-size: 18px;
		    letter-spacing: -0.09px;
		    font-weight: 700;
		}
		.success_btn_box {
		    padding-top: 56px;
		    display: -webkit-box;
		    display: -ms-flexbox;
		    display: flex;
		}
		.success_btn_box .btn {
		    -webkit-box-flex: 1;
		    -ms-flex: 1;
		    flex: 1;
		    height: 52px;
		    line-height: 52px;
		    border-radius: 12px;
		}
		.success_btn_box .btn + .btn {
		    margin-left: 8px;
		}
		.input_box {
			position: relative;
    		padding: 10px 0 14px;
		}
		.input_title{
		    font-size: 13px;
		    letter-spacing: -.07px;
		    line-height: 18px;
    	}
    	.input_txt {
		    padding: 8px 0;
		    width: 100%;
		    font-size: 15px;
		    letter-spacing: -.15px;
		    line-height: 22px;
		    border-bottom: 1px solid #ebebeb;
		}
		.input_txt:focus {
		    padding-bottom: 7px;
		    border-bottom: 2px solid #333;
		}
		.solid.disabled, .solid:disabled {
		    background-color: #ebebeb;
		    color: #fff;
		    cursor: default;
		}
		.full {
			display: inline-block;
		    cursor: pointer;
		    vertical-align: middle;
		    text-align: center;
		    width: 100%;
		    font-size: 16px;
		    letter-spacing: -.16px;
		    font-weight: 700;
		    height: 52px;
		    line-height: 50px;
		    border-radius: 12px;
		}
		.solid.abled, .solid:active {
		    background-color: #222;
		    color: #fff;
		    cursor: pointer;
		}
	</style>
</head>
<body>
	<div id="header">
		<jsp:include page="${head }"></jsp:include>
	</div>
	<div id="container">
		<div class="content lg">
		    <div class="help_area">
		        <div>
		            <h2 class="help_title">비밀번호 찾기</h2>
		            <div class="help_notice">
		                <p class="notice_txt">
		                    가입 시 등록한 휴대폰 번호와 이메일을 입력하면<br />
		                    휴대폰으로 임시 비밀번호를 전송해 드립니다.
		                </p>
		            </div>
		            <div class="input_box">
		                <h3 class="input_title">휴대폰 번호</h3>
		                <div class="input_item">
		                	<input type="text" id="phone" name="phone" placeholder="가입하신 휴대폰 번호" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" autocomplete="off" class="input_txt" />
	                	</div>
		            </div>
		            <div class="input_box">
		                <h3 class="input_title">이메일 주소</h3>
		                <div class="input_item">
		                	<input type="text" id="user_id" name="user_id" placeholder="예) kream@kream.co.kr" autocomplete="off" class="input_txt" />
	                	</div>
		            </div>
		            <div class="help_btn_box">
		            	<a onclick="findPW()" disabled="disabled" id="findPW" class="btn full solid disabled"> 문자 발송하기 </a>
		            	<input type="text" id="rand_pwd" value="">
		            	</div>
		        </div>
		    </div>
		</div>
	</div>
	<div id="footer" style="margin-top: 5%">
		<jsp:include page="${footer }"></jsp:include>
	</div>
<script type="text/javascript">
$('.input_txt').on('input', function() {
    if($(this).val().length > 8){
    	$('.full').removeClass('disabled');
    	$('.full').addClass('abled');
    	$('.full').attr('href','#');
    }
    else{
    	$('.full').addClass('disabled');
    	$('.full').removeClass('abled');
    	$('.full').attr('href','#');
    }
});

//비밀번호 찾기
//$('#findPW').click,function(){

function findPW(){
	$.ajax({
		url:'/TeamProject/user/findPwCheck', 
		type:'post',
		data: 'phone=' + $('#phone').val()
			 +'&user_id=' + $('#user_id').val(),
		dataType:'json',	 
		success: function(data){
			console.log(data.check + " "+ data.pwd);
			if(data.check == 1){
				if(confirm('임시 비밀번호는 ' + data.pwd + ' 입니다. \n꼭 기억해주세요 :) ' )){
					location.href="/TeamProject/";
				}
			}else{
				alert('핸드폰 번호나 이메일 주소가 일치하지 않습니다.');
			}
		},
		error:function(err){
			alert('err에러rrrr');
			console.log(err);
		}
	});
};
	
		
		
		
		
		
		
		
	</script>
</body>