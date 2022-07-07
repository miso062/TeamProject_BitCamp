<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#hr{	
	background-color: black;
	border:0;
	height:3px;
	margin: 0 0;
}
.gongji{
	font-size: 21px;
	font-weight: bold;
}
#regdate{
	margin-top: 20px;
    margin-bottom: 1px;
    display: -webkit-inline-box;
    display: -ms-inline-flexbox;
    display: inline-flex;
    font-size: 12px;
    letter-spacing: -.06px;
}
#title{
    font-size: 15px;
    letter-spacing: -.15px;
}
#content{
	border-top: 1px solid #ebebeb;
    padding: 30px 30px 28px;
    background-color: #fafafa;
    border-bottom: 1px solid #ebebeb;
    font-size: 14px;
    letter-spacing: -.21px;
}
#back_list{
	margin-top:30px;
	text-align:center;
}
.back_list{
	border: 1px solid #d3d3d3;
    color: rgba(34,34,34,.8);
    padding: 0 18px;
    height: 42px;
    line-height: 40px;
    border-radius: 12px;
    font-size: 14px;
    letter-spacing: -.14px;
        display: inline-block;
    cursor: pointer;
    vertical-align: middle;
    text-align: center;
    color: rgba(34,34,34,.8);
    background-color: #fff;
}
</style>
<input type="hidden" id="seq" name="seq" value="${seq }">
<input type="hidden" id="pg" name="pg" value="${pg }">
<div id="menu_head">
<div class="gongji" width="300" style="clear: both; margin-bottom: 15px;"><h3>공지사항</h3></div>
<hr id="hr">
<div id="content_head">
<div id="regdate"></div>
<div id="title"></div>
</div>
<br>
<div id="content"></div>
</div>
<div id="back_list">
	<a href="/TeamProject/admin/notice?pg=${pg}" class="back_list">목록보기</a>
</div>
<script>
$(document).ready(function(){
	$.ajax({
		type: 'post',
		url: '/TeamProject/admin/getnoticeView',
		data: 'seq='+$('input[name="seq"]').val()
	  		 +'&pg='+$('input[name="pg"]').val(),
		success:function(data){
			
			$('#regdate').text(data.adminDTO.regdate);
			$('#title').text(data.adminDTO.title);
			$('#content').html(data.adminDTO.content);			
		},
		error:function(err){
			console.log(err);
		}
	});
});
</script>