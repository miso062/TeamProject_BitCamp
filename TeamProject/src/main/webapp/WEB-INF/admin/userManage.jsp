<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<section>
	<div class="section-body">
		<div class="tab-pane" id="daily">
			<div class="row">
				<div class="col-md-9 col-xl-10">
					<div class="row">
						<div class="col-md-10">
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
						</div>

						<div class="col-md-12">
							<div class="card">
								<div id="order_list_loader_sub" class="se-pre-con" style="background: none; position: relative; height: 100px; display: none;">
									<div class="page-loader-spinner">
										<div class="double-bounce1"></div>
										<div class="double-bounce2"></div>
									</div>
								</div>
								<div class="card-head" id="card-head" style="">
									<header class="small">
										전체 사용자 <span class="text-primary" id="total-member-count">3</span>명
									</header>
								</div>

								<div class="card-body no-padding">
							        <div class="li_table" id="UI_TABLE">
							            <ul class="subject _thead" id="table-header">
							                <li class="nick" style="width:170px;" >회원 유형</li>
							                <li class="nick" style="width:170px;">이름</li>
							                <li class="nick" style="width:170px;">닉네임</li>
							                <li class="account" style="width:250px;">계정</li>
							                <li class="date_mileage" style="width:250px;">연락처</li>
							                <li class="date_join">가입일</li>
							                <li >비고</li>
							            </ul>
									 </div>
							        <nav class="text-center" id="paginate"></nav>
							    </div>
							    <div class="card-body no-padding">
							        <div class="li_table" id="UI_TABLE1">
							            
									 </div>
							        <nav class="text-center" id="paginate"></nav>
							    </div>							    
							    <div class="card-body no-padding">
							        <div class="li_table" id="UI_TABLE2">
							            
									 </div>
							        <nav class="text-center" id="paginate"></nav>
							    </div>							    
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
function phoneFormatter(num, type) {
	   var formatNum = '';
	   try{
		if (num.length == 11) {
			if (type == 0) {            
				formatNum = num.replace(/(\d{3})(\d{4})(\d{4})/, '$1-****-$3');         
			} else {            
				formatNum = num.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');         
			}      
			} else if (num.length == 8) {         
				formatNum = num.replace(/(\d{4})(\d{4})/, '$1-$2');      
			} else {         
				if (num.indexOf('02') == 0) {            
				if (type == 0) {               
					formatNum = num.replace(/(\d{2})(\d{4})(\d{4})/, '$1-****-$3');            
				} else {               
					formatNum = num.replace(/(\d{2})(\d{4})(\d{4})/, '$1-$2-$3');            
				}         
				} else {            
					if (type == 0) {               
						formatNum = num.replace(/(\d{3})(\d{3})(\d{4})/, '$1-***-$3');            
					} else {               
						formatNum = num.replace(/(\d{3})(\d{3})(\d{4})/, '$1-$2-$3');            
					}         
				}      
			}   
		} catch(e) {      
			formatNum = num;      
			console.log(e);   
	}   
	return formatNum;
	}
	$(document).ready(function(){
		$.ajax({
			type:'post',
			url:'/TeamProject/admin/getAllUserList3',
			dataType:'json',
			success:function(data){
				$('#UI_TABLE2').html('');
				var addr;
				$.each(data,function(index,items){
					if(items.authority == 5){
						items.authority ='<div style="color:blue; font-weight: bold;">우수회원</div>'
					}else{
						items.authority = '일반회원'
					}
					addr = '<ul class="content _tbody" id="member_item">'+
	                '<li class="nick" style="width:170px;">'+items.authority+'</li>'+
	                '<li class="nick" style="width:170px;">'+items.user_name+'</li>'+
	                '<li class="nick" style="width:170px;">'+items.nickname+'</li>'+
	                '<li id="userId" class="account" style="width:250px;">'+items.user_id+'</li>'+
	                '<li class="date_mileage" style="width:250px;">'+phoneFormatter(items.hp)+'</li>'+
	                '<li class="date_join">'+items.sign_up_date+'</li>'+
	                '<li><div id="deleteThisUser" style="cursor:pointer; padding: 5px 0;text-align:center; border:1px solid lightgray; width:70px; border-radius: 15px;">회원탈퇴</div></li>' +
	            	'</ul>';
	            	$('#UI_TABLE2').append(addr)
					
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
		url:'/TeamProject/admin/getAllUserList2',
		dataType:'json',
		success:function(data){
			$('#UI_TABLE1').html('');
			var addr;
			$.each(data,function(index,items){
			if(items.authority == 10){
				items.authority= '관리자 <span class="badge">매니저</span>'
			}
				
				addr = '<ul class="content _tbody" id="member_item">'+
                '<li class="nick" style="width:170px;">'+items.authority+'</li>'+
                '<li class="nick" style="width:170px;">'+items.user_name+'</li>'+
                '<li class="nick" style="width:170px;">'+items.nickname+'</li>'+
                '<li class="account" style="width:250px;">'+items.user_id+'</li>'+
                '<li class="date_mileage" style="width:250px;">'+phoneFormatter(items.hp)+'</li>'+
                '<li class="date_join">'+items.sign_up_date+'</li>'+
            	'</ul>';
            	$('#UI_TABLE1').append(addr)
				
			})
		},
		error:function(e){
			console.log(e);
		}
		
	})
});
$(document).on('click','#deleteThisUser',function(){
	if(confirm("정말로 탈퇴시키겠습니까?")){
		
	$.ajax({
		url:'/TeamProject/admin/deleteThisUser',
		type:'post',
		data: 'user_id='+$(this).parent().prev().prev().prev('#userId').text(),  		 
	  	success: function(){
		 alert('회원을 탈퇴시켰습니다.');
		  location.href='/TeamProject/admin/userManage'
		},	  			
			error: function(err){
			alert('실패실패실패실');
			console.log(err);
	  	}
	});
   }
});
$(document).ready(function(){
	$.ajax({
		type:'post',
		url:'/TeamProject/admin/getAllAdmin',
		dataType:'json',
		success:function(data){
			$('#total-member-count').text(data.user_count);
		},
		error:function(e){
			console.log(e);
		}
		
	})
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
			url:'/TeamProject/admin/getAllUserList3',
			dataType:'json',
			success:function(data){
				$('#UI_TABLE2').html('');
				var addr;
				$.each(data,function(index,items){
					if(items.authority == 5){
						items.authority ='<div style="color:blue; font-weight: bold;">우수회원</div>'
					}else{
						items.authority = '일반회원'
					}
					addr = '<ul class="content _tbody" id="member_item">'+
	                '<li class="nick" style="width:170px;">'+items.authority+'</li>'+
	                '<li class="nick" style="width:170px;">'+items.user_name+'</li>'+
	                '<li class="nick" style="width:170px;">'+items.nickname+'</li>'+
	                '<li id="userId" class="account" style="width:250px;">'+items.user_id+'</li>'+
	                '<li class="date_mileage" style="width:250px;">'+phoneFormatter(items.hp)+'</li>'+
	                '<li class="date_join">'+items.sign_up_date+'</li>'+
	                '<li><div id="deleteThisUser" style="cursor:pointer; padding: 5px 0;text-align:center; border:1px solid lightgray; width:70px; border-radius: 15px;">회원탈퇴</div></li>' +
	            	'</ul>';
	            	$('#UI_TABLE2').append(addr)
					
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
			url:'/TeamProject/admin/getAllUserList2',
			dataType:'json',
			success:function(data){
				$('#UI_TABLE1').html('');
				var addr;
				$.each(data,function(index,items){
				if(items.authority == 10){
					items.authority= '관리자 <span class="badge">매니저</span>'
				}
					
					addr = '<ul class="content _tbody" id="member_item">'+
	                '<li class="nick" style="width:170px;">'+items.authority+'</li>'+
	                '<li class="nick" style="width:170px;">'+items.user_name+'</li>'+
	                '<li class="nick" style="width:170px;">'+items.nickname+'</li>'+
	                '<li class="account" style="width:250px;">'+items.user_id+'</li>'+
	                '<li class="date_mileage" style="width:250px;">'+phoneFormatter(items.hp)+'</li>'+
	                '<li class="date_join">'+items.sign_up_date+'</li>'+
	            	'</ul>';
	            	$('#UI_TABLE1').append(addr)
					
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
				$('#total-member-count').text(data.user_count);
			},
			error:function(e){
				console.log(e);
			}
			
		})
	});
}else{
$('#UI_TABLE1 ul').remove();
$.ajax({
		type:'post',
		url:'/TeamProject/admin/getsearchUserList',
		data: {'keyword' : $('#keyword_search1').val()},
		dataType:'json',
		success:function(data){
			$('#UI_TABLE2').html('');
			var addr;
			if(data !=''){
			$.each(data,function(index,items){
				if(items.authority == 5){
					items.authority ='<div style="color:blue; font-weight: bold;">우수회원</div>'
				}
				if(items.authority == 1){
					items.authority = '일반회원'
				}
				if(items.authority == 10){
					items.authority = '관리자 <span class="badge">매니저</span>'
				}
				addr = '<ul class="content _tbody" id="member_item">'+
                '<li class="nick" style="width:170px;">'+items.authority+'</li>'+
                '<li class="nick" style="width:170px;">'+items.user_name+'</li>'+
                '<li class="nick" style="width:170px;">'+items.nickname+'</li>'+
                '<li id="userId" class="account" style="width:250px;">'+items.user_id+'</li>'+
                '<li class="date_mileage" style="width:250px;">'+phoneFormatter(items.hp)+'</li>'+
                '<li class="date_join">'+items.sign_up_date+'</li>'+
                '<li><div id="deleteThisUser" style="cursor:pointer; padding: 5px 0;text-align:center; border:1px solid lightgray; width:70px; border-radius: 15px;">회원탈퇴</div></li>' +
            	'</ul>';
            	$('#UI_TABLE2').append(addr)	
				})
			}else{
				addr = '<ul class="content _tbody" id="member_item">'+
				 '<li class="nick" style="width:170px;">'+'검색결과를 찾을 수 없습니다.'+'</li>'+
				 '</ul>';
            	$('#UI_TABLE2').append(addr)	
			}
		},
		error:function(e){
			console.log(e);
		}
		
	})
	$(document).ready(function(){
		$.ajax({
			type:'post',
			url:'/TeamProject/admin/getSearchAdmin',
			data: {'keyword' : $('#keyword_search1').val()},
			dataType:'json',
			success:function(data){
				$('#total-member-count').text(data.searchuser_count);
			},
			error:function(e){
				console.log(e);
			}
			
		})
	});
  }
}
	 


$('#moreView').click(function(){
	location.href='/TeamProject/admin/userManage'
});

</script>
</section>

