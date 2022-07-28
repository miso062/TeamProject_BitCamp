<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<section class="no-padding-bottom">
	<div class="section-body">
		<div class="row" style="display: flex;">
			<div class="col-md-9 col-lg-10 col-xl-10">
				<ul class="nav nav-tabs" data-toggle="tabs"
					style="margin-top:24px; list-style:none;" id="prod_status_tab">
					<li class="owl_dashboard _owl_dashboard owl-carousel owl-theme owl-loaded">
						<div class="owl-stage-outer">
							<div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 281px;">
							</div>
						</div>
					</li>
				</ul>
				<div class="card">
				<div class="card-body no-padding">
										<div class="user-search" id="userSearch">
											<div class="form-group">
												<div id="prefetch">
													<span class="twitter-typeahead" style="position: relative; display: inline-block;">
														<img style="width: 25px; height: 25px; margin: 10px" src="/TeamProject/img/admin/search.png">
														<input type="hidden" name="q" value="YToxOntzOjEwOiJqb2luX29yZGVyIjtzOjQ6ImRlc2MiO30=" class="form-control typeahead" /> 
														<input type="text" class="form-control typeahead tt-input" id="keyword_search1" name="keyword" placeholder="검색" autocomplete="off" spellcheck="false" style="position: relative; outline: none; vertical-align: top; background-color: transparent;" value="" />
													</span>
												</div>
											</div>
									</div>
								</div>
								</div>
				<div class="row">
					<div class="col-md-12">
						<div class="card">
						
								
								
							<div class="table-responsive shop-table check" id="prod_list"
								style="">
								<table class="table no-margin">
									<thead class="subject _prodListHeaderDeselected" style="display: table-header-group;" id="prod_list_header_deselected">
									<div class="card-head" id="card-head" style="">
										<header class="small"> 전체 상품 <span class="text-primary" id="total-member-count"></span>개</header>
										<header class="small"> 판매중 <span class="text-primary" id="total-member-count2"></span>개</header>
										<header class="small"> 판매 안함 <span class="text-primary" id="total-member-count3"></span>개</header>
										
									</div>
										<tr>
											<th class="no">No</th>
											<th>이미지</th>
											<th class="kor_title image" style="width:300px;">상품명(한글)</th>
											<th class="eng_title image" style="width:300px;">상품명(영문)</th>
											<th class="group">카테고리</th>
											<th class="brand">브랜드</th>
											<th class="pay text-right">발매가</th>
											<th class="collection">컬렉션</th>
											<th class="state">상태</th>
											<th class="r_date">발매일</th>
											<th class="e_date">등록일</th>
											<th class="more">비고</th>
										</tr>
									</thead>
									<tbody id="prod_list_body" class="_prod_list_body ui-sortable">
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!-- <div class="col-md-12">
						<nav class="text-center order_paging" id="prod_list_paging" style="">
							<ul class="pagination">
								<li class="prev disabled">
									<a href="#"><i class="icon-arrow-left" aria-hidden="true"></i><span class="sr-only">Previous</span></a>
								</li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li class="next disabled">
									<a href="#"> <i class="icon-arrow-right" aria-hidden="true"></i> <span class="sr-only">Next</span></a>
								</li>
							</ul>
						</nav>
					</div> -->
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$.ajax({
		type:'post',
		url:'/TeamProject/admin/getAllProList2',
		dataType:'json',
		success:function(data){
			$('#prod_list_body').html('');
			var addr;
			
			$.each(data,function(index,items){
				if(items.collection == null){
					items.collection = '-';
				}
				if(items.release_date == null){
					items.release_date = '-';
				}
				if(items.release_price == null){
					items.release_price = '-';
				}
				addr = '<tr class="content _prodListItem">'+
                '<td class="no text-12" id="product_id">'+items.product_id+'</td>'+
                '<td class="image"><img src="'+items.file_path+'" width="49" height="49" class="product_img" /></td>'+
                '<td class="group" style="width:250px;">'+items.kor_name+'</td>'+
                '<td class="group" style="width:250px;">'+items.eng_name+'</td>'+
                '<td class="group" style="width:100px;">'+items.category+'</td>'+
                '<td class="group" style="width:100px;">'+items.brand+'</td>'+
                '<td class="pay text-right" style="width:150px;">'+items.release_price+'</td>'+
                '<td class="group">'+items.collection+'</td>'+
                '<td >'+items.post_status+'</td>'+
                '<td class="r_date text-12">'+items.release_date+'</td>'+
                '<td class="e_date text-12">'+items.regdate+'</td>'+
                '<td><div id="deleteThisPro" style="cursor:pointer; padding: 5px 0;text-align:center; border:1px solid lightgray; width:70px; border-radius: 15px;">상품삭제</div></td>' +
            	'</tr>';
            	$('#prod_list_body').append(addr)
				
			})
		},
		error:function(e){
			console.log(e);
		}
	})
});
$(document).ready(function(){
	$.ajax({
		type:'post',
		url:'/TeamProject/admin/getAllAdmin',
		dataType:'json',
		success:function(data){
			$('#total-member-count').text(data.pro_count);
			$('#total-member-count2').text(data.buy_count);
			$('#total-member-count3').text(data.buystop_count);
		},
		error:function(e){
			console.log(e);
		}
		
	})
});
$(document).on('click','#deleteThisPro',function(){
	if(confirm("정말로 삭제하겠습니까?")){
		
		$.ajax({
			url:'/TeamProject/admin/deleteThisPro',
			type:'post',
			data: 'product_id='+$(this).parent().prev().prev().prev().prev().prev().prev().prev().prev().prev().prev().prev('#product_id').text(),  		 
		  	success: function(){
			 alert('상품을 삭제했습니다.');
			  location.href='/TeamProject/admin/proManage'
			},	  			
				error: function(err){
				alert('실패실패실패실');
				console.log(err);
		  	}
		});
	   }
	});
	
$(function(){

var delay = (function(){

var timer = 0;

return function(callback, ms){

clearTimeout (timer);

timer = setTimeout(callback, ms);

};

})();

 

$("#keyword_search1").keyup(function() {

delay(function(){

search_ajax();

}, 1000 );

});

});
function search_ajax(){
	// 키 입력 후 일정 시간 지나면 실행될 함수
	if($('#keyword_search1').val()==''){
		$(document).ready(function(){
			$.ajax({
				type:'post',
				url:'/TeamProject/admin/getAllProList2',
				dataType:'json',
				success:function(data){
					$('#prod_list_body').html('');
					var addr;
					
					$.each(data,function(index,items){
						if(items.collection == null){
							items.collection = '-';
						}
						if(items.release_date == null){
							items.release_date = '-';
						}
						if(items.release_price == null){
							items.release_price = '-';
						}
						addr = '<tr class="content _prodListItem">'+
		                '<td class="no text-12" id="product_id">'+items.product_id+'</td>'+
		                '<td class="image"><img src="'+items.file_path+'" width="49" height="49" class="product_img" /></td>'+
		                '<td class="group" style="width:250px;">'+items.kor_name+'</td>'+
		                '<td class="group" style="width:250px;">'+items.eng_name+'</td>'+
		                '<td class="group" style="width:100px;">'+items.category+'</td>'+
		                '<td class="group" style="width:100px;">'+items.brand+'</td>'+
		                '<td class="pay text-right" style="width:150px;">'+items.release_price+'</td>'+
		                '<td class="group">'+items.collection+'</td>'+
		                '<td >'+items.post_status+'</td>'+
		                '<td class="r_date text-12">'+items.release_date+'</td>'+
		                '<td class="e_date text-12">'+items.regdate+'</td>'+
		                '<td><div id="deleteThisPro" style="cursor:pointer; padding: 5px 0;text-align:center; border:1px solid lightgray; width:70px; border-radius: 15px;">상품삭제</div></td>' +
		            	'</tr>';
		            	$('#prod_list_body').append(addr)
						
					})
				},
				error:function(e){
					console.log(e);
				}
			})
		});
		$(document).ready(function(){
			$.ajax({
				type:'post',
				url:'/TeamProject/admin/getAllAdmin',
				dataType:'json',
				success:function(data){
					$('#total-member-count').text(data.pro_count);
					$('#total-member-count2').text(data.buy_count);
					$('#total-member-count3').text(data.buystop_count);
				},
				error:function(e){
					console.log(e);
				}
				
			})
		});
	}else{
	$.ajax({
			type:'post',
			url:'/TeamProject/admin/getAllProList3',
			data: {'keyword' : $('#keyword_search1').val()},
			dataType:'json',
			success:function(data){
				$('#prod_list_body').html('');
				var addr;
				if(data !=''){
				$.each(data,function(index,items){
					if(items.collection == null){
						items.collection = '-';
					}
					if(items.release_date == null){
						items.release_date = '-';
					}
					if(items.release_price == null){
						items.release_price = '-';
					}
					addr = '<tr class="content _prodListItem">'+
	                '<td class="no text-12" id="product_id">'+items.product_id+'</td>'+
	                '<td class="image"><img src="'+items.file_path+'" width="49" height="49" class="product_img" /></td>'+
	                '<td class="group" style="width:250px;">'+items.kor_name+'</td>'+
	                '<td class="group" style="width:250px;">'+items.eng_name+'</td>'+
	                '<td class="group" style="width:100px;">'+items.category+'</td>'+
	                '<td class="group" style="width:100px;">'+items.brand+'</td>'+
	                '<td class="pay text-right" style="width:150px;">'+items.release_price+'</td>'+
	                '<td class="group">'+items.collection+'</td>'+
	                '<td >'+items.post_status+'</td>'+
	                '<td class="r_date text-12">'+items.release_date+'</td>'+
	                '<td class="e_date text-12">'+items.regdate+'</td>'+
	                '<td><div id="deleteThisPro" style="cursor:pointer; padding: 5px 0;text-align:center; border:1px solid lightgray; width:70px; border-radius: 15px;">상품삭제</div></td>' +
	            	'</tr>';
	            	$('#prod_list_body').append(addr)
					})
				}else{
					addr = '<tr class="content _tbody" id="member_item">'+
					 '<td class="nick" style="width:170px;">'+'검색결과를 찾을 수 없습니다.'+'</td>'+
					 '</tr>';
					 $('#prod_list_body').append(addr)
				}
			},
			error:function(e){
				console.log(e);
			}
			
		})
		$(document).ready(function(){
			$.ajax({
				type:'post',
				url:'/TeamProject/admin/getSearchAdmin3',
				data: {'keyword' : $('#keyword_search1').val()},
				dataType:'json',
				success:function(data){
					$('#total-member-count').text(data.searchpro1);
					$('#total-member-count2').text(data.searchpro2);
					$('#total-member-count3').text(data.searchpro3);
				},
				error:function(e){
					console.log(e);
				}
				
			})
		});
	  }
	}
</script>
</section>
