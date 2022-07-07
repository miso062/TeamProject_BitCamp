<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="/TeamProject/css/shop/shopFilter.css"/>
<script type="text/javascript">
	$(function(){
		/* + 버튼 누를때 */
		$('.status_num').hide();
		$('.btn_delete').hide();
		
		$('.plus-icon').click(function(){
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
					$('.shop_filter_tag').append("<div class='shop_tag_item' > <span class='shop_tag'>" + tagitem_inner
							+ "</span> <img class='shop_tag_svg' src='/TeamProject/img/shop/x-lg.svg'> </div>");					
				}
				
				/* 체크박스 체크해제시 상품태그 지우기 */ 
				$('.shop_tag_svg').on('click', function(){
					tagText = $(this).prev().text();
					
					$('.checkbox-active').each(function(){
					 	checkText = $(this).next().text();
						if( checkText == tagText ){
							$(this).attr('src', '/TeamProject/img/shop/checkbox-inactive.png');
							$(this).addClass('checkbox-inactive');
							$(this).removeClass('checkbox-active');
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
				})

				$(this).attr('src', '/TeamProject/img/shop/checkbox-inactive.png');
				$(this).addClass('checkbox-inactive');
				$(this).removeClass('checkbox-active');
			}
			//alert($('.checkbox-active').length);
				if($('.checkbox-active').length >= 1){
					
					$('.btn_delete').show();
					$('.status_num').show();
					$('.status_num').text($('.checkbox-active').length);
					
				}
			$('.status_num').text($('.checkbox-active').length)
			
			/* 상품 필터 태그 6개이상 선택시 */
			if($('.checkbox-active').length == 6){
				alert("필터는 최대 6개까지 선택하실 수 있습니다.");
			}
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
            <span class="status_txt">필터</span>
            <span class="status_num"></span>
        </div>
            <a href="#" class="btn_delete">모두삭제</a>
    </div>
    <div class="filter_list">
        <div class="filter_title">
            <div class="title_box"><span class="main_title">카테고리</span><span  class="placeholder">신발</span></div>
            <div class="ico_box">
                <img src="/TeamProject/img/shop/plus.png" class="plus-icon sprite-icons plus-gray"></img>
            </div>
        </div>
        <div class="filter_menu" style="display: none;">
            <ul class="menu_list">
				<li class="menu">
				    <a class="menu_link">
				        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
				        <span class="link_txt">스니커즈</span>
				    </a>
				</li>
				<li class="menu">
				    <a href="#" class="menu_link">
				        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
				        <span class="link_txt">샌들/슬리퍼</span>
				    </a>
				</li>
				<li class="menu">
				    <a href="#" class="menu_link">
				        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
				        <span class="link_txt">로퍼/플랫</span>
				    </a>
				</li>
				<li class="menu">
				    <a href="#" class="menu_link">
				        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
				        <span class="link_txt">부츠</span>
				    </a>
			    </li>
			</ul>
        </div>
    </div>
    <div class="filter_list">
        <div class="filter_title">
            <div class="title_box"><span class="main_title">브랜드</span><span class="placeholder">모든 브랜드</span></div>
            <div class="ico_box">
                <img src="/TeamProject/img/shop/plus.png" class="plus-icon sprite-icons plus-gray"></img>
            </div>
        </div>
        <div class="filter_menu" style="display: none;">
            <ul class="menu_list">
                <li class="menu">
                    <a href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">A.P.C.</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">A.P.C. Golf</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a href="#" class="menu_link">
                       <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Acne Studios</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Ader Error</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Adidas</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Aime Leon Dore</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Alexander McQueen</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Ambush</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">AMI</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Andersen Andersen</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Anti Social Social Club</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Apple</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Arc'teryx</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li class="menu">
                    <a href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span class="link_txt">Asics</span>
                    </a>
                    <ul class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Audio-Technica</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Auralee</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Autry</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Axel Arigato</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Balenciaga</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Balmuda</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Bang &amp; Olufsen</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">BAPE</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Barbour</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Bearbrick</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Birkenstock</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Bottega Veneta</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Burberry</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Byredo</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">C.P. Company</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Cactus Plant Flea Market</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Camper</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Canada Goose</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Cartier</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Casetify</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Casio</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">CDG</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Celine</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Chanel</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Chloe</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Clarks</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Comme des Garcons</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Common Projects</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Converse</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Coperni</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">COS</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Creed</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Crocs</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Dada</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Daniel Arsham</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Darkr8m Studio</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Denon</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Dior</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Diptyque</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Dr. Martens</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Dyson</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Essentials</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Fear of God</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Fendi</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Frederic Malle</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">G/Fore</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Gallery Dept.</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Ganni</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Golden Goose</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Goyard</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Gucci</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Helinox</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Hermes</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Hoka One One</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Homme Plisse Issey Miyake</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Howlin</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Human Made</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Hunter</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">IAB Studio</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">IKEA</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Isabel Marant</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Jacquemus</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                       	<img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Jil Sander</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Jimmy Choo</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Jo Malone</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Jordan</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Juun.J</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Kaikai Kiki</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Kaws</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Keen</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Kenzo</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Kith</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Lego</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Lemaire</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Loewe</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Logitech</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Longchamp</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Loro Piana</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Louis Vuitton</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Maison Kitsune</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Maison Margiela</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Malbon Golf</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Marni</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Marshall</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Merrell</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Meta</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Microsoft</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Mihara Yasuhiro</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Miu Miu</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Mizuno</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">MM6 Maison Margiela</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Moncler</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Montblanc</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Needles</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Neighborhood</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">New Balance</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">New Era</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Nike</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Nintendo</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">NOS7</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Nvidia</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Off-White</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Oofos</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Our Legacy</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Palace</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Paraboot</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Patagonia</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Peaceminusone</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Peaches.</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Play Comme des Garcons</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Playmobil</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Pokemon</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Polo Ralph Lauren</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Porter</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Prada</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Puma</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">PXG</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Queen Studios</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Ray-Ban</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Reebok</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Roger Vivier</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Rolex</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Sacai</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Saint Laurent</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Salomon</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Salvatore Ferragamo</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Samsung</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Sansan Gear</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Snow Peak</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Sony</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Soundlook</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Souvenir Official</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Starbucks</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Stone Island</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Stussy</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Suicoke</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Sunnei</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Supreme</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Swatch</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Telfar</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Ten C</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">The North Face</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Thom Browne</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Thunderbolt Project</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
						<img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Tiffany &amp; Co.</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Timberland</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Tod's</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Tom Ford</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Tom Sachs</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Undermycar</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                       	<img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Uniqlo</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Valentino</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Vans</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Vinyl</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Vivienne Westwood</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Wooyoungmi</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Y-3</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Yeezy</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="filter_list">
        <div class="filter_title">
            <div class="title_box"><span class="main_title">성별</span><span class="placeholder">모든 성별</span></div>
            <div class="ico_box">
                <img src="/TeamProject/img/shop/plus.png" class="plus-icon sprite-icons plus-gray"></img>
            </div>
        </div>
        <div  class="filter_menu" style="display: none;">
            <ul  class="menu_list">
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">남성</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">여성</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">키즈</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="filter_list">
        <div class="filter_title">
            <div class="title_box"><span class="main_title">컬렉션</span><span class="placeholder">모든 컬렉션</span></div>
            <div class="ico_box">
                <img src="/TeamProject/img/shop/plus.png" class="plus-icon sprite-icons plus-gray"></img>
            </div>
        </div>
        <div  class="filter_menu" style="display: none;">
            <ul  class="menu_list">
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Luxury</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Contemporary</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Jordan 1</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Jordan 3</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Jordan 4</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Jordan 5</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Jordan 6</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Jordan 11</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Jordan 13</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Nike Dunk</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Nike Air Force</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Nike Air Max 1</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Nike Air Max 95</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Nike Air Max 97</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Nike Air Vapormax</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Nike Daybreak</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Nike Uptempo</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Nike Kobe</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Nike Blazer</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">New Balance 237</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">New Balance 327</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">New Balance 530</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">New Balance 990</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">New Balance 991</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">New Balance 992</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">New Balance 993</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">New Balance 1300</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">New Balance 2002</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Converse Run Star</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Converse Chuck 70</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Adidas Yeezy</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">Adidas Superstar</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">x Off-White</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">x Travis Scott</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">x Sacai</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">x Undercover</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">x Supreme</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">x Fear of God</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">x Peaceminusone</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="filter_list">
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
            <ul  class="menu_list">
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">10만원 이하</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">10만원 - 30만원 이하</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">30만원 - 50만원 이하</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
                <li   class="menu">
                    <a  href="#" class="menu_link">
                        <img src="/TeamProject/img/shop/checkbox-inactive.png"  class="checkbox-icon sprite-icons checkbox-inactive"></img>
                        <span  class="link_txt">50만원 이상</span>
                    </a>
                    <ul  class="menu_list menu_2depth" style="display: none;"></ul>
                </li>
            </ul>
        </div>
    </div>
</div>
