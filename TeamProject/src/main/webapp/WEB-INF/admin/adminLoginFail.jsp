<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
.main, .wrap {
    width: 100%;
    height: 100%;
}
.container {
    display: table;
    width: 100%;
    height: 100%;
}
.wrap_exception {
    display: table-cell;
    vertical-align: middle;
    text-align: center;
}
.wrap_content {
    top: 0;
    left: 0;
    margin-top: 15%;
    height: auto;
    margin-left: 0;
}
.wrap_content .illust {
    width: 360px;
    height: 240px;
    -o-object-fit: contain;
    object-fit: contain;
    margin: 0;
}
.wrap_content .title {
    font-family: NotoSansCJKKR;
    font-size: 20px;
    font-weight: 400;
    font-stretch: normal;
    font-style: normal;
    letter-spacing: -.2px;
    color: #000;
    margin-top: 20px;
}
.wrap_content .button-home, .wrap_content .sub-title {
    font-family: NotoSansCJKKR;
    font-size: 13px;
    font-weight: 300;
    font-stretch: normal;
    font-style: normal;
    letter-spacing: normal;
}
.wrap_content .button-home {
    width: 103px;
    height: 36px;
    border-radius: 8px;
    border: 1px solid rgba(0,0,0,.6);
    margin-top: 20px;
    cursor: pointer;
    line-height: 2;
    color: #000;
}
</style>
<body>
    <div class="main" >
        <div class="container" >
            <div class="wrap_exception" >
                <div class="wrap_content" >
                    <img src="/TeamProject/img/admin/fail.svg" alt="KREAM" class="illust"  />
                    <div class="title" ><p >요청하신 페이지를 찾을 수 없습니다.</p></div>
                    <div class="sub-title" >
                        주소가 올바르지 않거나 알 수 없는 오류로 인해 <br  />
                        페이지를 찾을 수 없습니다.
                    </div>
                    <button onclick="location.href='/TeamProject/'" class="button-home" >홈으로 가기</button>
                </div>
            </div>
        </div>
    </div>
    
</body>
</html>