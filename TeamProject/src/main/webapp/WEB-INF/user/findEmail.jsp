<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
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

<div id="container">
	<div class="content lg">
	    <div class="help_area">
	        <div>
	            <h2 class="help_title">이메일 아이디 찾기</h2>
	            <div class="help_notice">
	                <p class="notice_txt">
	                    가입 시 등록한 휴대폰 번호를 입력하면<br />
	                    이메일 주소의 일부를 알려드립니다.
	                </p>
	            </div>
	            <div class="input_box">
	                <h3 class="input_title">휴대폰 번호</h3>
	                <div class="input_item">
	                	<input type="text" id="phone" name="phone" placeholder="가입하신 휴대폰 번호" autocomplete="off" class="input_txt" />
                	</div>
	            </div>
	            <div class="help_btn_box">
	            	<input type="button" disabled="disabled" id="find_email" class="btn full solid disabled" onclick="findEmailAddress()" value="이메일 아이디 찾기">
	            </div>
	        </div>
	    </div>
	</div>
</div>

<script type="text/javascript">
		
function findEmailAddress(){
	$.ajax({
		url:'/TeamProject/user/findEmaiAddress',
		type:'post',
		data:('phone=')+$('#phone').val(),
		success: function(data){
			if(data.success =="false"){
				console.log(data);
				alert('회원정보가 없습니다.');
			}else{
				console.log(data);
				location.href='/TeamProject/user/findEmailResult?email='+data.user_id;
			}
		},
		error: function(err){
			alert('errrrr');
			
		}			
	});
	
};


$('.input_txt').on('input', function() {
		var value = $(this).val();
		var regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
	    if(regPhone.test(value) === true){
	    	$('.full').removeClass('disabled');
	    	$('.full').addClass('abled');
	    	$(".full").removeAttr("disabled");
	    }
	    else{
	    	$('.full').addClass('disabled');
	    	$('.full').removeClass('abled');
	    	$('.full').attr('disabled','disabled');
	    }
});

$('#find_email').click(function(){
	if('input' == null ) {
		$('#find_email').trigger('click');
	} 
});


</script>
