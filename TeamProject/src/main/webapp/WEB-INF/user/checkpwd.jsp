<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>보안을 위하여 비밀번호 확인</div>
<br>
<input type="password" id="pwd">
<input type="button" id="pwdcheckBtn" value="확인">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
 $(function(){
	 $('#pwd').on('keypress', function(e){
		  if(e.keyCode == '13'){
		  	$('#pwdcheckBtn').click();
		  }
		});
	$('#pwd').focus();
	$('#pwdcheckBtn').click(function(){
	
		$.ajax({
			type: 'post',
			url: '/SpringProject/member/pwdcheck',
			data: {'pwd': $('#pwd').val()},
			dataType: 'text',
			success: function(data){
				data = data.trim();
				if(data == 'exist'){
				alert('비밀번호를 틀렸습니다.')
			}else if(data == 'non_exist'){
			 opener.location.href='/SpringProject/member/updateForm';
			 window.close();
			 }
			},
			error: function(err){
				console.log(err);
			}
		});
		
	});
 });
</script>
</body>
</html>
