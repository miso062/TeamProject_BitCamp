<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="/TeamProject/css/shop/shopFilter.css"/>
<script type="text/javascript">
var current =1 
var category= [];
var brand = [];
var gender = [];
var collection = [];
	$(function(){
		/* + 버튼 누를때 */
		$('.status_num').hide();
		$('.btn_delete').hide();
		
		$('.plus-icon').click(function(){
			var count = $('.checkbox-active').length
			if(count >=6) {
				return 
			}
			if($(this).hasClass('plus-gray')){
				$(this).attr('src', '/TeamProject/img/shop/minus.png');
				$(this).addClass('minus-gray');
				$(this).removeClass('plus-gray');
				$(this).parents('.filter_list').children('.filter_menu').show();
			}
			else{
				$(this).attr('src', '/TeamProject/img/shop/plus.png');
				$(this).addClass('plus-gray');
				$(this).removeClass('minus-gray');
				$(this).parents('.filter_list').children('.filter_menu').hide();
			}
		});
		/* 카테고리 체크박스 */
		$('.checkbox-icon').click(function(){
			var tagitem_inner = $(this).next().text();
			if($(this).hasClass('checkbox-inactive')){
				$(this).attr('src', '/TeamProject/img/shop/checkbox-active.png');
				$(this).addClass('checkbox-active');
				$(this).removeClass('checkbox-inactive');
				$(this).closest("div").prev().find('span:eq(1)').hide();
				/* 상품태그 추가 생성 */
				if($('.shop_tag_item').length <= 5){
					var i = $('.shop_tag_item').length
					$('.shop_filter_tag').append("<div class='shop_tag_item' > <span class='shop_tag'>" + tagitem_inner
							+ "</span> <img class='shop_tag_svg' src='/TeamProject/img/shop/x-lg.svg'> </div>");
					if($(this).parent().parent().parent().parent().parent().children().eq(0).val() == $('.search_filter').children().eq(1).children().eq(0).val()) {
						category.push($('.shop_tag_item').eq(i).children('.shop_tag').text())
					}
					if($(this).parent().parent().parent().parent().parent().children().eq(0).val() == $('.search_filter').children().eq(2).children().eq(0).val()) {
						brand.push($('.shop_tag_item').eq(i).children('.shop_tag').text())
					}
					if($(this).parent().parent().parent().parent().parent().children().eq(0).val() == $('.search_filter').children().eq(3).children().eq(0).val()) {
						gender.push($('.shop_tag_item').eq(i).children('.shop_tag').text())
					}
					if($(this).parent().parent().parent().parent().parent().children().eq(0).val() == $('.search_filter').children().eq(4).children().eq(0).val()) {
						collection.push($('.shop_tag_item').eq(i).children('.shop_tag').text())
					}						
				}
				//무한 스크롤및 정보 불러오기
				getList(current);
				
				const makeSpinner = () => {
					  const spinner = document.createElement('div');
					  const spinnerImage = document.createElement('img');
					  spinner.classList.add('loading');
					  spinnerImage.setAttribute('src', '/TeamProject/img/shop/spinner.gif');
					  spinnerImage.classList.add('spinner');
					  spinner.appendChild(spinnerImage);
					  return spinner;
					};
					
					const makeSkeleton = () => {
					  const skeleton = document.createElement('li');
					  const skeletonImage = document.createElement('div');
					  skeleton.classList.add('skeleton');
					  skeletonImage.classList.add('skeleton__image');
					  skeleton.appendChild(skeletonImage);
					  return skeleton;
					};

					var list;
					//이후 새로운 요소를 추가할 때 사용될 부모 요소
					var items;
					//현재 화면에 출력되고 있는 카드 아이템들을 담은 배열
					var skeletonItems;
					
					//켈레톤 요소 담고있는 배열
					const spinner = makeSpinner();
					//신규 로드중 스켈레톤UI와 출력될 스피너 요소

					const addSkeleton = () => {
					  skeletonItems.forEach((item) => list.appendChild(item));
					};

					const removeSkeleton = () => {
					  skeletonItems.forEach((item) => list.removeChild(item));
					};

					const loadingStart = () => {
					  addSkeleton();
					  list.appendChild(spinner);
					};

					const loadingFinish = () => {
					  removeSkeleton();
					  list.removeChild(spinner);
					};

					//const addNewContent = () => {
					//	console.log(items)
					//  items.forEach((item) => list.appendChild(item.cloneNode(true)));
					//};
					var pending = false;
					const ioCallback = (entries, io) => {
					  entries.forEach((entry) => {
						  // 화면 안에 요소가 들어왔는지 체크
						  if(pending === false) {
							  if (entry.isIntersecting) {
								  // 기존 관찰하던 요소는 더 이상 관찰하지 않음
								  pending = true;
								  io.unobserve(entry.target);
								  // TODO: 새로운 컨텐츠 추가
							      // TODO: 새로운 컨텐츠의 마지막 요소를 관찰 시작
								  loadingStart();
								  getList(currentNum, function () {
									  loadingFinish();
									  observeLastItem(io, document.querySelectorAll('.card-list-li'));
									  pending = false;
								  });
//					      setTimeout(() => {
//					        addNewContent();
//					      }, 2000);
							  }
						  }
					  });
					};
					
					//observe 감지하라구 시키는
					const observeLastItem = (io, items) => {
					  const lastItem = items[items.length - 1];
					  io.observe(lastItem);
					};
					var io = new IntersectionObserver(ioCallback, { threshold: 0.9 });
					
					function randomColor(){
						var colors = ['#f4f4f4','#f6eeed','rgb(235, 240, 245)'];
						let pickIndex = Math.floor(Math.random() * colors.length);
						return colors[pickIndex];
					}
					
					function switchPrice(price) {
						if (price === 0) {
							return '-'
						} else {
							price = price.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
							return price+'원'
						}
					}
					
					function getList(page, callback) {
						var params = new URLSearchParams(document.location.search);
						var sort = params.get("sort");
						$('#command').val(params.get("command"))
						$.ajax({
							type:'post',
							url:'/TeamProject/shop/scrollProduct',
							data: {'num' : page ,
								'sort' : sort,
								'command' : $('#command').val(),
								'category' : category,
								'brand' : brand,
								'gender': gender,
								'collection' : collection}, 
							dataType:'json',
							success: function(data){
								$('.shop-list-ul').html("");	
								try {						
									for(var i=0; i<16; i++){
										//console.log(page)
										//console.log(data.num, data[i].brand, data[i].eng_name, data[i].kor_name, data[i].sell_price, data[i].file_path);
										$('.shop-list-ul').append(
											    $('<li/>', { class:'card-list-li'})
											        .append($('<div/>', { class:'shop_search_result_item' })
											        .append($('<a/>', { class:'shop_item_inner', href:'/TeamProject/shop/shopDetail?product_id='+data[i].product_id, style: 'background-color:'+randomColor()})
											        .append($('<div/>', { class:'shop_product'})
											        .append($('<img/>', { src:data[i].file_path, class: 'shop_product_img'})))))
											        .append($('<div/>', { class: 'shop_product_info' })
											        .append($('<a/>', { class:'shop_item_link', href:'/TeamProject/shop/shopDetail?product_id='+data[i].product_id })
											        .append($('<div/>', { class: 'shop_title' })
											        .append($('<p/>', { class: 'shop_brand', text: data[i].brand }))
											        .append($('<p/>', { class: 'shop_name', style: 'height:32px', text: data[i].eng_name }))
											        .append($('<p/>', { class: 'shop_translated_name', style: 'color:rgba(34,34,34,.5)',  text: data[i].kor_name })))
											        .append($('<div/>', { class: 'shop_price' })
											        .append($('<div/>', { class: 'shop_amount' , text: switchPrice(data[i].price) }))
											        .append($('<div/>', { class: 'shop_desc' }))
											        .append($('<p/>', { text:'즉시 구매가' })))))
											        .append($('<div/>', { class:'shop_interest_figure' })
											        .append($('<span/>', { class:'shop_wish_figure'  }))
											        .append($('<img/>',{ class:'shop_bookmark',id:'shop_bookmark_'+data[i].product_id, src: '/TeamProject/img/main/container2/bookmark.svg' })
											            .click(function(e){
											                var id = e.target.id;
											                id = id.replace('shop_bookmark_', '')
											                setShopLike(id)
											            }))
											        .append($('<input type="hidden" class="product_id" value="'+data[i].product_id+'">'))
											        .append($('<span/>',{ class:'shop_text', id:'shop_text_' + data[i].product_id , text: data[i].like_cnt }))
											        .append($('<span/>',{ class:'shop_review_figure'}))
											        .append($('<a/>',{ class:'review_link'}))
											        .append($('<img/>',{ class: 'bi_postcard', src:'/TeamProject/img/shop/reply_icon.png'})))
											    )
											if('${sessionScope.memId}'){
												let product_id = data[i].product_id
												$.ajax({
													 type:'post',
													 url:'/TeamProject/user/bookMarkGet',
													 success: function(data2){
														 $.each(data2.list, function(index, items){
													
															if(Number(items.product_id) == Number(product_id)){
																$('#shop_bookmark_'+items.product_id).prop('src', '/TeamProject/img/main/container2/bookmark.svg');
															}else {
																$('#shop_bookmark_'+items.product_id).attr('src', '/TeamProject/img/main/container2/bookmark-fill.svg');
																$('#shop_bookmark_'+items.product_id).addClass('active');
															}
														 })
//														 var value = $('#shop_text_' + product_id).text();
//														 $('#shop_text_' + product_id).text(Number(value) + 1)
													 },
													 error: function(e){
														 console.log(e);
													 }
												});
											}
										}
										if (page === 1) {
											list = document.querySelector('.shop-list-ul');
											//이후 새로운 요소를 추가할 때 사용될 부모 요소
											items = document.querySelectorAll('.card-list-li');
											//현재 화면에 출력되고 있는 카드 아이템들을 담은 배열
											skeletonItems = Array.from({ length: items.length }, () =>
											makeSkeleton()
											);
											observeLastItem(io, items);
											//첫페이지 스크롤 감지 시작
										}
										currentNum = Number(data[0].page)+16;
										if (callback) {
											callback();		
										}
										console.log(currentNum);
									} catch (e) {
										//console.log(e)
										// 마지막 페이지 일 시에 종료 해야 하는
										// 현재 로직 상에 페이지를 체크하는 부분 못찾아서
										io.disconnect(); //트라이캐치 걸고 에러시 감지종료
										loadingFinish(); // 로딩 끝
									}
									//무한스콜ㄹ 끝 
									
									//샵 찜하기 넣기.
									function setShopLike(product_id){
										// alert($('#shop_bookmark_'+product_id).hasClass('active'));
										
									    if($('#shop_bookmark_'+product_id).hasClass('active')) {
									        $.ajax({
									            type:'post',
									            url: '/TeamProject/user/bookMarkDelete',
									            data: {'product_id': product_id},
									            success: function(){
									                $('#shop_bookmark_'+product_id).prop('src', '/TeamProject/img/main/container2/bookmark.svg');
									                $('#shop_bookmark_'+product_id).removeClass('active');

									                // 찜 카운트 수 불러오기 
									                $.ajax({
									                    type: 'post',
									                    url : '/TeamProject/shop/getlikeproduct',
									                    data : {'product_id': product_id},
									                    success : function(data){
									                        if(data =='0'){
									                            $('#shop_text_' + product_id).text('0');	
									                        }else{
									                                $('#shop_text_' + product_id).text(data);
									                        } 
									                    },
									                    error: function(err){
									                        console.log(err)
									                    }    
									                });
									            },
									            error: function(e){
									                console.log(e);
									            }
									        });
									
									    } else {
									        $.ajax({
									            type:'post',
									            url: '/TeamProject/user/bookMarkInsert',
									            data: {'product_id': product_id },
									            success: function(data){
									                $('#shop_bookmark_'+product_id).prop('src', '/TeamProject/img/main/container2/bookmark-fill.svg');
									                $('#shop_bookmark_'+product_id).addClass('active');
									                $.ajax({
									                    type: 'post',
									                    url : '/TeamProject/shop/getlikeproduct',
									                    data : {'product_id': product_id},
									                    success : function(data){
									                        if(data =='0'){
									                            $('#shop_text_' + product_id).text('0');	
									                        }else{
									                                $('#shop_text_' + product_id).text(data);
									                        } 
									                    },
									                    error: function(err){
									                        console.log(err)
									                    }    
									                });
									            },
									            error: function(err){
									                console.log(err);
									                alert('로그인 후 이용 가능합니다.');
									            }
									        });
									    }
									};
								}
							}
						);
						
					}
			
        

			$(function(){
				// 이미지 클릭시 로테이션으로 변경하기
				$('.shop_bookmark').on({
				    'click': function() {
				         var src = ($(this).attr('src') === '/TeamProject/img/main/container2/bookmark.svg')
				            ? '/TeamProject/img/main/container2/bookmark-fill.svg'
				            : '/TeamProject/img/main/container2/bookmark.svg';
				         $(this).attr('src', src);
				    }
				});
			});



			//샵 찜하기 넣기.
			function setShopLike(product_id){
				
				$.ajax({
					type:'post',
					url: '/TeamProject/user/bookMarkInsert',
					data: {'product_id': product_id },
					success: function(data){
						if(!'${sessionScope.memId}'){
							alert('로그인 먼저 해 주세요.');
						}
						if ($('#shop_bookmark_'+product_id).hasClass('active')) {
							$.ajax({
								type:'post',
								url: '/TeamProject/user/bookMarkDelete',
								data: {'product_id': product_id},
								success: function(){
									$('#shop_bookmark_'+product_id).prop('src', '/TeamProject/img/main/container2/bookmark.svg');
									$('#shop_bookmark_'+product_id).removeClass('active');
				                    // 찜 카운트 수 불러오기 
				                    $.ajax({
				                        type: 'post',
				                        url : '/TeamProject/shop/getlikeproduct',
				                        data : {'product_id': product_id},
				                        success : function(data){
				                            if(data =='0'){
				                              $('#shop_text_' + product_id).text('0');	
				                            }else{
				                           	  $('#shop_text_' + product_id).text(data);
				                            } 
				                        },
				                        error: function(err){
				                            console.log(err)
				                        }    
				                     })   
								},
								error: function(e){
									console.log(e);
								}
							})
						} else {
							
							$.ajax({
								 type:'post',
								 url:'/TeamProject/user/bookMarkGet',
								 success: function(data){
									 $.each(data.list, function(index, items){
										if(items.product_id == product_id){
											$('#shop_bookmark_'+items.product_id).prop('src', '/TeamProject/img/main/container2/bookmark-fill.svg');
											$('#shop_bookmark_'+items.product_id).addClass('active');
										}else {
											$('#shop_bookmark_'+items.product_id).prop('src', '/TeamProject/img/main/container2/bookmark.svg');
											
										}
									 })
									 
									 var value = $('#shop_text_' + product_id).text();
									 $('#shop_text_' + product_id).text(Number(value) + 1)
									
								 },
								 error: function(e){
									 console.log(e);
								 }
							});
						}
					},
					error: function(err){
						console.log(err);
						alert('에러메렁ㅋ.');
					}
				});
			};

				
				/* 체크박스 체크해제시 상품태그 지우기 */ 
				$('.shop_tag_svg').on('click', function(){
					tagText = $(this).prev().text();
					
					$('.checkbox-active').each(function(){
					 	checkText = $(this).next().text();
						if( checkText == tagText ){
							$(this).attr('src', '/TeamProject/img/shop/checkbox-inactive.png');
							$(this).addClass('checkbox-inactive');
							$(this).removeClass('checkbox-active');
							//alert($('.checkbox-active').length);
							$('.status_num').text($('.checkbox-active').length);
							
							if($('.checkbox-active').length == 0) {
								$('.btn_delete').hide();
								$('.status_num').hide();
							}
						}
					 });
					$(this).closest("div").remove();
				});
				tagitem_inner == null;
			}
			else{
				checkText = $(this).next().text();
				$('.shop_tag').each(function(){
					tagText = $(this).text();
					
					if( tagText == checkText) {
						$(this).closest("div").remove();
					}
				});
				$(this).attr('src', '/TeamProject/img/shop/checkbox-inactive.png');
				$(this).addClass('checkbox-inactive');
				$(this).removeClass('checkbox-active');
				/* 해당 필터에 선택 요소 없을 때 회색 글씨 재등장 하도록! */
				/* alert($(this).parents('.menu_list').find('.checkbox-active').length); */
				if($(this).parents('.menu_list').find('.checkbox-active').length == 0){
					$(this).closest("div").prev().find('span:eq(1)').show();
				}
				
			}
			if($('.checkbox-active').length >= 1){
				
				$('.btn_delete').show();
				$('.status_num').show();
				$('.status_num').text($('.checkbox-active').length);
			}else if($('.checkbox-active').length == 0) {
				$('.btn_delete').hide();
				$('.status_num').hide();
			}
			$('.status_num').text($('.checkbox-active').length);
			
			
		});
		
		/* 모두삭제 누를때 */
		$('.btn_delete').on('click',function(){
			location.reload();
		});
		/* 신발 체크박스 */
		$('.column_menu').click(function(){
			if(!$(this).hasClass('menu_on')){
				$(this).addClass('menu_on');
				$('.title_box:eq(4)').find('span:eq(1)').hide();
			}
			else{
				$(this).removeClass('menu_on');
			}
		});
	});
</script>

<div class="search_filter" selected-choices="[object Object]">
    <div class="filter_status" count="0">
        <div class="status_box">
            <span style="cursor:default" class="status_txt">필터</span>
            <span class="status_num"></span>
        </div>
            <a href="#" class="btn_delete">모두삭제</a>
    </div>
    <div class="filter_list">
    	<input type="hidden" value=1>
        <div class="filter_title">
            <div class="title_box"><span class="main_title">카테고리</span><span class="placeholder">신발</span></div>
            <div class="ico_box">
                <img src="/TeamProject/img/shop/plus.png" class="plus-icon sprite-icons plus-gray"></img>
            </div>
        </div>
        <div class="filter_menu" style="display: none;">
            <ul class="menu_list">
				<li class="menu">
				    <a class="menu_link">
				        <img src="/TeamProject/img/shop/checkbox-inactive.png" class="checkbox-icon sprite-icons checkbox-inactive"></img>
				        <span class="link_txt">스니커즈</span>
				    </a>
				</li>
				<li class="menu">
				    <a class="menu_link">
				        <img src="/TeamProject/img/shop/checkbox-inactive.png" class="checkbox-icon sprite-icons checkbox-inactive"></img>
				        <span class="link_txt">샌들/슬리퍼</span>
				    </a>
				</li>
				<li class="menu">
				    <a class="menu_link">
				        <img src="/TeamProject/img/shop/checkbox-inactive.png" class="checkbox-icon sprite-icons checkbox-inactive"></img>
				        <span class="link_txt">로퍼/플랫</span>
				    </a>
				</li>
				<li class="menu">
				    <a class="menu_link">
				        <img src="/TeamProject/img/shop/checkbox-inactive.png" class="checkbox-icon sprite-icons checkbox-inactive"></img>
				        <span class="link_txt">부츠</span>
				    </a>
			    </li>
			</ul>
        </div>
    </div>
    <div class="filter_list">
    	<input type="hidden" value=2>
        <div class="filter_title">
            <div class="title_box"><span class="main_title">브랜드</span><span class="placeholder">모든 브랜드</span></div>
            <div class="ico_box">
                <img src="/TeamProject/img/shop/plus.png" class="plus-icon sprite-icons plus-gray"></img>
            </div>
        </div>
        <div class="filter_menu" style="display: none;">
            <ul class="menu_list">
				<li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Adidas</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Asics</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Balenciaga</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Chanel</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Converse</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Crocs</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Dior</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Essentials</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Fear of God</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">G/Fore</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Golden Goose</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Gucci</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Hoka One One</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Jimmy Choo</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Jordan</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Keen</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Lemaire</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Loewe</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Loro Piana</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Louis Vuitton</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Maison Margiela</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Mihara Yasuhiro</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">New Balance</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Nike</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Off-White</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Puma</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Reebok</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Tod's</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Vans</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Y-3</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Yeezy</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="filter_list">
    	<input type="hidden" value=3>
        <div class="filter_title">
            <div class="title_box"><span class="main_title">성별</span><span class="placeholder">모든 성별</span></div>
            <div class="ico_box">
                <img src="/TeamProject/img/shop/plus.png" class="plus-icon sprite-icons plus-gray"></img>
            </div>
        </div>
        <div  class="filter_menu" style="display: none;">
            <ul class="menu_list">
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">남성</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">여성</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">키즈</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="filter_list">
    	<input type="hidden" value=4>
        <div class="filter_title">
            <div class="title_box"><span class="main_title">컬렉션</span><span class="placeholder">모든 컬렉션</span></div>
            <div class="ico_box">
                <img src="/TeamProject/img/shop/plus.png" class="plus-icon sprite-icons plus-gray"></img>
            </div>
        </div>
        <div  class="filter_menu" style="display: none;">
            <ul class="menu_list">
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Luxury</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Contemporary</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Jordan 1</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Jordan 3</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Jordan 4</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Jordan 5</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Jordan 6</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Jordan 11</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Jordan 13</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Nike Dunk</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Nike Air Force</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Nike Air Max 1</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Nike Air Max 95</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Nike Air Max 97</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Nike Air Vapormax</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Nike Daybreak</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Nike Uptempo</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Nike Kobe</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Nike Blazer</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">New Balance 237</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">New Balance 327</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">New Balance 530</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">New Balance 990</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">New Balance 991</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">New Balance 992</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">New Balance 993</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">New Balance 1300</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">New Balance 2002</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Converse Run Star</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Converse Chuck 70</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Adidas Yeezy</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Adidas Superstar</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">x Off-White</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">x Travis Scott</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">x Sacai</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">x Undercover</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">x Supreme</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">x Fear of God</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">x Peaceminusone</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="filter_list">
    	<input type="hidden" value=5>
        <div class="filter_title">
            <div class="title_box"><span class="main_title">신발 사이즈</span><span class="placeholder">모든 사이즈</span></div>
            <div class="ico_box">
                <img src="/TeamProject/img/shop/plus.png" class="plus-icon sprite-icons plus-gray"></img>
            </div>
        </div>
        <div class="filter_menu" style="display: none;">
            <div class="menu_column">
                <div class="column_list has_more">
                    <a href="#" class="column_menu"> 215 </a><a href="#" class="column_menu"> 220 </a><a href="#" class="column_menu"> 225 </a>
                    <a href="#" class="column_menu"> 230 </a><a href="#" class="column_menu"> 235 </a><a href="#" class="column_menu"> 240 </a>
                    <a href="#" class="column_menu"> 245 </a><a href="#" class="column_menu"> 250 </a><a href="#" class="column_menu"> 255 </a>
                    <a href="#" class="column_menu"> 260 </a><a href="#" class="column_menu"> 265 </a><a href="#" class="column_menu"> 270 </a>
                    <a href="#" class="column_menu"> 275 </a><a href="#" class="column_menu"> 280 </a><a href="#" class="column_menu"> 285 </a>
                    <a href="#" class="column_menu"> 290 </a><a href="#" class="column_menu"> 295 </a><a href="#" class="column_menu"> 300 </a>
                    <a href="#" class="column_menu"> 305 </a><a href="#" class="column_menu"> 310 </a><a href="#" class="column_menu"> 315 </a>
                    <a href="#" class="column_menu"> 320 </a><a href="#" class="column_menu"> 325 </a><a href="#" class="column_menu"> 330 </a>
                </div>
            </div>
        </div>
    </div>
    <div class="filter_list">
        <div class="filter_title">
            <div class="title_box"><span class="main_title">가격</span><span class="placeholder">모든 가격</span></div>
            <div class="ico_box">
                <img src="/TeamProject/img/shop/plus.png" class="plus-icon sprite-icons plus-gray"></img>
            </div>
        </div>
        <div  class="filter_menu" style="display: none;">
            <ul class="menu_list">
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">10만원 이하</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">10만원 - 30만원 이하</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">30만원 - 50만원 이하</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">50만원 이상</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
            </ul>
        </div>
    </div>
</div>