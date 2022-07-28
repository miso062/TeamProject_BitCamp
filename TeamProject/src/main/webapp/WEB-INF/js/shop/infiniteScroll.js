$(document).ready(function(){
	var currentNum = 1
	getList(currentNum);
	
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
//		      setTimeout(() => {
//		        addNewContent();
//		      }, 2000);
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
				data:'num=' + page + '&sort=' + sort +'&command='+$('#command').val() , 
				dataType:'json',
				success: function(data){	
					console.log(data)
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
									.append($('<div/>', { class: 'shop_product_info' }))
									.append($('<div/>', { class: 'shop_title' }))
									.append($('<p/>', { class: 'shop_brand', text: data[i].brand }))
									.append($('<p/>', { class: 'shop_name', style: 'height:32px', text: data[i].eng_name }))
									.append($('<p/>', { class: 'shop_translated_name', style: 'color:rgba(34,34,34,.5)',  text: data[i].kor_name }))
									.append($('<div/>', { class: 'shop_price' }))
									.append($('<div/>', { class: 'shop_amount' , text: switchPrice(data[i].price) }))
									.append($('<div/>', { class: 'shop_desc' })
									.append($('<p/>', { text:'즉시 구매가' })))
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
											 
//											 var value = $('#shop_text_' + product_id).text();
//											 $('#shop_text_' + product_id).text(Number(value) + 1)
											
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
//							if(!'${sessionScope.memId')
//								alert('로그인 먼저 해 주세요.');
							
							$.ajax({
								type:'post',
								url: '/TeamProject/user/bookMarkInsert',
								data: {'product_id': product_id },
								success: function(data){
									
									if ($('#shop_bookmark_'+product_id).hasClass('active')) {
										$('#shop_bookmark_'+product_id).prop('src', '/TeamProject/img/main/container2/bookmark-fill.svg');
										//$('#shop_bookmark_'+product_id).removeClass('active');
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
										if('${sessionScope.memId}'){
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
									}
								},
								error: function(err){
									console.log(err);
									alert('에러메렁ㅋ.');
								}
							});
						};


						//function setShopLike(product_id) {
//							if(!'${sessionScope.memId}'){
//								$(this).attr('src', '/TeamProject/img/main/container2/bookmark.svg');
//								alert('로그인 먼저해주세요');
//							}else{
//								if($(this).hasClass('active')){
//									$(this).attr('src', '/TeamProject/img/main/container2/bookmark.svg');
//									$(this).removeClass('active');
//									
//									$.ajax({
//										type:'post',
//										url: '/TeamProject/user/bookMarkDelete',
//										data: {'product_id': $(this).parent().next('.cd2_product_id').val()},
//										success: function(){
//										},
//										error: function(e){
//											console.log(e);
//										}
//									})
//								}else{
//									$(this).addClass('active');
//									$(this).attr('src', '/TeamProject/img/main/container2/bookmark-fill.svg');
//									$.ajax({
//										type: 'post',
//										url: '/TeamProject/user/bookMarkInsert',
//										data: {'product_id': $(this).parent().next('.cd2_product_id').val()},
//										success: function(){
//										},                                                                    
//										error: function(e) {
//											console.log(e);
//										}
//									});//ajax
//								} // else
//							}
						//});


					}
				}
			);

		}
		/*

		/*if (_total === 0) {
			$('#sentinel').hide();
			//검색된 아이템이 없을 경우 관찰중인 요소를 숨긴다.
		}
		else {
			if (_total <= _page*20){
				$('#sentinel').hide();
				//검색된 아이템이 20개 이하일 경우 관찰중인 요소를 숨긴다.
			}
			else {
				 $('#sentinel').show();
				//관찰중인 요소를 보여준다.
			}
		}
		*/
		/*https://velog.io/@eunoia/%EB%AC%B4%ED%95%9C-%EC%8A%A4%ED%81%AC%EB%A1%A4Infinite-scroll-%EA%B5%AC%ED%98%84%ED%95%98%EA%B8%B0*/

});


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
//function setShopLike(product_id){
//	if(!'${sessionScope.memId')
//		alert('로그인 먼저 해 주세요.');
//	
//	$.ajax({
//		type:'post',
//		url: '/TeamProject/user/bookMarkInsert',
//		data: {'product_id': product_id },
//		success: function(data){
//			
//			if ($('#shop_bookmark_'+product_id).hasClass('active')) {
//				$.ajax({
//					type:'post',
//					url: '/TeamProject/user/bookMarkDelete',
//					data: {'product_id': product_id},
//					success: function(){
//						$('#shop_bookmark_'+product_id).prop('src', '/TeamProject/img/main/container2/bookmark.svg');
//						$('#shop_bookmark_'+product_id).removeClass('active');
//	                    // 찜 카운트 수 불러오기 
//	                    $.ajax({
//	                        type: 'post',
//	                        url : '/TeamProject/shop/getlikeproduct',
//	                        data : {'product_id': product_id},
//	                        success : function(data){
//	                            if(data =='0'){
//	                              $('#shop_text_' + product_id).text('0');	
//	                            }else{
//	                           	  $('#shop_text_' + product_id).text(data);
//	                            } 
//	                        },
//	                        error: function(err){
//	                            console.log(err)
//	                        }    
//	                     })   
//					},
//					error: function(e){
//						console.log(e);
//					}
//				})
//			} else {
//			  if('${sessionScope.memId}'){		
//				$.ajax({
//					 type:'post',
//					 url:'/TeamProject/user/bookMarkGet',
//					 success: function(data){
//						 $.each(data.list, function(index, items){
//							if(items.product_id == product_id){
//								$('#shop_bookmark_'+items.product_id).prop('src', '/TeamProject/img/main/container2/bookmark-fill.svg');
//								$('#shop_bookmark_'+items.product_id).addClass('active');
//							}else {
//								$('#shop_bookmark_'+items.product_id).prop('src', '/TeamProject/img/main/container2/bookmark.svg');
//							}
//						 })
//						 
//						 var value = $('#shop_text_' + product_id).text();
//						 $('#shop_text_' + product_id).text(Number(value) + 1)
//						
//					 },
//					 error: function(e){
//						 console.log(e);
//					 }
//				});
//			  }	
//			}
//		},
//		error: function(err){
//			console.log(err);
//			alert('에러메렁ㅋ.');
//		}
//	});
//};
//
//
//function setShopLike(product_id) {
//	if(!'${sessionScope.memId}'){
//		$(this).attr('src', '/TeamProject/img/main/container2/bookmark.svg');
//		alert('로그인 먼저해주세요');
//	}else{
//		if($(this).hasClass('active')){
//			$(this).attr('src', '/TeamProject/img/main/container2/bookmark.svg');
//			$(this).removeClass('active');
//			
//			$.ajax({
//				type:'post',
//				url: '/TeamProject/user/bookMarkDelete',
//				data: {'product_id': $(this).parent().next('.cd2_product_id').val()},
//				success: function(){
//				},
//				error: function(e){
//					console.log(e);
//				}
//			})
//		}else{
//			$(this).addClass('active');
//			$(this).attr('src', '/TeamProject/img/main/container2/bookmark-fill.svg');
//			$.ajax({
//				type: 'post',
//				url: '/TeamProject/user/bookMarkInsert',
//				data: {'product_id': $(this).parent().next('.cd2_product_id').val()},
//				success: function(){
//				},                                                                    
//				error: function(e) {
//					console.log(e);
//				}
//			});//ajax
//		} // else
//	}
//});

