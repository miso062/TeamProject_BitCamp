<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<section class="no-padding-bottom">
	<div class="section-body">
		<div class="row" style="display: flex;">
<!-- 			<div class="col-md-3 col-lg-2 col-xl-2 hidden-xs hidden-sm">
				<div class="card">
					<div class="card-body no-padding">
						<ul class="nav nav-pills nav-stacked">
							<li class="no-hover" id="new_group_btn" data-base_url="/admin/shopping/product/?q=YToxOntzOjY6InN0YXR1cyI7czozOiJhbGwiO30%3D">
								<a href="#" class="text-primary"> 카테고리 관리 
									<i class="icon-settings" style="font-size: 15px; vertical-align: middle; margin-left: 4px; position: relative; top: -1px;"></i>
								</a>
							</li>
						</ul>

						<div class="nav nav-pills nav-stacked nav-category">
							<div id="prod_list_category_" class="dropdown-handle dd-handle active">
								<a href="#" >전체 카테고리</a>
							</div>
							<div id="prod_category_list" class="prod_category_list">
								<div class="holder">
									<div class="dropdown-handle dd-handle _menu_item" data-code="s202106136eac78326774d" id="prod_list_category_s202106136eac78326774d">
										<span class="_name">우유</span>
									</div>
								</div>
								<div class="holder">
									<div class="dropdown-handle dd-handle _menu_item" data-code="s20211224fd1b06914db28" id="prod_list_category_s20211224fd1b06914db28" >
										<span class="_name">두유</span>
									</div>
								</div>
								<div class="holder">
									<div class="dropdown-handle dd-handle _menu_item" data-code="s20211224f6fee13ee5e37" id="prod_list_category_s20211224f6fee13ee5e37">
										<span class="_name">요구르트</span>
									</div>
								</div>
								<div class="holder">
									<div class="dropdown-handle dd-handle _menu_item" data-code="s2021120949c22c9ec12d0" id="prod_list_category_s2021120949c22c9ec12d0">
										<span class="_name">주스</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div> -->
			<div class="col-md-9 col-lg-10 col-xl-10">
				<ul class="nav nav-tabs" data-toggle="tabs"
					style="margin-bottom: 24px;" id="prod_status_tab">
					<li class="owl_dashboard _owl_dashboard owl-carousel owl-theme owl-loaded">
						<div class="owl-stage-outer">
							<div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 281px;">
								<div class="owl-item active" style="width: auto; margin-right: 0px;">
									<ul class="owl-nav-tabs">
										<li class="active _all">
											<a href="javascript:;">전체
												<span class="_count text-primary">25</span>
											</a>
										</li>
									</ul>
								</div>
								<div class="owl-item active" style="width: auto; margin-right: 0px;">
									<ul class="owl-nav-tabs">
										<li class="_sale">
											<a href="#">판매중<span class="_count text-primary">25</span></a>
										</li>
									</ul>
								</div>
								<div class="owl-item active"
									style="width: auto; margin-right: 0px;">
									<ul class="owl-nav-tabs">
										<li class="_nosale">
											<a href="#">판매 안함 <span class="_count text-primary">0</span></a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</li>
				</ul>
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="table-responsive shop-table check" id="prod_list"
								style="">
								<table class="table no-margin">
									<thead class="subject _prodListHeaderDeselected" style="display: table-header-group;" id="prod_list_header_deselected">
										<tr>
											<th class="check">
												<div class="checkbox checkbox-styled no-margin">
													<label> 
														<input type="checkbox" value="" class="_prodListAllCheck"/>
														<span></span>
													</label>
												</div>
											</th>
											<th class="no">No</th>
											<th>이미지</th>
											<th class="eng_title image">상품명(영문)</th>
											<th class="kor_title image">상품명(한글)</th>
											<th class="pay text-right">판매가</th>
											<th class="group">카테고리</th>
											<th class="brand">브랜드</th>
											<th class="collection">컬렉션</th>
											<th class="state">상태</th>
											<th class="r_date">발매일</th>
											<th class="e_date">등록일</th>
											<th class="more"></th>
										</tr>
									</thead>
									<tbody id="prod_list_body" class="_prod_list_body ui-sortable">
										<tr class="content _prodListItem" id="prod_list_s20211224145e22830e76f" data-code="s20211224145e22830e76f">
											<td class="check">
												<div class="drag _showcase_handle ui-sortable-handle"></div>
												<div class="checkbox checkbox-styled no-margin">
													<label> <input type="checkbox" value="s20211224145e22830e76f" class="_prodListCheck"/>
														<span></span>
													</label>
												</div>
											</td>
											<td class="no text-12">149</td>
											<td class="image">
												<a href="#"> <img src="https://cdn.imweb.me/thumbnail/20211224/52e7c97573366.jpg" width="49" height="49" class="item-thumb" /> </a>
											</td>
											<td class="eng_title">
												<div>
													<div class="item-tit inline-blocked">
														<a href="#">바른목장 유산균우유 180mL</a> 
														<a href="#" target="_blank" class="im-icon im-ico-new-tab vertical-middle tab-icon" style="margin-left: 4px;"></a>
													</div>
													<span class="btn-sm text-gray-bright"></span>
												</div>
											</td>
											<td class="kor_title">
												<div>
													<div class="item-tit inline-blocked">
														<a href="#">바른목장 유산균우유 180mL</a> 
														<a href="#" target="_blank" class="im-icon im-ico-new-tab vertical-middle tab-icon" style="margin-left: 4px;"></a>
													</div>
													<span class="btn-sm text-gray-bright"></span>
												</div>
											</td>
											<td class="pay text-right">1,550원<br /></td>
											<td class="group">우유</td>
											<td class="brand">파스퇴르</td>
											<td class="collection">컬렉션</td>
											<td class="state on-click">
												<a data-toggle="dropdown" style="margin-right: -1px;"> <span>판매중</span> </a>
											</td>
											<td class="r_date text-12">2021-12-24</td>
											<td class="e_date text-12">2022-02-25</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!-- <div class="col-md-12">
						<nav class="text-center order_paging" id="prod_list_paging" style="">
							<ul class="pagination">
								<li class="prev disabled">
									<a href="#"><i class="icon-arrow-left" aria-hidden="true"></i><span class="sr-only">Previous</span></a>
								</li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li class="next disabled">
									<a href="#"> <i class="icon-arrow-right" aria-hidden="true"></i> <span class="sr-only">Next</span></a>
								</li>
							</ul>
						</nav>
					</div> -->
				</div>
			</div>
		</div>
	</div>
</section>
