<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
 #nav_container {
    max-width: 1280px;
    margin: 0 auto;
    padding: 40px 40px 160px;
    width: 100%;
    height: 3000px;
}
 div {
    display: block;
}
.content .description_wrap {
    padding: 20px 0 19px;
}
.content .description {
    line-height: 17px;
    letter-spacing: .11px;
}
.content .description_list .list_item {
    position: relative;
    margin-top: 6px;
    padding-left: 10px;
    color: rgba(34,34,34,.6);
    line-height: 17px;
    letter-spacing: .15px;
}
.content .description_list .list_item:before {
    position: absolute;
    left: 0;
    top: 5px;
    width: 3px;
    height: 3px;
    background-color: #333;
    content: "";
}
.wrap_auth{
    min-width: 320px;
    min-height: 100%;
    max-width: 640px;
    color: #222;
    font-family: Noto Sans KR,sans-serif;
    font-size: 14px;
    line-height: 1.2;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    padding: 0;
}
.blind, .u_skip {
    overflow: hidden!important;
    position: absolute!important;
    clip: rect(0,0,0,0)!important;
    width: 1px!important;
    height: 1px!important;
    margin: -1px!important;
}
h2 {
    display: block;
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
 .gongji{
	font-size: 21px;
	font-weight: bold;
}
 #hr{	
	background-color: black;
	border:0;
	height:3px;
	margin: 0 0;
}
.content .title_check {
    position: relative;
    padding: 30px 0 6px;
    font-weight: 600;
    font-size: 18px;
    letter-spacing: .17px;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
    table-layout: fixed;
    width: 100%;
    border-top: 1px solid #ebebeb;
    word-break: break-word;
    word-wrap: break-word;
    text-align: center;
}
table thead th {
    height: 35px;
    padding: 5px;
    color: rgba(34,34,34,.5);
    background-color: hsla(0,0%,92.2%,.2);
    font-size: 11px;
    line-height: 14px;
    letter-spacing: .12px;
}
table th {
    color: #222;
    font-weight: 400;
}
table tbody th {
    padding: 4px 0;
    text-align: left;
}
table tbody th {
    height: 40px;
    padding: 4px 5px;
    border-top: 1px solid #f2f2f2;
    font-size: 12px;
    line-height: 15px;
    letter-spacing: .13px;
}
table th .etc {
    color: rgba(34,34,34,.5);
    margin: 0 0;
}
table tbody td {
    font-family: -apple-system;
}
table tbody td, table tbody th {
    height: 40px;
    padding: 4px 5px;
    border-top: 1px solid #f2f2f2;
    font-size: 12px;
    line-height: 15px;
    letter-spacing: .13px;
}
table td .text_info_warning {
    color: #f15746;
}
table td [class*=text] {
    display: block;
    margin-top: -1px;
    font-size: 11px;
    line-height: 14px;
    letter-spacing: .12px;
}
em {
    font-style: normal;
}
.content .more_info_list {
    padding: 15px 0;
    border-top: 1px solid #f2f2f2;
}
ul {
    list-style: none;
}
.content .more_info_list .more_list_item {
    color: rgba(34,34,34,.5);
    font-size: 11px;
    line-height: 14px;
    letter-spacing: .12px;
    margin-top: 2px;
}
.content .btn_check {
    position: relative;
    width: 100%;
    height: 67px;
    min-height: 32px;
    padding-top: 25px;
    text-align: left;
    letter-spacing: .16px;
}
.content .title_check+.description {
    margin-top: 3px;
}
.content .description+.description {
    margin-top: 17px;
}
.content .add_check {
    position: relative;
    padding: 30px 0 6px;
    letter-spacing: .17px;
}
.content .etc_desc {
    font-size: 13px;
    color: rgba(34,34,34,.6);
    margin-top: 5px;
}
.container.customer {
    max-width: 1280px;
    margin: 0 auto;
    padding: 40px 40px 160px;
}
 </style>
<div class="gongji" width="300" style="clear: both; margin-bottom: 15px;"><h3>검수기준</h3></div>
<hr id="hr">
    <div class="wrap_auth">
      <h2 class="blind">검수 기준내용</h2>
      <div class="content">
        <div class="description_wrap">
          <p><b>[업데이트] 2021/11/29 월</b></p>
          <p class="description"><b>[적용일시] 2021/12/03 금 00:00 체결 건 부터</b></p>

          <p class="description">
            <span>KREAM</span>의 검수기준은 거래 당사자간 원활한 거래와 보다 균형있는 검수기준
            확립을 위해 지속적으로 업데이트 되고 있습니다. 거래에 앞서 최신 검수기준을 참고하시기
            바랍니다.
          </p>
          <p class="description">
            회원님께서 판매 또는 구매하신 모든 상품은 <span>KREAM</span>의 전문 검수팀이 제품의
            컨디션을 꼼꼼하게 확인한 후, 검수 합격 시에만 출고하고 있습니다.
          </p>
          <br>
          <p class="description" style="color: #f15746">
            ※ 신발 거래 관련 주의사항<br>
            KREAM은 정가품 판정 및 검수기준에 의한 기본 품질 확인을 수행하고 있으나, 통신판매
            중개자로서 제조업체의 제품별 보증에 대해서는 책임을 지지 않습니다.<br><br>
            제품 기능에 관한 사항이나 기타 제품 관련 질문은 제조업체에 문의하시기 바랍니다.<br>
            단, 제조업체의 A/S 여부는 보장하지 않습니다. (이용약관 제22조 3항 참고)
          </p>
          <br>
          <p class="description">
            KREAM의 검수기준으로 고지된 사항 이외 아래와 같이 제조사에서 불량으로 인정하지 않는
            기준, 또는 당사 검수기준에 따라 그 여부를 명확히 분별할 수 없는 상품의 경우 하자로
            판단하지 않으며,이로 인한 구매 취소는 불가하므로 신중한 거래 부탁드립니다.
          </p>
          <ul class="description_list">
            <li class="list_item">제조공정, 유통과정 또는 소재 특성 상 발생할 수 있는 사항</li>
            <li class="list_item">도장, 마킹 등의 제조사 또는 판매처에서 진행되는 사항</li>
            <li class="list_item">검수 중 발생할 수 있는 사항 (속지, 슈트리 손상 등)</li>
            <li class="list_item">
              택배 개봉 또는 적재 및 상품 이동 중 발생할 수 있는 사항 (칼자국, 박스 눌림, 이염 등)
            </li>
            <li class="list_item">상품택, 구성품 등의 고리 누락/이탈</li>
          </ul>

          <p class="description">
            고지드린 검수 기준으로 판정하기 모호한 상품 상태, 비특정적 상품 상태, 특정 모델의
            제조공정에 따른 개체차이와 관련하여서는
            <b>검수센터 책임자의 최종 판단 하에 결정하게 됩니다.</b>
          </p>
          <p class="description">
            KREAM의 검수기준에 동의하지 않으실 경우 거래가 불가하오니 거래 당사자는 거래에 앞서
            KREAM의 검수기준을 반드시 검토하시기 바랍니다.
          </p>
        </div>

        <div class="check_wrap">
          <h3 class="title_check">불합격/페널티 부과 사항</h3>
          <ul class="check_list">
            <li class="list_item">
              
              <br>
              <div class="table_wrap">
                <table>
                  <caption>
                    <span class="blind">불합격/페널티 부과사항 구분/불합격/구매자 의사 확인/합격 표
                  </span></caption>
                  <colgroup>
                    <col style="width: 40%">
                    <col style="width: 20%">
                    <col style="width: 20%">
                    <col style="width: 20%">
                  </colgroup>

                  <thead>
                    <tr>
                      <th scope="col">구분</th>
                      <th scope="col">불합격</th>
                      <th scope="col">
                        구매자<br>
                        의사 확인
                      </th>
                      <th scope="col">합격</th>
                    </tr>
                  </thead>

                  <tbody>
                    <tr>
                      <th scope="row">
                        모조품/가품
                        <p class="etc">상품, 박스, 구성품 등</p>
                      </th>
                      <td>
                        ○
                        <em class="text_info_warning">페널티 15%</em>
                        <em class="text_info_warning">이용정지</em>
                      </td>
                      <td>-</td>
                      <td>-</td>
                    </tr>
                    <tr>
                      <th scope="row">중고품</th>
                      <td>
                        ○
                        <em class="text_info_warning">페널티 15%</em>
                        <em class="text_info_warning">이용정지</em>
                      </td>
                      <td>-</td>
                      <td>-</td>
                    </tr>
                    <tr>
                      <th scope="row">상품 불일치</th>
                      <td>
                        ○
                        <em class="text_info_warning">페널티 10%</em>
                      </td>
                      <td>-</td>
                      <td>-</td>
                    </tr>
                    <tr>
                      <th scope="row">사이즈 불일치</th>
                      <td>
                        ○
                        <em class="text_info_warning">페널티 10%</em>
                      </td>
                      <td>-</td>
                      <td>-</td>
                    </tr>
                    <tr>
                      <th scope="row">
                        기본 구성품 누락
                        <p class="etc">인솔, 기본끈, 박스, 덮개 등</p>
                      </th>
                      <td>
                        ○
                        <em class="text_info_warning">페널티 10%</em>
                      </td>
                      <td>-</td>
                      <td>-</td>
                    </tr>
                  </tbody>
                </table>
                <ul class="more_info_list">
                  <li class="more_list_item">
                    ※ 중고품 판정의 경우 사용으로 인한 아웃솔 마모, 오염, 수선/보강, 페인팅 등의
                    기준을 종합하여 검수원과 검수센터 책임자의 최종 판단하에 결정하게 됩니다.
                  </li>
                </ul>
              </div>
            </li>
          </ul>

          <h3 class="title_check">패키지 및 구성품</h3>
          <ul class="check_list">
            <li class="list_item">
              <div class="btn_check"><b>패키지</b></div>
              <div class="table_wrap">
                <table>
                  <caption>
                    <span class="blind">패키지 구분/불합격/구매자 의사 확인/합격 표</span>
                  </caption>
                  <colgroup>
                    <col style="width: 40%">
                    <col style="width: 20%">
                    <col style="width: 20%">
                    <col style="width: 20%">
                  </colgroup>

                  <thead>
                    <tr>
                      <th scope="col">구분</th>
                      <th scope="col">불합격</th>
                      <th scope="col">
                        구매자<br>
                        의사 확인
                      </th>
                      <th scope="col">합격</th>
                    </tr>
                  </thead>

                  <tbody>
                    <tr>
                      <th scope="row">박스(BOX) 손상-길이 총합</th>
                      <td>-</td>
                      <td>≥12.0cm</td>
                      <td>&lt;12.0cm</td>
                    </tr>
                    <tr>
                      <th scope="row">박스(BOX) 부분 변색</th>
                      <td>-</td>
                      <td>○</td>
                      <td>-</td>
                    </tr>
                    <tr>
                      <th scope="row">
                        라벨지 손상/상이
                        <p class="etc">UPC, 품번, 제품명, 사이즈(US, CM) 등</p>
                      </th>
                      <td>-</td>
                      <td>정보 확인 불가 또는 라벨지 상이</td>
                      <td>정보 확인 가능 및 라벨지 일치</td>
                    </tr>
                    <tr>
                      <th scope="row">그래픽 속지 상이/누락</th>
                      <td>-</td>
                      <td>○</td>
                      <td>-</td>
                    </tr>
                    <tr>
                      <th scope="row">그래픽 속지 유실</th>
                      <td>-</td>
                      <td>≥40%</td>
                      <td>&lt;40%</td>
                    </tr>
                  </tbody>
                </table>
                <ul class="more_info_list">
                  <li class="more_list_item">
                    ※ 마킹, 펜자국, 본드 등 기타 오염의 경우 검수 책임자의 최종 판단에 따라 합격
                    처리됩니다.
                  </li>
                  <li class="more_list_item">※ 무지 속지의 경우 누락되어도 합격 처리됩니다.</li>
                  <li class="more_list_item">※ 생산 시기별 상이한 속지의 경우 합격 처리됩니다.</li>
                </ul>
              </div>

              <div class="btn_check"><b>구성품</b></div>
              <div class="table_wrap">
                <table>
                  <caption>
                    <span class="blind">구성품 구분/불합격/구매자 의사 확인/합격 표</span>
                  </caption>
                  <colgroup>
                    <col style="width: 40%">
                    <col style="width: 20%">
                    <col style="width: 20%">
                    <col style="width: 20%">
                  </colgroup>

                  <thead>
                    <tr>
                      <th scope="col">구분</th>
                      <th scope="col">불합격</th>
                      <th scope="col">
                        구매자<br>
                        의사 확인
                      </th>
                      <th scope="col">합격</th>
                    </tr>
                  </thead>

                  <tbody>
                    <tr>
                      <th scope="row">상품 정보택 손상/유실</th>
                      <td>-</td>
                      <td>-</td>
                      <td>○</td>
                    </tr>
                    <tr>
                      <th scope="row">끈 기능 상실</th>
                      <td>-</td>
                      <td>○</td>
                      <td>-</td>
                    </tr>
                    <tr>
                      <th scope="row">
                        추가 구성품 누락
                        <p class="etc">스티커, 슈트리, 여분끈 등</p>
                      </th>
                      <td>-</td>
                      <td>○</td>
                      <td>-</td>
                    </tr>
                    <tr>
                      <th scope="row">
                        발매 최초의 구성과 상이함
                        <p class="etc">여분끈 교체, 체결 방식 상이함, 벨크로, 뱃지 교체 등</p>
                      </th>
                      <td>-</td>
                      <td>○</td>
                      <td>-</td>
                    </tr>
                    <tr>
                      <th scope="row">
                        오염
                        <p class="etc">스티커, 슈트리, 끈 등</p>
                      </th>
                      <td>-</td>
                      <td>-</td>
                      <td>○</td>
                    </tr>
                  </tbody>
                </table>
                <ul class="more_info_list">
                  <li class="more_list_item">
                    ※ 국내/해외 발매 제품 간의 정보택의 구성은 다를 수 있습니다.
                  </li>
                  <li class="more_list_item">
                    ※ 상품 정보택의 경우 정보의 일부가 상이할 수 있습니다.
                  </li>
                  <li class="more_list_item">
                    ※ 신발끈 팁 파손의 경우 기능상 교차 및 매듭에 문제가 없을 경우 합격 처리됩니다.
                  </li>
                  <li class="more_list_item">
                    ※ 박스 재질 및 종이 뭉치 형태 슈트리의 경우 누락되어도 합격 처리됩니다.
                  </li>
                  <li class="more_list_item">
                    ※ 점프맨 스티커, 설명서, 슬라이드 제품걸이 등 판매처에 따라 구성품이 다른 경우
                    누락되어도 합격 처리됩니다.
                  </li>
                  <li class="more_list_item">
                    ※ 추가 구성품의 상태(나염유실, 변색, 스크래치, 오염 등)는 검수 기준에 포함되지
                    않습니다.
                  </li>
                  <li class="more_list_item">
                    ※ 랩핑, 타 업체 검수택 및 최초 구매 영수증의 경우 포함되는 것을 보장하지 않으며,
                    검수 과정 중 제거될 수 있습니다.
                  </li>
                </ul>
              </div>
            </li>
          </ul>

          <h3 class="title_check">제품 상태</h3>
          <ul class="check_list">
            <li class="list_item">
              
              <br>
              <div class="table_wrap">
                <table>
                  <caption>
                    <span class="blind">상태 기준 구분/불합격/구매자 의사 확인/합격 표</span>
                  </caption>
                  <colgroup>
                    <col style="width: 40%">
                    <col style="width: 20%">
                    <col style="width: 20%">
                    <col style="width: 20%">
                  </colgroup>

                  <thead>
                    <tr>
                      <th scope="col">구분</th>
                      <th scope="col">불합격</th>
                      <th scope="col">
                        구매자<br>
                        의사 확인
                      </th>
                      <th scope="col">합격</th>
                    </tr>
                  </thead>

                  <tbody>
                    <tr>
                      <th scope="row">
                        어퍼 재봉 불량-부위별
                        <p class="etc">건너뜀, 올풀림 등</p>
                      </th>
                      <td>-</td>
                      <td>≥5땀</td>
                      <td>&lt;5땀</td>
                    </tr>
                    <tr>
                      <th scope="row">재단면 유실</th>
                      <td>-</td>
                      <td>≥5mm</td>
                      <td>&lt;5mm</td>
                    </tr>
                    <tr>
                      <th scope="row">찢어짐/찍힘/까짐-2차 손상</th>
                      <td>-</td>
                      <td>≥8mm</td>
                      <td>&lt;8mm</td>
                    </tr>
                    <tr>
                      <th scope="row">
                        나염
                        <p class="etc">윙로고, 브랜드명, 인솔 등 각 프린트 개체당 적용</p>
                      </th>
                      <td>-</td>
                      <td>≥50% 유실</td>
                      <td>&lt;50% 유실</td>
                    </tr>
                    <tr>
                      <th scope="row">내부 라벨 정보 상이</th>
                      <td>-</td>
                      <td>○</td>
                      <td>-</td>
                    </tr>
                    <tr>
                      <th scope="row">
                        오염-반경
                        <p class="etc">본드 자국 등</p>
                      </th>
                      <td>-</td>
                      <td>≥12mm</td>
                      <td>&lt;12mm</td>
                    </tr>
                    <tr>
                      <th scope="row">
                        부자재 기능 상실
                        <p class="etc">지퍼, 스토퍼, 벨크로, 밴드 등</p>
                      </th>
                      <td>-</td>
                      <td>○</td>
                      <td>-</td>
                    </tr>
                  </tbody>
                </table>
                <ul class="more_info_list">
                  <li class="more_list_item">
                    ※ 소재 특성상 클리어 솔, 스펀지, 사출소재 등의 변색 진행의 경우 합격 처리됩니다.
                  </li>
                  <li class="more_list_item">
                    ※ 오프화이트 신발끈("), 윙로고™, 인솔Ⓡ 등 일부 소재 및 공정 특성상 발생 가능한
                    나염 유실의 경우 합격 처리됩니다.
                  </li>
                </ul>
              </div>
            </li>
          </ul>

          <h3 class="title_check">유의사항</h3>
          <p class="description">
            ※ '구매자 의사 확인'의 상품은 최초 보류 알림 기준 <span>24</span>시간 이내
            회신이 없을 경우에 자동 검수 합격 처리되며 이와 관련한 취소는 불가능합니다.
          </p>
          <p class="description">
            ※ 모조품/가품 판매 및 페널티 회피 시 해당 계정은 회원 자격이 정지되며, 새로운 아이디로
            가입을 하여도 이전 거래 기록을 근거로 서비스 이용을 제재할 수 있습니다.
          </p>
          <p class="description">
            ※ 국내 발매 제품/해외 발매 제품의 여부는 검수 불합격 사항이 아니며, 이로 인한 구매 취소
            또한 불가합니다.
          </p>

          <p class="add_check"><b>검수 불합격 시 반송 택배 운임</b></p>
          <p class="description">[착불]</p>
          <p class="etc_desc">검수 기준상 '불합격' 에 해당하는 반송건</p>
          <p class="description"></p>
          <p class="description">[선불]</p>
          <p class="etc_desc">'구매의사 확인' 이후 발생하는 반송건</p>
        </div>
      </div>
    </div>
<script type="text/javascript">
$(document).ready(function(){
	$('#sub_area > ul > li:eq(2)').addClass('bold');
	$('#sub_area > ul > li:eq(1)').removeClass('bold');
	$('#sub_area > ul > li:eq(0)').removeClass('bold');
});
</script>
