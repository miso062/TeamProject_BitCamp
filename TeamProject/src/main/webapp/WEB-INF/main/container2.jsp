<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
#cd2_homeproducts{
	margin-top: 50px;
    padding-top: 0;
    padding-bottom: 0;
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
    margin: 20px 0;
    padding: 0 12px;
    width: 25%;
}
.cd2_product_item .cd2_item_inner {
    display: block;
    background-color: #fff;
    border-radius: 12px;
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
</style>

<body>
 <!--섹션 1-->
<div id="cd2_homeproducts">
	<div class="cd2_product_title" >
	    <div class="cd2_title" >Just Dropped</div>
	    <div class="cd2_sub_title" >발매 상품</div>
	</div>
	
	<div class ="cd2_product_list_wrap">
	   <div class="cd2_product_list list_first" >
	        <div class="cd2_product_item" >
	            <a href="#" class="cd2_item_inner">
	                <div class="cd2_thumb_box">
	                    <div class="cd2_product" style="background-color: #f6eeed;">
	                        <img class="cd2_product_img" alt="(W) 나이키 덩크 로우 오션"" 
	                            src="/TeamProject/img/container2/Nike Dunk Low Ocean.png" />
						</div>
	                </div>
	
	                <div class="cd2_info_box">
	                    <div class="cd2_brand">
	                        <p class="cd2_brand_text" >NIKE</p>
	                    </div>
	                        <p class="cd2_name" > Nike Dunk Low Ocean</p>
	                        <div class="cd2_price" >
	                            <div class="cd2_amount" ><div class="cd2_num" > 220,000 </div><span class="cd2_won" >원</span></div>
	                            <div class="cd2_desc" ><p >즉시 구매가</p></div>
	                        </div>
	                </div>
	            </a>
					<div class="cd2_btn_wish" >
						<img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
					</div>
	        </div>
	        
	        <div class="cd2_product_item" >
	            <a href="#" class="cd2_item_inner">
	                <div class="cd2_thumb_box">
	                    <div class="cd2_product" style="background-color: #f6eeed;">
	                        <img class="cd2_product_img" alt="조던 1 로우 짐" 
	                            src="/TeamProject/img/container2/Jordan 1 Mid Black and Gym Red.png" />
						</div>
	                </div>
	
	                <div class="cd2_info_box">
	                    <div class="cd2_brand">
	                        <p class="cd2_brand_text" >Jordan</p>
	                    </div>
	                        <p class="cd2_name" >Jordan 1 Mid Black and Gym Red</p>
	                        <div class="cd2_price" >
	                            <div class="cd2_amount" ><div class="cd2_num" > 220,000 </div><span class="cd2_won" >원</span></div>
	                            <div class="cd2_desc" ><p >즉시 구매가</p></div>
	                        </div>
	                </div>
	            </a>
					<div class="cd2_btn_wish" >
						<img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
					</div>
	        </div>
	        
	        <div class="cd2_product_item" >
	            <a href="#" class="cd2_item_inner">
	                <div class="cd2_thumb_box">
	                    <div class="cd2_product" style="background-color: #f6eeed;">
	                        <img class="cd2_product_img" alt="나이키 에어포스 화이트" 
	                            src="/TeamProject/img/container2/Nike Air Force 1 '07 Low White.png" />
						</div>
	                </div>
	
	                <div class="cd2_info_box">
	                    <div class="cd2_brand">
	                        <p class="cd2_brand_text" >Nike</p>
	                    </div>
	                        <p class="cd2_name" >Nike Air Force '07 Low White</p>
	                        <div class="cd2_price" >
	                            <div class="cd2_amount" ><div class="cd2_num" > 220,000 </div><span class="cd2_won" >원</span></div>
	                            <div class="cd2_desc" ><p >즉시 구매가</p></div>
	                        </div>
	                </div>
	            </a>
					<div class="cd2_btn_wish" >
						<img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
					</div>
	        </div>
	        
	        <div class="cd2_product_item" >
	            <a href="#" class="cd2_item_inner">
	                <div class="cd2_thumb_box">
	                    <div class="cd2_product" style="background-color: #f6eeed;">
	                        <img class="cd2_product_img" alt="Nike SB Dunk Low Pro Be True" 
	                            src="/TeamProject/img/container2/Nike SB Dunk Low Pro Be True.png" />
						</div>
	                </div>
	
	                <div class="cd2_info_box">
	                    <div class="cd2_brand">
	                        <p class="cd2_brand_text" >Nike</p>
	                    </div>
	                        <p class="cd2_name" >Nike SB Dunk Low Pro Be True</p>
	                        <div class="cd2_price" >
	                            <div class="cd2_amount" ><div class="cd2_num" > 220,000 </div><span class="cd2_won" >원</span></div>
	                            <div class="cd2_desc" ><p >즉시 구매가</p></div>
	                        </div>
	                </div>
	            </a>
					<div class="cd2_btn_wish" >
						<img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
					</div>
	        </div>
	    </div>
	      
	        <div class="cd2_btn_product cd2_btn1"><div class="con2_more_btn"> 더보기 </div></div>
	        
	    <div class="cd2_product_list cd2_list_second" >
	        <div class="cd2_product_item" >
	            <a href="#" class="cd2_item_inner">
	                <div class="cd2_thumb_box">
	                    <div class="cd2_product" style="background-color: #f6eeed;">
	                        <img class="cd2_product_img" alt="조던 1 로우 택시" 
	                            src="/TeamProject/img/container2/Jordan 1 Taxi.png" />
						</div>
	                </div>
	
	                <div class="cd2_info_box">
	                    <div class="cd2_brand">
	                        <p class="cd2_brand_text" >Jordan</p>
	                    </div>
	                        <p class="cd2_name" >Jordan 1 Low Taxi</p>
	                        <div class="cd2_price" >
	                            <div class="cd2_amount" ><div class="cd2_num" > 220,000 </div><span class="cd2_won" >원</span></div>
	                            <div class="cd2_desc" ><p >즉시 구매가</p></div>
	                        </div>
	                </div>
	            </a>
					<div class="cd2_btn_wish" >
						<img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
					</div>
	        </div>
	        
	        <div class="cd2_product_item" >
	            <a href="#" class="cd2_item_inner">
	                <div class="cd2_thumb_box">
	                    <div class="cd2_product" style="background-color: #f6eeed;">
	                        <img class="cd2_product_img" alt="Jordan 1 Mid White Black Tie-Dye" 
	                            src="/TeamProject/img/container2/Jordan 1 Mid White Black Tie-Dye.png" />
						</div>
	                </div>
	
	                <div class="cd2_info_box">
	                    <div class="cd2_brand">
	                        <p class="cd2_brand_text" >Jordan</p>
	                    </div>
	                        <p class="cd2_name" >Jordan 1 Mid White Black Tie-Dye</p>
	                        <div class="cd2_price" >
	                            <div class="cd2_amount" ><div class="cd2_num" > 420,000 </div><span class="cd2_won" >원</span></div>
	                            <div class="cd2_desc" ><p >즉시 구매가</p></div>
	                        </div>
	                </div>
	            </a>
					<div class="cd2_btn_wish" >
						<img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
					</div>
	        </div>
	        
	        <div class="cd2_product_item" >
	            <a href="#" class="cd2_item_inner">
	                <div class="cd2_thumb_box">
	                    <div class="cd2_product" style="background-color: #f6eeed;">
	                        <img class="cd2_product_img" alt="조던 1 로우 택시" 
	                            src="/TeamProject/img/container2/Jordan 1 Retro High OG Black Mocha.png" />
						</div>
	                </div>
	
	                <div class="cd2_info_box">
	                    <div class="cd2_brand">
	                        <p class="cd2_brand_text" >Jordan</p>
	                    </div>
	                        <p class="cd2_name" >Jordan 1 Retro High OG Black Mocha</p>
	                        <div class="cd2_price" >
	                            <div class="cd2_amount" ><div class="cd2_num" > 220,000 </div><span class="cd2_won" >원</span></div>
	                            <div class="cd2_desc" ><p >즉시 구매가</p></div>
	                        </div>
	                </div>
	            </a>
					<div class="cd2_btn_wish" >
						<img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
					</div>
	        </div>
	        
	        <div class="cd2_product_item" >
	            <a href="#" class="cd2_item_inner">
	                <div class="cd2_thumb_box">
	                    <div class="cd2_product" style="background-color: #f6eeed;">
	                        <img class="cd2_product_img" alt="Nike x Union Cortez SP Seaseme" 
	                            src="/TeamProject/img/container2/Nike x Union Cortez SP Seaseme.png" />
						</div>
	                </div>
	
	                <div class="cd2_info_box">
	                    <div class="cd2_brand">
	                        <p class="cd2_brand_text" >Nike</p>
	                    </div>
	                        <p class="cd2_name" >Nike x Union Cortez SP Seaseme</p>
	                        <div class="cd2_price" >
	                            <div class="cd2_amount" ><div class="cd2_num" > 220,000 </div><span class="cd2_won" >원</span></div>
	                            <div class="cd2_desc" ><p >즉시 구매가</p></div>
	                        </div>
	                </div>
	            </a>
					<div class="cd2_btn_wish" >
						<img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
					</div>
	        </div>
	    </div>
	        
	        <div class="cd2_btn_product cd2_btn2"><div class="con2_more_btn"> 더보기 </div></div>
	        
	        
	    <div class="cd2_product_list cd2_list_third" >
	
	        <div class="cd2_product_item" >
	            <a href="#" class="cd2_item_inner">
	                <div class="cd2_thumb_box">
	                    <div class="cd2_product" style="background-color: #f6eeed;">
	                        <img class="cd2_product_img" alt="" 
	                            src="/TeamProject/img/container2/Adidas Yeezy Boost 350 V2 Onyx.png" />
						</div>
	                </div>
	
	                <div class="cd2_info_box">
	                    <div class="cd2_brand">
	                        <p class="cd2_brand_text" >Adidas</p>
	                    </div>
	                        <p class="cd2_name" >Adidas Yeezy Boost 350 V2 Onyx</p>
	                        <div class="cd2_price" >
	                            <div class="cd2_amount" ><div class="cd2_num" > 220,000 </div><span class="cd2_won" >원</span></div>
	                            <div class="cd2_desc" ><p >즉시 구매가</p></div>
	                        </div>
	                </div>
	            </a>
					<div class="cd2_btn_wish" >
						<img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
					</div>
	        </div>
	        
	        <div class="cd2_product_item" >
	            <a href="#" class="cd2_item_inner">
	                <div class="cd2_thumb_box">
	                    <div class="cd2_product" style="background-color: #f6eeed;">
	                        <img class="cd2_product_img" alt="Nike x Union Cortez SP Seaseme" 
	                            src="/TeamProject/img/container2/Nike x Union Cortez SP Seaseme.png" />
						</div>
	                </div>
	
	                <div class="cd2_info_box">
	                    <div class="cd2_brand">
	                        <p class="cd2_brand_text" >Nike</p>
	                    </div>
	                        <p class="cd2_name" >Nike x Union Cortez SP Seaseme</p>
	                        <div class="cd2_price" >
	                            <div class="cd2_amount" ><div class="cd2_num" > 220,000 </div><span class="cd2_won" >원</span></div>
	                            <div class="cd2_desc" ><p >즉시 구매가</p></div>
	                        </div>
	                </div>
	            </a>
					<div class="cd2_btn_wish" >
						<img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
					</div>
	        </div>
	        
	        <div class="cd2_product_item" >
	            <a href="#" class="cd2_item_inner">
	                <div class="cd2_thumb_box">
	                    <div class="cd2_product" style="background-color: #f6eeed;">
	                        <img class="cd2_product_img" alt="뉴발란스 530 화이트" 
	                            src="/TeamProject/img/container2/New Balance 530 White.png" />
						</div>
	                </div>
	
	                <div class="cd2_info_box">
	                    <div class="cd2_brand">
	                        <p class="cd2_brand_text" >New Balance</p>
	                    </div>
	                        <p class="cd2_name" >New Balance 530 White</p>
	                        <div class="cd2_price" >
	                            <div class="cd2_amount" ><div class="cd2_num" > 220,000 </div><span class="cd2_won" >원</span></div>
	                            <div class="cd2_desc" ><p >즉시 구매가</p></div>
	                        </div>
	                </div>
	            </a>
					<div class="cd2_btn_wish" >
						<img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
					</div>
	        </div>
	        
	        <div class="cd2_product_item" >
	            <a href="#" class="cd2_item_inner">
	                <div class="cd2_thumb_box">
	                    <div class="cd2_product" style="background-color: #f6eeed;">
	                        <img class="cd2_product_img" alt="Adidas Yeezy Slide Pure" 
	                            src="/TeamProject/img/container2/Adidas Yeezy Slide Pure.png" />
						</div>
	                </div>
	
	                <div class="cd2_info_box">
	                    <div class="cd2_brand">
	                        <p class="cd2_brand_text" >Adidas</p>
	                    </div>
	                        <p class="cd2_name" >Adidas Yeezy Slide Pure</p>
	                        <div class="cd2_price" >
	                            <div class="cd2_amount" ><div class="cd2_num" > 220,000 </div><span class="cd2_won" >원</span></div>
	                            <div class="cd2_desc" ><p >즉시 구매가</p></div>
	                        </div>
	                </div>
	            </a>
					<div class="cd2_btn_wish" >
						<img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
					</div>
	        </div>
		</div>
	        <div class="cd2_btn_product cd2_btn3"><div class="con2_more_btn"> 더보기 </div></div>
	        
	    <div class="cd2_product_list cd2_list_for" >
	
	         <div class="cd2_product_item" >
	            <a href="#" class="cd2_item_inner">
	                <div class="cd2_thumb_box">
	                    <div class="cd2_product" style="background-color: #f6eeed;">
	                        <img class="cd2_product_img" alt="조던 1 로우 짐" 
	                            src="/TeamProject/img/container2/Jordan 1 Mid Black and Gym Red.png" />
						</div>
	                </div>
	
	                <div class="cd2_info_box">
	                    <div class="cd2_brand">
	                        <p class="cd2_brand_text" >Jordan</p>
	                    </div>
	                        <p class="cd2_name" >Jordan 1 Mid Black and Gym Red</p>
	                        <div class="cd2_price" >
	                            <div class="cd2_amount" ><div class="cd2_num" > 220,000 </div><span class="cd2_won" >원</span></div>
	                            <div class="cd2_desc" ><p >즉시 구매가</p></div>
	                        </div>
	                </div>
	            </a>
					<div class="cd2_btn_wish" >
						<img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
					</div>
	        </div>
	        
	        <div class="cd2_product_item" >
	            <a href="#" class="cd2_item_inner">
	                <div class="cd2_thumb_box">
	                    <div class="cd2_product" style="background-color: #f6eeed;">
	                        <img class="cd2_product_img" alt="뉴발란스 990 메이드 인 USA 그레이 화이트"  
	                            src="/TeamProject/img/container2/New Balance 990 Made in USA Grey White.png" />
		                    <div class="cd2_btn_wish" >
								<img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
							</div>
						</div>
	                </div>
	
	                <div class="cd2_info_box">
	                    <div class="cd2_brand">
	                        <p class="cd2_brand_text" >New Balance</p>
	                    </div>
	                        <p class="cd2_name" >New Balance 990 Made in USA Grey White</p>
	                        <div class="cd2_price" >
	                            <div class="cd2_amount" ><div class="cd2_num" > 220,000 </div><span class="cd2_won" >원</span></div>
	                            <div class="cd2_desc" ><p >즉시 구매가</p></div>
	                        </div>
	                </div>
	            </a>
	        </div>
	        
	        <div class="cd2_product_item" >
	            <a href="#" class="cd2_item_inner">
	                <div class="cd2_thumb_box">
	                    <div class="cd2_product" style="background-color: #f6eeed;">
	                        <img class="cd2_product_img" alt="아디다스 이지폼" 
	                            src="/TeamProject/img/container2/Adidas Yeezy Foam RNNR Onyx.png" />
						</div>
	                </div>
	
	                <div class="cd2_info_box">
	                    <div class="cd2_brand">
	                        <p class="cd2_brand_text" >Adidas</p>
	                    </div>
	                        <p class="cd2_name" >Adidas Yeezy Foam RNNR Onyx</p>
	                        <div class="cd2_price" >
	                            <div class="cd2_amount" ><div class="cd2_num" > 220,000 </div><span class="cd2_won" >원</span></div>
	                            <div class="cd2_desc" ><p >즉시 구매가</p></div>
	                        </div>
	                </div>
	            </a>
					<div class="cd2_btn_wish" >
						<img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
					</div>
	        </div>
	        
	        <div class="cd2_product_item" >
	            <a href="#" class="cd2_item_inner">
	                <div class="cd2_thumb_box">
	                    <div class="cd2_product" style="background-color: #f6eeed;">
	                        <img class="cd2_product_img" alt="조던 시리즈 x 메종 샤또 루즈 미드 SP 세일" 
	                            src="/TeamProject/img/container2/Jordan Series x Maison Chateau Rouge Mid SP Sail.png" />
						</div>
	                </div>
	
	                <div class="cd2_info_box">
	                    <div class="cd2_brand">
	                        <p class="cd2_brand_text" >Jordan</p>
	                    </div>
	                        <p class="cd2_name" >Jordan 1 Low Taxi</p>
	                        <div class="cd2_price" >
	                            <div class="cd2_amount" ><div class="cd2_num" > 220,000 </div><span class="cd2_won" >원</span></div>
	                            <div class="cd2_desc" ><p >즉시 구매가</p></div>
	                        </div>
	                </div>
	            </a>
					<div class="cd2_btn_wish" >
						<img alt="" src="/TeamProject/img/container2/bookmark.svg" class="cd2_bookmark">
					</div>
	        </div>
	    </div>
	
	</div>
</div>
<div class="cd2_img_box">
   <img src="/TeamProject/img/container2/banner.png" alt="banner" class="cd2_banner_img" />
</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	// 이미지 클릭시 로테이션으로 변경하기
	$('.cd2_btn_wish > .cd2_bookmark').on({
	    'click': function() {
	         var src = ($(this).attr('src') === '/TeamProject/img/container2/bookmark.svg')
	            ? '/TeamProject/img/container2/bookmark-fill.svg'
	            : '/TeamProject/img/container2/bookmark.svg';
	         $(this).attr('src', src);
	    }
	});

});
</script>
<script type="text/javascript">
$(function(){
	   $('.cd2_list_second').hide();
	   $('.cd2_list_third').hide();
	   $('.cd2_list_for').hide();
       $('.cd2_btn2').hide();
       $('.cd2_btn3').hide();

	   $('.cd2_btn1').click(function(){
	      $('.cd2_list_second').show();
	      $('.cd2_btn1').hide();
	      $('.cd2_btn2').show();
	      
	      $('.cd2_btn2').click(function(){
	         $('.cd2_list_third').show();
	         $('.cd2_btn2').hide();
	         $('.cd2_btn3').show();
	         
	         $('.cd2_btn3').click(function(){
	        	 $('.cd2_list_for').show();
	        	 $('.cd2_btn3').hide();
	         });
	         
	      });
	   });
	   
	});
</script>
</body>
