$(document).ready(function(){
	alter('hi');
	$.ajax({
		type: 'post',
		url: '/TeamProject/admin/getnoticeList',
		data: 'pg=' +$('#pg').val(),
		dataType:'json',
		success: function(data){
			
			$.each(data.list,function(index, items){  //items = var boardDTO
				console.log(index, items.notice_id, items.title, items.content, items.registrant, items.regdate );
								
				$('<tr/>').append($('<td/>',{
						align:'center',
						text: items.notice_id
					})).append($('<a/>', {
						href: '#',
						text: items.title,
					})).append($('<td/>',{
						text: items.content
					})).append($('<td/>',{
						align:'center',
						text: items.registrant		
					})).append($('<td/>',{
						align:'center',
						text: items.regdate
					})).appendTo($('#boardListTable'));
			
			//로그인 여부 -비동적
				/*$('.subjectA_'+items.seq).click(function(){
					if(data.memId == null){
					alert('먼저 로그인하세요');
				}else{
					location.href = '/miniProject/board/boardView.do?seq='+items.seq+'&pg='+$('#pg').val();
				}
				});*/
				//답글 
				/*for(i=0; i<items.lev; i++ ){
					 $('.subjectA_'+items.seq).before('&emsp;');
				}
				if(items.pseq != 0){
					$('.subjectA_'+items.seq).bofore($('<img/>',{
						src:'/miniProject/image/reply.gif'
					}));
				}*/
				
			});//each
			
			//로그인 여부  -동적 
			// 부모  (최상위부모, (조상))
			//$('#boardListTable').on('click', '#subjectA',function(){
			$(document).on('click', '.subjectA',function(){
				//alert($(this).parent().prev().prop('tagName'));
				//alert($(this).parent().prev().text());
				
				if(data.memId == null){
					alert('먼저 로그인하세요');
				}else{
					var seq = $(this).parent().prev().text();
					location.href = '/SpringProject/board/boardView?seq='+seq+'&pg='+$('#pg').val();
				}
			});
			
			
			//페이징처리
			$('#boardPagingDiv').html(data.boardPaging.pagingHTML);
		},
		error:function(e){
			console.log(e);
		}
	});
});