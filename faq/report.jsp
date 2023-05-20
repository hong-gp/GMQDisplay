<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.*" %>
<%
String id = (String)session.getAttribute("sid");
if (id == null) {
	response.sendRedirect("/GMQDisplay-master/login_info/login.html");
	return;
}
%>
<head>

<title>고객센터 | GMQDisplay</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="keywords" content="고객센터, GMQ Display 고객센터, GMQ Display 1:1문의, GMQ Display 문의방법, 고객문의, 도움말  ">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="expires" content="-1">
<meta name="Title" content="GPG Display Service">
<meta name="Description" content="GMQ Display 서비스 이용에 궁금한 점이 있으시다면 서비스 도움말 메뉴를 이용해보세요.">
<meta content="width=1200" name="viewport">
<link rel="shortcut icon" href="/GMQDisplay-master/static/images/favicon.png">
<link rel="stylesheet" type="text/css" href="//static.danawa.com/css/common.css?v=2107270920">
<link rel="stylesheet" type="text/css" href="//static.danawa.com/css/navigation.css?v=2107270920">
<link rel="stylesheet" type="text/css" href="//static.danawa.com/new/recss/wish_pop.css" />
<link rel="stylesheet" type="text/css" href="//static.danawa.com/new/recss/cs_default.css" />
<link rel="canonical" href="FAQ.html/service4.html?cate1=53&cate2=54&tSeq=826" />
<link rel="alternate" media="only screen and (max-width: 640px)" href="http://help.danawa.com/mobile" />
<script src="//static.danawa.com/globaljs/external/jquery/core/last/jquery-last.min.js"></script>
<script type="text/javascript" charset="euc-kr" src="/globaljs/com/danawa/common/gnb_ui.js?v=1611210920"></script>
<script type="text/javascript" charset="euc-kr" src="/globaljs/com/danawa/common/jquery.addProductToWishList.js?v=1611210920"></script>
<script type="text/javascript" src="//static.danawa.com/globaljs/external/jquery/plugin/jquery.cookie/jquery.cookie.js"></script>
<script src="/new/js/common.js"></script>
<script src="/namo_4.3.4.06/js/namo_scripteditor.js"></script>
<script type="text/javascript" src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>


<div id="skip_navigation">
	<a href="#danawa_header" onclick="document.getElementById('danawa_header').tabIndex=-1;document.getElementById('danawa_header').focus();return false;"><span>메인 메뉴로 바로가기</span></a>
	<a href="#danawa_container" onclick="document.getElementById('danawa_container').tabIndex=-1;document.getElementById('danawa_container').focus();return false;"><span>본문으로 바로가기</span></a>
</div>

					
<div id="danawa_container" class="cs_ctn">
		<div class="top_down_position" style="display:none;">
		    <div class="top_down_area">
		        <div class="top_down_fixed">
		            <a class="btn_layer_up" href="javascript:window.scrollTo(0,0);"><span>컨텐츠 상단으로 이동</span></a>
		            <a class="btn_layer_down" href="javascript:window.scrollTo(0,$(document).height());"><span>컨텐츠 하단으로 이동</span></a>
		        </div>
		    </div>
		</div>
<body>

<div id="danawa_wrap" class="help_wrap">
	
	<div id="danawa_header">

	<div id="danawa_container" class="cs_ctn">
		<div class="top_down_position" style="display: none;">
		    <div class="top_down_area">
		        <div class="top_down_fixed">
		            <a class="btn_layer_up" href="javascript:window.scrollTo(0,0);"><span>컨텐츠 상단으로 이동</span></a>
		            <a class="btn_layer_down" href="javascript:window.scrollTo(0,$(document).height());"><span>컨텐츠 하단으로 이동</span></a>
		        </div>
		    </div>
		</div>

		<div class="header_help">
			<!-- GMQ Display 고객센터 -->
			<div class="cs_header">
				<div class="top_left">
					<h1 class="tit_dnw">
						<a href="../index.html">
						<img src="../static/images/common/logo_gmqd_black.png" alt="GMQ Display" style="width:135; margin-top:10px;"></a>
					</h1>
					<h2 class="tit_cs">
						<a href="FAQ.html"><img src="//img.danawa.com/new/danawa_main/v2/img/logo_cs_danawa.jpg" alt="고객센터"></a>
					</h2>
				</div>

				<!-- 검색 -->
				
				</div>
			</div>
		</div>
		<div id="cs_Wrap" style="background-color:black;">
			<div id="cs_header">
				<div id="cs_GNB_main">
		            <h3 class="blind" >고객센터 네비게이션</h3>
		            <ul>
		                <li class="home">
		                	<a href="FAQ.html"><span class="blind">HOME</span></a>
		                </li>
		                <li class="help" >
		                	<a href="service.html"><span class="blind">서비스</span></a>
		                </li>
		                <li class="rip" style="background-color:red;">
		                	<a href="report.jsp"><span class="blind">신고 · 문의 · 제안하기</span></a>
		                </li>
		                <li class="biz">
		                	<a href="/GMQDisplay-master/event.html"><span class="blind">비즈니스 센터</span></a>
		                </li>
		                <li class="notice ">
		                	<a href="notice.html"><span class="blind">공지사항</span></a>
		                </li>
		            </ul>
				</div>
			</div>
		</div>
		<script type="text/javascript">


			$(window).scroll(function() {
				var scroll = $(window).scrollTop();
				if (scroll >= 100) {
					$(".top_down_position").show();
				} else {
					$(".top_down_position").hide();
				}
			});
		
			//$(document).ready(function(){
			//	$('.danawa_top_search').remove();
			//});
		</script>

	<div id="cs_contents" class="nav_ctn inquiry">
	<input type="hidden" id="memberType" value="D">
	<div class="cs_subnav">
	    <!-- nav_wrap -->
	    <ul class="nav_wrap">
	        <!-- selected 클래스 추가 시 현재 페이지 -->
	        <li class="selected"><a href="report.jsp"><span>신고 · 문의 · 제안</span></a></li>

	    </ul>
	</div>
	<script type="text/javascript">
	    jQuery(document).ready(function ($) {
	        var selectedNum = '306';
	        $("#" + selectedNum).addClass("selected");

			var textCountLimit = 1000;
			
			$('textarea[name=userContent]').keyup(function() {
		        // 텍스트영역의 길이를 체크
		        var textLength = $(this).val().length;
		        // 입력된 텍스트 길이를 #textCount 에 업데이트 해줌
		        $('#textCount').text(addComma(textLength));
		         
		        // 제한된 길이보다 입력된 길이가 큰 경우 제한 길이만큼만 자르고 텍스트영역에 넣음
		        if (textLength > textCountLimit) {
			        alert("내용입력은 최대 한글 1,000자까지만 가능합니다.");
		            $(this).val($(this).val().substr(0, textCountLimit));
		            $('#textCount').text(addComma(textCountLimit));
		            $("#btnPostInquiry").show();
		        }
		    });
	    });

	    function addComma(x) {
		   return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
	</script>

	<div id="cs_contents_sub" class="cs_ctn_sub">
	    <div class="cs_rip">
	        <h3><span class="bg"></span>신고 · 문의 · 제안</h3>
	    </div>
	    <div class="cs_form cs_report">

	        <form id="saveForm" name="saveForm" method = "post" action = "/GMQDisplay-master/xhr/insertReport.jsp" >
			<fieldset>
	                <legend>
						문의<span class="ccs_notice">(필수)</span>
					</legend>
	                	
		                    <input type="radio"  name="userCategory" value="신고">
		                    <label ><span class="">신고</span></label>

		                    <input type="radio" name="userCategory" value="문의">
		                    <label><span class="">문의</span></label>

		                    <input type="radio"  name="userCategory" value="제안">
		                    <label ><span class="">제안</span></label>             
			</fieldset>
    
				<fieldset>
	                <legend>서비스<span class="ccs_notice">(필수)</span></legend>
	                	
		                    <input type="radio"  name="userService" value="주문/결제" />
		                    <label ><span class="">주문/결제</span></label>
				
		                    <input type="radio"  name="userService" value="게이밍 모니터" />
		                    <label ><span class="">게이밍 모니터</span></label>
					
		                    <input type="radio"  name="userService" value="멤버쉽" />
		                    <label ><span class="">멤버쉽</span></label>
				
		                    <input type="radio"  name="userService" value="회원정보" />
		                    <label ><span class="">회원정보</span></label>
		               					
		                    <input type="radio"name="userService" value="권리침해" />
		                    <label ><span class="">권리침해</span></label>
	
		                    <input type="radio" name="userService" value="기타" />
		                    <label><span class="">기타</span></label>
		              
				 </fieldset>

	            <fieldset>
	                <legend>제목</legend>
	                <input type="text" name="userTitle"  title="제목 입력" placeholder="제목을 입력해 주세요.">
	            </fieldset>

	            <fieldset>
	                <legend>
						내용<span class="ccs_notice">(필수)</span>
					</legend>

	                <textarea name="userContent" cols="70" rows="10" title="내용 입력" placeholder="내용을 작성해 주세요 &#13;&#10;※ 개인 정보 입력은 지양해 주세요" style="background-color:#cccccc"></textarea>
                    <div class="remaining" align="right"><span id="textCount">0</span> / 1,000 자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                    
	            </fieldset>
	           
	            
				<center>
					<button id="insert_report_btn" type = "button" 
					style="background-color:#e7141a;width:90px;height:30px;padding: 0 1vw; color: white; border-radius: 1.3889vw;">
						입 력
					</button>
					<button type = "reset"
					style="background-color:#ccc;width:90px;height:30px;padding: 0 1vw; color: white; border-radius: 1.3889vw;">
						취 소
					</button>
		        </center> 
	        </form>
	    </div>
	</div>
<script>
$(document).ready(function () {
	var id = "<%=id%>";
    $("#insert_report_btn").click(function () {
        if (id == null) {
            alert("로그인 이후 작성할 수 있습니다.");
            return;
        }
        $("#saveForm").submit();
    });
});
</script>
</div>
</div>
<div id="danawa_footer" class="cs_footer">
	<div class="footer">
		<div class="footer__top">
			<div class="footer__inner">
				<dl class="footer__notice">
					<dt class="title">공지</dt>
												<dd class="subj">
								<a href="/GMQDisplay-master/faq/notice.html" target="_blank">[05.01] GMQ Display 이용약관 개정 안내</a>
							</dd>
										</dl>
				<ul class="footer__menu">
					<li class="item"><a href="/GMQDisplay-master/introduceCompany.html" target="_blank">GMQ Display 소개</a></li>
					<li class="item"><a href="/GMQDisplay-master/person.html" target="_blank">개인정보처리방침</a></li>
				</ul>
			</div>
		</div>
		<div class="footer__wrap">
			<div class="footer__inner">
				<div class="footer__info">
					<div class="footer__about">
						<span class="address">주소 (우) 남서울대학교 GMQ Display</span>
						<span class="txt">대표: GMQ Display</span><br><span class="txt">사업자번호: 000-00-00000</span>
						<span class="txt">통신판매업: 제0000-남서울대-00000호</span>
						<span class="txt">부가통신사업: 제000000호
					</div>
					<div class="footer__law">
						<strong class="title">콘텐츠산업진흥법</strong><span class="summary">콘텐츠산업 진흥법에 의한 콘텐츠 보호</span>
						<!--<a href="#" role="button" class="btn_footer" id="content_see_more">자세히보기</a>-->

						<div class="layer__basic" id="footer_law_layer" role="dialog" aria-label="콘텐츠산업진흥법에 의한 표시" style="display: none;">
							<div class="layer__basic__wrap">
								<div class="layer__basic__header"><strong class="layer__basic__title">콘텐츠산업진흥법에 의한 표시</strong></div>
								<div class="layer__basic__cont">
									<div class="layer__footer-law">
										<div class="layer__footer-law__detail">
											<dl class="row">
												<dt class="title">콘텐츠의 명칭</dt>
												<dd class="cont">상품콘텐츠(정보) 및 기사, 이벤트 정보</dd>
											</dl>
											<dl class="row">
												<dt class="title">콘텐츠의 제작 및 표시 연월일</dt>
												<dd class="cont">개별 표기된 제작일 또는 갱신일</dd>
											</dl>
											<dl class="row">
												<dt class="title">콘텐츠의 제작자</dt>
												<dd class="cont">(주)GMQ Display<br>전화: 0000 - 0000 (유료) / 팩스: 0000-0000<br>남서울대학교 GMQ Display</dd>
											</dl>
											<dl class="row">
												<dt class="title">콘텐츠의 이용조건</dt>
												<dd class="cont">이용약관 및 서비스 안내 참조<br>(동의 없이 무단복제 및 가공을 금함)<a href="#" target="_blank" class="btn_footer">이용약관 보기</a></dd>
											</dl>
										</div>
										<div class="layer__footer-law__noti">
											<p class="text">(주)GMQ Display 홈페이지 내의 모든 콘텐츠는 『콘텐츠산업 진흥법』에 따라
												<br> 제작일 또는 그 갱신일로부터 5년간 보호 됩니다.
											</p>
										</div>
									</div>
								</div>
								<button type="button" class="layer__basic__close">
									<span class="blind">닫기</span>
								</button>
							</div>
						</div>
						<!--<a href="#" class="btn_footer" target="_blank">콘텐츠이용안내</a>-->
					</div>
					<div class="footer__point">
						(주)GMQ Display는 상품판매와 직접적인 관련이 없으며, 모든 상거래의 책임은 구매자와 판매자에게 있습니다.<br>
						이에 대해 (주)GMQ Display는 일체의 책임을 지지 않습니다.<br>
						본사에 등록된 모든 광고와 저작권 및 법적책임은 자료제공사 (또는 글쓴이)에게 있으므로 본사는 광고에 대한 책임을 지지 않습니다.
					</div>
					<address class="footer__copy">Copyright © <strong>connectwave</strong> Co., Ltd. All Rights Reserved.</address>
					<div class="footer__kolsa">
						<a target="_blank" href="http://www.kolsa.or.kr">
							<span class="blind">KOLSA 한국온라인 쇼핑협회</span>
						</a>
					</div>
				</div>
				<div class="footer__cs">
					<strong class="title">GMQ Display 고객센터</strong>
					<div class="service">
						<a href="FAQ.html" target="_blank" class="link link--home">고객센터 홈</a>
						<a href="/GMQDisplay-master/faq/report.jsp" target="_blank" class="link link--inquiry">문의/제안</a>
						<a href="service.html" target="_blank" class="link link--help">도움말</a>
					</div>
					<ul class="info">
						<li class="item">전화: 0000-0000 (유료)</li>
						<li class="item">팩스: 0000-0000</li>
						<li class="item">이메일: GMQ Display<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@naver.com</li>
					</ul>

					<!--<ul class="relative">
						<li class="item">
							<a href="#" role="button" class="btn_footer" id="denyEmailOpenBtn" onclick="return false;">이메일수집거부</a>
							<div class="layer__basic" id="denyEmailNoticeArea" role="dialog" aria-label="이메일 주소 무단 수신수집 거부" style="display: none;">
								<div class="layer__basic__wrap">
									<div class="layer__basic__header"><strong class="layer__basic__title">이메일 주소 무단 수신수집 거부</strong></div>
									<div class="layer__basic__cont">
										<div class="layer__footer-denyemail">
											<p class="contents">영리목적 (주)GMQ Display에서는 본 웹사이트에 게시된 이메일 주소가<br>
												전자우편 수집 프로그램이나 그 밖의 기술적 장치를 이용하여<br>
												무단으로 수집되는 것을 거부하며, 이를 위반시<br>
												<strong class="point">정보통신망법에 의해 형사처벌됨</strong>을 유념하시기 바랍니다.
											</p>
											<span class="date">[게시일 2023년 04월 30일]</span>
										</div>
									</div>
									<button type="button" id="denyEmailCloseBtn" class="layer__basic__close">
										<span class="blind">닫기</span>
									</button>
								</div>
							</div>
						</li>
						<li class="item">
							<a href="#" target="_blank" class="btn_footer">ARS문의안내</a>
						</li>
					</ul>
				</div>-->

			</div>
		</div>
			</div>
</div>
</div>
		<script src="//static.danawa.com/globaljs/static/logger_trackEvent.js"></script>
		<script src="//static.danawa.com/globaljs/static/logger_Insight_WebAnalytics.js"></script>
			<script src="//static.danawa.com/globaljs/static/wcslog.js?v1607061545="></script>
		<script>
			if (!wcs_add) var wcs_add = {};
			wcs_add["wa"] = "s_3b3fb74948b1";
			if (!_nasa) var _nasa = {};
			wcs.inflow("danawa.com");
			wcs_do(_nasa);
		</script>
		<script>
		var _AdwebCounterValue = _AdwebCounterValue || [];
		_AdwebCounterValue['Account'] = _AdwebCounterValue['Account'] || 'danawacom';
		_AdwebCounterValue['Category'] = _AdwebCounterValue['Category'] || 'page';
		_AdwebCounterValue['Namming'] = _AdwebCounterValue['Namming'] || '';
		_AdwebCounterValue['Price'] = _AdwebCounterValue['Price'] || '';
		_AdwebCounterValue['GoodsNo'] = _AdwebCounterValue['GoodsNo'] || '';
		_AdwebCounterValue['Version'] = _AdwebCounterValue['Version'] || '2.0';
			</script>
	<script src="//static.danawa.com/globaljs/static/adweb_counter_danawa.min.js?version=20201117"></script>
<!-- view as mobile script -->
<script src="//static.danawa.com/globaljs/com/danawa/common/setUpMobileView.js"></script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-37762359-14"></script>
<script>
	window.dataLayer = window.dataLayer || [];

	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());
	gtag('config', 'UA-37762359-14', {
		'sample_rate': 5
	}); // 유니버셜
	gtag('config', 'AW-963914956'); // 제휴캠페인
	gtag('config', 'AW-631507961'); // 확장캠페인
	gtag('config', 'AW-10932905353'); // 듀얼_기존
	gtag('config', 'AW-10933251710'); // 듀얼_확장
</script>


<script src="//static.danawa.com/globaljs/static/acecounter/acecounter_script_pc.js?v=2205041250"></script>

<noscript>
	<img src="//gtp13.acecounter.com:8080/?uid=AH6A45867192252&je=n&" border="0" width="0" height="0" alt="">
</noscript>

</body>
</html>

