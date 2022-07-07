<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

#menu_head{
	float: left;
	width: 100%;
}
.gongji{
	font-size: 21px;
	font-weight: bold;
}
hr{	
	background-color: black;
	border:0;
	height:3px;
	margin: 0 0;
}
#ListTable{
	width:100%;
	border:"0";
	bordercolor:"gray";
	cellspacing:"0";
	cellpadding:"5";
	frame:"hsides";
	rules:"rows";
	
}
#ListTable tr td{
	font-size: 15px;
	padding: 17px 0 19px;
	border-bottom:1px solid #ebebeb;
}

</style>
	<input type="hidden" id="pg" value="${pg }">
<div id="menu_head">
<div class="gongji" width="300" style="clear: both; margin-bottom: 15px;"><h3>공지사항</h3></div>
<hr>
<%-- <input type="hidden" id="pg" value="${pg }"> --%>
<table id="ListTable">
	<!-- 동적처리 -->
	
</table>
</div>
<script type="text/javascript">
$(document).ready(function(){
	$.ajax({
		type: 'post',
		url: '/TeamProject/admin/getnoticeList',
		data: 'pg=' +$('#pg').val(),
		dataType:'json',
		success: function(data){
			$.each(data.list,function(index, items){  //items = var boardDTO
				console.log(index, items.notice_id, items.title, items.content, items.registrant, items.regdate );
								
					$('<tr/>').append($('<td/>',{
					
						}).append($('<a/>', {
							href: '#',
							text: items.title,
							class: 'subjectA subjectA_'+items.notice_id
						}))
						
				  ).appendTo($('#ListTable'));
				
				$('.subjectA'+items.notice_id).click(function(){
					var seq = $(this).parent().prev().text();
					location.href = '/TeamProject/admin/noticeView?seq='+seq+'&pg='+$('#pg').val();
				});
				
			});
		},
		error:function(e){
			console.log(e);
		}
	});
});
</script>