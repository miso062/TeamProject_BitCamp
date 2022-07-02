<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
    margin-top: 50px;
    padding-top: 0;
    padding-bottom: 0;
}
body, button, input, select, table, textarea {
    font-family: -apple-system,BlinkMacSystemFont,Roboto,AppleSDGothicNeo-Regular,NanumBarunGothic,NanumGothic,나눔고딕,Segoe UI,Helveica,Arial,Malgun Gothic,Dotum,sans-serif;
    color: #222;
}
body, button, dd, div, dl, dt, fieldset, figcaption, figure, form, h1, h2, h3, h4, h5, h6, input, legend, li, ol, p, select, table, td, textarea, th, ul {
    margin: 0;
    padding: 0;
}
div {
    display: block;
}
.cd2_product_title > .cd2_title{
   font-size: 18px;
   letter-spacing: -.1px;
   font-weight: 700;
   color: #000;
}
.cd2_product_title > .cd2_sub_title{
   font-size: 14px;
   letter-spacing: -.21px;
   color: rgba(34,34,34,.5);
}
.product_list_wrap{
/*     overflow-y: hidden;
    overflow-x: scroll; */
    white-space: nowrap;
}
.product_list_wrap > .list_first{
    overflow: hidden;
    position: relative;
    margin: 0 auto;
    padding: 0 28px;
    width: 100%;
    display:inline-block;
}
.product_list_wrap > .list_second{
    overflow: hidden;
	position: relative;
	margin: 0 auto;
    padding: 0 28px;
    width: 100%;
}
.product_list_wrap > .list_third{
    overflow: hidden;
	position: relative;
	margin: 0 auto;
    padding: 0 28px;
    width: 100%;
}
/* .product_list_wrap .product_item:nth-child(4n+1) {
    clear: left;
} */
.product_item {
    float: none;
    vertical-align: top;
    margin: 15px 0 0;
    display: inline-block;
    padding: 0 8px;
    width: 216px;
}
.product {
    overflow: hidden;
    position: relative;
    padding-top: 100%;
    border-radius: 8px;
}
.product_img {
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
.product:after {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(0,0,0,0);
}
.product_item .item_inner {
    display: block;
    background-color: #fff;
    border-radius: 12px;
}
.product_item .desc{
   line-height: 13px;
   font-size:11px;
   color:rgba(34,34,34,.5);
}
.brand-text {
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
.product_item .name {
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
.product_item .num, .product_item .won {
    display: inline-block;
    vertical-align: top;
    line-height: 17px;
    font-size: 15px;
    letter-spacing: -.15px;
    font-weight: 700;
    letter-spacing: -.04px;
}
.product_item .btn_wish {
    position: absolute;
    top: 5px;
    right: 17px;
    padding: 5px;
    z-index: 1;
}
.btn_wish {
    display: block;
    height: inherit;
}
a {
    color: inherit;
    -webkit-tap-highlight-color: rgba(0,0,0,.1);
}
a, a:active, a:focus, a:hover {
    text-decoration: none;
}
*, :after, :before {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    -webkit-tap-highlight-color: transparent;
}
/* 더보기 */
.product_list_wrap .btn_product {
	display:block;
	width: 100%;
	height: 3rem;
	margin: 0;
	margin-bottom: 2.3rem;
	padding: 0;
	text-align: center;
}
.btn_product .con2_more_btn{
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
.img_box{
	position:relative;
    padding-top: 100%;
	margin-top: 30px;
	padding-top: 0;
	padding-bottom: 0;
}
.img_box .banner_img {
	width:100%;
    position: relative;
}
.img_box .banner_img:after {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(0,0,0,0);
}
</style>
</head>
<body>
 <!--섹션 1-->
    <div class="cd2_product_title cd2_lg" >
       <div class="cd2_title" >Just Dropped</div>
       <div class="cd2_sub_title" >발매 상품</div>
   </div>
<div class ="product_list_wrap">
	<div class="product_list list_first" id="section_sec1">
      
    	<div class="product_item" >
          <a href="#" class="item_inner">
          	<div class="thumb_box">
               <div class="product" style="background-color: #f6eeed;">
                  <img class="product_img" alt="조던 1 로우 택시" src="/TeamProject/img/나이키화이트.png" />
	           </div>
               <a href="#" aria-label="관심상품" class="btn_wish"></a>
			</div>

			<div class="info_box">
                  <div class="brand">
                      <p class="brand-text" >Jordan</p>
                  </div>
                     <p class="name" >Jordan 1 Low Taxi</p>
                  <div class="price" >
                      <div class="amount lg" ><div class="num" > 220,000 </div><span class="won lg" >원</span></div>
                      <div class="desc" ><p >즉시 구매가</p></div>
                  </div>
			</div>
			</a>
		</div>
      
    	<div class="product_item" >
          <a href="#" class="item_inner">
          	<div class="thumb_box">
               <div class="product" style="background-color: #f6eeed;">
                  <img class="product_img" alt="조던 1 로우 택시"src="h0O2f22f1f14d66bc.png?type=m" />
	           </div>
               <a href="#" aria-label="관심상품" class="btn_wish"></a>
			</div>

			<div class="info_box">
                  <div class="brand">
                      <p class="brand-text" >Jordan</p>
                  </div>
                     <p class="name" >Jordan 1 Low Taxi</p>
                  <div class="price" >
                      <div class="amount lg" ><div class="num" > 220,000 </div><span class="won lg" >원</span></div>
                      <div class="desc" ><p >즉시 구매가</p></div>
                  </div>
			</div>
			</a>
		</div>
      
    	<div class="product_item" >
          <a href="#" class="item_inner">
          	<div class="thumb_box">
               <div class="product" style="background-color: #f6eeed;">
                  <img class="product_img" alt="조던 1 로우 택시"src="h0O2f22f1f14d66bc.png?type=m" />
	           </div>
               <a href="#" aria-label="관심상품" class="btn_wish"></a>
			</div>

			<div class="info_box">
                  <div class="brand">
                      <p class="brand-text" >Jordan</p>
                  </div>
                     <p class="name" >Jordan 1 Low Taxi</p>
                  <div class="price" >
                      <div class="amount lg" ><div class="num" > 220,000 </div><span class="won lg" >원</span></div>
                      <div class="desc" ><p >즉시 구매가</p></div>
                  </div>
			</div>
			</a>
		</div>
      
    	<div class="product_item" >
          <a href="#" class="item_inner">
          	<div class="thumb_box">
               <div class="product" style="background-color: #f6eeed;">
                  <img class="product_img" alt="조던 1 로우 택시"src="h0O2f22f1f14d66bc.png?type=m" />
	           </div>
               <a href="#" aria-label="관심상품" class="btn_wish"></a>
			</div>

			<div class="info_box">
                  <div class="brand">
                      <p class="brand-text" >Jordan</p>
                  </div>
                     <p class="name" >Jordan 1 Low Taxi</p>
                  <div class="price" >
                      <div class="amount lg" ><div class="num" > 220,000 </div><span class="won lg" >원</span></div>
                      <div class="desc" ><p >즉시 구매가</p></div>
                  </div>
			</div>
			</a>
		</div>
      
		<div class="btn_product">
			<div class="con2_more_btn btn1"> 더보기 </div>
		</div>
	</div>
        
    <div class="product_list list_second">
     
    	<div class="product_item" >
          <a href="#" class="item_inner">
          	<div class="thumb_box">
               <div class="product" style="background-color: #f6eeed;">
                  <img class="product_img" alt="조던 1 로우 택시"src="h0O2f22f1f14d66bc.png?type=m" />
	           </div>
               <a href="#" aria-label="관심상품" class="btn_wish"></a>
			</div>

			<div class="info_box">
                  <div class="brand">
                      <p class="brand-text" >Jordan</p>
                  </div>
                     <p class="name" >Jordan 1 Low Taxi</p>
                  <div class="price" >
                      <div class="amount lg" ><div class="num" > 220,000 </div><span class="won lg" >원</span></div>
                      <div class="desc" ><p >즉시 구매가</p></div>
                  </div>
			</div>
			</a>
		</div>
		
    	<div class="product_item" >
          <a href="#" class="item_inner">
          	<div class="thumb_box">
               <div class="product" style="background-color: #f6eeed;">
                  <img class="product_img" alt="조던 1 로우 택시"src="h0O2f22f1f14d66bc.png?type=m" />
	           </div>
               <a href="#" aria-label="관심상품" class="btn_wish"></a>
			</div>

			<div class="info_box">
                  <div class="brand">
                      <p class="brand-text" >Jordan</p>
                  </div>
                     <p class="name" >Jordan 1 Low Taxi</p>
                  <div class="price" >
                      <div class="amount lg" ><div class="num" > 220,000 </div><span class="won lg" >원</span></div>
                      <div class="desc" ><p >즉시 구매가</p></div>
                  </div>
			</div>
			</a>
		</div>

    	<div class="product_item" >
          <a href="#" class="item_inner">
          	<div class="thumb_box">
               <div class="product" style="background-color: #f6eeed;">
                  <img class="product_img" alt="조던 1 로우 택시"src="h0O2f22f1f14d66bc.png?type=m" />
	           </div>
               <a href="#" aria-label="관심상품" class="btn_wish"></a>
			</div>

			<div class="info_box">
                  <div class="brand">
                      <p class="brand-text" >Jordan</p>
                  </div>
                     <p class="name" >Jordan 1 Low Taxi</p>
                  <div class="price" >
                      <div class="amount lg" ><div class="num" > 220,000 </div><span class="won lg" >원</span></div>
                      <div class="desc" ><p >즉시 구매가</p></div>
                  </div>
			</div>
			</a>
		</div>
		
    	<div class="product_item" >
          <a href="#" class="item_inner">
          	<div class="thumb_box">
               <div class="product" style="background-color: #f6eeed;">
                  <img class="product_img" alt="조던 1 로우 택시"src="h0O2f22f1f14d66bc.png?type=m" />
	           </div>
               <a href="#" aria-label="관심상품" class="btn_wish"></a>
			</div>

			<div class="info_box">
                  <div class="brand">
                      <p class="brand-text" >Jordan</p>
                  </div>
                     <p class="name" >Jordan 1 Low Taxi</p>
                  <div class="price" >
                      <div class="amount lg" ><div class="num" > 220,000 </div><span class="won lg" >원</span></div>
                      <div class="desc" ><p >즉시 구매가</p></div>
                  </div>
			</div>
			</a>
		</div>

      <div class="btn_product" >
         <div class="con2_more_btn btn2"> 더보기 </div>
      </div>
    </div>
        
    <div class="product_list list_third">
    	<div class="product_item" >
          <a href="#" class="item_inner">
          	<div class="thumb_box">
               <div class="product" style="background-color: #f6eeed;">
                  <img class="product_img" alt="조던 1 로우 택시"src="h0O2f22f1f14d66bc.png?type=m" />
	           </div>
               <a href="#" aria-label="관심상품" class="btn_wish"></a>
			</div>

			<div class="info_box">
                  <div class="brand">
                      <p class="brand-text" >Jordan</p>
                  </div>
                     <p class="name" >Jordan 1 Low Taxi</p>
                  <div class="price" >
                      <div class="amount lg" ><div class="num" > 220,000 </div><span class="won lg" >원</span></div>
                      <div class="desc" ><p >즉시 구매가</p></div>
                  </div>
			</div>
			</a>
		</div>
		
		<div class="btn_product" style="display: ;" >
			<div class="con2_more_btn btn3"> 더보기 </div>
		</div>
</div>

<div class="img_box">
	<img src="/TeamProject/img/banner.png" alt="banner" class="banner_img" />
</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$('.list_second').hide();
	$('.list_third').hide();
	
	$('btn1').click(function(){
		$('.list_second').show();
	})
	$('btn2').click(function(){
		$('.list_third').show();
	})
	
})

</script>
</body>
</html>