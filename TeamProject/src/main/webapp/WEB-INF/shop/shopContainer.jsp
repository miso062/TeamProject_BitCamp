<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<style type="text/css">
body, button, dd, div, dl, dt, fieldset, figcaption, figure, form, h1, h2, h3, h4, h5, h6, input, legend, p, select, table, td, textarea, th {
    margin: 0;
    padding: 0;
}
a {
    color: inherit;
    -webkit-tap-highlight-color: rgba(0,0,0,.1);
}
a, a:active, a:focus, a:hover {
    text-decoration: none;
}
a:-webkit-any-link {
    cursor: pointer;
}
*, :after, :before {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    -webkit-tap-highlight-color: transparent;
}
button {
    padding: 0;
    border: 0;
    outline: none;
    background: none;
    background-color: rgba(0,0,0,0);
    appearance: none;
    border-radius: 0;
}
li, ol, ul {
    list-style: none;
}
.shop_content {
    display: flex;
    position: relative;
    margin: 0 auto;
    padding: 0 40px 80px;
    max-width: 1280px;
}
.shop_search_filter {
    width: 210px;
    margin-right: 10px;
    padding-right: 10px;
    overflow-x: hidden;
    overflow-y: auto;
}
.shop_search_content {
    flex: 1;
}
.shop-list-ul {
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
}
.shop_search_option{
    display: flex;
    justify-content: flex-end;
    align-items: center;
    height: 60px;
}
.shop_filter_tag {
    display: flex;
    flex-wrap: wrap;
    margin-top: -8px;
    margin-bottom: 20px;
}
.shop_tag_item {
    display: inline-flex;
    -webkit-box-align: center;
    align-items: center;
    margin: 8px 8px 0 0;
    padding: 4px 2px 4px 10px;
    background-color: #f4f4f4;
    border-radius: 6px;
}
.shop_tag {
    font-size: 12px;
    letter-spacing: -.05px;
}
.shop_tag_svg {
    cursor: pointer;
    width: 13px;
    height: 13px;
    margin: 2px;
}
.shop_sorting_title {
    font-size: 14px;
    letter-spacing: -.07px;

    display: -webkit-box;
    align-items: center;
    cursor: pointer;
    font-weight: 600;
}
.shop_sorting_title:after {
    width: 20px;
    height: 20px;
    background-size: 20px 20px;
    content: "";
    margin-left: 2px;
}
.shop_sorting_list {
    overflow: hidden;
    position: absolute;
    top: 51px;
    right: 36px;
    width: 310px;
    background-color: #fff;
    border: 1px solid #ebebeb;
    box-shadow: 0 4px 10px 0 rgb(0 0 0 / 10%);
    z-index: 10;
    padding: 5px;
}
.shop_sorting_link{
    position: relative;
    display: block;
    padding: 0px 40px 0px 10px;
}
.shop_sorting_item{
	margin:4px;
	padding:5px;
}
.shop_sorting_item .shop_main_desc {
    color: #222;
    font-size: 14px;
    letter-spacing: -.21px;
}
.shop_sorting_item.item_on .shop_main_desc {
    color: #222;
    font-weight: 700;
}
.shop_sub_desc{
    padding-top: 4px;
    font-size: 12px;
    letter-spacing: -.06px;
    color: rgba(34,34,34,.5);
}
.shop_check{
	display:none;
	/* display: block; */
	position: absolute;
    top: 50%;
    right: 12px;
    margin-top: -12px;
}
.shop_item_on .shop_check{
	display: block;
	position: absolute;
    top: 50%;
    right: 12px;
    margin-top: -12px;
}
/* shop_search_result */
.shop_search_result{
	display: block;
}
.shop_search_result_list {
	padding-left: 10px;
    margin: -20px -10px 0;
}
.shop_search_result_list:after {
    content: "";
    display: block;
    clear: both;
}
.shop_search_result_list .shop_search_result_item {
	max-width : 770px;
	width: 25%;
    padding: 0 6.5px;
	position: relative;
    float: left;
    margin: 20px 0;
}
.shop_item_inner {
    display: block;
    background-color: #fff;
    border-radius: 12px;
    background-color: rgb(244, 244, 244);
}

.shop_product {
    overflow: hidden;
    position: relative;
    padding-top: 100%;
    border-radius: 8px;
}
.shop_product:after {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(0,0,0,0);
}
.card-list-ul {
  width: 100%;
  height: 100%;
  padding: 0.5rem;
  overflow-y: scroll;
  /* background: bisque; */
}

.card-list-li {
	height: 400px;
}

.card-list-li,
.skeleton {
  width: 25%;
  padding: 0.5rem;
  float: left;
  list-style: none;
}

.card__image {
  display: block;
  width: 100%;
  height: 300px;
  object-fit: cover;
}
.loading {
	width: 100%;
}

.spinner {
  margin: 0 auto;
  display: block;
  width: 30px;
}
.shop_product_img {
	display: felx;
    position: absolute;
    top: 50%;
    left: 50%;
    -ms-transform: translate(-50%,-50%);
    transform: translate(-50%,-50%);
    width: 81.5%;
    height: auto;
}
.shop_product_info {
    padding-top: 9px;
}
.shop_title .shop_brand {
    display: inline-block;
    vertical-align: top;
    line-height: 16px;
    font-size: 14px;
    letter-spacing: -.21px;
    font-weight: 700;
    color: #333;
}

.shop_brand {
	font-weight: bold;
}

.shop_title, .shop_name, .shop_title { // 2줄 말줄임표
    margin-top: 2px;
    overflow: hidden;
 	text-overflow: ellipsis;
 	display: -webkit-box;
 	-webkit-line-clamp: 2;
 	-webkit-box-orient: vertical;
 	font-size: 13px;
 	line-height: 16px;
}
.shop_title .shop_translated_name {
    line-height: 14px;
    font-size: 12px;
    letter-spacing: -.06px;
    color: rgba(34,34,34,.5);
    height: 32px;
}
.shop_price {
    padding-top: 11px;
}
.shop_price, .shop_amount {
    line-height: 17px;
    font-size: 14px;
    font-weight: 700;
}
.shop_price, .shop_desc {
    line-height: 13px;
    font-size: 11px;
    color: rgba(34,34,34,.5);
}
/* 관심&리뷰 */
.shop_interest_figure {
    padding-top: 12px;
    margin: 0 -8px;
}
.shop_interest_figure > span {
    display: inline-flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    vertical-align: top;
    padding: 0 4px;
    height: 20px;
}
.shop_wish_figure {

}
.shop_interest_figure .shop_wish_figure .shop_text {
    margin-left: 2px;
    font-size: 13px;
    padding-top: 12px;
    align-items: center;
    vertical-align: top;
    padding: 0 0px;
    height: 20px;
    
}
.shop_interest_figure .shop_review_figure .shop_text {
    margin-left: 2px;
    font-size: 13px;
    
}
.shop_interest_figure {
    width: 16px;
    height: 16px;
    display: flex;
    flex-direction: row;
    align-items: center;

}
.banner_main {
  font-family:Arial;
  display:block;
  max-width: 1200px;
  margin:0 auto;
  position: relative;
}

.banner_img {
	line-height: 100px;/
    position: relative;
    text-align: center;
    height: 100%;
    width:100%;
}
.detail_banner{
	height: 100px;
	margin: 0 auto;
}
.slick-track{
	height: 100px;
}
.slick-arrow{
	width: 15px;
	height: 15px;
	border: none;
	text-indent: -9999px;
	overflow: hidden;
	position: absolute;
	top: 75px;
}
.slick-prev{
	background: url(/TeamProject/img/shop/prev.png) no-repeat 0 0;
	background-size: contain;
	z-index: 100;
	right: 50px;
}
.slick-next{
	background: url(/TeamProject/img/shop/next.png) no-repeat 0 0;
	background-size: contain;
	z-index: 100;
	right: 10px;
}
.action{
  display:block;
  width:100%;
  text-align:center;
}
.action a {
  display:inline-block;
  padding:5px 10px;
  background:#f30;
  color:#fff;
  text-decoration:none;
}
.action a:hover{
  background:#000;
}

.banner_count_box {
    position: absolute;
    right: 8px;
    top: 71px;
    padding: 4px 15px 5px;
    height: 22px;
    text-align: center;
    background-color: rgba(34,34,34,.8);
    border-radius: 20px;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
}

.banner_count {
    width: 31px;
    font-size: 11px;
    color: hsla(0,0%,100%,.8);
    font-weight: 600;
    display: inline-block;
}
.shop_bookmark {
	width: 20px;
	height:14px;
}
.shop_text {
	margin-left: 2px;
	margin-bottom: 2px;
}

.shop_translated_name{
	height:32px;
	margin-top: 2px;
    overflow: hidden;
 	text-overflow: ellipsis;
 	display: -webkit-box;
 	-webkit-line-clamp: 2;
 	-webkit-box-orient: vertical;
 	font-size: 12px;
 	line-height: 16px;
}
.shop_text{
	ont-family: -apple-system,BlinkMacSystemFont,Roboto,AppleSDGothicNeo-Regular,NanumBarunGothic,NanumGothic,나눔고딕,Segoe UI,Helveica,Arial,Malgun Gothic,Dotum,sans-serif;
    color: #222;
    font-size: 12px;
}
.bi_postcard{
	width: 16px;
    height: 16px;
}

</style>
</head>
<body>
<input type="hidden" id="command">
<div class="banner_main">
	<div class="slider slider-for">
		<div class="detail_banner">
			<div class="banner_img"
				style="background: rgb(219, 224, 191);
					   background-image: url('https://kream-phinf.pstatic.net/MjAyMjA3MDVfMTA0/MDAxNjU2OTk2NDgxNzQ3.gtTHaXpp66kF0wdCasV-5sOLw4dS-S7s2Wzb9Ur2CRMg.nLvv3ljNs-hFjcB77Ozg-Y39wQi36aAbjqWHz1NXoJIg.JPEG/a_9cc89f7ccaa14201a10027ada2cd7642.jpg');
					   background-size: auto 100px;
					   background-position: center;
					   background-repeat: no-repeat;">
		   </div>
		</div>
		<div class="detail_banner">
			<div class="banner_img"
				style="background: rgb(255, 217, 82);
					   background-image: url('https://kream-phinf.pstatic.net/MjAyMjA3MDFfMTY3/MDAxNjU2NjU1MDYwOTc2.ueQfTc0XpCu42XqmiFa-FNHg3IEiN0VcUS___47yYvMg.EXHBu8gfgk1VTZAnI6bzDAEvUMDu6kLsc7vyW0X2300g.JPEG/a_133b8c8a407b46368fa034aacb2cc5ec.jpg');
					   background-size: auto 100px;
					   background-position: center;
					   background-repeat: no-repeat;">
		   </div>
		</div>
		<div class="detail_banner">
			<div class="banner_img"
				style="background: rgb(255, 245, 210);
					   background-image: url('https://kream-phinf.pstatic.net/MjAyMjA2MzBfMjMx/MDAxNjU2NTYyODQwNjg3.8E3ck06GreqSLbQcln9rvVz9LbfG2WUema5P2w2SDcMg._oMIiXndXi5xG8dUv9XJP6UWn_Ah9KbCg4P0HtSToMgg.JPEG/a_dfb459ddc40d41c6b8897945afb88cea.jpg');
					   background-size: auto 100px;
					   background-position: center;
					   background-repeat: no-repeat;">
		   </div>
		</div>
		<div class="detail_banner">
			<div class="banner_img"
				style="background: rgb(136, 146, 174);
					   background-image: url('https://kream-phinf.pstatic.net/MjAyMjA3MDRfMTk4/MDAxNjU2OTI0MTM3MDA5.1AcR76sfCImjibgrcraQRWkKYRqG672tbvQWgAZ8tbMg.sk7m5nHVzuswfb0zDTTkJKDVUZ31Q0rSQ-9o0BNBKKcg.PNG/a_4bf5ecd915e14e1f83cc7847401873fd.png');
					   background-size: auto 100px;
					   background-position: center;
					   background-repeat: no-repeat;">
		   </div>
		</div>
		<div class="detail_banner">
			<div class="banner_img"
				style="background: rgb(110, 74, 254);
					   background-image: url('https://kream-phinf.pstatic.net/MjAyMjA2MjhfMTgw/MDAxNjU2MzkyNjQ1OTI5.LhUjE231Cj36tDWqdnfcdMmyyipjUjcfcUFxuW5H_ZQg.usNpTMcZpF6EC_SmjCFxBg4XgxnRCia1mBt3oJx_Rn4g.PNG/a_1f3e13becba041f1a6afda28c36b0f04.png');
					   background-size: auto 100px;
					   background-position: center;
					   background-repeat: no-repeat;">
		   </div>
		</div>
		<div class="detail_banner">
			<div class="banner_img"
				style="background: rgb(245, 241, 196);
					   background-image: url('https://kream-phinf.pstatic.net/MjAyMjA2MjlfOTkg/MDAxNjU2NDkzNTYyNzE2.H9LYf27neY3ycoUuuPz9fs703xx-Q1MkF99IqLNq6Ncg.qeOpC1q7Dtm0nWmpFZlj7MLewrVwVtspoH6YJ4Un04Ug.JPEG/a_c009a479c4fb48d9bc7ed976bcc1c7ef.jpg');
					   background-size: auto 100px;
					   background-position: center;
					   background-repeat: no-repeat;">
		   </div>
		</div>
		<div class="detail_banner">
			<div class="banner_img"
				style="background: rgb(12, 180, 89);
					   background-image: url('https://kream-phinf.pstatic.net/MjAyMTExMDhfMTQg/MDAxNjM2MzUyODQ4MTAy.Cw85PX23DLnCC0JXxlf5uRR4V6OUxDsz12MQLHRVeXsg.xdWI38nU5YX5e8cq6zifnXghc7o6Jl26o0U_vV7QVbkg.PNG/a_4e25f1b123af4f79ab8eb2c243321230.png');
					   background-size: auto 100px;
					   background-position: center;
					   background-repeat: no-repeat;">
		   </div>
		</div>
		<div class="detail_banner">
			<div class="banner_img"
				style="background: rgb(212, 235, 232);
					   background-image: url('https://kream-phinf.pstatic.net/MjAyMTA4MTBfODIg/MDAxNjI4NTM2Nzg2OTgw.w-hLutujBYPkNUNO9MH6D5xwwbEzmPUBgGNna7Fe2TQg.PhY3IcBEGM-4uoXqe9Yf0mAsRxJzGGDJ6HAei8RhSAMg.JPEG/a_c3e55535dd75452b802e180c312e1525.jpg');
					   background-size: auto 100px;
					   background-position: center;
					   background-repeat: no-repeat;">
		   </div>
		</div>
		<div class="detail_banner">
			<div class="banner_img"
				style="background: rgb(3, 4, 35);
					   background-image: url('https://kream-phinf.pstatic.net/MjAyMjA0MDVfMjg3/MDAxNjQ5MTQxNDQ2MzE5.KmWw8NmaqtTEZQUwNB-qnk94UoRvQjTBz6HE-wcsUPwg.uKnTAOmBZVasnEheK77-WjBLVGkrxaev02tgaOLhqz0g.JPEG/a_e84bc8e4c55041b29479627fc78a2469.jpg');
					   background-size: auto 100px;
					   background-position: center;
					   background-repeat: no-repeat;">
		   </div>
		</div>
	</div>
	<div class="banner_count_box">
	    <p class="banner_count"><span class="current">1</span>/<span class="total">9</span></p>
	</div>
</div>

<div class="shop_content">
	<div class="shop_search_filter">
		<jsp:include page="/WEB-INF/shop/shopFilter.jsp"></jsp:include>
	</div>

<div class="shop_search_content">
    <div class="shop_search_option" >
		<div class="shop_filter_sorting" >
			<button type="button" class="shop_sorting_title" >
				<span id="shop_sorting_title">인기순</span>
				<svg xmlns="http://www.w3.org/2000/svg" width="15px" height="13px" fill="currentColor" viewBox="0 0 16 16">
					<path fill-rule="evenodd" d="M11.5 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L11 2.707V14.5a.5.5 0 0 0 .5.5zm-7-14a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L4 13.293V1.5a.5.5 0 0 1 .5-.5z"/>
				</svg>
			</button>
				<ul class="shop_sorting_list" style="display:none" >
					<li id="popular" class="shop_sorting_item item_on">
						<a href="/TeamProject/shop?sort=popular" class="shop_sorting_link" >
							<div class="shop_sorting_desc" >
								<p class="shop_main_desc" >인기순</p>
								<p class="shop_sub_desc" >많이 판매된 순서대로 정렬합니다.</p>
							</div>
							<img class="shop_check" alt="" src="/TeamProject/img/shop/check-lg.svg">
						</a>
					</li>
					<li id="buy" class="shop_sorting_item" >
						<a href="/TeamProject/shop?sort=buy" class="shop_sorting_link" >
							<div class="shop_sorting_desc" >
								<p class="shop_main_desc" >즉시 구매가순</p>
								<p class="shop_sub_desc" >즉시 구매가가 낮은 순서대로 정렬합니다.</p>
							</div>
							<img class="shop_check" alt="" src="/TeamProject/img/shop/check-lg.svg">
						</a>
					</li>
					<li id="sell" class="shop_sorting_item" >
						<a href="/TeamProject/shop?sort=sell" class="shop_sorting_link" >
							<div class="shop_sorting_desc" >
								<p class="shop_main_desc" >즉시 판매가순</p>
								<p class="shop_sub_desc" >즉시 판매가가 높은 순서대로 정렬합니다.</p>
							</div>
							<img class="shop_check" alt="" src="/TeamProject/img/shop/check-lg.svg">
						</a>
					</li>
				</ul>
			</div>
		</div>

		<div class="shop_filter_tag" style=""></div><!-- shop_filter_tag -->

    <!-- content 시작-->
    <input type="hidden" id="shop_num" value="1">

    <ul class="shop-list-ul">
    	
	</ul>
</div>

    <div class="list_loading" style="display: none;">
        <img src="/_nuxt/img/loading.410eb77.gif" alt="리스트 로딩중입니다." class="loading_img" />
    </div>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script type="text/javascript"> 
/* 관심버튼 이미지 클릭시 로테이션으로 변경하기 */
$('.shop_bookmark').on(	{'click' : function() {
		var src = ($(this).attr('src') === '/TeamProject/img/shop/bookmark.svg') ? '/TeamProject/img/shop/bookmark-fill.svg'
				: '/TeamProject/img/shop/bookmark.svg';
		$(this).attr('src', src);
	}
}); 

//검색하면  정렬기준 href 바꾸기
$(document).ready(function(){
	$('#popular').children().eq(0).prop('href' , '/TeamProject/shop?sort=popular&command='+$('#command').val())
	$('#buy').children().eq(0).prop('href' , '/TeamProject/shop?sort=buy&command='+$('#command').val())
	$('#sell').children().eq(0).prop('href' , '/TeamProject/shop?sort=sell&command='+$('#command').val())
})

 //북마크 클릭시 DB연동 이미지 바꾸기
/* $(document).on('click','.shop_bookmark', function() {
	if(!'${sessionScope.memId}'){
		$(this).attr('src', '/TeamProject/img/shop/bookmark.svg');
		alert('로그인 먼저해주세요');
	}else{
		if($(this).hasClass('active')){
			$(this).attr('src', '/TeamProject/img/shop/bookmark.svg');
			$(this).removeClass('active');
			$.ajax({
				type:'post',
				url:'/TeamProject/shop/shopbookMarkDelete',
				data:'',
			})
		}else{
			$(this).addClass('active');
			$(this).attr('src', '/TeamProject/img/shop/bookmark-fill.svg');
		} // else
	}
}); */

/* 필터클릭시 목록보이기 */
$("#shop_sorting_title").click(function() {
	if ($('.shop_sorting_list').css('display') == 'none') {
		$('.shop_sorting_list').css({
			'display' : 'block'
		});
	} else {
		$('.shop_sorting_list').css({
			'display' : 'none'
		});
	}
});

/* 필터목록클릭시 체크 */

/* function filterItemOn() {
	$(this).addClass("item_on");
	$(".shop_sorting_list .shop_sorting_item").not(this).removeClass("item_on");

	var text = $(this).find('.shop_main_desc').html();
	var icon = '<svg xmlns="http://www.w3.org/2000/svg" width="15px" height="13px" fill="currentColor" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M11.5 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L11 2.707V14.5a.5.5 0 0 0 .5.5zm-7-14a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L4 13.293V1.5a.5.5 0 0 1 .5-.5z"/></svg>'

	$('.shop_sorting_list').css({
		'display' : 'none'
	});

	$('.shop_sorting_title').html(text + " " + icon);
}

$(".shop_sorting_list .shop_sorting_item").on('click', filterItemOn); */

var params = new URLSearchParams(document.location.search);
console.log(params);
var sort = params.get("sort");


switch (sort) {
	case 'popular':
		$('#popular').addClass("item_on");
		$('#buy').removeClass("item_on");
		$('#sell').removeClass("item_on");
		$('#shop_sorting_title').html('인기순');
		break;
	case 'buy':
		$('#buy').addClass("item_on");
		$('#sell').removeClass("item_on");
		$('#popular').removeClass("item_on");
		$('#shop_sorting_title').html('즉시 구매가순');
		break;
	case 'sell':
		$('#sell').addClass("item_on");
		$('#buy').removeClass("item_on");
		$('#popular').removeClass("item_on");
		$('#shop_sorting_title').html('즉시 판매가순');
		break;
}


$(function() {

	$.noConflict();
	/* 슬라이더 생성 */
	$('.slider-for').slick({
		slidesToShow : 1,
		slidesToScroll : 1,
		infinite: true,
		speed: 500,
		fade : true,
		autoplay: true,
		autoplaySpeed: 4000,
	});

	/* 슬라이드 페이지 */
	$('.slider-for').on('beforeChange',
			function(event, slick, currentSlide, nextSlide) {
				//console.log(nextSlide);
				$('.current').text(nextSlide + 1);
			});
});




</script>

</body>
</html>