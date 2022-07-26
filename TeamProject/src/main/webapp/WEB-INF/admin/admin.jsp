<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GESE-T | 관리자 페이지</title>
<link rel="stylesheet" type="text/css" href="/TeamProject/css/admin/admin.css">
<style type="text/css">

</style>
</head>
<body>
<body class="menubar-hoverable header-fixed menubar-pin">
    <div id="base">
        <header class="top_header">
            <div class="headerbar">
                <div class="headerbar-left">
                    <ul class="header-nav header-nav-options">
                        <li class="hidden-lg hidden-md">
                            <a class="btn btn-icon-toggle menubar-toggle" data-toggle="menubar">
                                <i class="btl bt-bars"></i>
                            </a>
                        </li>
                        <li class="header-nav-brand">
                            <div class="brand-holder" style="position: fixed;">
                                <a href="" target="_blank" class="location_text margin-right-lg" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="새 탭에서 내 사이트 열기">
                                    <span class="text-gray">GESE-T | 한정판 거래의 Flex</span>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="headerbar-right">
                    <ul class="header-nav header-nav-options">
                        <li>
                            <a class="btn btn-secondary hidden-xs" href="/TeamProject/" style="width: 115px;">나가기</a>
                        </li>
                    </ul>
                </div>
            </div>
        </header>
        <div id="content" class="dashboard_main">
            <section>
                <div class="clearfix area_wrap">
                    <div class="section-body float_l" style="width: 80%;">
                        <div class="row">
                            <div class="ma-item col-md-12 col-sm-12">
                                <div class="card">
                                    <div class="card-head line-bottom">
                                        <a href="javascript:;" class="block">
                                            <header>오늘의 할일 <span class="text-default-bright header-badge badge-danger">0</span></header>
                                        </a>
                                    </div>
                                    <div class="card-body border-top today-table">
                                        <div class="tt-list">
                                            <div class="inline-blocked">
                                                <a href="/admin/shopping/order">신규주문<span class="text-danger">0</span></a>
                                            </div>
                                            <div class="inline-blocked">
                                                <a href="/admin/shopping/order">신규구매입찰<span class="text-danger">0</span></a>
                                            </div>
                                            <div class="inline-blocked">
                                                <a href="/admin/shopping/order">신규판매입찰<span class="text-danger">0</span></a>
                                            </div>
                                            <div class="inline-blocked">
                                                <a href="/admin/shopping/cancel">취소관리<span class="text-danger">0</span></a>
                                            </div>
                                            <div class="inline-blocked">
                                                <a href="/admin/shopping/return">반품관리<span class="text-danger">0</span></a>
                                            </div>
                                            <div class="inline-blocked">
                                                <a href="/admin/shopping/answers">답변대기 문의<span class="text-danger">0</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row flex-box" style="display: flex; justify-content: space-between;">
                            <div class="ma-item" style="width: 49%">
                                <div class="card">
                                    <div class="card-head">
                                        <header><a href="/admin/shopping/answers">문의/구매평</a></header>
                                    </div>
                                    <div class="card-body border-top">
                                        <ul class="list list-preview">
                                            <li class="tile">데이터가 없습니다.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="ma-item" style="width: 49%">
                                <div class="card">
                                    <div class="card-head">
                                        <header><a href="/admin/contents/comment">컨텐츠 반응</a></header>
                                    </div>
                                    <div class="card-body border-top">
                                        <ul class="list list-preview">
                                            <li class="tile">데이터가 없습니다.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row flex-box" style="display: flex; justify-content: space-between;">
                            <div class="ma-item" style="width: 49%">
                                <div class="card">
                                    <div class="card-head">
                                        <header><a href="/admin/shopping/answers">문의/구매평</a></header>
                                    </div>
                                    <div class="card-body border-top">
                                        <ul class="list list-preview">
                                            <li class="tile">데이터가 없습니다.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="ma-item" style="width: 49%">
                                <div class="card">
                                    <div class="card-head">
                                        <header><a href="/admin/contents/comment">컨텐츠 반응</a></header>
                                    </div>
                                    <div class="card-body border-top">
                                        <ul class="list list-preview">
                                            <li class="tile">데이터가 없습니다.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="ma-item col-md-12 col-sm-12">
                                <div class="card">
                                    <div class="card-head line-bottom">
                                        <a href="javascript:;" class="block">
                                            <header>사용자 관리</header>
                                        </a>
                                    </div>
                                    <div class="card-body border-top today-table">
                                        <div class="card">
										    <div id="order_list_loader_sub" class="se-pre-con" style="background: none; position: relative; height: 100px; display: none;">
										        <div class="page-loader-spinner">
										            <div class="double-bounce1"></div>
										            <div class="double-bounce2"></div>
										        </div>
										    </div>
										    <div class="card-head" id="card-head" style="">
										        <header class="small">전체 사용자 <span class="text-primary" id="total-member-count">3</span>명</header>
										        <header class="small" style="float:right;"><span style="cursor:pointer;">더보기</span></header>
										    </div>
										
										    <div class="card-body no-padding">
										        <div class="li_table" id="UI_TABLE">
										            <ul class="subject _thead" id="table-header">
										                <li class="nick" style="width:170px;" >회원 유형</li>
										                <li class="nick" style="width:170px;">이름</li>
										                <li class="nick" style="width:170px;">닉네임</li>
										                <li class="account" style="width:250px;">계정</li>
										                <li class="date_mileage" style="width:200px;">연락처</li>
										                <li class="date_join">가입일</li>
										            </ul>
												 </div>
										        <nav class="text-center" id="paginate"></nav>
										    </div>
										    <div class="card-body no-padding">
										        <div class="li_table" id="UI_TABLE2">
										            <!-- <ul class="content _tbody" id="member_item" data-nick="" data-app="">
										                <li class="nick">관리자</li>
										                <li class="account">박상연</li>
										                <li class="account">쯔아</li>
										                <li class="account">admin@gese.com</li>
										                <li class="date_mileage">010-2524-5816</li>
										                <li class="date_join">2022-04-26</li>
										            </ul> -->
												 </div>
										        <nav class="text-center" id="paginate"></nav>
										    </div>
										            
										            
										       
										</div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                        	<div class="ma-item">
	                            <div class="card">
	                            	<div class="card-head">
                                        <header><a href="/admin/contents/comment">상품관리</a></header>
                                    </div>
	                            	<div class="card-body border-top">
	                            	    <div class="table-responsive shop-table check" id="prod_list" style="">
									        <table class="table no-margin">
									            <thead class="subject _prodListHeaderDeselected" style="display: table-header-group;" id="prod_list_header_deselected">
									                <tr>
									                    <th class="check">
									                        <div class="checkbox checkbox-styled no-margin">
									                            <label> <input type="checkbox" value="" class="_prodListAllCheck" onclick="SHOP_PROD_LIST.listSetAllSelect($(this).prop('checked'),function(codes){SHOP_PROD_LIST.checkProd(codes)})" /><span></span> </label>
									                        </div>
									                    </th>
									                    <th class="no">No</th>
									                    <th class="title image">상품명</th>
									                    <th></th>
									                    <th class="pay text-right">판매가</th>
									                    <th class="group">카테고리</th>
									                    <th class="state">상태</th>
									                    <th class="stock">재고</th>
									                    <th class="r_date">등록일</th>
									                    <th class="e_date">수정일</th>
									                    <th class="more"></th>
									                </tr>
									            </thead>
									            <tbody id="prod_list_body" class="_prod_list_body ui-sortable">
									                <tr class="content _prodListItem" id="prod_list_s20211224145e22830e76f" data-code="s20211224145e22830e76f">
									                    <td class="check">
									                        <div class="drag _showcase_handle ui-sortable-handle"></div>
									                        <div class="checkbox checkbox-styled no-margin">
									                            <label>
									                                <input
									                                    type="checkbox"
									                                    value="s20211224145e22830e76f"
									                                    class="_prodListCheck"
									                                    onclick="SHOP_PROD_LIST.listSetSelect('s20211224145e22830e76f',function(codes){
																	SHOP_PROD_LIST.checkProd(codes);
																	})"
									                                />
									                                <span></span>
									                            </label>
									                        </div>
									                    </td>
									                    <td class="no text-12">149</td>
									                    <td class="image">
									                        <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=149">
									                            <img src="https://cdn.imweb.me/thumbnail/20211224/52e7c97573366.jpg" width="49" height="49" class="item-thumb" />
									                        </a>
									                    </td>
									                    <td class="title">
									                        <div>
									                            <div class="item-tit inline-blocked">
									                                <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=149">바른목장 유산균우유 180mL</a>
									                                <span class="prod_icon text-danger icon_default">BEST</span>
									                                <a href="https://pasteur-sn.imweb.me/52/?idx=149" target="_blank" class="im-icon im-ico-new-tab vertical-middle tab-icon" style="margin-left: 4px;"></a>
									                            </div>
									
									                            <span class="btn-sm text-gray-bright"></span>
									                        </div>
									                    </td>
									                    <td class="pay text-right">1,550원<br /></td>
									                    <!--	<td class="stock">100</td>-->
									                    <!--	<td class="lately">100</td>-->
									                    <td class="group">우유</td>
									                    <td class="state on-click">
									                        <a data-toggle="dropdown" style="margin-right: -1px;">
									                            <span>판매중</span>
									                        </a>
									                    </td>
									                    <td class="text-12" style="padding-left: 20px;">
									                        -
									                    </td>
									                    <td class="r_date text-12">2021-12-24</td>
									                    <td class="e_date text-12">2022-02-25</td>
									                    <td class="more">
									                        <div class="dropdown">
									                            <button class="btn btn-flat" aria-expanded="true" data-toggle="dropdown" type="button" id="dLabel">
									                                <i class="zmdi zmdi-more"></i>
									                            </button>
									                        </div>
									                    </td>
									                </tr>
									                <tr class="content _prodListItem" id="prod_list_s202202255abf98c646e35" data-code="s202202255abf98c646e35">
									                    <td class="check">
									                        <div class="drag _showcase_handle ui-sortable-handle"></div>
									                        <div class="checkbox checkbox-styled no-margin">
									                            <label>
									                                <input
									                                    type="checkbox"
									                                    value="s202202255abf98c646e35"
									                                    class="_prodListCheck"
									                                    onclick="SHOP_PROD_LIST.listSetSelect('s202202255abf98c646e35',function(codes){
																	SHOP_PROD_LIST.checkProd(codes);
																	})"
									                                />
									                                <span></span>
									                            </label>
									                        </div>
									                    </td>
									                    <td class="no text-12">164</td>
									                    <td class="image">
									                        <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=164">
									                            <img src="https://cdn.imweb.me/thumbnail/20220225/9a3793e7e0c90.jpg" width="49" height="49" class="item-thumb" />
									                        </a>
									                    </td>
									                    <td class="title">
									                        <div>
									                            <div class="item-tit inline-blocked">
									                                <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=164">바른목장 유산균우유 750mL</a>
									                                <span class="prod_icon text-danger icon_default">BEST</span>
									                                <a href="https://pasteur-sn.imweb.me/52/?idx=164" target="_blank" class="im-icon im-ico-new-tab vertical-middle tab-icon" style="margin-left: 4px;"></a>
									                            </div>
									
									                            <span class="btn-sm text-gray-bright"></span>
									                        </div>
									                    </td>
									                    <td class="pay text-right">4,100원<br /></td>
									                    <td class="group">우유</td>
									                    <td class="state on-click">
									                        <a data-toggle="dropdown" style="margin-right: -1px;">
									                            <span>판매중</span>
									                        </a>
									                    </td>
									                    <td class="text-12" style="padding-left: 20px;">
									                        -
									                    </td>
									                    <td class="r_date text-12">2022-02-25</td>
									                    <td class="e_date text-12">2022-02-25</td>
									                    <td class="more">
									                        <div class="dropdown">
									                            <button class="btn btn-flat" aria-expanded="true" data-toggle="dropdown" type="button" id="dLabel">
									                                <i class="zmdi zmdi-more"></i>
									                            </button>
									                        </div>
									                    </td>
									                </tr>
									                <tr class="content _prodListItem" id="prod_list_s202112243c57284c8f268" data-code="s202112243c57284c8f268">
									                    <td class="check">
									                        <div class="drag _showcase_handle ui-sortable-handle"></div>
									                        <div class="checkbox checkbox-styled no-margin">
									                            <label>
									                                <input
									                                    type="checkbox"
									                                    value="s202112243c57284c8f268"
									                                    class="_prodListCheck"
									                                    onclick="SHOP_PROD_LIST.listSetSelect('s202112243c57284c8f268',function(codes){
																	SHOP_PROD_LIST.checkProd(codes);
																	})"
									                                />
									                                <span></span>
									                            </label>
									                        </div>
									                    </td>
									                    <td class="no text-12">150</td>
									                    <td class="image">
									                        <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=150">
									                            <img src="https://cdn.imweb.me/thumbnail/20211224/49e05a4c7d6a3.jpg" width="49" height="49" class="item-thumb" />
									                        </a>
									                    </td>
									                    <td class="title">
									                        <div>
									                            <div class="item-tit inline-blocked">
									                                <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=150">건강한 저온살균 무항생제 인증목장 우유 180mL</a>
									                                <span class="prod_icon text-danger icon_default">BEST</span>
									                                <a href="https://pasteur-sn.imweb.me/52/?idx=150" target="_blank" class="im-icon im-ico-new-tab vertical-middle tab-icon" style="margin-left: 4px;"></a>
									                            </div>
									
									                            <span class="btn-sm text-gray-bright"></span>
									                        </div>
									                    </td>
									                    <!--	<td class="sku"><a href="javascript:;">3847-112</a></td>-->
									                    <td class="pay text-right">1,550원<br /></td>
									                    <!--	<td class="stock">100</td>-->
									                    <!--	<td class="lately">100</td>-->
									                    <td class="group">우유</td>
									                    <td class="state on-click">
									                        <a data-toggle="dropdown" style="margin-right: -1px;">
									                            <span>판매중</span>
									                        </a>
									                    </td>
									                    <td class="text-12" style="padding-left: 20px;">
									                        -
									                    </td>
									                    <td class="r_date text-12">2021-12-24</td>
									                    <td class="e_date text-12">2022-02-25</td>
									                    <td class="more">
									                        <div class="dropdown">
									                            <button class="btn btn-flat" aria-expanded="true" data-toggle="dropdown" type="button" id="dLabel">
									                                <i class="zmdi zmdi-more"></i>
									                            </button>
									                        </div>
									                    </td>
									                </tr>
												</tbody>
									        </table>
									    </div>
									
	                            	</div>
								</div>
                        	</div>
                        </div>
                    </div>
                    <div class="right-menu-fixed float_l">
                        <div class="card card-black">
                            <div class="card-body text-center" style="text-align: center;">
                                <a href="#" class="dropdown-toggle block" data-toggle="dropdown" tabindex="-1" aria-expanded="false">
                                    <div class="margin-bottom-xl">
                                        <img class="border-round" src="/TeamProject/img/admin/default_profile.png" width="50" height="50" />
                                    </div>
                                    <div class="text-bold">
                                        <span class="use_name holder">관리자</span>
                                    </div>
                                    <div class="text-13 opacity-50">miso97410@gmail.com</div>
                                </a>
							</div>
						</div>
                        <div class="card card-sm-padding">
                            <div class="card-head">
                                <header>운영진 설정</header>
                                <a class="float_r text-13 opacity-50 force-padding no-padding-y" href="/admin/member/permission">관리</a>
                            </div>
                            <div class="card-body no-padding-top">
                                <div class="admin_img_wrap clearfix">
                                    <div class="float_l">
                                        <a class="inline-blocked" href="" data-toggle="tooltip" data-placement="top" title="" data-original-title="관리자/ miso97410@gmail.com">
                                            <img class="border-round" src="/TeamProject/img/admin/default_profile.png" width="35" height="35" />
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div></div>

                        <div class="card card-sm-padding">
                            <form id="add_memo">
                                <div class="card-body card-memo">
                                    <div class="tabled holder full-width" style="margin-bottom: 5px;">
                                        <div class="table-cell vertical-middle memo-thumb">
                                            <img class="border-round" src="/TeamProject/img/admin/default_profile.png" width="35" height="35" />
                                        </div>
                                        <div class="table-cell vertical-middle">
                                            <div id="memo_writer" class="text-13 text-bold">관리자</div>
                                        </div>
                                    </div>

                                    <div class="memo-body">
                                        <textarea
                                            name="memo"
                                            id="memo"
                                            class="form-control margin-bottom-xl"
                                            rows="1"
                                            placeholder="관리자들과 공유할 메모를 남겨주세요"
                                            data-autosize-on="true"
                                            style="overflow: hidden; overflow-wrap: break-word; resize: horizontal; height: 67px;"
                                        ></textarea>
                                        <div><a href="#" class="btn btn-xs btn-rounded btn-xs-padding btn-default-bright">저장</a></div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <div id="menubar" class="animate">
            <div class="nano has-scrollbar" style="height: 937px;">
                <div class="nano-content" tabindex="0" style="right: -17px;">
                    <div class="menubar-scroll-panel" style="padding-bottom: 50px;">
                        <ul id="main-menu" class="gui-controls">
                            <li class="spacer"></li>
                            <li class="top-menu">
                                <a ><span>사이트 관리</span></a>
                            </li>
                            <li class="gui-folder" data-title="dashboard">
                                <a href="/admin//" class="active" style="padding: 10px 0px;">
                                    <div class="gui-icon"><img class="db-dashboard" src="/TeamProject/img/admin/menu.png"></div>
                                    <span class="title title_controls">대시보드</span>
                                </a>
                            </li>
                            <li class="gui-folder" data-title="member">
                                <a href="/admin/member" class="sidebar-nav-menu" style="padding: 10px 0px;">
                                    <div class="gui-icon"><img class="db-user" src="/TeamProject/img/admin/user_edit.png"></div>
                                    <span class="title title_controls">사용자 관리</span>
                                </a>
                            </li>
                            <li class="gui-folder" data-title="shopping">
                                <a href="/admin/shopping" class="sidebar-nav-menu" style="padding: 10px 0px;">
                                    <div class="gui-icon"><img class="db-shopping-bag" src="/TeamProject/img/admin/shopping-cart.png"></div>
                                    <span class="title title_controls">쇼핑</span>
                                </a>
                            </li>
                            <li class="gui-folder" data-title="contents">
                                <a href="/admin/cont  ents" class="sidebar-nav-menu" style="padding: 10px 0px;">
                                    <div class="gui-icon"><img class="db-pencil" src="/TeamProject/img/admin/edit.png"></div>
                                    <span class="title title_controls">컨텐츠 관리</span>
                                </a>
                                
                            </li>
                            <li class="gui-folder" data-title="stat">
                                <a href="/admin/stat" class="sidebar-nav-menu" style="padding: 10px 0px;">
                                    <div class="gui-icon"><img class="db-status-up" src="/TeamProject/img/admin/infographic.png"></div>
                                    <span class="title title_controls">통계</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="nano-pane"><div class="nano-slider" style="height: 907px; top: 0px;"></div></div>
            </div>
        </div>
        <div class="fold_area tabled animate" style="text-align: center;">
            <div class="table-cell vertical-middle">
                <a href="/admin/" class="logo_icon_menu"> <img src="/TeamProject/img/admin/logo_white.png" /> </a>
            </div>
            <a class="_tooltip_btn side_bar_btn" href="javascript:void(0)" role="button" id="toggle_button">
                <span class="fold_button left" data-original-title="사이드바 접어두기" data-toggle="tooltip" data-placement="bottom">
                    <i class="icons fa fa-chevron-left" style="opacity: 0.6;"></i>
                    <i class="icons fa fa-chevron-left"></i>
                </span>
                <span class="fold_button right" data-original-title="사이드바 펼쳐두기" data-toggle="tooltip" data-placement="bottom">
                    <i class="icons fa fa-chevron-right"></i>
                    <i class="icons fa fa-chevron-right" style="opacity: 0.6;"></i>
                </span>
            </a>
        </div>
    </div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
function phoneFormatter(num, type) {
   var formatNum = '';
   try{
	if (num.length == 11) {
		if (type == 0) {            
			formatNum = num.replace(/(\d{3})(\d{4})(\d{4})/, '$1-****-$3');         
		} else {            
			formatNum = num.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');         
		}      
		} else if (num.length == 8) {         
			formatNum = num.replace(/(\d{4})(\d{4})/, '$1-$2');      
		} else {         
			if (num.indexOf('02') == 0) {            
			if (type == 0) {               
				formatNum = num.replace(/(\d{2})(\d{4})(\d{4})/, '$1-****-$3');            
			} else {               
				formatNum = num.replace(/(\d{2})(\d{4})(\d{4})/, '$1-$2-$3');            
			}         
			} else {            
				if (type == 0) {               
					formatNum = num.replace(/(\d{3})(\d{3})(\d{4})/, '$1-***-$3');            
				} else {               
					formatNum = num.replace(/(\d{3})(\d{3})(\d{4})/, '$1-$2-$3');            
				}         
			}      
		}   
	} catch(e) {      
		formatNum = num;      
		console.log(e);   
}   
return formatNum;
}
$(document).ready(function(){
	$.ajax({
		type:'post',
		url:'/TeamProject/admin/getAllUserList',
		dataType:'json',
		success:function(data){
			$('#UI_TABLE2').html('');
			var addr;
			$.each(data,function(index,items){
				if(items.authority > 2){
					items.authority = '관리자'
				}else{
					items.authority = '일반회원'
				}
				addr = '<ul class="content _tbody" id="member_item">'+
                '<li class="nick" style="width:170px;">'+items.authority+'</li>'+
                '<li class="nick" style="width:170px;">'+items.user_name+'</li>'+
                '<li class="nick" style="width:170px;">'+items.nickname+'</li>'+
                '<li class="account" style="width:250px;">'+items.user_id+'</li>'+
                '<li class="date_mileage" style="width:200px;">'+phoneFormatter(items.hp)+'</li>'+
                '<li class="date_join">'+items.sign_up_date+'</li>'+
            	'</ul>';
            	$('#UI_TABLE2').append(addr)
				
			})
		},
		error:function(e){
			console.log(e);
		}
		
	})
});
$(document).ready(function(){
	$.ajax({
		type:'post',
		url:'/TeamProject/admin/getAllAdmin',
		dataType:'json',
		success:function(data){
			$('#total-member-count').text(data.user_count);
		},
		error:function(e){
			console.log(e);
		}
		
	})
});
 
</script>
</body>
</html>