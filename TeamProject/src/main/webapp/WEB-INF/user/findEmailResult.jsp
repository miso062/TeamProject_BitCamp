<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
.content {
    margin: 0 auto;
    padding: 0 40px;
    max-width: 1280px;
}
.help_area {
    margin: 0 auto;
    padding: 60px 0 160px;
    width: 400px;
}
.help_title.success {
    padding-top: 40px;
    font-size: 24px;
    letter-spacing: -.36px;
}
.help_title {
    padding-bottom: 41px;
    text-align: center;
    font-size: 32px;
    letter-spacing: -.48px;
    color: #000;
    border-bottom: 2px solid #000;
}
.success_notice {
    padding-top: 30px;
    text-align: center;
}
.success_notice .notice_title {
    font-size: 12px;
    letter-spacing: -.06px;
    color: rgba(34,34,34,.5);
}
.success_notice .notice_txt {
    padding-top: 8px;
    font-size: 18px;
    letter-spacing: -.09px;
    font-weight: 700;
}
.success_btn_box {
    padding-top: 56px;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
}
.find_pwd_btn {
    display: inline-block;
    cursor: pointer;
    vertical-align: middle;
    text-align: center;
    color: rgba(34,34,34,.8);
    background-color: #fff;
    border: 1px solid #d3d3d3;
    padding: 0 25px;
    height: 52px;
    line-height: 50px;
    border-radius: 14px;
    font-size: 16px;
    letter-spacing: -.16px;
    width: 50%;
}
.go_login_btn {
    margin-left: 8px;
    font-weight: 600;
    color: #fff;
    background-color: #222;
    padding: 0 25px;
    height: 52px;
    line-height: 50px;
    border-radius: 14px;
    font-size: 16px;
    letter-spacing: -.16px;
    display: inline-block;
    cursor: pointer;
    vertical-align: middle;
    text-align: center;
    width: 50%;
}
</style>

<div class="content lg">
    <div class="help_area">
        <div>
            <h2 class="help_title success"><span>이메일 주소 찾기에</span> <span>성공하였습니다.</span></h2>
            <div class="success_notice">
                <dl>
                    <dt class="notice_title">이메일 주소</dt>
                    <dd class="notice_txt" id="email_value">
                    	${email }
                    </dd>
                </dl>
            </div>
            <div class="success_btn_box">
                <a href="/TeamProject/user/findPWD" class="find_pwd_btn" type="button"> 비밀번호 찾기 </a>
                <a class="go_login_btn" type="button"> 로그인 </a>
            </div>
        </div>
    </div>
</div>

<!-- a모달.. -->
<script type="text/javascript">
$('.go_login_btn').click(function(){
	$('.content_login').fadeIn();
    $('body').css("overflow", "hidden");
    $('.content_login').css('overflow-y', 'scroll')
});
</script>
