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
#hr{	
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
#menu2{
	float:right;
	margin:10px;
    color: #fff;
    background-color: black;
    border-color: black;
    padding-left:20px;
    padding-right:20px;
	text-align:center;
	padding: 0.25rem 0.5rem;
    font-size: .875rem;
    line-height: 1.5;
    border-radius: 0.2rem;


}
#PagingDiv{
	padding: 28px 0;
	text-align: center;
}
.paging1{
    color: #222;
    display: inline-block;
    padding: 0 8px;
    font-size: 16px;
    color: rgba(34,34,34,.5);
	cursor: pointer;
}
.paging1:link{color:black; text-decoration: none;}
.paging1:visited{color:black; text-decoration: none;}
.paging1:hover{color:gray; text-decoration: underline;}
#currentPaging{
	color: black;
	font-weight: 700;
}
#menu2{
	cursor:pointer;
}
.pg1{
	color: #222;
    display: inline-block;
    padding: 0 8px;
    font-size: 16px;
    color: rgba(34,34,34,.5);
	cursor: pointer;
}
</style>
	<input type="hidden" id="pg" value="${pg }">
<div id="menu_head">
<div class="gongji" width="300" style="clear: both; margin-bottom: 15px;"><h3>공지사항</h3>
</div>
<hr id="hr">
<%-- <input type="hidden" id="pg" value="${pg }"> --%>
<table id="ListTable">
	<!-- 동적처리 -->
	
</table>
<div>
	<input id="menu2" type="button" value="공지사항 작성" class="menu1"  onclick="location.href='/TeamProject/admin/noticewrite'">
	<div id="PagingDiv"></div>
</div>


</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$.ajax({
		type: 'post',
		url: '/TeamProject/admin/getnoticeList',
		data: 'pg=' +$('#pg').val(),
		dataType:'json',
		success: function(data){
			$.each(data.list,function(index, items){ 
								
					$('<tr/>').append($('<td/>',{
					
						}).append($('<a/>', {
							href: '#',
							text: items.title,
							class: 'subjectA subjectA_'+items.notice_id
						}))
						
				  ).appendTo($('#ListTable'));
				
			 $('.subjectA_'+items.notice_id).click(function(){
					location.href = '/TeamProject/admin/noticeView?seq='+items.notice_id+'&pg='+$('#pg').val();
				});
				
			});
			$('#PagingDiv').html(data.adminPaging.pagingHTML);
		},
		error:function(e){
			console.log(e);
		}
	});
});
function adminPaging(pg2){     //겟방식에서넘어갈때 한글처리가 안되어 깨짐 //크롬은 자동처리됨
	location.href = "/TeamProject/admin/notice?pg=" + pg2;
}
</script>