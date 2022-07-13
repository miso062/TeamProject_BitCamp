
window.onload = function() { //카카오 로그인 api
	window.Kakao.init('144932b30082932e5eba55d918d38249');
}

function kakaoLogin() {
    window.Kakao.Auth.login({
        scope: 'profile_nickname, account_email, gender, age_range, birthday', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
        success: function(response) {
            console.log(response) // 로그인 성공하면 받아오는 데이터
            window.Kakao.API.request({ // 사용자 정보 가져오기 
                url: '/v2/user/me',
                success: (res) => {
                    const kakao_account = res.kakao_account;
                    console.log(kakao_account)
                }
            });
            // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
        },
        fail: function(error) {
            console.log(error);
        }
    });
}//카카오 api




var resultEmail = false; //defalt값이 틀렸을떄를 가정
var resultPwd = false;


function oninputEmail(value){
	console.log(value);
	resultEmail = checkEmail(value);  // 1개의 글자이벤트를 받을때마다 checkEmail호출
	console.log(resultEmail);
	loginOkCheck();
}

function oninputPwd(value){
	console.log(value);
	resultPwd = checkPwd(value);	// 1개의 글자이벤트를 받을때마다 checkPwd호출
	console.log(resultPwd);
	loginOkCheck();
}

//로그인 버튼 활성 비활성
function loginOkCheck(){ 
	if((resultEmail == true) && (resultPwd == true )){
		document.getElementById('login_btn').className = 'login_btn';
	}else {
		document.getElementById('login_btn').className = 'login_btn_disabled'
	}
}


function checkEmail(value) { //이메일 유효성 검사
	var regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
	
	if (regEmail.test(value) == true) {
		//console.log('입력된 값은 이메일입니다.');
		document.getElementById('log_email_label').style.color = "black";
		document.getElementById('log_email_error').style.display = "none";
		document.getElementById('log_email_input').style.borderColor = "black";
		return true;
	} else {
		//console.log('올바른 이메일을 입력해주세요.');
		document.getElementById('log_email_label').style.color = "#f15746";
		document.getElementById('log_email_error').style.display = "block";
		document.getElementById('log_email_input').style.borderColor = "#f15746";
		return false;
	}
}
function checkPwd(value) { //비밀번호 유효성 검사
	var regPwd = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;

	if(regPwd.test(value) == true) {
		console.log('제대로 된 비밀번호 입니다.');
		document.getElementById('log_pwd_label').style.color ="black";
		document.getElementById('log_pwd_error').style.display = "none";
		document.getElementById('log_pwd_input').style.borderColor = "black";
		return true;
	} else {
		console.log('올바른 비밀번호을 입력해주세요.');
		document.getElementById('log_pwd_label').style.color = "#f15746";
		document.getElementById('log_pwd_error').style.display = "block";
		document.getElementById('log_pwd_input').style.borderColor = "#f15746";
		return false;
	}
}

//로그인 ajax
$('#login_btn').click(function(){
	$.ajax({
		url:'/TeamProject/user/checkLogin',
		type:'post',
		data: 'log_email_input='+$('#log_email_input').val()
			  +'&log_pwd_input=' +$('#log_pwd_input').val(),
			  
		success: function(data){
			
			if(data.success == "false"){
				console.log(data);
				alert('아이디나 비밀번호가 일치하지 않습니다.');
				
			}else{
				console.log(data);
				alert('로그인 되었습니다.');
				location.href='/TeamProject/';
			}
			
		},
			error:function(err){
				alert('로그인 실패');
				console.log(err);
			}
	});
});



