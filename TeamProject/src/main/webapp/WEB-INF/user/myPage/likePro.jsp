<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>    
<style type="text/css">
.content_title.border[data-v-88eb18f6] {
    padding-bottom: 16px;
    border-bottom: 3px solid #222;

}
.content_title[data-v-88eb18f6] {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    padding: 5px 0 6px;
}
.title[data-v-88eb18f6] {
    font-size: 24px;
    letter-spacing: -.36px;
}
.title>h3[data-v-88eb18f6] {
    line-height: 29px;
    font-size: inherit;
}
.wish_item[data-v-6af0c2e4], .wish_product[data-v-6af0c2e4] {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
}
.wish_item[data-v-6af0c2e4] {
    padding: 20px 0 19px;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    border-bottom: 1px solid #ebebeb;
    color: inherit;
    -webkit-tap-highlight-color: rgba(0,0,0,.1);
    cursor : pointer;
}
.wish_item[data-v-6af0c2e4], .wish_item[data-v-6af0c2e4]:active,
.wish_item[data-v-6af0c2e4]:focus, .wish_item[data-v-6af0c2e4]:hover {
    text-decoration: none;
}
.wish_product[data-v-6af0c2e4] {
    margin-right: 30px;
}
.wish_product .product_box[data-v-6af0c2e4] {
    -webkit-box-flex: 0;
    -ms-flex: none;
    flex: none;
    width: 80px;
    height: 80px;
}
.product[data-v-75e33658] {
    overflow: hidden;
    position: relative;
    padding-top: 100%;
    border-radius: 8px;
}
.product_img[data-v-75e33658] {
    position: absolute;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%,-50%);
    -ms-transform: translate(-50%,-50%);
    transform: translate(-50%,-50%);
    width: 81.5%;
    height: auto;
}
.picture[data-v-548c90f9] {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
}
.image[data-v-548c90f9] {
    -o-object-fit: cover;
    object-fit: cover;
    width: 100%;
    height: 100%;
    image-rendering: -webkit-optimize-contrast;
}
img, video {
    border: 0;
    vertical-align: top;
    -moz-user-select: none!important;
    -ms-user-select: none!important;
    user-select: none!important;
    -webkit-user-drag: none;
    -webkit-touch-callout: none;
    -webkit-user-select: none;
}
.product_detail[data-v-6af0c2e4] {
    margin-left: 13px;
    text-align: left;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -ms-flex-direction: column;
    flex-direction: column;
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
.name-ko {
    margin-top : 0;
    color : gray;
    font-size : 13px;
}
.product_detail .name[data-v-6af0c2e4] {
    margin-top: 2px;
    overflow: hidden;
    -o-text-overflow: ellipsis;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    max-height: 36px;
    font-size: 13px;
    line-height: 18px;
    letter-spacing: -.03px;
    margin-bottom: 0;

}
.product_detail .size[data-v-6af0c2e4], .wish_buy[data-v-6af0c2e4] {
    display: -webkit-inline-box;
    display: -ms-inline-flexbox;
    display: inline-flex;
}
[class*=brand-] {
    width: auto;
    height: 20px;
}
.product_detail .size[data-v-6af0c2e4] {
    margin-top: auto;
    font-size: 13px;
    font-weight: 700;
    line-height: 16px;
}
.wish_buy[data-v-6af0c2e4] {
    margin-left: auto;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -ms-flex-direction: column;
    flex-direction: column;
    -ms-flex-negative: 0;
    flex-shrink: 0;
    text-align: right;
}
.product_detail .size[data-v-6af0c2e4], .wish_buy[data-v-6af0c2e4] {
    /* display: -webkit-inline-box; */
    display: -ms-inline-flexbox;
    display: inline-flex;
}
.my_interest .division_btn_box[data-v-23bbaa82] {
    margin-top: 0;
    text-align: left;
}
.division_btn_box[data-v-23bbaa82] {
    margin-top: 17px;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    height: 45px;
    width: 105px;
}
.division_btn_box .btn_division.buy[data-v-23bbaa82] {
    background-color: #ef6253;
}
.division_btn_box .btn_division[data-v-23bbaa82] {
    position: relative;
    display: -webkit-inline-box;
    display: -ms-inline-flexbox;
    display: inline-flex;
    -webkit-box-flex: 1;
    -ms-flex: 1;
    flex: 1;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    border-radius: 10px;
    color: #fff;
}

.division_btn_box .title[data-v-23bbaa82] {
    margin:0 auto; 
    font-size:17px; 
    font-weight: bold;
}
.division_btn_box .price[data-v-23bbaa82] {
    margin-left: 10px;
    line-height: 15px;
}
.division_btn_box .amount[data-v-23bbaa82] {
    display: block;
    font-size: 0;
}
.division_btn_box .num[data-v-23bbaa82], .division_btn_box .won[data-v-23bbaa82] {
    display: inline-block;
    vertical-align: top;
    font-weight: 700;
}
.division_btn_box .num[data-v-23bbaa82] {
    font-size: 15px;
}
.division_btn_box .won[data-v-23bbaa82] {
    font-size: 14px;
    letter-spacing: -.21px;
}
.my_interest .division_btn_box .desc[data-v-23bbaa82] {
    font-weight: 400;
}

.wish_buy .status_link[data-v-6af0c2e4] {
    margin-top: 6px;
    padding: 0 3px;
    display: -ms-inline-flexbox;
    font-size: 12px;
    letter-spacing: -.06px;
    color: rgba(34,34,34,.8);
    text-decoration: underline;
}
.pagination[data-v-bffefc20] {
    padding: 28px 0;
}
.pagination_box[data-v-bffefc20] {
    position: relative;
    font-size: 0;
    text-align: center;
} 
.pagination_box.first .prev_btn_box[data-v-bffefc20],
.pagination_box.last .next_btn_box[data-v-bffefc20] {
    display: none;
}
.prev_btn_box[data-v-bffefc20] {
    margin-right: 25px;
}
.next_btn_box[data-v-bffefc20], 
.prev_btn_box[data-v-bffefc20] {
    display: inline-block;
    vertical-align: top;
}
.next_btn_box .btn_arr[data-v-bffefc20], 
.prev_btn_box .btn_arr[data-v-bffefc20] {
    padding: 3px;
    width: 24px;
    height: 24px;
}
[class*=arr-page-][data-v-bffefc20] {
    width: 18px;
    height: 22px;
}
.next_btn_box .btn_arr+.btn_arr[data-v-bffefc20], 
.prev_btn_box .btn_arr+.btn_arr[data-v-bffefc20] {
    margin-left: 5px;
}
.next_btn_box .btn_arr[data-v-bffefc20], 
.prev_btn_box .btn_arr[data-v-bffefc20] {
    padding: 3px;
    width: 24px;
    height: 24px;
}
.page_bind[data-v-bffefc20] {
    display: inline-block;
    vertical-align: top;
}
.btn_page.active[data-v-bffefc20] {
    font-weight: 700;
    color: #222;
}
.btn_page[data-v-bffefc20] {
    display: inline-block;
    padding: 0 8px;
    font-size: 16px;
    color: rgba(34,34,34,.5);
}   
</style>    
<div class="my_interest">
    <div data-v-88eb18f6="" class="content_title border">
        <div data-v-88eb18f6="" class="title">
            <h3 data-v-88eb18f6="">관심 상품</h3>
            <!---->
        </div>
        <!---->
    </div>
    <ul data-v-6af0c2e4="" class="wish_list">
        <li data-v-6af0c2e4="">
            <div data-v-6af0c2e4="" href="#" class="wish_item">
                <div data-v-6af0c2e4="" class="wish_product">
                    <div data-v-6af0c2e4="" class="product_box">
                        <div data-v-75e33658="" data-v-6af0c2e4="" class="product" style="background-color: rgb(244, 244, 244);">
                            <picture data-v-548c90f9="" data-v-75e33658="" class="picture product_img">
                                <source
                                    data-v-548c90f9=""
                                    type="image/webp"
                                    srcset="
                                        https://kream-phinf.pstatic.net/MjAyMjA0MTNfMjY4/MDAxNjQ5ODQyMTA1ODc0.-TvJ4Ce3ZEkJvgGL1EA64df67Vyow_t31WKv126nxbwg.s_s7bWMGTmnEAKAuQ-Iz4Ml9oKoaxIIvp4QcLNdbHfog.PNG/a_3e9ab26474954befb3fb619a0ec2191d.png?type=m_webp
                                    "
                                />
                                <source
                                    data-v-548c90f9=""
                                    srcset="
                                        https://kream-phinf.pstatic.net/MjAyMjA0MTNfMjY4/MDAxNjQ5ODQyMTA1ODc0.-TvJ4Ce3ZEkJvgGL1EA64df67Vyow_t31WKv126nxbwg.s_s7bWMGTmnEAKAuQ-Iz4Ml9oKoaxIIvp4QcLNdbHfog.PNG/a_3e9ab26474954befb3fb619a0ec2191d.png?type=m
                                    "
                                />
                                <img
                                    data-v-548c90f9=""
                                    alt="Hermes Izmir Sandal Calfskin &amp; Gold"
                                    src="https://kream-phinf.pstatic.net/MjAyMjA0MTNfMjY4/MDAxNjQ5ODQyMTA1ODc0.-TvJ4Ce3ZEkJvgGL1EA64df67Vyow_t31WKv126nxbwg.s_s7bWMGTmnEAKAuQ-Iz4Ml9oKoaxIIvp4QcLNdbHfog.PNG/a_3e9ab26474954befb3fb619a0ec2191d.png?type=m"
                                    class="image"
                                />
                            </picture>
                            <!----><!----><!---->
                        </div>
                    </div>
                    <div data-v-6af0c2e4="" class="product_detail">
                        <div data-v-6af0c2e4="" class="brand"><a data-v-6af0c2e4="" class="brand-text"> Hermes </a></div>
                        <p data-v-6af0c2e4="" class="name">Hermes Izmir Sandal Calfskin &amp; Gold</p>
                        <p class="name-ko">에르메스 이즈미르 샌들 카프스킨 & 골드</p>
                    </div>
                </div>
                <div data-v-6af0c2e4="" class="wish_buy">
                    <div data-v-6af0c2e4="">
                        <div data-v-23bbaa82="" data-v-6af0c2e4="" class="division_btn_box lg">
                            <a data-v-23bbaa82="" href="#" class="btn_division buy">
                                <div data-v-23bbaa82="" class="title">구매</div>
                            </a>
                        </div>
                        <a data-v-6af0c2e4="" href="#" class="status_link">삭제</a>
                    </div>
                    <!---->
                </div>
            </div>
        </li>
        <li data-v-6af0c2e4="">
            <div data-v-6af0c2e4="" href="#" class="wish_item">
                <div data-v-6af0c2e4="" class="wish_product">
                    <div data-v-6af0c2e4="" class="product_box">
                        <div data-v-75e33658="" data-v-6af0c2e4="" class="product" style="background-color: rgb(244, 244, 244);">
                            <picture data-v-548c90f9="" data-v-75e33658="" class="picture product_img">
                                <source
                                    data-v-548c90f9=""
                                    type="image/webp"
                                    srcset="
                                        https://kream-phinf.pstatic.net/MjAyMTEyMDJfMjUw/MDAxNjM4NDIyMTM5MzY4.R9ZV4AuKye2tKA3g6W_zCeDEKTWgsAhJyYnbAvjFAYsg.PQ8cY_jktruT6TjdGhhczKmkySmR-wfv7rhv-gmJWmAg.PNG/a_0bfa4c7bd3f64cc5b2f6689f97607277.png?type=m_webp
                                    "
                                />
                                <source
                                    data-v-548c90f9=""
                                    srcset="
                                        https://kream-phinf.pstatic.net/MjAyMTEyMDJfMjUw/MDAxNjM4NDIyMTM5MzY4.R9ZV4AuKye2tKA3g6W_zCeDEKTWgsAhJyYnbAvjFAYsg.PQ8cY_jktruT6TjdGhhczKmkySmR-wfv7rhv-gmJWmAg.PNG/a_0bfa4c7bd3f64cc5b2f6689f97607277.png?type=m
                                    "
                                />
                                <img
                                    data-v-548c90f9=""
                                    alt="Maison Mihara Yasuhiro Blakey OG Sole Canvas Low-top Sneaker Black White"
                                    src="https://kream-phinf.pstatic.net/MjAyMTEyMDJfMjUw/MDAxNjM4NDIyMTM5MzY4.R9ZV4AuKye2tKA3g6W_zCeDEKTWgsAhJyYnbAvjFAYsg.PQ8cY_jktruT6TjdGhhczKmkySmR-wfv7rhv-gmJWmAg.PNG/a_0bfa4c7bd3f64cc5b2f6689f97607277.png?type=m"
                                    class="image"
                                />
                            </picture>
                            <!----><!----><!---->
                        </div>
                    </div>
                    <div data-v-6af0c2e4="" class="product_detail">
                        <div data-v-6af0c2e4="" class="brand"><a data-v-6af0c2e4="" class="brand-text"> Mihara Yasuhiro </a></div>
                        <p data-v-6af0c2e4="" class="name">Maison Mihara Yasuhiro Blakey OG Sole Canvas Low-top Sneaker Black White</p>
                        <p class="name-ko">메종 미하라 야스히로 블레이키 OG 솔 캔버스 로우탑 스니커 블랙 화이트</p>
                    </div>
                </div>
                <div data-v-6af0c2e4="" class="wish_buy">
                    <div data-v-6af0c2e4="">
                        <div data-v-23bbaa82="" data-v-6af0c2e4="" class="division_btn_box lg">
                            <a data-v-23bbaa82="" href="#" class="btn_division buy">
                                <div data-v-23bbaa82="" class="title">구매</div>
                            </a>
                        </div>
                        <a data-v-6af0c2e4="" href="#" class="status_link">삭제</a>
                    </div>
                    <!---->
                </div>
            </div>
        </li>
    </ul>
    <div data-v-bffefc20="" class="pagination">
        <div data-v-bffefc20="" class="pagination_box first last">
            <div data-v-bffefc20="" class="prev_btn_box">
                <a data-v-bffefc20="" href="/my/wish?page=1" class="btn_arr" aria-label="첫 페이지">
                    <svg data-v-bffefc20="" xmlns="http://www.w3.org/2000/svg" class="arr-page-first icon sprite-icons">
                        <use data-v-bffefc20="" href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-arr-page-first" xlink:href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-arr-page-first"></use>
                    </svg>
                </a>
                <a data-v-bffefc20="" href="/my/wish?page=0" class="btn_arr" aria-label="이전 페이지">
                    <svg data-v-bffefc20="" xmlns="http://www.w3.org/2000/svg" class="arr-page-prev icon sprite-icons">
                        <use data-v-bffefc20="" href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-arr-page-prev" xlink:href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-arr-page-prev"></use>
                    </svg>
                </a>
            </div>
            <div data-v-bffefc20="" class="page_bind"><a data-v-bffefc20="" href="/my/wish?page=1" class="btn_page active" aria-label="1페이지"> 1 </a></div>
            <div data-v-bffefc20="" class="next_btn_box">
                <a data-v-bffefc20="" href="/my/wish?page=2" class="btn_arr" aria-label="다음 페이지">
                    <svg data-v-bffefc20="" xmlns="http://www.w3.org/2000/svg" class="arr-page-next icon sprite-icons">
                        <use data-v-bffefc20="" href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-arr-page-next" xlink:href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-arr-page-next"></use>
                    </svg>
                </a>
                <a data-v-bffefc20="" href="/my/wish?page=1" class="btn_arr" aria-label="마지막 페이지">
                    <svg data-v-bffefc20="" xmlns="http://www.w3.org/2000/svg" class="arr-page-last icon sprite-icons">
                        <use data-v-bffefc20="" href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-arr-page-last" xlink:href="/_nuxt/a7a7eb5a7757da9bd1f7f0de66705692.svg#i-arr-page-last"></use>
                    </svg>
                </a>
            </div>
        </div>
    </div>
    <!---->
</div>
<script type="text/javascript">
window.onload = function() {
	
	$('.snb_menu').eq(0).find('.menu_link').eq(2).removeClass('unbold');
	$('.snb_menu').eq(0).find('.menu_link').eq(2).addClass('bold');
	
}



</script>

