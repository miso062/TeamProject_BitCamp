function oninputEmail(value){
	console.log(value);
	checkEmail(value);  // 1개의 글자이벤트를 받을때마다 checkEmail호출 
	
}

function checkEmail(value) {
	var regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
	
	if (regEmail.test(value) === true) {
		console.log('입력된 값은 이메일입니다.');
		document.getElementById('email_label').style.color = "black";
		document.getElementById('email_error').style.display = "none";
		document.getElementById('email_input').style.borderColor = "black";
	} else {
		console.log('올바른 이메일을 입력해주세요.');
		document.getElementById('email_label').style.color = "#f15746";
		document.getElementById('email_error').style.display = "block";
		document.getElementById('email_input').style.borderColor = "#f15746";
	}
}
function checkPwd(value) {
	var regPwd = "^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$";
	
	if(regPwd.test(value) === true) {
		console.log('옳바른 비밀번호입니다.');
		document.getElementById('password_input')
	}
}