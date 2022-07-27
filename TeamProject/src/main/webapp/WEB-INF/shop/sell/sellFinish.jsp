<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
.container.buy {
    background-color: #fafafa;
}
.content {
    margin: 0 auto;
    padding: 20px 40px 160px;
    max-width: 780px;
}
.buy_complete {
    margin: 0 auto;
    width: 440px;
    padding-top: 30px;
}
.complete_box {
    background-color: #fff;
    box-shadow: 4px 0 10px 0 rgb(0 0 0 / 10%);
}
.buy_complete .product {
    border-radius: 0;
    padding-top: 0;
    height: 200px;
    text-align: center;
}
.buy_complete .product_img {
    width: 200px;
}
.image {
    object-fit: cover;
    width: 200px;
    image-rendering: -webkit-optimize-contrast;
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
.complete_info {
    padding: 31px 32px;
    text-align: center;
}
.main_title {
    line-height: 36px;
    font-size: 20px;
    letter-spacing: -.3px;
    font-weight: 700;
    letter-spacing: -.15px;
}
.sub_title {
    line-height: 17px;
    margin-top: 3px;
    font-size: 14px;
    letter-spacing: -.21px;
    color: rgba(34,34,34,.8);
}
.complete_btn_box {
    margin-top: 10px;
    font-size: 0;
    display: flex;
}
.complete_btn_box .btn {
    width: 100%;
    border-radius: 10px;
    white-space: nowrap;
    margin: 5px 5px;
}

.outlinegrey {
    border: 1px solid #d3d3d3;
    color: rgba(34,34,34,.8);
}

.medium {
    padding: 0 18px;
    height: 42px;
    line-height: 40px;
    border-radius: 12px;
    font-size: 14px;
    letter-spacing: -.14px;
}

.btn {
    display: inline-block;
    cursor: pointer;
    vertical-align: middle;
    text-align: center;
    color: rgba(34,34,34,.8);
    background-color: #fff;
}
complete_desc {
    padding-top: 8px;
    letter-spacing: -.07px;
}
.complete_desc, .complete_notice {
    font-size: 13px;
    color: rgba(34,34,34,.5);
}
.complete_price {
    padding: 21px 32px 32px;
}
.complete_price .price_total {
    padding-bottom: 14px;
    border-width: 1px;
    border-bottom: 2px solid #ebebeb;
}
.order_info .price_box {
    display: block;
    color: #f15746;
}
.price_box {
    display: flex;
    -webkit-box-pack: justify;
    justify-content: space-between;
    -webkit-box-align: center;
    align-items: center;
    font-weight: 700;
}
.complete_price .price_total .price_title_total {
    line-height: 18px;
    font-size: 15px;
    letter-spacing: -.15px;
    color: #222;
}
.price_title_gray {
	color: rgba(34,34,34,.5);
}
.container.buy .price_box .price {
    color: #31b46e;
}
.order_info .price_box .price {
    width: 100%;
    text-align: right;
    display: block;
}
.aos .price_box .amount, .win_os .price_box .amount {
    font-style: normal;
}
.price_box .unit {
    line-height: 26px;
    font-size: 20px;
    letter-spacing: -.3px;
    font-weight: 700;
    letter-spacing: -.15px;
}
.price_box .amount {
    line-height: 26px;
    font-size: 20px;
    letter-spacing: -.1px;
    font-weight: 700;
    letter-spacing: normal;
}
address, em {
    font-style: normal;
}
.price_bind {
    padding-top: 11px;
    font-size: 13px;
    letter-spacing: -.07px;
}
.price_addition {
    display: flex;
    -webkit-box-pack: justify;
    justify-content: space-between;
    -webkit-box-align: center;
    align-items: center;
    min-height: 26px;
    font-size: 13px;
    letter-spacing: -.07px;
}
.price_addition.is_dark .price_title {
    color: #222;
}
.is_dark .price_text {
    font-weight: 700;
}
.price_text {
    text-align: right;
    white-space: nowrap;
    color: #222;
    font-size: 14px;
    letter-spacing: -.21px;
}
.price_text:after {
    content: "";
    display: block;
    clear: both;
}
.price_addition {
    margin-top: 2px;
}
.layer {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(34,34,34,.5);
    z-index: 1010;
}
.layer_point .layer_container {
    width: 444px;
}
.layer_header .title {
    line-height: 22px;
    padding: 18px 50px 20px;
    min-height: 60px;
    font-size: 18px;
    letter-spacing: -.27px;
    font-weight: 700;
    letter-spacing: -.15px;
    color: #000;
    text-align: center;
    background-color: #fff;
}
.usable_wrap {
    padding: 19px 32px 30px;
}
.usable_point {
    padding-bottom: 30px;
}
.usable_point .title{
    font-size: 14px;
    letter-spacing: -.21px;
}
.point_box {
    padding: 18px 0 2px;
    border-bottom: 2px solid #222;
    line-height: 36px;
    font-size: 24px;
    letter-spacing: -.12px;
}
.point_box .point {
    font-weight: 700;
}
.point_info {
    padding-top: 13px;
    font-size: 13px;
    letter-spacing: -.07px;
    color: rgba(34,34,34,.8);
}
.point_info .info_item {
    margin-top: 8px;
    color: rgba(34,34,34,.5);
}
.usable_wrap {
    padding: 19px 32px 30px;
}
.usable_list {
    border-top: 1px solid #ebebeb;
    padding-top: 20px;
}
.usable_item {
    position: relative;
    padding-left: 11px;
    font-size: 12px;
    letter-spacing: -.06px;
    color: rgba(34,34,34,.8);
}
.usable_item {
    margin-top: 6px;
}
.layer_btn {
    padding: 24px 32px 32px;
    display: flex;
    -webkit-box-pack: center;
    justify-content: center;
}
.layer_btn .btn {
    width: 120px;
}
.btn_layer_close {
    position: absolute;
    top: 18px;
    right: 20px;
    cursor: pointer;
}
[class*=ico-] {
    width: 24px;
    height: 24px;
}
#container {
	background-color: #fafafa;
}

</style>

<div class="content">
	<div class="buy_complete lg">
		<div class="complete_box">
			<div class="product" style="background-color: rgb(235, 240, 245);">
				<picture class="picture product_img">
					<img alt="상품 이미지" class="image"
					    src=${productImgDTO.file_path}/>
				</picture>
			</div>
			<div class="complete_detail">
				<div class="complete_info">
					<div class="complete_title">
						<p class="main_title">판매 입찰이 완료되었습니다.</p>
						<p class="sub_title">
						    결제는 거래가 성사되는 시점에<br />
						    등록하신 결제 정보로 자동 처리 됩니다.
						</p>
					</div>
					<div class="complete_btn_box">
						<a href="/TeamProject/user/myPage" class="btn outlinegrey medium" style="cursor: pointer; z-index: 999;"> 내역 상세보기 </a>
						<a href="/TeamProject/shop" class="btn outlinegrey medium" style="cursor: pointer; z-index: 999;"> SHOP 바로가기 </a>
					</div>
					<p class="complete_desc">‘판매내역 &gt; 입찰 중’ 상태일 때는 입찰 지우기가 가능합니다.</p>
				</div>
				<div class="complete_price">
					<div class="">
						<div class="price_total order_info">
							<dl class="price_box">
								<dt class="price_title_total">총 결제금액</dt>
								<dd class="price"><span class="amount">${sellDTO.sell_price + 600}</span><span class="unit">원</span></dd>
							</dl>
							<span class="price_warning" style="display: none;"><em>주의! </em></span>
						</div>
						<div class="price_bind">
						    <dl class="price_addition is_dark">
						        <dt class="price_title_black">
						            <span>판매 희망가</span>
						        </dt>
						        <dd class="price_text" id="hope_price">${sellDTO.sell_price }원</dd>
						    </dl>
						    <dl class="price_addition">
						        <dt class="price_title_gray">
						            <span>검수비</span>
						        </dt>
						        <dd class="price_text">무료</dd>
						    </dl>
						    <dl class="price_addition">
						        <dt class="price_title_gray">
						            <span>수수료</span>
						        </dt>
						        <dd class="price_text">600</dd>
						    </dl>
						    <dl class="price_addition">
						        <dt class="price_title_gray">
						            <span>배송비</span>
						        </dt>
						        <dd class="price_text">무료</dd>
						    </dl>
						</div>
			            <div class="price_bind" style="border-top: 1px solid #ebebeb;">
			                <dl class="price_addition">
			                    <dt class="price_title_dark">
			                        <span>입찰 마감 기한</span>
			                    </dt>
			                    <dd class="price_text">${period }까지</dd>
			                </dl>
			            </div>
			        </div>
			    </div>
			</div>
		</div>
    </div>
</div>

<script>
$(function(){
	var hope_price = $('#hope_price').text();
	$('#hope_price').text(hope_price.substring(0, hope_price.length-1).replace(/\B(?=(\d{3})+(?!\d))/g, ',')+'원');
	
	var total_price = $('.amount').text();
	$('.amount').text(total_price.replace(/\B(?=(\d{3})+(?!\d))/g, ','));
})
</script>
