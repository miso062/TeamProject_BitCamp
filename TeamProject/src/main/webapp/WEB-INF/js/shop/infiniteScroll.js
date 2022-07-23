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
//			console.log(items)
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
		
		//observe 감지하라구 시키는zz
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
		
		function getList(page, callback) {
			$.ajax({
				type:'post',
				url:'/TeamProject/shop/scrollProduct',
				data:'num=' + page,
				dataType:'json',
				success: function(data){
					console.log('current: ', page)
					var colorList = [ 'rgb(241, 233, 252)', 'rgb(235, 240, 245)', 'rgb(241, 241, 234)', 'rgb(246, 238, 237)' ]
					for(var i=0; i<16; i++){
						/* console.log(data.num, data.scrollProduct[i].brand, data.scrollProduct[i].eng_name, data.scrollProduct[i].kor_name, data.scrollProduct[i].release_price, data.scrollProduct[i].file_path); */
						console.log(data)
						var random = Math.floor( Math.random() * 4 ); 
						$('.shop-list-ul').append(
							$('<li/>', { class:'card-list-li'})
							.append($('<div/>', { class:'shop_search_result_item' })
								.append($('<a/>', { class:'shop_item_inner', style: 'background-color:'+randomColor()})
									.append($('<div/>', { class:'shop_product'})
										.append($('<img/>', { src:data.productImgList[i].file_path, class: 'shop_product_img'})))))
										.append($('<div/>', { class: 'shop_product_info' }))
										.append($('<div/>', { class: 'shop_title' }))
										.append($('<p/>', { class: 'shop_brand', text: data.productList[i].brand }))
										.append($('<p/>', { class: 'shop_name', text: data.productList[i].eng_name }))
										.append($('<p/>', { class: 'shop_translated_name', style: 'color:rgba(34,34,34,.5)', text: data.productList[i].kor_name }))
										.append($('<div/>', { class: 'shop_price' }))
										.append($('<div/>', { class: 'shop_amount', text: data.productList[i].release_price }))
										.append($('<div/>', { class: 'shop_desc' }).append($('<p/>', { text:'즉시구매가' })))
										.append($('<div/>', { class:'shop_interest_figure' }))
										.append($('<span/>', { class:'shop_wish_figure' }))
										.append($('<img/>',{ class:'shop_bookmark', src:'/TeamProject/img/shop/bookmark.svg' })).append($('<p/>', {text:data.productList[i].cnt}))
										.append($('<span/>',{ class:'shop_text' }))
										.append($('<span/>',{ class:'shop_review_figure'}))
										.append($('<a/>',{ class:'review_link'}))
										.append($('<svg/>',{ class: 'bi bi-postcard', xmlns:"http://www.w3.org/2000/svg"}))
							)
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
					
					currentNum = data.num;
					if (callback) {
						callback();		
						//
					}
				}}
			);

		}


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
		}*/

		/*https://velog.io/@eunoia/%EB%AC%B4%ED%95%9C-%EC%8A%A4%ED%81%AC%EB%A1%A4Infinite-scroll-%EA%B5%AC%ED%98%84%ED%95%98%EA%B8%B0*/

})
