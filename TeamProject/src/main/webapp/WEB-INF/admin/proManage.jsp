<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<section class="no-padding-bottom">
    <div class="section-body">
        <div class="row">
            <div class="col-md-3 col-lg-2 col-xl-2 hidden-xs hidden-sm">
                <div class="card">
                    <div class="card-body no-padding">
                        <ul class="nav nav-pills nav-stacked">
                            <li class="no-hover" id="new_group_btn" data-base_url="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D">
                                <a href="javascript:;" class="text-primary" onclick="SHOP_PROD_MANAGE.openCategoryManage('prod_list')">
                                    카테고리 관리 <i class="icon-settings" style="font-size: 15px; vertical-align: middle; margin-left: 4px; position: relative; top: -1px;"></i>
                                </a>
                            </li>
                        </ul>

                        <div class="nav nav-pills nav-stacked nav-category">
                            <div id="prod_list_category_" class="dropdown-handle dd-handle active">
                                <a href="javascript:;" onclick="SHOP_PROD_LIST.startCategorySearch('')">전체 카테고리</a>
                            </div>
                            <div id="prod_category_list" class="prod_category_list">
                                <div class="holder">
                                    <div class="dropdown-handle dd-handle _menu_item" data-code="s202106136eac78326774d" id="prod_list_category_s202106136eac78326774d" onclick="SHOP_PROD_LIST.startCategorySearch('s202106136eac78326774d')">
                                        <span class="_name">우유</span>
                                    </div>
                                </div>
                                <div class="holder">
                                    <div class="dropdown-handle dd-handle _menu_item" data-code="s20211224fd1b06914db28" id="prod_list_category_s20211224fd1b06914db28" onclick="SHOP_PROD_LIST.startCategorySearch('s20211224fd1b06914db28')">
                                        <span class="_name">두유</span>
                                    </div>
                                </div>
                                <div class="holder">
                                    <div class="dropdown-handle dd-handle _menu_item" data-code="s20211224f6fee13ee5e37" id="prod_list_category_s20211224f6fee13ee5e37" onclick="SHOP_PROD_LIST.startCategorySearch('s20211224f6fee13ee5e37')">
                                        <span class="_name">요구르트</span>
                                    </div>
                                </div>
                                <div class="holder">
                                    <div class="dropdown-handle dd-handle _menu_item" data-code="s2021120949c22c9ec12d0" id="prod_list_category_s2021120949c22c9ec12d0" onclick="SHOP_PROD_LIST.startCategorySearch('s2021120949c22c9ec12d0')">
                                        <span class="_name">주스</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--end.card-body-->
                </div>
                <!--end.card-->

                <div class="card">
                    <div class="card-body no-padding">
                        <ul class="nav nav-pills nav-stacked">
                            <li class="no-hover" id="new_group_btn" data-base_url="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D">
                                <a href="javascript:;" class="text-primary" onclick="SHOP_PROD_LIST.openShowcaseForm()">
                                    기획전 추가 <i class="icon-plus" style="font-size: 15px; vertical-align: middle; margin-left: 4px; position: relative; top: -1px;"></i>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav nav-pills nav-stacked nav-sm" id="showcase_list"></ul>
                    </div>
                    <!--end.card-body-->
                </div>
                <!--end.card-->
            </div>
            <!--end.col-->
            <div class="col-md-9 col-lg-10 col-xl-10">
                <ul class="nav nav-tabs" data-toggle="tabs" style="margin-bottom: 24px;" id="prod_status_tab">
                    <li class="owl_dashboard _owl_dashboard owl-carousel owl-theme owl-loaded">
                        <div class="owl-stage-outer">
                            <div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 281px;">
                                <div class="owl-item active" style="width: auto; margin-right: 0px;">
                                    <ul class="owl-nav-tabs">
                                        <li class="active _all">
                                            <a href="javascript:;" onclick="location.href='./?category=&amp;status=all&amp;q_enc=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D'">전체 <span class="_count text-primary">25</span></a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="owl-item active" style="width: auto; margin-right: 0px;">
                                    <ul class="owl-nav-tabs">
                                        <li class="_sale">
                                            <a href="javascript:;" onclick="location.href='./?category=&amp;status=sale&amp;q_enc=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D'">판매중 <span class="_count text-primary">25</span></a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="owl-item active" style="width: auto; margin-right: 0px;">
                                    <ul class="owl-nav-tabs">
                                        <li class="_soldout">
                                            <a href="javascript:;" onclick="location.href='./?category=&amp;status=soldout&amp;q_enc=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D'">품절 <span class="_count text-primary">0</span></a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="owl-item active" style="width: auto; margin-right: 0px;">
                                    <ul class="owl-nav-tabs">
                                        <li class="_nosale">
                                            <a href="javascript:;" onclick="location.href='./?category=&amp;status=nosale&amp;q_enc=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D'">숨김 <span class="_count text-primary">0</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="owl-controls">
                            <div class="owl-nav">
                                <div class="owl-prev" style="display: none;">prev</div>
                                <div class="owl-next" style="display: none;">next</div>
                            </div>
                            <div class="owl-dots" style="">
                                <div class="owl-dot active"><span></span></div>
                                <div class="owl-dot"><span></span></div>
                                <div class="owl-dot"><span></span></div>
                                <div class="owl-dot"><span></span></div>
                            </div>
                        </div>
                    </li>
                    <li class="list-view-size hidden-xs hidden-sm">
                        <select onchange="location.href='./?q_enc=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;pagesize=' + $(this).val()+'&amp;category=&amp;showcase=&amp;status=all'">
                            <option value="10">10개씩 보기</option>
                            <option value="20" selected="">20개씩 보기</option>
                            <option value="50">50개씩 보기</option>
                            <option value="100">100개씩 보기</option>
                        </select>
                    </li>
                </ul>
                <div class="row">
                    <div class="col-md-12">
                        <div class="clearfix search_form">
                            <div class="card form_left">
                                <div class="card-body no-padding">
                                    <form role="search" class="prod-search" id="prod_search_form" onsubmit="return false;">
                                        <div class="twitter_wrap">
                                            <span class="twitter-typeahead" style="position: relative; display: inline-block;">
                                                <input
                                                    type="text"
                                                    class="_keyword_search form-control typeahead tt-input"
                                                    placeholder="상품명/SKU 검색"
                                                    autocomplete="off"
                                                    spellcheck="false"
                                                    dir="auto"
                                                    style="position: relative; vertical-align: top; border: none; background-color: transparent; padding-left: 0;"
                                                    onkeydown="if (event.keyCode==13) SHOP_PROD_LIST.startKeywordSearch()"
                                                    value=""
                                                />
                                            </span>
                                        </div>

                                        <div class="serach_wrap big_search">
                                            <div class="dd-filter-serach">
                                                <label class="icon_set">
                                                    <i class="btl bt-search" onclick="SHOP_PROD_LIST.startKeywordSearch()"></i>
                                                </label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="card form_right" role="group">
                                <button
                                    type="button"
                                    onclick="SHOP_PROD_MANAGE.openModalProdExcelDownload('')"
                                    class="btn btn-default-bright dropdown-toggle btn-card-height full-width"
                                    data-toggle="dropdown"
                                    aria-haspopup="true"
                                    aria-expanded="false"
                                >
                                    <i class="btl bt-download"></i> 내보내기 <span class="caret"></span>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="card style-transparent card-top no-tab" style="display: none;" id="prod_list_no_prod">
                            <div class="card-head">
                                <header class="style-price-header force-padding">
                                    <h2>판매 시작을 위해 상품을 추가해 주세요</h2>
                                    <div class="sub-title text-gray-bright text-center" style="font-size: 18px;">의류, 전자제품, 식품 등 무엇이든 판매할 수 있습니다.</div>
                                </header>
                            </div>
                            <div class="card-body no-padding-y">
                                <div class="text-center text-gray force-padding">
                                    <button type="button" class="btn ink-reaction btn-lg btn-primary margin-bottom-xl" onclick="window.location.href='/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add'">
                                        상품추가
                                    </button>

                                    <p><a href="javascript:;" class="text-primary" onclick="SHOP_PROD_MANAGE.showMultiProdAdd()">대량 상품 등록</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="card style-transparent card-top no-tab" style="display: none;" id="showcase_list_no_prod">
                            <div class="card-head">
                                <header class="style-price-header force-padding">
                                    <h2>이 기획전에 포함된 상품이 없습니다.</h2>
                                    <div class="sub-title text-gray-bright text-center" style="font-size: 18px;">카테고리에서 기획전에 추가할 상품을 추가할 수 있습니다.</div>
                                </header>
                            </div>
                            <div class="card-body">
                                <div class="text-center">
                                    <img src="/admin/img/imweb-category.gif" style="max-width: 100%;" />
                                </div>
                            </div>
                        </div>
                        <div class="card style-transparent card-top no-tab" style="display: none;" id="prod_list_no_search">
                            <div class="card-head">
                                <header class="style-price-header force-padding">
                                    <h2>검색된 상품이 없습니다</h2>
                                </header>
                            </div>
                        </div>
                        <div class="card">
                            <div class="table-responsive shop-table check" id="prod_list" style="">
                                <table class="table no-margin">
                                    <thead class="subject _prodListHeaderDeselected" style="display: table-header-group;" id="prod_list_header_deselected">
                                        <tr>
                                            <th class="check">
                                                <div class="checkbox checkbox-styled no-margin">
                                                    <label>
                                                        <input type="checkbox" value="" class="_prodListAllCheck" onclick="SHOP_PROD_LIST.listSetAllSelect($(this).prop('checked'),function(codes){SHOP_PROD_LIST.checkProd(codes)})" />
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </th>
                                            <th class="no">No</th>
                                            <th class="title image">상품명</th>
                                            <th></th>
                                            <th class="pay text-right">판매가</th>
                                            <th class="group">카테고리</th>
                                            <th class="showcase">기획전</th>
                                            <th class="state">상태</th>
                                            <th class="stock">재고</th>
                                            <th class="r_date">등록일</th>
                                            <th class="e_date">수정일</th>
                                            <th class="more"></th>
                                        </tr>
                                    </thead>
                                    <thead class="select-thead _prodListHeaderSelected" style="display: none;" id="prod_list_header_selected">
                                        <tr>
                                            <th>
                                                <div class="checkbox checkbox-styled no-margin">
                                                    <label> <input type="checkbox" value="" class="_prodListAllCheck" onclick="SHOP_PROD_LIST.listSetAllSelect($(this).prop('checked'))" /><span></span> </label>
                                                </div>
                                            </th>
                                            <th></th>
                                            <th colspan="12" style="padding: 0;">
                                                <!--												<a class="btn btn-default-bright" id="prod-replication" href="javascript:;" style="margin-right: 10px" onclick="SHOP_PROD_LIST.copyProdMulti()">--><!--</a>-->
                                                <button class="btn btn-default-bright" id="prod-replication" href="javascript:;" style="margin-right: 10px;" onclick="SHOP_PROD_LIST.copyProdMulti()">복제</button>
                                                <button class="btn btn-default-bright" id="prod-delete" href="javascript:;" style="margin-right: 10px;" onclick="SHOP_PROD_LIST.deleteProdMulti()">삭제</button>
                                                <div class="btn-group" role="group" style="margin-right: 10px;">
                                                    <button class="btn btn-default-bright" id="prod-status-change" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-right: -1px;">
                                                        상태 변경 <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop1">
                                                        <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatusMulti('sale')">판매중</a></li>
                                                        <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatusMulti('soldout')">품절</a></li>
                                                        <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatusMulti('nosale')">숨김</a></li>
                                                    </ul>
                                                    <a class="btn btn-default-bright" href="javascript:;" onclick="SHOP_PROD_LIST.openProdListModifyManage('category')">카테고리 변경</a>
                                                    <a class="btn btn-default-bright" href="javascript:;" onclick="SHOP_PROD_LIST.openProdListModifyManage('showcase')">기획전 변경</a>
                                                    <a class="btn btn-default-bright" href="javascript:;" onclick="SHOP_PROD_LIST.openModifyProdPriceMulti();">판매가 변경</a>
                                                    <a class="btn btn-default-bright" href="javascript:;" onclick="SHOP_PROD_LIST.openModifyDiscount();">할인 설정</a>
                                                    <button class="btn btn-default-bright" id="prod-pre-sale" href="javascript:;" onclick="SHOP_PROD_LIST.openModifyPreSale();">판매기간 변경</button>
                                                    <button class="btn btn-default-bright" id="prod-pre-sale" href="javascript:;" onclick="SHOP_PROD_LIST.openModifySku();">재고 변경</button>
                                                    <a class="btn btn-default-bright" href="javascript:;" onclick="SHOP_PROD_LIST.openIconManageMulti()">뱃지 변경</a>
                                                    <a class="btn btn-default-bright" href="javascript:;" onclick="SHOP_PROD_LIST.openProdDetailMulti('header')">상품 상세 공통 변경</a>
                                                    <a class="btn btn-default-bright" href="javascript:;" onclick="SHOP_PROD_LIST.openModifyDisplay()">외부 노출 변경</a>
                                                </div>
                                            </th>
                                        </tr>
                                        <tr id="prod_page_all_selected" style="display: none;">
                                            <!--                                        <tr id="prod_page_all_selected">-->
                                            <th colspan="12" style="padding: 0; background-color: #fafafa; height: 50px; text-align: center;">
                                                <div id="prod_page_selected">
                                                    <a class="" href="javascript:;">
                                                        <span id="changeable_prod_selected_message"></span>
                                                        <!--                                                        이 페이지에 있는 상품 <span id="prod_page_selected_count" class="text-bold"></span>개가 모두 선택되었습니다.-->
                                                        <span id="changeable_prod_all_selected" class="text-primary">
                                                            <!--                                                            <span onclick="SHOP_PROD_LIST.prodAllSelect(true);">-->
                                                            <!--                                                                <span id="prod_page_status"></span> 상품 <span id="prod_page_total_count" class="text-bold"></span>개 모두 선택-->
                                                            <!--                                                            </span>-->
                                                        </span>
                                                        <span id="exist_regularly_product"> </span>
                                                    </a>
                                                </div>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody id="prod_list_body" class="_prod_list_body ui-sortable">
                                        <!--<tr class='content on">-->
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
                                            <!--	<td class="sku"><a href="javascript:;">3847-112</a></td>-->
                                            <td class="pay text-right">1,550원<br /></td>
                                            <!--	<td class="stock">100</td>-->
                                            <!--	<td class="lately">100</td>-->
                                            <td class="group">우유</td>
                                            <!--	<td class="diplay"><img src="../img/doz-icon.png" style="margin: 0 5px 3px 0;"><img src="../img/naver-icon.png"></td>-->
                                            <td class="showcase">
                                                <div class="dropdown">
                                                    <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-flat no-padding _drop_showcase_btn_s20211224145e22830e76f">-</button>
                                                    <ul class="dropdown-menu animation-dock check" role="menu" aria-labelledby="dLabel">
                                                        <div class="select_group _drop_showcase_list _drop_showcase_list_s20211224145e22830e76f" data-showcase="" data-prod="s20211224145e22830e76f" data-noshowcase="Y"></div>
                                                        <div class="footer">
                                                            <li class="divider"></li>
                                                            <li><a href="javascript:;" onclick="SHOP_PROD_LIST.openShowcaseForm()">새 기획전</a></li>
                                                        </div>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="state on-click">
                                                <a data-toggle="dropdown" style="margin-right: -1px;">
                                                    <span>판매중</span>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20211224145e22830e76f', 'sale')">판매중</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20211224145e22830e76f', 'soldout')">품절</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20211224145e22830e76f', 'nosale')">숨김</a></li>
                                                </ul>
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
                                                    <ul aria-labelledby="dLabel" role="menu" class="dropdown-menu animation-dock right">
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('top','s20211224145e22830e76f', '');">맨 위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('pre','s20211224145e22830e76f', '');">위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('next','s20211224145e22830e76f', '');">아래로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('bottom','s20211224145e22830e76f', '');">맨 아래로</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        <!--<tr class='content on">-->
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
                                            <!--	<td class="sku"><a href="javascript:;">3847-112</a></td>-->
                                            <td class="pay text-right">4,100원<br /></td>
                                            <!--	<td class="stock">100</td>-->
                                            <!--	<td class="lately">100</td>-->
                                            <td class="group">우유</td>
                                            <!--	<td class="diplay"><img src="../img/doz-icon.png" style="margin: 0 5px 3px 0;"><img src="../img/naver-icon.png"></td>-->
                                            <td class="showcase">
                                                <div class="dropdown">
                                                    <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-flat no-padding _drop_showcase_btn_s202202255abf98c646e35">-</button>
                                                    <ul class="dropdown-menu animation-dock check" role="menu" aria-labelledby="dLabel">
                                                        <div class="select_group _drop_showcase_list _drop_showcase_list_s202202255abf98c646e35" data-showcase="" data-prod="s202202255abf98c646e35" data-noshowcase="Y"></div>
                                                        <div class="footer">
                                                            <li class="divider"></li>
                                                            <li><a href="javascript:;" onclick="SHOP_PROD_LIST.openShowcaseForm()">새 기획전</a></li>
                                                        </div>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="state on-click">
                                                <a data-toggle="dropdown" style="margin-right: -1px;">
                                                    <span>판매중</span>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s202202255abf98c646e35', 'sale')">판매중</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s202202255abf98c646e35', 'soldout')">품절</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s202202255abf98c646e35', 'nosale')">숨김</a></li>
                                                </ul>
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
                                                    <ul aria-labelledby="dLabel" role="menu" class="dropdown-menu animation-dock right">
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('top','s202202255abf98c646e35', '');">맨 위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('pre','s202202255abf98c646e35', '');">위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('next','s202202255abf98c646e35', '');">아래로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('bottom','s202202255abf98c646e35', '');">맨 아래로</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        <!--<tr class='content on">-->
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
                                            <!--	<td class="diplay"><img src="../img/doz-icon.png" style="margin: 0 5px 3px 0;"><img src="../img/naver-icon.png"></td>-->
                                            <td class="showcase">
                                                <div class="dropdown">
                                                    <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-flat no-padding _drop_showcase_btn_s202112243c57284c8f268">-</button>
                                                    <ul class="dropdown-menu animation-dock check" role="menu" aria-labelledby="dLabel">
                                                        <div class="select_group _drop_showcase_list _drop_showcase_list_s202112243c57284c8f268" data-showcase="" data-prod="s202112243c57284c8f268" data-noshowcase="Y"></div>
                                                        <div class="footer">
                                                            <li class="divider"></li>
                                                            <li><a href="javascript:;" onclick="SHOP_PROD_LIST.openShowcaseForm()">새 기획전</a></li>
                                                        </div>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="state on-click">
                                                <a data-toggle="dropdown" style="margin-right: -1px;">
                                                    <span>판매중</span>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s202112243c57284c8f268', 'sale')">판매중</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s202112243c57284c8f268', 'soldout')">품절</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s202112243c57284c8f268', 'nosale')">숨김</a></li>
                                                </ul>
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
                                                    <ul aria-labelledby="dLabel" role="menu" class="dropdown-menu animation-dock right">
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('top','s202112243c57284c8f268', '');">맨 위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('pre','s202112243c57284c8f268', '');">위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('next','s202112243c57284c8f268', '');">아래로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('bottom','s202112243c57284c8f268', '');">맨 아래로</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        <!--<tr class='content on">-->
                                        <tr class="content _prodListItem" id="prod_list_s202202252d6f4ed9884c3" data-code="s202202252d6f4ed9884c3">
                                            <td class="check">
                                                <div class="drag _showcase_handle ui-sortable-handle"></div>
                                                <div class="checkbox checkbox-styled no-margin">
                                                    <label>
                                                        <input
                                                            type="checkbox"
                                                            value="s202202252d6f4ed9884c3"
                                                            class="_prodListCheck"
                                                            onclick="SHOP_PROD_LIST.listSetSelect('s202202252d6f4ed9884c3',function(codes){
								SHOP_PROD_LIST.checkProd(codes);
								})"
                                                        />
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td class="no text-12">167</td>
                                            <td class="image">
                                                <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=167">
                                                    <img src="https://cdn.imweb.me/thumbnail/20220225/432c32d336ed7.jpg" width="49" height="49" class="item-thumb" />
                                                </a>
                                            </td>
                                            <td class="title">
                                                <div>
                                                    <div class="item-tit inline-blocked">
                                                        <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=167">건강한 저온살균 무항생제 인증목장 우유 750mL</a>
                                                        <span class="prod_icon text-danger icon_default">BEST</span>
                                                        <a href="https://pasteur-sn.imweb.me/52/?idx=167" target="_blank" class="im-icon im-ico-new-tab vertical-middle tab-icon" style="margin-left: 4px;"></a>
                                                    </div>

                                                    <span class="btn-sm text-gray-bright"></span>
                                                </div>
                                            </td>
                                            <!--	<td class="sku"><a href="javascript:;">3847-112</a></td>-->
                                            <td class="pay text-right">4,100원<br /></td>
                                            <!--	<td class="stock">100</td>-->
                                            <!--	<td class="lately">100</td>-->
                                            <td class="group">우유</td>
                                            <!--	<td class="diplay"><img src="../img/doz-icon.png" style="margin: 0 5px 3px 0;"><img src="../img/naver-icon.png"></td>-->
                                            <td class="showcase">
                                                <div class="dropdown">
                                                    <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-flat no-padding _drop_showcase_btn_s202202252d6f4ed9884c3">-</button>
                                                    <ul class="dropdown-menu animation-dock check" role="menu" aria-labelledby="dLabel">
                                                        <div class="select_group _drop_showcase_list _drop_showcase_list_s202202252d6f4ed9884c3" data-showcase="" data-prod="s202202252d6f4ed9884c3" data-noshowcase="Y"></div>
                                                        <div class="footer">
                                                            <li class="divider"></li>
                                                            <li><a href="javascript:;" onclick="SHOP_PROD_LIST.openShowcaseForm()">새 기획전</a></li>
                                                        </div>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="state on-click">
                                                <a data-toggle="dropdown" style="margin-right: -1px;">
                                                    <span>판매중</span>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s202202252d6f4ed9884c3', 'sale')">판매중</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s202202252d6f4ed9884c3', 'soldout')">품절</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s202202252d6f4ed9884c3', 'nosale')">숨김</a></li>
                                                </ul>
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
                                                    <ul aria-labelledby="dLabel" role="menu" class="dropdown-menu animation-dock right">
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('top','s202202252d6f4ed9884c3', '');">맨 위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('pre','s202202252d6f4ed9884c3', '');">위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('next','s202202252d6f4ed9884c3', '');">아래로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('bottom','s202202252d6f4ed9884c3', '');">맨 아래로</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        <!--<tr class='content on">-->
                                        <tr class="content _prodListItem" id="prod_list_s20220106e17ab18467c73" data-code="s20220106e17ab18467c73">
                                            <td class="check">
                                                <div class="drag _showcase_handle ui-sortable-handle"></div>
                                                <div class="checkbox checkbox-styled no-margin">
                                                    <label>
                                                        <input
                                                            type="checkbox"
                                                            value="s20220106e17ab18467c73"
                                                            class="_prodListCheck"
                                                            onclick="SHOP_PROD_LIST.listSetSelect('s20220106e17ab18467c73',function(codes){
								SHOP_PROD_LIST.checkProd(codes);
								})"
                                                        />
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td class="no text-12">151</td>
                                            <td class="image">
                                                <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=151">
                                                    <img src="https://cdn.imweb.me/thumbnail/20220106/3426eb3565ba5.jpg" width="49" height="49" class="item-thumb" />
                                                </a>
                                            </td>
                                            <td class="title">
                                                <div>
                                                    <div class="item-tit inline-blocked">
                                                        <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=151">파스퇴르 유기농 우유 180mL</a>
                                                        <span class="prod_icon text-danger icon_default">BEST</span>
                                                        <a href="https://pasteur-sn.imweb.me/52/?idx=151" target="_blank" class="im-icon im-ico-new-tab vertical-middle tab-icon" style="margin-left: 4px;"></a>
                                                    </div>

                                                    <span class="btn-sm text-gray-bright"></span>
                                                </div>
                                            </td>
                                            <!--	<td class="sku"><a href="javascript:;">3847-112</a></td>-->
                                            <td class="pay text-right">1,750원<br /></td>
                                            <!--	<td class="stock">100</td>-->
                                            <!--	<td class="lately">100</td>-->
                                            <td class="group">우유</td>
                                            <!--	<td class="diplay"><img src="../img/doz-icon.png" style="margin: 0 5px 3px 0;"><img src="../img/naver-icon.png"></td>-->
                                            <td class="showcase">
                                                <div class="dropdown">
                                                    <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-flat no-padding _drop_showcase_btn_s20220106e17ab18467c73">-</button>
                                                    <ul class="dropdown-menu animation-dock check" role="menu" aria-labelledby="dLabel">
                                                        <div class="select_group _drop_showcase_list _drop_showcase_list_s20220106e17ab18467c73" data-showcase="" data-prod="s20220106e17ab18467c73" data-noshowcase="Y"></div>
                                                        <div class="footer">
                                                            <li class="divider"></li>
                                                            <li><a href="javascript:;" onclick="SHOP_PROD_LIST.openShowcaseForm()">새 기획전</a></li>
                                                        </div>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="state on-click">
                                                <a data-toggle="dropdown" style="margin-right: -1px;">
                                                    <span>판매중</span>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106e17ab18467c73', 'sale')">판매중</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106e17ab18467c73', 'soldout')">품절</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106e17ab18467c73', 'nosale')">숨김</a></li>
                                                </ul>
                                            </td>
                                            <td class="text-12" style="padding-left: 20px;">
                                                -
                                            </td>
                                            <td class="r_date text-12">2022-01-06</td>
                                            <td class="e_date text-12">2022-02-25</td>
                                            <td class="more">
                                                <div class="dropdown">
                                                    <button class="btn btn-flat" aria-expanded="true" data-toggle="dropdown" type="button" id="dLabel">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                    <ul aria-labelledby="dLabel" role="menu" class="dropdown-menu animation-dock right">
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('top','s20220106e17ab18467c73', '');">맨 위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('pre','s20220106e17ab18467c73', '');">위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('next','s20220106e17ab18467c73', '');">아래로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('bottom','s20220106e17ab18467c73', '');">맨 아래로</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        <!--<tr class='content on">-->
                                        <tr class="content _prodListItem" id="prod_list_s20220225ca677f8f803f3" data-code="s20220225ca677f8f803f3">
                                            <td class="check">
                                                <div class="drag _showcase_handle ui-sortable-handle"></div>
                                                <div class="checkbox checkbox-styled no-margin">
                                                    <label>
                                                        <input
                                                            type="checkbox"
                                                            value="s20220225ca677f8f803f3"
                                                            class="_prodListCheck"
                                                            onclick="SHOP_PROD_LIST.listSetSelect('s20220225ca677f8f803f3',function(codes){
								SHOP_PROD_LIST.checkProd(codes);
								})"
                                                        />
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td class="no text-12">166</td>
                                            <td class="image">
                                                <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=166">
                                                    <img src="https://cdn.imweb.me/thumbnail/20220225/fd4fe1ae18075.jpg" width="49" height="49" class="item-thumb" />
                                                </a>
                                            </td>
                                            <td class="title">
                                                <div>
                                                    <div class="item-tit inline-blocked">
                                                        <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=166">파스퇴르 유기농 우유 750mL</a>
                                                        <span class="prod_icon text-danger icon_default">BEST</span>
                                                        <a href="https://pasteur-sn.imweb.me/52/?idx=166" target="_blank" class="im-icon im-ico-new-tab vertical-middle tab-icon" style="margin-left: 4px;"></a>
                                                    </div>

                                                    <span class="btn-sm text-gray-bright"></span>
                                                </div>
                                            </td>
                                            <!--	<td class="sku"><a href="javascript:;">3847-112</a></td>-->
                                            <td class="pay text-right">5,200원<br /></td>
                                            <!--	<td class="stock">100</td>-->
                                            <!--	<td class="lately">100</td>-->
                                            <td class="group">우유</td>
                                            <!--	<td class="diplay"><img src="../img/doz-icon.png" style="margin: 0 5px 3px 0;"><img src="../img/naver-icon.png"></td>-->
                                            <td class="showcase">
                                                <div class="dropdown">
                                                    <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-flat no-padding _drop_showcase_btn_s20220225ca677f8f803f3">-</button>
                                                    <ul class="dropdown-menu animation-dock check" role="menu" aria-labelledby="dLabel">
                                                        <div class="select_group _drop_showcase_list _drop_showcase_list_s20220225ca677f8f803f3" data-showcase="" data-prod="s20220225ca677f8f803f3" data-noshowcase="Y"></div>
                                                        <div class="footer">
                                                            <li class="divider"></li>
                                                            <li><a href="javascript:;" onclick="SHOP_PROD_LIST.openShowcaseForm()">새 기획전</a></li>
                                                        </div>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="state on-click">
                                                <a data-toggle="dropdown" style="margin-right: -1px;">
                                                    <span>판매중</span>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220225ca677f8f803f3', 'sale')">판매중</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220225ca677f8f803f3', 'soldout')">품절</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220225ca677f8f803f3', 'nosale')">숨김</a></li>
                                                </ul>
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
                                                    <ul aria-labelledby="dLabel" role="menu" class="dropdown-menu animation-dock right">
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('top','s20220225ca677f8f803f3', '');">맨 위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('pre','s20220225ca677f8f803f3', '');">위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('next','s20220225ca677f8f803f3', '');">아래로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('bottom','s20220225ca677f8f803f3', '');">맨 아래로</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        <!--<tr class='content on">-->
                                        <tr class="content _prodListItem" id="prod_list_s20220106f8fbd3f4c347c" data-code="s20220106f8fbd3f4c347c">
                                            <td class="check">
                                                <div class="drag _showcase_handle ui-sortable-handle"></div>
                                                <div class="checkbox checkbox-styled no-margin">
                                                    <label>
                                                        <input
                                                            type="checkbox"
                                                            value="s20220106f8fbd3f4c347c"
                                                            class="_prodListCheck"
                                                            onclick="SHOP_PROD_LIST.listSetSelect('s20220106f8fbd3f4c347c',function(codes){
								SHOP_PROD_LIST.checkProd(codes);
								})"
                                                        />
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td class="no text-12">152</td>
                                            <td class="image">
                                                <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=152">
                                                    <img src="https://cdn.imweb.me/thumbnail/20220106/7f76ce3bf623d.jpg" width="49" height="49" class="item-thumb" />
                                                </a>
                                            </td>
                                            <td class="title">
                                                <div>
                                                    <div class="item-tit inline-blocked">
                                                        <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=152">강원청정목장 프리미엄골드 180mL</a>
                                                        <span class="prod_icon text-danger icon_default">BEST</span>
                                                        <a href="https://pasteur-sn.imweb.me/52/?idx=152" target="_blank" class="im-icon im-ico-new-tab vertical-middle tab-icon" style="margin-left: 4px;"></a>
                                                    </div>

                                                    <span class="btn-sm text-gray-bright"></span>
                                                </div>
                                            </td>
                                            <!--	<td class="sku"><a href="javascript:;">3847-112</a></td>-->
                                            <td class="pay text-right">1,550원<br /></td>
                                            <!--	<td class="stock">100</td>-->
                                            <!--	<td class="lately">100</td>-->
                                            <td class="group">우유</td>
                                            <!--	<td class="diplay"><img src="../img/doz-icon.png" style="margin: 0 5px 3px 0;"><img src="../img/naver-icon.png"></td>-->
                                            <td class="showcase">
                                                <div class="dropdown">
                                                    <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-flat no-padding _drop_showcase_btn_s20220106f8fbd3f4c347c">-</button>
                                                    <ul class="dropdown-menu animation-dock check" role="menu" aria-labelledby="dLabel">
                                                        <div class="select_group _drop_showcase_list _drop_showcase_list_s20220106f8fbd3f4c347c" data-showcase="" data-prod="s20220106f8fbd3f4c347c" data-noshowcase="Y"></div>
                                                        <div class="footer">
                                                            <li class="divider"></li>
                                                            <li><a href="javascript:;" onclick="SHOP_PROD_LIST.openShowcaseForm()">새 기획전</a></li>
                                                        </div>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="state on-click">
                                                <a data-toggle="dropdown" style="margin-right: -1px;">
                                                    <span>판매중</span>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106f8fbd3f4c347c', 'sale')">판매중</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106f8fbd3f4c347c', 'soldout')">품절</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106f8fbd3f4c347c', 'nosale')">숨김</a></li>
                                                </ul>
                                            </td>
                                            <td class="text-12" style="padding-left: 20px;">
                                                -
                                            </td>
                                            <td class="r_date text-12">2022-01-06</td>
                                            <td class="e_date text-12">2022-02-25</td>
                                            <td class="more">
                                                <div class="dropdown dropup">
                                                    <button class="btn btn-flat" aria-expanded="true" data-toggle="dropdown" type="button" id="dLabel">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                    <ul aria-labelledby="dLabel" role="menu" class="dropdown-menu animation-dock right">
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('top','s20220106f8fbd3f4c347c', '');">맨 위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('pre','s20220106f8fbd3f4c347c', '');">위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('next','s20220106f8fbd3f4c347c', '');">아래로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('bottom','s20220106f8fbd3f4c347c', '');">맨 아래로</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        <!--<tr class='content on">-->
                                        <tr class="content _prodListItem" id="prod_list_s202202256b2f4d445cc57" data-code="s202202256b2f4d445cc57">
                                            <td class="check">
                                                <div class="drag _showcase_handle ui-sortable-handle"></div>
                                                <div class="checkbox checkbox-styled no-margin">
                                                    <label>
                                                        <input
                                                            type="checkbox"
                                                            value="s202202256b2f4d445cc57"
                                                            class="_prodListCheck"
                                                            onclick="SHOP_PROD_LIST.listSetSelect('s202202256b2f4d445cc57',function(codes){
								SHOP_PROD_LIST.checkProd(codes);
								})"
                                                        />
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td class="no text-12">174</td>
                                            <td class="image">
                                                <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=174">
                                                    <img src="https://cdn.imweb.me/thumbnail/20220225/56081907ba211.jpg" width="49" height="49" class="item-thumb" />
                                                </a>
                                            </td>
                                            <td class="title">
                                                <div>
                                                    <div class="item-tit inline-blocked">
                                                        <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=174">강원청정목장 프리미엄골드 900mL</a>
                                                        <span class="prod_icon text-danger icon_default">BEST</span>
                                                        <a href="https://pasteur-sn.imweb.me/52/?idx=174" target="_blank" class="im-icon im-ico-new-tab vertical-middle tab-icon" style="margin-left: 4px;"></a>
                                                    </div>

                                                    <span class="btn-sm text-gray-bright"></span>
                                                </div>
                                            </td>
                                            <!--	<td class="sku"><a href="javascript:;">3847-112</a></td>-->
                                            <td class="pay text-right">4,400원<br /></td>
                                            <!--	<td class="stock">100</td>-->
                                            <!--	<td class="lately">100</td>-->
                                            <td class="group">우유</td>
                                            <!--	<td class="diplay"><img src="../img/doz-icon.png" style="margin: 0 5px 3px 0;"><img src="../img/naver-icon.png"></td>-->
                                            <td class="showcase">
                                                <div class="dropdown">
                                                    <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-flat no-padding _drop_showcase_btn_s202202256b2f4d445cc57">-</button>
                                                    <ul class="dropdown-menu animation-dock check" role="menu" aria-labelledby="dLabel">
                                                        <div class="select_group _drop_showcase_list _drop_showcase_list_s202202256b2f4d445cc57" data-showcase="" data-prod="s202202256b2f4d445cc57" data-noshowcase="Y"></div>
                                                        <div class="footer">
                                                            <li class="divider"></li>
                                                            <li><a href="javascript:;" onclick="SHOP_PROD_LIST.openShowcaseForm()">새 기획전</a></li>
                                                        </div>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="state on-click dropup">
                                                <a data-toggle="dropdown" style="margin-right: -1px;">
                                                    <span>판매중</span>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s202202256b2f4d445cc57', 'sale')">판매중</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s202202256b2f4d445cc57', 'soldout')">품절</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s202202256b2f4d445cc57', 'nosale')">숨김</a></li>
                                                </ul>
                                            </td>
                                            <td class="text-12" style="padding-left: 20px;">
                                                -
                                            </td>
                                            <td class="r_date text-12">2022-02-25</td>
                                            <td class="e_date text-12">2022-02-25</td>
                                            <td class="more">
                                                <div class="dropdown dropup">
                                                    <button class="btn btn-flat" aria-expanded="true" data-toggle="dropdown" type="button" id="dLabel">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                    <ul aria-labelledby="dLabel" role="menu" class="dropdown-menu animation-dock right">
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('top','s202202256b2f4d445cc57', '');">맨 위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('pre','s202202256b2f4d445cc57', '');">위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('next','s202202256b2f4d445cc57', '');">아래로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('bottom','s202202256b2f4d445cc57', '');">맨 아래로</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        <!--<tr class='content on">-->
                                        <tr class="content _prodListItem" id="prod_list_s20220106c360ff5180c99" data-code="s20220106c360ff5180c99">
                                            <td class="check">
                                                <div class="drag _showcase_handle ui-sortable-handle"></div>
                                                <div class="checkbox checkbox-styled no-margin">
                                                    <label>
                                                        <input
                                                            type="checkbox"
                                                            value="s20220106c360ff5180c99"
                                                            class="_prodListCheck"
                                                            onclick="SHOP_PROD_LIST.listSetSelect('s20220106c360ff5180c99',function(codes){
								SHOP_PROD_LIST.checkProd(codes);
								})"
                                                        />
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td class="no text-12">153</td>
                                            <td class="image">
                                                <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=153">
                                                    <img src="https://cdn.imweb.me/thumbnail/20220106/02c230f83fc8f.jpg" width="49" height="49" class="item-thumb" />
                                                </a>
                                            </td>
                                            <td class="title">
                                                <div>
                                                    <div class="item-tit inline-blocked">
                                                        <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=153">강원청정목장 프리미엄골드 저지방 900mL</a>
                                                        <a href="https://pasteur-sn.imweb.me/52/?idx=153" target="_blank" class="im-icon im-ico-new-tab vertical-middle tab-icon" style="margin-left: 4px;"></a>
                                                    </div>

                                                    <span class="btn-sm text-gray-bright"></span>
                                                </div>
                                            </td>
                                            <!--	<td class="sku"><a href="javascript:;">3847-112</a></td>-->
                                            <td class="pay text-right">4,500원<br /></td>
                                            <!--	<td class="stock">100</td>-->
                                            <!--	<td class="lately">100</td>-->
                                            <td class="group">우유</td>
                                            <!--	<td class="diplay"><img src="../img/doz-icon.png" style="margin: 0 5px 3px 0;"><img src="../img/naver-icon.png"></td>-->
                                            <td class="showcase">
                                                <div class="dropdown dropup">
                                                    <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-flat no-padding _drop_showcase_btn_s20220106c360ff5180c99">-</button>
                                                    <ul class="dropdown-menu animation-dock check" role="menu" aria-labelledby="dLabel">
                                                        <div class="select_group _drop_showcase_list _drop_showcase_list_s20220106c360ff5180c99" data-showcase="" data-prod="s20220106c360ff5180c99" data-noshowcase="Y"></div>
                                                        <div class="footer">
                                                            <li class="divider"></li>
                                                            <li><a href="javascript:;" onclick="SHOP_PROD_LIST.openShowcaseForm()">새 기획전</a></li>
                                                        </div>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="state on-click dropup">
                                                <a data-toggle="dropdown" style="margin-right: -1px;">
                                                    <span>판매중</span>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106c360ff5180c99', 'sale')">판매중</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106c360ff5180c99', 'soldout')">품절</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106c360ff5180c99', 'nosale')">숨김</a></li>
                                                </ul>
                                            </td>
                                            <td class="text-12" style="padding-left: 20px;">
                                                -
                                            </td>
                                            <td class="r_date text-12">2022-01-06</td>
                                            <td class="e_date text-12">2022-01-06</td>
                                            <td class="more">
                                                <div class="dropdown dropup">
                                                    <button class="btn btn-flat" aria-expanded="true" data-toggle="dropdown" type="button" id="dLabel">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                    <ul aria-labelledby="dLabel" role="menu" class="dropdown-menu animation-dock right">
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('top','s20220106c360ff5180c99', '');">맨 위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('pre','s20220106c360ff5180c99', '');">위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('next','s20220106c360ff5180c99', '');">아래로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('bottom','s20220106c360ff5180c99', '');">맨 아래로</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        <!--<tr class='content on">-->
                                        <tr class="content _prodListItem" id="prod_list_s202201062b625d2297a7e" data-code="s202201062b625d2297a7e">
                                            <td class="check">
                                                <div class="drag _showcase_handle ui-sortable-handle"></div>
                                                <div class="checkbox checkbox-styled no-margin">
                                                    <label>
                                                        <input
                                                            type="checkbox"
                                                            value="s202201062b625d2297a7e"
                                                            class="_prodListCheck"
                                                            onclick="SHOP_PROD_LIST.listSetSelect('s202201062b625d2297a7e',function(codes){
								SHOP_PROD_LIST.checkProd(codes);
								})"
                                                        />
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td class="no text-12">154</td>
                                            <td class="image">
                                                <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=154">
                                                    <img src="https://cdn.imweb.me/thumbnail/20220106/a4341db8df85e.jpg" width="49" height="49" class="item-thumb" />
                                                </a>
                                            </td>
                                            <td class="title">
                                                <div>
                                                    <div class="item-tit inline-blocked">
                                                        <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=154">내곁에목장 유기농 우유 900mL 일반</a>
                                                        <a href="https://pasteur-sn.imweb.me/52/?idx=154" target="_blank" class="im-icon im-ico-new-tab vertical-middle tab-icon" style="margin-left: 4px;"></a>
                                                    </div>

                                                    <span class="btn-sm text-gray-bright"></span>
                                                </div>
                                            </td>
                                            <!--	<td class="sku"><a href="javascript:;">3847-112</a></td>-->
                                            <td class="pay text-right">8,750원<br /></td>
                                            <!--	<td class="stock">100</td>-->
                                            <!--	<td class="lately">100</td>-->
                                            <td class="group">우유</td>
                                            <!--	<td class="diplay"><img src="../img/doz-icon.png" style="margin: 0 5px 3px 0;"><img src="../img/naver-icon.png"></td>-->
                                            <td class="showcase">
                                                <div class="dropdown dropup">
                                                    <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-flat no-padding _drop_showcase_btn_s202201062b625d2297a7e">-</button>
                                                    <ul class="dropdown-menu animation-dock check" role="menu" aria-labelledby="dLabel">
                                                        <div class="select_group _drop_showcase_list _drop_showcase_list_s202201062b625d2297a7e" data-showcase="" data-prod="s202201062b625d2297a7e" data-noshowcase="Y"></div>
                                                        <div class="footer">
                                                            <li class="divider"></li>
                                                            <li><a href="javascript:;" onclick="SHOP_PROD_LIST.openShowcaseForm()">새 기획전</a></li>
                                                        </div>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="state on-click dropup">
                                                <a data-toggle="dropdown" style="margin-right: -1px;">
                                                    <span>판매중</span>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s202201062b625d2297a7e', 'sale')">판매중</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s202201062b625d2297a7e', 'soldout')">품절</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s202201062b625d2297a7e', 'nosale')">숨김</a></li>
                                                </ul>
                                            </td>
                                            <td class="text-12" style="padding-left: 20px;">
                                                -
                                            </td>
                                            <td class="r_date text-12">2022-01-06</td>
                                            <td class="e_date text-12">2022-02-25</td>
                                            <td class="more">
                                                <div class="dropdown dropup">
                                                    <button class="btn btn-flat" aria-expanded="true" data-toggle="dropdown" type="button" id="dLabel">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                    <ul aria-labelledby="dLabel" role="menu" class="dropdown-menu animation-dock right">
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('top','s202201062b625d2297a7e', '');">맨 위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('pre','s202201062b625d2297a7e', '');">위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('next','s202201062b625d2297a7e', '');">아래로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('bottom','s202201062b625d2297a7e', '');">맨 아래로</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        <!--<tr class='content on">-->
                                        <tr class="content _prodListItem" id="prod_list_s2022022520ce3b564df4d" data-code="s2022022520ce3b564df4d">
                                            <td class="check">
                                                <div class="drag _showcase_handle ui-sortable-handle"></div>
                                                <div class="checkbox checkbox-styled no-margin">
                                                    <label>
                                                        <input
                                                            type="checkbox"
                                                            value="s2022022520ce3b564df4d"
                                                            class="_prodListCheck"
                                                            onclick="SHOP_PROD_LIST.listSetSelect('s2022022520ce3b564df4d',function(codes){
								SHOP_PROD_LIST.checkProd(codes);
								})"
                                                        />
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td class="no text-12">173</td>
                                            <td class="image">
                                                <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=173">
                                                    <img src="https://cdn.imweb.me/thumbnail/20220225/db33494e41abe.jpg" width="49" height="49" class="item-thumb" />
                                                </a>
                                            </td>
                                            <td class="title">
                                                <div>
                                                    <div class="item-tit inline-blocked">
                                                        <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=173">내곁에목장 유기농 우유 900mL 저지방</a>
                                                        <a href="https://pasteur-sn.imweb.me/52/?idx=173" target="_blank" class="im-icon im-ico-new-tab vertical-middle tab-icon" style="margin-left: 4px;"></a>
                                                    </div>

                                                    <span class="btn-sm text-gray-bright"></span>
                                                </div>
                                            </td>
                                            <!--	<td class="sku"><a href="javascript:;">3847-112</a></td>-->
                                            <td class="pay text-right">8,750원<br /></td>
                                            <!--	<td class="stock">100</td>-->
                                            <!--	<td class="lately">100</td>-->
                                            <td class="group">우유</td>
                                            <!--	<td class="diplay"><img src="../img/doz-icon.png" style="margin: 0 5px 3px 0;"><img src="../img/naver-icon.png"></td>-->
                                            <td class="showcase">
                                                <div class="dropdown dropup">
                                                    <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-flat no-padding _drop_showcase_btn_s2022022520ce3b564df4d">-</button>
                                                    <ul class="dropdown-menu animation-dock check" role="menu" aria-labelledby="dLabel">
                                                        <div class="select_group _drop_showcase_list _drop_showcase_list_s2022022520ce3b564df4d" data-showcase="" data-prod="s2022022520ce3b564df4d" data-noshowcase="Y"></div>
                                                        <div class="footer">
                                                            <li class="divider"></li>
                                                            <li><a href="javascript:;" onclick="SHOP_PROD_LIST.openShowcaseForm()">새 기획전</a></li>
                                                        </div>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="state on-click dropup">
                                                <a data-toggle="dropdown" style="margin-right: -1px;">
                                                    <span>판매중</span>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s2022022520ce3b564df4d', 'sale')">판매중</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s2022022520ce3b564df4d', 'soldout')">품절</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s2022022520ce3b564df4d', 'nosale')">숨김</a></li>
                                                </ul>
                                            </td>
                                            <td class="text-12" style="padding-left: 20px;">
                                                -
                                            </td>
                                            <td class="r_date text-12">2022-02-25</td>
                                            <td class="e_date text-12">2022-02-25</td>
                                            <td class="more">
                                                <div class="dropdown dropup">
                                                    <button class="btn btn-flat" aria-expanded="true" data-toggle="dropdown" type="button" id="dLabel">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                    <ul aria-labelledby="dLabel" role="menu" class="dropdown-menu animation-dock right">
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('top','s2022022520ce3b564df4d', '');">맨 위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('pre','s2022022520ce3b564df4d', '');">위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('next','s2022022520ce3b564df4d', '');">아래로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('bottom','s2022022520ce3b564df4d', '');">맨 아래로</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        <!--<tr class='content on">-->
                                        <tr class="content _prodListItem" id="prod_list_s20220106a9bd7c3111007" data-code="s20220106a9bd7c3111007">
                                            <td class="check">
                                                <div class="drag _showcase_handle ui-sortable-handle"></div>
                                                <div class="checkbox checkbox-styled no-margin">
                                                    <label>
                                                        <input
                                                            type="checkbox"
                                                            value="s20220106a9bd7c3111007"
                                                            class="_prodListCheck"
                                                            onclick="SHOP_PROD_LIST.listSetSelect('s20220106a9bd7c3111007',function(codes){
								SHOP_PROD_LIST.checkProd(codes);
								})"
                                                        />
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td class="no text-12">158</td>
                                            <td class="image">
                                                <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=158">
                                                    <img src="https://cdn.imweb.me/thumbnail/20220106/cac9e4ec48e07.jpg" width="49" height="49" class="item-thumb" />
                                                </a>
                                            </td>
                                            <td class="title">
                                                <div>
                                                    <div class="item-tit inline-blocked">
                                                        <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=158">오직 우유100% 요구르트 500mL</a>
                                                        <a href="https://pasteur-sn.imweb.me/55/?idx=158" target="_blank" class="im-icon im-ico-new-tab vertical-middle tab-icon" style="margin-left: 4px;"></a>
                                                    </div>

                                                    <span class="btn-sm text-gray-bright"></span>
                                                </div>
                                            </td>
                                            <!--	<td class="sku"><a href="javascript:;">3847-112</a></td>-->
                                            <td class="pay text-right">4,200원<br /></td>
                                            <!--	<td class="stock">100</td>-->
                                            <!--	<td class="lately">100</td>-->
                                            <td class="group">요구르트</td>
                                            <!--	<td class="diplay"><img src="../img/doz-icon.png" style="margin: 0 5px 3px 0;"><img src="../img/naver-icon.png"></td>-->
                                            <td class="showcase">
                                                <div class="dropdown dropup">
                                                    <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-flat no-padding _drop_showcase_btn_s20220106a9bd7c3111007">-</button>
                                                    <ul class="dropdown-menu animation-dock check" role="menu" aria-labelledby="dLabel">
                                                        <div class="select_group _drop_showcase_list _drop_showcase_list_s20220106a9bd7c3111007" data-showcase="" data-prod="s20220106a9bd7c3111007" data-noshowcase="Y"></div>
                                                        <div class="footer">
                                                            <li class="divider"></li>
                                                            <li><a href="javascript:;" onclick="SHOP_PROD_LIST.openShowcaseForm()">새 기획전</a></li>
                                                        </div>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="state on-click dropup">
                                                <a data-toggle="dropdown" style="margin-right: -1px;">
                                                    <span>판매중</span>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106a9bd7c3111007', 'sale')">판매중</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106a9bd7c3111007', 'soldout')">품절</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106a9bd7c3111007', 'nosale')">숨김</a></li>
                                                </ul>
                                            </td>
                                            <td class="text-12" style="padding-left: 20px;">
                                                -
                                            </td>
                                            <td class="r_date text-12">2022-01-06</td>
                                            <td class="e_date text-12">2022-01-06</td>
                                            <td class="more">
                                                <div class="dropdown dropup">
                                                    <button class="btn btn-flat" aria-expanded="true" data-toggle="dropdown" type="button" id="dLabel">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                    <ul aria-labelledby="dLabel" role="menu" class="dropdown-menu animation-dock right">
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('top','s20220106a9bd7c3111007', '');">맨 위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('pre','s20220106a9bd7c3111007', '');">위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('next','s20220106a9bd7c3111007', '');">아래로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('bottom','s20220106a9bd7c3111007', '');">맨 아래로</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        <!--<tr class='content on">-->
                                        <tr class="content _prodListItem" id="prod_list_s2022010630990be3dcc93" data-code="s2022010630990be3dcc93">
                                            <td class="check">
                                                <div class="drag _showcase_handle ui-sortable-handle"></div>
                                                <div class="checkbox checkbox-styled no-margin">
                                                    <label>
                                                        <input
                                                            type="checkbox"
                                                            value="s2022010630990be3dcc93"
                                                            class="_prodListCheck"
                                                            onclick="SHOP_PROD_LIST.listSetSelect('s2022010630990be3dcc93',function(codes){
								SHOP_PROD_LIST.checkProd(codes);
								})"
                                                        />
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td class="no text-12">159</td>
                                            <td class="image">
                                                <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=159">
                                                    <img src="https://cdn.imweb.me/thumbnail/20220106/dc44be3c6052d.jpg" width="49" height="49" class="item-thumb" />
                                                </a>
                                            </td>
                                            <td class="title">
                                                <div>
                                                    <div class="item-tit inline-blocked">
                                                        <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=159">쾌변 요구르트 사과 150mL</a>
                                                        <a href="https://pasteur-sn.imweb.me/55/?idx=159" target="_blank" class="im-icon im-ico-new-tab vertical-middle tab-icon" style="margin-left: 4px;"></a>
                                                    </div>

                                                    <span class="btn-sm text-gray-bright"></span>
                                                </div>
                                            </td>
                                            <!--	<td class="sku"><a href="javascript:;">3847-112</a></td>-->
                                            <td class="pay text-right">1,500원<br /></td>
                                            <!--	<td class="stock">100</td>-->
                                            <!--	<td class="lately">100</td>-->
                                            <td class="group">요구르트</td>
                                            <!--	<td class="diplay"><img src="../img/doz-icon.png" style="margin: 0 5px 3px 0;"><img src="../img/naver-icon.png"></td>-->
                                            <td class="showcase">
                                                <div class="dropdown dropup">
                                                    <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-flat no-padding _drop_showcase_btn_s2022010630990be3dcc93">-</button>
                                                    <ul class="dropdown-menu animation-dock check" role="menu" aria-labelledby="dLabel">
                                                        <div class="select_group _drop_showcase_list _drop_showcase_list_s2022010630990be3dcc93" data-showcase="" data-prod="s2022010630990be3dcc93" data-noshowcase="Y"></div>
                                                        <div class="footer">
                                                            <li class="divider"></li>
                                                            <li><a href="javascript:;" onclick="SHOP_PROD_LIST.openShowcaseForm()">새 기획전</a></li>
                                                        </div>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="state on-click dropup">
                                                <a data-toggle="dropdown" style="margin-right: -1px;">
                                                    <span>판매중</span>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s2022010630990be3dcc93', 'sale')">판매중</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s2022010630990be3dcc93', 'soldout')">품절</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s2022010630990be3dcc93', 'nosale')">숨김</a></li>
                                                </ul>
                                            </td>
                                            <td class="text-12" style="padding-left: 20px;">
                                                -
                                            </td>
                                            <td class="r_date text-12">2022-01-06</td>
                                            <td class="e_date text-12">2022-01-06</td>
                                            <td class="more">
                                                <div class="dropdown dropup">
                                                    <button class="btn btn-flat" aria-expanded="true" data-toggle="dropdown" type="button" id="dLabel">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                    <ul aria-labelledby="dLabel" role="menu" class="dropdown-menu animation-dock right">
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('top','s2022010630990be3dcc93', '');">맨 위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('pre','s2022010630990be3dcc93', '');">위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('next','s2022010630990be3dcc93', '');">아래로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('bottom','s2022010630990be3dcc93', '');">맨 아래로</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        <!--<tr class='content on">-->
                                        <tr class="content _prodListItem" id="prod_list_s20220106d64c2815efe74" data-code="s20220106d64c2815efe74">
                                            <td class="check">
                                                <div class="drag _showcase_handle ui-sortable-handle"></div>
                                                <div class="checkbox checkbox-styled no-margin">
                                                    <label>
                                                        <input
                                                            type="checkbox"
                                                            value="s20220106d64c2815efe74"
                                                            class="_prodListCheck"
                                                            onclick="SHOP_PROD_LIST.listSetSelect('s20220106d64c2815efe74',function(codes){
								SHOP_PROD_LIST.checkProd(codes);
								})"
                                                        />
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td class="no text-12">155</td>
                                            <td class="image">
                                                <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=155">
                                                    <img src="https://cdn.imweb.me/thumbnail/20220106/96031ac5ec274.jpg" width="49" height="49" class="item-thumb" />
                                                </a>
                                            </td>
                                            <td class="title">
                                                <div>
                                                    <div class="item-tit inline-blocked">
                                                        <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=155">바른목장 소화가 잘되는 우유 180mL</a>
                                                        <a href="https://pasteur-sn.imweb.me/52/?idx=155" target="_blank" class="im-icon im-ico-new-tab vertical-middle tab-icon" style="margin-left: 4px;"></a>
                                                    </div>

                                                    <span class="btn-sm text-gray-bright"></span>
                                                </div>
                                            </td>
                                            <!--	<td class="sku"><a href="javascript:;">3847-112</a></td>-->
                                            <td class="pay text-right">1,600원<br /></td>
                                            <!--	<td class="stock">100</td>-->
                                            <!--	<td class="lately">100</td>-->
                                            <td class="group">우유</td>
                                            <!--	<td class="diplay"><img src="../img/doz-icon.png" style="margin: 0 5px 3px 0;"><img src="../img/naver-icon.png"></td>-->
                                            <td class="showcase">
                                                <div class="dropdown dropup">
                                                    <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-flat no-padding _drop_showcase_btn_s20220106d64c2815efe74">-</button>
                                                    <ul class="dropdown-menu animation-dock check" role="menu" aria-labelledby="dLabel">
                                                        <div class="select_group _drop_showcase_list _drop_showcase_list_s20220106d64c2815efe74" data-showcase="" data-prod="s20220106d64c2815efe74" data-noshowcase="Y"></div>
                                                        <div class="footer">
                                                            <li class="divider"></li>
                                                            <li><a href="javascript:;" onclick="SHOP_PROD_LIST.openShowcaseForm()">새 기획전</a></li>
                                                        </div>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="state on-click dropup">
                                                <a data-toggle="dropdown" style="margin-right: -1px;">
                                                    <span>판매중</span>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106d64c2815efe74', 'sale')">판매중</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106d64c2815efe74', 'soldout')">품절</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106d64c2815efe74', 'nosale')">숨김</a></li>
                                                </ul>
                                            </td>
                                            <td class="text-12" style="padding-left: 20px;">
                                                -
                                            </td>
                                            <td class="r_date text-12">2022-01-06</td>
                                            <td class="e_date text-12">2022-02-25</td>
                                            <td class="more">
                                                <div class="dropdown dropup">
                                                    <button class="btn btn-flat" aria-expanded="true" data-toggle="dropdown" type="button" id="dLabel">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                    <ul aria-labelledby="dLabel" role="menu" class="dropdown-menu animation-dock right">
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('top','s20220106d64c2815efe74', '');">맨 위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('pre','s20220106d64c2815efe74', '');">위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('next','s20220106d64c2815efe74', '');">아래로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('bottom','s20220106d64c2815efe74', '');">맨 아래로</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        <!--<tr class='content on">-->
                                        <tr class="content _prodListItem" id="prod_list_s20220225463c79f294b69" data-code="s20220225463c79f294b69">
                                            <td class="check">
                                                <div class="drag _showcase_handle ui-sortable-handle"></div>
                                                <div class="checkbox checkbox-styled no-margin">
                                                    <label>
                                                        <input
                                                            type="checkbox"
                                                            value="s20220225463c79f294b69"
                                                            class="_prodListCheck"
                                                            onclick="SHOP_PROD_LIST.listSetSelect('s20220225463c79f294b69',function(codes){
								SHOP_PROD_LIST.checkProd(codes);
								})"
                                                        />
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td class="no text-12">172</td>
                                            <td class="image">
                                                <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=172">
                                                    <img src="https://cdn.imweb.me/thumbnail/20220225/8ab01c1dae779.jpg" width="49" height="49" class="item-thumb" />
                                                </a>
                                            </td>
                                            <td class="title">
                                                <div>
                                                    <div class="item-tit inline-blocked">
                                                        <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=172">바른목장 소화가 잘되는 우유 750mL</a>
                                                        <a href="https://pasteur-sn.imweb.me/52/?idx=172" target="_blank" class="im-icon im-ico-new-tab vertical-middle tab-icon" style="margin-left: 4px;"></a>
                                                    </div>

                                                    <span class="btn-sm text-gray-bright"></span>
                                                </div>
                                            </td>
                                            <!--	<td class="sku"><a href="javascript:;">3847-112</a></td>-->
                                            <td class="pay text-right">4,350원<br /></td>
                                            <!--	<td class="stock">100</td>-->
                                            <!--	<td class="lately">100</td>-->
                                            <td class="group">우유</td>
                                            <!--	<td class="diplay"><img src="../img/doz-icon.png" style="margin: 0 5px 3px 0;"><img src="../img/naver-icon.png"></td>-->
                                            <td class="showcase">
                                                <div class="dropdown dropup">
                                                    <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-flat no-padding _drop_showcase_btn_s20220225463c79f294b69">-</button>
                                                    <ul class="dropdown-menu animation-dock check" role="menu" aria-labelledby="dLabel">
                                                        <div class="select_group _drop_showcase_list _drop_showcase_list_s20220225463c79f294b69" data-showcase="" data-prod="s20220225463c79f294b69" data-noshowcase="Y"></div>
                                                        <div class="footer">
                                                            <li class="divider"></li>
                                                            <li><a href="javascript:;" onclick="SHOP_PROD_LIST.openShowcaseForm()">새 기획전</a></li>
                                                        </div>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="state on-click dropup">
                                                <a data-toggle="dropdown" style="margin-right: -1px;">
                                                    <span>판매중</span>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220225463c79f294b69', 'sale')">판매중</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220225463c79f294b69', 'soldout')">품절</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220225463c79f294b69', 'nosale')">숨김</a></li>
                                                </ul>
                                            </td>
                                            <td class="text-12" style="padding-left: 20px;">
                                                -
                                            </td>
                                            <td class="r_date text-12">2022-02-25</td>
                                            <td class="e_date text-12">2022-02-25</td>
                                            <td class="more">
                                                <div class="dropdown dropup">
                                                    <button class="btn btn-flat" aria-expanded="true" data-toggle="dropdown" type="button" id="dLabel">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                    <ul aria-labelledby="dLabel" role="menu" class="dropdown-menu animation-dock right">
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('top','s20220225463c79f294b69', '');">맨 위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('pre','s20220225463c79f294b69', '');">위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('next','s20220225463c79f294b69', '');">아래로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('bottom','s20220225463c79f294b69', '');">맨 아래로</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        <!--<tr class='content on">-->
                                        <tr class="content _prodListItem" id="prod_list_s20220106fd4b534cd99a8" data-code="s20220106fd4b534cd99a8">
                                            <td class="check">
                                                <div class="drag _showcase_handle ui-sortable-handle"></div>
                                                <div class="checkbox checkbox-styled no-margin">
                                                    <label>
                                                        <input
                                                            type="checkbox"
                                                            value="s20220106fd4b534cd99a8"
                                                            class="_prodListCheck"
                                                            onclick="SHOP_PROD_LIST.listSetSelect('s20220106fd4b534cd99a8',function(codes){
								SHOP_PROD_LIST.checkProd(codes);
								})"
                                                        />
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td class="no text-12">160</td>
                                            <td class="image">
                                                <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=160">
                                                    <img src="https://cdn.imweb.me/thumbnail/20220106/3e80a5e041b1b.jpg" width="49" height="49" class="item-thumb" />
                                                </a>
                                            </td>
                                            <td class="title">
                                                <div>
                                                    <div class="item-tit inline-blocked">
                                                        <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=160">쾌변두유 검은콩 (박스단위판매)</a>
                                                        <a href="https://pasteur-sn.imweb.me/54/?idx=160" target="_blank" class="im-icon im-ico-new-tab vertical-middle tab-icon" style="margin-left: 4px;"></a>
                                                    </div>

                                                    <span class="btn-sm text-gray-bright"></span>
                                                </div>
                                            </td>
                                            <!--	<td class="sku"><a href="javascript:;">3847-112</a></td>-->
                                            <td class="pay text-right">1,200원<br /></td>
                                            <!--	<td class="stock">100</td>-->
                                            <!--	<td class="lately">100</td>-->
                                            <td class="group">두유</td>
                                            <!--	<td class="diplay"><img src="../img/doz-icon.png" style="margin: 0 5px 3px 0;"><img src="../img/naver-icon.png"></td>-->
                                            <td class="showcase">
                                                <div class="dropdown dropup">
                                                    <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-flat no-padding _drop_showcase_btn_s20220106fd4b534cd99a8">-</button>
                                                    <ul class="dropdown-menu animation-dock check" role="menu" aria-labelledby="dLabel">
                                                        <div class="select_group _drop_showcase_list _drop_showcase_list_s20220106fd4b534cd99a8" data-showcase="" data-prod="s20220106fd4b534cd99a8" data-noshowcase="Y"></div>
                                                        <div class="footer">
                                                            <li class="divider"></li>
                                                            <li><a href="javascript:;" onclick="SHOP_PROD_LIST.openShowcaseForm()">새 기획전</a></li>
                                                        </div>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="state on-click dropup">
                                                <a data-toggle="dropdown" style="margin-right: -1px;">
                                                    <span>판매중</span>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106fd4b534cd99a8', 'sale')">판매중</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106fd4b534cd99a8', 'soldout')">품절</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106fd4b534cd99a8', 'nosale')">숨김</a></li>
                                                </ul>
                                            </td>
                                            <td class="text-12" style="padding-left: 20px;">
                                                -
                                            </td>
                                            <td class="r_date text-12">2022-01-06</td>
                                            <td class="e_date text-12">2022-04-10</td>
                                            <td class="more">
                                                <div class="dropdown dropup">
                                                    <button class="btn btn-flat" aria-expanded="true" data-toggle="dropdown" type="button" id="dLabel">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                    <ul aria-labelledby="dLabel" role="menu" class="dropdown-menu animation-dock right">
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('top','s20220106fd4b534cd99a8', '');">맨 위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('pre','s20220106fd4b534cd99a8', '');">위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('next','s20220106fd4b534cd99a8', '');">아래로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('bottom','s20220106fd4b534cd99a8', '');">맨 아래로</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        <!--<tr class='content on">-->
                                        <tr class="content _prodListItem" id="prod_list_s20220106190057c8a8837" data-code="s20220106190057c8a8837">
                                            <td class="check">
                                                <div class="drag _showcase_handle ui-sortable-handle"></div>
                                                <div class="checkbox checkbox-styled no-margin">
                                                    <label>
                                                        <input
                                                            type="checkbox"
                                                            value="s20220106190057c8a8837"
                                                            class="_prodListCheck"
                                                            onclick="SHOP_PROD_LIST.listSetSelect('s20220106190057c8a8837',function(codes){
								SHOP_PROD_LIST.checkProd(codes);
								})"
                                                        />
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td class="no text-12">161</td>
                                            <td class="image">
                                                <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=161">
                                                    <img src="https://cdn.imweb.me/thumbnail/20220106/f5c5a4099ecaa.jpg" width="49" height="49" class="item-thumb" />
                                                </a>
                                            </td>
                                            <td class="title">
                                                <div>
                                                    <div class="item-tit inline-blocked">
                                                        <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=161">쾌변두유 플레인 (박스단위판매)</a>
                                                        <a href="https://pasteur-sn.imweb.me/54/?idx=161" target="_blank" class="im-icon im-ico-new-tab vertical-middle tab-icon" style="margin-left: 4px;"></a>
                                                    </div>

                                                    <span class="btn-sm text-gray-bright"></span>
                                                </div>
                                            </td>
                                            <!--	<td class="sku"><a href="javascript:;">3847-112</a></td>-->
                                            <td class="pay text-right">1,200원<br /></td>
                                            <!--	<td class="stock">100</td>-->
                                            <!--	<td class="lately">100</td>-->
                                            <td class="group">두유</td>
                                            <!--	<td class="diplay"><img src="../img/doz-icon.png" style="margin: 0 5px 3px 0;"><img src="../img/naver-icon.png"></td>-->
                                            <td class="showcase">
                                                <div class="dropdown dropup">
                                                    <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-flat no-padding _drop_showcase_btn_s20220106190057c8a8837">-</button>
                                                    <ul class="dropdown-menu animation-dock check" role="menu" aria-labelledby="dLabel">
                                                        <div class="select_group _drop_showcase_list _drop_showcase_list_s20220106190057c8a8837" data-showcase="" data-prod="s20220106190057c8a8837" data-noshowcase="Y"></div>
                                                        <div class="footer">
                                                            <li class="divider"></li>
                                                            <li><a href="javascript:;" onclick="SHOP_PROD_LIST.openShowcaseForm()">새 기획전</a></li>
                                                        </div>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="state on-click dropup">
                                                <a data-toggle="dropdown" style="margin-right: -1px;">
                                                    <span>판매중</span>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106190057c8a8837', 'sale')">판매중</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106190057c8a8837', 'soldout')">품절</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106190057c8a8837', 'nosale')">숨김</a></li>
                                                </ul>
                                            </td>
                                            <td class="text-12" style="padding-left: 20px;">
                                                -
                                            </td>
                                            <td class="r_date text-12">2022-01-06</td>
                                            <td class="e_date text-12">2022-04-10</td>
                                            <td class="more">
                                                <div class="dropdown dropup">
                                                    <button class="btn btn-flat" aria-expanded="true" data-toggle="dropdown" type="button" id="dLabel">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                    <ul aria-labelledby="dLabel" role="menu" class="dropdown-menu animation-dock right">
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('top','s20220106190057c8a8837', '');">맨 위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('pre','s20220106190057c8a8837', '');">위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('next','s20220106190057c8a8837', '');">아래로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('bottom','s20220106190057c8a8837', '');">맨 아래로</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        <!--<tr class='content on">-->
                                        <tr class="content _prodListItem" id="prod_list_s202201068ad7ea8724cba" data-code="s202201068ad7ea8724cba">
                                            <td class="check">
                                                <div class="drag _showcase_handle ui-sortable-handle"></div>
                                                <div class="checkbox checkbox-styled no-margin">
                                                    <label>
                                                        <input
                                                            type="checkbox"
                                                            value="s202201068ad7ea8724cba"
                                                            class="_prodListCheck"
                                                            onclick="SHOP_PROD_LIST.listSetSelect('s202201068ad7ea8724cba',function(codes){
								SHOP_PROD_LIST.checkProd(codes);
								})"
                                                        />
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td class="no text-12">162</td>
                                            <td class="image">
                                                <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=162">
                                                    <img src="https://cdn.imweb.me/thumbnail/20220106/bfd78abdfecf8.jpg" width="49" height="49" class="item-thumb" />
                                                </a>
                                            </td>
                                            <td class="title">
                                                <div>
                                                    <div class="item-tit inline-blocked">
                                                        <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=162">파스퇴르 유기농 야채농장 ABC 190mL</a>
                                                        <a href="https://pasteur-sn.imweb.me/53/?idx=162" target="_blank" class="im-icon im-ico-new-tab vertical-middle tab-icon" style="margin-left: 4px;"></a>
                                                    </div>

                                                    <span class="btn-sm text-gray-bright"></span>
                                                </div>
                                            </td>
                                            <!--	<td class="sku"><a href="javascript:;">3847-112</a></td>-->
                                            <td class="pay text-right">1,600원<br /></td>
                                            <!--	<td class="stock">100</td>-->
                                            <!--	<td class="lately">100</td>-->
                                            <td class="group">주스</td>
                                            <!--	<td class="diplay"><img src="../img/doz-icon.png" style="margin: 0 5px 3px 0;"><img src="../img/naver-icon.png"></td>-->
                                            <td class="showcase">
                                                <div class="dropdown dropup">
                                                    <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-flat no-padding _drop_showcase_btn_s202201068ad7ea8724cba">-</button>
                                                    <ul class="dropdown-menu animation-dock check" role="menu" aria-labelledby="dLabel">
                                                        <div class="select_group _drop_showcase_list _drop_showcase_list_s202201068ad7ea8724cba" data-showcase="" data-prod="s202201068ad7ea8724cba" data-noshowcase="Y"></div>
                                                        <div class="footer">
                                                            <li class="divider"></li>
                                                            <li><a href="javascript:;" onclick="SHOP_PROD_LIST.openShowcaseForm()">새 기획전</a></li>
                                                        </div>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="state on-click dropup">
                                                <a data-toggle="dropdown" style="margin-right: -1px;">
                                                    <span>판매중</span>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s202201068ad7ea8724cba', 'sale')">판매중</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s202201068ad7ea8724cba', 'soldout')">품절</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s202201068ad7ea8724cba', 'nosale')">숨김</a></li>
                                                </ul>
                                            </td>
                                            <td class="text-12" style="padding-left: 20px;">
                                                -
                                            </td>
                                            <td class="r_date text-12">2022-01-06</td>
                                            <td class="e_date text-12">2022-01-06</td>
                                            <td class="more">
                                                <div class="dropdown dropup">
                                                    <button class="btn btn-flat" aria-expanded="true" data-toggle="dropdown" type="button" id="dLabel">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                    <ul aria-labelledby="dLabel" role="menu" class="dropdown-menu animation-dock right">
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('top','s202201068ad7ea8724cba', '');">맨 위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('pre','s202201068ad7ea8724cba', '');">위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('next','s202201068ad7ea8724cba', '');">아래로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('bottom','s202201068ad7ea8724cba', '');">맨 아래로</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        <!--<tr class='content on">-->
                                        <tr class="content _prodListItem" id="prod_list_s20220106cc8808c2d03e4" data-code="s20220106cc8808c2d03e4">
                                            <td class="check">
                                                <div class="drag _showcase_handle ui-sortable-handle"></div>
                                                <div class="checkbox checkbox-styled no-margin">
                                                    <label>
                                                        <input
                                                            type="checkbox"
                                                            value="s20220106cc8808c2d03e4"
                                                            class="_prodListCheck"
                                                            onclick="SHOP_PROD_LIST.listSetSelect('s20220106cc8808c2d03e4',function(codes){
								SHOP_PROD_LIST.checkProd(codes);
								})"
                                                        />
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td class="no text-12">163</td>
                                            <td class="image">
                                                <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=163">
                                                    <img src="https://cdn.imweb.me/thumbnail/20220106/d68badbd4d1a5.jpg" width="49" height="49" class="item-thumb" />
                                                </a>
                                            </td>
                                            <td class="title">
                                                <div>
                                                    <div class="item-tit inline-blocked">
                                                        <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=163">파스퇴르 유기농 야채주스 190mL</a>
                                                        <a href="https://pasteur-sn.imweb.me/53/?idx=163" target="_blank" class="im-icon im-ico-new-tab vertical-middle tab-icon" style="margin-left: 4px;"></a>
                                                    </div>

                                                    <span class="btn-sm text-gray-bright"></span>
                                                </div>
                                            </td>
                                            <!--	<td class="sku"><a href="javascript:;">3847-112</a></td>-->
                                            <td class="pay text-right">1,600원<br /></td>
                                            <!--	<td class="stock">100</td>-->
                                            <!--	<td class="lately">100</td>-->
                                            <td class="group">주스</td>
                                            <!--	<td class="diplay"><img src="../img/doz-icon.png" style="margin: 0 5px 3px 0;"><img src="../img/naver-icon.png"></td>-->
                                            <td class="showcase">
                                                <div class="dropdown dropup">
                                                    <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-flat no-padding _drop_showcase_btn_s20220106cc8808c2d03e4">-</button>
                                                    <ul class="dropdown-menu animation-dock check" role="menu" aria-labelledby="dLabel">
                                                        <div class="select_group _drop_showcase_list _drop_showcase_list_s20220106cc8808c2d03e4" data-showcase="" data-prod="s20220106cc8808c2d03e4" data-noshowcase="Y"></div>
                                                        <div class="footer">
                                                            <li class="divider"></li>
                                                            <li><a href="javascript:;" onclick="SHOP_PROD_LIST.openShowcaseForm()">새 기획전</a></li>
                                                        </div>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="state on-click dropup">
                                                <a data-toggle="dropdown" style="margin-right: -1px;">
                                                    <span>판매중</span>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106cc8808c2d03e4', 'sale')">판매중</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106cc8808c2d03e4', 'soldout')">품절</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106cc8808c2d03e4', 'nosale')">숨김</a></li>
                                                </ul>
                                            </td>
                                            <td class="text-12" style="padding-left: 20px;">
                                                -
                                            </td>
                                            <td class="r_date text-12">2022-01-06</td>
                                            <td class="e_date text-12">2022-01-06</td>
                                            <td class="more">
                                                <div class="dropdown dropup">
                                                    <button class="btn btn-flat" aria-expanded="true" data-toggle="dropdown" type="button" id="dLabel">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                    <ul aria-labelledby="dLabel" role="menu" class="dropdown-menu animation-dock right">
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('top','s20220106cc8808c2d03e4', '');">맨 위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('pre','s20220106cc8808c2d03e4', '');">위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('next','s20220106cc8808c2d03e4', '');">아래로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('bottom','s20220106cc8808c2d03e4', '');">맨 아래로</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        <!--<tr class='content on">-->
                                        <tr class="content _prodListItem" id="prod_list_s20220106864918188bf7e" data-code="s20220106864918188bf7e">
                                            <td class="check">
                                                <div class="drag _showcase_handle ui-sortable-handle"></div>
                                                <div class="checkbox checkbox-styled no-margin">
                                                    <label>
                                                        <input
                                                            type="checkbox"
                                                            value="s20220106864918188bf7e"
                                                            class="_prodListCheck"
                                                            onclick="SHOP_PROD_LIST.listSetSelect('s20220106864918188bf7e',function(codes){
								SHOP_PROD_LIST.checkProd(codes);
								})"
                                                        />
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td class="no text-12">156</td>
                                            <td class="image">
                                                <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=156">
                                                    <img src="https://cdn.imweb.me/thumbnail/20220106/c3e6ce0c8fdd6.jpg" width="49" height="49" class="item-thumb" />
                                                </a>
                                            </td>
                                            <td class="title">
                                                <div>
                                                    <div class="item-tit inline-blocked">
                                                        <a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;mode=add&amp;idx=156">파스퇴르 후레쉬우유 200mL</a>
                                                        <a href="https://pasteur-sn.imweb.me/52/?idx=156" target="_blank" class="im-icon im-ico-new-tab vertical-middle tab-icon" style="margin-left: 4px;"></a>
                                                    </div>

                                                    <span class="btn-sm text-gray-bright"></span>
                                                </div>
                                            </td>
                                            <!--	<td class="sku"><a href="javascript:;">3847-112</a></td>-->
                                            <td class="pay text-right">1,250원<br /></td>
                                            <!--	<td class="stock">100</td>-->
                                            <!--	<td class="lately">100</td>-->
                                            <td class="group">우유</td>
                                            <!--	<td class="diplay"><img src="../img/doz-icon.png" style="margin: 0 5px 3px 0;"><img src="../img/naver-icon.png"></td>-->
                                            <td class="showcase">
                                                <div class="dropdown dropup">
                                                    <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-flat no-padding _drop_showcase_btn_s20220106864918188bf7e">-</button>
                                                    <ul class="dropdown-menu animation-dock check" role="menu" aria-labelledby="dLabel">
                                                        <div class="select_group _drop_showcase_list _drop_showcase_list_s20220106864918188bf7e" data-showcase="" data-prod="s20220106864918188bf7e" data-noshowcase="Y"></div>
                                                        <div class="footer">
                                                            <li class="divider"></li>
                                                            <li><a href="javascript:;" onclick="SHOP_PROD_LIST.openShowcaseForm()">새 기획전</a></li>
                                                        </div>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="state on-click dropup">
                                                <a data-toggle="dropdown" style="margin-right: -1px;">
                                                    <span>판매중</span>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106864918188bf7e', 'sale')">판매중</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106864918188bf7e', 'soldout')">품절</a></li>
                                                    <li><a href="javascript:;" onclick="SHOP_PROD_LIST.updateStatus('s20220106864918188bf7e', 'nosale')">숨김</a></li>
                                                </ul>
                                            </td>
                                            <td class="text-12" style="padding-left: 20px;">
                                                -
                                            </td>
                                            <td class="r_date text-12">2022-01-06</td>
                                            <td class="e_date text-12">2022-02-25</td>
                                            <td class="more">
                                                <div class="dropdown dropup">
                                                    <button class="btn btn-flat" aria-expanded="true" data-toggle="dropdown" type="button" id="dLabel">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                    <ul aria-labelledby="dLabel" role="menu" class="dropdown-menu animation-dock right">
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('top','s20220106864918188bf7e', '');">맨 위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('pre','s20220106864918188bf7e', '');">위로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('next','s20220106864918188bf7e', '');">아래로</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" onclick="SHOP_PROD_LIST.changeProdOrder('bottom','s20220106864918188bf7e', '');">맨 아래로</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <nav class="text-center order_paging" id="prod_list_paging" style="">
                            <ul class="pagination">
                                <li class="prev disabled">
                                    <a href="javascript:;"><i class="icon-arrow-left" aria-hidden="true"></i><span class="sr-only">Previous</span></a>
                                </li>
                                <li class="active"><a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;page=1">1</a></li>
                                <li><a href="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D&amp;page=2">2</a></li>
                                <li class="next disabled">
                                    <a href="javascript:;"><i class="icon-arrow-right" aria-hidden="true"></i><span class="sr-only">Next</span></a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
