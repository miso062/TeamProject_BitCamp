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
    padding-top: 60px;
}
.complete_box {
    background-color: #fff;
    box-shadow: 4px 0 10px 0 rgb(0 0 0 / 10%);
}
.buy_complete .product {
    border-radius: 0;
    padding-top: 0;
    height: 260px;
}
.buy_complete .product_img {
    width: 200px;
}
.image {
    object-fit: cover;
    width: 100%;
    height: 100%;
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
    margin-top: 21px;
    font-size: 0;
    display: flex;
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
}
.order_info .price_box {
    display: block;
}
.price_box {
    display: flex;
    -webkit-box-pack: justify;
    justify-content: space-between;
    -webkit-box-align: center;
    align-items: center;
}
.complete_price .price_total .price_title {
    line-height: 18px;
    font-size: 15px;
    letter-spacing: -.15px;
    color: #222;
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
</style>

<div class="container buy lg">
    <div class="content">
        <div class="buy_complete lg">
            <div class="complete_box">
                <div class="product" style="background-color: rgb(235, 240, 245);">
                    <picture class="picture product_img">
                        <img
                            alt="상품 이미지"
                            src="https://kream-phinf.pstatic.net/MjAyMTA3MjhfMjIg/MDAxNjI3NDQxMDA1NjE5.HOgIYywGZaaBJDqUzx2OnX9HAxoOWPvuWHqUn_LZGcgg.VYIuOfA5_GgjBGRowv6dmQuAOPtUvmAxbGpOyUCOCtYg.PNG/p_9d8ed1a74d2540ab9842e63363607bf4.png?type=m"
                            class="image"
                        />
                    </picture>
                </div>
                <div class="complete_detail">
                    <div class="complete_info">
                        <div class="complete_title">
                            <p class="main_title">구매 입찰이 완료되었습니다.</p>
                            <p class="sub_title">
                                거래가 체결되고 상품이 검수에 합격한 후,<br />
                                등록한 계좌로 정산이 진행됩니다.
                            </p>
                        </div>
                        <div class="complete_btn_box">
                            <a href="#" class="btn outlinegrey medium"> 내역 상세보기 </a><a href="#" class="btn outlinegrey medium"> SHOP 바로가기 </a>
                        </div>
                        <p class="complete_desc">'구매내역 &gt; 입찰 중' 상태일 때는 입찰 지우기가 가능합니다.</p>
                    </div>
                    <div class="complete_price">
                        <div class="">
                            <div class="price_total order_info">
                                <dl class="price_box">
                                    <dt class="price_title">정산금액</dt>
                                    <dd class="price"><span class="amount">210,000</span><span class="unit">원</span></dd>
                                </dl>
                                <span class="price_warning" style="display: none;"><em>주의! </em></span>
                            </div>
                            <div class="price_bind">
                                <dl class="price_addition is_dark">
                                    <dt class="price_title">
                                        <span data-v-3a2a7b6b="">구매 희망가</span>
                                    </dt>
                                    <dd class="price_text">210,000원</dd>
                                </dl>
                                <dl class="price_addition">
                                    <dt class="price_title">
                                        <span data-v-3a2a7b6b="">검수비</span>
                                    </dt>
                                    <dd class="price_text">무료</dd>
                                </dl>
                                <dl class="price_addition">
                                    <dt class="price_title">
                                        <span>수수료</span>
                                        <button class="btn_title">
                                            <svg xmlns="http://www.w3.org/2000/svg" class="icon sprite-icons info-circle-white">
                                                <use href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-info-circle-white" xlink:href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-info-circle-white"></use>
                                            </svg>
                                        </button>
                                    </dt>
                                    <dd class="price_text">무료</dd>
                                </dl>
                                <dl class="price_addition">
                                    <dt class="price_title">
                                        <span>배송비</span>
                                    </dt>
                                    <dd class="price_text">선불 ・ 구매자 부담</dd>
                                </dl>
                            </div>
                            <div class="price_bind">
                                <dl class="price_addition">
                                    <dt class="price_title dark">
                                        <span>입찰 마감 기한</span>
                                    </dt>
                                    <dd class="price_text">3일 - 2022/07/17까지</dd>
                                </dl>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layer_point layer lg" style="display: none;">
                <div class="layer_container">
                    <div class="layer_header"><h2 class="title">이용안내</h2></div>
                    <div class="layer_content">
                        <div class="usable_wrap">
                            <div class="usable_point">
                                <h3 class="title">사용 가능한 포인트</h3>
                                <p class="point_box"><span class="point">0</span><span class="unit">P</span></p>
                                <div class="point_info">
                                    <p class="info_item">이번달 소멸 예정 포인트 0P</p>
                                    <p class="info_item">포인트 유효기간은 적립일로부터 최대 1년까지이며, 유형에 따라 달라질 수 있습니다.</p>
                                </div>
                            </div>
                            <ul class="usable_list">
                                <li class="usable_item">1,000P 이상부터 구매금액 제한 없이 사용하실 수 있습니다.</li>
                                <li class="usable_item">입찰 삭제, 거래 취소 시 사용한 포인트는 환불됩니다.</li>
                                <li class="usable_item">먼저 적립된 포인트부터 순서대로 사용되며, 사용하지 않으실 경우 유효기간이 지나면 자동 소멸됩니다.</li>
                                <li class="usable_item">유효기간이 지난 후 환불받은 포인트는 다시 사용하실 수 없습니다.</li>
                            </ul>
                        </div>
                        <div class="layer_btn"><a href="#" class="btn outline medium"> 확인 </a></div>
                    </div>
                    <a href="#" class="btn_layer_close">
                        <svg xmlns="http://www.w3.org/2000/svg" class="ico-close icon sprite-icons">
                            <use href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-close" xlink:href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-ico-close"></use>
                        </svg>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
