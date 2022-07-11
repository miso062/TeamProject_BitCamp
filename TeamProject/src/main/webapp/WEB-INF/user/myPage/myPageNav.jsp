<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
        .container.my .snb_area[data-v-3259a5f6] {
            float: left;
            width: 180px;
            margin-right: 20px;
        }
        a, a:active, a:focus, a:hover {
            text-decoration: none;
        }
        a:visited {
        font-weight : bold;
        }
        a {
            color: inherit;
            -webkit-tap-highlight-color: rgba(0,0,0,.1);
        }
        .container.my .snb_area[data-v-3259a5f6] {
            float: left;
            width: 180px;
            margin-right: 20px;
        }
        .container.my .snb_main_title[data-v-3259a5f6] {
            line-height: 29px;
            padding-bottom: 30px;
            font-size: 24px;
            letter-spacing: -0.36px;
            font-weight: 700;
            letter-spacing: -0.15px;
        }

        [data-v-3259a5f6] .text-danger {
            color: #f15746;
        }
        [data-v-3259a5f6] .text-warning {
            color: #ff7500;
        }
        .snb_list + .snb_list[data-v-7bcac446] {
            margin-top: 40px;
        }
        .snb_title[data-v-7bcac446] {
            line-height: 22px;
            margin-bottom: 12px;
            display: inline-block;
            vertical-align: top;
            font-size: 18px;
            letter-spacing: -0.27px;
            font-weight: 700;
        }
        .menu_link[data-v-4d11470e] {
            line-height: 18px;
            font-size: 15px;
            letter-spacing: -0.15px;
        }
        .menu_item + .menu_item[data-v-4d11470e] {
            margin-top: 12px;
        }
        .bold {
	        font-weight: bold;
	        color: black;
        }
        .unbold {
            color: rgba(34, 34, 34, 0.5);
			font-weight: normal;
        }
    </style>
    
    <div data-v-3259a5f6="" class="snb_area">
        <a data-v-3259a5f6="" href="/TeamProject/user/myPage" aria-current="page" class="nuxt-link-exact-active nuxt-link-active">
            <h2 data-v-3259a5f6="" class="snb_main_title">마이 페이지</h2></a>
        <nav data-v-7bcac446="" data-v-3259a5f6="" class="snb">
            <div data-v-7bcac446="" class="snb_list">
                <strong data-v-7bcac446="" class="snb_title">쇼핑 정보</strong>
                <ul data-v-4d11470e="" data-v-7bcac446="" class="snb_menu">
                    <li data-v-4d11470e="" class="menu_item"><a data-v-4d11470e="" href="#" class="menu_link unbold"> 구매 내역 </a></li>
                    <li data-v-4d11470e="" class="menu_item"><a data-v-4d11470e="" href="#" class="menu_link unbold"> 판매 내역 </a></li>
                    <li data-v-4d11470e="" class="menu_item"><a data-v-4d11470e="" href="/TeamProject/user/likePro" class="menu_link unbold"> 관심 상품 </a></li>
                </ul>
            </div>
            <div data-v-7bcac446="" class="snb_list">
                <strong data-v-7bcac446="" class="snb_title">내 정보</strong>
                <ul data-v-4d11470e="" data-v-7bcac446="" class="snb_menu">
                    <li data-v-4d11470e="" class="menu_item"><a data-v-4d11470e="" href="#" class="menu_link unbold"> 프로필 정보 </a></li>
                    <li data-v-4d11470e="" class="menu_item"><a data-v-4d11470e="" href="#" class="menu_link unbold"> 판매 정산 계좌 </a></li>
                </ul>
            </div>
        </nav>
    </div>
<script type="text/javascript">
$('.menu_link').click(function(){
	$(this).addClass('bold');
	$(this).removeClass('unbold');
	$('.menu_link').not(this).addClass("unbold");
	$('.menu_link').not(this).removeClass('bold');
});
</script>