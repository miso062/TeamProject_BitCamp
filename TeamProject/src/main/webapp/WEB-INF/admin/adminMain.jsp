<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GESE-T | 관리자 페이지</title>
<link rel="stylesheet" type="text/css" href="/TeamProject/css/admin/admin.css">
</head>
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
        <div id="content">
			<jsp:include page="${content }"></jsp:include>
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
                                <a href="/TeamProject/admin/" class="active" style="padding: 10px 0px;">
                                    <div class="gui-icon"><img class="db-dashboard" src="/TeamProject/img/admin/menu.png"></div>
                                    <span class="title title_controls">대시보드</span>
                                </a>
                            </li>
                            <li class="gui-folder" data-title="member">
                                <a href="/TeamProject/admin/userManage" class="sidebar-nav-menu" style="padding: 10px 0px;">
                                    <div class="gui-icon"><img class="db-user" src="/TeamProject/img/admin/user_edit.png"></div>
                                    <span class="title title_controls">사용자 관리</span>
                                </a>
                            </li>
                            <li class="gui-folder" data-title="shopping">
                                <a href="/TeamProject/admin/proManage" class="sidebar-nav-menu" style="padding: 10px 0px;">
                                    <div class="gui-icon"><img class="db-shopping-bag" src="/TeamProject/img/admin/shopping-cart.png"></div>
                                    <span class="title title_controls">상품 관리</span>
                                </a>
                            </li>
                            <li class="gui-folder" data-title="contents">
                                <a href="#" class="sidebar-nav-menu" style="padding: 10px 0px;">
                                    <div class="gui-icon"><img class="db-pencil" src="/TeamProject/img/admin/edit.png"></div>
                                    <span class="title title_controls">컨텐츠 관리</span>
                                </a>
                            </li>
                            <!-- <li class="gui-folder" data-title="stat">
                                <a href="/admin/stat" class="sidebar-nav-menu" style="padding: 10px 0px;">
                                    <div class="gui-icon"><img class="db-status-up" src="/TeamProject/img/admin/infographic.png"></div>
                                    <span class="title title_controls">통계</span>
                                </a>
                            </li> -->
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
</body>
</html>