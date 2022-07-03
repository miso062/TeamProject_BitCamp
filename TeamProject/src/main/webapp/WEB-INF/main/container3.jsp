<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">
body {
	font-family: -apple-system, BlinkMacSystemFont, Roboto,
		AppleSDGothicNeo-Regular, NanumBarunGothic, NanumGothic, 나눔고딕,
		Segoe UI, Helveica, Arial, Malgun Gothic, Dotum, sans-serif;
	color: #222;
}

#c3_shortcut_collection, #c3_social_style_slide {
	margin-top: 50px;
	padding-top: 0;
	padding-bottom: 0;
}

#c3_style_title {
	padding: 0 40px 20px;
	font-size: 24px;
	letter-spacing: -.12px;
	font-weight: 700;
	color: #000;
	margin: 0 270px;
}

#c3_brand_title {
	padding: 0 40px;
	font-size: 20px;
	letter-spacing: -.1px;
	font-weight: 700;
	color: #000;
}

#c3_brand_sub_title {
	padding: 0 40px;
	font-size: 14px;
	letter-spacing: -.21px;
	color: rgba(34, 34, 34, .5);
}

#c3_shorcut_items_wrap {
	margin: 0 auto;
	/* padding: 0 32.5px; */
	max-width: 1280px;
	margin-top: 20px;
}

.c3_shortcut_item {
	text-align: center;
	width: calc(20% - 20px);
	display: inline-block;
	margin: 0 7.5px;
	cursor: pointer;
}

.c3_shortcut_item_img_wrap {
	border-radius: 10px;
	height: 100px;
	position: relative;
	/* padding: 2px; */
	vertical-align: middle;
	text-align: center;
	margin: 1px;
	border: 1px solid rgba(34, 34, 34, .05);
}

.c3_shortcut_item_image {
	background-color: rgb(238, 240, 243);
	border-radius: 9px;
	overflow: hidden;
	width: auto;
	height: 100%;
	display: flex;
	box-sizing: border-box;
}

.slick-arrow {
    z-index: 10;
    width: 30px;
    height: 30px;
    border-radius: 50%;
    background-color: gray;
    border: none;
    cursor: pointer;
}
.c3_slick-prev {
	background: url("/TeamProject/img/container3/left-arrow.png") no-repeat 0 0;
}
.c3_slider-wrap{
    margin: 0 auto;
    /* padding: 0 32.5px; */
    max-width: 1280px;
    margin-top: 20px;
    border: 1px sold black;
}

.c3_slick-prev {
    left: 30px;
    text-align: center;
    vertical-align: middle;
}

.c3_slick-next {
    right: 30px;
    text-align: center;
    vertical-align: middle;

}
.post-slider{
  width:70%;
  margin:0px auto;
  position:relative;
}
.post-slider .silder-title{
  text-align:center;
  margin:30px auto;
}
.post-slider .next{
  position:absolute;
  top:50%;
  right:30px;
  font-size:2em;
  color:gray;
  cursor: pointer;
}
.post-slider .prev{
  position:absolute;
  top:50%;
  left:30px;
  font-size:2em;
  color:gray;
    cursor: pointer;
}
.post-slider .post-wrapper{
  width:84%;
  height:350px;
  margin:0px auto;
  overflow: hidden;
  padding:10px 0px 10px 0px;
}
.post-slider .post-wrapper .post{
  width:300px;
  height:300px;
  margin:0px 10px;
  display:inline-block;
  background:white;
  border-radius: 5px;
}
.post-slider .post-wrapper .post .post-info{
  font-size:15px;
  height:30%;
  padding-left:10px;
}
.post-slider .post-wrapper .post .slider-image{
  width:100%;
  height:175px;
  border-top-left-radius:5px;
  border-top-right-radius:5px;
}

.c3_card_link {
    display: block;
    overflow: hidden;
    position: relative;
    margin: 0 9px;
    padding-top: 121.186%;
    border-radius: 10px;
    outline-width: 0;
    outline: none;
}
.c3_card_link:after {
    content: "";
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background-image: -webkit-gradient(linear, left bottom, left top, from(rgba(0, 0, 0, 0.5)), color-stop(30%, rgba(0, 0, 0, 0)));
    background-image: -o-linear-gradient(bottom, rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0) 30%);
    background-image: linear-gradient(0deg, rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0) 30%);
    border-radius: inherit;
    border: 1px solid #ebebeb;
}
.c3_img_card {
    position: absolute;
    overflow: hidden;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);
    max-height: 100%;
}
.c3_profile_img_box {
    position: absolute;
    top: 8px;
    left: 8px;
    width: 36px;
    height: 36px;
    border-radius: 100%;
    z-index: 10;
}
.c3_profile_img_box:after {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    border: 2px solid #fff;
    border-radius: inherit;
}
.c3_img_profile {
    width: 100%;
    height: 100%;
    border-radius: inherit;
    -o-object-fit: cover;
    object-fit: cover;
}
.c3_user_name {
    position: absolute;
    left: 8px;
    right: 8px;
    bottom: 12px;
    overflow: hidden;
    -o-text-overflow: ellipsis;
    text-overflow: ellipsis;
    white-space: nowrap;
    font-size: 13px;
    color: #fff;
    z-index: 10;
}

.slider-wrap {
	
}
</style>
<script type="text/javascript">
	$(function() {
		$.noConflict();
		$('.c3_slider-wrap')
			.slick(
				{
					slide : 'div', //슬라이드 되어야 할 태그
					infinite : false, //무한 반복 옵션     
					slidesToShow : 6, // 한 화면에 보여질 컨텐츠 개수
					slidesToScroll : 1, //스크롤 한번에 움직일 컨텐츠 개수
					speed : 500, // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
					prevArrow : "<div class='c3_slick-prev'><<div>",
					nextArrow : "<div class='c3_slick-next'>></div>",
					draggable : true, //드래그 가능 여부 
					responsive : [ // 반응형 웹 구현 옵션
					{
						breakpoint : 960, //화면 사이즈 960px
						settings : {
							slidesToShow : 4
						}
					}, {
						breakpoint : 768, //화면 사이즈 768px
						settings : {
							slidesToShow : 5
						}
					} ]
	
				});
	})
</script>

<!-- <img src="/TeamProject/img/test.svg" alt="search_img"> -->
<div id="test" style="background: url('/TeamProject/img/container3/left-arrow.png') no-repeat 0 0;"> hi </div>

<div id="c3_social_style_slide">
	<div id="c3_style_title">
		<span>Style Picks!</span>
	</div>
	<div class="c3_slider-wrap">
		<div class="c3_style_card" tabindex="-1" style="width: 100%; display: inline-block;">
			<a href="#" class="c3_card_link"> 
				<img src="https://kream-phinf.pstatic.net/MjAyMjA3MDFfMTgy/MDAxNjU2NjUwODQzOTE0.mP4vlmA4kSWxxRZnSQc7PZbw-CDRpi1VzgEp23u4hDwg.YqlC-OMgSsQqKFMO5Pu-ud3SjAGUTXlUnW9Vb477i-kg.JPEG/p_e0f1134bbbc2495882c6bb1f35670b8f.jpeg?type=m" alt="스타일 카드" class="c3_img_card" />
				<div class="c3_profile_img_box">
					<img
						src="https://kream-phinf.pstatic.net/MjAyMjAxMDRfMTU5/MDAxNjQxMjkzNjQwMjQx.rlOBXXGu9dkTHd65BQo0Asis28WT9FvcZ4GPI0atpREg.PKshpFurxgE510wchaQU3Oq4fMbRQ4kEuMEiE4jvtNcg.JPEG/p_fc595938a8504da4bc722de43f742ed6.jpeg?type=sl"
						alt="사용자 프로필 이미지" class="c3_img_profile" />
				</div>
				<p class="c3_user_name">@soobongzzi</p>
			</a>
		</div>
		<div class="c3_style_card" tabindex="-1" style="width: 100%; display: inline-block;">
			<a href="#" class="c3_card_link"> <img
				src="https://kream-phinf.pstatic.net/MjAyMjA3MDFfMTcw/MDAxNjU2NjUyMDc2ODgw.8mkcMy5gSm_DZ8ZlP0fOjNfJlvdkXTR02VjU7q8d3Z0g.KPjoKqjdnOZ8PN8128yFBoxhUZWhIwcdgchnmXQKXRcg.JPEG/p_7b778833e0334f4a8be262aca14b5de1.jpeg?type=m"
				alt="스타일 카드" class="c3_img_card" />
				<div class="c3_profile_img_box">
					<img
						src="https://kream-phinf.pstatic.net/MjAyMjA2MjNfMTAw/MDAxNjU1OTY0NjgxNDIy.3tO52D1RN9pRIG-YrD5C8xeEPolDx2jxxczIwFmYL44g.5VIM4uIo7VDNySepUqIaxkzwgVjZX_D5Vr3Kahhab1kg.JPEG/p_cd3fa81678cc44888f9e480a5d122021.jpeg?type=sl"
						alt="사용자 프로필 이미지" class="c3_img_profile" />
				</div>
				<p class="c3_user_name">@dx___xk</p>
			</a>
		</div>
		<div class="c3_style_card" tabindex="-1" style="width: 100%; display: inline-block;">
			<a href="#" class="c3_card_link"> <img
				src="https://kream-phinf.pstatic.net/MjAyMjA3MDFfMTU0/MDAxNjU2NjU3ODczMTA3.9w1RBzh2O4GGA-Fms0gtJNNe5w7RqCGlkAA6Y1-brcAg.VOrTvz3GR6BTV0JSivDjldVDwIyfkza33u0sp-uAVqgg.JPEG/p_c584bc416e6342f1810e6344940527d3.jpeg?type=m"
				alt="스타일 카드" class="c3_img_card" />
				<div class="c3_profile_img_box">
					<img
						src="https://kream-phinf.pstatic.net/MjAyMTEyMTdfODMg/MDAxNjM5NzI4OTE3Mzcz.MAlKYLmwYSBHHw3D6ZLuiI-y5qBbSvOxnm-2PBq6vfUg.Egq0nUgF7GEKLr7kOTle029oWYr12GRyndz6SIq0c8Ig.JPEG/p_16ce8ccc39804550bc086aa904b319bb.jpeg?type=sl"
						alt="사용자 프로필 이미지" class="c3_img_profile" />
				</div>
				<p class="c3_user_name">@y.mj_</p>
			</a>
		</div>
		<div class="c3_style_card" tabindex="-1" style="width: 100%; display: inline-block;">
			<a href="#" class="c3_card_link"> <img
				src="https://kream-phinf.pstatic.net/MjAyMjA3MDFfNDMg/MDAxNjU2NjYzNDMzMzI0.X_DYxOanK5L5WXy1R0h_FO9diyDX17A8--476lMhYikg.MNOsYpJU-ew2TzibMV8dWHdlIJdHIgAvzLJ_dL7dbKIg.JPEG/p_04e751bb231243d5a6098d99fe6c02e2.jpeg?type=m"
				alt="스타일 카드" class="c3_img_card" />
				<div class="c3_profile_img_box">
					<img
						src="https://kream-phinf.pstatic.net/MjAyMjA2MjJfNTAg/MDAxNjU1ODczNjU2Mjc4.MIvmuYCgZG_PV5AuLy1HvmE3X3b73wNMa2qlnQmigowg.Ji3fnVl975TbXDTfAeTioWs7mTjuSxYL_m6vZVn-WWMg.JPEG/p_3e6ee6891b4146279731eec509306d64.jpeg?type=sl"
						alt="사용자 프로필 이미지" class="c3_img_profile" />
				</div>
				<p class="c3_user_name">@soybeen</p>
			</a>
		</div>
		<div class="c3_style_card" tabindex="-1" style="width: 100%; display: inline-block;">
			<a href="#" class="c3_card_link"> <img
				src="https://kream-phinf.pstatic.net/MjAyMjA3MDFfMTk1/MDAxNjU2NjYzODgyNzk4.H3_NoxyHrXtRGTesNt0nXpEsaY-56ch124ceQF4JZ30g.W5kb4_suHLP_hiawVXecpNW2a07HlrmDWeNKYmSe4XIg.JPEG/p_1d4448801aef4055adcbb2f605702e1e.jpeg?type=m"
				alt="스타일 카드" class="c3_img_card" />
				<div class="c3_profile_img_box">
					<img
						src="https://kream-phinf.pstatic.net/MjAyMTEwMTdfMTcy/MDAxNjM0NDQyNjE2OTAw.zcttZMktG1r7UzTGLx1O0xNa3NpIpY5sv1OT3TsISeUg.htPxm_M5js-UOSoE-EmPj1xBbPMtUAue7vsuDkjkzXcg.JPEG/p_fa4534f074834c7283a6f0284d188e93.jpeg?type=sl"
						alt="사용자 프로필 이미지" class="c3_img_profile" />
				</div>
				<p class="c3_user_name">@mangocheezz</p>
			</a>
		</div>
		<div class="c3_style_card" tabindex="-1" style="width: 100%; display: inline-block;">
			<a href="#" class="c3_card_link"> <img
				src="https://kream-phinf.pstatic.net/MjAyMjA3MDFfODIg/MDAxNjU2NjYyNzIyOTg4.6kDyGQTAup16bbWMLxvtcnCshzTdGc8_v7R1wos6Vc4g.ReTErK5Uft95cEWUo88q50a50bQumlY6TjSiKaIgfdsg.JPEG/p_b689567792dc445baf567ffdf0c8daae.jpg?type=m"
				alt="스타일 카드" class="c3_img_card" />
				<div class="c3_profile_img_box">
					<img
						src="https://kream-phinf.pstatic.net/MjAyMTEwMDlfMTU0/MDAxNjMzNzYxNDU5OTk5.AtMfuh1nwXMG2WEHy_oc4rSY2Sbbw3GXRsqItHnheXcg.fUNcM6OZl44GYQaoohGx_AjoZn5rZJvOP5FQNCMyuSEg.JPEG/p_ff30ec3176f1402dabef197543a500cb.jpg?type=sl"
						alt="사용자 프로필 이미지" class="c3_img_profile" />
				</div>
				<p class="c3_user_name">@yasaeng</p>
			</a>
		</div>
		<div class="c3_style_card" tabindex="-1" style="width: 100%; display: inline-block;">
			<a href="#" class="c3_card_link"> <img
				src="https://kream-phinf.pstatic.net/MjAyMjA3MDFfMTcw/MDAxNjU2NjYzNjY1MTQx.DhiZsnwktgULdRNYrXxsSgWcGUwhNQpbXQDNgvgl_-Mg.cPNNZVjRNAG3SKSoPdIpsDgzplbIEetNl5uaRSWOg1Ug.JPEG/p_996e7f4a289b4991ae3ba55efe6d177c.jpeg?type=m"
				alt="스타일 카드" class="c3_img_card" />
				<div class="c3_profile_img_box">
					<img
						src="https://kream-phinf.pstatic.net/MjAyMjA0MjNfMjkg/MDAxNjUwNjQ2NjE5NjI4.4--iKKNvb6pLK-jp3nPCphJ0PAc2nc-QvjKJlZkW6zog.PoVuNDesIE0YG7rVVQmMJRokgybmUuTsjuKO-0DAnAAg.JPEG/p_d081704f3ee546bf8d0efe8f06949711.jpeg?type=sl"
						alt="사용자 프로필 이미지" class="c3_img_profile" />
				</div>
				<p class="c3_user_name">@hsd_09_</p>
			</a>
		</div>
		<div class="style_card" tabindex="-1" style="width: 100%; display: inline-block;">
			<a href="#" class="c3_card_link"> <img
				src="https://kream-phinf.pstatic.net/MjAyMjA3MDFfMjkx/MDAxNjU2NjYyNzk4ODI4.DAeg53XOKShArGETgnO037PPXYucyOo3R1NNP5iy3d4g.9jIjwwj-UcnCQP4_Hn84qv7ltJqZBD7gv8stJ-ggWUQg.JPEG/p_6e5278a641f3429a903903ba092fba51.jpeg?type=m"
				alt="스타일 카드" class="c3_img_card" />
				<div class="c3_profile_img_box">
					<img
						src="https://kream-phinf.pstatic.net/MjAyMjA0MThfMjQ2/MDAxNjUwMjQ1Nzk0MjU1.61-q3Da67AXVhyWG8XtDNgwc8abFaZKH3a1I9m1sr1Yg.1rfSSylzBj43NdxQKSBs8G5l1Y4jQUWiQRnOERBJuo4g.JPEG/p_e6d9ef2e95424b1ba62fd4eab948eed0.jpeg?type=sl"
						alt="사용자 프로필 이미지" class="c3_img_profile" />
				</div>
				<p class="c3_user_name">@o5_17__</p>
			</a>
		</div>
		<div class="c3_style_card" tabindex="-1" style="width: 100%; display: inline-block;">
			<a href="#" class="c3_card_link"> <img
				src="https://kream-phinf.pstatic.net/MjAyMjA3MDFfMjEw/MDAxNjU2NjU4NTQwMzA2.qRofdlrT162wOrjT_jc2dQcmjFuNCCVk1jU41SZq-m8g.frkLAfQtQCxETK46m-jzRGCEw0e-V-eQlI1Tq6-S6Tsg.JPEG/p_d0a23736167a46b5807163957b1c949d.jpeg?type=m"
				alt="스타일 카드" class="c3_img_card" />
				<div class="c3_profile_img_box">
					<img
						src="https://kream-phinf.pstatic.net/MjAyMjAyMDdfMjkx/MDAxNjQ0MjQzNjExNTAz.jk-yYcQrqhXJ3Wa7dxw290IB0NtWk5TroLRrjAaMTLMg.NiejbqVs2zF3sKHz08iqySw-Cz4Mt5v115QkBPsp2qMg.JPEG/p_b9bab674824d4e79ac2100747cd1548b.jpeg?type=sl"
						alt="사용자 프로필 이미지" class="c3_img_profile" />
				</div>
				<p class="c3_user_name">@5dong2</p>
			</a>
		</div>
		<div class="c3_style_card" tabindex="-1" style="width: 100%; display: inline-block;">
			<a href="#" class="c3_card_link"> <img
				src="https://kream-phinf.pstatic.net/MjAyMjA3MDFfODEg/MDAxNjU2NjYzNTY5MTgx.9MA4nRhnHvUHU2Ju6QlFLa4qVOHbsRnLU76OjHhpLQcg.Aa70MigieqPRd5aoWE58Tk6X-jaYHXTi0plGq08dYg4g.JPEG/p_f4517ae603804076ae53f1390dcf534b.jpeg?type=m"
				alt="스타일 카드" class="c3_img_card" />
				<div class="c3_profile_img_box">
					<img
						src="https://kream-phinf.pstatic.net/MjAyMjAxMjBfMSAg/MDAxNjQyNjE0NTM4MzQ2.KDIgivbJC9z3tyx-sMj3ebXlWCPD-P2aSzkfL8h4DIwg.OI2_O6Ds4WTV7XjgEl5ItOeM5geZw9vagtjOtIalPfQg.JPEG/p_45f7d70929504489805c2340bf9fb5e2.jpeg?type=sl"
						alt="사용자 프로필 이미지" class="c3_img_profile" />
				</div>
				<p class="c3_user_name">@kkwang_hyuni</p>
			</a>
		</div>
		
		<div class="c3_style_card" tabindex="-1" style="width: 100%; display: inline-block;">
			<a href="#" class="c3_card_link"> <img
				src="https://kream-phinf.pstatic.net/MjAyMjA3MDFfMjM0/MDAxNjU2NjY0NTU4ODY0.6QY0b3TrhlQx_OtacWjtE_j2SmX4gzVRUbNn36GKs5gg.CmWfPydtwB4-uRxo5Mx2DqIe68Ro_hOhXWdaDuUN-7Yg.JPEG/p_1054cdec41ec4f829bbc893d557fd050.jpeg?type=m"
				alt="스타일 카드" class="c3_img_card" />
				<div class="c3_profile_img_box">
					<img
						src="https://kream-phinf.pstatic.net/MjAyMjA0MjhfMTk3/MDAxNjUxMTE0ODY4NDMx.L30CC9_ONEO6PmaJvH3jx4P6xF8zYTFIG8Hk_Ksvs7gg.ftLzhicV5u-n0iNdgNVC5LbRT2m42QFFfuCSdOfijbAg.JPEG/p_d1adff46d9de48268beffde66f18f1b7.jpeg?type=sl"
						alt="사용자 프로필 이미지" class="c3_img_profile" />
				</div>
				<p class="c3_user_name">@hyuny_haney</p>
			</a>
		</div>
	</div>
</div>

<div id="c3_shortcut_collection">
	<div id="c3_brand_title_area" style="margin: 0 270px;">
		<div id="c3_brand_title">Brand Focus</div>
		<div id="c3_brand_sub_title">모두가 좋아하는 브랜드</div>
	</div>
	<div id="c3_shorcut_items_wrap">

		<div id="c3_shortcut_items">
			<div class="c3_shortcut_item">
				<div class="c3_shortcut_item_img_wrap">
					<img
						src="https://kream-phinf.pstatic.net/MjAyMjAxMzBfMTM3/MDAxNjQzNDc0MTE0OTI2.ZFfPgXcv3RK6Vwq3uJ-68i_x_GkdwTMkmSviIUeT1Rsg.nK9E3iIb4pwjZJyuuPv6zvll7qinQXp3oCYlvTCQHvQg.JPEG/a_aa5e0d0985e54d5d9a994d259d60d094.jpg?type=m"
						class="c3_shortcut_item_image" />
				</div>
				<p class="c3_shortcut_item_title">에르메스</p>
			</div>
			<div class="c3_shortcut_item">
				<div class="c3_shortcut_item_img_wrap">
					<img
						src="https://kream-phinf.pstatic.net/MjAyMjAxMTRfMTQg/MDAxNjQyMTU5MzEwMDYw.ss_73yHanBN6T4rzVF-hJh6Udnl1yuRUpZ-fj2b0cscg.f-z2b4E4ZsnpTfufeMHpQIr0I_VXuH_64cfQ_P-Qe_Ag.JPEG/a_d2137f7263774398a6bcb40ac80a23d9.jpg?type=m_webp"
						class="c3_shortcut_item_image" />
				</div>
				<p class="c3_shortcut_item_title">샤넬</p>
			</div>
			<div class="c3_shortcut_item">
				<div class="c3_shortcut_item_img_wrap">
					<img
						src="https://kream-phinf.pstatic.net/MjAyMjAxMTRfMjIg/MDAxNjQyMTU5MzUzOTg4.5SpDID1nc_hWWQsZkHhCcSqY73GqyY7WP1O_OqLJUJAg.-slYw9TPwR6CBZV0-V7JBtwidOH-LRaLvHd7aPhVT7cg.JPEG/a_513b4583ddab4d92bbe57b339be50176.jpg?type=m_webp"
						class="c3_shortcut_item_image" />
				</div>
				<p class="c3_shortcut_item_title">루이비통</p>
			</div>
			<div class="c3_shortcut_item">
				<div class="c3_shortcut_item_img_wrap">
					<img
						src="https://kream-phinf.pstatic.net/MjAyMjA0MTRfNTQg/MDAxNjQ5OTIzMjcyMTYx.RsyilX1oyq6H3NitCMjy7x2a7qQt9jsn9Lz5_wmXxz8g.mjpvQhbh320BJPbm6xr82a49phjuIxQPmZWQiuuTXdkg.JPEG/a_bdf6bfcbf4b341989ab1d3e47a8ca264.jpg?type=m_webp"
						class="c3_shortcut_item_image" />
				</div>
				<p class="c3_shortcut_item_title">까르띠에</p>
			</div>
			<div class="c3_shortcut_item">
				<div class="c3_shortcut_item_img_wrap">
					<img
						src="https://kream-phinf.pstatic.net/MjAyMjAzMjhfMTAx/MDAxNjQ4NDYyODQ4OTE5.GeEMp7eZbcXScJymhCOafuSNDIO-UcJ3I7fsC3Lc4jgg.rc2wWiFpIOG3swARtLgE5Un7XNLyjV7DQm20BX7TeP0g.JPEG/a_0a2d24224cd54d9b9d8adb17ea9e5cf8.jpg?type=m_webp"
						class="c3_shortcut_item_image" />
				</div>
				<p class="c3_shortcut_item_title">롤렉스</p>
			</div>
		</div>
		
		<div id="c3_shortcut_items">
			<div class="c3_shortcut_item">
				<div class="c3_shortcut_item_img_wrap">
					<img
						src="https://kream-phinf.pstatic.net/MjAyMjA2MjJfMTAw/MDAxNjU1ODYwNjQyMjY1.VYHV7omf-OSEbzRf2q0rbM8chr3NPE48cJctrc3Ro-Qg.hH5pmBzYRTQ6MRgnRqMqQ3XJQQzbt8YLLBAP4JeG6Vkg.JPEG/a_c4ca15fc9ef543cab4cc7bf95aa504fe.jpg?type=m"
						class="c3_shortcut_item_image" />
				</div>
				<p class="c3_shortcut_item_title">디올</p>
			</div>
			<div class="c3_shortcut_item">
				<div class="c3_shortcut_item_img_wrap">
					<img
						src="https://kream-phinf.pstatic.net/MjAyMjA2MjJfMjUy/MDAxNjU1ODYwNjc0NTQx.Ko99LhrbDP8UGu4Myk2SgAT5naqpVCxAuFD2IPzeK7sg.btlFi_yPYqat7oDxk37Rrc0-BrxEs_-Tbb76oCXK8-8g.JPEG/a_3c7d846139794f86b403b620bb6c16b7.jpg?type=m"
						class="c3_shortcut_item_image" />
				</div>
				<p class="c3_shortcut_item_title">우영미</p>
			</div>
			<div class="c3_shortcut_item">
				<div class="c3_shortcut_item_img_wrap">
					<img
						src="https://kream-phinf.pstatic.net/MjAyMjAzMjhfMjMg/MDAxNjQ4NDYyOTU5Nzcx.RJnl3oEgQBZ2as_lvroRmi4ERSmXn4usW1ENJ4-7RCgg.GKhTIE_k-2iHAlZ2vHL__QPEZrrXuJ5HNaXA-C_0DDAg.JPEG/a_458b5f3676814738a902f8ddfad9b007.jpg?type=m"
						class="c3_shortcut_item_image" />
				</div>
				<p class="c3_shortcut_item_title">프라다</p>
			</div>
			<div class="c3_shortcut_item">
				<div class="c3_shortcut_item_img_wrap">
					<img
						src="https://kream-phinf.pstatic.net/MjAyMjAzMjhfMTA5/MDAxNjQ4NDYyODc5Mjk1.hKngFDq7Fz4m2t4f2Y8w_fUHgxUjXm4EKiKThGURjn4g.A0fHdsxWqRLbzImhPMP7eLueICCLUeCasKoHaIBKV8Eg.JPEG/a_e87a1eee28bd4bc28f4aec388772a889.jpg?type=m"
						class="c3_shortcut_item_image" />
				</div>
				<p class="c3_shortcut_item_title">발렌시아가</p>
			</div>
			<div class="c3_shortcut_item">
				<div class="c3_shortcut_item_img_wrap">
					<img
						src="https://kream-phinf.pstatic.net/MjAyMjA0MjhfMjE4/MDAxNjUxMTQxMTAyOTU2.kLL2PcqwmvFAEyl8eyNb_cNezB7_V2OiWDijxJXEtSgg.Bz4zybudLUiTvgQ64kAYq_J5q3gmZ_GgssB7jtoHhrYg.JPEG/a_7d6d0a0b2cad48689634f46ccf2766cb.jpg?type=m"
						class="c3_shortcut_item_image" />
				</div>
				<p class="c3_shortcut_item_title">애플</p>
			</div>
		</div>

	</div>
</div>