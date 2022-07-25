<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org/">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.content_title {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    padding: 5px 0 6px;
}
.title {
    font-size: 24px;
    letter-spacing: -.36px;
}
.title>h3 {
    line-height: 29px;
    font-size: inherit;
}
.purchase_list_tab.detail_tab {
    background-color: #fff;
    border-radius: 0;
    margin-top: 20px;
}
.purchase_list_tab {
    display: table;
    table-layout: fixed;
    width: 100%;
    background-color: #fafafa;
    border-radius: 12px;
}
.purchase_list_tab.detail_tab .tab_item.total {
    display: none;
}
.tab_item {
    display: table-cell;
    text-align: center;
}
.purchase_list_tab.detail_tab .tab_link {
    padding-top: 12px;
    height: 68px;
    border-bottom: 1px solid #d3d3d3;
}
.tab_link {
    position: relative;
    display: block;
    padding-top: 18px;
    height: 96px;
}
.purchase_list_tab.detail_tab .tab_box {
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: reverse;
    flex-direction: column-reverse;
}
.purchase_list_tab.detail_tab .title {
    color: rgba(34,34,34,.5);
}
.tab_link .title {
    font-size: 13px;
    letter-spacing: -.07px;
    color: rgba(34,34,34,.8);
}
.tab_link .count {
    margin-top: 2px;
    font-size: 18px;
    line-height: 20px;
    letter-spacing: -.09px;
    font-weight: 700;
}
.tab_item {
    display: table-cell;
    text-align: center;
}
.tab_item.total .count {
    color: #f15746;
}
.purchase_list_tab.detail_tab .tab_on .tab_link {
    border-bottom: 2px solid #222;
}
.purchase_list_tab.detail_tab .tab_on .title {
    color: #222;
    font-weight: 700;
}
.purchase_list_tab.detail_tab .tab_on .count {
    color: #f15746;
}
.purchase_list_tab.detail_tab .title {
    color: rgba(34,34,34,.5);
}
.purchase_list_tab.detail_tab .tab_link {
    padding-top: 12px;
    height: 68px;
    border-bottom: 1px solid #d3d3d3;
}
.purchase_list_tab.detail_tab .count {
    margin-top: 0;
    font-size: 20px;
    line-height: 24px;
    letter-spacing: -.1px;
}
.search_info {
    padding: 12px 0;
}
.search_info .info_item:before {
    content: "";
    position: absolute;
    top: 50%;
    left: 0;
    transform: translateY(-50%);
    width: 3px;
    height: 3px;
    background-color: rgba(34,34,34,.5);
    border-radius: 50%;
}
.search_info .info_item {
    position: relative;
    padding-left: 7px;
    font-size: 12px;
    letter-spacing: -.06px;
    color: rgba(34,34,34,.5);
}
.head_product, .head_status, .purchase_head {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
}
.purchase_head {
    padding: 12px;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    border-bottom: 1px solid #ebebeb;
}
.btn_filter {
    position: relative;
    padding: 5px 30px 5px 10px;
    display: inline-block;
    width: 120px;
    line-height: 24px;
    background-color: #fff;
    font-size: 13px;
    letter-spacing: -.07px;
}
.ico-arr-dir-down-circle {
    position: absolute;
    top: 6px;
    right: 5px;
}
.head_status {
    margin-left: auto;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    text-align: right;
}
.bidding .head_status .status_box.field_price {
    display: block;
}
.head_status .status_box.field_price {
    display: none;
    width: 140px;
}

.head_status .status_box {
    margin-left: 10px;
    width: 134px;
}
.head_status .status_link {
    position: relative;
    padding-right: 16px;
    display: inline-block;
    font-size: 13px;
    letter-spacing: -.07px;
    line-height: 24px;
}
.head_status .status_txt {
    display: inline-block;
    vertical-align: top;
}
.head_status .status_link:after {
    content: "";
    position: absolute;
    top: 0;
    right: -4px;
}
.bidding .head_status .status_box.field_expires_at {
    display: block;
}
.purchase_list .purchase_item {
    border-bottom: 1px solid #ebebeb;
}
.purchase_item {
    padding: 12px;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    cursor: pointer;
}
.history_product {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
}
.history_product .product_box {
    position: relative;
    -webkit-box-flex: 0;
    -ms-flex: none;
    flex: none;
    width: 80px;
    height: 80px;
}
.history_product .product_box .product {
    border-radius: 12px;
}
.product {
    overflow: hidden;
    position: relative;
    padding-top: 100%;
    border-radius: 8px;
}
.picture {
    display: flex;
}
.product_img {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 81.5%;
    height: auto;
}
.image {
    -o-object-fit: cover;
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
.product_detail {
    margin-left: 16px;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    flex-direction: column;
    align-self: center;
}
.name {
    line-height: 17px;
    font-size: 14px;
    overflow: hidden;
    -o-text-overflow: ellipsis;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
}
.size {
    line-height: 19px;
    margin-top: 4px;
}
.size_text {
    display: inline-block;
    vertical-align: top;
    font-size: 14px;
    letter-spacing: -.21px;
    font-weight: 700;
    letter-spacing: -.5px;
    color: rgba(34,34,34,.5);
}
.history_status {
    margin-left: auto;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    text-align: right;
}
.all .status_box.field_status, .ask.finished .status_box.field_date_paid, .bid.finished .status_box.field_date_purchased, .bidding .status_box.field_expires_at, .bidding .status_box.field_price, .finished .status_box.field_status, .mo .all .history_product .date, .mo .finished .history_product .date, .pending .status_box.field_status, .sm .all .history_product .date, .sm .finished .history_product .date {
    display: block;
}

.history_status .status_box:first-child {
    width: 140px;
}
.history_status .status_box {
    display: none;
    margin-left: 10px;
    width: 134px;
}
.status_box{
	display: none;
}
.price {
    margin-top: 2px;
    font-size: 0;
}
.amount, .unit {
    display: inline-block;
    font-size: 14px;
}
.unit {
    margin-top: -1px;
}
.amount, .unit {
    display: inline-block;
    font-size: 14px;
}
.history_status .status_box {
    display: none;
    margin-left: 10px;
    width: 134px;
}
.history_status .status_box {
    display: none;
    margin-left: 10px;
    width: 134px;
}
.date {
    font-size: 14px;
}
.text-danger {
    color: #f15746;
}
.status_txt {
    display: block;
    font-size: 14px;
    letter-spacing: -.21px;
}
.pagination {
    padding: 28px 0;
}
.pagination_box {
    position: relative;
    font-size: 0;
    text-align: center;
}
.pagination_box.first .prev_btn_box, .pagination_box.last .next_btn_box {
    display: none;
}
.next_btn_box .btn_arr, .prev_btn_box .btn_arr {
    padding: 3px;
    width: 24px;
    height: 24px;
}
[class*=arr-page-] {
    width: 18px;
    height: 22px;
}
.next_btn_box .btn_arr+.btn_arr, .prev_btn_box .btn_arr+.btn_arr {
    margin-left: 5px;
}
.page_bind {
    display: inline-block;
    vertical-align: top;
}
.btn_page.active {
    font-weight: 700;
    color: #222;
}
.next_btn_box .btn_arr, .prev_btn_box .btn_arr {
    padding: 3px;
    width: 24px;
    height: 24px;
}
.my .empty_area {
    padding: 80px 0;
}
.empty_area {
    padding: 81px 0 45px;
    text-align: center;
}
.empty_area .desc {
    font-size: 13px;
    letter-spacing: -.07px;
    color: rgba(34,34,34,.5);
}
</style>
</head>
<body>

<div class="my_purchase">
    <div class="content_title">
        <div class="title">
            <h3>구매 내역</h3>
        </div>
    </div>
    <div class="purchase_list_tab detail_tab">
        <div class="tab_item total">
			<a href="#" class="tab_link">
				<dl class="tab_box">
					<dt class="title">전체</dt>
					<dd class="count buy_countAll">1</dd>
				</dl>
			</a>
		</div>
		<div class="tab_item tab_on">
			<a href="#" class="tab_link">
				<dl class="tab_box">
					<dt class="title">구매 입찰</dt>
                    <dd class="count buy_status1">1</dd>
                </dl>
			</a>
        </div>
        <div class="tab_item">
            <a href="#" class="tab_link">
                <dl class="tab_box ">
                    <dt class="title">종료</dt>
                    <dd class="count buy_status2">0</dd>
                </dl>
            </a>
        </div>
    </div>

    <ul class="search_info">
        <li class="info_item"><p>한 번에 조회 가능한 기간은 최대 6개월입니다.</p></li>
        <li class="info_item"><p>기간별 조회 결과는 입찰일 기준으로 노출됩니다.</p></li>
    </ul>
    
    <div class="purchase_list bidding bid">
        <div class="purchase_head">
            <div class="head_product">
                <a href="#" class="btn_filter"> 전체</a>
            </div>
            <div class="head_status">
                <div class="status_box field_price">
                    <a href="#" class="status_link"><span class="status_txt">구매 희망가</span></a>
                </div>
                <div class="status_box field_date_purchased">
                    <a href="#" class="status_link"><span class="status_txt">구매일</span></a>
                </div>
                <div class="status_box field_expires_at">
                    <a href="#" class="status_link"><span class="status_txt">만료일</span></a>
                </div>
                <div class="status_box field_date_paid">
                    <a href="#" class="status_link"><span class="status_txt">정산일</span></a>
                </div>
                <div class="status_box field_status ascending">
                    <a href="#" class="status_link"><span class="status_txt">상태</span></a>
                </div>
			</div>
        </div>

		<div class="empty_area buy_empty_area" style="display: none">
			<p  class="desc">거래 내역이 없습니다.</p>
		</div>
		<!--상품 리스트-->
		<div class="purchase_item_wrap">
		    <!--상품-->
		</div>
    </div>
        <!--페이징처리-->
    <div class="pagination">
        <div class="pagination_box first last">
            <div class="prev_btn_box">
                <a href="#" class="btn_arr">
                </a>
                <a href="#" class="btn_arr">
                </a>
            </div>
            <div class="page_bind"><a href="#" class="btn_page active"> 1 </a></div>
            <div class="next_btn_box">
                <a href="#" class="btn_arr">
                </a>
                <a href="#" class="btn_arr">
                </a>
            </div>
        </div>
    </div>
    <!----><!----><!----><!----><!---->
</div>
<script type="text/javascript">
window.onload = function() {
	$('.snb_menu').eq(0).find('.menu_link').eq(0).removeClass('unbold');
	$('.snb_menu').eq(0).find('.menu_link').eq(0).addClass('bold');
	$('.tab_item').eq(1).click();
}

//입찰, 종료 카테고리
$(document).on('click', '.tab_item', function(){
	if($(this).index() == 1){ //입찰중
		$(this).addClass('tab_on');
		$('.tab_item').not(this).removeClass('tab_on');

        $.ajax({
	      type:'post',
	      url:'/TeamProject/user/getBuyHistoryList',
	      dataType:'json',
	      success: function(data){
			//배경 색
			var colorList = [ '#ebf0f5', 'rgb(235, 240, 245)', 'rgb(241, 241, 234)', 'rgb(246, 238, 237)' ]
	        //거래내역없을 때
			if(data.buy_historyList.length == 0){
				$('.buy_empty_area').show();
			}

			//구매거래내역 카운트
			var buy_status1_count = 0;
			var buy_status2_count = 0;
			
	       	for(var i = 0; i < data.buy_historyList.length; i++){
	       		if(data.buy_historyList[i].status1 != null){
	       			buy_status1_count = buy_status1_count + 1;
	       		}
	       		if(data.buy_historyList[i].status2 != null){
	       			buy_status2_count = buy_status2_count + 1;
	       		}
	       	}
	   		$('.buy_status1').text(buy_status1_count);
	   		$('.buy_status2').text(buy_status2_count);
	   		$('.buy_countAll').text(buy_status1_count + buy_status2_count);
	   		
			$('.purchase_item_wrap').html('');
			for(var i = 0; i< data.buy_historyList.length ; i++){
		        var user_id = data.buy_historyList[i].user_id;
		        var buy_id = data.buy_historyList[i].buy_id;
		        var product_id = data.buy_historyList[i].product_id;
		        var product_name = data.productImgList[i].org_file_name;
		        var img = data.productImgList[i].file_path;
		        var status1 = data.buy_historyList[i].status1;   
		        var status2 = data.buy_historyList[i].status2;   
		        var size_type = data.buy_historyList[i].size_type;
		        if(size_type == 'null'){
		            size_type = ' - ';
		        } 
		        var buy_price = data.buy_historyList[i].buy_price;
	            if ( buy_price == 'null') {
	            	buy_price = ' - ';
	            } else {
	            	buy_price = buy_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	            }
		        var buy_date = new Date(data.buy_historyList[i].buy_date); //구매일자
		       	var period = new Date(data.buy_historyList[i].period);
		       	var random = Math.floor( Math.random() * 4 ); 

		       	if(status1 == '입찰중' || status1 == '배송중' || status1 == '결제완료'){
  		       		let buylist = $('<div class="purchase_item" onclick="location.href=\'/TeamProject/user/buyHistoryDetail?buy_id='+ buy_id + '\'">').append(
  	                '<div class="history_product">' +
  	                '<div class="product_box">' +
  	                '<div class="product" style="background-color:' + colorList[random] + ';">' +
  	                '<img src="' + img + '" alt="' + product_name + '" class="image picture product_img">' +
  	                '</div></div>' +
  	                '<div class="product_detail">' +
  	                '<p class="name">' + product_name + '</p><span class="size">' + size_type + '</span>' +
  	                '</div></div><div class="history_status">' +
  	                '<div class="status_box field_price"><div class="price">' +
  	                '<span class="amount">' + buy_price + '</span>' +
  	                '<span class="unit">원</span>' +
  	                '</div></div>' +
  	                '<div class="status_box field_date_purchased" style="display: none">' +
  	                '<span class="date">' + buy_date.toLocaleDateString() + '</span>' +
  	                '</div>' +
  	                '<div class="status_box field_date_paid" style="display: none">' +
  	                '<span class="date">' + buy_date.toLocaleDateString() + '</span>' +
  	                '</div>' +
  	                '<div class="status_box field_expires_at">' +
  	                '<span class="date text-default">' + period.toLocaleDateString() + '</span>' +
  	                '</div>' +
  	                '<div class="status_box field_status">' +
  	                '<span class="status_txt text-default status1_text">' + status1 + '</span>' +
  	                '</div></div></div>'
  	                );
  					$('.purchase_item_wrap').append(buylist);
  		       		}
				} // 확장형 for문
			$('.status_box').css('display','none');
			//구매희망가 만료일 상태
			$('.field_price').css('display','block');
			$('.field_expires_at').css('display', 'block');
			$('.field_status').css('display', 'block');
      
      	},error:function(err){
         console.log(err);
		}      
	});

	}else if($(this).index() == 2){ //종료
		$(this).addClass('tab_on');
		$('.tab_item').not(this).removeClass('tab_on');

        $.ajax({
  	      type:'post',
  	      url:'/TeamProject/user/getBuyHistoryList',
  	      dataType:'json',
  	      success: function(data){
  			//배경 색
  			var colorList = [ '#ebf0f5', 'rgb(235, 240, 245)', 'rgb(241, 241, 234)', 'rgb(246, 238, 237)' ]
  	        //거래내역없을 때
  			if(data.buy_historyList.length == 0){
  				$('.buy_empty_area').show();
  			}
  			$('.purchase_item_wrap').html('');
  			//구매거래내역 카운트
  			var buy_status1_count = 0;
  			var buy_status2_count = 0;
  			
  	       	for(var i = 0; i < data.buy_historyList.length; i++){
  	       		if(data.buy_historyList[i].status1 != null){
  	       			buy_status1_count = buy_status1_count + 1;
  	       		}
  	       		if(data.buy_historyList[i].status2 != null){
  	       			buy_status2_count = buy_status2_count + 1;
  	       		}
  	       	}
  	   		$('.buy_status1').text(buy_status1_count);
  	   		$('.buy_status2').text(buy_status2_count);
  	   		$('.buy_countAll').text(buy_status1_count + buy_status2_count);
  	   		
  			for(var i = 0; i< data.buy_historyList.length ; i++){
  		        var user_id = data.buy_historyList[i].user_id;
  		        var product_id = data.buy_historyList[i].product_id;
  		        var buy_id = data.buy_historyList[i].buy_id;
  		        var product_name = data.productImgList[i].org_file_name;
  		        var img = data.productImgList[i].file_path;
  		        var status1 = data.buy_historyList[i].status1;   
  		        var status2 = data.buy_historyList[i].status2;   
  		        var size_type = data.buy_historyList[i].size_type;
  		        if(size_type == 'null'){
  		            size_type = ' - ';
  		        } 
  		        var buy_price = data.buy_historyList[i].buy_price;
  	            if ( buy_price == 'null') {
  	            	buy_price = ' - ';
  	            } else {
  	            	buy_price = buy_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
  	            }
  		        var buy_date = new Date(data.buy_historyList[i].buy_date); //구매일자
  		       	var period = new Date(data.buy_historyList[i].period);
  		       	var random = Math.floor( Math.random() * 4 ); 

  		       	if(status2 == '배송완료' || status2 == '입찰종료'){
  		       		let buylist = $('<div class="purchase_item" onclick="location.href=\'/TeamProject/user/buyHistoryDetail?buy_id='+ buy_id + '\'">').append(
  	                '<div class="history_product">' +
  	                '<div class="product_box">' +
  	                '<div class="product" style="background-color:' + colorList[random] + ';">' +
  	                '<img src="' + img + '" alt="' + product_name + '" class="image picture product_img">' +
  	                '</div></div>' +
  	                '<div class="product_detail">' +
  	                '<p class="name">' + product_name + '</p><span class="size">' + size_type + '</span>' +
  	                '</div></div><div class="history_status">' +
  	                '<div class="status_box field_price"><div class="price">' +
  	                '<span class="amount">' + buy_price + '</span>' +
  	                '<span class="unit">원</span>' +
  	                '</div></div>' +
  	                '<div class="status_box field_date_purchased" style="display: none">' +
  	                '<span class="date">' + buy_date.toLocaleDateString() + '</span>' +
  	                '</div>' +
  	                '<div class="status_box field_date_paid">' +
  	                '<span class="date">' + buy_date.toLocaleDateString() + '</span>' +
  	                '</div>' +
  	                '<div class="status_box field_expires_at" style="display: none">' +
  	                '<span class="date text-default">' + period.toLocaleDateString() + '</span>' +
  	                '</div>' +
  	                '<div class="status_box field_status">' +
  	                '<span class="status_txt text-default status2_text text-danger">' + status2 + '</span>' +
  	                '</div></div></div>'
  	                );
  					$('.purchase_item_wrap').append(buylist);
  		       		}
  				} // 확장형 for문
			$('.status_box').css('display','none');
			//정산일 상태
			$('.field_date_paid').css('display', 'block');
			$('.field_status').css('display', 'block');
        },error:function(err){
           console.log(err);
  		}      
  	});
	}
});

</script>
</body>
</html>