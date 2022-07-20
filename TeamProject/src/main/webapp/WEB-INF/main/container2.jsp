<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
#cd2_homeproducts{
	margin-top: 50px;
    padding-top: 0;
    padding-bottom: 0;
}
.cd2_info_box{
	cursor:pointer;
}
/* 소제목 */
.cd2_product_title{
	/* padding: 40px 0px 0px 40px; */
	margin: 0 auto;
	max-width: 1280px;
}
.cd2_product_title > .cd2_title{
	font-size: 20px;
	letter-spacing: -.1px;
	font-weight: 700;
	color: #000;
}
.cd2_product_title > .cd2_sub_title{
	font-size: 14px;
	letter-spacing: -.21px;
	color: rgba(34, 34, 34, .5);
}
/* 상품나열 */
.cd2_product_list_wrap{
    margin: 0 auto;
    white-space: nowrap;
    max-width: 1280px;
}
.cd2_product_list_wrap > .cd2_list_first{
    overflow: hidden;
    position: relative;
    width: 100%;
    display:inline-block;
}
.cd2_product_list_wrap > .cd2_list_third, .cd2_list_for, .cd2_list_second{
	overflow: hidden;
	position: relative;
	margin: 0 auto;
	width: 100%;
}
.cd2_product_item {
    position: relative;
    display: inline-block;
    vertical-align: top;
    margin: 20px 0px;
    padding: 0px 12px;
    width: 25%;
}
.cd2_product_item .cd2_item_inner {
    display: block;
/*  background-color: #fff; */
    border-radius: 12px;
    background-color: #f6eeed;
    cursor:pointer;
}
.cd2_product {
    overflow: hidden;
    position: relative;
    padding-top: 100%;
    border-radius: 8px;
}
.cd2_product_img {
   	display: flex;
    position: absolute;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%,-50%);
    -ms-transform: translate(-50%,-50%);
    transform: translate(-50%,-50%);
    width: 81.5%;
    height: auto;
}
.cd2_product:after {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(0,0,0,0);
}
/* 브랜드박스 */
.cd2_brand_text {
    overflow: hidden;
    display: inline-block;
    vertical-align: top;
    height: 17px;
    line-height: 17px;
    padding-bottom: 2px;
    font-size: 14px;
    font-weight: 700;
    color: #333;
    white-space: nowrap;
    -o-text-overflow: ellipsis;
    text-overflow: ellipsis;
    border-bottom: 1px solid #222;
}
.cd2_product_item .cd2_name {
    line-height: 17px;
    margin-top: 8.5px;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    white-space: normal;
    font-size: 14px;
    color: #222;
}
.cd2_product_item .cd2_num, .cd2_product_item .cd2_won {
    display: inline-block;
    vertical-align: top;
    line-height: 17px;
    font-size: 15px;
    letter-spacing: -.15px;
    font-weight: 700;
    letter-spacing: -.04px;
}
.cd2_product_item .cd2_desc{
   line-height: 13px;
   font-size:11px;
   color:rgba(34,34,34,.5);
}
/* 관심태그 */
.cd2_product_item .cd2_btn_wish {
    position: absolute;
    top: 5px;
    right: 20px;
    padding: 5px;
    z-index: 1;
}
/* 더보기 */
.cd2_product_list_wrap .cd2_btn_product {
	display:block;
	width: 100%;
	height: 3rem;
	margin: 0;
	margin-bottom: 2.3rem;
	padding: 0;
	text-align: center;
}
.cd2_btn_product .con2_more_btn{
	text-decoration: none;
	font-size: 1rem;
	padding: 0.5rem 0.7rem;
	border-radius: 12.5px;
	border: 1px solid #d3d3d3;
	color: rgba(34,34,34,.8);
	display: inline-block;
	cursor: pointer;
	vertical-align: middle;
}
/* 배너 */
.cd2_img_box{
	position:relative;
	padding-top: 100%;
	margin-top: 30px;
	padding-top: 0;
	padding-bottom: 0;
	height: 300px;
	background-color: rgb(43, 209, 140);
	overflow: hidden;
	text-align: center;
}
.cd2_img_box .cd2_banner_img {
	height: 100%;
	width: auto;
	position: relative;
}
.cd2_img_box .cd2_banner_img:after {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(0,0,0,0);
}
.cd2_bookmark{
	cursor: pointer
}
</style>

 <!--섹션 1-->
<input type="hidden" id="con_more_num" value="1">

<div id="cd2_homeproducts">
	<div class="cd2_product_title" >
	    <div class="cd2_title" >Just Dropped</div>
	    <div class="cd2_sub_title" >발매 상품</div>
	</div>
	
	<div class ="cd2_product_list_wrap">
		<div id="cd2_list_first" class="cd2_product_list cd2_list_first" ></div> 
			<div class="cd2_btn_product cd2_btn1"><div class="con2_more_btn" id="cd2_btn1"> 더보기 </div></div>
	        
	    <div id="cd2_list_second" class="cd2_product_list cd2_list_second" ></div>
	        <div class="cd2_btn_product cd2_btn2"><div class="con2_more_btn" id="cd2_btn2" > 더보기 </div></div>
	        
	        
	    <div id="cd2_list_third" class="cd2_product_list cd2_list_third" ></div>
	        <div class="cd2_btn_product cd2_btn3"><div class="con2_more_btn" id="cd2_btn3" > 더보기 </div></div>
	        
	    <div id="cd2_list_for" class="cd2_product_list cd2_list_for" ></div>
	
	</div>
</div>
<div class="cd2_img_box">
   <img src="/TeamProject/img/main/container2/banner.png" alt="banner" class="cd2_banner_img" />
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$.ajax({
		type: 'post',
		url: '/TeamProject/getProductList',
		data: 'num=' + $('#con_more_num').val(),
		dataType:'json',
		success: function(data){
			//alert(JSON.stringify(data));

			for(var i = 0; i < 4; i++){
				console.log(data.num, data.productList[i].brand, data.productList[i].eng_name, data.productList[i].release_price, data.productImgList[i].file_path );

				$('<div/>',{
					class: 'cd2_product_item'
				}).append($('<div/>',{
					class: 'cd2_item_inner'
				}).append($('<div/>',{
					class: 'cd2_thum_box'
				}).append($('<div/>',{
					class: 'cd2_product'
				}).append($('<img/>',{
						   src: data.productImgList[i].file_path,
						   class: 'cd2_product_img' 
						}))))).append($('<div/>',{
							class: 'cd2_info_box'
						}).append($('<div/>',{
							class: 'cd2_brand'
						}).append($('<p/>',{
							class: 'cd2_brand_text',
							text: data.productList[i].brand
					   }))).append($('<p/>',{
						   class: 'cd2_name',
						   text: data.productList[i].eng_name
					   })).append($('<div/>',{
						   class: 'cd2_price'
					   }).append($('<div/>',{
							class: 'amount'
					   }).append($('<div/>',{
						   class: 'cd2_num',
						   text: data.productList[i].release_price
						   })).append($('<div/>',{
							   text: '',
							   class: 'cd2_won'
				   }))).append($('<div/>',{
					   class : 'cd2_desc'
				   }).append($('<p/>',{
					   text: '즉시구매가'
				   }))))).append($('<div/>',{
					   class: 'cd2_btn_wish'
				   }).append($('<img/>',{
					   class: 'cd2_bookmark',
					   id: 'cd2_bookmark'+data.productList[i].product_id,
					   src : '/TeamProject/img/main/container2/bookmark.svg'
				   }))).append($('<input/>',{
					   type:'hidden',
					   class : 'cd2_product_id',
					   id: 'cd2_product_id'+data.productList[i].product_id,
					   value : data.productList[i].product_id
				   })).appendTo($('#cd2_list_first'));
				}
			$('#con_more_num').val(data.num);
		},
		error:function(e){
			console.log(e);
		}
	});//$.ajax
});
	
$(function(){
       $('.cd2_btn2').hide();
       $('.cd2_btn3').hide();

	   $('#cd2_btn1').on('click', function(){
		   
		      $('.cd2_btn1').hide();
		      $('.cd2_btn2').show();
		      
		   $.ajax({
				type: 'post',
				url: '/TeamProject/getProductList',
				data: 'num=' + $('#con_more_num').val(),
				dataType:'json',
				success: function(data){
					//alert(JSON.stringify(data));

					for(var i = 0; i < 4; i++){
						console.log(data.num, data.productList[i].brand, data.productList[i].eng_name, data.productList[i].release_price, data.productImgList[i].file_path );

						$('<div/>',{
							class: 'cd2_product_item'
						}).append($('<a/>',{
								href: '#',
								class: 'cd2_item_inner'
						}).append($('<div/>',{
							class: 'cd2_thum_box'
						}).append($('<div/>',{
							class: 'cd2_product'
						}).append($('<img/>',{
								   src: data.productImgList[i].file_path,
								   class: 'cd2_product_img' 
								}))))).append($('<div/>',{
									class: 'cd2_info_box'
								}).append($('<div/>',{
									class: 'cd2_brand'
								}).append($('<p/>',{
									class: 'cd2_brand_text',
									text: data.productList[i].brand
							   }))).append($('<p/>',{
								   class: 'cd2_name',
								   text: data.productList[i].eng_name
							   })).append($('<div/>',{
								   class: 'cd2_price'
							   }).append($('<div/>',{
									class: 'amount'
							   }).append($('<div/>',{
								   class: 'cd2_num',
								   text: data.productList[i].release_price
								   })).append($('<div/>',{
									   text: '',
									   class: 'cd2_won'
						   }))).append($('<div/>',{
							   class : 'cd2_desc'
						   }).append($('<p/>',{
							   text: '즉시구매가'
						   }))))).append($('<div/>',{
							   class: 'cd2_btn_wish'
						   }).append($('<img/>',{
							   class: 'cd2_bookmark',
							   id: 'cd2_bookmark'+data.productList[i].product_id,
							   src : '/TeamProject/img/main/container2/bookmark.svg'
						   }))).append($('<input/>',{
							   type:'hidden',
							   class : 'cd2_product_id',
							   id: 'cd2_product_id'+data.productList[i].product_id,
							   value : data.productList[i].product_id
						   })).appendTo($('#cd2_list_second'));
						}
					$('#con_more_num').val(data.num);
				},
				error:function(e){
					console.log(e);
				}
			});//$.ajax
	      
	      $('#cd2_btn2').on('click',function(){
	         $('.cd2_btn2').hide();
	         $('.cd2_btn3').show();
	         
	         $.ajax({
					type: 'post',
					url: '/TeamProject/getProductList',
					data: 'num=' + $('#con_more_num').val(),
					dataType:'json',
					success: function(data){
						//alert(JSON.stringify(data));

						for(var i = 0; i < 4; i++){
							console.log(data.num, data.productList[i].brand, data.productList[i].eng_name, data.productList[i].release_price, data.productImgList[i].file_path );

							$('<div/>',{
								class: 'cd2_product_item'
							}).append($('<a/>',{
									href: '#',
									class: 'cd2_item_inner'
							}).append($('<div/>',{
								class: 'cd2_thum_box'
							}).append($('<div/>',{
								class: 'cd2_product'
							}).append($('<img/>',{
									   src: data.productImgList[i].file_path,
									   class: 'cd2_product_img' 
									}))))).append($('<div/>',{
										class: 'cd2_info_box'
									}).append($('<div/>',{
										class: 'cd2_brand'
									}).append($('<p/>',{
										class: 'cd2_brand_text',
										text: data.productList[i].brand
								   }))).append($('<p/>',{
									   class: 'cd2_name',
									   text: data.productList[i].eng_name
								   })).append($('<div/>',{
									   class: 'cd2_price'
								   }).append($('<div/>',{
										class: 'amount'
								   }).append($('<div/>',{
									   class: 'cd2_num',
									   text: data.productList[i].release_price
									   })).append($('<div/>',{
										   text: '',
										   class: 'cd2_won'
							   }))).append($('<div/>',{
								   class : 'cd2_desc'
							   }).append($('<p/>',{
								   text: '즉시구매가'
							   }))))).append($('<div/>',{
								   class: 'cd2_btn_wish'
							   }).append($('<img/>',{
								   class: 'cd2_bookmark',
								   id: 'cd2_bookmark'+data.productList[i].product_id,
								   src : '/TeamProject/img/main/container2/bookmark.svg'
							   }))).append($('<input/>',{
								   type:'hidden',
								   class : 'cd2_product_id',
								   id: 'cd2_product_id'+data.productList[i].product_id,
								   value : data.productList[i].product_id
							   })).appendTo($('#cd2_list_third'));
							}
						$('#con_more_num').val(data.num);
					},
					error:function(e){
						console.log(e);
					}
				});//$.ajax
				
	         $('#cd2_btn3').on('click',function(){
	        	 $('.cd2_btn3').hide();
	        	 
	        	 $.ajax({
	 				type: 'post',
	 				url: '/TeamProject/getProductList',
	 				data: 'num=' + $('#con_more_num').val(),
	 				dataType:'json',
	 				success: function(data){
	 					//alert(JSON.stringify(data));

	 					for(var i = 0; i < 4; i++){
	 						console.log(data.num, data.productList[i].brand, data.productList[i].eng_name, data.productList[i].release_price, data.productImgList[i].file_path );

	 						$('<div/>',{
	 							class: 'cd2_product_item'
	 						}).append($('<a/>',{
	 								href: '#',
	 								class: 'cd2_item_inner'
	 						}).append($('<div/>',{
	 							class: 'cd2_thum_box'
	 						}).append($('<div/>',{
	 							class: 'cd2_product'
	 						}).append($('<img/>',{
	 								   src: data.productImgList[i].file_path,
	 								   class: 'cd2_product_img' 
	 								}))))).append($('<div/>',{
	 									class: 'cd2_info_box'
	 								}).append($('<div/>',{
	 									class: 'cd2_brand'
	 								}).append($('<p/>',{
	 									class: 'cd2_brand_text',
	 									text: data.productList[i].brand
	 							   }))).append($('<p/>',{
	 								   class: 'cd2_name',
	 								   text: data.productList[i].eng_name
	 							   })).append($('<div/>',{
	 								   class: 'cd2_price'
	 							   }).append($('<div/>',{
	 									class: 'amount'
	 							   }).append($('<div/>',{
	 								   class: 'cd2_num',
	 								   text: data.productList[i].release_price
	 								   })).append($('<div/>',{
	 									   text: '',
	 									   class: 'cd2_won'
	 						   }))).append($('<div/>',{
	 							   class : 'cd2_desc'
	 						   }).append($('<p/>',{
	 							   text: '즉시구매가'
	 						   }))))).append($('<div/>',{
	 							   class: 'cd2_btn_wish'
	 						   }).append($('<img/>',{
	 							   class: 'cd2_bookmark',
	 							  id: 'cd2_bookmark'+data.productList[i].product_id,
	 							   src : '/TeamProject/img/main/container2/bookmark.svg'
							   }))).append($('<input/>',{
								   type:'hidden',
								   class : 'cd2_product_id',
								   id: 'cd2_product_id'+data.productList[i].product_id,
								   value : data.productList[i].product_id
							   })).appendTo($('#cd2_list_for'));
	 						
							}
						$('#con_more_num').val(data.num);
					},
					error:function(e){
						console.log(e);
					}
				});//$.ajax
	 			
	         });
	         
	      });
	   });
	   
	});
</script>
<script type="text/javascript">
$(function(){
	// 이미지 클릭시 로테이션으로 변경하기
	$('.cd2_btn_wish > .cd2_bookmark').on({
	    'click': function() {
	         var src = ($(this).attr('src') === '/TeamProject/img/main/container2/bookmark.svg')
	            ? '/TeamProject/img/main/container2/bookmark-fill.svg'
	            : '/TeamProject/img/main/container2/bookmark.svg';
	         $(this).attr('src', src);
	    }
	});
});
// 여기에서 책갈피 구현
 $(document).ready(function(){
	 if('${sessionScope.memId}'){	 
		$.ajax({
			 type:'post',
			 url:'/TeamProject/user/bookMarkGet',
			 dataType: 'json',
			 success: function(data){
				 $.each(data, function(index, items){
						
						product_id = $('#cd2_product_id'+items.product_id).val();
					if(items.product_id == product_id){
						$('#cd2_bookmark'+items.product_id).attr('src', '/TeamProject/img/main/container2/bookmark-fill.svg');
						
					}
				 })
				
			 },
			 error: function(e){
				 console.log(e);
			 }
		}); 
	 }//if 
}); 

$(document).on('click','.cd2_bookmark', function() {
	if(!'${sessionScope.memId}'){
		$(this).attr('src', '/TeamProject/img/main/container2/bookmark.svg');
		alert('로그인 먼저해주세요');
	}else{
		if($(this).hasClass('active')){
			$(this).attr('src', '/TeamProject/img/main/container2/bookmark.svg');
			$(this).removeClass('active');
			
			$.ajax({
				type:'post',
				url: '/TeamProject/user/bookMarkDelete',
				data: {'product_id': $(this).parent().next('.cd2_product_id').val()},
				success: function(){
					alert('관심상품이 취소되었습니다');
				},
				error: function(e){
					console.log(e);
				}
			})
		}else{
			$(this).addClass('active');
			$(this).attr('src', '/TeamProject/img/main/container2/bookmark-fill.svg');
			$.ajax({
				type: 'post',
				url: '/TeamProject/user/bookMarkInsert',
				data: {'product_id': $(this).parent().next('.cd2_product_id').val()},
				success: function(){
					alert('관심상품이 추가되었습니다 ');
				},                                                                    
				error: function(e) {
					console.log(e);
				}
			});//ajax
		} // else
	}
});


$(document).on('click','.cd2_item_inner', function() {
	location.href = '/TeamProject/shop/shopDetail?product_id='+$(this).next().next().next().val();
});
$(document).on('click','.cd2_info_box', function() {
	location.href = '/TeamProject/shop/shopDetail?product_id='+$(this).next().next().val();
});

</script>

