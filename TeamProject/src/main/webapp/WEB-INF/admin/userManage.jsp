<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<section>
	<div class="section-body">
		<div class="tab-pane" id="daily">
			<div class="row">
				<div class="col-md-9 col-xl-10">
					<div class="row">
						<div class="col-md-10">
							<div class="card">
								<div class="card-body no-padding">
									<div class="user-search" id="userSearch">
										<div class="form-group">
											<div id="prefetch">
												<span class="twitter-typeahead" style="position: relative; display: inline-block;">
													<img style="width: 25px; height: 25px; margin: 10px" src="/TeamProject/img/admin/search.png">
													<input type="hidden" name="q" value="YToxOntzOjEwOiJqb2luX29yZGVyIjtzOjQ6ImRlc2MiO30=" class="form-control typeahead" /> 
													<input type="text" class="form-control typeahead tt-input" id="keyword_search1" name="keyword" placeholder="검색" autocomplete="off" spellcheck="false" style="position: relative; outline: none; vertical-align: top; background-color: transparent;" value="" />
												</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-12">
							<div class="card">
								<div id="order_list_loader_sub" class="se-pre-con" style="background: none; position: relative; height: 100px; display: none;">
									<div class="page-loader-spinner">
										<div class="double-bounce1"></div>
										<div class="double-bounce2"></div>
									</div>
								</div>
								<div class="card-head" id="card-head" style="">
									<header class="small">
										전체 사용자 <span class="text-primary" id="total-member-count">3</span>명
									</header>
								</div>

								<div class="card-body no-padding">
									<div class="li_table" id="UI_TABLE">
										<ul class="subject _thead" id="table-header" style="">
											<li class="check">
												<div class="checkbox checkbox-styled no-margin">
													<label> <input type="checkbox" value="" class="_all_check"/><span></span>
													</label>
												</div>
											</li>
											<li class="nick"><a href="#">닉네임</a></li>
											<li class="account">계정</li>
											<li class="account">회원 유형</li>
											<li class="date_join"><a href="#"> 가입일 <i class="md md-expand-less"></i> <!--역순일 때 <i class="md md-expand-less"></i> -->
											</a></li>
											<li class="date_mileage text-right">적립금</li>
											<li class="count_post">글/댓글/구매평/문의</li>
											<li class="purchase text-right hidden-xs hidden-sm">누적
												구매금액</li>
											<li class="memo text-center">메모</li>
										</ul>

										<ul class="content _tbody" id="member_item_m202204262e9a3531e0ad5" data-nick="관리자" data-app="">
											<li class="check">
												<div class="checkbox checkbox-styled no-margin">
													<label> 
														<input type="checkbox" value="m202204262e9a3531e0ad5" data-idx="17146619" data-code="m202204262e9a3531e0ad5" />
														<span></span>
													</label>
												</div>
											</li>
											<li class="nick"><a href="#" onclick="">관리자&nbsp;<span class="badge">소유자</span></a></li>
											<li class="account"><a href="#" onclick="">miso97410@gmail.com</a></li>
											<li class="account">일반회원</li>
											<li class="date_join">2022-04-26</li>
											<li class="date_mileage text-right"></li>
											<li class="count_post hidden-xs hidden-sm">0/ 0/ 0/ 0</li>
											<li class="purchase text-right hidden-xs hidden-sm"></li>
											<li class="memo"><a href="#" class="btn btn-flat text-gray-bright"></a></li>
										</ul>
										<ul class="content _tbody" id="member_item_m202107045663db8ca8629" data-nick="김미소" data-app="">
											<li class="check">
												<div class="checkbox checkbox-styled no-margin">
													<label> 
														<input type="checkbox" value="m202107045663db8ca8629" data-idx="11336058" data-code="m202107045663db8ca8629"/>
														<span></span>
													</label>
												</div>
											</li>
											<li class="nick"><a href="#" onclick="">김미소</a></li>
											<li class="account"><a href="#" onclick="">smile974@naver.com</a></li>
											<li class="account">일반회원</li>
											<li class="date_join">2021-07-04</li>
											<li class="date_mileage text-right"></li>
											<li class="count_post hidden-xs hidden-sm">0/ 0/ 0/ 0</li>
											<li class="purchase text-right hidden-xs hidden-sm"></li>
											<li class="memo"><a href="#" class="btn btn-flat text-gray-bright"><i class="icon-note"></i></a></li>
										</ul>
										<ul class="content _tbody" id="member_item_m20210521ba5cf1259d992" data-nick="관리자" data-app="">
											<li class="check">
												<div class="checkbox checkbox-styled no-margin">
													<label> 
														<input type="checkbox" value="m20210521ba5cf1259d992" data-idx="10630452" data-code="m20210521ba5cf1259d992"/>
														<span></span>
													</label>
												</div>
											</li>
											<li class="nick"><a href="#" onclick="">관리자</a></li>
											<li class="account"><a href="#" onclick="">yy1004@gmail.com</a></li>
											<li class="account">일반회원</li>
											<li class="date_join">2021-05-21</li>
											<li class="date_mileage text-right"></li>
											<li class="count_post hidden-xs hidden-sm">0/ 0/ 0/ 0</li>
											<li class="purchase text-right hidden-xs hidden-sm"></li>
											<li class="memo"><a href="#" class="btn btn-flat text-gray-bright"><i class="icon-note"></i></a></li>
										</ul>
									</div>
									<nav class="text-center" id="paginate"></nav>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
