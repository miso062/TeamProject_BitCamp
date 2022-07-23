<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<style>


#nav_container {
    max-width: 1280px;
    margin: 0 auto;
    padding: 40px 40px 160px;
    width: 100%;
    min-height: 300px;
}
.h_header .h_top_inner {
    padding: 8px 40px;
    display: flex;
    height: 32px;
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
.category{
	margin-top:15px;
	width: 100%;
	height: 52px;
    border-bottom: 1px solid #ebebeb;
}
.category_list{
 	float: left;
    width: 72px;
    height: 40px;
    font-size: 13px;
    letter-spacing: -.07px;
    color: rgba(34,34,34,.5);
    text-align: center;
    line-height: 38px;
    background-color: #fff;
    border-radius: 30px;
    margin-bottom: 12px;
    margin-right: 8px;
    border: 1px solid #d3d3d3;
    cursor: pointer;
}
.check{
	border-color: #222;
    background-color: #222;
    color: #fff;
    font-weight: 700;

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
#PagingDiv{
	padding: 28px 0;
	text-align: center;
}
.pg1{
	color: #222;
    display: inline-block;
    padding: 0 8px;
    font-size: 16px;
    color: rgba(34,34,34,.5);
	cursor: pointer;
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
ul {
    display: block;
    list-style-type: disc;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
.dropdown_head {
    padding-top: 18px;
}
.dropdown_head {
    padding: 17px 0 19px;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    border-bottom: 1px solid #ebebeb;
    cursor: pointer;
    margin: 0 0;
}
.dropdown_head .sort {
    width: 68px;
    min-width: 68px;
    font-size: 14px;
    letter-spacing: -.21px;
}
strong {
    font-weight: bold;
}
.title_box {
    margin-right: 10px;
}
.title {
    font-size: 15px;
    letter-spacing: -.15px;
}
.dropdown_content {
    display: none;
    padding: 30px 30px 28px;
    background-color: #fafafa;
    border-bottom: 1px solid #ebebeb;
    font-size: 14px;
    letter-spacing: -.21px;
}
.content {
    max-width: 640px;
    word-break: break-word;
}
.icondown{
margin-left: auto;
}
.iconup{
margin-left: auto;
}
.updel{
	float:right;
	margin:10px;
    color: #fff;
    background-color: black;
    border-color: black;
	text-align:center;
    border-radius: 0.2rem;
    cursor:pointer;
    width: 45px;
   
}
.delupdate{
text-align:center;
}

</style>
<title>Insert title here</title>
<div id="fadein">
<input type="hidden" id="pg" value="${pg }">
<div class="gongji" width="300" style="clear: both; margin-bottom: 15px;"><h3>자주 묻는 질문</h3>
</div>
<hr id="hr">

<div class="category">
	<input class="check category_list" type="button" value="전체">
	<input class="category_list" type="button" value="이용정책">
	<input class="category_list" type="button" value="공통">
	<input class="category_list" type="button" value="구매">
	<input class="category_list" type="button" value="판매">
	<input class="category_list onlyadmin" type="button" value="QnA작성" onclick="location.href='/TeamProject/admin/noticeQnAwrite'">
</div>
<ul id="ListTable">
	<!-- 동적처리 -->
	
</ul>
<div id="PagingDiv"></div>
</div>


<script type="text/javascript">
$(document).ready(function(){
	if('${sessionScope.memAuthority}'!= 10){
		$('.onlyadmin').hide();
	}else{
		$('.onlyadmin').show();
	}
	
	$('#sub_area > ul > li:eq(1)').addClass('bold');
	$('#sub_area > ul > li:eq(2)').removeClass('bold');
	$('#sub_area > ul > li:eq(0)').removeClass('bold');
});

$(function(){
	$('.category_list').click(function(){
		$(this).addClass('check');
		$('.category_list').not($(this)).removeClass('check');
	})	
})
$(document).ready(function(){
	$.ajax({
		type: 'post',
		url: '/TeamProject/admin/getnoticeQnAList',
		data: 'pg=' +$('#pg').val(),
		dataType:'json',
		success: function(data){
			$.each(data.list,function(index, items){ 								
					$('<li/>').append($('<div/>',{
						class:'dropdown'
					}).append($('<div/>',{
						class:'dropdown_head'
					}).append($('<strong/>',{
						text: items.category,
						class:'sort'
						
					})).append($('<div/>',{
						class:'title_box'
					}).append($('<p/>',{
						class:'title',
						text: items.title
					}))
					).append($('<img/>',{
						class:'icondown',
						src:"/TeamProject/img/admin/downarrow.png"
					}))
					).append($('<div/>',{
						class:'dropdown_content'
					}).append($('<div/>',{
						html:items.content,	
						class:'content',
						
					})).append($('<div/>',{
						
					}).append($('<input/>',{
						class:"updel onlyadmin",
						type:"button",
						value:"글삭제",
						style:"margin:5px;",
						id:"noticeDeletebtn"
					})).append($('<input/>',{
						class:"updel onlyadmin",
						type:"button",
						value:"글수정",
						style:"margin:5px;",
						id:"noticeUpdatebtn"
					}))))
				  ).append($('<form/>',{
					  class:'seqpg'
				  }).append($('<input/>',{
					  type:'hidden',
					  id:'seq',
					  name:'seq',
					  value:items.qna_id
				  })).append($('<input/>',{
					  type:'hidden',
					  id:'pg',
					  name:'pg',
					  value: $('#pg').val()
				  }))).appendTo($('#ListTable'));
					if('${sessionScope.memAuthority}'!= 10){
						$('.onlyadmin').hide();
					}else{
						$('.onlyadmin').show();
					}
			});
			$('#PagingDiv').html(data.adminPaging.pagingHTML);
		},
		error:function(e){
			console.log(e);
		}
	});
});
function adminPaging(pg2){     //겟방식에서넘어갈때 한글처리가 안되어 깨짐 //크롬은 자동처리됨
	location.href = "/TeamProject/admin/noticeQnA?pg=" + pg2;
}
$(function(){
	$(document).on('click','.dropdown_head',function(){
		if($(this).children('img').hasClass('icondown')){
			$(this).children('img').attr('src', '/TeamProject/img/admin/uparrow.png');
			$(this).children('img').addClass('iconup');
			$(this).children('img').removeClass('icondown');
			$(this).next('.dropdown_content').css('display','block');
			$('.dropdown_head').not(this).next('.dropdown_content').css('display','none');
			$('.dropdown_head').not(this).children('img').removeClass('iconup').addClass('icondown');
			$('.icondown').attr('src','/TeamProject/img/admin/downarrow.png');
			
		}
		else{
			$(this).children('img').attr('src', '/TeamProject/img/admin/downarrow.png');
			$(this).children('img').addClass('icondown');
			$(this).children('img').removeClass('iconup');
			$(this).next('.dropdown_content').css('display','none');
		}
		$('.dropdown_head').not(this).children('img').removeClass('iconup').addClass('icondown');
	})
})
$('.category_list').click(function(){
	
	$('#ListTable li').remove();
	$.ajax({
		type: 'post',
		url: '/TeamProject/admin/getnoticeQnAListsearch',
		data: 'pg=' +$('#pg').val()
			+'&category='+$(this).val(),
		dataType:'json',
		success: function(data){
			$.each(data.list,function(index, items){ 
				$('<li/>').append($('<div/>',{
					class:'dropdown'
				}).append($('<div/>',{
					class:'dropdown_head'
				}).append($('<strong/>',{
					text: items.category,
					class:'sort'
					
				})).append($('<div/>',{
					class:'title_box'
				}).append($('<p/>',{
					class:'title',
					text: items.title
				}))
				).append($('<img/>',{
					class:'icondown',
					src:"/TeamProject/img/admin/downarrow.png"
				}))
				).append($('<div/>',{
					class:'dropdown_content'
				}).append($('<div/>',{
					html:items.content,	
					class:'content',
					
				})).append($('<div/>',{
					class:'delupdate'
				}).append($('<input/>',{
					class:"updel",
					type:"button",
					value:"글삭제",
					style:"margin:5px;",
					id:"noticeDeletebtn"
				})).append($('<input/>',{
					class:"updel",
					type:"button",
					value:"글수정",
					style:"margin:5px;",
					id:"noticeUpdatebtn"
				}))))
			  ).append($('<form/>',{
				  class:'seqpg'
			  }).append($('<input/>',{
				  type:'hidden',
				  id:'seq',
				  name:'seq',
				  value:items.qna_id
			  })).append($('<input/>',{
				  type:'hidden',
				  id:'pg',
				  name:'pg',
				  value: $('#pg').val()
			  }))).appendTo($('#ListTable'));
				
				
			});
		$('#PagingDiv').html(data.adminPaging.pagingHTML);
		},
		error:function(e){
			console.log(e);
		}
	});
	
});
$(document).on('click','#noticeDeletebtn',function(){
	if(confirm("정말로 삭제하시겠습니까?")){
		
	$.ajax({
		url:'/TeamProject/admin/noticeqnaDelete',
		type:'post',
		data: 'seq='+$(this).parent().parent().parent().next().children('input[name="seq"]').val()
	  		 +'&pg='+$(this).parent().parent().parent().next().children('input[name="pg"]').val(),
	  		 
	  	success: function(){
		 alert('글을 삭제하였습니다.');
		 location.href='/TeamProject/admin/noticeQnA';
		},	  			
			error: function(err){
			alert('실패실패실패실');
			console.log(err);
	  	}
	});
   }
});
$(document).on('click','#noticeUpdatebtn',function(){
	if(confirm("정말로 수정하시겠습니까?")){
		$(this).parent().parent().parent().next('.seqpg').attr('action','/TeamProject/admin/noticeqnaUpdate');
		$(this).parent().parent().parent().next('.seqpg').submit();
	}
});
</script>
