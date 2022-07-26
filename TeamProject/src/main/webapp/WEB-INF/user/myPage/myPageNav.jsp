<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
.pwdinput0{
	text-align:center;
	
	
}
#pwdinput9{
	border:1px solid black;
	height: 20px;
	border-radius: 16px;
	text-align:center;
}
.checkpwd1 {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(34,34,34,.5);
    z-index: 1010;
}
.checkpwd1 .checkpwd_container {
    width: 444px;
}
.checkpwd_container {
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
.checkpwd_header .title2 {
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
.checkpwd_btn {
    padding: 24px 32px 32px;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
}
.checkpwd_btn .checkpwd_btn4 {
    width: 120px;
}
.checkpwd_btn4 {
    border: 1px solid #d3d3d3;
}
.checkpwd_btn4 {
    padding: 0 18px;
    height: 42px;
    line-height: 40px;
    border-radius: 12px;
    font-size: 14px;
    letter-spacing: -.14px;
}
.checkpwd_btn4 {
    display: inline-block;
    cursor: pointer;
    vertical-align: middle;
    text-align: center;
    color: rgba(34,34,34,.8);
    background-color: #fff;
}
.checkpwd_btn5 {
    position: absolute;
    top: 18px;
    right: 20px;
    cursor: pointer;
}    
        .container.my .snb_area[data-v-3259a5f6] {
            float: left;
            width: 180px;
            margin-right: 20px;
        }
        a, a:active, a:focus, a:hover {
            text-decoration: none;
        }
        a:visited {
        font-weight : bold;
        }
        a {
            color: inherit;
            -webkit-tap-highlight-color: rgba(0,0,0,.1);
        }
        .container.my .snb_area[data-v-3259a5f6] {
            float: left;
            width: 180px;
            margin-right: 20px;
        }
        .container.my .snb_main_title[data-v-3259a5f6] {
            line-height: 29px;
            padding-bottom: 30px;
            font-size: 24px;
            letter-spacing: -0.36px;
            font-weight: 700;
            letter-spacing: -0.15px;
        }

        [data-v-3259a5f6] .text-danger {
            color: #f15746;
        }
        [data-v-3259a5f6] .text-warning {
            color: #ff7500;
        }
        .snb_list + .snb_list[data-v-7bcac446] {
            margin-top: 40px;
        }
        .snb_title[data-v-7bcac446] {
            line-height: 22px;
            margin-bottom: 12px;
            display: inline-block;
            vertical-align: top;
            font-size: 18px;
            letter-spacing: -0.27px;
            font-weight: 700;
        }
        .menu_link[data-v-4d11470e] {
            line-height: 18px;
            font-size: 15px;
            letter-spacing: -0.15px;
        }
        .menu_item + .menu_item[data-v-4d11470e] {
            margin-top: 12px;
        }
        .bold {
	        font-weight: bold;
	        color: black;
        }
        .unbold {
            color: rgba(34, 34, 34, 0.5);
			font-weight: normal;
        }
    </style>
    
    <div data-v-3259a5f6="" class="snb_area">
        <a data-v-3259a5f6="" href="/TeamProject/user/myPage" aria-current="page" class="nuxt-link-exact-active nuxt-link-active">
            <h2 data-v-3259a5f6="" class="snb_main_title">마이 페이지</h2></a>
        <nav data-v-7bcac446="" data-v-3259a5f6="" class="snb">
            <div data-v-7bcac446="" class="snb_list">
                <strong data-v-7bcac446="" class="snb_title">쇼핑 정보</strong>
                <ul data-v-4d11470e="" data-v-7bcac446="" class="snb_menu">
                    <li data-v-4d11470e="" class="menu_item"><a data-v-4d11470e="" href="/TeamProject/user/buyHistory" class="menu_link unbold"> 구매 내역 </a></li>
                    <li data-v-4d11470e="" class="menu_item"><a data-v-4d11470e="" href="/TeamProject/user/sellHistory" class="menu_link unbold"> 판매 내역 </a></li>
                    <li data-v-4d11470e="" class="menu_item"><a data-v-4d11470e="" href="/TeamProject/user/likePro" class="menu_link unbold"> 관심 상품 </a></li>
                </ul>
            </div>
            <div data-v-7bcac446="" class="snb_list">
                <strong data-v-7bcac446="" class="snb_title">내 정보</strong>
                <ul data-v-4d11470e="" data-v-7bcac446="" class="snb_menu">
                    <li data-v-4d11470e="" class="menu_item"><a data-v-4d11470e="" href="#" class="menu_link unbold" id="profileUpdate2"> 프로필 정보 </a></li>
                    <li data-v-4d11470e="" class="menu_item"><a data-v-4d11470e="" href="/TeamProject/user/addressBook" class="menu_link unbold"> 주소록 </a></li>
                </ul>
            </div>
        </nav>
    </div>
    <div class="checkpwd1" style="display: none;">
<div class="checkpwd_container">
<div class="checkpwd_header"><h2 class="title2">보안을 위하여 비밀번호 확인</h2></div>
<div class="checkpwd_list">
<div class="pwdinput0"><input type="password" id="pwdinput9" /></div>
</div>
<div class="checkpwd_btn"><ahref="#" class="checkpwd_btn4" > 확인 </a></div>
            <a href="#" class="checkpwd_btn5">
            </a>
</div>
</div>
<script type="text/javascript">
$('.menu_link').click(function(){
	$(this).addClass('bold');
	$(this).removeClass('unbold');
	$('.menu_link').not(this).addClass("unbold");
	$('.menu_link').not(this).removeClass('bold');
});
$('#profileUpdate2').click(function(){
	$('.checkpwd1').fadeIn();
	$('#pwdinput9').focus();
    $('body').css("overflow", "hidden");
});
$(document).on("click",function(e){
	if($('.checkpwd1').is(e.target)) {
		$('.checkpwd1').fadeOut();
        $('body').css("overflow-y", "scroll");
	}
})
 $('#pwdinput9').on('keypress', function(e){
  if(e.keyCode == '13'){
	  $('.checkpwd_btn4').click();
  }
});
$('.checkpwd_btn4').click(function(){
		
	$.ajax({
		type: 'post',
		url: '/TeamProject/user/pwdcheck',
		data: {'pwd': $('#pwdinput9').val()},
		dataType: 'text',
		success: function(data){
			data = data.trim();
			if(data == 'exist'){
			alert('비밀번호를 틀렸습니다.')
		}else if(data == 'non_exist'){
			$('.checkpwd').fadeOut();
		    $('body').css("overflow-y", "scroll");
		 location.href='/TeamProject/user/myPageEdit';
		 }
		},
		error: function(err){
			console.log(err);
		}
	});
	
});
</script>