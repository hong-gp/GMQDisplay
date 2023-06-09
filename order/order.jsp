<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.*" %>
<%
	String id = (String)session.getAttribute("sid");
	
	if (id == null)
		response.sendRedirect("/GMQDisplay-master/login_info/login.html");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html lang="ko">
<head>

<title>주문서 작성 | GMQDisplay</title>
	<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="canonical" href="index.html">
<meta name="keywords" content="GMQDisplay 게이밍 모니터, 게이밍 모니터, 오디세이 모니터">
<meta name="description" content="GMQDisplay 게이밍 모니터에 대한 모든 궁금증을 해결하세요. 디자인과 기능, 사용 방법 등을 한눈에 비교하고 확인할 수 있어 제품 선택이 한결 쉬워집니다.">
<meta name="date" content="">
<meta name="sitecode" content="sec">

<meta name="twitter:card" content="Summary">
<meta name="twitter:site" content="@samsungkorea">
<meta name="twitter:creator" content="@samsungkorea">
<meta name="twitter:url" content="https://www.samsung.com/monitors/gaming-monitors/">
<meta name="twitter:title" content="게이밍 모니터 | GMQDisplay 대한민국">
<meta name="twitter:description" content="GMQDisplay 게이밍 모니터에 대한 모든 궁금증을 해결하세요. 디자인과 기능, 사용 방법 등을 한눈에 비교하고 확인할 수 있어 제품 선택이 한결 쉬워집니다.">
<meta name="twitter:image" content="./static/image/gmqd_bg_logo.png"/>

<meta property="og:url" content="./index">
<meta property="og:image" content="./static/image/gmqd_bg_logo.png">
<meta property="og:type" content="website">
<meta property="og:site_name" content="GMQDisplay sec">
<meta property="og:locale" content="ko">
<meta property="og:title" content="게이밍 모니터 | GMQDisplay 대한민국">
<meta property="og:description" content="GMQDisplay 게이밍 모니터에 대한 모든 궁금증을 해결하세요. 디자인과 기능, 사용 방법 등을 한눈에 비교하고 확인할 수 있어 제품 선택이 한결 쉬워집니다.">
<meta property="og:country-name" content="sec">

<meta itemprop="name" content="GMQDisplay sec">
<meta itemprop="image" content="./static/image/gmqd_bg_logo.png">
<meta itemprop="url" content="https://www.GMQDisplay.com/monitors/gaming-monitors/">
<meta itemprop="description" content="GMQDisplay 게이밍 모니터에 대한 모든 궁금증을 해결하세요. 디자인과 기능, 사용 방법 등을 한눈에 비교하고 확인할 수 있어 제품 선택이 한결 쉬워집니다.">
<meta itemprop="keywords" content="GMQDisplay 게이밍 모니터, 게이밍 모니터, 오디세이 모니터">

	

	<link rel="shortcut icon" href="/GMQDisplay-master/static/images/favicon.png">
	<link href="https://static-ux.mustit.co.kr/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- <link rel="stylesheet" type="text/css" href="https://static-ux.mustit.co.kr/lib/bootstrap/bootstrap.css"> -->
	<link rel="stylesheet" type="text/css" href="https://mustit.co.kr/lib/css/common/reset.css"> <!-- reset.css -->
	<link rel="stylesheet" type="text/css" href="https://mustit.co.kr/lib/css/front/header.css"> <!-- 리뉴얼 헤더 -->
	<link rel="stylesheet" type="text/css" href="https://mustit.co.kr/lib/css/front/common.css"> <!-- common.css -->
	<link rel="stylesheet" type="text/css" href="https://mustit.co.kr/lib/css/front/button.css"> <!-- button.css -->
	<link rel="stylesheet" type="text/css" href="https://mustit.co.kr/lib/css/front/font.css"> <!-- font.css -->
	<link rel="stylesheet" type="text/css" href="https://mustit.co.kr/lib/css/front/layer.css"><!-- 레이어팝업 -->
	<link rel="stylesheet" type="text/css" href="https://mustit.co.kr/lib/css/common/slide.css">
	<link rel="stylesheet" type="text/css" href="https://mustit.co.kr/lib/css/dist/service_desktop.css">
			<link rel="stylesheet" type="text/css" href="//mustit.co.kr/lib/css/front/order.css">
		<link rel="stylesheet" type="text/css" href="//mustit.co.kr/lib/css/common/join_styles.css">
	<link rel="stylesheet" type="text/css" href="//mustit.co.kr/lib/css/front/new_main.css"> <!-- main.css -->
	<link rel="canonical" href="https://mustit.co.kr/order/step1" />
	<script type="text/javascript" src="https://static-ux.mustit.co.kr/lib/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="https://static-ux.mustit.co.kr/lib/jquery.min.1.7.1.js"></script>
	<script type="text/javascript" src="//mustit.co.kr/lib/js/filesize_check.js"></script>
	<script type="text/javascript" src="https://static-ux.mustit.co.kr/lib/jquery.scrollablecombo.js"></script> <!-- 메인배너스크롤 js -->
	<script type="text/javascript" src="//mustit.co.kr/lib/js/front/jquery.serialize-object.min.js"></script>
	<script type="text/javascript" src="//mustit.co.kr/lib/js/front/slide.js"></script>
	<script type="text/javascript" src="//mustit.co.kr/lib/js/common.js?v=1680035330"></script>
	<script type="text/javascript" src="//mustit.co.kr/lib/js/front/order.js?v=1680035330"></script>
	<script type="text/javascript" src="//mustit.co.kr/lib/js/front/header.js?v=1680035330"></script>
	<script type="text/javascript" src="//mustit.co.kr/lib/js/front/header_new.js?v=1680035330"></script>
	<script type="text/javascript" src="/lib/include/jquery.dotdotdot.js"></script> <!-- 여러줄 말줄임 -->
	<!-- uri에 따라 js를 로드 시키는데 product.js 파일은 etc/selling_event_view/ uri를 가졌을때는 로드시키질 못함. 그래서 아래쪽 추가하는 코드 -->
		<link rel="stylesheet" href="https://static-ux.mustit.co.kr/lib/jquery-ui/jquery-ui.css">
	<script src="https://static-ux.mustit.co.kr/lib/jquery-ui/jquery-ui.js"></script>

	<!--ux component-->
	<link rel="stylesheet" type="text/css" href="https://static-ux.mustit.co.kr/version/0.9.0/service/desktop/mustit-ui-desktop.css">
	<link rel="stylesheet" type="text/css" href="https://static-ux.mustit.co.kr/ux/service/common/mustit-webfonts.css">
	<link rel="stylesheet" type="text/css" href="https://static-ux.mustit.co.kr/ux/service/common/pretendard.css"><!--신규폰트 추가-->
	<script type="text/javascript" src="https://static-ux.mustit.co.kr/version/0.9.0/service/desktop/mustit-ui-desktop.js"></script>
	
<link rel="dns-prefetch" href="https://images.GMQDisplay.com">
<link rel="preconnect" href="https://images.GMQDisplay.com">
<link rel="shortcut icon" href="./static/images/favicon.png">
<link rel="apple-touch-icon" href="" sizes="">

<!-- PUB : style.css import resources -->
<link rel="stylesheet" href="../static/css/reset.css">
<link rel="stylesheet" href="../static/css/slick.css">
<link rel="stylesheet" href="../static/css/common.css">
<link rel="stylesheet" href="../static/css/layout.css">
<link rel="stylesheet" href="../static/css/pf.css">
<link rel="stylesheet" href="../static/css/content_part01.css">
<link rel="stylesheet" href="../static/css/content_part02.css">
<link rel="stylesheet" href="../static/css/content_part03.css">
<link rel="stylesheet" href="../static/css/content_part04.css">
<link rel="stylesheet" href="../static/css/content_part05.css">
<link rel="stylesheet" href="../static/css/content_part06.css"> 
<link rel="stylesheet" href="../static/css/component.css">

<!-- 컴포넌트 스타일 -->
<link rel="stylesheet" href="../static/css/jquery-ui.min.css">
<link rel="stylesheet" href="../static/css/swiper.min.css">
<script src="../static/script/jquery-3.3.1.min.js"></script>
<script src="../static/script/jquery-ui.min.js"></script>
<script src="../static/script/slick.js"></script>
<script src="../static/script/slick-init.js"></script>
<script src="../static/script/swiper.min.js"></script>

<script src="../static/script/jquery.blockUI.js"></script>
<script src="../static/script/base.js"></script>
<script src="../static/script/layerPop.js"></script>
<!-- <script type="text/javascript" src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js" charset="utf-8"></script> -->
<script src="../static/script/netfunnel.js" charset="UTF-8"></script>
<script src="../static/script/netfunnel_skin.js" charset="UTF-8"></script>
<script src="../static/script/event/event.js"></script>
<script src="../static/script/common.js"></script>
<script src="../static/script/custom.js"></script>
<script src="../static/script/sticky.min.js"></script>
<script src="../static/script/jquery.cookie.js"></script>
<script src="../static/script/search.js"></script>
<script src="../static/script/component.js"></script>
<script src="../static/script/clipboard.min.js"></script>
<script type="text/javascript" src="../static/script/picturePolyfill.min.js"></script>

	<style>
		.ui-autocomplete {
			position: absolute;
			cursor: default;
			z-index: 99999 !important;
			text-align: left;
		}
		.header .move_gnb {
			clear: both;
		}
	</style>

	<!--my_sell_modify 주소찾기 버튼 누를 경우 GTM 과 충돌 나서 해당 URL 예외 처리 MR.Oh 19.02.19-->
	<!-- Google Tag Manager -->
	<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({"gtm.start":new Date().getTime(),event:"gtm.js"});
var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!="dataLayer"?"&l="+l:"";j.async=true;j.src="https://www.googletagmanager.com/gtm.js?id="+i+dl;f.parentNode.insertBefore(j,f);})(window,document,"script","dataLayer","GTM-TF5NBT");</script>
			<!-- 로그분석 : 구글  -->
		<script async src="https://www.googletagmanager.com/gtag/js?id=UA-29779422-1"></script>
<script type="text/javascript">
	window.dataLayer = window.dataLayer || [];
	function gtag(){dataLayer.push(arguments);}
	gtag("js", new Date());
	gtag("config", "UA-29779422-1", {
		"linker": ["mustit.co.kr","m.web.mustit.co.kr","m.mustit.co.kr"]
});
	gtag("config", "AW-987758025", {
	"linker": ["mustit.co.kr","m.web.mustit.co.kr","m.mustit.co.kr"]
});
</script>
		<!-- 해당 코드로 인하여 페이지 로드가 현저히 느려짐. 현재 운영하지 않아 주석 처리함 ( 2018-10-11 Ihyeon ) -->
			
	<!-- 레코픽:개인화 서비스 ( 2015-08-24 Ihyeon ) -->
	
	
	<!-- START :: 모비온 트래킹 -->
		<!-- END :: 모비온 트래킹 -->

	<!-- START :: FACEBOOK PIXEL -->
	<script>!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?n.callMethod.apply(n,arguments):n.queue.push(arguments)};
if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version="2.0";
n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];
s.parentNode.insertBefore(t,s)}(window,document,"script",
"https://connect.facebook.net/en_US/fbevents.js");
fbq("init", "466854473946869");

</script>	<!-- END :: FACEBOOK PIXEL -->

	<!-- START :: BRAZE WEB SDK -->
		<!-- END :: BRAZE WEB SDK -->

	

	<script type="text/javascript">
		$(document).ready(function() {
			if ("" == "ON") layer_mask('/layer/alipay_info', 400, 500);
			if ("" == "ON") layer_side("/layer/hot_deal_straight_ignore", 160);

			getBrand3('BEST');
		});
	</script>
<script type="text/javascript">
	var checkActionTimeOut;
	$(document).ready(function () { 
		/*
		$.ajax({
			 url : "/xhr/member/getSession"
			,type : "POST"
			,success : function(data) {
				var session = JSON.parse(data);
				if(session.mbrNo != 0){
					resetLoginTimeOut();
					$(document).on('click keypress' , 'body' , function(){
						resetLoginTimeOut();
					});
				}
			}
		});
		*/
		if('0' != 0){
			resetLoginTimeOut();
			$(document).on('click keypress' , 'body' , function(){
				resetLoginTimeOut();
			});
		}		
	});
	
	function resetLoginTimeOut() {
		window.clearTimeout(checkActionTimeOut);
		checkActionTimeOut = setTimeout(function() { // 30분 후 로그아웃
			location.href="/member/logout/";
		}, 24*60*60*1000);
	}
</script>
<!-- s : AA 태깅 -->
<script type="text/javascript">
	var pageURL = window.location.href;
	var siteCode = "sec";
	
	var digitalData = {
			"page" : {
				"pageInfo" : {
					"siteCode" : siteCode
					, "siteSection" : ""
					, "pageName" : ""
					, "pageURL" : pageURL
					, "pageTrack" : "microsite"
					, "version" : "KDP"
				}
				, "pathIndicator" : {
					"depth_2" : ""
					, "depth_3" : ""
					, "depth_4" : ""
					, "depth_5" : ""
				}
			}
			, "user" : {
				"loginStatus" : ""
			}
			, "product" : {
				"category" : ""
				, "model_code" : ""
				, "model_name" : ""
				, "displayName" : ""
				, "pvi_type_code" : ""
				, "pvi_type_name" : ""
				, "pvi_subtype_code" : ""
				, "pvi_subtype_name" : ""
			
			}
		}
	
	// depth Info.
	var depth = window.location.href.split("/").length;
	var depth_last = window.location.href.split("/")[depth-1];
	if(depth_last =="" || depth_last.charAt(0)=="?"){
	    depth -= 1;
	}
	
	// set site section value
	if((digitalData.page.pathIndicator.depth_2 != "")||(digitalData.page.pageInfo.pageTrack == "flagship pdp")){	    
		if(digitalData.page.pathIndicator.depth_2 == "shop" || digitalData.page.pathIndicator.depth_2 == "my account"){
			digitalData.page.pageInfo.siteSection = siteCode + ":" + digitalData.page.pathIndicator.depth_2;
	    }else{
	    	digitalData.page.pageInfo.siteSection = siteCode + ":consumer"; //product page
	    }
	}else if(depth == 4){ 
	    digitalData.page.pageInfo.siteSection = siteCode + ":home"; //home
	}else{
	     digitalData.page.pageInfo.siteSection = siteCode + ":" + window.location.href.split("/")[4];
	}
	
	// set product category value
/* 	if(digitalData.page.pathIndicator.depth_3 != ""){
	    digitalData.product.category = digitalData.page.pathIndicator.depth_3;
	} */
	
	// set pathIndicator(not product page)
	if(digitalData.page.pathIndicator.depth_2 == ""){
	    if(depth >= 5) digitalData.page.pathIndicator.depth_2 = window.location.href.split("/")[4].toLowerCase();
	    if(depth >= 6) digitalData.page.pathIndicator.depth_3 = window.location.href.split("/")[5].toLowerCase();
	    if(depth >= 7) digitalData.page.pathIndicator.depth_4 = window.location.href.split("/")[6].toLowerCase();
	    if(depth >= 8) digitalData.page.pathIndicator.depth_5 = window.location.href.split("/")[7].toLowerCase();
	}
	
	// set pageName
	var pageName = siteCode;
	if(digitalData.page.pathIndicator.depth_2 != "")
	    pageName += ":" + digitalData.page.pathIndicator.depth_2;
	if(digitalData.page.pathIndicator.depth_3 != "")
	    pageName += ":" + digitalData.page.pathIndicator.depth_3;
	if(digitalData.page.pathIndicator.depth_4 != "")
	    pageName += ":" + digitalData.page.pathIndicator.depth_4;
	if(digitalData.page.pathIndicator.depth_5 != "")
	    pageName += ":" + digitalData.page.pathIndicator.depth_5.replace(/^\s+|\s+$/gm,'');
	
	// check PD, GPD
	var pageTrackName = digitalData.page.pageInfo.pageTrack;
	if(pageTrackName == "product detail" || pageTrackName == "generic product details"){
	    pageName += ":" + digitalData.product.model_code;
	    var displayName = "".replace(/(<([^>]+)>)/gi, "");
	    digitalData.product.displayName = displayName;
	}
	digitalData.page.pageInfo.pageName = pageName;
	
	</script>
	<script async src="https://assets.adobedtm.com/c8a575b84bb9/0d8938615268/launch-160c25cdcd93.min.js"></script>
<!-- e : AA 태깅 -->


<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-NVX3V74');</script>
<!-- End Google Tag Manager -->

 <!-- s : Global site tag (gtag.js) - Google Ads: 10864240863 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-10864240863"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'AW-10864240863');
</script>
 <!-- e : Global site tag (gtag.js) - Google Ads: 10864240863 -->

<script>
var stGbCd = '10';

/* s : 만 나이 구하는 함수 @param birthDate : 생년월일  jiwon0.id 22.05.17 */
function checkAge(birthDate){
	const today = new Date(); //현재날짜
	birthDate = (birthDate + "")

	var age = today.getFullYear() - Number(birthDate.slice(0,4)); 	//나이
	var mon = (today.getMonth()+1) - Number(birthDate.slice(4,6));	//월
	//생일 안지났으면 -1
	if(mon < 0 || (mon === 0 && today.getDate() < Number(birthDate.slice(6,8)))) {
		age = age -1; 
	}
	return age;
}
/* e : 만 나이 구하는 함수 @param birthDate : 생년월일  jiwon0.id 22.05.17 */


function chat_open() {
	fcTrack('click','floating chat:chat bot');
	var popupX = (window.screen.width / 2) - (356 / 2);
    var popupY = (window.screen.height / 2) - (750 / 2);

    /* 만 나이별로 agepass 구분값 전송
     * 14세 이상 => 'y'
     * 14세 미만 => 'n'
     * 로그인하지 않을경우 => 'u'
     */
    var agepass = null;  
    var birthAge = null;
	var birthDate = $.cookie("birthDate_1_");
	
	if(birthDate != 0 && birthDate != null){
		birthAge = checkAge(birthDate); 
	}
    
    if( birthAge == "" || birthAge == null || birthAge == undefined ) {
    	agepass = "u";
    } else if(birthAge > 13) {
    	agepass = "y";
    } else if(birthAge < 14) {
    	agepass = "n";
    }
    window.open('/chatbot/?agepass='+ agepass, 'chatbot', 'status=no, height=750, width=356, left=' + popupX + ', top=' + popupY + ', screenX=' + popupX + ', screenY= ' + popupY);
}

function chat_open2() {
	fcTrack('click','floating chat:chat online');

	var gType = Math.round(Math.random() * 1) ? 'm' : 'f';

	var popupX = (window.screen.width / 2) - (356 / 2);
    var popupY = (window.screen.height / 2) - (750 / 2);
    window.open('/chatbot/?type=ep&c='+ gType, '_chatbot2', 'status=no, height=750, width=356, left=' + popupX + ', top=' + popupY + ', screenX=' + popupX + ', screenY= ' + popupY);
}

function chat_open3() {
	fcTrack('click','floating chat:offline store');
}

function gift_open() {
	fcTrack('click','float chat:event gift');
	window.location.href = '/' + "event/gift/";	
}

function floating_open() {
	fcTrack('click','floating chat');
}
logger("prd");
</script>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/v1/kakao.min.js"></script> 
<script src="./static/script/snsShare.js"></script>
<script type="text/javascript"> shareInit('5880e4317936087f2764a5d340e6bca6', ''); </script>
<script>(window.BOOMR_mq=window.BOOMR_mq||[]).push(["addVar",{"rua.upush":"false","rua.cpush":"false","rua.upre":"false","rua.cpre":"false","rua.uprl":"false","rua.cprl":"false","rua.cprf":"false","rua.trans":"SJ-a74f0aac-5888-411f-8744-125b1ec005ec","rua.cook":"true","rua.ims":"false","rua.ufprl":"false","rua.cfprl":"false","rua.isuxp":"false","rua.texp":"norulematch"}]);</script>
<script>!function(a){var e="https://s.go-mpulse.net/boomerang/",t="addEventListener";if("False"=="True")a.BOOMR_config=a.BOOMR_config||{},a.BOOMR_config.PageParams=a.BOOMR_config.PageParams||{},a.BOOMR_config.PageParams.pci=!0,e="https://s2.go-mpulse.net/boomerang/";if(window.BOOMR_API_key="VRZKC-5BSTD-4EWS3-R2J59-B8GYB",function(){function n(e){a.BOOMR_onload=e&&e.timeStamp||(new Date).getTime()}if(!a.BOOMR||!a.BOOMR.version&&!a.BOOMR.snippetExecuted){a.BOOMR=a.BOOMR||{},a.BOOMR.snippetExecuted=!0;var i,_,o,r=document.createElement("iframe");if(a[t])a[t]("load",n,!1);else if(a.attachEvent)a.attachEvent("onload",n);r.src="javascript:void(0)",r.title="",r.role="presentation",(r.frameElement||r).style.cssText="width:0;height:0;border:0;display:none;",o=document.getElementsByTagName("script")[0],o.parentNode.insertBefore(r,o);try{_=r.contentWindow.document}catch(O){i=document.domain,r.src="javascript:var d=document.open();d.domain='"+i+"';void(0);",_=r.contentWindow.document}_.open()._l=function(){var a=this.createElement("script");if(i)this.domain=i;a.id="boomr-if-as",a.src=e+"VRZKC-5BSTD-4EWS3-R2J59-B8GYB",BOOMR_lstart=(new Date).getTime(),this.body.appendChild(a)},_.write("<bo"+'dy onload="document._l();">'),_.close()}}(),"".length>0)if(a&&"performance"in a&&a.performance&&"function"==typeof a.performance.setResourceTimingBufferSize)a.performance.setResourceTimingBufferSize();!function(){if(BOOMR=a.BOOMR||{},BOOMR.plugins=BOOMR.plugins||{},!BOOMR.plugins.AK){var e="false"=="true"?1:0,t="cookiepresent",n="pf7u3ryxguseazbapkcq-f-107f7835f-clientnsv4-s.akamaihd.net",i="false"=="true"?2:1,_={"ak.v":"34","ak.cp":"143520","ak.ai":parseInt("293013",10),"ak.ol":"0","ak.cr":19,"ak.ipv":4,"ak.proto":"h2","ak.rid":"b2d6b78","ak.r":37315,"ak.a2":e,"ak.m":"x","ak.n":"essl","ak.bpcip":"121.127.77.0","ak.cport":49961,"ak.gh":"23.53.32.47","ak.quicv":"","ak.tlsv":"tls1.3","ak.0rtt":"","ak.csrc":"-","ak.acc":"","ak.t":"1679850117","ak.ak":"hOBiQwZUYzCg5VSAfCLimQ==N44QcC0YWT0dwylyrsIfR3hwfiFvZ2mefvjbTiCwxGK5yLumupvxoOrsmqFzY9tOMSCLKxmpQtqkyE5YP6qDzgLYRvYJEcpVkO6VHaQ3uhbyAqICbaF1/1iP5LgyTqe7N4JJa3FqOHbnfJVwfpNQZKyNKCqcLhMpFhGpJj/qzZ4GxIy7+13JxcYw/iRKgNupUze3ao+3XS0ACKaW6ijogflcPql53L0aLjeH8hi3zb0J73BH5hAKCUUmIpLI29Nlwg+QKJQQ9VcF4AU+iMBfOWda5k4nvaCDUF00W2oP50FQKBbPp5ltUY8spe8TKa7PrePlgGa3nmxZCfjgysY7+wYIvqJhlZ2fdb/5H6QIpwRwzwmx0e70DplUt+CMYlp55rEXpSywVGCZBQloBZwk4o3xdGhJlTeUuMh1GI7hZis=","ak.pv":"2900","ak.dpoabenc":"","ak.tf":i};if(""!==t)_["ak.ruds"]=t;var o={i:!1,av:function(e){var t="http.initiator";if(e&&(!e[t]||"spa_hard"===e[t]))_["ak.feo"]=void 0!==a.aFeoApplied?1:0,BOOMR.addVar(_)},rv:function(){var a=["ak.bpcip","ak.cport","ak.cr","ak.csrc","ak.gh","ak.ipv","ak.m","ak.n","ak.ol","ak.proto","ak.quicv","ak.tlsv","ak.0rtt","ak.r","ak.acc","ak.t","ak.tf"];BOOMR.removeVar(a)}};BOOMR.plugins.AK={akVars:_,akDNSPreFetchDomain:n,init:function(){if(!o.i){var a=BOOMR.subscribe;a("before_beacon",o.av,null,null),a("onbeacon",o.rv,null,null),o.i=!0}return this},is_complete:function(){return!0}}}}()}(window);</script></head>
</head>

<body>
	<!-- Google Tag Manager (noscript) -->
	<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NVX3V74"
	height="0" width="0" style="display:none;visibility:hidden"></iframe>
</noscript>
	<!-- End Google Tag Manager (noscript) -->

	<!-- s : 스킵 -->
	<div id="skip_content">
	<a href="#container" class="">본문 바로가기</a>
		</div>
	<!-- e : 스킵 -->

	<div id="wrap">
	<!-- s : 머리글 영역 -->
	<!--  s AdBrix Web SDK -->
<script>
	!function(e, r) {
	    if (void 0 !== e && !e.adbrix) {
	        var o = {
	                queue: []
	            },
	            t = navigator.userAgent.toLowerCase(),
	            c = r.createElement("script"),
	            a = "Netscape" === navigator.appName && -1 !== navigator.userAgent.search("Trident") || -1 !== t.indexOf("msie") ? "abx-web-sdk.ie.min.js" : "abx-web-sdk.min.js";
	        c.type = "text/javascript", c.async = !0, c.src = "//static.adbrix.io/web-sdk/latest/" + a, c.onLoad = function() {
	            e.adbrix.runQueuedFunctions ? e.adbrix.runQueuedFunctions() : console.log("[adbrix] Error: could not load SDK")
	        };
	        var i = r.getElementsByTagName("script")[0];
	        i.parentNode.insertBefore(c, i);
	        ["init", "onInitialized", "login", "getUserId", "logout", "userProperty.get", "userProperty.getAll", "userProperty.addOrUpdate", "userProperty.remove", "userProperty.removes", "common.signUp", "common.invite", "common.useCredit", "common.purchase", "event.send", "debug.traceListener", "commerceAttr.categories", "commerceAttr.product", "commerce.viewHome", "commerce.categoryView", "commerce.productView", "commerce.addToCart", "commerce.addToWishList", "commerce.reviewOrder", "commerce.refund", "commerce.search", "commerce.share", "commerce.listView", "commerce.cartView", "commerce.paymentInfoAdded", "game.tutorialComplete", "game.characterCreated", "game.stageCleared", "game.levelAchieved"].forEach(function(e) {
	            var r = e.split("."),
	                t = r.pop();
	            r.reduce(function(e, r) {
	                return e[r] = e[r] || {}
	            }, o)[t] = function() {
	                o.queue.push([e, arguments])
	            }
	        }), e.adbrix = o
	    }
	}(window, document);
</script>
<!--  e AdBrix Web SDK -->

<script>
	var __ST_GB_CD = "b2c";
	$(document).ready(function(){
		// AdBrix Web SDK init
		window.adbrix.init({
		    appkey: '0nCtQ3s60km0zcXUGeZZBQ',
		    webSecretkey: 'IU54Ulr2xUawNnSUwBHrkw'
		});
		
		ts_hostChk('prd');
		getSessionInfo();
		getCartCnt();
		//getCartCntHidden();
		
		getWritableMyComment();
		
	});
	var apiFlag = 0;
	var clipboard = new ClipboardJS('#lUrl');
	clipboard.on('success', function(e) {
		let alertData = {
				 title: ""
				,content : "링크가 복사되었습니다."
				,callback : ""
				,btnText : "확인"
			};
			commonAlert(alertData);
			openLayer('commonAlert');
	});
	clipboard.on('error', function(e) {
		let alertData = {
				 title: ""
				,content : "다시 시도하여 주십시오."
				,callback : ""
				,btnText : "확인"
			};
			commonAlert(alertData);
			openLayer('commonAlert');
	});
	
	function getCartList() {
				var options = {
					url: '/GMQDisplay-master/xhr/gnbCartList.jsp',
					dataType: "html",
					success: function (data) {
						$(".gnb-cartList").html(data);
					}
				}
				$.ajax(options);
			}

			// 뒤로가기 시 이벤트
			$(window).bind("pageshow", function (event) {
				if (event.originalEvent.persisted || window.performance && window.performance.navigation.type == 2) {
					getCartCnt();
					//getCartCntHidden();
				}
			});
			function getSessionInfo() {
				$.ajax({
					url: "/GMQDisplay-master/xhr/loginCheck.jsp",
					type: "POST",
					success: function (result) {
						if (result == true) {
							$("input[name=useLogin]").val("Y");
							$(".link-login i").addClass("ico-people-logged");
							$(".loginBefore").remove();
							$(".loginAfter").remove();

							// session.mbrNm 세팅
							//$(".sessionInfoMbrNm").text(result.mbrNm);

							setLoginGnbMenu();

							var htmlMo = "<a href=\"https://account.GMQDisplay.com/\" target=\"_blank\" title=\"새창열림\">안녕하세요!</a>";
							var htmlPc = "안녕하세요!";
							$(".loginAfter .welcomeMsg").html(htmlMo);
							$(".loginAfter .greet-txt").html(htmlPc);
						} else {
							$("input[name=useLogin]").val("N");
							$(".link-login i").addClass("ico-people");
							$(".loginAfter").remove();
							$(".loginBefore").remove();

							setLogoutGnbMenu();
						}
					},
					error: function () {
						console.log("서버 오류가 발생했습니다.");
					}
				});
			}

			function appLogin(token, userId) {
				$.ajax({
					url: "/xhr/member/loginSucces"
					, type: "POST"
					, data: {
						token: token,
						userId: userId
					}
					, success: function (result) {
						if (result.result === 'Y') {
							getSessionInfo();
						}
						if (result.joinYn === 'Y') {
							var param = {
								galcamsMbr: result.gcsMbrYn,
								loginSucces: result.result,
								attrModel: {
									user_id: userId,
									under14: result.under14
								}
							};
							window.secapp.loginSucces(JSON.stringify(param));
							var eventParam = {
								eventName: "App_signUp"
								, attrModel: {
									service_id: 'SDC'
								}
							};
							window.secapp.customEvent(JSON.stringify(eventParam));
						} else {
							var param = {
								galcamsMbr: result.gcsMbrYn,
								loginSucces: result.result
							};
							window.secapp.loginSucces(JSON.stringify(param));
						}
						if (result.result === 'Y' && result.adbrixYn == 'Y') {
							var eventParam = {
								eventName: "App_login"
								, attrModel: {
									service_id: 'SDC'
								}
							};
							window.secapp.customEvent(JSON.stringify(eventParam));
						}
					}
				});
			}

			// 로그아웃 상태 GNB 메뉴 세팅
			function setLogoutGnbMenu() {
				if (device.agent.indexOf("mobi") >= 0 || device.isGnb === false) {
					// mobile web
					var htmlMoLoginBefore = '<ul class="mob-onlyMenu loginBefore">';
					htmlMoLoginBefore += '<li class="mob-onlyMenu-login">';
					htmlMoLoginBefore += '<a href="" onclick="NetFunnel_Action({action_id:\'b2c_gnb_login\'},\'/GMQDisplay-master/login_info/login.html\');return false;\" data-omni=\'login\'>로그인</a></li>';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '<li class="mob-onlyMenu-join">';
					htmlMoLoginBefore += '<a href="" onclick="NetFunnel_Action({action_id:\'b2c_gnb_login\'},\'/GMQDisplay-master/login_info/Sign.html\');return false;\" data-omni=\"sign up\">회원가입</a></li>';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '<li class="mob-onlyMenu-stoConsult">';
					htmlMoLoginBefore += '<a href="/GMQDisplay-master/faq/FAQ.html" data-omni=\'store reservation\'>고객센터</a></li>';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '<li class="mob-onlyMenu-benefit">';
					htmlMoLoginBefore += '<a href="/GMQDisplay-master/event.html" data-omni=\'event\'>회원 혜택</a></li>';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '</ul>';

					$("#useLogin").after(htmlMoLoginBefore);
				} else {
					//pc
					var htmlLoginBefore = '<div class="gnbSubRound loginBefore"><div>';
					htmlLoginBefore += '<dl>';
					htmlLoginBefore += '<dt><a href="" onclick="NetFunnel_Action({action_id:\'b2c_gnb_login\'},\'/GMQDisplay-master/login_info/login.html\');return false;\" data-omni=\'login\'>로그인</a></dt>';
					htmlLoginBefore += '';
					htmlLoginBefore += '<dt><a href="" onclick="NetFunnel_Action({action_id:\'b2c_gnb_login\'},\'/GMQDisplay-master/login_info/Sign.html\');return false;\" data-omni=\'sign up\'>회원가입</a></dt>';
					htmlLoginBefore += '';
					htmlLoginBefore += '';
					htmlLoginBefore += '<dt><a href="/GMQDisplay-master/faq/FAQ.html" data-omni=\'store reservation\'>고객 센터</a></dt>';
					htmlLoginBefore += '';
					htmlLoginBefore += '';
					htmlLoginBefore += '<dt><a href="/GMQDisplay-master/event.html" data-omni=\'event\'>회원 혜택</a></dt>';
					htmlLoginBefore += '';
					htmlLoginBefore += '</dl>';
					htmlLoginBefore += '</div></div>';

					$("#login-menu").html(htmlLoginBefore);
				}
			}

			// 로그인 상태 GNB 메뉴 세팅
			function setLoginGnbMenu() {
				if (device.agent.indexOf("mobi") >= 0 || device.isGnb === false) {
					//mobile web
					var htmlMoLoginAfter = '<ul class="mob-onlyMenu loginAfter">';
					htmlMoLoginAfter += '<li class="welcomeMsg">';
					htmlMoLoginAfter += '<a href="https://account.samsung.com/" target="_blank" title="새창열림">안녕하세요!</a></li>';
					htmlMoLoginAfter += '<li class="mob-onlyMenu-myinfo">';
					htmlMoLoginAfter += '<a href="/GMQDisplay-master/mypage/myinfo.jsp" data-omni=\'my account\'>나의 정보</a></li>';
					htmlMoLoginAfter += '<li class="mob-onlyMenu-myDeviceList">';
					htmlMoLoginAfter += '<a href="/GMQDisplay-master/mypage/mywishlist.jsp" data-omni=\'my divice\'>나의 찜 목록</a></li>';
					htmlMoLoginAfter += '<li class="mob-onlyMenu-prdctRvw">';
					//htmlMoLoginAfter += '<a href="/mypage/review/indexMyReview/" data-omni=\'my comment\'>상품평 작성 :<span class="cmt-num writableCnt"></span>건</a></li>';
					htmlMoLoginAfter += '<li class="mob-onlyMenu-tracking">';
					htmlMoLoginAfter += '<a href="/GMQDisplay-master/mypage/myinfo.jsp" data-omni=\'orders\'>주문 조회</a></li>';
					htmlMoLoginAfter += '<li class="mob-onlyMenu-cpnZone">';
					htmlMoLoginAfter += '<a href="/GMQDisplay-master/faq/FAQ.html" data-omni=\'FAQ\'>고객 센터</a></li>';
					htmlMoLoginAfter += '';
					htmlMoLoginAfter += '<li class="mob-onlyMenu-benefit">';
					htmlMoLoginAfter += '<a href="/GMQDisplay-master/event.html" data-omni=\'event\'>회원 혜택</a></li>';
					htmlMoLoginAfter += '';
					htmlMoLoginAfter += '<li class="mob-onlyMenu-logout">';
					htmlMoLoginAfter += '<a href="/GMQDisplay-master/xhr/logout.jsp;" data-omni=\'logout\'>로그아웃</a></li>';
					htmlMoLoginAfter += '</ul>';

					$("#useLogin").after(htmlMoLoginAfter);
				} else {
					//pc
					var htmlLoginAfter = '<div class="gnbSubRound loginAfter"><div>';
					htmlLoginAfter += '<dl>';
					htmlLoginAfter += '<dt><a href="javascript:void(0)"><span class="greet-txt">안녕하세요!</span></a></dt>';
					htmlLoginAfter += '<dd><a href="/GMQDisplay-master/mypage/myinfo.jsp" data-omni=\'my account\'>나의 정보</a></dd>';
					htmlLoginAfter += '<dd><a href="/GMQDisplay-master/mypage/mywishlist.jsp" data-omni=\'my divice\'>나의 찜 목록</a></dd>';
					//htmlLoginAfter += '<dd><a href="/mypage/review/indexMyReview/" data-omni=\'my comment\'>상품평 작성 : <span class="cmt-num writableCnt"></span> 건</a></dd>';
					htmlLoginAfter += '<dd><a href="/GMQDisplay-master/mypage/myinfo.jsp" data-omni=\'orders\'>주문 조회</a></dd>';
					htmlLoginAfter += '<dd><a href="/GMQDisplay-master/faq/FAQ.html" data-omni=\'FAQ\'>고객 센터</a></dd>';
					htmlLoginAfter += '';
					htmlLoginAfter += '<dd><a href="/GMQDisplay-master/event.html" data-omni=\'event\'>회원 혜택</a></dd>';
					htmlLoginAfter += '';
					htmlLoginAfter += '<dd><a href="/GMQDisplay-master/xhr/logout.jsp;" data-omni=\'logout\'>로그아웃</a></dd>';
					htmlLoginAfter += '</dl>';
					htmlLoginAfter += '</div></div>';

					$("#login-menu").html(htmlLoginAfter);
				}
			}


			function getCartCnt() {
				$.ajax({
					url: "/xhr/order/gnbCartCount"
					, type: "POST"
					, success: function (result) {
						if (result > 0) {
							$('.cart-inner-count').show();
							$('.cart-inner-count').text(result);
						}
						else {
							$('.cart-inner-count').hide();
						}
					}
				});
			}

			function getApiMemid(sessionInfo) {
				var jsonResult = JSON.stringify(sessionInfo);
				$.ajax({
					url: "/xhr/member/getMemberShipNo"
					, type: "POST"
					, data: { mbrNo: sessionInfo.mbrNo, loginId: sessionInfo.loginId }
					, success: function (result) {
						apiFlag = result.updateCnt;
					}
				});
			}

			function getWritableMyComment() {
				$.ajax({
					url: "/GMQDisplay-master/xhr/checkReview.jsp",
					type: "POST",
					success: function (result) {
						$('.writableCnt').text(result);
					},
					error: function (jqXHR, textStatus, errorThrown) {
						console.log(textStatus, errorThrown);
					}
				});
			}

			/* function getWritableMyComment() {
				$.ajax({
					url : "/xhr/review/loadWritableMyCommentListCount"
					, type : "POST"
					, dataType : "json"
					, contentType : "application/json; charset=utf-8"
					, success : function(result) {
						$('.writableCnt').text(result.cmntCnt);
					}
					, error : function(request, status, error) {
						
						// TODO : exception message 처리
						//alert("나의 작성 가능 상품평 수량 조회 Code : " + request.status);
						// alert("Code : "+ request.status + "\n" + "message : " + request.responseText);
						// 공백
						// alert("Error : " + error);
					}
				});
			} */
		</script>
		<input type="hidden" id="loginYn" value="" />
		<header id="header">
			<div class="s-inner">
				<a href="/GMQDisplay-master/index.html" class="logo">
					<img type="image/svg+xml" src="/GMQDisplay-master/static/images/common/logo_gmqd_black.png" alt="GMQ Display" style="width:130px; height:20px"/>
				</a>
				<div class="new-gnb">
					<button type="button" class="gnb-back" data-omni="gnb:back">이전 메뉴 보기</button>
					<button type="button" class="gnb-close" data-omni="gnb:close">GNB 닫기</button>
					<nav class="gnb">
						<ul class="gnb1depth">
							<li class="">
								<a href="#" aria-controls="700033426-menu" aria-selected="false" data-omni="Product">게이밍
									모니터</a>
								<div class="gnb2depth">
									<div class="inner">
										<ul class="list">
											<li class="">
												<a href="#" aria-selected="false" data-omni="Product:new">신제품<span
														class="flag-new">NEW</span></a>
												<div class="gnb3depth new-prd-list">
													<div class="prd-list-wrap">
														<div class="main-prd">
															<a href="/GMQDisplay-master/product/G32C4X.jsp" class="rec-link" aria-selected="false"
																data-omni="Product:new:GMQD 게이밍 모니터">
																<span class="pic-wrap" style="background: url('/GMQDisplay-master/static/images/explain/G32C4X_1.png') no-repeat top center / cover; background-color: #f6f6f6;">
																	<span class="pc-pic lozad"
																		data-background-image="/GMQDisplay-master/static/images/product/G32C4X_1.png"></span>
																	<span class="mo-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/ba1119ba-5dc4-4b2f-94d5-494e3a51bf95.jpg?$ORIGIN_JPG$"></span>
																</span>
																<span class="txt-grp">
																	<span class="tit theme-blk" style="color: white;">MSI G32C4X 게이밍 200 HDR <br> 아이세이버 무결점 </span>
																	<span class="desc theme-blk" style="color: #ddd;">1500R 커브드 패널 <br>프레임리스 디자인</span>
																</span>
															</a>
														</div>
														<div class="sub-prd num-1">
															<a href="/GMQDisplay-master/product/27LGD4IPS.jsp"
																class="rec-link" aria-selected="false"
																data-omni="Product:new:GMQD Book3 Series">
																<span class="pic-wrap" style="background: url('/GMQDisplay-master/static/images/product/27LGD4IPS_1.png') no-repeat top center / contain; background-color: #f6f6f6;">
																	<span class="pc-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/0abb6285-7482-4831-a1d7-36ab892c9c0a.png?$ORIGIN_JPG$"></span>
																	<span class="mo-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/0d774285-1b04-46d3-af5f-6256d7804a2d.png?$ORIGIN_JPG$"></span>
																</span>
																<span class="txt-grp">
																	<span class="tit theme-blk"">
																		<span>크로스오버 QHD DCI-P3 4면 베젤리스 <br>무결점</span>
																	</span>
																	<span class="desc theme-blk">눈 보호 아이케어 기술<br>게임최적 프리싱크 어댑티브</span>
																</span>
															</a>
														</div>
														<div class="sub-prd num-2">
															<a href="/GMQDisplay-master/product/G271.jsp"
																class="rec-link" aria-selected="false"
																data-omni="Product:new:Neo QLED">
																<span class="pic-wrap" style="background: url('/GMQDisplay-master/static/images/product/G271_1.png') no-repeat top center / contain; background-color: #f6f6f6;">
																	<span class="pc-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/48caf28f-2aa0-4d2d-a073-f350e85db6c6.png?$ORIGIN_JPG$"></span>
																	<span class="mo-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/960c690e-f83f-484a-a1ec-28ac9a5f9c94.png?$ORIGIN_JPG$"></span>
																</span>
																<span class="txt-grp">
																	<span class="tit theme-blk">
																		<span>MSI 옵틱스 G271 게이밍 144 아이세이버 <br>무결점</span>
																	</span>
																	<span class="desc theme-blk">144Hz 주사율<br>프레임리스 디자인</span>
																</span>
															</a>
														</div>
														<div class="sub-prd num-3">
															<a href="/GMQDisplay-master/product/2460G.jsp"
																class="rec-link" aria-selected="false"
																data-omni="Product:new:bespoke refrigerator">
																<span class="pic-wrap" style="background: url('/GMQDisplay-master/static/images/product/2460G_1.png') no-repeat top center / contain; background-color: #f6f6f6;">
																	<span class="pc-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/b32c2088-6a51-4046-bf87-94d159152d91.png?$ORIGIN_JPG$"></span>
																	<span class="mo-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/03368012-947e-4989-aabd-6407af7f6d5a.png?$ORIGIN_JPG$"></span>
																</span>
																<span class="txt-grp">
																	<span class="tit theme-blk">
																		<span>한성컴퓨터 ULTRON PLUS <br>리얼 144 게이밍</span>
																	</span>
																	<span class="desc theme-blk">10.1mm 얇은 두께<br>3면이 탁 트인 제로베젤</span>
																</span>
															</a>
														</div>
														<div class="sub-prd num-4">
															<a href="/GMQDisplay-master/product/27UP850N.jsp"
																class="rec-link" aria-selected="false"
																data-omni="Product:new:2023 NEW bespoke-jet-2023">
																<span class="pic-wrap" style="background: url('/GMQDisplay-master/static/images/product/27UP850N_1.png') no-repeat top center / contain; background-color: #f6f6f6;">
																	<span class="pc-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/39a70a6b-2c4d-40ae-86e9-8ab994400232.png?$ORIGIN_JPG$"></span>
																	<span class="mo-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/35ee9a07-af0b-45c4-9ce5-1cea793ad2e4.png?$ORIGIN_JPG$"></span>
																</span>
																<span class="txt-grp">
																	<span class="tit theme-blk">
																		<span>LG전자 <br>27UP850N</span>
																	</span>
																	<span class="desc theme-blk">선명한 DisplayHDR™ 400<br>캘리브레이션 기능</span>
																</span>
															</a>
														</div>
														<div class="sub-prd num-5">
															<a href="/GMQDisplay-master/product/28MQ780.jsp"
																class="rec-link" aria-selected="false"
																data-omni="Product:new:bespoke airsolution">
																<span class="pic-wrap" style="background: url('/GMQDisplay-master/static/images/product/28MQ780_1.png') no-repeat top center / contain; background-color: #f6f6f6;">
																	<span class="pc-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/a3a1d985-75e7-4e3e-9528-ab42be51b618.png?$ORIGIN_JPG$"></span>
																	<span class="mo-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/3bce182f-7f0d-42c2-bb54-65326fb480be.png?$ORIGIN_JPG$"></span>
																</span>
																<span class="txt-grp">
																	<span class="tit theme-blk">
																		<span>LG전자 울트라와이드 듀얼업 <br>28MQ780</span>
																	</span>
																	<span class="desc theme-blk">2배의 화면과 2배의 조작성<br>멀티태스킹에 최적</span>
																</span>
															</a>
														</div>
														<div class="sub-prd num-6">
															<a href="/GMQDisplay-master/product/27G2SP.jsp"
																class="rec-link" aria-selected="false"
																data-omni="Product:new:samsungcareplus">
																<span class="pic-wrap" style="background: url('/GMQDisplay-master/static/images/product/27G2SP_1.png') no-repeat top center / contain; background-color: #f6f6f6;">
																	<span class="pc-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/b1e3cc88-29df-4d81-87ca-a0622a43716c.png?$ORIGIN_JPG$"></span>
																	<span class="mo-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/66a8cd06-bc37-4827-aa3f-380aaad1e75e.png?$ORIGIN_JPG$"></span>
																</span>
																<span class="txt-grp">
																	<span class="tit theme-blk">
																		<span>알파스캔 AOC  게이밍 165 프리싱크 무결점 </span>
																	</span>
																	<span class="desc theme-blk">Adaptive Sync<br>초슬림 베젤 화면</span>
																</span>
															</a>
														</div>
													</div>
													<!-- 2dep banner -->
													<!-- //2dep banner -->
												</div>
											</li>
											<li class="">
												<a href="#" aria-selected="false" data-omni="Product:mobile">게임용 모니터</a>
												<div class="gnb3depth ">
													<ul>
														<li class="">
															<a href="#" aria-selected="false"
																data-omni="Product:mobile:smartphones">FPS/RTS</a>
															<div class="gnb4depth">
																<ul>
																	<li class="">
																		<a href="/GMQDisplay-master/monitors.html?sort=popularity&genre=fps/rts"
																			target="_blank">인기 상품</a>
																	</li>
																	<li class="">
																		<a href="/GMQDisplay-master/monitors.html?genre=fps/rts"
																			target="_blank" aria-selected="false">전체
																			상품</a>
																	</li>
																	<li class="">
																		<a href="/GMQDisplay-master/monitors.html?recom=recom&genre=fps/rts"
																			target="_blank" aria-selected="false">추천
																			상품</a>
																	</li>
																</ul>
															</div>
														</li>
														<li class="">
															<a href="#" aria-selected="false"
																data-omni="Product:mobile:GMQD Book">RPG/Sports/fights</a>
															<div class="gnb4depth">
																<ul>
																	<li class="">
																		<a href="/GMQDisplay-master/monitors.html?sort=popularity&genre=rpg/sports/fighting"
																			aria-selected="false">인기 상품</a>
																	</li>
																	<li class="">
																		<a href="/GMQDisplay-master/monitors.html?genre=rpg/sports/fighting"
																			target="_blank" aria-selected="false">전체
																			상품</a>
																	</li>
																	<li class="">
																		<a href="/GMQDisplay-master/monitors.html?recom=recom&genre=rpg/sports/fighting"
																			aria-selected="false">추천 상품</a>
																	</li>
															</div>
														</li>
														<li class="">
															<a href="#" aria-selected="false"
																data-omni="Product:mobile:buds">
															</a>
														</li>
													</ul>
													<div class="gnbBanner type2">
														<a href="/GMQDisplay-master/gaming-monitor.html">
															<div class="img" style="position: relative;">
																<img src="/GMQDisplay-master/static/images/explain/IP2742_1.png" style="position: absolute; bottom: -50px;" alt="쓰리윈즈 인터픽셀 게이밍 IPS 165 피벗 무결점" class="lozad">
															</div>
															<p class="txt">게임용 모니터의 모든 것</p>
														</a>
														<div class="link-box flex--center">
															<a href="/GMQDisplay-master/gaming-monitor.html" 
																data-omni="feature image:Product:Apply:learn more"
																class="link">
																<span>더 많은 상품들 보러가기</span>
															</a>
														</div>
													</div>
												</div>
											</li>

											<li class="">
												<a href="#" aria-selected="false" data-omni="Product:mobile">전문가용
													모니터</a>
												<div class="gnb3depth ">
													<ul>
														<li class="">
															<a href="/GMQDisplay-master/monitors.html?genre=graphic" target="_blank"
																aria-selected="false"
																data-omni="Product:mobile:Everything about the GMQD">그래픽
																작업용 게이밍 모니터</a>
														</li>
														<li class="">
															<a href="/GMQDisplay-master/monitors.html?genre=work" target="_blank"
																aria-selected="false"
																data-omni="Product:mobile:Everything about the GMQD">사운드
																작업용 게이밍 모니터</a>
														</li>
														<li class="">
															<a href="/GMQDisplay-master/monitors.html?genre=videogame" target="_blank"
																aria-selected="false"
																data-omni="Product:mobile:Everything about the GMQD">비디오/콘솔용
																게이밍 모니터</a>
														</li>
													</ul>
													<div class="gnbBanner type2">
														<a href="/GMQDisplay-master/expert-monitor.html">
															<div class="img">
																<img src="https://images.samsung.com/kdp/cms_contents/131599/d0f0bd10-1dab-40a0-ad9a-b4475dfc7827.jpg?$ORIGIN_JPG$"
																	alt="전문가용 모니터의 모든 것" class="lozad">
															</div>
															<p class="txt">전문가용 모니터의 모든 것</p>
														</a>
														<div class="link-box flex--center">
															<a href="/GMQDisplay-master/expert-monitor.html" class="link">
																<span>더 많은 상품들 보러가기</span>
															</a>
														</div>
													</div>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</li>
							<li class="">
								<a href="/GMQDisplay-master/recommend/index_game.html" aria-selected="false">게임용 추천케어</a>
							<div class="gnb2depth">
									<div class="inner">
										<ul class="list">
										</ul>
									</div>
								</div>
							</li>
							<li class="">
								<a href="/GMQDisplay-master/recommend/index_game1.html" aria-selected="false">전문가용 추천케어</a>
								<div class="gnb2depth">
									<div class="inner">
										<ul class="list">
										</ul>
									</div>
								</div>
							</li>
							<li class="">
								<a href="/GMQDisplay-master/event.html" aria-controls="700027213-menu" aria-selected="false">이벤트</a>
							</li>
							<li class="">
								<a href="/GMQDisplay-master/faq/FAQ.html" aria-controls="700000115-menu"
									aria-selected="false" data-omni="support">고객서비스</a>
							</li>
							<!--   모바일용 메뉴 추가 -->
							<input type="hidden" name="useLogin" id="useLogin" value="" />
							<!-- 모바일용 메뉴 추가 -->
					</nav>
				</div>

				<div class="header-right gnbMenu">
					<ul>
						<li>
							<a href="javascript:void(0);" onclick="getCartList()" aria-controls="cart-menu"
								aria-selected="false" class="link-cart" data-omni="cart" role="button">
								<i class="icon ico-large ico-cart">장바구니</i>
								<span class="cart-inner-count"></span>
							</a>
							<div class="s-gnbSubWrap textSubWrap cartMenu" id="cart-menu">
								<div class="gnbSubRound">
									<div>
										<ul class="gnb-cartList">
										</ul>
										<div class="btn-box">
											<button type="button" class="btn btn-d btn-type2"
												onclick="window.location.href = '/GMQDisplay-master/mypage/cart.jsp';"
												data-omni="cart">장바구니 보기</button>
										</div>
									</div>
								</div>
							</div>
						</li>
						<li>
							<input type="hidden" name="useLogin" id="useLogin" value="" />
							<a href="javascript:;" aria-controls="login-menu" aria-selected="false" class="link-login"
								data-omni="login">
								<i class="icon ico-large ico-people">로그인</i>
							</a>
							<!-- 로그인 메뉴 -->
							<div class="s-gnbSubWrap textSubWrap loginMenu" id="login-menu"></div>
						</li>
						<li>
							<a href="javascript:void(0);" class="link-m-nav" data-omni="gnb:open" role="button">
								<i class="icon ico-large ico-nav">전체메뉴</i>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</header>
		<!-- 헤더의 끝 -->
	
	<div id="layerNode_sug"></div>
	
	<div id="layerNode" style="display: none"></div>
	<!-- 간략설문조사 -->
	<div id="layerSurvey" style="display: none"></div>
	<!-- 화면 전체 레이어용 -->
	<div id="layerBig" style="display:none;"></div>
	<div class="wrap" id="wrap">
		<div class="wrap2 after_clear">
			
			<div class="myview_background" onclick="toggleHistoryView('hide')"></div>
			<div class="myview_layer" style="display: none;">
				<div class="myview_header">
					<h3 class="title">최근 본 상품</h3>
					<button type="button" class="btn_close" onclick="toggleHistoryView('hide')">
						<i class="icon_close"></i><span>닫기</span>
					</button>
				</div>
				<!-- 상품 list -->
				<div id="myRecentProduct" style="display: flex;flex: 1;max-height: calc(100% - 97px);"></div>
			</div>
			<!-- // 최근본상품 -->
		<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//mustit.co.kr/lib/js/mxn/mxn.js?v=1680035330"></script>
<script type="text/javascript">
	$(document).on("keyup", "input:text[numberOnly]", function() {$(this).val( $(this).val().replace(/[^0-9]/gi,"") );});
</script>


<style>
	.no-user-guide { border:1px solid #0e0e0e;}
	.cert-btn {color: #d01f3c;border:1px solid #d01f3c;}
	.cert-btn-pause {color: #141414;border:1px solid #141414;}
	.cert-btn-complete {color: #a0a0a0;border:1px solid #e1e1e1;}
</style>


<!-- START :: RTB House -->
<!-- END :: RTB House -->

<div class="content new_order" id="ordern" style="width: 90%;">
	<div class="order_title mi-after-clear">
		<h2 class="mi-fw-bold fs30 mi-font-black">주문서 작성</h2>
	</div>
	
		
	<form id="frmOrder" action="/GMQDisplay-master/xhr/insertOrder.jsp" method="POST" id="order">

	<div class="order_table">
		<%
		String db_url = "jdbc:mysql://localhost:3306/gpqd";
		String db_id = "root";
		String db_password = "1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(db_url, db_id, db_password);

		try {
			String sql = "SELECT * FROM user WHERE userID=?"; 
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);

			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				String name = rs.getString("userName");
		%>
		<div class="mini_title">주문회원정보</div>
		
		<table class="mi-table mi-table-left mi-table-secondary">
			<colgroup>
				<col width="160" />
				<col width="*" />
			</colgroup>
			<tr>
				<th>이름 <span class="mi-font-red">*</span></th>
				<td>
					<input type="text" name="name" value="<%=name%>" class="input-join" maxlength="50"/>
				</td>
			</tr>
			<tr>
				<th>이메일 <span class="mi-font-red">*</span></th>
				<td>
					<input type="text"  name="email" value="<%=id%>" maxlength="50" class="input-join"/>
					<input type="hidden" name="phone" value="" />
					<input type="hidden" name="hphone" value="" />
				</td>
			</tr>
			<tr>
								<th>휴대폰번호 <span class="mi-font-red">*</span></th>
				<td>
					<select name="per_cell" id="per_cell" class="input-join select-mode" style="width:100px;" onfocusout="insertHphone();">
						<option value="">선택</option>
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>
					<script> $("#per_cell").val('010'); </script>
					<span class="at">-</span>
					<input type="text" name="per_cell2" id="per_cell2" value="" maxlength="4" class="input-join" style="width:100px;" onfocusout="insertHphone();" />
					<span class="at">-</span>
					<input type="text" name="per_cell3" id="per_cell3" value="" maxlength="4" class="input-join" style="width:100px;" onfocusout="insertHphone();" />
									</td>
			</tr>
		</table>
		<%
			}
		} catch (Exception e) {
			out.print(e);
		}
		%>
		<div class="mi-font-red mi-font-basic margin_t_5">* 주문과 관련된 안내를 발송하는 정보이니, 정확하게 입력해주시기 바랍니다.</div>
	</div>
	
	<div class="order_table">
		<div class="mini_title">배송정보</div>
		<!--비회원 구매시 -->
				<table class="mi-table mi-table-left mi-table-secondary">
			<colgroup>
				<col width="160" />
				<col width="*" />
			</colgroup>
			<!--회원 구매시 -->
						<tr>
				<th>배송지 선택 <span class="mi-font-red">*</span></th>
				<td>
					<input type="hidden" id="memberDeliveryType" name="memberDeliveryType" value="default"/>
					<input type="hidden" id="memberDeliveryNo" name="memberDeliveryNo"  value="3856398"/>
					<input type="hidden" id="backupMemberDeliveryNo" name="backupMemberDeliveryNo"  value="3856398"/>

					<input type="hidden" id="m_name" name ="m_name" value=""/>
					<input type="hidden" id="m_phone" name="m_phone" value="--"/>
					<input type="hidden" id="m_cell" name="m_cell" value=""/>
			

					<input type="hidden" id="m_zip" value="" />
					<input type="hidden" id="m_addr1" value="" />
					<input type="hidden" id="m_addr2" value="" />
					
					<input type="radio" id="deliveryType_default" name="deliveryType" value="default" class="new_radio" onclick="ShipToBillPerson(this.form, this);" checked />
					<label for="deliveryType_default">기본 배송지</label>
					<input type="radio" id="deliveryType_new" name="deliveryType" value="new" class="new_radio" style="margin-left:20px;" onclick="ShipToBillPerson(this.form, this);" />
					<label for="deliveryType_new">새 배송지</label>

					<!--<input type="button" value="배송지 목록" id="btnDeliveryList" class="btn_nbwhite btn_addr_list" onclick="pickDeliveryArea('112585886');" />-->
				</td>
			</tr>
			<tr>
				<th>이름 <span class="mi-font-red">*</span></th>
				<td>
					<input type="text" id="r_name" value=""  name="r_name" class="input-join" />
				</td>
			</tr>
			<tr>
				<th>휴대폰 <span class="mi-font-red">*</span></th>
				<td>
					<input type="hidden" name="r_hphone" value="010-9293-0433" />
					<select id="r_hphone1" name="r_hphone1" onfocusout="insertPhone();" class="input-join select-mode" style="width:100px;">
						<option value="" >선택</option>
						<option value="010" checked >010</option>
						<option value="011"  >011</option>
						<option value="016"  >016</option>
						<option value="017" >017</option>
						<option value="018" >018</option>
						<option value="019" >019</option>
						
					</select>
					<span class="at">-</span>
					<input type="text" id="r_hphone2" name="r_hphone2" maxlength="4"  value=""  onfocusout="insertPhone()" class="input-join" style="width:100px;" />
					<span class="at">-</span>
					<input type="text" id="r_hphone3" name="r_hphone3" maxlength="4"  value="" onfocusout="insertPhone()" class="input-join" style="width:100px;" />
				</td>
			</tr>
<script>
function selectDeliveryBasic() {
	$.ajax({
		url: "/GMQDisplay-master/xhr/selectDeliveryBasic.jsp",
		type: "POST",
		data: { address: "basic" },
		success: function(data) {
			var userName = $(data).filter('#userName').text();
			var zip = $(data).filter('#zip').text();
			var addr1 = $(data).filter('#addr1').text();
			var addr2 = $(data).filter('#addr2').text();
			const phoneNumber = $(data).filter('#phone').text();
			const slicedPhoneNumber = [
				phoneNumber.substr(0, 3),
				phoneNumber.substr(3, 4),
				phoneNumber.substr(7, 4),
			];

			$("#r_name").val(userName);
			$("#r_hphone1").val(slicedPhoneNumber[0]);
			$("#r_hphone2").val(slicedPhoneNumber[1]);
			$("#r_hphone3").val(slicedPhoneNumber[2]);
			$("#zip").val(zip);
			$("#addr1").val(addr1);
			$("#addr2").val(addr2);
		},
		error: function(jqXHR, textStatus, errorThrown) {
			console.log(errorThrown);
		}
	});
}

if($("#deliveryType_default").prop("checked")) {
	selectDeliveryBasic();
}

$("#deliveryType_default").on("change", function() {
	if (this.checked) {
		selectDeliveryBasic();
	}
});
</script>
			<tr>
				<th>주소 <span class="mi-font-red">*</span></th>
				<td>
					<input type="text" id="zip" name="zip" value="" class="input-join" style="width:120px;" readonly="readonly" onclick="execDaumPostcode2();" />
					<input type="button" value="우편번호 찾기" class="btn-join btn-join-modify fs12 mi-inline-block border_none" style="width:100px;padding:5px 8px;" onclick="execDaumPostcode2();" />
					<span class="mi-font-red">* 도로명 주소가 기본 주소로 입력됩니다.</span>
					<div id="layer_zip" style="display:none;position:fixed;z-index:10;-webkit-overflow-scrolling:touch;">
						<img src="https://static-ux.mustit.co.kr/img/front/popup/btn_api_close.gif" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-1px;top:-29px;z-index:1" onclick="closeDaumPostcode();" alt="닫기 버튼" />
					</div>
					
						<script>
							// 우편번호 찾기 화면을 넣을 element
							var element_layer = document.getElementById('layer_zip');
						
							function closeDaumPostcode() {
								// iframe을 넣은 element를 안보이게 한다.
								element_layer.style.display = 'none';
							}
						
							function execDaumPostcode2() {
								daum.postcode.load(function(){
									new daum.Postcode({
										oncomplete: function(data) {
											// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
											
											// 우편번호와 주소 정보를 해당 필드에 넣는다.
											document.getElementsByName("quickLastOrderExist")[0].value = "R";
											document.getElementById('zip').value = data.zonecode; // 5자리 새우편번호 사용
											document.getElementById('addr1').value = data.roadAddress;
											document.getElementById('addr2').value = "";
											document.getElementById("sido").value = data.sido;
											document.getElementById("gugun").value = data.sigungu;
											if( data.bname1 != "" ) {
												document.getElementById("dong").value = data.bname1;
											} else {
												document.getElementById("dong").value = data.bname;
											}
											
											// iframe을 넣은 element를 안보이게 한다.
											// (autoClose:false 기능을 이용한다면, 아래 ��드를 제거해야 화면에서 사라지지 않는다.)
											element_layer.style.display = 'none';
											
											if( $("input[type=radio][name=baesong_section]:checked").val() == "quick" ) {
												$("#calcSurpriseDeliv").hide();
											} //else {
												//$("#quick_normal").click();
											//}
											resetQuick();
											checkDeliveryException(data.zonecode, data.roadAddress);
										},
										theme : {
											bgColor: "#FAFAFA", //바탕 배경색
											//searchBgColor: "", //검색창 배경색
											//contentBgColor: "", //본문 배경색(검색결과,결과없음,첫화면,검색서제스트)
											//pageBgColor: "", //페이지 배경색
											textColor: "#555555", //기본 글자색
											queryTextColor: "#555555", //검색창 글자색
											postcodeTextColor: "#D01F3C", //우편번호 글자색
											emphTextColor: "#6B97BE", //강조 글자색
											outlineColor: "#CCCCCC" //테두리
										},
										width : '100%',
										height : '100%'
									}).embed(element_layer);
							
									// iframe을 넣은 element를 보이게 한다.
									element_layer.style.display = 'block';
							
									// iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
									initLayerPosition();
								});
							}
							
							// 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
							// resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
							// 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
							function initLayerPosition() {
								var width = 400; //우편번호서비스가 들어갈 element의 width
								var height = 460; //우편번호서비스가 들어갈 element의 height
								var borderWidth = 1; //샘플에서 사용하는 border의 두께
								
								// 위에서 선언한 값들을 실제 element에 넣는다.
								element_layer.style.width = width + 'px';
								element_layer.style.height = height + 'px';
								element_layer.style.border = borderWidth + 'px solid';
								// 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
								element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
								element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
							}
						</script>
					<input type="hidden" id="sido" name="sido" value="" />
					<input type="hidden" id="gugun" name="gugun" value="" />
					<input type="hidden" id="dong" name="dong" value="" />
					<ul class="mi-mt-8 after_clear">
						<li class="fl"><input type="text" id="addr1" name="addr1" value="" class="input-join" style="width:280px;" maxlength="50" readonly="readonly" onclick="execDaumPostcode2();" /></li>
						<li class="fl margin_l_3"><input type="text" id="addr2" name="addr2" value="" class="input-join" style="width:280px;" maxlength="50" /></li>
					</ul>
						<!--<div id="baesong_insert_area" class="margin_t_10" style="display:none;">
							<div class="baesong_insert_box box-container" id="divAddMemgerDelivery">
								<input type="checkbox" id="baesong_insert" name="addMemberDelivery" class="new_check" value="true"/>
								<label class="new_check" for="baesong_insert"></label> 
								<label class="new_check2" for="baesong_insert">배송지 목록에 추가</label>
							</div>
							<div class="default_addr_box box-container" id="divDefaultAddrYn", style="display:none;">
								<input type="checkbox" id="default_addr" name="defaultAddrYn" class="new_check" value="true" />
								<label class="new_check" for="default_addr"></label> 
								<label class="new_check2" for="default_addr">기본 배송지로 설정</label>
							</div>
							</div>-->
				</td>
			</tr>
			<!-- <tr>
				<th>주소 <span class="mi-font-red">*</span></th>
				<td>
					<p class="read_only_data">(06030)<br>서울 강남구 압구정로 148 머스트잇빌딩 4층</p>
					<div id="baesong_insert_area" class="margin_t_10">
						<div class="default_addr_box box-container">
							<input type="checkbox" id="default_addr2" name="checkbox_test" class="new_check" value="ok" />
							<label class="new_check" for="default_addr2"></label> 
							<label class="new_check2" for="default_addr2">기본 배송지로 설정</label>
						</div>
					</div>
				</td>
			</tr> -->
			
						<tr>
				<td colspan="2" class="padding_0 border_none">
					<input type="hidden" name="baesong_section" name="normal" />
					<input type="hidden" name="quickLastOrderExist" value="N" />
				</td>
			</tr>
						<tr>
				<th>배송 시 요청사항</th>
				<td>
					<!--
					묶음주문일경우 아래 영역이 보여지는데
					처음에는 하단 "상품별입력" 버튼 영역만 보여지고 
					상품별 입력을 클릭시 위쪽 인풋창은 없어지고 아래 상품별 인풋창들이 나열됨
						
					묶음주문이 아니라면 하단 "상품별 입력"버튼도 보여지지않음
					-->
										
					<!-- 한개만 주문일경우 아래 인풋창 한개만 노출 -->
					<div class="memo_list" id="memo1">
						<div class="object">
							<p class="memo_write">
								<div class="padding_input">
									<select id='comment_select' name="comment_select" class="input-join select-mode mi-font-basic" onchange='chgComment("comment_select","comment","byte");' style="width:280px">
										<option value=''>배송시 요청사항 선택</option>
										<option value='부재시 경비실에 맡겨주세요.'>부재시 경비실에 맡겨주세요.</option>
										<option value='부재시 휴대폰으로 연락바랍니다.'>부재시 휴대폰으로 연락바랍니다.</option>
										<option value='집 앞에 놓아주세요.'>집 앞에 놓아주세요.</option>
										<option value='배송전에 연락주세요.'>배송전에 연락주세요.</option>
										<option value='택배함에 넣어주세요.'>택배함에 넣어주세요.</option>
										<option value='직접 입력'>직접 입력</option>
									</select>
								</div>
								<input type="text" class="new_text mi-group-t5" name="comment" style="width:525px;display:none" onkeyup="chkByte(this, 'byte');" />
								<span id="byte" style="display:none" class="c_mustit">(0/40자)</span>
							</p>
						</div>
					</div>
					
					<div class="memo_list" id="memo2" style="display:none;">
																								<div>
							<p class="mi-group-b5 mi-group-t5">[CELINE] 셀린느 트리오페 캔버스 버킷백 스몰 2컬러 탄 화이트 191442CAS.04LU</p>
							<div class="padding_input">
								<select id='comment_select_25699178' class="input-join select-mode mi-font-basic" onchange='chgComment("comment_select_25699178","comment_25699178","byte0");' style="width:280px">
									<option value=''>배송시 요청사항 선택</option>
									<option value='부재시 경비실에 맡겨주세요.'>부재시 경비실에 맡겨주세요.</option>
									<option value='부재시 휴대폰으로 연락바랍니다.'>부재시 휴대폰으로 연락바랍니다.</option>
									<option value='집 앞에 놓아주세요.'>집 앞에 놓아주세요.</option>
									<option value='배송전에 연락주세요.'>배송전에 연락주세요.</option>
									<option value='택배함에 넣어주세요.'>택배함에 넣어주세요.</option>
									<option value='직접 입력'>직접 입력</option>
								</select>
								<div>
									<input type="text" class="new_text memo_multi mi-group-b5 mi-group-t5" name="comment_25699178" style="width:525px;display:none" onkeyup="chkByte(this, 'byte0')" />
									<span id="byte0" style="display:none" class="c_mustit">(0/40자)</span>
								</div>
							</div>
													</div>
					</div>
				</td>
			</tr>
		</table>
</div>

	<style>
		.nuts_table.nuts1.separately tr th {border-bottom:1px solid #e3e3e3!important;}
		.nuts_table.nuts1.separately td {border-top:0!important; border-bottom:1px solid #e3e3e3!important;}
	</style>
		<div class="order_table" style="margin-bottom:30px;">
			<div class="mini_title">결제
				<span id="noLoginTxt" class="join-strong-txt mi-font-basic mi-normal"></span>
			</div>

			<div class="order_table margin_b_20">
				<table class="mi-table mi-table-secondary">
					<colgroup>
						<col width="*" />
						<col width="132" />
						<col width="132" />
						<col width="132" />
						<col width="132" />
					</colgroup>
					<tr>
						<th>상품정보</th>
						<th>수량</th>
						<th>가격</th>
						<th>할인금액</th>
						<th>회원 할인가</th>
					</tr>
<%
String[] Mnos = request.getParameterValues("cartIds");
String[] counts = request.getParameterValues("buyQty");
String Mno = request.getParameter("Mno");
DecimalFormat df = new DecimalFormat("###,###");

if (Mnos == null && Mno == null) {
%>
	<script>alert("장바구니에 담겨있는 상품이 없습니다."); history.back();</script>
<%
}

ArrayList<String> order_info_arr = new ArrayList<String>();
String order_info = "";

int total_price = 0;
int total_sale = 0;
int total = 0;

String Mname = "";
int Mprice = 0;
int Msale = 0;
int count = 0;
int total_count = 0;

try {
	if (Mno != null) {
		count = Integer.parseInt(request.getParameter("count"));
		total_count = count;

		String sql = "SELECT * FROM product WHERE Mno=?"; 
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, Mno);

		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			Mname = rs.getString("Mname");
			Mprice = rs.getInt("Mprice");
			Msale = rs.getInt("Msale");

			total_price = Mprice * count;
			total_sale = (Mprice - Msale) * count;
		}
%>
					<tr>
						<td style="padding:20px 0 20px 0;">
							<div class="mi-float-left mi-group-l10 mi-group-r10">
								<input type="hidden" id="result_mileage_25699178" name="result_mileage_25699178" />
								<input type="hidden" id="result_gift_25699178" name="result_gift_25699178" />
								<input type="hidden" id="v_quan" name="quantity[]" value="1" />
								<input type="hidden" name="baesong_type_25699178" value="2" />
								<input type="hidden" name="baesongbi_25699178" value="127,560" />
								<input type="hidden" name="baesongbi[]" data-pnum="42498852" value="127,560" />

								<input type="hidden" name="baesongbi_is_flag[42498852]" value="" />
								<input type="hidden" name="baesongbi_is_number[42498852]" value="" />
								<input type="hidden" name="baesongbi_is[42498852]" value="0" />
								<input type="hidden" name="baesongbi_direct_flag[42498852]" value="N" />
								<input type="hidden" name="usedAddCoupon[25699178]" value="" />

								<img src="/GMQDisplay-master/static/images/product/<%=Mno%>_1.png" alt="상품이미지"
									style="width:110px; height:110px; border: 1px solid rgba(0,0,0,.08);" />
							</div>
							<div class="mi-relative mi-text-left" style="height:112px;">
								<p class="mi-medium mi-font-black mi-bold">
									<%=Mname%>
								</p>
								<p class="mi-font-basic mi-font-black">
									<%=Mno%>
								</p>
							</div>
						</td>
						<td class="mi-font-mblack">
							<div class="product_count">
								<%=count%>
							</div>
						</td>
						<td>
							<p>
								<span class="fs15 mi-font-mblack bold mi-roboto mi-valign-bottom">
									<%=df.format(Mprice)%>
								</span><span class="mi-font-mblack bold mi-font-basic mi-valign-bottom">원</span>
							</p>
						</td>

						<td>
							<p class="fs15 mi-font-mblack bold text-center margin_b_2 mi-roboto">
								<%=df.format(Mprice - Msale)%><span>원</span>
							</p>
						</td>

						<td>
							<input type="hidden" name="deliveryException[]" data-pnum="42498852" data-flag="quantity"
								value="1" />
							<input type="hidden" name="deliveryException[]" data-pnum="42498852"
								data-flag="checkUseDeliveryFeeEach" value="Y" />
							<input type="hidden" name="deliveryException[]" data-pnum="42498852" data-flag="baesong_type"
								value="2" />
							<input type="hidden" name="deliveryException[]" data-pnum="42498852" data-flag="jeju" value="0" />
							<input type="hidden" name="deliveryException[]" data-pnum="42498852" data-flag="island_mountain"
								value="0" />

							<input type="hidden" name="deliveryException[]" data-pnum="42498852" data-flag="product_is_jeju"
								value="N" />

							<input type="hidden" name="deliveryException[]" data-pnum="42498852"
								data-flag="product_island_mountain" value="N" />

							<div class="mi-font-mblack fs13 bold">
								<p class="bold fs13">
									<%=df.format(Msale)%>
								</p>
							</div>


							<!--배송방법 텍스트 노출-->
							<div class="lh20">
								<span class="mi-font-gray fs13 cg_block">국내 배송</span>
							</div>
						</td>
					</tr>
<%
		order_info_arr.add(Mno + "/" + count);
	} else {
		for (int i = 0; i < Mnos.length; i++) {
			String sql = "SELECT * FROM product WHERE Mno=?"; 
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, Mnos[i]);

			ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			Mno = Mnos[i];
			String sql2 = "SELECT * FROM cart WHERE Mno=?";
			PreparedStatement pstmt2 = con.prepareStatement(sql2);
			pstmt2.setString(1, Mno);

			ResultSet rs2 = pstmt2.executeQuery();
			if (rs2.next()) { count = rs2.getInt("cart_count"); total_count += count; }

			Mname = rs.getString("Mname");
			Mprice = rs.getInt("Mprice");
			Msale = rs.getInt("Msale");

			total_price += (Mprice * count);
			total_sale += (Mprice - Msale) * count;
%>
					<tr>
						<td style="padding:20px 0 20px 0;">
							<div class="mi-float-left mi-group-l10 mi-group-r10">
								<input type="hidden" id="result_mileage_25699178" name="result_mileage_25699178" />
								<input type="hidden" id="result_gift_25699178" name="result_gift_25699178" />
								<input type="hidden" id="v_quan" name="quantity[]" value="1" />
								<input type="hidden" name="baesong_type_25699178" value="2" />
								<input type="hidden" name="baesongbi_25699178" value="127,560" />
								<input type="hidden" name="baesongbi[]" data-pnum="42498852" value="127,560" />

								<input type="hidden" name="baesongbi_is_flag[42498852]" value="" />
								<input type="hidden" name="baesongbi_is_number[42498852]" value="" />
								<input type="hidden" name="baesongbi_is[42498852]" value="0" />
								<input type="hidden" name="baesongbi_direct_flag[42498852]" value="N" />
								<input type="hidden" name="usedAddCoupon[25699178]" value="" />

								<img src="/GMQDisplay-master/static/images/product/<%=Mno%>_1.png" alt="상품이미지"
									style="width:110px; height:110px; border: 1px solid rgba(0,0,0,.08);" />
							</div>
							<div class="mi-relative mi-text-left" style="height:112px;">
								<p class="mi-medium mi-font-black mi-bold">
									<%=Mname%>
								</p>
								<p class="mi-font-basic mi-font-black">
									<%=Mno%>
								</p>
							</div>
						</td>
						<td class="mi-font-mblack">
							<div class="product_count">
								<%=count%>
							</div>
						</td>
						<td>
							<p>
								<span class="fs15 mi-font-mblack bold mi-roboto mi-valign-bottom">
									<%=df.format(Mprice)%>
								</span><span class="mi-font-mblack bold mi-font-basic mi-valign-bottom">원</span>
							</p>
						</td>

						<td>
							<p class="fs15 mi-font-mblack bold text-center margin_b_2 mi-roboto">
								<%=df.format(Mprice - Msale)%><span>원</span>
							</p>
						</td>

						<td>
							<input type="hidden" name="deliveryException[]" data-pnum="42498852" data-flag="quantity"
								value="1" />
							<input type="hidden" name="deliveryException[]" data-pnum="42498852"
								data-flag="checkUseDeliveryFeeEach" value="Y" />
							<input type="hidden" name="deliveryException[]" data-pnum="42498852" data-flag="baesong_type"
								value="2" />
							<input type="hidden" name="deliveryException[]" data-pnum="42498852" data-flag="jeju" value="0" />
							<input type="hidden" name="deliveryException[]" data-pnum="42498852" data-flag="island_mountain"
								value="0" />

							<input type="hidden" name="deliveryException[]" data-pnum="42498852" data-flag="product_is_jeju"
								value="N" />

							<input type="hidden" name="deliveryException[]" data-pnum="42498852"
								data-flag="product_island_mountain" value="N" />

							<div class="mi-font-mblack fs13 bold">
								<p class="bold fs13">
									<%=df.format(Msale)%>
								</p>
							</div>


							<!--배송방법 텍스트 노출-->
							<div class="lh20">
								<span class="mi-font-gray fs13 cg_block">국내 배송</span>
							</div>
						</td>
					</tr>
<%
			}
		order_info_arr.add(Mno + "/" + count);
		}
	}
	total += (total_price - total_sale);
	for(String list : order_info_arr) {
		order_info += list + " ";
	}
} catch (Exception e) {
	out.print(e);
}
%>

					<input type="hidden" name="info" value="<%=order_info%>"/>
					<input type="hidden" name="chk_coupon_card" value="N" />
					<input type="hidden" name="chk_coupon_bank" value="N" />
					<input type="hidden" name="chk_directBuying_bank" value="N" />
				</table>
			</div>

			<table class="mi-table mi-table-secondary order-result-table">
				<colgroup>
					<col width="160" />
					<col width="20" />
					<col width="160" />
					<col width="20" />
					<col width="160" />
					<col width="20" />
					<col width="160" />
					<col width="20" />
					<col width="160" />
					<col width="20" />
					<col width="160" />
				</colgroup>
				<tr>
					<th>&nbsp;</th>
					<th>&nbsp;</th>
					<th>총 주문금액</th>
					<th>&nbsp;</th>
					<th>할인가능금액</th>
					<th>&nbsp;</th>
					<th>포인트 지원
						<div class="detail_desc">
							<img src="https://static-ux.mustit.co.kr/img/front/product/icon_point.gif" alt=""
								class="mark cursor" onclick="detail(this);" style="vertical-align: middle;"/>
							<div class="detail">
								<img src="https://static-ux.mustit.co.kr/img/front/order/img_detailPoint.gif"
									class="mark_point" />
								<p>맴버쉽 포인트(1%) 지원됩니다.</p>
								<p>
									<a href="/GMQDisplay-master/event.html" target="_blank">
										<span class="detail_btn">자세히 보기 ></span>
									</a>
								</p>
							</div>
						</div>
					</th>

					<th>&nbsp;</th>
					<th class="mi-relative">총 배송비
						<img id="totalDelivCursor" src="https://static-ux.mustit.co.kr/img/front/mypage/icon_buying_seller.gif" class="arr_img cursor"
							onclick="show_total_deliv();" style="vertical-align: middle;"/>
						<div class="total_deliv_detail">
							<div class="detail_row">
								<!--<span class="detail_cell box_gray_f8">회원 혜택</span>
								<span class="detail_cell"><span id="deliveryPrePayPrice">0원</span></span><br>-->
								<span class="detail_cell box_gray_f8">회원 혜택</span>
								<span class="detail_cell"><span id="deliveryPrePayPrice">0원</span></span>
							</div>

							<div class="detail_row" style="display:none;">
								<span class="detail_cell box_gray_f8">제주</span>
								<span class="detail_cell"><span id="deliveryJJPayPrice">0</span>원</span>
							</div>

							<div class="detail_row" style="display:none;">
								<span class="detail_cell box_gray_f8">도서산간</span>
								<span class="detail_cell"><span id="deliveryIMPayPrice">0</span>원</span>
							</div>

							<div class="detail_row" style="display:none;">
								<span class="detail_cell box_gray_f8">깜짝배송</span>
								<span class="detail_cell"><span id="deliveryQuickPrice">0</span>원</span>
							</div>
						</div>
					</th>
					<th>&nbsp;</th>
					<th>최종 결제 금액</th>
				</tr>
				<tr>
					<td class="border_r_none">&nbsp;</td>
					<td class="border_r_none">&nbsp;</td>
					<td class="border_r_none">
						<span class="fs20 c_black bold mi-helvetica" id="real_price"><%=df.format(total_price)%> 원</span>
					</td>
					<td class="padding_0 border_r_none">
						<img src="https://static-ux.mustit.co.kr/img/front/icon/icon-minus.png" alt="MINUS" style="width:20px">
					</td>
					<td class="border_r_none">
						<span class="fs20 c_black bold mi-helvetica" id="sale_total"><%=df.format(total_sale)%> 원</span>
					</td>
					<td class="padding_0 border_r_none">
						<img src="https://static-ux.mustit.co.kr/img/front/icon/icon-minus.png" alt="MINUS" style="width:20px">
					</td>
					<!--적립금-->
					<td class="border_r_none">
					<p>
						<span class="fs20 c_black bold mi-helvetica"><%=df.format(total/100)%>원</span>
					</p>
						<p>
					<!--<input type="button" value="사용하기" class="btn-join mi-inline-block btn-join-gray-outline c_gray8 mi-font-basic" style="padding:3px 0 1px;width:90px;"/>-->
					</p>
					<input name="use_mileage" type="hidden" readonly="readonly" size="8" maxlength="9" onkeyup="ck_digit(this);" onclick="canclePoint();" class="form-control"> 
					<input type="hidden" name="itcoupon_discount" value="0"/>
					<input type="hidden" name="dangol_discout" value="0"/>
					<input type="hidden" name="naver_discout" value="0"/>
                    <input type="hidden" name="membership_discount" value="0"/>
					<input type="hidden" name="personalMedia_discount" value="0"/>
					<input type="hidden" name="directBuying_discount" value="0"/>
					<input type="hidden" name="app_discout" value="0"/>
					<input type="hidden" name="seller_discount" value="0"/>
					<input type="hidden" name="coupon_discount" value="0"/>
					<input type="hidden" name="coupon_add_discount" value="0"/>
					<input type="hidden" name="result_gift" value="0" />
					<input type="hidden" name="result_mileage" value="0" />
					<input type="hidden" name="sale_total_origin" value="0" />
					<input type="hidden" id="dangol" value="0" />
				</td>


				<td class="padding_0 border_r_none">
					<img src="https://static-ux.mustit.co.kr/img/front/icon/icon-plus.png" alt="PLUS" style="width:20px">
				</td>
				<td class="border_r_none">
					<span class="fs20 c_black bold mi-helvetica">0원</span>
				</td>
				<td class="padding_0 border_r_none">
					<img src="https://static-ux.mustit.co.kr/img/front/icon/icon-equals.png" alt="EQUALS" style="width:20px">
				</td>
				<!-- 최종 결정금액 -->
				<td class="border_r_none">
					<span class="mi-font-red bold h0 mi-helvetica gtag_price"><%=df.format(total-(total/100))%> 원</span>
				</td>
			</tr>
		</table>
		<%total = total-(total/100);%>
		<style>
			#paymentTab .mi-accordion-title:after {right:34px!important;}
			.mi-tab-primary .mi-hidden:checked + .mi-tab-link.border-red {border-color:#d01f3c;}
			.mi-tab-primary .mi-hidden:checked + .mi-tab-link.border-red:before {background-color:#d01f3c;}
			.mi-tab-primary .mi-hidden:checked + .mi-tab-link.border-red:after {background-color:#d01f3c;}
			.mi-tab-primary .mi-tab-link {color:#141414;}
			.mi-checkbox-circle-label.mxn_order_checkbox:after {top:-webkit-calc(50% - 16px);}
			.mxn-desc-title {padding: 15px 20px;background-color: #fff;border-bottom: 1px solid #ebebeb;position: relative;}
		</style>
<script>
	$(function (){
	$("#payment_change_btn").click(function (){
	$("#payment_list").toggle();
	});
	});
	$(function (){
	$("#tossPayment").click(function (){
	$("#tossPay2").toggle();
	});
	});
	$(function (){
	$("#kakaoPay").click(function (){
	$("#kakaoPay1").toggle();
	});
	});
</script>
		<!-- ?php echo "<xmp>"; print_r($order_payment_data); echo "</xmp>";? -->
		<div id="wrapId" class="mi-after-clear mi-group-t20">
			<div class="mi-float-left mi-border-whitegray mi-list-group mi-accordion" style="width:710px;border-bottom:0" id="wrap-mi-accordion">
			 	<div id="paymentTab">
				<div class="mi-box-p20 mi-border-whitegray mi-border-del-lr mi-accordion-title">
					<span class="mi-large mi-bold mi-font-mblack mi-inline-block mi-group-t5 mi-group-b5 mi-text-interval-lg" id="payment_name">결제수단 선택</span>
					<div class="mi-float-right mi-border-black" style="padding:9px 30px 9px 15px;" id="payment_change_btn">
						<span class="mi-font-13 mi-text-interval-basic mi-font-mblack mi-text-nowrap" id="payment_btn_span">결제수단변경</span>
					</div>
				</div>
				
				<div class="mi-relative mi-border-whitegray mi-border-del-lr mi-accordion-contents" style="background-color:#fafafa;border-top:0;padding:15px;" id="payment_list">
										
					<!-- 결제수단관리 배너 PC 이미지 -->
					<input type="hidden" name="isBannerImg" id="isBannerImg" value="OK">
					<!--<img src="https://mustit-upload.s3.ap-northeast-2.amazonaws.com/pc/banner/banner-dummy-test.png" style="position:absolute;top:-20px;left:20px;z-index:1;height:44px;">-->
					<ul id="method_payment" class="mi-tab mi-tab-primary plus-h white-default mi-group-b15" data-tab-cnt="4">
						
						<span class="mi-inline-block mi-box-ap5 mi-col-3">
							<li class="mi-tab-item" style="width:100%;">
								<label id="pay_s4">
									<input type="radio" name="pay_choice" id="kakaoPay" value="onlykakaopay" onclick="loadRule(kakaoPay);" class="mi-hidden" data-gopaymethod="onlykakaopay"
									data-payment-name="KakaoPay"
									data-paymethod="simple"
									data-check-start-date=""
									data-check-end-date=""
									data-payment-manage-no="3"
									/>
									                                
                                    <span class="mi-tab-link border-red">
										<img src="https://image.mustit.co.kr/lib/upload/payment/4fcb76f6c251192a8397072fe368cc19.png" class="mi-image-full checkBrowser" data-pay-choice="kakaoPay"/>
									</span>
                                       
																		
								</label>
																
							</li>
						</span>
							
											</ul>
					
					<div class="mi-group-b5 mi-group-l5 mi-group-r5" >
												<div class="next_use mi-inline-block">
							<label class="mi-checkbox-circle">
								<input type="checkbox" id="next_pay_use_general" name="order_payment_data_save" value="Y" class="mi-hidden" checked="checked" />
								<span class="mi-checkbox-circle-label fs13">선택한 결제 수단을 다음에도 사용</span>
							</label>
						</div>
					</div>	
				</div>
				<!-- 간편결제 종류 별 안내 텍스트 -->
								<div class="guide_text">
<style>
	#simple_payment_guide {line-height:20px;}
	#simple_payment_guide p {color:#141414;font-size:13px;}
	#simple_payment_guide .point_text {color:#ec7930;}
	.simple_payment {background-color:#f5f5f5;padding:12px 20px;margin-top:10px;}
	.bank_support_top {padding:20px 0 0;}
	#monthpay:disabled{background: #eee;cursor: default;}
</style>
<script>
	$(function (){
	$("#card_choice").click(function (){
	$("#card_choice1").toggle();
	$("#card_choice2").toggle();
	$("#card_choice3").toggle();
	});
	});
</script>
<div id="simple_payment_guide">
	<div class="card_left card_choice_left card_payment mi-group-b10" style="float:none;display:none;" id="card_choice1" >
		<div class="card_choice mi-box-ap20" style="padding-bottom:0;" >
			<div class="mi-row" >
				<div id="inicis" name="inicis" class="mi-col-6 padding_r_5" >
					<label class="mi-select mi-select-border no-empty-value">
						<select name="payment_card" id="payment_card" >
							<option value="">선택하세요</option>
														<option value="9"
								data-cardname="KB국민카드"
								data-pgname="NICE"
								data-sdate="2"
								data-edate="3"
							>KB국민카드</option>
														<option value="4"
								data-cardname="신한카드"
								data-pgname="NICE"
								data-sdate="2"
								data-edate="3"
							>신한카드</option>
														<option value="1"
								data-cardname="삼성카드"
								data-pgname="IAMPORT"
								data-sdate=""
								data-edate=""
							>삼성카드</option>
														<option value="2"
								data-cardname="현대카드"
								data-pgname="IAMPORT"
								data-sdate="2"
								data-edate="3"
							>현대카드</option>
														<option value="10"
								data-cardname="우리카드"
								data-pgname="IAMPORT"
								data-sdate="2"
								data-edate="7"
							>우리카드</option>
														<option value="7"
								data-cardname="NH농협카드"
								data-pgname="NICE"
								data-sdate="2"
								data-edate="4"
							>NH농협카드</option>
														<option value="8"
								data-cardname="비씨카드(페이북)"
								data-pgname="NICE"
								data-sdate="2"
								data-edate="6"
							>비씨카드(페이북)</option>
														<option value="3"
								data-cardname="롯데카드"
								data-pgname="IAMPORT"
								data-sdate="2"
								data-edate="3"
							>롯데카드</option>
														<option value="6"
								data-cardname="KEB하나카드"
								data-pgname="IAMPORT"
								data-sdate="2"
								data-edate="3"
							>KEB하나카드</option>
														<option value="11"
								data-cardname="카카오뱅크카드"
								data-pgname="NICE"
								data-sdate=""
								data-edate=""
							>카카오뱅크카드</option>
														<option value="5"
								data-cardname="씨티카드"
								data-pgname="NICE"
								data-sdate=""
								data-edate=""
							>씨티카드</option>
														<option value="12"
								data-cardname="수협카드"
								data-pgname="NICE"
								data-sdate=""
								data-edate=""
							>수협카드</option>
														<option value="13"
								data-cardname="제주카드"
								data-pgname="NICE"
								data-sdate=""
								data-edate=""
							>제주카드</option>
														<option value="14"
								data-cardname="전북카드"
								data-pgname="NICE"
								data-sdate=""
								data-edate=""
							>전북카드</option>
														<option value="15"
								data-cardname="광주카드"
								data-pgname="NICE"
								data-sdate=""
								data-edate=""
							>광주카드</option>
						</select>
					</label>
				</div>
			
				<div class="mi-col-6 padding_l_5 card_choice_month" style="display:none;" id="card_choice2">
					<label class="mi-select mi-select-border no-empty-value">
						<select name="monthpay" id="monthpay">
							<option value="">선택하세요</option>
							<option class="monthpay" value="00">일시불</option>
							<option class="monthpay" value="02">2개월</option>
							<option class="monthpay" value="03">3개월</option>
							<option class="monthpay" value="04">4개월</option>
							<option class="monthpay" value="05">5개월</option>
							<option class="monthpay" value="06">6개월</option>
							<option class="monthpay" value="07">7개월</option>
							<option class="monthpay" value="08">8개월</option>
							<option class="monthpay" value="09">9개월</option>
							<option class="monthpay" value="10">10개월</option>
							<option class="monthpay" value="11">11개월</option>
							<option class="monthpay" value="12">12개월</option>
						</select>
					</label>
				</div>
			</div>
					</div>
		
	</div>
	
	<div class="bank_payment bankBook bankBook VBank mi-box-ap20" style="display:none;border-bottom:1px solid #ebebeb;padding-top:0;" id="card_choice3">
		<style>
			.mi-input-text:disabled {color:#141414;background-color:#f5f5f5}
			.bank_payment input:-webkit-autofill {
				box-shadow: 0 0 0 1000px #f5f5f5 inset!important;
			   -webkit-box-shadow: 0 0 0 1000px #f5f5f5 inset!important;
			}
			.mi-select:after {z-index:100;}
		</style>
		<div class="order_table margin_t_30 margin_b_0">
			<span class="h4 mi-font-mblack mi-bold mi-group-b10 mi-block">환불계좌정보</span>
			<table class="mi-table mi-table-secondary mi-table-left">
				<colgroup>
					<col width="120" />
					<col width="*" />
				</colgroup>
				<tr>
					<th style="padding:25px 15px 25px;">
						<span class="mi-font-basic mi-bold mi-inline-block" style="line-height:20px;color:#141414;">은행</span>
					</th>
					<td>
						<label class="mi-select mi-select-border mi-input-md no-empty-value" style="width:300px">
							<select name="no_bank_name" id="no_bank_name" class="padding_10">
								<option value="">은행선택</option>
																<option value="54">HSBC</option>
																<option value="57">JP모간</option>
																<option value="81">KEB 하나</option>
																<option value="39">경남</option>
																<option value="34">광주</option>
																<option value="04">국민</option>
																<option value="03">기업</option>
																<option value="12">농협</option>
																<option value="11">농협중앙</option>
																<option value="31">대구</option>
																<option value="55">도이치</option>
																<option value="32">부산</option>
																<option value="64">산림조합</option>
																<option value="02">산업</option>
																<option value="50">상호저축</option>
																<option value="45">새마을</option>
																<option value="07">수협</option>
																<option value="70">신안상호저축은행</option>
																<option value="88">신한</option>
																<option value="48">신협</option>
																<option value="27">씨티</option>
																<option value="20">우리</option>
																<option value="71">우체국</option>
																<option value="37">전북</option>
																<option value="35">제주</option>
																<option value="90">카카오뱅크</option>
																<option value="89">케이뱅크</option>
																<option value="23">한국스탠다드차타드</option>
															</select>
						</label>
												<script>$("#no_bank_name").val('');</script>
					</td>
				</tr>
				<tr>
					<th style="padding:25px 15px 25px;">
						<span class="mi-font-basic mi-bold mi-inline-block" style="line-height:20px;color:#141414;">계좌번호</span>
					</th>
					<td>
						<input type="text" id="account_number" name="no_bank_num" class="mi-input-text mi-input-md" placeholder="계좌입력 (-없이 입력해주세요)" value="" onkeyup="fn_filterChk2(this, 'account');" style="width:300px"/>
					</td>
				</tr>
				<tr id="bank_account_name 00">
					<th style="padding:25px 15px 25px;">
						<span class="mi-font-basic mi-bold mi-inline-block" style="line-height:20px;color:#141414;">예금주</span>
					</th>
					<td>
						<input type="text" id="no_bank_owner" name="no_bank_owner" class="mi-input-text mi-input-md" value="" style="width:300px" disabled/>
					</td>
				</tr>
			</table>
			<div class="mi-over-hidden mi-group-t15">
								<div id="saveToMemAgree" style="display:none" class="mi-float-left mi-box-p5">
					<label class="mi-checkbox-circle" style="padding-left:35px;">
	                    <input type="checkbox" name="addToReturnAccount" class="mi-hidden">
	                    <span class="mi-checkbox-circle-label">환불 계좌로 등록</span>
	                </label>
	            </div>
	            	            <input type="hidden" name="isAccountVerified" value="false"/>
	            <input id='checkAccountVerify' type="button" value="계좌 확인" class="mi-btn-reset mi-btn-gray mi-box-p10 mi-font-13 mi-text-interval-basic mi-float-right" style="border:0;width:140px;" onclick="">
	        </div>
			<script type="text/javascript" src="/lib/js/bank_verification.js?v=1680035330"></script>
			<script type="text/javascript">
			bankVerification.setup({
				type:'front_order',
		        isDisabled:'false',
		        bankNameInput:'#no_bank_name',
		        bankNumberInput:'#account_number',
		        bankOwnerInput:'#no_bank_owner',
		        saveToMemAgree:'#saveToMemAgree',
		        orderNoInput:'[name=gou_number]',
		        bankAccountOwnerRow:'#bank_account_name',
		        normalProp:{disabled: false},
		        disabledProp:{disabled: true}
		    });
			</script>
		</div>
	</div>
	
			<div class="tossPayment " style="display:none;padding:0px 20px 20px 20px;display:none;border-bottom:1px solid #ebebeb;" id="tossPay2">
		<style>
			#admin_text p {font-family:'SD Gothic Neo', 'Apple SD Gothic Neo' , sans-serif!important;font-size:13px!important;}
			#admin_text span {font-family:'SD Gothic Neo', 'Apple SD Gothic Neo' , sans-serif!important;font-size:13px!important;}
		</style>

		<div id="admin_text" style="padding-top:20px;">
					<p>·<span style="color: rgb(20, 20, 20);"> </span><font color="#141414" face="나눔고딕, NanumGothic, sans-serif">Toss Pay</font><span style="color: rgb(20, 20, 20); font-family: 나눔고딕, NanumGothic, sans-serif;">​</span><span style="color: rgb(20, 20, 20); font-family: 나눔고딕, NanumGothic, sans-serif;">는 ㈜비바리퍼블리카에서 운영하는 간편송금/결제 서비스이며, 등록된 계좌로 쉽게 결제가 가능합니다.&nbsp;</span></p><p><span style="color: rgb(236, 121, 48);">·  </span><b><span style="color: rgb(236, 121, 48); font-family: 나눔고딕, NanumGothic, sans-serif;">현금영수증은 자동으로 신청되며, Toss Pay가 직접 발행합니다.&nbsp;</span></b></p><p><span style="color: rgb(20, 20, 20);">·  </span><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);"></span><font color="#141414" face="나눔고딕, NanumGothic, sans-serif">Toss Pay</font><span style="color: rgb(20, 20, 20); font-family: 나눔고딕, NanumGothic, sans-serif;">​</span><span style="color: rgb(20, 20, 20); font-family: 나눔고딕, NanumGothic, sans-serif;">는 송금을 통한 결제서비스로, 머스트잇이 제공하는 무이자 할부와 무관합니다.&nbsp;</span></p><p><span style="color: rgb(20, 20, 20);">·  </span><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);">결제 및 사용관련 문의는 </span><font color="#141414" face="나눔고딕, NanumGothic, sans-serif">Toss Pay</font><span style="color: rgb(20, 20, 20); font-family: 나눔고딕, NanumGothic, sans-serif;">​&nbsp;</span><span style="color: rgb(20, 20, 20); font-family: 나눔고딕, NanumGothic, sans-serif;">고객센터(1599-4905 / 24시간 연중무휴)를 이용 바랍니다.&nbsp;</span></p><p><span style="font-family: 나눔고딕, NanumGothic, sans-serif;"><span style="font-family: 돋움, dotum; color: rgb(236, 121, 48);">· </span><b><span style="color: rgb(236, 121, 48);"> </span><span style="color: rgb(236, 121, 48);"></span></b></span><b style="font-family: 나눔고딕, NanumGothic, sans-serif;"><span style="color: rgb(236, 121, 48);">Toss Pay 결제 선택시 깜짝배송 이용은 불가 합니다.</span></b></p><p>&nbsp;</p>																																																																					
		</div>
						
				<div class="tab_information_toss">
			<div class="order_tab_style">
				<ul class="after_clear">
					<li>
						<input type="radio" id="bankSupport" name="choice_toss_info" class="hidden_radio" checked="checked"/>
						<label for="bankSupport" class="fake_radio">지원은행</label>
					</li>
					<li>
						<input type="radio" id="unablePayTime" name="choice_toss_info" class="hidden_radio" />
						<label for="unablePayTime" class="fake_radio">결제불가시간</label>
					</li>
					<li>
						<input type="radio" id="paymentLimit" name="choice_toss_info" class="hidden_radio" />
						<label for="paymentLimit" class="fake_radio">결제한도</label>
					</li>
					<li>
						<input type="radio" id="supportedDeviceVersion" name="choice_toss_info" class="hidden_radio" />
						<label for="supportedDeviceVersion" class="fake_radio">지원단말기버전</label>
					</li>
				</ul>
				<script>
					
					$("input[name=choice_toss_info]").click(function() {
						var targetId = $(this).attr("id");
						$(".information_" + targetId).show().siblings().hide();
					});
				</script>
			</div>
			
			<div class="information_toss_contents">
				<div class="information_bankSupport" style="display:block;">
					<div class="bank_support_top">
						<h4 class="fs16 mi-font-mblack mi-group-b10">Toss Pay 지원 은행</h4>
						<p class="mi-group-b10">- 19개 은행과 8개 증권사 이용가능</p>
					</div>
					<div class="bank_support_list">
						<img src="https://static-ux.mustit.co.kr/img/front/order/img-toss-bank.png" class="mi-image-full">
					</div>
				</div>
				<div class="information_unablePayTime" style="display:none;">
					<div class="bank_support_top mi-group-b10">
						<h4 class="fs16 mi-font-mblack mi-group-b10">※ 은행별 점검시간에 따른 결제불가 안내</h4>
						<p>- 공통 점검시간 : 매일 23:20 ~ 익일 00:40</p>
						<p>- 은행별 정기 점검시간</p>
					</div>
					<div class="bank_support_table">
						<table class="mi-table mi-table-secondary mi-table-left">
							<colgroup>
								<col width="100"/>
								<col width="*"/>
							</colgroup>
							<tr>
								<th>KDB산업</th>
								<td>매주 일요일 00:00~04:00</td>
							</tr>
							<tr>
								<th>KB국민</th>
								<td>매월 세번째 일요일 전날<br/>23:50~00:30, 일요일 05:00~05:30</td>
							</tr>
							<tr>
								<th>NH농협</th>
								<td>매월 셋째주 월요일 00:00~04:00</td>
							</tr>
							<tr>
								<th>우리은행</th>
								<td>매주 목요일 23:45~금요일 00:45,<br/>매달 둘째주 일요일 02:00~06:00</td>
							</tr>
							<tr>
								<th>씨티은행</th>
								<td>공휴일 다음날<br/>(매주 월요일 포함 00:00~02:00)</td>
							</tr>
							<tr>
								<th>대구은행</th>
								<td>분기말에 한번 토요일 00:00~06:00</td>
							</tr>
							<tr>
								<th>부산은행</th>
								<td>매월 셋째주 월요일 00:00~04:00</td>
							</tr>
							<tr>
								<th>광주은행</th>
								<td>둘째주 일요일 02:00~06:00</td>
							</tr>
							<tr>
								<th>제주은행</th>
								<td>월,목 04:30~05:00</td>
							</tr>
							<tr>
								<th>전북은행</th>
								<td>매월 둘째주 토요일 00:00~04:00</td>
							</tr>
							<tr>
								<th>경남은행</th>
								<td>매월 둘째주 일요일 00:00~03:00</td>
							</tr>
							<tr>
								<th>우체국</th>
								<td>매일 04:00~05:00</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="information_paymentLimit" style="display:none;">
					<div class="bank_support_top">
						<h4 class="fs16 mi-font-mblack mi-group-b10">은행별 송금한도 제한으로 인한 결제한도 안내</h4>
						<p>- 성인 : 1일(누적) , 1회 200만원 한도</p>
						<p>- 미성년자 : 1주문당 30만원, 1일 누적 30만원, 1개월 누적 100만원</p>
					</div>
				</div>
				<div class="information_supportedDeviceVersion" style="display:none;">
					<div class="bank_support_top">
						<h4 class="fs16 mi-font-mblack mi-group-b10">Toss Pay 지원단말기</h4>
						<p>- ie11, Safari 7, Chrome 38, Firefox 27 부터 지원</p>
						<p>- ie9, 10 는 일부 지원 (Window 8.1 이상, Enable TLS 1.1, 1.2)</p>
						<p>- Android 5.0 Lollipop 부터 지원</p>
						<p>- iOS 9 부터 지원</p>
						<p>* 브라우저, 안드로이드, ios 모두 TLS 1.1 이상 지원해야되고, 디바이스 같은 경우 토스 앱의 최소 지원 버전 기준입니다.</p>
					</div>
				</div>
			</div>
		</div>
			</div>
				<div class="card " style="display:none;padding:0px 20px 20px 20px;border-bottom:1px solid #ebebeb;">
						<!-- 카드사 무이자 이벤트 -->
		<div id="cardEventArea" class="card card_payment card_corp_event">
			<script>var promotionSliderStart = false</script>
			<style>
				#cardEventArea .bx-pager {bottom:10px;}
				#cardEventArea .bx-pager-link {margin:0 4px;background-color:#000;opacity:.15;}
				#cardEventArea .bx-pager-link.active {opacity:1;}
				#cardEventArea > .bx-wrapper {margin-bottom:0;}
			</style>
			<div class="promotion-slider margin_b_30">
							</div>
		</div>
				<style>
			#admin_text p {font-family:'SD Gothic Neo', 'Apple SD Gothic Neo' , sans-serif!important;font-size:13px!important;}
			#admin_text span {font-family:'SD Gothic Neo', 'Apple SD Gothic Neo' , sans-serif!important;font-size:13px!important;}
		</style>

		<div id="admin_text" style="padding-top:20px;">
					<p style="font-size:13px; color:#141414; line-height:20px;">- <span style="color:#ec7930; font-size:13px;">5만원 이상</span> 결제시 무이자 할부 정보입니다.</p>
<p style="font-size:13px; color:#141414; line-height: 20px;">- 개인사업자/법인/체크/선불/기프트/하이브리드/은행계열카드 등의 경우 무이자할부 혜택이 적용되지 않습니다.</p>					
		</div>
				<style>
#ordern .order_table .cardTable {width: 100%;}
#ordern .order_table .cardTable tr {border-bottom:1px solid #ebebeb;}
#ordern .order_table .cardTable th {background-color:#f5f5f5; border-top:1px solid #000;padding:10px 20px;font-size:13px;text-align:center;}
#ordern .order_table .cardTable td {border-right:1px solid #ebebeb; border-bottom:1px solid #ebebeb; padding: 3px 0;}
#ordern .order_table .cardTable td:last-child {border-right:0px;}
</style>

<!--무이자 할부-->
<div style="margin-top:30px;">
    <div class="mi-bold mi-font-darkblack mi-group-b10" style="font-size:16px; line-height:24px;">무이자 할부</div>
    <table class="cardTable">
        <colgroup>
            <col width="122">
            <col width="*">
        </colgroup>
        <tr>
            <th style="color:#000">카드사</th>
            <th style="color:#000">할부기간</th>
        </tr>
                <tr>
            <td class="text-center">
                <div class="mi-card-image-group kb_card">
                    <p class="mi-text-interval-sxlg mi-alt-text c_black"></p>
                </div>    
            </td>
            <td class="text-center mi-font-darkblack mi-font-13" style="line-height:30px;">2 ~ 3개월</td>
        </tr>
        
                <tr>
            <td class="text-center">
                <div class="mi-card-image-group shinhan_card">
                    <p class="mi-text-interval-sxlg mi-alt-text c_black"></p>
                </div>    
            </td>
            <td class="text-center mi-font-darkblack mi-font-13" style="line-height:30px;">2 ~ 3개월</td>
        </tr>
        
                <tr>
            <td class="text-center">
                <div class="mi-card-image-group hyundai_card">
                    <p class="mi-text-interval-sxlg mi-alt-text c_black"></p>
                </div>    
            </td>
            <td class="text-center mi-font-darkblack mi-font-13" style="line-height:30px;">2 ~ 3개월</td>
        </tr>
        
                <tr>
            <td class="text-center">
                <div class="mi-card-image-group woori_card">
                    <p class="mi-text-interval-sxlg mi-alt-text c_black"></p>
                </div>    
            </td>
            <td class="text-center mi-font-darkblack mi-font-13" style="line-height:30px;">2 ~ 7개월</td>
        </tr>
        
                <tr>
            <td class="text-center">
                <div class="mi-card-image-group nh_card">
                    <p class="mi-text-interval-sxlg mi-alt-text c_black"></p>
                </div>    
            </td>
            <td class="text-center mi-font-darkblack mi-font-13" style="line-height:30px;">2 ~ 4개월</td>
        </tr>
        
                <tr>
            <td class="text-center">
                <div class="mi-card-image-group bc_card">
                    <p class="mi-text-interval-sxlg mi-alt-text c_black"></p>
                </div>    
            </td>
            <td class="text-center mi-font-darkblack mi-font-13" style="line-height:30px;">2 ~ 6개월</td>
        </tr>
        
                <tr>
            <td class="text-center">
                <div class="mi-card-image-group lotte_card">
                    <p class="mi-text-interval-sxlg mi-alt-text c_black"></p>
                </div>    
            </td>
            <td class="text-center mi-font-darkblack mi-font-13" style="line-height:30px;">2 ~ 3개월</td>
        </tr>
        
                <tr>
            <td class="text-center">
                <div class="mi-card-image-group hana_card">
                    <p class="mi-text-interval-sxlg mi-alt-text c_black"></p>
                </div>    
            </td>
            <td class="text-center mi-font-darkblack mi-font-13" style="line-height:30px;">2 ~ 3개월</td>
        </tr>
        
            </table>
    <div class="mi-group-t10">
        <p style="font-size: 12px; color: #a0a0a0; line-height: 20px;">- 전북카드는 결제창 내 (무)표기가 노출 되지 않더라도 5만원 이상 2~5개월 무이자 적용 됩니다.</p>    </div>
</div>

<!--장기 부분 무이자-->
<div>
    <div class="mi-bold mi-font-darkblack mi-group-t30 mi-group-b10" style="font-size:16px; line-height:24px;">장기 부분 무이자</div>
    <table class="cardTable">
        <colgroup>
            <col width="122">
            <col width="248">
            <col width="248">
        </colgroup>
        <tr>
            <th style="color:#000">카드사</th>
            <th style="color:#000">할부기간</th>
            <th style="color:#000">고객부담회차</th>
        </tr>
                 <tr>
            <td class="text-center">
                <div class="mi-card-image-group kb_card">
                    <p class="mi-text-interval-sxlg mi-alt-text c_black"></p>
                </div>
            </td>
            <td style="padding: 10px 0; line-height:20px; vertical-align: middle!important;"><pre class="text-center mi-font-13 mi-text-interval-basic mi-font-darkblack">6개월<br/>10개월<br/>12개월</pre></td>
            <td style="padding: 10px 0; line-height:20px; vertical-align: middle!important;"><pre class="text-center mi-font-13 mi-text-interval-basic mi-font-darkblack">1~3회차<br/>1~4회차<br/>1~5회차</pre></td>
        </tr>
                <tr>
            <td class="text-center">
                <div class="mi-card-image-group shinhan_card">
                    <p class="mi-text-interval-sxlg mi-alt-text c_black"></p>
                </div>
            </td>
            <td style="padding: 10px 0; line-height:20px; vertical-align: middle!important;"><pre class="text-center mi-font-13 mi-text-interval-basic mi-font-darkblack">10개월<br/>12개월</pre></td>
            <td style="padding: 10px 0; line-height:20px; vertical-align: middle!important;"><pre class="text-center mi-font-13 mi-text-interval-basic mi-font-darkblack">1~4회차<br/>1~5회차</pre></td>
        </tr>
                <tr>
            <td class="text-center">
                <div class="mi-card-image-group woori_card">
                    <p class="mi-text-interval-sxlg mi-alt-text c_black"></p>
                </div>
            </td>
            <td style="padding: 10px 0; line-height:20px; vertical-align: middle!important;"><pre class="text-center mi-font-13 mi-text-interval-basic mi-font-darkblack">10개월<br/>12개월</pre></td>
            <td style="padding: 10px 0; line-height:20px; vertical-align: middle!important;"><pre class="text-center mi-font-13 mi-text-interval-basic mi-font-darkblack">1~3회차<br/>1~4회차</pre></td>
        </tr>
                <tr>
            <td class="text-center">
                <div class="mi-card-image-group nh_card">
                    <p class="mi-text-interval-sxlg mi-alt-text c_black"></p>
                </div>
            </td>
            <td style="padding: 10px 0; line-height:20px; vertical-align: middle!important;"><pre class="text-center mi-font-13 mi-text-interval-basic mi-font-darkblack">5개월<br/>7개월</pre></td>
            <td style="padding: 10px 0; line-height:20px; vertical-align: middle!important;"><pre class="text-center mi-font-13 mi-text-interval-basic mi-font-darkblack">1~2회차<br/>1~3회차</pre></td>
        </tr>
                <tr>
            <td class="text-center">
                <div class="mi-card-image-group bc_card">
                    <p class="mi-text-interval-sxlg mi-alt-text c_black"></p>
                </div>
            </td>
            <td style="padding: 10px 0; line-height:20px; vertical-align: middle!important;"><pre class="text-center mi-font-13 mi-text-interval-basic mi-font-darkblack">10개월<br/>12개월</pre></td>
            <td style="padding: 10px 0; line-height:20px; vertical-align: middle!important;"><pre class="text-center mi-font-13 mi-text-interval-basic mi-font-darkblack">1~3회차<br/>1~4회차</pre></td>
        </tr>
                <tr>
            <td class="text-center">
                <div class="mi-card-image-group hana_card">
                    <p class="mi-text-interval-sxlg mi-alt-text c_black"></p>
                </div>
            </td>
            <td style="padding: 10px 0; line-height:20px; vertical-align: middle!important;"><pre class="text-center mi-font-13 mi-text-interval-basic mi-font-darkblack">6개월<br/>10개월<br/>12개월</pre></td>
            <td style="padding: 10px 0; line-height:20px; vertical-align: middle!important;"><pre class="text-center mi-font-13 mi-text-interval-basic mi-font-darkblack">1~3회차<br/>1~4회차<br/>1~5회차</pre></td>
        </tr>
            </table>
    <div class="mi-group-t10">
          <p style="font-size: 12px; color: #a0a0a0; line-height: 20px;">- 고객 부담 회차를 제외한 잔여 회차는 카드사 부담입니다.</p>
<p style="font-size: 12px; color: #a0a0a0; line-height: 20px;">- BC카드는 Non-BC카드 제외</p>
<p style="font-size: 12px; color: #a0a0a0; line-height: 20px;">- 농협카드 고객부담회차 : 5~6개월 할부 시 1~2회차, 7~10개월 할부 시 1~3회차</p>    </div> 
</div>
       
<!--ARS 무이자-->
<div>
    <div class="mi-bold mi-font-darkblack mi-group-t30 mi-group-b10" style="font-size:16px; line-height:24px;">ARS 무이자</div>
    <table class="cardTable">
        <colgroup>
            <col width="122">
            <col width="165">
            <col width="165">
            <col width="165">
        </colgroup>
        <tr>
            <th style="color:#000">카드사</th>
            <th style="color:#000">할부기간</th>
            <th style="color:#000">고객부담회차</th>
            <th style="color:#000">전화번호 (ARS)</th>
        </tr>
                <tr>
            <td class="text-center">
                <div class="mi-card-image-group nh_card">
                    <p class="mi-text-interval-sxlg mi-alt-text c_black">NH농협카드</p>
                </div>
            </td>
            <td style="padding: 10px 0; line-height:20px; vertical-align: middle!important;"><pre class="text-center mi-font-13 mi-text-interval-basic mi-font-darkblack">5~6개월<br/>7~10개월<br/>11~12개월</pre></td>
            <td style="padding: 10px 0; line-height:20px; vertical-align: middle!important;"><pre class="text-center mi-font-13 mi-text-interval-basic mi-font-darkblack">1회차<br/>1~2회차<br/>1~3회차</pre></td>
            <td style="padding: 20px 0; line-height:20px; vertical-align: middle!important;"><pre class="text-center mi-font-13 mi-text-interval-basic mi-font-darkblack">1644-2009</pre></td>
        </tr>
                <tr>
            <td class="text-center">
                <div class="mi-card-image-group bc_card">
                    <p class="mi-text-interval-sxlg mi-alt-text c_black">비씨카드(페이북)</p>
                </div>
            </td>
            <td style="padding: 10px 0; line-height:20px; vertical-align: middle!important;"><pre class="text-center mi-font-13 mi-text-interval-basic mi-font-darkblack">4~6개월<br/>7~10개월<br/>11~12개월</pre></td>
            <td style="padding: 10px 0; line-height:20px; vertical-align: middle!important;"><pre class="text-center mi-font-13 mi-text-interval-basic mi-font-darkblack">1회차<br/>1~2회차<br/>1~3회차</pre></td>
            <td style="padding: 20px 0; line-height:20px; vertical-align: middle!important;"><pre class="text-center mi-font-13 mi-text-interval-basic mi-font-darkblack">1899-5772</pre></td>
        </tr>
            </table>
    <div class="mi-group-t10">
        <p style="font-size: 12px; color: #a0a0a0; line-height: 20px;">- 카드사 회원이 ARS 신청후 적용가능합니다.</p>
<p style="font-size: 12px; color: #a0a0a0; line-height: 20px;">- BC카드는 Non-BC카드 제외</p>
<p style="font-size: 12px; color: #a0a0a0; line-height: 20px;">- 농협카드는 30만원 이상 구매 시 적용 됩니다.</p>
<p style="font-size: 12px; color: #a0a0a0; line-height: 20px;">- 농협카드는 100만원 이상 구매 시 5~6개월 무이자 적용 됩니다.(단, ARS 사전 신청 필수)</p>    </div>
</div>
<p style="color:#a0a0a0; font-size:12px; margin-top:30px; background-color:#f5f5f5; height:40px; padding:0 10px; line-height:40px;">※ 카드사 및 금융감독기관에 의해 변경될 수 있습니다.</p >						
			</div>
						<div class="kakaoPay " style="display:none;padding:0px 20px 20px 20px;display:none;border-bottom:1px solid #ebebeb;" id="kakaoPay1">
						<style>
			#admin_text p {font-family:'SD Gothic Neo', 'Apple SD Gothic Neo' , sans-serif!important;font-size:13px!important;}
			#admin_text span {font-family:'SD Gothic Neo', 'Apple SD Gothic Neo' , sans-serif!important;font-size:13px!important;}
		</style>

		<div id="admin_text" style="padding-top:20px;">
					<p><span style="color: rgb(20, 20, 20); font-family: 나눔고딕, NanumGothic, sans-serif;">· Kakao Pay 는 카카오에서 운영하는 간편결제 서비스입니다.</span></p><p><span style="color: rgb(20, 20, 20);">&nbsp;</span></p><p><span style="color: rgb(20, 20, 20); font-family: 나눔고딕, NanumGothic, sans-serif;">※ Kakao Pay 지원 카드</span></p><p><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);">· 삼성, 신한, KB국민, 현대, 롯데, NH농협, 비씨, 하나카드</span></p><p><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);">· 카카오페이로 결제 시 카드사에서 제공하는 제휴 및 청구할인은 이용불가합니다.</span></p><p><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);">&nbsp;</span></p><p><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);"></span><span style="color: rgb(20, 20, 20); font-family: 나눔고딕, NanumGothic, sans-serif;">※ iPhone Safari에서 Kakao Pay 결제 시 참고</span></p><p><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);">· 애플 Safari</span><font color="#141414" face="나눔고딕, NanumGothic, sans-serif">&nbsp;브라우저 보안 강화 정책으로 인해 간혹 결제가 실패하는 경우가 있습니다.</font></p><p><font color="#141414" face="나눔고딕, NanumGothic, sans-serif"></font><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);">· 이러한 경우 "</span><font color="#141414" face="나눔고딕, NanumGothic, sans-serif">iPhone 설정 &gt; Safari &gt; 위조된 웹사이트 경고 &gt; 설정 ON -&gt; OFF</font><span style="color: rgb(20, 20, 20); font-family: 나눔고딕, NanumGothic, sans-serif;">​" 후 이용해 주세요.</span></p><p><span style="color: rgb(20, 20, 20);">&nbsp;</span></p><p><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);">※ Kakao Pay 안드로이드 지원 단말기</span></p><p><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);">· 안드로이드 4.0 아이스크림 샌드위치 이상</span></p><p><span style="color: rgb(20, 20, 20);">&nbsp;</span></p><p><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);">※ Kakao Pay iOS 지원 단말기</span></p><p><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);">· iOS 6.0 이상(iPhone 4 이상 단말기 사용가능)</span><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);">​</span><span style="color: rgb(20, 20, 20);">&nbsp;</span></p><p>&nbsp;</p>																																																												
		</div>
						
			</div>
				<div class="nPay " style="display:none;padding:0px 20px 20px 20px;display:none;border-bottom:1px solid #ebebeb;">
						<style>
			#admin_text p {font-family:'SD Gothic Neo', 'Apple SD Gothic Neo' , sans-serif!important;font-size:13px!important;}
			#admin_text span {font-family:'SD Gothic Neo', 'Apple SD Gothic Neo' , sans-serif!important;font-size:13px!important;}
		</style>

		<div id="admin_text" style="padding-top:20px;">
					<p>· 주문 변경 시 카드사 혜택 및 할부 적용 여부는 해당 카드사 정책에 따라 변경될 수 있습니다.</p><p>· 네이버페이는 네이버ID로 별도 앱 설치 없이 신용카드 또는 은행계좌 정보를 등록하여 네이버페이 비밀번호로 결제할 수 있는 간편결제 서비스입니다.</p><p>· 네이버페이 카드 간편결제는 네이버페이에서 제공하는 카드사 별 무이자, 청구할인 혜택을 받을 수 있습니다.​&nbsp;</p>																																																																																																																													
		</div>
						<div class="tab_information_naver" style="margin-top:20px">
			<div class="order_tab_style">
				<ul class="after_clear">
					<li style="width:33.333%;">
						<input type="radio" id="np_bankSupport" name="choice_naver_info" class="hidden_radio" checked="checked"/>
						<label for="np_bankSupport" class="fake_radio">지원은행</label>
					</li>
					<li style="width:33.333%;">
						<input type="radio" id="np_supportCard" name="choice_naver_info" class="hidden_radio" />
						<label for="np_supportCard" class="fake_radio">지원카드</label>
					</li>
					<li style="width:33.333%;">
						<input type="radio" id="np_paymentLimit" name="choice_naver_info" class="hidden_radio" />
						<label for="np_paymentLimit" class="fake_radio">결제불가시간</label>
					</li>
				</ul>
				<script>
					$("input[name=choice_naver_info]").click(function() {
						var targetId = $(this).attr("id");
						$(".information_" + targetId).show().siblings().hide();
					});
				</script>
			</div>
			
			<div class="information_naver_contents">
				<div class="information_np_bankSupport" style="display:block;">
					<div class="bank_support_list">
						<img src="https://static-ux.mustit.co.kr/img/front/order/img-naverpay-bank.png" class="mi-image-full mi-group-t20">
					</div>
				</div>
				<div class="information_np_supportCard" style="display:none;">
					<div class="card_support_list">
						<img src="https://static-ux.mustit.co.kr/img/front/order/img-naverpay-card.png" class="mi-image-full mi-group-t20">
					</div>
				</div>
				<div class="information_np_paymentLimit" style="display:none;">
					<div class="bank_support_top mi-group-b10">
						<h4 class="fs16 mi-font-mblack mi-group-b10">※ 은행별 점검시간에 따른 결제불가 안내</h4>
						<p>- 공통 점검시간 : 매일 23:20 ~ 익일 00:40</p>
						<p>- 은행별 정기 점검시간</p>
					</div>
					<div class="bank_support_table">
						<table class="mi-table mi-table-secondary mi-table-left">
							<colgroup>
								<col width="100"/>
								<col width="*"/>
							</colgroup>
							<tr>
								<th>KDB산업</th>
								<td>매주 일요일 00:00~04:00</td>
							</tr>
							<tr>
								<th>KB국민</th>
								<td>매월 세번째 일요일 전날<br/>23:50~00:30, 일요일 05:00~05:30</td>
							</tr>
							<tr>
								<th>NH농협</th>
								<td>매월 셋째주 월요일 00:00~04:00</td>
							</tr>
							<tr>
								<th>우리은행</th>
								<td>매주 목요일 23:45~금요일 00:45,<br/>매달 둘째주 일요일 02:00~06:00</td>
							</tr>
							<tr>
								<th>씨티은행</th>
								<td>공휴일 다음날<br/>(매주 월요일 포함 00:00~02:00)</td>
							</tr>
							<tr>
								<th>대구은행</th>
								<td>분기말에 한번 토요일 00:00~06:00</td>
							</tr>
							<tr>
								<th>부산은행</th>
								<td>매월 셋째주 월요일 00:00~04:00</td>
							</tr>
							<tr>
								<th>광주은행</th>
								<td>둘째주 일요일 02:00~06:00</td>
							</tr>
							<tr>
								<th>제주은행</th>
								<td>월,목 04:30~05:00</td>
							</tr>
							<tr>
								<th>전북은행</th>
								<td>매월 둘째주 토요일 00:00~04:00</td>
							</tr>
							<tr>
								<th>경남은행</th>
								<td>매월 둘째주 일요일 00:00~03:00</td>
							</tr>
							<tr>
								<th>우체국</th>
								<td>매일 04:00~05:00</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>	
				
			</div>
				<div class="payCo " style="display:none;padding:0px 20px 20px 20px;display:none;border-bottom:1px solid #ebebeb;">
						<style>
			#admin_text p {font-family:'SD Gothic Neo', 'Apple SD Gothic Neo' , sans-serif!important;font-size:13px!important;}
			#admin_text span {font-family:'SD Gothic Neo', 'Apple SD Gothic Neo' , sans-serif!important;font-size:13px!important;}
		</style>

		<div id="admin_text" style="padding-top:20px;">
					<p><span style="color: rgb(20, 20, 20);">· </span><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);">PAYCO는 엔에이치엔페이코㈜에서 운영하는 서비스이며, PAYCO ID 하나로 간편하게 결제하실 수 있습니다.</span>

</p><p><span style="color: rgb(20, 20, 20);">&nbsp;</span></p><p><span style="color: rgb(20, 20, 20);">※ </span><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);">PAYCO 지원 카드</span></p><p><span style="color: rgb(20, 20, 20);">
· </span><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);">삼성, 신한, KB국민, 현대, 롯데, NH농협, 비씨, 우리, 씨티, 하나카드,&nbsp;</span><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);">비씨, KB국민, 현대,NH농협카드로&nbsp;</span></p><p><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);">&nbsp; 결제 시 카드사에서 제공하는 제휴 및 청구할인 이용이 가능합니다.</span></p><p><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);">&nbsp; (단, 정책에 따라 일부 변동이 있을 수 있습니다.)&nbsp;</span></p><p><span style="color: rgb(20, 20, 20);">&nbsp;</span></p><p><span style="color: rgb(20, 20, 20);">
※ </span><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);">PAYCO 안드로이드 지원 단말기&nbsp;</span></p><p><span style="color: rgb(20, 20, 20);">· </span><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);">안드로이드 4.0 아이스크림 샌드위치 이상&nbsp;</span></p><p><span style="color: rgb(20, 20, 20);">&nbsp;</span></p><p><span style="color: rgb(20, 20, 20);">
※ </span><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);">PAYCO iOS 지원 단말기</span></p><p><span style="color: rgb(20, 20, 20);">·</span><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);"> iOS 7.0 이상</span></p><p><span style="color: rgb(20, 20, 20);">&nbsp;</span></p>																				
		</div>
						
			</div>
				<div class="samsungPay " style="display:none;padding:0px 20px 20px 20px;display:none;border-bottom:1px solid #ebebeb;">
						<style>
			#admin_text p {font-family:'SD Gothic Neo', 'Apple SD Gothic Neo' , sans-serif!important;font-size:13px!important;}
			#admin_text span {font-family:'SD Gothic Neo', 'Apple SD Gothic Neo' , sans-serif!important;font-size:13px!important;}
		</style>

		<div id="admin_text" style="padding-top:20px;">
					<p><span style="color: rgb(20, 20, 20);">· </span><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);">SAMSUNG pay</span><span style="color: rgb(20, 20, 20);">​</span><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);"> 는 삼성에서 운영하는 온/오프라인 통합 간편결제 서비스입니다.</span></p><p><span style="color: rgb(20, 20, 20);">&nbsp;</span></p><p><span style="color: rgb(20, 20, 20);">
※ </span><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);">SAMSUNG pay 지원 카드&nbsp;</span></p><p><span style="color: rgb(20, 20, 20);">· </span><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);">삼성, 신한, KB국민, 현대, 롯데, NH농협, 비씨, 우리, 씨티, 하나카드&nbsp;</span></p><p><span style="color: rgb(20, 20, 20);">&nbsp;</span></p><p><span style="color: rgb(20, 20, 20);">
※</span><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);"> SAMSUNG pay 안드로이드 지원 단말기&nbsp;</span></p><p><span style="color: rgb(20, 20, 20);">· </span><span style="font-family: 나눔고딕, NanumGothic, sans-serif; color: rgb(20, 20, 20);">안드로이드 5.0 이상</span></p><p><span style="color: rgb(20, 20, 20);">&nbsp;</span></p>															
		</div>
						
			</div>
		
</div>

<script>
	$(document).ready(function() {
		// 카카오뱅크미니 인증 불가 처리 (lib/js/common.js)
		disableKakaoMiniAccount($('#no_bank_name'), $('#account_number'));
	});
</script>				</div>
			</div>	
				<div class="mutong border_r_none no_module1 mi-box-ap20 mi-box-p30" style="display:none;border-bottom:1px solid #ebebeb;">
					<div id="pay_zero" class="mi-text-center mi-group-b10" style="display:none;">
						<input type="radio" id="no_module1" name="paymethod" value="bank_soodong" data-sts="point" class="mi-hidden" /> 
						<span class="h3 mi-bold mi-font-darkblack">포인트 전액 결제</span>
					</div>
					<div class="mi-font-gray fs13 mi-text-center">적립금, 상품권을 이용하여 현금과 동일하게 결제 가능한 서비스입니다.</div>
				</div>
				<div class="mutong border_r_none no_module2" style="display:none;">
					<div class="c_gray9">- 관리자만 보이는 무통장입금(모듈미설치) 입니다.</div>
				</div>
			</div>
			<div id="ordererConsent" class="mi-float-right" style="width:450px">
				

				<div class="mi-box-ap20 mi-border-whitegray mi-list-group">
					<h3 class="mi-font-darkblack">주문자 동의</h3>
				</div>
				<div class="mi-border-whitegray mi-group-minus">	
					<div class="mi-accordion reverse-v border_none">
						<div class="mi-accordion-title no-set-arrow">
							<p class="mi-font-darkblack mi-font-basic">주문할 상품정보(상품명, 가격, 배송정보)에 동의합니다.</p>
						</div>
					</div>
					<div class="mi-accordion reverse-v border_none">
						<div class="mi-accordion-title">
							<p class="mi-font-darkblack mi-font-basic">전자금융거래 이용약관에 동의합니다.</p>
						</div>
						<div class="mi-accordion-contents" id="financial_rule">
							<pre id="electronic_finance_rule" class="mi-font-basic mi-font-darkblack mi-text-left mi-over-scroll-y padding_r_15" style="white-space:pre-wrap;height:300px;display:none;">제1조 (목적) 
이 약관은 주식회사 케이지이니시스(이하 '회사'라 합니다)가 제공하는 전자지급결제대행서비스 및 결제대금예치서비스를 이용자가 이용함에 있어 회사와 이용자 사이의 전자금융거래에 관한 기본적인 사항을 정함을 목적으로 합니다. 

제2조 (용어의 정의)
① 이 약관에서 정하는 용어의 정의는 다음 각 호와 같습니다. 

1. '전자금융거래'라 함은 회사가 전자적 장치를 통하여 전자지급결제대행서비스 및 결제대금예치서비스(이하 '전자금융거래 서비스'라고 합니다)를 제공하고, 이용자가 회사의 종사자와 직접 대면하거나 의사소통을 하지 아니하고 자동화된 방식으로 이를 이용하는 거래를 말합니다. 

2. '전자지급수단'이라 함은 전자자금이체, 직불전자지급수단, 선불전자지급수단, 전자화폐, 신용카드, 전자채권 그 밖에 전자적 방법에 따른 지급 수단을 말한다.

3. '전자지급결제대행서비스'라 함은 전자적 방법으로 재화의 구입 또는 용역의 이용에 있어서 지급결제정보를 송신하거나 수신하는 것 또는 그 대가의 정산을 대행하거나 매개하는 서비스를 말합니다.

4. '결제대금예치서비스'라 함은 '이용자'가 재화의 구입 또는 용역의 이용에 있어서 그 대가(이하 '결제대금'이라 한다)의 전부 또는 일부를 재화 또는 용역(이하 '재화 등'이라 합니다)을 공급받기 전에 미리 지급하는 경우, '회사'가 '이용자'의 물품수령 또는 서비스 이용 확인 시점까지 결제대금을 예치하는 서비스를 말합니다. 

5. '이용자'라 함은 이 약관에 동의하고 '회사'가 제공하는 전자금융거래 서비스를 이용하는 자를 말합니다.

6. '접근매체'라 함은 전자금융거래에 있어서 거래지시를 하거나 '이용자' 및 거래내용의 진실성과 정확성을 확보하기 위하여 사용되는 수단 또는 정보로서 전자식 카드 및 이에 준하는 전자적 정보(신용카드번호를 포함한다), '전자서명법'상의 인증서, '회사'에 등록된 '이용자'번호, '이용자'의 생체정보, 이상의 수단이나 정보를 사용하는데 필요한 비밀번호 등 전자금융거래법 제2조 제10호 에서 정하고 있는 것을 말합니다.

7. '거래지시'라 함은 '이용자'가 본 약관에 의하여 체결되는 전자금융거래계약에 따라 '회사'에 대하여 전자금융거래의 처리를 지시하는 것을 말합니다. 

8. '오류'라 함은 '이용자'의 고의 또는 과실 없이 전자금융거래가 전자금융거래계약 또는 '이용자'의 거래지시에 따라 이행되지 아니한 경우를 말합니다.

9. '정보통신망'이라 함은 전기통신설비를 이용하거나 전기통신설비와 컴퓨터 및 컴퓨터의 이용기술을 활용하여 정보를 수집•가공•검색•송신 또는 수신하는 정보통신체제를 말한다. 
② 본 조 및 본 약관의 다른 조항에서 정의한 것을 제외하고는 전자금융거래법등 관계 법령에 따릅니다. 

제3조 (약관의 명시 및 변경)
① 회사는 이용자가 전자금융거래 서비스를 이용하기 전에 이 약관을 게시하고 이용자가 이 약관의 중요한 내용을 확인할 수 있도록 합니다.
② 회사는 이용자의 요청이 있는 경우 전자문서의 전송방식에 의하여 본 약관의 사본을 이용자에게 교부합니다. 
③ 회사가 약관을 변경하는 때에는 그 시행일 1개월 전에 변경되는 약관을 회사가 제공하는 전자금융거래 서비스 이용 초기화면 및 회사의 홈페이지에 게시함으로써 이용자에게 공지합니다.

제4조 (전자지급결제대행서비스의 종류)
회사가 제공하는 전자지급결제대행서비스는 지급결제수단에 따라 다음과 같이 구별됩니다. 
1. 신용카드결제대행서비스: 이용자가 결제대금의 지급을 위하여 제공한 지급결제수단이 신용카드인 경우로서, 회사가 전자결제시스템을 통하여 신용카드 지불정보를 송,수신하고 결제대금의 정산을 대행하거나 매개하는 서비스를 말합니다. 
2. 계좌이체대행서비스: 이용자가 결제대금을 회사의 전자결제시스템을 통하여 금융기관에 등록한 자신의 계좌에서 출금하여 원하는 계좌로 이체할 수 있는 실시간 송금 서비스를 말합니다. 
3. 가상계좌서비스: 이용자가 결제대금을 현금으로 결제하고자 경우 회사의 전자결제시스템을 통하여 자동으로 이용자만의 고유한 일회용 계좌의 발급을 통하여 결제대금의 지급이 이루어지는 서비스를 말합니다. 
4. 기타: 회사가 제공하는 서비스로서 지급결제수단의 종류에 따라 '휴대폰 결제대행서비스', 'ARS결제대행서비스', '상품권결제대행서비스'등이 있습니다.

제5조 (결제대금예치서비스의 내용)
① 이용자(이용자의 동의가 있는 경우에는 재화 등을 공급받을 자를 포함합니다. 이하 본조에서 같습니다)는 재화 등을 공급받은 사실을 재화 등을 공급받은 날부터 3영업일 이내에 회사에 통보하여야 합니다.
② 회사는 이용자로부터 재화 등을 공급받은 사실을 통보받은 후 회사와 통신판매업자간 사이에서 정한 기일 내에 통신판매업자에게 결제대금을 지급합니다.
③ 회사는 이용자가 재화 등을 공급받은 날부터 3영업일이 지나도록 정당한 사유의 제시없이 그 공급받은 사실을 회사에 통보하지 아니하는 경우에는 이용자의 동의없이 통신판매업자에게 결제대금을 지급할 수 있습니다.
④ 회사는 통신판매업자에게 결제대금을 지급하기 전에 이용자에게 결제대금을 환급받을 사유가 발생한 경우에는 그 결제대금을 소비자에게 환급합니다.
⑤ 회사는 이용자와의 결제대금예치서비스 이용과 관련된 구체적인 권리,의무를 정하기 위하여 본 약관과는 별도로 결제대금예치서비스이용약관을 제정할 수 있습니다. 

제6조 (이용시간)
① 회사는 이용자에게 연중무휴 1일 24시간 전자금융거래 서비스를 제공함을 원칙으로 합니다. 단, 금융기관 기타 결제수단 발행업자의 사정에 따라 달리 정할 수 있습니다. 
② 회사는 정보통신설비의 보수, 점검 기타 기술상의 필요나 금융기관 기타 결제수단 발행업자의 사정에 의하여 서비스 중단이 불가피한 경우, 서비스 중단 3일 전까지 게시가능한 전자적 수단을 통하여 서비스 중단 사실을 게시한 후 서비스를 일시 중단할 수 있습니다. 다만, 시스템 장애복구, 긴급한 프로그램 보수, 외부요인 등 
불가피한 경우에는 사전 게시없이 서비스를 중단할 수 있습니다.

제7조 (접근매체의 선정과 사용 및 관리)
① 회사는 전자금융거래 서비스 제공 시 접근매체를 선정하여 이용자의 신원, 권한 및 거래지시의 내용 등을 확인할 수 있습니다. 
② 이용자는 접근매체를 제3자에게 대여하거나 사용을 위임하거나 양도 또는 담보 목적으로 제공할 수 없습니다.
③ 이용자는 자신의 접근매체를 제3자에게 누설 또는 노출하거나 방치하여서는 안되며, 접근매체의 도용이나 위조 또는 변조를 방지하기 위하여 충분한 주의를 기울여야 합니다. 
④ 회사는 이용자로부터 접근매체의 분실이나 도난 등의 통지를 받은 때에는 그 때부터 제3자가 그 접근매체를 사용함으로 인하여 이용자에게 발생한 손해를 배상할 책임이 있습니다.

제8조 (거래내용의 확인)
① 회사는 이용자와 미리 약정한 전자적 방법을 통하여 이용자의 거래내용(이용자의 '오류정정 요구사실 및 처리결과에 관한 사항'을 포함합니다)을 확인할 수 있도록 하며, 이용자의 요청이 있는 경우에는 요청을 받은 날로부터 2주 이내에 모사전송 등의 방법으로 거래내용에 관한 서면을 교부합니다.
② 회사가 이용자에게 제공하는 거래내용 중 거래계좌의 명칭 또는 번호, 거래의 종류 및 금액, 거래상대방을 나타내는 정보, 거래일자, 전자적 장치의 종류 및 전자적 장치를 식별할 수 있는 정보와 해당 전자금융거래와 관련한 전자적 장치의 접속기록은 5년간, 건당 거래금액이 1만원 이하인 소액 전자금융거래에 관한 기록, 
전자지급수단 이용시 거래승인에 관한 기록, 이용자의 오류정정 요구사실 및 처리결과에 관한 사항은 1년간의 기간을 대상으로 한다.
③ 이용자가 제1항에서 정한 서면교부를 요청하고자 할 경우 다음의 주소 및 전화번호로 요청할 수 있습니다. 
주소: 463-400 경기도 성남시 분당구 대왕판교로 660 유스페이스A동 5층 (주)케이지이니시스 
이메일 주소: sm@inicis.com
전화번호: 1588-4954

제9조 (오류의 정정 등) 
① 이용자는 전자금융거래 서비스를 이용함에 있어 오류가 있음을 안 때에는 회사에 대하여 그 정정을 요구할 수 있습니다. 
② 회사는 전항의 규정에 따른 오류의 정정요구를 받은 때에는 이를 즉시 조사하여 처리한 후 정정요구를 받은 날부터 2주 이내에 그 결과를 이용자에게 알려 드립니다. 

제10조 (회사의 책임)
① '회사'는 다음 각 호의 사유 발생으로 인하여 '이용자'에게 손해가 발생하였을 경우 이에 대한 배상책임이 있습니다. 
1. 접근매체의 위조나 변조로 발생한 사고
2. 계약체결 또는 거래지시의 전자적 전송이나 처리 과정에서 발생한 사고
3. 전자금융거래를 위한 전자적 장치 또는 ‘정보통신망’에 침입하여 거짓이나 그 밖의 부정한 방법으로 획득한 접근매체의 이용으로 발생한 사고
② 본 조 제1항에도 불구하고 다음 각 호의 사유로 발생한 사고에 대해선, 그 책임의 전부 또는 일부를 '이용자'가 부담합니다. 
1. 법인('중소기업기본법' 제2조 제2항에 의한 소기업을 제외합니다)인 '이용자'에게 손해가 발생한 경우로서 '회사'가 사고를 방지하기 위하여 보안절차를 수립하고 이를 철저히 준수하는 등 합리적으로 요구되는 충분한 주의의무를 다한 경우
2. '이용자'가 제7조 제2항을 위반하여 접근매체를 제3자에게 대여하거나 사용을 위임하거나 양도 또는 담보 목적으로 제공한 경우
3. 제3자가 권한 없이 '이용자'의 접근매체를 이용하여 전자금융거래를 할 수 있음을 알았거나 알 수 있었음에도 불구하고 '이용자'가 자신의 접근매체를 누설 또는 노출하거나 방치한 경우
4. 제7조 제1항의 따른 확인 외에 보안강화를 위하여 전자금융거래 시 '회사'가 요구하는 추가적인 보안조치를 요구하였음에도 불구하고 '이용자'가 정당한 사유 없이 이를 거부하여 '회사'의 정보통신망에 침입하여 거짓이나 그 밖의 부정한 방법으로 사고가 발생한 경우
5. 이용자가 제3호에 따른 추가적인 보안조치에 사용되는 접근매체에 대하여 다음 각 목의 어느 하나에 해당하는 행위를 하여 '회사'의 정보통신망에 침입하여 거짓이나 그 밖의 부정한 방법으로 사고가 발생한 경우
가. 누설•노출 또는 방치한 행위
나. 제3자에게 대여하거나 그 사용을 위임한 행위 또는 양도나 담보의 목적으로 제공한 행위

제11조 (전자지급거래계약의 효력)
① 회사는 이용자의 거래지시가 전자지급거래에 관한 경우 그 지급절차를 대행하며, 전자지급거래에 관한 거래지시의 내용을 전송하여 지급이 이루어지도록 합니다. 
② 회사는 이용자의 전자지급거래에 관한 거래지시에 따라 지급거래가 이루어지지 않은 경우 수령한 자금을 이용자에게 반환하여야 합니다.

제12조 (거래지시의 철회)
① 이용자는 전자지급거래에 관한 거래지시의 경우 지급의 효력이 발생하기 전까지 거래지시를 철회할 수 있습니다. 
② 전항의 지급의 효력 발생 시점은 다음 각 호의 사유를 말합니다. 
1. 전자자금이체의 경우에는 거래 지시된 금액의 정보에 대하여 수취인의 계좌가 개설되어 있는 금융기관의 계좌이체 원장에 입금기록이 끝난 때
2. 그 밖의 전자지급수단으로 지급하는 경우에는 거래 지시된 금액의 정보가 수취인의 계좌가 개설되어 있는 금융기관의 전자적 장치에 입력이 끝난 때
③ 이용자는 지급의 효력이 발생한 경우에는 전자상거래 등에서의 소비자보호에 관한 법률 등 관련 법령상 청약의 철회의 방법 또는 본 약관 제5조에서 정한 바에 따라 결제대금을 반환받을 수 있습니다.

제13조 (전자지급결제대행 서비스 이용 기록의 생성 및 보존)
① 회사는 이용자가 전자금융거래의 내용을 추적, 검색하거나 그 내용에 오류가 발생한 경우에 이를 확인하거나 정정할 수 있는 기록을 생성하여 보존합니다.
② 전항의 규정에 따라 회사가 보존하여야 하는 기록의 종류 및 보존방법은 제8조 제2항에서 정한 바에 따릅니다. 

제14조 (전자금융거래정보의 제공금지)
회사는 전자금융거래 서비스를 제공함에 있어서 취득한 이용자의 인적사항, 이용자의 계좌, 접근매체 및 전자금융거래의 내용과 실적에 관한 정보 또는 자료를 이용자의 동의를 얻지 아니하고 제3자에게 제공,누설하거나 업무상 목적 외에 사용하지 아니합니다. 다만, 「금융실명거래 및 비밀보장에 관한 법률」 제4조제1항 단서의 규정에 따른 경우 및 그 밖에 다른 법률에서 정하는 바에 따른 경우에는 그러하지 아니하다.

제15조 (분쟁처리 및 분쟁조정)
① 이용자는 다음의 분쟁처리 책임자 및 담당자에 대하여 전자금융거래 서비스 이용과 관련한 의견 및 불만의 제기, 손해배상의 청구 등의 분쟁처리를 요구할 수 있습니다. 
담당자: RM팀
연락처(전화번호, FAX): 3430-5847, 3430-5889
E-mail : inirm@inicis.com
② 이용자가 회사에 대하여 분쟁처리를 신청한 경우에는 회사는 15일 이내에 이에 대한 조사 또는 처리 결과를 이용자에게 안내합니다. 
③ 이용자는 '금융감독기구의 설치 등에 관한 법률' 제51조의 규정에 따른 금융감독원의 금융분쟁조정위원회나 '소비자보호법' 제31조 제1항의 규정에 따른 소비자보호원에 회사의 전자금융거래 서비스의 이용과 관련한 분쟁조정을 신청할 수 있습니다.

제16조 (회사의 안정성 확보 의무)
회사는 전자금융거래의 안전성과 신뢰성을 확보할 수 있도록 전자금융거래의 종류별로 전자적 전송이나 처리를 위한 인력, 시설, 전자적 장치 등의 정보기술부문 및 전자금융업무에 관하여 금융감독위원회가 정하는 기준을 준수합니다.

제17조 (약관외 준칙 및 관할)
① 이 약관에서 정하지 아니한 사항에 대하여는 전자금융거래법, 전자상거래 등에서의 소비자 보호에 관한 법률, 통신판매에 관한 법률, 여신전문금융업법 등 소비자보호 관련 법령에서 정한 바에 따릅니다.
② 회사와 이용자간에 발생한 분쟁에 관한 관할은 민사소송법에서 정한 바에 따릅니다. 
부칙 (2010년 4월 12일)
최초 시행일자 : 2007년 1월 1일
변경 공고일자 : 2018년 2월 23일
변경 시행일자 : 2018년 3월 26일</pre>
                            <pre id="only_toss_rule" class="mi-font-basic mi-font-darkblack mi-text-left mi-over-scroll-y padding_r_15" style="white-space:pre-wrap;height:300px;display:none;">제 1 장 총칙

제 1 조 (목적)
본 약관은 주식회사 비바리퍼블리카(이하 "회사"라 함)가 제공하는 전자금융거래 서비스 및 관련 서비스(이하 "서비스"라 함)의 이용과 관련하여, 회사와 회원간 또는 회원 간의 권리 및 의무 및 책임사항 및 서비스 이용조건 및 절차 등 기본적인 사항을 규정함을 목적으로 합니다.

제 2 조 (용어의 정의)
본 약관에서 사용하는 용어의 정의는 다음과 같습니다.
"회원"이란 본 약관에 따라 가입신청에 대한 회사의 승낙을 받아 회사가 제공하는 서비스를 이용하는 자를 말합니다.
"토스앱"이란 스마트폰, 태블릿 등 휴대용 단말기(이하 "모바일 디바이스"라 함)에 설치되어 회사가 제공하는 서비스를 구현하는 애플리케이션을 말합니다.
"접근매체"라 함은 전자금융거래에 있어서 거래지시를 하거나 이용자 및 거래내용의 진실성과 정확성을 확보하기 위하여 사용되는 전자금융거래법 제2조 제10호에서 정하는 수단 또는 정보로서, 전자금융거래서비스를 이용하기 위하여 회사에 등록된 암호, 금융기관 또는 전자금융업자에 등록된 회원번호 및 기타 회사가 지정한 수단을 말합니다.
"PIN"이란 회원이 서비스의 이용과 관련하여, 회원이 회원 본인 확인 및 식별, 거래 승인을 위하여 회원이 직접 설정하고 토스앱에 직접 입력하는 숫자와 문자의 조합 또는 그에 상응하는 수단을 말합니다.
"전자금융거래"라 함은 회사가 전자적 장치를 통하여 금융상품 및 서비스를 제공(이하 "전자금융업무"라 함)하고, 이용자가 회사의 종사자와 직접 대면하거나 의사소통을 하지 아니하고 자동화된 방식으로 이를 이용하는 거래를 말합니다.
"전자지급수단"이라 함은 선불전자지급수단 등 전자금융거래법 제2조 제11호에서 정하는 전자적 방법에 따른 지급수단을 말합니다.
"전자지급거래"라 함은 자금을 주는 자가 회사로 하여금 전자지급수단을 이용하여 자금을 받는 자에게 자금을 이동하게 하는 전자금융거래를 말합니다.
"거래지시"라 함은 회원이 본 약관에 따라 회사에게 전자금융업무의 처리를 지시하는 것을 말합니다.
"전자적 장치"라 함은 전자금융거래정보를 전자적 방법으로 전송하거나 처리하는 데 이용되는 장치로서 현금자동지급기, 자동입출금기, 지급용 단말기, 컴퓨터, 휴대전화 등 휴대용 단말기, 그 밖에 전자적 방법으로 정보를 전송하거나 처리하는 장치를 말합니다.
"토스머니"란 회원이 회사로부터 발급받은 회원 계정에 부여된 전자금융거래법상 선불전자지급수단을 말합니다.
"충전"이란 회원이 서비스를 이용하기 위하여 회사가 회원이 결제계좌로 등록한 통장에서 회원이 요청한 금액을 출금하고, 해당 금액만큼 회원의 토스머니를 증액하는 등의 방법으로 회원의 토스머니 보유 잔액을 증가시키는 행위를 말합니다.
"환급"이란 회사가 회원의 요청에 따라 회원의 토스머니의 잔액 범위 내에서 회원이 요청하는 금액을 회원이 지정한 금융기관의 계좌로 입금하는 것을 말합니다
"수수료"란 회원이 회사의 서비스를 이용하는 과정에서 회사가 정하는 기준에 따라 회원에게 부과하는 비용을 말합니다.
"가맹점"이란 회사와 가맹점 계약을 체결하여 토스 서비스를 이용한 재화나 용역에 관한 지급 및 결제, 토스머니의 적립 등을 할 수 있는 금융회사 또는 전자금융업자가 아닌 자를 말합니다.
"결제대금예치서비스"라 함은 회원이 가맹점과의 상품 또는 용역의 거래를 함에 있어, 회사가 그 거래에 관한 결제 대금의 전부나 일부를 예치 받아 보관하다가, 해당 거래가 완료된 후 해당 결제 대금을 가맹점에게 지급하는 서비스를 말합니다.
"직불전자지급수단"이라 함은 회원과 가맹점간에 전자적 방법에 따라 금융회사의 계좌에서 자금을 이체하는 등의 방법으로 재화 또는 용역의 제공과 그 대가의 지급을 동시에 이행할 수 있도록 회사가 발행한 증표 또는 그 증표에 관한 정보를 말합니다.
본 조 및 본 약관의 다른 조항에서 정의한 것을 제외하고는 전자금융거래법 등 관련 법령에 정한 바에 따릅니다.

제 3 조 (이용약관의 효력 및 약관변경 승인)
회사는 회원이 전자금융거래 서비스를 이용하기 전에 이 약관을 게시하고, 회원이 이 약관의 중요한 내용을 확인할 수 있도록 합니다.
회사는 회원의 요청이 있는 경우 전자문서 전송(전자우편을 이용한 전송을 포함합니다), 모사전송, 우편 또는 직접교부의 방식으로 본 약관의 사본을 회원에게 교부합니다.
회사는 이용자가 약관의 내용에 대한 설명을 요청하는 경우 다음 각 호의 어느 하나의 방법으로 이용자에게 약관의 중요내용을 설명합니다.
약관의 중요내용을 이용자에게 직접 설명
약관의 중요내용에 대한 설명을 전자적 장치를 통하여 이용자가 알기 쉽게 표시하고 이용자로부터 해당 내용을 충분히 인지하였다는 의사표시를 전자적 장치를 통하여 수령
회사는 약관을 변경하는 때에는 그 시행일 1월 전에 변경되는 약관을 해당 전자금융거래를 수행하는 전자적 장치 또는 회사의 웹사이트에 게시하고 이용자에게 통지합니다. 다만, 법령의 개정으로 인하여 긴급하게 약관을 변경한 때에는 변경된 약관을 전자적 장치에 최소 1월 이상 게시하고 이용자에게 통지합니다.
회사는 제3항의 고지나 통지를 할 경우 "회원이 변경에 동의하지 아니한 경우 고지나 통지를 받은 날로부터 30일 이내에 계약을 해지할 수 있으며, 계약해지의 의사표시를 하지 아니한 경우에는 변경에 동의한 것으로 본다."라는 취지의 내용을 고지하거나 통지합니다.
이용자는 약관의 변경내용이 게시되거나 통지된 후부터 변경되는 약관의 시행일 전의 영업일까지 회사와 전자금융거래의 계약을 해지할 수 있습니다. 이 기간 안에 이용자가 약관의 변경내용에 대하여 이의를 제기하지 아니하는 경우에는 약관의 변경을 승인한 것으로 봅니다.

제 4 조 (이용계약의 체결)
서비스 이용계약은, 회원이 되고자 하는 자(이하 "가입신청자")가 회사에서 요구하는 정보를 제공하고, 회사가 지정하는 방법에 따라 이 약관에 대한 동의 의사를 전자적 방식으로 제출한 후, 회사가 다음 각호의 요건을 확인하여 해당 가입신청자에게 이용을 승낙함으로써 체결됩니다.
가입신청자는 본인 명의로 통신사에 가입된 휴대전화 또는 태블릿 등 토스앱을 구동할 수 있는 전자적 장치를 보유하여야 합니다.
가입신청자는 반드시 신청자 본인의 명의로 가입 신청 하여야 하며, 본인확인기관 등을 통하여 실시하는 본인확인을 통과하여야 합니다.
회원이 회사가 제공하는 전자금융 서비스를 이용하기 위하여는 다음 각호의 요건을 추가로 충족하여야 합니다. 본 항의 요건을 충족하지 아니하는 회원은 회사가 제공하는 서비스의 전부 또는 일부를 이용할 수 없거나 이용에 제한을 받을 수 있습니다.
가입신청자 본인 명의의 실명확인이 된, 정상적 입출금이 가능한 금융기관의 계좌를 보유하여야 하며, 회사가 정하는 방법에 따른 본인 계좌 인증을 통과하여야 합니다. 향후 회사는 서비스 제공 및 본인 인증 등을 위하여 금융기관 계좌가 아닌 다른 정보나 인증수단을 요구할 수 있습니다.
가입신청자는 제1호의 계좌에 관하여 회사에 대하여 이 약관 및 부속약관에 따라 추심이체를 허용하는 출금동의를 제공하여야 합니다.

제 5 조 (추심이체의 동의 및 철회)
회원이 추심이체의 동의를 함에 있어서는 회사가 제공하는 방식과 요건에 따른 전자서면으로 동의를 제공하여야 합니다. 추심이체의 주요 조건은 이 약관의 부속약관의 내용을 따릅니다.
회사는 전자금융감독규정에서 정한 요건에 부합하는 방식과 요건의 전자서면을 통한 동의 방식을 제공하며, 추심이체의 실행을 위하여 회원으로부터 수령한 동의 사항을 금융결제원 및 해당 금융기관 등에게 제출합니다.
회원은 회사의 거래지시에 따라 회원의 계좌 원장에 출금기록이 기입되기 전까지 회사에 대하여 전항의 규정에 따른 동의의 철회를 요청할 수 있습니다. 회원은 토스앱을 통하여 제4조 제2항에 따라 회사에 등록된 계좌의 등록의 말소를 하는 방법으로 출금이체 동의를 철회할 수 있습니다. 다만, 회원은 동 철회의 의사표시 이전에 발생한 출금건에 대하여 이의를 제기할 수 없습니다

제 6 조 (이용계약의 거절 등)
회사는 다음 각 호에 해당하는 가입신청에 대하여는 승낙을 하지 않거나, 승낙 이후라도 이용의 제한 또는 이용계약의 해지 등의 조치를 취할 수 있습니다.
회사가 정한 서비스 제공환경이 아니거나 기술상 서비스 제공이 불가능한 경우
가입신청자가 신청시 제공한 정보에 허위, 누락이나 오류가 있거나, 회사가 요구하는 기준을 충족하지 못하는 경우
신청 명의가 가입신청자 본인의 명의가 아닌 경우
이미 가입된 회원이 중복하여 가입신청을 하는 경우
만 14세 이하의 자가 이용신청 하는 경우
법인 명의로 가입하는 경우
기타 가입신청자의 귀책사유로 인하여 승낙이 불가능하거나 해당 가입신청이 법령, 본 약관 및 기타 회사가 정한 제반 사항에 배치되는 경우
회사의 해제, 해지 및 이용제한에 대하여 회원은 회사가 정한 절차에 따라 이의신청을 할 수 있습니다. 이 때 이의가 정당하다고 회사가 인정하는 경우, 회사는 즉시 서비스의 이용을 재개합니다.

제 7 조 (서비스의 이용개시, 이용시간 및 수수료)
제4조에 따라 회사가 신청인의 이용신청을 승낙함과 동시에 신청인은 회사가 제공하는 서비스의 회원이 되며, 이때부터 회사는 당해 회원에게 당해 약관이 정하는 서비스를 제공합니다.
회사는 본 약관이 정한 서비스 외에 추가적인 서비스를 제공하기 위해 회원에게 별도의 추가적인 약관 동의, 정보 수집 및 이용 동의 등 절차의 이행을 요청할 수 있으며, 이러한 절차가 완료되지 않는 경우 해당 회원이 추가적인 서비스의 전부 또는 일부를 이용하지 못할 수 있습니다. 회원이 추가 서비스를 이용할 경우, 각 서비스 별로 추가되는 이용약관과 본 약관의 내용이 상이한 경우 본 약관보다 추가적으로 적용되는 개별 약관이 우선 적용됩니다
서비스의 이용은 회사의 업무상 또는 기술상의 특별한 지장이 없는 한 연중무휴, 1일 24시간을 원칙으로 합니다. 다만, 서비스 운영상의 필요성으로 회사가 정한 기간 동안 본 서비스가 일시 중지될 수 있으며, 회사와 연계하여 서비스를 제공하는 금융기관 등의 사유로 서비스 중 일부 또는 전부가 중지될 수 있습니다. 서비스 중지가 발생하는 경우 그 내용을 홈페이지 또는 토스앱을 통하여 공지합니다.
회사는 회원의 서비스 이용에 따른 수수료를 부과할 수 있으며, 수수료는 홈페이지 또는 토스앱을 통하여 고지합니다.

제 8 조 (서비스의 구성 및 변경)
회사가 제공하는 서비스는 다음 각 호의 서비스로 구성됩니다. 다만, 이용자가 일정한 요건을 갖추었는지 여부에 따라 제공되는 서비스의 범위 및 이용 한도는 이용자별로 다를 수 있습니다.
「전자금융거래법」에 따른 선불전자지급수단 및 직불전자지급수단의 발행 및 관리
「전자금융거래법」에 따른 전자지급결제대행에 관한 업무
「전자상거래 등에서의 소비자보호에 관한 법률」 결제대금을 예치 받는 업무
타 금융 연계 서비스의 제공
상기 각호에 부수하거나 연계된 업무
회사는 서비스의 개선을 위하여 수시로 서비스 내용의 전부 또는 일부를 변경할 수 있습니다. 이 경우 회사는 변경될 서비스의 내용 및 적용 일자를 제22조에 정한 방법에 따라 공지합니다.
회사는 다음 각 호에 해당하는 경우 서비스의 전부 또는 일부를 제한하거나 중지할 수 있습니다.
회사 또는 연계 금융기관 등의 설비 보수점검, 교체 및 고장, 통신의 두절 등의 사유가 발생한 경우
서비스 업그레이드 및 시스템 유지보수 등을 위해 필요한 경우
정전, 제반 설비의 장애 또는 이용량의 폭주 등으로 정상적인 서비스 이용에 지장이 있는 경우
가맹점과의 계약종료 등 회사의 제반 사정으로 서비스를 유지할 수 없는 경우
기타 천재지변, 국가비상사태 등 불가항력적 사유가 있는 경우
제3항에 의하여 본 서비스를 중단하게 되는 경우 회사는 제22조에서 정한 방법으로 회원에게 사전 공지합니다. 다만, 회사가 통제할 수 없는 사유로 본 서비스가 중단(회사 또는 토스 서비스 운영자의 고의 및 과실이 없는 장애, 시스템 다운 등)되어 사전 공지가 불가능한 경우에는 그러하지 아니합니다.

제 9 조 (회원의 의무)
회원은 서비스를 이용함에 있어 다음 각 호의 행위를 하여서는 안됩니다.
본 약관 및 전자금융거래법 등 서비스이용에 관련된 관계법령을 위반한 행위
서비스를 제공받기 위해 이용 신청 또는 변경 신청시 허위 사실을 기재하거나 타인의 정보를 도용하는 등 정상적인 서비스 운영을 고의로 방해하는 일체의 행위
여하한 방법으로 회사가 정상적으로 제공하는 방법이 아닌 다른 방법으로 회사가 보유하고 있는 정보를 탈취, 저장, 공개 또는 부정한 목적으로 사용하는 행위
회사의 지식재산권, 제3자의 지식재산권 등 기타 권리를 침해하거나, 회사의 동의 없이 회원 또는 제3자의 상업적인 목적을 위하여 본 서비스 구성요서의 전부 또는 일부의 내용에 관하여 이를 복사, 복제, 판매, 재판매 또는 양수도하는 행위
기타 범죄 또는 법령이 금지하는 행위와 관련되었다고 의심받을 수 있는 일체의 행위
서비스와 관련된 설비의 오동작이나 정보 등의 파괴 및 혼란을 유발시키는 컴퓨터 바이러스 감염 자료를 등록 또는 유포하는 행위
회사의 서비스를 해킹하거나 해킹에 이용하는 일체의 행위
기타 불법적이거나 부당한 행위
회원은 관련 법령, 본 약관의 규정, 이용안내 및 서비스상에 공지한 주의사항, 회사가 통지하는 사항 등을 준수하여야 하며, 기타 회사의 업무에 방해되는 행위를 하여서는 아니 됩니다.
회원은 반드시 본인이 직접 서비스를 이용해야 하며, 전자적장치를 타인에게 양도 또는 대여하는 등의 방법으로 타인으로 하여금 서비스를 이용할 수 있도록 하여서는 안됩니다. 이의 위반으로 인한 책임은 회원에게 있습니다.

제 10 조 (접근매체의 선정과 관리)
회사는 전자금융거래를 위하여 접근매체를 선정하여 사용 및 관리하고 이용자의 신원, 권한 및 거래지시의 내용 등을 확인합니다.
"회원"은 "접근매체"를 사용함에 있어서 다른 법률에 특별한 규정이 없는 한 다음 각 호의 행위를 하여서는 안됩니다. 관련 법령이 허용하는 선불전자지급수단의 양도 또는 담보제공을 위하여 필요한 경우(제3호의 행위 및 이를 알선하는 행위는 제외)에는 그러하지 아니합니다.
접근매체를 양도하거나 양수하는 행위
대가를 수수(授受)ㆍ요구 또는 약속하면서 접근매체를 대여받거나 대여하는 행위 또는 보관ㆍ전달ㆍ유통하는 행위
범죄에 이용할 목적으로 또는 범죄에 이용될 것을 알면서 접근매체를 대여받거나 대여하는 행위 또는 보관ㆍ전달ㆍ유통하는 행위
접근매체를 질권의 목적으로 하는 행위
제1호부터 제4호까지의 행위를 알선하거나 광고하는 행위

제 11 조 (인증방법 및 부정거래탐지시스템)
서비스 이용을 위한 인증방법은 각 메뉴에 따라 PIN 인증, 이동전화번호 인증 등 (이하 "PIN 등 본인 인증수단"이라 합니다) 회사가 정한 방법이 이용됩니다.
회원은 서비스 이용을 위하여 이용신청 단계에서 회사가 정하는 바에 따라 PIN 을 등록하여야 합니다. 등록된 PIN은 토스 서비스 화면을 통하여 이를 변경할 수 있습니다.
회원은 PIN 등 본인 인증수단을 철저히 관리하고, 타인에게 누설하여서는 안됩니다.회원은 PIN 분실 시 토스 서비스를 통해 회사가 정한 절차에 따라 재설정할 수 있습니다.
회사는 PIN 등 본인 인증수단 외에 부정사용을 탐지하기 위한 별도의 부정거래탐지 시스템(FDS)을 운영하고 있으며, 부정거래로 의심되는 거래가 탐지된 경우에는 해당 회원의 서비스 이용을 즉시 중단시키고 회사가 정한 추가 인증을 거치도록 할 수 있습니다.
제 12 조 (접근매체 분실 및 도난 관련 회원의 책임)
회원은 자신의 모바일 디바이스, PIN 등 접근매체를 제3자에게 사용하게 하거나, 누설, 방치하여서는 안됩니다. 회원은 자신의 PIN을 주기적으로 변경하는 등 접근매체의 도용이나 위조 또는 변조를 방지하기 위하여 충분한 주의를 기울여야 합니다.
회원은 접근매체의 훼손, 분실, 도난 등의 사고가 발생하는 경우 즉시 그 사고 사실을 서면 또는 제17조 제5항에 따른 회사의 전화번호로 회사에 통지하여야 합니다.
회사는 회원으로부터 전항에 따른 통지를 받은 때에는 그 때부터 제3자가 그 접근매체를 사용함으로 인하여 회원에게 발생한 손해를 배상할 책임이 있습니다. 단, 토스머니 등 선불전자지급수단의 분실 또는 도난의 통지를 하기 전에 저장된 금액에 대한 손해에 대하여 그 책임을 회원의 부담으로 할 수 있습니다.

제 13 조 (서비스 부정사용에 대한 책임)
회사는 다음 각 호의 어느 하나에 해당하는 사고로 인하여 이용자에게 손해가 발생한 경우에는 그 손해를 배상할 책임을 부담합니다.
접근매체의 위조나 변조로 발생한 사고
계약체결 또는 거래지시의 전자적 전송이나 처리 과정에서 발생한 사고
전자금융거래를 위한 전자적 장치 또는 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제2조제1항제1호에 따른 정보통신망에 침입하여 거짓이나 그 밖의 부정한 방법으로 획득한 접근매체의 이용으로 발생한 사고
전항에도 불구하고, 사고 발생에 있어서 회원의 고의나 중대한 과실이 있는 경우로서 다음 각 호에 해당하는 경우에는 그 손해의 전부 또는 일부를 회원이 부담할 수 있습니다.
회원이 접근매체를 제3자에게 대여하거나 그 사용을 위임한 경우 또는 양도나 담보의 목적으로 제공한 경우(전자금융거래법 제18조에 따라 선불전자지급수단이나 전자화폐를 양도하거나 담보로 제공한 경우를 제외)
제3자가 권한 없이 회원의 접근매체를 이용하여 전자금융거래를 할 수 있음을 알았거나 쉽게 알 수 있었음에도 불구하고 접근매체를 누설하거나 노출 또는 방치한 경우
회사가 접근매체에 따른 확인 외에 보안강화를 위하여 전자금융거래 시 요구하는 추가적인 보안조치를 회원이 정당한 사유 없이 거부하여 제1항 제3호에 따른 사고가 발생한 경우
회원이가 제3호에 따른 추가적인 보안조치에 사용되는 매체ㆍ수단 또는 정보에 대하여 다음 각 목의 어느 하나에 해당하는 행위를 하여 제1항 제3호에 따른 사고가 발생한 경우
누설ㆍ노출 또는 방치한 행위
제3자에게 대여하거나 그 사용을 위임한 행위 또는 양도나 담보의 목적으로 제공한 행위
서비스 부정사용이 발생한 경우, 회원은 부정사용의 경위 및 피해 조사에 관하여 회사에 적극 협조하여야 합니다.

제 14 조 (서비스 이용제한)
회원의 서비스 이용 중 다음 각 호의 사유가 발생하는 경우, 회사는 해당 회원의 서비스 이용을 제한 또는 정지할 수 있습니다.
PIN을 누적하여 연속 5회 이상 오류 입력하는 경우
선불전자지급수단의 발행권면 최고한도 초과 또는 직불전자지급수단의 이용 한도 초과
접근매체의 도난 분실 등 사고 신고된 경우
회사가 제공하는 서비스 이용방법에 의하지 아니하고 비정상적인 방법으로 서비스를 이용하거나 회사의 시스템에 접근하는 행위
타인의 명의, 카드정보, 계좌정보 등을 도용하여 회사가 제공하는 서비스를 이용하는 행위
회원이 회사의 서비스 운영을 고의로 방해하는 경우
다른 회원의 정당한 이익을 침해하거나 법령에 위배되는 행위를 한 경우
본 약관에 위배되는 행위를 한 경우
회원이 악의적으로 마이너스(-) 토스머니를 발생시킨 것으로 판단되는 경우
상품 거래를 가장하여 자금을 융통하는 등 비정상적인 거래를 시도하는 경우
이 약관에서 규정한 사항이나 별도 페이지에 규정한 이용정책을 위반한 경우
기타 회사가 합리적인 판단에 의해 서비스의 제공을 거부할 필요가 있다고 인정할 경우
회원이 본 조의 금지행위를 하는 경우 서비스 이용을 제한함과 별도로 손해배상의 청구, 사법당국에 대한 고발 등 법적 조치를 취할 수 있습니다.

제 15 조 (지급의 효력 발생시기 및 철회)
전자지급수단을 이용하여 자금을 지급하는 경우에는 그 지급의 효력은 다음 각 호의 어느 하나에서 정한 때에 발생합니다.
전자자금이체의 경우: 거래 지시된 금액의 정보에 대하여 수취인의 계좌가 개설되어 있는 금융회사 또는 전자금융업자의 계좌의 원장에 입금기록이 끝난 때
전자적 장치로부터 직접 현금을 출금하는 경우: 수취인이 현금을 수령한 때
선불전자지급수단으로 지급하는 경우: 거래 지시된 금액의 정보가 수취인이 지정한 전자적 장치에 도달한 때
그 밖의 전자지급수단으로 지급하는 경우: 거래 지시된 금액의 정보가 수취인의 계좌가 개설되어 있는 금융회사 또는 전자금융업자의 전자적 장치에 입력이 끝난 때
이용자가 전자지급거래를 한 경우 그 전자지급거래의 종류에 따라 제1항에 정한 바에 따른 지급의 효력이 발생하기 전까지 본 약관 제17조 제5항에 기재된 연락처로 철회의 의사표시를 포함한 전자문서를 전송함으로써 거래지시를 철회할 수 있습니다.

제 16 조 (오류의 정정)
회원은 전자금융거래에 오류가 있음을 안 때에는 회사에 대한 정정을 요구할 수 있습니다. 회사는 오류의 정정요구를 받은 때 또는 스스로 전자금융거래에 오류가 있음을 안 때에는 이를 즉시 조사하여 시정한 후 정정요구를 받은 날 또는 오류를 발견한 날로부터 2주 이내에 오류의 원인과 처리 결과를 서면, 전화 또는 전자우편을 이용하여 해당 오류로 인하여 영향을 받은 회원에게 알립니다.
전항 후단의 통지를 회원이 전자문서가 아닌 서면으로 받고자 요청하는 경우 회사는 모사전송, 우편, 전자우편 또는 직접 교부의 방법 등으로 통지합니다.
전항의 서면 요청에 관한 사항에는 제17조 제5항을 준용합니다.

제 17 조 (서비스 이용 내역의 보존 및 확인)
회사는 회원이 이용한 서비스의 내용을 추적, 검색하거나 그 내용에 오류가 발생한 경우에 이를 확인하거나 정정할 수 있는 기록을 생성하여 보존합니다.
서비스 이용 내역의 확인 대상 및 보존기간은 아래와 같습니다.
아래의 정보는 5년간 보관합니다.
거래의 종류 및 금액, 거래의 상대방에 관한 정보
거래일시 및 전자적 장치의 종류 및 전자적 장치를 식별할 수 있는 정보
거래가 계좌를 통하여 이루어지는 경우 거래 계좌의 명칭 또는 번호
회사가 거래의 대가로 받은 수수료
회원의 출금 동의에 관한 사항
해당 거래와 관련한 전자적 장치의 접속기록
서비스의 신청 및 조건의 변경에 관한 사항
건당 거래금액이 1만원을 초과하는 거래에 관한 기록
아래의 정보는 1년간 보관합니다.
전자지급수단의 이용과 관련된 거래승인에 관한 기록
건당 거래금액이 1만원 이하인 거래에 관한 기록
회원의 오류정정 요구사실 및 처리결과에 관한 사항
회사는 회원에게 서비스를 제공하면서 취득한 회원의 인적 사항, 회원의 계좌, 접근매체 및 서비스 이용 내역에 관한 정보를 법령에 의하거나 회원의 동의를 얻지 아니하고 제3자에게 제공하거나 서비스 제공 목적 외에 사용하지 아니합니다.
회사는 토스 서비스의 조회 화면을 통하여 회원의 서비스 이용 내역을 확인하는 서비스를 제공합니다. 회원이 요청하는 경우, 회사는 전자우편으로 이용 내역을 송부할 수 있습니다. 단, 회원이 서비스 이용내역에 대해 전자문서가 아닌 서면 교부 요청을 하는 경우, 요청을 받은 날로부터 2주 이내에 모사전송, 우편의 방법 등으로 서비스 이용 내역에 관한 서면을 교부합니다.
서비스 이용내역의 서면제공 요청은 아래의 이메일 주소로 신청하거나, 아래 담당자에게 전화로 직접 신청할 수 있습니다. 회원은 동 신청을 함에 있어서 서면을 수령하는데 필요한 정보를 명확히 제공하여야 합니다. 회사는 우편 제공시 일반우편의 방법으로 송부합니다
이메일 : support@toss.im
담당 : 양주영
전화 : 1599-4905

제 18 조 (개인정보의 보호 및 이용)
회사는 개인정보의 보호 및 처리와 관련하여 개인정보보호법, 신용정보의이용및보호에관한법률, 정보통신망이용촉진및정보보호에관한법률 및 각 그 하위 법령에 정하는 사항을 준수하며, 개인정보의 보호를 위하여 노력합니다.
회사는 개인 정보의 수집, 이용, 제공, 보호, 위탁 등에 관한 제반 사항의 구체적인 내용을 개인정보처리방침을 통하여 규정하며, 개인정보처리방침은 회사의 웹페이지, 토스앱 서비스 화면 등을 통하여 게시합니다.

제 19 조 (위치정보의 보호 및 이용)
회사는 서비스의 제공과 관련하여, 위치정보 서비스에 관한 약관 및 정보 제공 동의 등 필요한 요건을 구비한 회원으로부터 위치정보를 수집 및 이용할 수 있습니다.
회사는 회원의 위치 정보를 이용하는 경우, 위치정보의 보호 및 이용 등에 관한 법률(이하 위치정보법) 등 관련 법령이 정하는 바에 따라서 회원의 개인위치정보를 보호하기 위하여 노력합니다.
위치정보의 수집 및 이용에 관하여는 회사가 제시하는 별도의 약관에 정한 바에 따릅니다.

제 20 조 (계약의 해지 등)
회원은 언제든지 회사에 이용계약 해지의 의사를 통지함으로써 이용계약을 해지할 수 있습니다. 단, 회원은 해지의사를 통지하기 전에 회사가 제공하는 서비스를 이용하여 진행중인 제반 거래 행위를 완결하여 더 이상 서비스를 통하여 처리되어야 할 채권 채무 관계가 남지 않도록 하여야 하며, 이러한 조치를 취하지 아니하고 서비스의 이용 해지 의사표시를 함으로써 발생하는 불이익에 대하여는 회원이 그 책임을 부담하여야 합니다. 회사가 필요하다고 판단하는 경우, 이와 같은 채권 채무 관계가 모두 해소될 때까지 해지의 효력 발생시기를 연기할 수 있습니다.
회원이 임의 해지, 재가입 등을 반복적으로 행함으로써 회사가 제공하는 혜택이나 경제적 이익을 비통상적인 방법으로 악용할 우려가 있다고 회사가 판단하는 경우, 회사는 재가입을 제한할 수 있습니다. 이러한 심사 목적 등을 위하여 회사는 회원 탈퇴 시 관계법령이 정한 기간동안 동안 해당 회원의 성명, 탈퇴일자, 탈퇴사유 등 필요한 정보를 보관할 수 있습니다.
이 약관에 따라 이용계약이 해지된 경우 회사는 회원에게 부가적으로 제공한 각종 혜택을 무효화 하거나 회수할 수 있습니다.

제 21 조 (손해배상)
회사나 회원이 본 약관의 규정을 위반하거나 기타 불법행위를 하여 상대방에게 손해를 발생시킨 경우, 그 손해 발생에 귀책사유가 있는 당사자는 그 상대방의 피해를 배상하여야 합니다.
회원이 서비스를 이용함에 있어 행한 불법행위나 본 약관 위반행위로 인하여 회사가 당해 회원 이외의 제3자로부터 손해배상 청구 소송을 비롯한 각종 이의제기를 받는 경우 당해 회원은 그로 인하여 회사가 입은 손해를 배상하여야 합니다.
회사는 회원 상호간, 회원과 가맹점 상호간 또는 회원과 제3자 상호간에 발생한 분쟁에 대해서는 개입할 의무가 없으며, 회사에 귀책사유가 없는 한 이로 인한 손해를 배상할 책임이 없습니다.

제 22 조 (회원에 대한 공고 및 통지)
회사는 이 약관에 따라 제공되는 서비스의 운영과 관련한 공지사항을 회사의 홈페이지(http://toss.im) 또는 토스앱 서비스 화면에의 게시, 회원이 제공한 이메일, 회원이 제공한 휴대전화번호로의 문자 메세지를 보내는 방법을 통하여 통지할 수 있습니다.
전항에 따른 통지는, 관련 법령 또는 이 약관에서 특별히 전자문서가 아닌 서면 형태를 요구하는 경우가 아닌 한, 서면 통지로서의 효력을 갖습니다.

제 23 조 (광고성 또는 맞춤형 정보의 제공)
회사는 본 서비스의 운영과 관련하여 광고성 정보를 제공하는 서비스를 운영할 수 있습니다.
회사는 광고성 정보 및 회원 맞춤형 정보를 문자 메세지나 푸쉬 메세지 형식으로 제공할 수 있으며, 이는 광고성 정보에 대한 사전 수신 동의가 있는 경우 등 법령상 허용된 경우에 한하여 제공됩니다.

제 24 조 (대리 및 보증의 부인)
회원과 제3자와의 거래에 있어서 회사는 회원이나 제3자를 대리하지 않습니다. 회사가 관련 서비스의 개별 이용약관 등을 통하여 달리 명시하지 아니하는 한, 회사의 어떠한 행위도 제3자나 회원을 대리하는 행위로 간주되지 않습니다.
회사가 토스앱을 통하여 제3자의 서비스를 이용할 수 있도록 하는 경우, 해당 서비스 제공의 주체는 그 제3자이며, 회사는 그 제3자가 제공하는 정보를 회원에게 전달되도록 하는 도구를 제공합니다. 제3자가 제공하는 서비스는 토스앱을 통하여 관련 추가 약관 등에 대한 동의절차를 거친 회원에 한하여 이용할 수 있습니다.
회사는 서비스를 통하여 교환되는 회원과 제3자간의 정보와 관련하여 회원 또는 제3자의 거래의사의 존부 및 진정성, 제3자가 제공하는 상품의 품질, 완전성, 안전성, 적법성, 정보의 진실성, 타인의 권리에 대한 비침해성, 제3자와 회원이 제공하는 정보의 진실성 또는 적법성에 대하여 일체 보증하지 아니합니다.

제 25 조 (지식재산권)
회사의 서비스와 관련된 일체의 지식재산권은 회사에게 속합니다.
회원은 본 서비스 이용 과정에 얻은 정보를 가공, 제공, 판매하는 등 영리 목적으로 이용하거나 제3자에게 이용하게 할 수 없습니다.

제 26 조 (약관의 해석)
회사와 이용자 사이에 개별적으로 합의한 사항이 이 약관에 정한 사항과 다를 때에는, 그 합의사항을 이 약관에 우선하여 적용합니다.
회사가 제공하는 서비스에 따라 별도로 부가되는 약관은 본 약관과 통일적으로 해석되어야 하며, 서로 다른 내용이 있는 경우 원칙적으로 본 약관의 내용이 우선합니다. 다만, 개별 서비스 약관과 본 약관 중 해당 개별 서비스의 특성으로 인하여 서로 다른 내용이 있는 경우에는 그 범위에 한하여 해당 개별 서비스 약관의 조항이 우선하는 것으로 합니다.
본 약관의 내용 중 관련법령의 강행규정과 배치되는 부분이 있는 경우, 그 부분에 한하여 본 약관의 해당 규정은 무효로 합니다.
이 약관에 명시적으로 규정되지 않고, 당사자간에 미리 합의되지 않은 사항의 처리에 관하여는 관련법령 및 상관습에 따릅니다.

제 27 조 (분쟁처리담당자 및 이의신청)
회원은 서비스 이용과 관련하여 회사에 이의가 있는 경우 서면으로 회사에 이의를 제기할 수 있습니다. 분쟁처리책임자는 아래와 같습니다.
분쟁처리책임자
담당 이승건
전화 1599-4905
이메일 support@toss.im
회원은 제1항에 따라 서면(전자문서를 포함합니다) 또는 전자적 장치를 이용하여 회사의 본점이나 영업점에 분쟁처리를 신청할 수 있으며, 회사는 15일 이내에 이에 대한 조사 또는 처리 결과를 회원에게 안내합니다.
회원은 회사의 분쟁처리결과에 대하여 이의가 있을 경우 '금융위원회의 설치 등에 관한 법률'에 따른 금융감독원의 금융분쟁조정위원회나 '소비자기본법' 에 따른 한국소비자원의 소비자분쟁조정위원회에 회사의 전자금융거래서비스의 이용과 관련한 분쟁조정을 신청할 수 있습니다.
금융감독원의 분쟁조정결과 이용과정에서 회사에 책임이 있는 사실이 밝혀질 경우 회사는 이용대금의 전액을 부담합니다. 다만 회원 또는 회사가 금융감독원의 분쟁조정결과에 불복하여 관할법원에 민사소송을 제기하는 경우에는 그러하지 아니합니다.

제 28 조 (분쟁의 해결)
서비스 이용과 관련하여 회사와 회원 사이에 분쟁이 있는 경우 회사와 회원은 이를 해소하기 위하여 성실히 협의합니다.
전항에도 불구하고 회사와 회원의 분쟁이 해결되지 않는 경우, 해당 분쟁의 해결은 민사소송법에 따라 관할을 가지는 법원의 판결에 따르기로 합니다.

제 2 장 토스머니 서비스
제 29 조 (토스머니의 충전)
회원이 토스머니를 이용한 지급결제나 토스머니 양도 서비스 등을 이용하기 위해서는 토스머니를 서비스 이용 전 또는 서비스 이용과 동시에 충전하여야 합니다. 토스머니의 충전은 회원이 등록한 실명 확인 계좌를 이용한 추심이체 방식 등의 방법을 이용합니다.
토스머니가 표상하는 가치는 원화의 가치와 동일합니다.
회원이 토스머니의 충전에 이용할 수 있는 금융기관은 회사가 사전에 출금이체 (펌뱅킹) 관련 계약을 체결한 금융기관에 제한됩니다. 이용 가능한 금융기관의 목록은 회사의 홈페이지 또는 토스 서비스를 통해 공지합니다. 이용 가능한 금융기관에 변동사항이 생길 경우 회사는 즉시 홈페이지 또는 토스 서비스 공지사항을 통하여 회원에게 공지합니다.
회사는 상기에 정한 충전방법이 아닌 다른 충전방법을 제공할 수 있으며, 다른 충전방법을 제공하는 경우, 그 충전 방법에 관하여는 본 약관 제22조에서 정한 방법으로 고객에게 알립니다.

제 30 조 (토스머니의 이용)
회원은 제31조의 이용한도 범위 내에서 토스머니 잔액의 전부 또는 일부를 제3자(다른 회원이나 비회원)에게 양도할 수 있습니다.
회원은 토스머니의 양도시 회사가 요구하는 상대방(다른 회원 또는 비회원)의 정보를 정확히 입력하여야 하며, 해당 정보를 잘못 입력함으로 인한 문제에 대하여 회사는 책임을 지지 않습니다.
회원은 토스머니를 회사가 제시하는 가맹점에서 해당 가맹점과의 계약에 따라 허용된 경우, 해당 상품 또는 서비스 구매 등에 관한 지급 및 결제 수단으로 사용할 수 있습니다. 회사는 토스머니를 사용하여 결제를 할 수 있는 가맹점의 정보에 관하여 본 약관 제22조에 정한 방법으로 회원에게 알립니다.

제 31 조 (토스머니의 이용 한도 등)
회사는 선불전자지급수단의 발행권면에 관한 전자금융거래법령상의 한도를 넘을 우려가 있는 경우에는 당해 회원의 새로운 충전 요청을 제한하거나 거부할 수 있습니다.
회원의 각 명의당 발행권면, 충전, 토스머니 양도 및 기타 이용 한도는 전자금융거래법 등 관련 법령에서 허용된 범위 내에서 회사가 정하는 바에 따르며, 회사가 정한 한도에 관한 사항은 본 약관 제22조에 정한 통지의 방법으로 회원에게 알립니다.
회사는 제2항의 한도를 정함에 있어, 회사가 요구하는 추가적인 인증 요건 등 회사가 제시하는 기준을 충족한 회원과 그렇지 않은 회원에 대하여 그 한도 적용을 달리 할 수 있습니다.

제 32 조 (토스머니의 환급 등)
회원이 보유 중인 토스머니의 환급을 회사에 요구할 경우, 회사는 그 보유중인 잔고 범위 내에서 회원이 요청하는 금액에 이르기까지 회원이 지정한 은행계좌로의 현금을 계좌이체 하는 방법으로 환급합니다. 재화 등의 구매나 이벤트 등을 통하여 회사로부터 무상으로 제공 받은 토스머니는 동조의 환급 대상에서 제외됩니다. 환급의 경우 회사는 회사가 정하여 제22조에 따라 회원에게 고지하는 기준에 따른 환급 수수료를 공제할 수 있습니다.
다음 각 호의 어느 하나에 해당하는 경우, 회사는 회원의 환급요청시 토스앱에 기록된 토스머니 잔액의 전부를 지급합니다.
천재지변 등의 사유로 가맹점이 재화 등을 제공하기 곤란하여 토스머니를 사용하지 못하게 된 경우
토스머니의 결함으로 가맹점이 재화 등을 제공하지 못하는 경우
토스앱에 기록된 토스머니 잔액이 100분의 20 이하인 경우
회원의 환급요청에도 환급이 보류되는 사유는 아래와 같습니다. 다만 회사는 그 사유가 해소되는 시점에 환급 처리를 합니다
회원의 토스머니 잔액이 회원의 환급 요청 금액 보다 적은 경우
회원의 토스머니 잔액이 환급 수수료 보다 적을 경우
명의 도용 등 사고 신고가 접수되어, 회사의 합리적인 판단으로 누구에게 환급하여야 하는지 판단할 수 없는 경우 회사는 법령이 정한 절차에 따라 해당 금원을 공탁하는 등의 처리를 할 수 있습니다.
환급과 관련하여 제세공과금이 발생하는 경우, 해당 제세공과금은 회원이 부담합니다.

제 33 조 (유효기간)
충전한 날로부터 5년간 본 약관에 따라 이용되거나 환급되지 아니한 토스머니는 소멸됩니다.

제 3 장 직불전자지급수단 서비스
제 34 조 (직불전자지급수단의 이용한도)
회사는 직불전자지급수단의 이용한도에 관한 전자금융거래법령상의 한도를 넘을 우려가 있는 경우에는 당해 회원의 새로운 결제 요청을 제한하거나 거부할 수 있습니다.
회원의 직불전자지급수단 이용 한도는 전자금융거래법 등 관련 법령에서 허용된 범위 내에서 회사가 정하는 바에 따르며, 회사가 정한 한도에 관한 사항은 본 약관 제22조에 정한 통지의 방법으로 회원에게 알립니다.
회사는 제2항의 한도를 정함에 있어, 회사가 요구하는 추가적인 인증 요건 등 회사가 제시하는 기준을 충족한 회원과 그렇지 않은 회원에 대하여 그 한도 적용을 달리 할 수 있습니다.

제 4 장 결제대금예치서비스
제 35 조 (결제 대금의 예치)
회원은 회사와 가맹점 사이의 계약으로 회사가 제공하는 결제대금예치서비스가 허용된 가맹점에서 본 서비스를 이용할 수 있습니다.
결제대금예치서비스를 이용하여 결제를 하려는 회원은, 회사가 허용하는 지불수단을 이용하여 지정된 계좌로 결제 대금을 입금하여야 합니다.

제 36 조 (결제대금의 지급 등)
회원은 재화 등을 공급받은 사실을 재화 등을 공급받은 날부터 3영업일 이내에 회사에 통보하여야 합니다.
회사는 회원으로부터 재화 등을 공급받은 사실을 통보 받을 경우 회사가 정한 기일 내에 가맹점에 결제대금을 지급합니다.
회사는 회원이 재화 등을 공급받은 날부터 3영업일이 지나도록 정당한 사유의 제시 없이 그 공급받은 사실을 회사에 통보하지 아니하는 경우에 회원의 동의 없이 가맹점에게 결제대금을 지급할 수 있습니다.
회사가 가맹점에게 결제대금을 지급하기 전에 회원이 그 결제대금을 환급 받을 정당한 사유가 발생한 경우에는 그 결제대금을 회원에게 환급합니다.
회원의 반품 의사표시 등으로 구매가 확정되지 아니하여 환불이 필요한 경우, 회사는 회원과 가맹점사이의 계약에 따라 공제하여야 할 금원을 제외한 나머지를 회원에게 반환합니다.
제2항 및 제3항에 따라 지급이 완료된 이후에는 회원과 가맹점 사이의 여하한 법률관계에 기인하여도 회사가 해당 결제대금을 회원에게 반환을 할 의무를 부담하지 않으며, 회원과 가맹점사이의 반품, 계약 해제, 환불 등 법률관계는 회원이 직접 가맹점과 사이에서 처리하여야 합니다.

제 5 장 계좌조회서비스
제 37 조 (서비스의 제공)
회사는 제4조 제2항에 따라 실명 확인된 금융기관의 계좌를 등록한 회원 중 추가적인 정보수집 동의 등 필요 요건을 구비한 회원에 대하여, 해당 연결 계좌의 잔고 및 거래내역에 관한 정보를 열람할 수 있도록 하는 서비스를 제공할 수 있습니다.
단, 전항에 해당하는 회원이더라도, 회사 및 해당 금융기관이 운영하는 보안 및 인증 기준 등에 따라 서비스 제공이 불가능할 수도 있습니다.

제 38 조 (수수료)
회사는 계좌조회서비스에 대하여 수수료를 부과할 수 있습니다.
회사가 계좌조회서비스에 대하여 수수료를 부과하려는 경우에는 그 부과 기준과 부과액수에 관하여 본 약관 제22조에 정한 방법에 따라 회원에게 알려야 합니다.

제 6 장 금융사기 등 피해 신고 계정에 대한 조치
제 39 조 (정의)
"전기통신금융사기"란 「전기통신기본법」 제2조제1호에 따른 전기통신을 이용하여 타인을 기망·공갈함으로써 재산상의 이익을 취하거나 제3자에게 재산상의 이익을 취하게 하는 다음 각 목의 행위를 말합니다. 다만, 재화의 공급 또는 용역의 제공 등을 가장한 행위는 제외하되, 대출의 제공·알선·중개를 가장한 행위는 포함합니다.
자금을 송금·이체하도록 하는 행위
개인정보를 알아내어 자금을 송금·이체하는 행위
"피해자"란 전기통신금융사기로 인하여 재산상의 피해를 입은 회원을 말합니다.
"사기이용계좌"란 피해자의 자금이 송금·이체된 계좌 및 해당 계좌로부터 자금의 이전에 이용된 계좌를 말합니다.
"피해금"이란 전기통신금융사기로 인하여 피해자의 계좌에서 사기이용계좌로 송금·이체된 금전을 말합니다.

제 40 조 (피해의 신고)
토스 머니의 양도 서비스를 통하여 전기통신금융사기의 피해금을 송금한 회원은, 전기통신금융사기피해방지및피해금환급에관한특별법(이하 "특별법") 시행령 별지 제1호 서식에 따른 피해구제의 신청을 사기이용계좌를 관리하는 금융기관에게 제출할 수 있습니다. 이 경우 피해 구제의 처리는 특별법과 해당 금융기관이 정하는 절차에 따라 처리됩니다.
제1항에도 불구하고, 특정 전기통신금융사기 사안에서 사기이용계좌를 관리하는 금융기관이 존재하지 아니하는 경우(피해자의 토스머니 잔고가 가해자의 토스머니 잔고로 양도된 경우와 같이, 피해자나 가해자의 금융기관 계좌가 직접 이용되지 않은 경우) 피해자는 제1항의 피해구제의 신청을 회사에 제출할 수 있습니다. 이 때 피해자는 수사기관의 피해신고확인서 등 관련 자료를 함께 제출하여야 합니다.

제 41 조 (회사의 조치)
회사가 전조 제2항의 피해구제 신청서 및 수사기관의 피해신고 확인서를 제출 받는 경우, 회사는 가해자로 지목된 회원("가해자")의 토스 머니 잔고의 인출을 일정 기간 제한할 수 있으며, 가해자의 토스 머니 잔고 전부를 가해자가 토스앱에 연결한 가해자 명의의 금융기관의 계좌("가해자 금융계좌")로 이체 처리 함으로써 토스 머니 잔고를 강제 상환 처리할 수 있습니다.
회사가 제1항의 조치를 취함에 있어, 회사는 가해자 금융계좌를 관리하는 금융기관에 대하여 해당 계좌를 사기이용계좌로 신고할 수 있으며, 피해자는 이 과정에 필요한 협조와 조치를 취하여야 합니다.
회사는 제1항 및 제2항의 조치를 취하는데 필요한 정보의 수집 및 제3자 제공에 대한 동의 등 협조를 피해자에게 요구할 수 있으며, 피해자가 이에 협조하지 않는 경우 회사는 본조 따른 조치를 취하지 아니합니다. 피해자가 협조하지 아니하여 본조에 따른 조치를 취하지 못하게 되는 경우, 피해자는 본조에 따른 조치가 취해지지 아니함으로 입은 손해에 관하여 회사에 책임을 묻지 않습니다.
회사는 제1항 및 제2항의 조치를 취한 후, 피해자와 가해자에게 그 조치 사실을 통지합니다.

제 42 조 (피해 구제의 절차 등)
전조 제2항에 따라 가해자 금융계좌가 사기이용계좌로 지정된 이후의 피해자 권리 구제는 특별법과 해당 사기이용계좌를 관리하는 금융기관이 정하는 절차에 따릅니다.
전조 제1항에 따른 가해자 금융계좌로의 강제 상환이 완료된 날로 14일이 경과한 후, 수사기관이나 금융기관이 달리 요청하지 아니하는 한, 회사는 가해자의 토스 머니 계정에 취하였던 인출 제한 조치 등을 해제합니다.

제 43 조 (면책)
회원은 본 장에 따른 권리 구제 수단이 법에서 정한 절차가 아니며, 회사 단독으로는 특별법에 따른 권리 구제를 수행할 수 없으며, 특별법에서 정한 권리구제의 효과를 얻기 위해서는 금융기관, 수사기관 등의 협조가 필수적임을 이해합니다.
금융기관 또는 수사기관으로부터 필요한 협조를 얻을 수 없음으로 인하여, 본 장에서 회사가 취하기로 한 조치를 취하지 못하거나, 실질적 권리 보호효과를 얻지 못하게 되는 경우, 회원은 그로 인한 손해에 관하여 회사에 책임을 묻지 않습니다.

- 부칙 -
이 약관은 2017년 9월 7일부터 시행됩니다.
- 부속약관 -
금융기관 출금이체 약관
본인(회원이 수납기관에 등록한 계좌의 계좌주)이 납부하여야 할 요금에 대하여 금융기관 앞으로 청구가 있는 경우에는 별도의 통지없이 본인의 지정출금계좌에서 수납기관의 요청에 따라 즉시 출금대체납부하여 주십시오
전항의 출금을 하는 경우에는 금융기관과의 금융거래 약관이나 약정서의 규정에도 불구하고 청구서나 또는 수표 없이 출금이체 처리절차에 의하여 출금하여도 이의가 없습니다.
출금일이 동일한 수종의 출금이체 청구가 있을 경우 출금 우선순위는 금융기관에서 임의로 지정하여도 이의가 없습니다.
출금이체 신규신청에 의한 이체개시일은 금융기관 및 수납기관의 사정에 의해 결정되며, 수납기관으로부터 사전 통지 받은 청구일을 최초 개시일로 하겠습니다.
출금이체에 의한 지정계좌에서의 출금은 수납기관의 청구대로 출금키로 하며, 청구금액에 이의가 있을 경우에는 본인과 수납기관이 협의하여 조정합니다.
본 출금이체 신청에 대하여 분쟁이 발생하는 경우, 금융기관의 귀책사유가 없는 한 본인의 책임으로 하겠습니다.
이 약관은 신청서를 수납기관에 직접 제출하여 출금이체를 신청한 경우에도 적용합니다.</pre>
                            <pre id="naver_financial_rule" class="mi-font-basic mi-font-darkblack mi-text-left mi-over-scroll-y padding_r_15" style="white-space:pre-wrap;height:300px;display:none;">제1장 총칙
제1조 (목적)
본 약관은 네이버파이낸셜㈜(이하 "회사"라 합니다)가 제공하는 선불전자지급수단의 발행 및 관리서비스, 전자지급결제대행서비스 및 결제대금예치서비스(이하 통칭하여 "전자금융거래서비스"라 합니다)를 "회원"이 이용함에 있어, "회사"와 "회원" 간 권리, 의무 및 "회원"의 서비스 이용절차 등에 관한 사항을 규정하는 것을 그 목적으로 합니다.

제2조 (정의)
① 본 약관에서 정한 용어의 정의는 아래와 같습니다.
1. "전자금융거래"라 함은 "회사"가 "전자적 장치"를 통하여 전자금융업무를 제공하고, "회원"이 "회사"의 종사자와 직접 대면하거나 의사소통을 하지 아니하고 자동화된 방식으로 이를 이용하는 거래를 말합니다.
2. "전자지급거래"라 함은 자금을 주는 자가 "회사"로 하여금 전자지급수단을 이용하여 자금을 받는 자에게 자금을 이동하게 하는 "전자금융거래"를 말합니다.
3. "전자적 장치"라 함은 "전자금융거래"정보를 전자적 방법으로 전송하거나 처리하는 데 이용되는 장치로서 현금자동지급기, 자동입출금기, 지급용단말기, 컴퓨터, 전화기 그 밖에 전자적 방법으로 정보를 전송하거나 처리하는 장치를 말합니다.
4. "접근매체"라 함은 "전자금융거래"에 있어서 "거래지시"를 하거나 이용자 및 거래내용의 진실성과 정확성을 확보하기 위하여 사용되는 수단 또는 정보로서 "전자금융거래서비스"를 이용하기 위하여 "회사"에 등록된 아이디 및 비밀번호, 기타 "회사"가 지정한 수단을 말합니다.
5. "아이디"란 "회원"의 식별과 서비스 이용을 위하여 "회원"이 설정하고 "회사"가 승인한 숫자와 문자의 조합을 말합니다.
6. "비밀번호"라 함은 "회원"의 동일성 식별과 "회원" 정보의 보호를 위하여 "회원"이 설정하고 "회사"가 승인한 숫자와 문자의 조합을 말합니다.
7. "회원"이라 함은 본 약관에 동의하고 본 약관에 따라 "회사"가 제공하는 "전자금융거래서비스"를 이용하는 자를 말합니다.
8. "거래지시"라 함은 "회원"이 본 약관에 따라 "회사"에게 "전자금융거래"의 처리를 지시하는 것을 말합니다.
9. "오류"라 함은 "회원"의 고의 또는 과실 없이 "전자금융거래"가 본 약관 또는 "회원"의 "거래지시"에 따라 이행되지 아니한 경우를 말합니다.
② 본 조 및 본 약관의 다른 조항에서 정의한 것을 제외하고는 전자금융거래법 등 관련 법령에 정한 바에 따릅니다.
제3조 (약관의 명시 및 변경)
① "회사"는 "회원"이 "전자금융거래"를 하기 전에 본 약관을 서비스 페이지에 게시하고 본 약관의 중요한 내용을 확인할 수 있도록 합니다.
② "회사"는 "회원"의 요청이 있는 경우 전자문서의 전송(전자우편을 이용한 전송을 포함합니다)의 방식에 의하여 본 약관의 사본을 "회원"에게 교부합니다.
③ "회사"가 본 약관을 변경하는 때에는 그 시행일 1월 전에 변경되는 약관을 금융거래정보 입력화면 또는 서비스 홈페이지에 게시함으로써 "회사"에게 공지합니다. 다만, 법령의 개정으로 인하여 긴급하게 약관을 변경한 때에는 변경된 약관을 서비스 이용 초기화면 등에 1개월 이상 게시하고 "회사"에게 사후 통지합니다.
④ 이용자는 변경에 동의하지 아니한 경우 제3항의 고지나 통지를 받은 날로부터 30일 이내에 계약을 해지할 수 있으며, 계약해지의 의사표시를 하지 아니한 경우에는 변경에 동의한 것으로 봅니다.
제4조 (거래내용의 확인)
① "회사"는 서비스 페이지의 "내 정보" 조회 화면을 통하여 "회원"의 거래내용("회원"의 "오류정정 요구사실 및 처리결과에 관한 사항"을 포함합니다)을 확인할 수 있도록 하며, "회원"이 거래내용에 대해 서면교부를 요청하는 경우에는 요청을 받은 날로부터 2주 이내에 모사전송, 우편 또는 직접 교부의 방법으로 거래내용에 관한 서면을 교부합니다.
② "회사"는 제1항에 따른 "회원"의 거래내용 서면교부 요청을 받은 경우 전자적 장치의 운영장애, 그 밖의 이유로 거래내용을 제공할 수 없는 때에는 즉시 "회원"에게 전자문서 전송(전자우편을 이용한 전송을 포함합니다)의 방법으로 그러한 사유를 알려야 하며, 전자적 장치의 운영장애 등의 사유로 거래내용을 제공할 수 없는 기간은 제1항의 거래내용에 관한 서면의 교부기간에 산입하지 아니합니다.
③ 제1항의 대상이 되는 거래내용 중 대상기간이 5년인 것은 다음 각호와 같습니다.
1. 거래계좌의 명칭 또는 번호
2. 전자금융거래의 종류 및 금액
3. 전자금융거래상대방을 나타내는 정보
4. 전자금융거래일시
5. "전자적 장치"의 종류 및 "전자적 장치"를 식별할 수 있는 정보
6. "회사"가 "전자금융거래"의 대가로 받은 수수료
7. "회원"의 출금 동의에 관한 사항
8. 해당 "전자금융거래"와 관련한 "전자적 장치"의 접속기록
9. "전자금융거래"의 신청 및 조건의 변경에 관한 사항
10. 건당 거래금액이 1만원을 초과하는 전자금융거래에 관한 기록
④ 제1항의 대상이 되는 거래내용 중 대상기간이 1년인 것은 다음 각호와 같습니다.
1. 전자지급수단 이용과 관련된 거래승인에 관한 기록
2. "회원"의 오류정정 요구사실 및 처리결과에 관한 사항
3. 기타 금융위원회가 고시로 정한 사항
4. 건당 거래금액이 1만원 이하인 소액 전자금융거래에 관한 기록
⑤ "회원"이 제1항에서 정한 서면교부를 요청하고자 할 경우 다음의 주소 및 전화번호로 요청할 수 있습니다.
서면교부를 요청 시 필요한 주소 및 전화번호
네이버페이
① 주소 : 강원도 춘천시 퇴계로 89 강원전문건설회관
② 이메일주소 : helpcustomer@naver.com
③ 전화번호 : 1588-3819
제5조 ("거래지시"의 철회 등)
"회원"이 "회사"의 "전자금융거래서비스"를 이용하여 전자지급거래를 한 경우, "회원"은 지급의 효력이 발생하기 전까지 본 약관에서 정한 바에 따라 제4조 제5항에 기재된 연락처로 전자문서의 전송(전자우편을 이용한 전송을 포함합니다) 또는 서비스 페이지 내 철회에 의한 방법으로 "거래지시"를 철회할 수 있습니다. 단, 각 서비스 별 "거래지시" 철회의 효력 발생시기는 본 약관 제15조, 제20조 및 제25조에서 정한 바에 따릅니다.

제6조 ("오류"의 정정 등)
① "회원"은 "전자금융거래서비스"를 이용함에 있어 "오류"가 있음을 안 때에는 "회사"에 대해 그 정정을 요구할 수 있으며, "회사"는 "회원"의 정정 신청이 있는 경우 이를 조사하여 "오류"가 있는 경우 정정 절차를 진행하고 정정요구를 받은 날로부터 2주 이내에 그 결과를 "회원"에게 알려 드립니다.
② "회사"는 스스로 "전자금융거래"에 "오류"가 있음을 안 때에도 이를 즉시 조사하여 처리한 후 그 결과를 2주 이내에 문서로 "회원"에게 알려 드립니다. 다만, "회원"의 주소가 분명하지 아니하거나 "회원"이 요청한 경우에는 전화 또는 전자우편 등의 방법으로 알릴 수 있습니다.
제7조 ("전자금융거래" 기록의 생성 및 보존)
① "회사"는 "회원" 이용한 전자금융거래의 내용을 추적, 검색하거나 그 내용에 오류가 발생한 경우에 이를 확인하거나 정정할 수 있는 기록을 생성하여 보존합니다.
② 제1항의 규정에 따라 회사가 보존하여야 하는 기록의 종류 및 보존방법은 제4조 제3항 및 제4항에서 정한 바에 따릅니다.
제8조 ("전자금융거래"정보의 제공금지)
① "회사"는 "전자금융거래서비스"를 제공함에 있어서 취득한 "회원"의 인적 사항, "회원"의 계좌, "접근매체" 및 "전자금융거래"의 내용과 실적에 관한 정보 또는 자료를 법령에 의하거나 "회원"의 동의를 얻지 아니하고 제3자에게 제공, 누설하거나 업무 상 목적 외에 사용하지 아니합니다.
② "회사"는 "회원"이 안전하게 "전자금융거래서비스"를 이용할 수 있도록 "회원"의 개인정보보호를 위하여 개인정보취급방침을 운용합니다. "회사"의 개인정보취급방침은 "회사"의 홈페이지 또는 서비스 페이지에 링크된 화면에서 확인할 수 있습니다.
제9조 ("회사"의 책임)
① "회사"는 "접근매체"의 위조나 변조로 발생한 사고(단, "회사"가 "접근매체"의 발급 주체이거나 사용, 관리 주체인 경우), 계약체결 또는 "거래지시"의 전자적 전송이나 처리과정에서 발생한 사고로 인하여 "회원"에게 손해가 발생한 경우에는 그 손해를 배상할 책임을 부담합니다.
② "회사"는 제1항에도 불구하고 다음 각호의 경우에는 그 책임의 전부 또는 일부를 "회원"이 부담하게 할 수 있습니다.
1. "회원"이 "접근매체"를 제3자에게 대여하거나 그 사용을 위임한 경우 또는 양도나 담보의 목적으로 제공한 경우
2. 제3자가 권한 없이 "회원"의 "접근매체"를 이용하여 "전자금융거래"를 할 수 있음을 알았거나 쉽게 알 수 있었음에도 불구하고 "접근매체"를 누설하거나 노출 또는 방치한 경우
3. 법인("중소기업기본법" 제2조 제2항에 의한 소기업을 제외합니다)인 "회원"에게 손해가 발생한 경우로서 "회사"가 사고를 방지하기 위하여 보안절차를 수립하고 이를 철저히 준수하는 등 합리적으로 요구되는 충분한 주의의무를 다한 경우
③ "회사"는 전자금융거래를 위한 전자적 장치 또는 '정보통신망 이용촉진 및 정보보호 등에 관한 법률' 제 2조 제 1항 제 1호에 따른 정보통신망에 침입하여 거짓이나 그 밖의 부정한 방법으로 획득한 접근매체의 이용으로 발생한 사고로 인하여 이용자에게 그 손해가 발생한 경우에는 그 손해를 배상할 책임이 있습니다.
④ "회사"는 컴퓨터 등 정보통신설비의 보수점검, 교체의 사유가 발생하여 전자금융서비스의 제공을 일시적으로 중단할 경우에는 "회사"의 홈페이지 또는 서비스 페이지를 통하여 이용자에게 중단 일정 및 중단 사유를 사전에 공지합니다.
제10조 (분쟁처리 및 분쟁조정)
① "회원"은 "회사"의 서비스 페이지 하단에 게시된 분쟁처리 담당자에 대하여 "전자금융거래"와 관련한 의견 및 불만의 제기, 손해배상의 청구 등의 분쟁처리를 요구할 수 있습니다.
② "회원"이 "회사"에 대하여 분쟁처리를 신청한 경우에는 "회사"는 15일 이내에 이에 대한 조사 또는 처리 결과를 "회원"에게 안내 합니다.
③ "회원"은 "회사"의 분쟁처리결과에 대하여 이의가 있을 경우 "금융위원회의 설치 등에 관한 법률" 제51조의 규정에 따른 금융감독원의 금융분쟁조정위원회나 "소비자기본법" 제60조 제1항의 규정에 따른 한국소비자원의 소비자분쟁조정위원회에 "회사"의 "전자금융거래서비스"의 이용과 관련한 분쟁조정을 신청할 수 있습니다.
제11조 ("회사"의 안정성 확보 의무)
"회사"는 전자금융거래가 안전하게 처리될 수 있도록 선량한 관리자로서의 주의를 다하며, "전자금융거래"의 안정성과 신뢰성을 확보할 수 있도록 "전자금융거래"의 종류 별로 전자적 전송이나 처리를 위한 인력, 시설, "전자적 장치" 등의 정보기술부문 및 전자금융업무에 관하여 금융위원회가 정하는 기준을 준수합니다.

제12조 (약관 외 준칙)
"회사"와 "회원" 사이에 개별적으로 합의한 사항이 이 약관에 정한 사항과 다를 때에는 그 합의사항을 이 약관에 우선하여 적용합니다. 본 약관에서 정하지 아니한 사항(용어의 정의 포함)에 대하여는 전자금융거래법, 여신전문금융업법 등 소비자보호에 관한 법령 및 개별 약관에서 정한 바에 따릅니다.

제13조 (관할)
"회사"와 "회원" 간에 발생한 분쟁에 관한 관할은 민사소송법에서 정한 바에 따릅니다.

제2장 전자지급결제대행 서비스
제14조 (정의)
본 장에서 정하는 용어의 정의는 아래와 같습니다.

1. "전자지급결제대행 서비스"라 함은 전자적 방법으로 재화 또는 용역(이하 이 약관에서 "재화 등"이라고 합니다)의 구매에 있어서 지급결제 정보를 송신하거나 수신하는 것 또는 그 대가의 정산을 대행하거나 매개하는 서비스를 말합니다.
2. "회원"이라 함은 본 약관에 동의하고 "회사"가 제공하는 "전자지급결제대행 서비스"를 이용하는 자를 말합니다.
제15조 ("거래지시"의 철회)
①"회원"이 "전자지급결제대행서비스"를 이용한 경우, 이용자는 "거래지시"된 금액의 정보에 대하여 수취인의 계좌가 개설되어 있는 금융기관 또는 "회사"의 계좌의 원장에의 입금기록 또는 "전자적 장치"에의 입력이 끝나기 전까지 "거래지시"를 철회할 수 있습니다.
② "회사"는 "회원"의 "거래지시"의 철회에 따라 지급거래가 이루어지지 않은 경우 수령한 자금을 "회원"에게 반환하여야 합니다.
제16조 ("한도" 등)
"회사"의 정책 및 결제업체(이동통신사, 카드사 등)의 기준에 따라 "회원"의 결제수단 별 월 누적 결제액 및 결제한도가 제한될 수 있습니다.

제17조 ("접근매체"의 관리)
① "회사"는 "전자지급결제대행 서비스" 제공 시 "접근매체"를 선정하여 "회원"의 신원, 권한 및 "거래지시"의 내용 등을 확인합니다.
② "회원"은 "접근매체"를 사용함에 있어서 다른 법률에 특별한 규정이 없는 한 다음 각 호의 행위를 하여서는 아니 됩니다.
1. "접근매체"를 양도하거나 양수하는 행위
2. "접근매체"를 대여하거나 사용을 위임하는 행위
3. "접근매체"를 질권 기타 담보 목적으로 하는 행위
4. 1호부터 3호까지의 행위를 알선하는 행위
③ "회원"은 자신의 "접근매체"를 제3자에게 누설 또는 노출하거나 방치하여서는 안되며, "접근매체"의 도용이나 위조 또는 변조를 방지하기 위하여 충분한 주의를 기울여야 합니다.
④ "회사"는 "회원"으로부터 "접근매체"의 분실이나 도난 등의 통지를 받은 때에는 그 때부터 제3자가 그 "접근매체"를 사용함으로 인하여 "회원"에게 발생한 손해를 배상할 책임이 있습니다.
제3장 결제대금예치서비스
제18조 (정의)
본 장에서 사용하는 용어의 정의는 다음과 같습니다.

1. "결제대금예치서비스"라 함은 서비스 페이지에서 이루어지는 선불식 통신판매에 있어서, "회사"가 "소비자"가 지급하는 결제 대금을 예치하고 배송이 완료되는 등 구매가 확정된 후 "재화 등"의 대금을 "판매자"에게 지급하는 서비스를 말합니다.
2. "선불식 통신판매"라 함은 "소비자"가 "재화 등"을 공급받기 전에 미리 대금의 전부 또는 일부를 지급하는 방식의 통신판매를 말합니다.
3. "판매자"라 함은 본 약관에 동의하고 "회사"가 운영하는 서비스에 입점하여 통신판매를 하는 자를 말합니다.
4. "소비자"라 함은 본 약관에 동의하고 "회사"의 서비스에 입점한 "판매자"로부터 "재화 등"을 구매하는 자로서 전자상거래 등에 서의 소비자보호에 관한 법률 제2조 제5호의 요건에 해당하는 자를 말합니다.
5. "이용자"라 함은 본 조 제3호 및 제4호의 "판매자"와 "소비자"를 말합니다.
제19조 (예치된 결제대금의 지급방법)
① "소비자"(그 "소비자"의 동의를 얻은 경우에는 "재화 등"을 공급받을 자를 포함한다. 이하 제2항 및 제3항에서 같습니다)는 "재화 등"을 공급받은 사실을 "재화 등"을 공급받은 날부터 3영업일 이내에 "회사"에 통보하여야 합니다.
② "회사"는 "소비자"로부터 "재화 등"을 공급받은 사실을 통보 받을 경우 "회사"가 정한 기일 내에 판매자에게 결제대금을 지급합니다.
③ "회사"는 "소비자"가 "재화 등"을 공급받은 날부터 3영업일이 지나도록 정당한 사유의 제시 없이 그 공급받은 사실을 "회사"에 통보하지 아니하는 경우에 "소비자"의 동의 없이 "판매자"에게 결제대금을 지급할 수 있습니다.
④ "회사"가 "판매자"에게 결제대금을 지급하기 전에 "소비자"가 그 결제대금을 환급 받을 정당한 사유가 발생한 경우에는 그 결제대금을 "소비자"에게 환급합니다.
제20조 (거래지시의 철회)
① "이용자"가 "결제대금예치서비스"를 이용한 경우, "이용자"는 거래 지시된 금액의 정보가 수취인이 지정한 전자적 장치에 도달한 때까지 거래지시를 철회할 수 있습니다.
② "회사"는 "소비자"로부터 "재화 등"을 공급받은 사실을 통보 받을 경우 "회사"가 정한 기일 내에 판매자에게 결제대금을 지급합니다.
③ "회사"는 "이용자"의 거래지시의 철회에 따라 지급거래가 이루어지지 않은 경우 수령한 자금을 "이용자"에게 반환하여야 합니다.
제21조 (준용규정)
제17조는 본 장에 준용합니다.

제4장 선불전자지급수단의 발행 및 관리
제22조 (정의)
본 장에서 사용하는 용어의 정의는 다음과 같습니다.

1. "선불전자지급수단"이라 함은 네이버페이 포인트 등 "회사"가 발행 당시 미리 "회원"에게 공지한 전자금융거래법 상 선불전자지급수단을 말합니다.
2. "회원"이라 함은 본 약관에 동의하고 판매자로부터 "재화 등"을 구매하고 선불전자지급수단을 결제수단으로 하여 그 대가를 지급하는 자를 말합니다.
3. "판매자"라 함은 "선불전자지급수단"에 의한 거래에 있어서 "회원"에게 "재화 등"을 판매하는 자를 말합니다.
제23조 ("접근매체"의 관리)
① 제17조는 본 장에 준용합니다.
제24조 (환급 등)
① "회원"은 보유 중인 "선불전자지급수단"의 환급을 "회사"에 요구할 경우 환불수수료를 공제한 미상환 잔액에 대해 전액 환급받을 수 있습니다. 다만, "회원"이 다른 "회원"으로부터 선물 받은 "선불전자지급수단"은 선물 받은 금액이나 "회원"이 "회사"로부터 추가 적립 혜택을 받고 충전한 금액의 경우 [60]% 이상(선물 받은 금액이 1만원 이하인 경우 [80]% 이상)을 사용한 경우에 그 잔액 전액에 대해 환급받을 수 있으며, 상품 구매나 이벤트 등을 통하여 "회사"로부터 무상 제공받은 "선불전자지급수단"의 경우 환급 대상에서 제외됩니다.
② 제1항에도 불구하고, 천재지변 등의 사유로 가맹점이 재화 또는 용역을 제공하기 곤란하여 선불전자지급수단을 사용하지 못하게 된 경우 또는 선불전자지급수단의 결함으로 가맹점이 재화 또는 용역을 제공하지 못하는 경우에는 선불전자지급수단에 기록된 잔액의 전부를 지급합니다.
③ "회원"은 "회사"에서 정한 기한 및 이용방법에 따라 "선불전자지급수단"을 이용할 수 있으며, "회사"는 그 구체적 사항을 서비스 페이지를 통해 공지합니다.
제25조 ("거래지시"의 철회)
"회원"이 "선불전자지급수단"을 이용하여 자금을 지급하는 경우, "회원"은 거래 지시된 금액의 정보가 수취인이 지정한 "전자적 장치"에 도달하기 전까지 "거래지시"를 철회할 수 있습니다.

제26조 ("선불전자지급수단"의 한도 등)
① "회사"는 "선불전자지급수단"에 대해 실지명의 당 최고 200만원을 그 보유 한도로 합니다. 단 보유 한도는 "회사"의 정책에 따라 감액될 수 있습니다.
② 제16조는 본 장에 준용합니다.
제27조 (소멸시효)
"선불전자지급수단"의 소멸시효는 마지막 적립, 충전일 또는 사용일로부터 10년이며, "회원"은 "회사"가 정한 소멸시효 내에서만 "선불전자지급수단"을 사용할 수 있습니다.

제28조 (기타)
① "회사"는 신유형 상품권 표준약관 제4조의 표시사항을 네이버페이 서비스페이지, 고객센터 등에 표시합니다.
② "회사"는 선불전자지급수단의 지급보증 또는 피해보상보험계약 대신 전자금융거래법에서 정한 준비금을 적립하였습니다.
<부칙> 본 약관은 2019년 11월 1일부터 적용됩니다.</pre>
							<pre id="nicepay_financial_rule" class="mi-font-basic mi-font-darkblack mi-text-left mi-over-scroll-y padding_r_15" style="white-space:pre-wrap;height:300px;">제1조 (목적)
이 약관은 NICE페이먼츠 주식회사(이하 '회사'라 합니다)가 제공하는 전자지급결제대행서비스 및 결제대금예치서비스를 이용자가 이용함에 있어 회사와 이용자 사이의 전자금융거래에 관한 기본적인 사항을 정함을 목적으로 합니다.

제2조 (용어의 정의)
이 약관에서 정하는 용어의 정의는 다음과 같습니다.

'전자금융거래'라 함은 회사가 전자적 장치를 통하여 전자지급결제대행서비스 및 결제대금예치서비스(이하 '전자금융거래 서비스'라고 합니다)를 제공하고, 이용자가 회사의 종사자와 직접 대면하거나 의사소통을 하지 아니하고 자동화된 방식으로 이를 이용하는 거래를 말합니다.
'전자지급결제대행서비스'라 함은 전자적 방법으로 재화의 구입 또는 용역의 이용에 있어서 지급결제정보를 송신하거나 수신하는 것 또는 그 대가의 정산을 대행하거나 매개하는 서비스를 말합니다.
'결제대금예치서비스'라 함은 이용자가 재화의 구입 또는 용역의 이용에 있어서 그 대가(이하 '결제대금'이라 한다)의 전부 또는 일부를 재화 또는 용역(이하 '재화 등'이라 합니다)을 공급받기 전에 미리 지급하는 경우, 회사가 이용자의 물품수령 또는 서비스 이용 확인 시점까지 결제대금을 예치하는 서비스를 말합니다.
'이용자'라 함은 이 약관에 동의하고 회사가 제공하는 전자금융거래 서비스를 이용하는 자를 말합니다.
'접근매체'라 함은 전자금융거래에 있어서 거래지시를 하거나 이용자 및 거래내용의 진실성과 정확성을 확보하기 위하여 사용되는 수단 또는 정보로서 전자식 카드 및 이에 준하는 전자적 정보(신용카드번호를 포함한다), '전자서명법'상의 인증서, 회사에 등록된 이용자번호, 이용자의 생체정보, 이상의 수단이나 정보를 사용하는데 필요한 비밀번호 등 전자금융거래법 제2조 제10호에서 정하고 있는 것을 말합니다.
'거래지시'라 함은 이용자가 본 약관에 의하여 체결되는 전자금융거래계약에 따라 회사에 대하여 전자금융거래의 처리를 지시하는 것을 말합니다.
'오류'라 함은 이용자의 고의 또는 과실 없이 전자금융거래가 전자금융거래계약 또는 이용자의 거래지시에 따라 이행되지 아니한 경우를 말합니다.

제3조 (약관의 명시 및 변경)
회사는 이용자가 전자금융거래 서비스를 이용하기 전에 이 약관을 게시하고 이용자가 이 약관의 중요한 내용을 확인할 수 있도록 합니다.
회사는 이용자의 요청이 있는 경우 전자문서의 전송방식에 의하여 본 약관의 사본을 이용자에게 교부합니다.
회사가 약관을 변경하는 때에는 그 시행일 1월 전에 변경되는 약관을 회사가 제공하는 전자금융거래 서비스 이용 초기화면 및 회사의 홈페이지에 게시함으로써 이용자에게 공지합니다.
회사는 제3항의 공지를 할 경우 "이용자가 변경에 따라 변경에 동의하지 아니한 경우 공지 받은 날로부터 30일 이내에 계약을 해지할 수 있으며, 해지의사표시를 하지 아니한 경우 동의한 것으로 본다."라는 내용을 통지합니다.

제4조 (전자지급결제대행서비스의 종류)
회사가 제공하는 전자지급결제대행서비스는 지급결제수단에 따라 다음과 같이 구별됩니다.

신용카드결제대행서비스: 이용자가 결제대금의 지급을 위하여 제공한 지급결제수단이 신용카드인 경우로서, 회사가 전자결제시스템을 통하여 신용카드 지불정보를 송, 수신하고 결제대금의 정산을 대행하거나 매개하는 서비스를 말합니다.
계좌이체결제대행서비스: 이용자가 결제대금을 회사의 전자결제시스템을 통하여 금융기관에 등록한 자신의 계좌에서 출금하여 원하는 계좌로 이체할 수 있는 실시간 송금 서비스를 말합니다.
가상계좌결제대행서비스: 이용자가 결제대금을 현금으로 결제하고자 경우 회사의 전자결제시스템을 통하여 자동으로 이용자만의 고유한 일회용 계좌의 발급을 통하여 결제대금의 지급이 이루어지는 서비스를 말합니다.
간편결제서비스 : 이용자가 결제대금의 지급을 위하여 제공한 지급결제수단이 신용카드, 계좌이체인 경우로서, 정보를 매번 입력할 필요 없이 관련 정보의 한번 등록만으로 상품 결제가 가능한 서비스를 말합니다. 단, 간편결제서비스 신청 시 회사가 정하는 이용자의 본인확인 절차가 반드시 필요하며, 회사의 인증 및 승낙이 있어야 서비스를 이용할 수 있습니다.
기타: 회사가 제공하는 서비스로서 지급결제수단의 종류에 따라 '휴대폰 결제대행서비스', '상품권결제대행서비스', 등이 있습니다.

제5조 (결제대금예치서비스의 내용)
이용자(이용자의 동의가 있는 경우에는 재화 등을 공급받을 자를 포함합니다. 이하 본 조에서 같습니다)는 재화 등을 공급받은 사실을 재화 등을 공급받은 날부터 3영업일 이내에 회사에 통보하여야 합니다.
회사는 이용자로부터 재화 등을 공급받은 사실을 통보 받은 후 회사와 통신판매업자간 사이에서 정한 기일 내에 통신판매업자에게 결제대금을 지급합니다.
회사는 이용자가 재화 등을 공급받은 날부터 3영업일이 지나도록 정당한 사유의 제시 없이 그 공급받은 사실을 회사에 통보하지 아니하는 경우에는 이용자의 동의 없이 통신판매업자에게 결제대금을 지급할 수 있습니다.
회사는 통신판매업자에게 결제대금을 지급하기 전에 이용자에게 결제대금을 환급 받을 사유가 발생한 경우에는 그 결제대금을 소비자에게 환급합니다.
회사는 이용자와의 결제대금예치서비스 이용과 관련된 구체적인 권리, 의무를 정하기 위하여 본 약관과는 별도로 결제대금예치서비스이용약관을 제정할 수 있습니다.

제6조 (이용시간)
회사는 이용자에게 연중무휴 1일 24시간 전자금융거래 서비스를 제공함을 원칙으로 합니다. 단, 금융기관 기타 결제수단 발행업자의 사정에 따라 달리 정할 수 있습니다. 계좌이체결제대행서비스, 가상계좌결제대행서비스, 간편결제서비스는 은행사의 사정에 따라 “00:30~ 23:30” 까지 전자금융거래 서비스를 제공함을 원칙으로 합니다.
회사는 정보통신설비의 보수, 점검 기타 기술상의 필요나 금융기관 기타 결제수단 발행업자의 사정에 의하여 서비스 중단이 불가피한 경우, 서비스 중단 3일 전까지 게시 가능한 전자적 수단을 통하여 서비스 중단 사실을 게시한 후 서비스를 일시 중단할 수 있습니다. 다만, 시스템 장애복구, 긴급한 프로그램 보수, 외부요인 등 불가피한 경우에는 사전 게시 없이 서비스를 중단할 수 있습니다.

제7조 (접근매체의 선정과 사용 및 관리)
회사는 전자금융거래 서비스 제공 시 접근매체를 선정하여 이용자의 신원, 권한 및 거래지시의 내용 등을 확인할 수 있습니다.
이용자는 접근매체를 제3자에게 대여하거나 사용을 위임하거나 양도, 양수 또는 담보 목적으로 제공할 수 없습니다.
이용자는 자신의 접근매체를 제3자에게 누설 또는 노출하거나 방치하여서는 안되며, 접근매체의 도용이나 위조 또는 변조를 방지하기 위하여 충분한 주의를 기울여야 합니다.
회사는 이용자로부터 접근매체의 분실이나 도난 등의 통지를 받은 때에는 그 때부터 제3자가 그 접근매체를 사용함으로 인하여 이용자에게 발생한 손해를 배상할 책임이 있습니다.

제8조 (거래내용의 확인)
회사는 이용자와 미리 약정한 전자적 방법을 통하여 이용자의 거래내용(이용자의 '오류정정 요구사실 및 처리결과에 관한 사항'을 포함합니다)을 확인할 수 있도록 하며, 이용자의 요청이 있는 경우에는 요청을 받은 날로부터 2주 이내에 모사전송 등의 방법으로 거래내용에 관한 서면을 교부합니다.
회사는 제1호에 따른 이용자의 거래내용 서면교부 요청을 받은 경우 전자적 장치의 운영장애, 그 밖의 사유로 거래내용을 제공할 수 없는 때에는 즉시 이용자에게 전자문서 전송(전자우편을 이용한 전송을 포함합니다)의 방법으로 그러한 사유를 알려야 하며, 전자적 장치의 운영장애 등의 사유로 거래내용을 제공할 수 없는 기간은 제1호의 거래내용에 관한 서면의 교부기간에 산입하지 아니합니다.
회사가 이용자에게 제공하는 거래내용 중 거래계좌의 명칭 또는 번호, 거래의 종류 및 금액, 거래상대방을 나타내는 정보, 거래일자, 전자적 장치의 종류 및 전자적 장치를 식별할 수 있는 정보와 해당 전자금융거래와 관련한 전자적 장치의 접속기록, 회사가 전자금융거래의 대가로 받은 수수료, 이용자의 출금 동의에 관한 사항, 전자금융거래의 신청 및 조건의 변경에 관한 사항, 건당 거래금액이 1만원을 초과하는 전자금융거래에 관한 기록은 5년간, 건당 거래금액이 1만원 이하인 소액 전자금융거래에 관한 기록, 전자지급수단 이용 시 거래승인에 관한 기록, 이용자의 오류정정 요구사실 및 처리결과에 관한 사항은 1년간의 기간을 대상으로 하되, 회사가 전자지급결제대행 서비스 제공의 대가로 수취한 수수료에 관한 사항은 제공하는 거래내용에서 제외됩니다.
이용자가 제1항에서 정한 서면교부를 요청하고자 할 경우 다음의 주소 및 전화번호로 요청할 수 있습니다.
주소: 서울시 마포구 마포대로217(아현동) 크레디트센터
이메일 주소: nicepay@nicepay.co.kr
전화번호: 1661-0808 / 1661-7335
FAX: 02-312-3591

제9조 (오류의 정정 등)
이용자는 전자금융거래 서비스를 이용함에 있어 오류가 있음을 안 때에는 회사에 대하여 그 정정을 요구할 수 있습니다.
회사는 전항의 규정에 따른 오류의 정정요구를 받은 때에는 이를 즉시 조사하여 처리한 후 정정요구를 받은 날부터 2주 이내에 그 결과를 이용자에게 알려 드립니다.

제10조 (회사의 책임)
회사는 접근매체의 위조나 변조로 발생한 사고로 인하여 이용자에게 발생한 손해에 대하여 배상책임이 있습니다. 다만 이용자가 제7조 제2항에 위반하거나 제3자가 권한 없이 이용자의 접근매체를 이용하여 전자금융거래를 할 수 있음을 알았거나 알 수 있었음에도 불구하고 이용자가 자신의 접근매체를 누설 또는 노출하거나 방치한 경우 그 책임의 전부 또는 일부를 이용자가 부담하게 할 수 있습니다.
회사는 계약체결 또는 거래지시의 전자적 전송이나 처리과정에서 발생한 사고로 인하여 이용자에게 그 손해가 발생한 경우에는 그 손해를 배상할 책임이 있습니다. 다만 본 조 제1항 단서에 해당하거나 법인('중소기업기본법' 제2조 제2항에 의한 소기업을 제외합니다)인 이용자에게 손해가 발생한 경우로서 회사가 사고를 방지하기 위하여 보안절차를 수립하고 이를 철저히 준수하는 등 합리적으로 요구되는 충분한 주의의무를 다한 경우 그 책임의 전부 또는 일부를 이용자가 부담하게 할 수 있습니다.
회사는 전자금융거래를 위한 전자적 장치 또는 ‘정보통신망 이용촉진 및 정보보호 등에 관한 법률’ 제2조제1항제1호에 따른 정보통신망에 침입하여 거짓이나 그 밖의 부정한 방법으로 획득한 접근매체의 이용으로 발생한 사고로 인하여 이용자에게 그 손해가 발생한 경우에는 그 손해를 배상할 책임이 있습니다.다만, 다음과 같은 경우 회사는 이용자에 대하여 일부 또는 전부에 대하여 책임을 지지 아니합니다.
 가. 회사가 접근매체에 따른 확인 외에 보안강화를 위하여 전자금융거래 시 요구하는 추가적인 보안조치를 이용자가 정당한 사유 없이 거부하여 전자금융거래법 제9조 제1항 제3호에 따른(이하 '사고'라 한다) 사고가 발생한 경우
 나. 이용자가 동항 제 가목의 추가적인 보안조치에서 사용되는 매체, 수단 또는 정보에 대하여 다음과 같은 행위를 하여 '사고'가 발생하는 경우
   - 누설, 누출 또는 방치한 행위
   - 3자에게 대여하거나 그 사용을 위임한 행위 또는 양도나 담보의 목적으로 제공한 행위

제11조 (전자지급거래계약의 효력)
회사는 이용자의 거래지시가 전자지급거래에 관한 경우 그 지급절차를 대행하며, 전자지급거래에 관한 거래지시의 내용을 전송하여 지급이 이루어지도록 합니다.
회사는 이용자의 전자지급거래에 관한 거래지시에 따라 지급거래가 이루어지지 않은 경우 수령한 자금을 이용자에게 반환하여야 합니다.

제12조 (거래지시의 철회)
이용자가 전자금융거래를 한 경우, 이용자는 지급의 효력이 발생하기 전까지 본 약관 제8조 제4항 기재 담당자에게 전자문서의 전송(전자우편을 이용한 전송을 포함합니다)에 의한 방법으로 거래지시를 철회할 수 있습니다.
전항의 지급의 효력이 발생 시점이란 (i) 전자자금이체의 경우에는 거래 지시된 금액의 정보에 대하여 수취인의 계좌가 개설되어 있는 금융기관의 계좌 원장에 입금기록이 끝난 때 (ii) 그 밖의 전자지급수단으로 지급하는 경우에는 거래 지시된 금액의 정보가 수취인의 계좌가 개설되어 있는 금융기관의 전자적 장치에 입력이 끝난 때를 말합니다.
이용자는 지급의 효력이 발생한 경우에는 전자상거래 등에서의 소비자보호에 관한 법률 등 관련 법령상 청약의 철회의 방법 또는 본 약관 제5조에서 정한 바에 따라 결제대금을 반환 받을 수 있습니다.

제13조 (전자금융거래 기록의 생성 및 보존)
회사는 이용자가 전자금융거래의 내용을 추적, 검색하거나 그 내용에 오류가 발생한 경우에 이를 확인하거나 정정할 수 있는 기록을 생성하여 보존합니다.
전항의 규정에 따라 회사가 보존하여야 하는 기록의 종류 및 보존방법은 제8조 제3항에서 정한 바에 따릅니다.

제14조 (전자금융거래정보의 제공금지)
회사는 전자금융거래 서비스를 제공함에 있어서 취득한 이용자의 인적 사항, 이용자의 계좌, 접근매체 및 전자금융거래의 내용과 실적에 관한 정보 또는 자료를 금융실명법 등 법령에 의하거나 이용자의 동의를 얻지 아니하고 제3자에게 제공, 누설하거나 업무상 목적 외에 사용하지 아니합니다.

제15조 (분쟁처리 및 분쟁조정)
이용자는 다음의 분쟁처리 책임자 및 담당자에 대하여 전자금융거래 서비스 이용과 관련한 의견 및 불만의 제기, 손해배상의 청구 등의 분쟁처리를 요구할 수 있습니다.
담당자: RM팀
연락처(전화번호, 전자우편주소): 1661-0808 / 1661-7335, rm@nicepay.co.kr
이용자가 회사에 대하여 분쟁처리를 신청한 경우에는 회사는 15일 이내에 이에 대한 조사 또는 처리 결과를 이용자에게 안내합니다.
이용자는 '금융위원회의 설치 등에 관한 법률' 제51조의 규정에 따른 금융감독원의 금융분쟁조정위원회나 '소비자기본법' 제33조 제1항의 규정에 따른 소비자보호원에 회사의 전자금융거래 서비스의 이용과 관련한 분쟁조정을 신청할 수 있습니다.

제16조 (회사의 안정성 확보 의무)
회사는 전자금융거래가 안전하게 처리될 수 있도록 선량한 관리자로서의 주의를 다하며, 전자금융거래의 안전성과 신뢰성을 확보할 수 있도록 전자금융거래의 종류별로 전자적 전송이나 처리를 위한 인력, 시설, 전자적 장치 등의 정보기술부문 및 전자금융업무에 관하여 금융위원회가 정하는 기준을 준수합니다.

제17조 (약관 외 준칙)
회사와 이용자 사이에 개별적으로 합의한 사항이 이 약관에 정한 사항과 다를 때에는 그 합의사항을 이 약관에 우선하여 적용합니다.
전자금융거래에 관하여 이 약관에 정하지 않은 사항은 개별약관이 정하는 바에 따릅니다.
이 약관과 전자금융거래에 관한 개별약관에 정하지 않은 사항(용어의 정의 포함)에 대하여는 다른 합의사항이 없으면 전자금융거래법, 전자상거래 등에서의 소비자 보호에 관한 법률, 여신전문금융업법 등 관계 법령에서 정한 바에 따릅니다.

제18조 (관할)
회사와 이용자간에 발생한 분쟁에 관한 관할은 민사소송법에서 정한 바에 따릅니다.</pre>
						</div>
					</div>
					
					<div class="mi-accordion reverse-v border_none">
						<div class="mi-accordion-title">
							<p class="mi-font-darkblack mi-font-basic">개인정보 수집 및 이용에 동의합니다.</p>
						</div>
						<div class="mi-accordion-contents">
							<pre class="mi-font-basic mi-font-darkblack mi-text-left mi-over-scroll-y padding_r_15" style="white-space:pre-wrap;height:300px;"><p id="ruleArea"></p></pre>
						</div>
					</div>
					
					<div class="mi-accordion reverse-v border_none">
						<div class="mi-accordion-title">
							<p class="mi-font-darkblack mi-font-basic">주문 진행을 위해 판매자에게 개인정보를 제공합니다.</p>
						</div>
						<div class="mi-accordion-contents">
							<div class="mi-text-interval-basic">
									<table class="mi-table mi-table-left">
									<colgroup>
										<col width="100" />
										<col width="*" />
									</colgroup>
									<tr>
										<th class="join-table-interval mi-font-basic c_gray3 mi-bg-gray verti_t mi-text-left">제공받는 자</th>
										<td class="join-table-interval mi-font-basic c_gray8 mi-text-interval-basic">mansshop</td>
									</tr>
									<tr>
										<th class="join-table-interval mi-font-basic c_gray3 mi-bg-gray verti_t mi-text-left">목적</th>
										<td class="join-table-interval mi-font-basic c_gray8 mi-text-interval-basic">판매자와 구매자의 거래의 원활한 진행, 고객상담 및 불만처리, 상품배송</td>
									</tr>
									<tr> 
										<th class="join-table-interval mi-font-basic c_gray3 mi-bg-gray verti_t mi-text-left">제공 항목</th>
										<td class="join-table-interval mi-text-interval-basic mi-text-interval-basic">주문자명, 수령자명, 이메일, 휴대폰번호, 배송지주소, 개인고유통관부호(해외직배송시), 일반전화번호(선택시), 상품구매정보</td>
									</tr>
									<tr> 
										<th class="join-table-interval mi-font-basic c_gray3 mi-bg-gray verti_t mi-text-left">보유 및 이용기간</th>
										<td class="join-table-interval mi-text-interval-basic mi-text-interval-basic">구매확정 후 3개월까지</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div id="BuyerConsent" class="mi-pointer mi-box-ap15">

						<div class="smallCheckIcon mi-group-t15 mi-group-l15">
							<label class="mi-checkbox-circle mi-group-r30" style="margin-bottom:18px;">
								<input type="checkbox" class="mi-hidden agree_rulls" name="agree_check1" value="Y" id="agree_check1">
								<span class="mi-checkbox-circle-label mi-font-darkblack mi-font-13" style="line-height:22px;">구매조건 확인 및 결제 진행 동의</span>
							</label>
							<label class="mi-checkbox-circle mi-group-r30" style="margin-bottom:18px;">
								<input type="checkbox" class="mi-hidden agree_rulls" name="agree_check2" value="Y" id="agree_check2">
								<span class="mi-checkbox-circle-label mi-font-darkblack mi-font-13" style="line-height:22px;">개인정보 제 3자 제공 동의</span>
							</label>
						</div>
							<label>
								<input type="checkbox" class="mi-hidden" id="all_agree" name="all_agree" onchange="allAgree(this)" />
								<span class="mi-checkbox-full-label mi-bold mi-font-darkblack mi-font-13 mi-text-interval-basic">모든 내용을 확인하였으며 전체 동의합니다.</span>
							</label>
						</div>
					<script>
						function allAgree(obj){
								if($(obj).is(':checked')){
									$('.agree_rulls').prop('checked', true);
								} else {
									$('.agree_rulls').prop('checked', false);
								}
						}
						function purchaseAgree(target, length, renderTarget){
							$(target).click(function() {
								var check_arr = [];
								$(target).each(function(index, el) {
									if ($(el).prop('checked')) {
										check_arr.push($(el).prop('checked'));
									}
								});
								if (check_arr.length >= length) {
								
									$(renderTarget).prop('checked', true);
									console.log(renderTarget);
									if (renderTarget == '#all_agree') {
										
										var chk_all = [];
										agree_rulls.forEach(function(el) {
										if (
											$(el+':checked').val() != undefined && 
											$(el+':checked').val() != ''
											) 
											chk_all.push(el);
										});
										console.log(chk_all.length + '        ' + $('.agree_rulls').length);
										if (chk_all.length == $('.agree_rulls').length) {
											$('#all_agree').prop('checked', true);
										}
										else {
											$('#all_agree').prop('checked', false);
										}
									}
								} else {
									$(renderTarget).prop('checked', false);
									if (renderTarget == "#all_agree"){
										$("#all_agree").prop("checked", false);
									}
					
								}
							});
						}
						var agree_rulls = [];
						agree_rulls.push('#agree_check1');
						agree_rulls.push('#agree_check2');
						purchaseAgree(".agree_rulls", $(".agree_rulls").length, "#all_agree");
				
					
				function kakaopay() {
					$.ajax({
						method: "POST",
						url: "https://kapi.kakao.com/v1/payment/ready",
							contentType: "application/x-www-form-urlencoded; charset=UTF-8",
						data: {
							cid: "TC0ONETIME",
							partner_order_id: "GMQDisplay",
							partner_user_id: "<%=id%>",
							item_name: "GMQDisplay",
							quantity: "<%=total_count%>",
							total_amount: "<%=total%>",
							vat_amount: "200",
							tax_free_amount: "0",
							approval_url: "	http://localhost:8080/GMQDisplay-master/order/orderSuccess.jsp?info=<%=order_info%>",
							fail_url: " http://localhost:8080/GMQDisplay-master/order/orderFail.jsp",
							cancel_url: " http://localhost:8080/GMQDisplay-master/order/orderCancel.jsp"
							//pg_token=f5e0398be06439ee4532
						},
						headers: { Authorization: "KakaoAK b417dde18341e245cf145d50eae7f16f" }
					})
					.done(function (msg) {
						$("#frmOrder").submit(function(event) {
							event.preventDefault();
							$.ajax({
								url: "/GMQDisplay-master/xhr/insertOrder.jsp",
								type: "POST",
								data: $(this).serialize()
							})
							.done(function (data) {
								window.open(msg.next_redirect_pc_url, "_self");
							});
						});
					});
				}
				
				</script>
				</div>
				<button type="submit" class="mi-btn mi-btn-red fs16 mi-image-full mi-bold mi-text-interval-lg mi-btn-size-xlg" onclick="kakaopay()">
					<span  class="h0 mi-font-white mi-text-interval-basic mi-inline-block mi-roboto"><%=df.format(total)%></span>원 결제하기
				</button>
			</div>
		</div>	
		
	</div>
	
	<input type="hidden" name="final_money" value="130,560" />
	<input type="hidden" name="price" value="130,560" /> <!-- 상품금액 -->
	
	</form>
	<input type="hidden" id="isPgPromotion" value="">
</div>




<script>
	$("#wrap-mi-accordion").accordionFunc('toggle');
</script>

<div id="layerNode"></div>

<!-- 결제를 위한 영역 -->
<iframe name="paypage" id="paypage" width="0" height="0"></iframe>

<link rel="stylesheet" type="text/css" href="https://static-ux.mustit.co.kr/lib/jquery-bxslider/jquery.bxslider.css" />
<script type="text/javascript" src="https://static-ux.mustit.co.kr/lib/jquery-bxslider/jquery.bxslider.min.js"></script>
<script src="https://nsp.pay.naver.com/sdk/js/naverpay.min.js" type="text/javascript"></script>
<script type="text/javascript">
var  promotionSliderStart = false;
	$(document).ready(function(){
		$("#payment_change_btn").show(); //결제수단변경 버튼
		$("#ordererConsent").accordionFunc('toggle');
	
		// 위변조 주문 체크할 경우 상품이 1개 이상일때 순서가 변경되는 버그 수정 dev_ojy 19.09.05
		        $("#cart_number_idx").val('42498852');
        		
		// 간편결제, 일반결제, Alipay 클릭시 우측 테이블 뷰
		$("input[name='paymethod']").click(function(e){
			for( var cnt = 0 ; cnt < $("input[type='hidden'][name^='usedAddCoupon[']").length ; cnt++ ) {
				if( !checkCouponPaymethodAble("NONE", $("input[type='hidden'][name^='usedAddCoupon[']").eq(cnt).val()) ) {
					if( $(e.target).val() != "simple" ) {
						modal("토스 전용 할인 쿠폰은 타 결제수단 사용 시 사용이 불가합니다.\n간편결제 > 토스를 선택해주세요.");
						return false;
					}
				}
			}
			
			$(".simple").hide(); // 간편결제
			$(".general").hide(); // 일반결제
			$(".alipay").hide(); // 알리페이
			$(".onlyapay").hide(); // 알리페이
			
			$(".no_module1").hide(); // 포인트 전액결제
			$(".no_module2").hide(); // 무통장입금(관리자)
		
			$("input[name='paymethod']").next("label").removeClass("bold");
			
			var check_payment = $(this).attr("id");
			
			
			$("."+check_payment).show();
			$(this).next("label").addClass("bold");
			
			$("input[name=pay_choice]").prop("checked", false);
			$("input[name=payment_kind]").prop("checked", false);
			
			if( $(e.target).val() == "onlyapay" || $(e.target).val() == "bank_soodong" ) {
				$("input[name=gopaymethod]").val( $(e.target).val() );
			} else {
				$("input[name=gopaymethod]").val("");
			}
			
			if( $(e.target).val() == "simple" ) {
				$("#kakaoPay").click();
			} else if( $(e.target).val() == "general" ) {
				$("#card").click();
			}
		});
		
		$("input[name='order_payment_data_save']").click(function(e) {
			var beforeChecked = $(e.target).is(":checked");
			$("input[name='order_payment_data_save']").prop("checked", false);
			$(e.target).prop("checked", beforeChecked);
		});
		

		$("input[name=payment_kind]").click(function(e){
			$("input[name='gopaymethod']").val($(e.target).val());
		});
		
		$("input[name='payment_kind']").click(function() {
			//$(".card_payment").hide();
			// $(".bank_payment").hide();
			$(".vBank").hide();
			
			var payment_kind = $(this).attr("id");
			var paymentStopArea = document.getElementById('paymentStopGuideBankbook');
			if (payment_kind == "bankBook") {
				$('.card_choice_left').hide();
				if( paymentStopArea != null ) paymentStopArea.style.display = 'block';
			} else {
				// $('.card_choice_left').show();
				if( paymentStopArea != null ) paymentStopArea.style.display = 'none';
			}
			
			$("."+payment_kind).show();
			
			//깜짝배송이 선택 되어있다면 안내문구를 노출한다.
			if($(this).attr("id") == "bankBook" && $("input[type=radio]#quick_surprise").prop("checked")) { 
				$(".surprise_guide").show();
				$(".general_payment_top").css("border-bottom", "0");
			} else {
				$(".surprise_guide").hide();
				$(".general_payment_top").css({
					borderBottom : "1px solid #e3e3e3",
					paddingBottom : "30px",
				});
			}
			
			if(!promotionSliderStart &&
				payment_kind == 'card' &&
				$(".promotion-slider img").length > 1) {
				$(".promotion-slider").bxSlider({
					slideWidth : 620
	        		, speed : 500
	        		, pause : 5000
	        		, controls : false
	                , infiniteLoop : true
	                , auto : true
	        		, autoDelay : 3000
	        		, onSliderLoad: function() {
	        			$(".promotion-slider").css({
							"transform":"translate3d(-620px, 0, 0)",
							"-webkit-transform":"translate3d(-620px, 0, 0)",
							"-ms-transform":"translate3d(-620px, 0, 0)"
						});
	        		}
				});
				promotionSliderStart = true;	
			}
		});
		
		// 결제수단 클릭 시
		$("#method_payment span input").click(function(e){
			// $("#payment_change_btn").show();
			$(".card").hide();
			$('.card_payment').hide();
			$(".bank_payment").hide();
			$(".vBank").hide();
			$(".samsungPay").hide();
			$(".payCo").hide();
			$(".kakaoPay").hide();
			$(".lPay").hide();
			$(".kPay").hide();
			$(".nPay").hide();
			$(".tossPayment").hide();
			$(".alipay").hide();
			$(".onlyapay").hide();
			
			var pay_btn = $(this).attr("id");
			var paymentName = $(e.target).data('paymentName');
			changePaymentName(paymentName);
				
			if( $(e.target).data('gopaymethod') == 'card')  {
				$(".card_payment").show();

				if( $(".card_payment option:selected").data('cardname')) {
					changePaymentName($(".card_payment option:selected").data('cardname'));	
				}
				
				$("input[name=payment_kind]").val( $(e.target).data('gopaymethod') );
			} else if($(e.target).data('gopaymethod') == 'VBank') {	
				$(".bank_payment").show();
				$("input[name=payment_kind]").val( $(e.target).data('gopaymethod') );
				
			} else {
				
				$(".card_payment").hide();
				
				$("input[name=payment_kind]").val( '' );
			}
			
			$("input[name=paymethod]").val( $(e.target).data('paymethod') );
			$("input[name=gopaymethod]").val( $(e.target).data('gopaymethod') );
			$("input[name=payment_manage_no]").val( $(e.target).data('payment-manage-no') );
			
			$("."+pay_btn).show();
			
			var checkStartDate = $(e.target).data('checkStartDate');
			var checkEndDate = $(e.target).data('checkEndDate');
			
			
			var nowDate = new Date();
			var nowMonth = (nowDate.getMonth()+1);
			var nowHour = nowDate.getHours();
			var nowMinute = nowDate.getMinutes();
			var nowSecond = nowDate.getSeconds();
			if( nowMonth < 10) {
				nowMonth = "0"+nowMonth;
			}
			
			if( nowHour < 10) {
				nowHour = "0"+nowHour;
			}
			
			if( nowMinute < 10) {
				nowMinute = "0"+nowMinute;
			}
			
			if( nowSecond < 10) {
				nowSecond = "0"+nowSecond;
			}
			
			var checkDate = nowDate.getFullYear() + "-" + nowMonth + "-" + nowDate.getDate()+" "+nowHour+":"+nowMinute+":"+nowSecond;
			if(checkStartDate && checkEndDate && checkDate >= checkStartDate && checkDate <= checkEndDate) {
				// 결제 점검 시 비활성화
				$("#submit_btn").prop('disabled', true).css({"background-color":"#c8c8c8","border":"1px solid #c8c8c8"});
			} else {
				$("#submit_btn").prop('disabled', false).css({"background-color":"","border":""});
			}
			
		});
		
		// 카드 선택 시
		$('.card_payment').change(function(e) {
			var picked_card_name = $('.card_payment option:selected').data('cardname');
			$("input[name='picked_card_name'][value="+picked_card_name+"]");
			if( picked_card_name) {
				changePaymentName($(".card_payment option:selected").data('cardname'));
			} else {
				var paymentName = $(":input:radio[name=pay_choice]:checked").data('paymentName');
				changePaymentName(paymentName);
			}
		});
		
		
		// 결제수단 선택 시 - 처음들어온 경우도 이벤트 발생
		$("input[name='pay_choice']").click(function(e) {
			for( var cnt = 0 ; cnt < $("input[type='hidden'][name^='usedAddCoupon[']").length ; cnt++ ) {
				if( !checkCouponPaymethodAble($(e.target).val(), $("input[type='hidden'][name^='usedAddCoupon[']").eq(cnt).val()) ) {
					if( $(e.target).val() != "onlytoss" ) {
						// alert("토스 전용 할인 쿠폰은 타 결제수단 사용 시 사용이 불가합니다.\n간편결제 > 토스를 선택해주세요.");
						modal("토스 전용 할인 쿠폰은 타 결제수단 사용 시 사용이 불가합니다.\n간편결제 > 토스를 선택해주세요.");
						$("input[type='radio'][name='pay_choice']:checked").prop("checked", false);
						return false;
					}
				}
			}
			
			$(".card").hide();
			$(".samsungPay").hide();
			$(".payCo").hide();
			$(".kakaoPay").hide();
			$(".lPay").hide();
			$(".kPay").hide();
			$(".nPay").hide();
			$(".tossPayment").hide();
			
			var simpay_pay_kind = $(this).attr("id");
			$("."+simpay_pay_kind).show();
			
			if (simpay_pay_kind == "card") {
				var pgName = $("select[name='payment_card']").find(':selected').data('pgname');
				if (pgName == "IAMPORT") {
					changeFinancialRule("only_toss_rule");
				} else if (pgName == "NICE") {
					changeFinancialRule("nicepay_financial_rule");
				}
				
				if( $("#wrap-mi-accordion").hasClass('mi-open') === true) {
					$("#gopaymethod").val('card');
					$('.simple_payment').show();
				}
			} else if (simpay_pay_kind == "VBank") {
				changeFinancialRule("nicepay_financial_rule");
				
				if( $("#wrap-mi-accordion").hasClass('mi-open') === true) {
					$("#gopaymethod").val('VBank');
					$('.simple_payment').show();
				}
			} else if (simpay_pay_kind == "tossPayment") {
				changeFinancialRule("only_toss_rule");
			} else if (simpay_pay_kind == "nPay") {
				changeFinancialRule("naver_financial_rule");
			} else if (simpay_pay_kind == "kPay") {
				changeFinancialRule("electronic_finance_rule");
			} else {
				changeFinancialRule("nicepay_financial_rule");
			}
			
			$("input[name='gopaymethod']").val($(e.target).val());
		});
		
				// 저장된 결제 방법이 있다면...
							$('.card_payment').hide();
				$('.bank_payment').hide();
				$("input[name='paymethod'][value='simple']").click();
								
					$("input[name='pay_choice'][value='onlypayco']").click();
					$("#method_payment span input[value='simple']").click();
							
				
							
		// 무통장입금 선택시 해당 상품이 특가상품에 체크 되 있는경우라면 경고창 발생 MR.Oh 19.04.42
		$("input[id='bankBook']").click(function(){
					});
		
		// 주소값이 있는 회원인 경우 배송지 선택을 기본으로 회원주소 선택되게끔 한다. ( 2015-10-29 Ihyeon )
		if ( $("#per_addr2").val() != "" ) {
			$("#deliveryType_default").prop("checked", true).trigger("click");
			
			// 도서산간 확인
			if( !checkDeliveryException("11101", "경기 포천시 관인면 북원로641번길 23", "Y") ) {
				$("#zip").val("");
				$("#addr1").val("");
				$("#addr2").val("");
				
				$("#m_zip").val("");
				$("#m_addr1").val("");
				$("#m_addr2").val("");
			}
		}
		
		// 연휴기간 거래 중단 이슈 대응 ( 2018-02-12 Ihyeon )
		$("#payment_card").change(function(){
			changePaymentCard();
		});
		
		$('input[name=baesong_section]').click(function() {
			resetQuick();
		});
		
		$("input[type=radio][name=quick_payment_method]").click(function() {
			saveCalc_parent(Number($("input[name='price']").val()), Number($("input[name='use_point']").val()), Number($("input[name='use_gift']").val()));
		});
		
		$("input[type='radio'][name='baesong_section']").click(function() {
			if( $("input[type='radio'][name='baesong_section']:checked").val() == "quick" ) {
				saveCalc_parent(Number($("input[name='price']").val()), Number($("input[name='use_point']").val()), Number($("input[name='use_gift']").val()));
			}
			checkDeliveryException(document.getElementById('zip').value, document.getElementById('addr1').value);
		});
		
		
		// 새로운 주소로 옵션 변경 체크.
		new_addr_check();
		checkDeliveryException(document.getElementById("zip").value, document.getElementById("addr1").value);
		gtag_begin_checkout();
		
		$("#wrap-mi-accordion").on('click', function(e) {
			if( $("#wrap-mi-accordion").hasClass('mi-open') === true) {
				if($("#gopaymethod").val() == 'card') {
					$('.card_payment').show();
				} else if($("#gopaymethod").val() == 'VBank') {
					$(".bank_payment").show();
				}
				$("#payment_list").show();
				$("#payment_btn_span").text('닫기');
			} else {
				if( $("#gopaymethod").val() != '') {
					$("#payment_change_btn").show();
				}
				
				if($("#gopaymethod").val() == 'card') {
					$('.card_payment').show();
				}
				// $('.card_payment').hide();
				// $(".bank_payment").hide();
				$("#payment_list").hide();
				$("#payment_btn_span").text('결제수단변경');
			}
		});
		
		
		//Internet Explorer에서 결제수단버튼 이미지 클릭시 checked
		var checkBrowser = getBrowser();
		if(checkBrowser === "Internet Explorer"){
			$(".checkBrowser").on('click', function(e){
				
				$('#'+$(this).data('payChoice')).click();
			});	
		}
		
		// 프로모션 배너이미지 있는 경우 결제수단 오픈 처리
		if( $("#isBannerImg").val() == 'OK') {
			if( $("#wrap-mi-accordion").hasClass('mi-open') !== true) {
				$("#wrap-mi-accordion").click();
				$("#payment_list").show();
				$("#wrap-mi-accordion").addClass('mi-open');
				$("#payment_btn_span").text('닫기');
			}
		}
		changePaymentCard();
	});


	$("input[name='addMemberDelivery']").click(function() {
		var isChecked = $(this).is(':checked');		

		if (isChecked) {
			$("#divDefaultAddrYn").show();
			$('input[name=defaultAddrYn]').removeAttr('checked')
		} else {
			$("#divDefaultAddrYn").hide();
		}
		
	});


	// 옵션 변경 누를 시 sessionstorage에 주소 저장.
	var setNewAddr = function() {
		var addr = getAddr();
		
		sessionStorage.setItem('front_step1_addr', JSON.stringify(addr));
	}
	
	// 새로운 주소로 옵션 변경 체크 함수.
	var new_addr_check = function() {
		var uri = location.search;
		
		if (uri.indexOf('new_addr') !== -1) {
			
			var addr = sessionStorage.getItem('front_step1_addr');
			if (addr !== '' && addr != undefined) {
				addr = JSON.parse(addr);
				$('#r_name').val(addr.r_name);
				$('#r_hphone1').val(addr.r_hphone1);
				$('#r_hphone2').val(addr.r_hphone2);
				$('#r_hphone3').val(addr.r_hphone3);
				$('#r_phone1').val(addr.r_phone1);
				$('#r_phone2').val(addr.r_phone2);
				$('#r_phone3').val(addr.r_phone3);
				$('#zip').val(addr.zip);
				$('#addr1').val(addr.addr1);
				$('#addr2').val(addr.addr2);
				$('input[name=resno4]').val(addr.resno4);
				
				
				if (addr.informationCollectionAgreement == 'on') {
					$('#informationCollectionAgreement').attr('checked', true);
					check_selectbox_first($('#informationCollectionAgreement'));
				}
				
				if (addr.baesong_insert == 'true') {
					$('#baesong_insert').attr('checked', true);
				}
				
				if (addr.select_tab === 'default') {
					$('#deliveryType_default').attr('checked', true);
				}
				else {
					$('#deliveryType_new').attr('checked', true);
					$('#baesong_insert_area').show();
				}
				
				if (addr.memo_multi_check == '1') {
					$('#enter_product').attr('checked', true);
					check_memo($('#enter_product'));
					for (var i = 0; i < addr.memo_multi_name_list.length; i++) {
						$('input[name=' + addr.memo_multi_name_list[i] + ']').val(addr.memo_multi_value_list[i]);
					}
				}
				else {
					$('input[name=comment]').val(addr.comment);
				}
			}
		}
		
		sessionStorage.setItem('front_step1_addr', '');
		
	}
	
	function fn_pad(n, width) {
		n = n + '';
		return n.length >= width ? n : new Array(width - n.length + 1).join('0') + n;
	}

	function changeFinancialRule(ruleName) {
		Array.prototype.slice.call(document.getElementById("financial_rule").children).forEach(function (it) {
			it.style.display = 'none';
		});

		document.getElementById(ruleName).style.display = 'block';
	}

	////////////////////////////////////////////////
	// 카드 무이자 내용 불러오기 by.ssh 20190718
	function changePaymentCard(){
		$(".monthpay").remove();
		var cardname=$("select[name='payment_card']").find(':selected').data('cardname');
		var pgName=$("select[name='payment_card']").find(':selected').data('pgname');

		if ($("input:hidden[name='price']").val() >= 50000) {
				$("#monthpay").attr("disabled", false);
				$('#shBank-desc').hide();
		}
		
		if($("#gopaymethod").val() != 'card') {
			return false;
		}
		
		var pg=$("select[name='payment_card']").find(':selected').data('pg');
		var sdate=$("select[name='payment_card']").find(':selected').data('sdate');
		var edate=$("select[name='payment_card']").find(':selected').data('edate');
		var cardCode=$("select[name='payment_card']").find(':selected').val();
		
		if (pgName == "IAMPORT") {
			changeFinancialRule("only_toss_rule");
		} else if (pgName == "NICE") {
			changeFinancialRule("nicepay_financial_rule");
		}

		changePaymentName(cardname);
			
		if(sdate==undefined)sdate=0;
		if(edate==undefined)edate=0;

		if(pg==""){	return;	}
		
		$("#pg_company").val(pg);
		$("#picked_card_name").val(cardname);
		
		var html ="";
		var month="일시불";
		var pad="";
		for(var i=0;i<=12;i++){
			if(i==1) continue;
			if(i>0) month= i+"개월"; 
			if(i>=sdate && i<=edate && month!='일시불') month+=' [무]';
			pad =fn_pad(i,2);
			html +='<option class="monthpay" value="'+pad+'">'+month+'</option>'
		}
		// 삼성카드 18, 24개월 추가
		//  if (cardname =='삼성카드') {
		//  	html += '<option value="18" class="monthpay">18개월</option>';
		//  	html += '<option value="24" class="monthpay">24개월</option>';		
		//  }
		
		// 신한카드 9월이벤트 (12개월 무이자)
		$("#monthpay").append(html);
		
		// 카드선택시 할부개월 초기화
		$("#monthpay").find("option:eq(0)").prop("selected", true);
		
	}
	
	// 요청사항메모 - 묶음주문일때 인풋창 노출
	function pro_memo() {
		var check = $("input:checkbox[id='pro_memo']").is(":checked");
	
		if ( check ) {
			$("#pro_memo_one").hide();
			$(".pro_memo_all").show();
		} else {
			$("#pro_memo_one").show();
			$(".pro_memo_all").hide();
		}
	}
	
	// 적립금, 상품권사용 레이어팝업
	function detail(mthis) {
		// $(".detail").css('display','none');
		$(mthis).next().toggle();
	}

	function layer_mask_step1(url, w, h) {
		var replacedURL = url;
		if( $("input[type=radio][name=baesong_section]:checked").val() == "quick" ) {
			replacedURL += "&quick_yn=Y";
			if( $("input[type=radio][name=quick_payment_method]:checked").val() == "advance" ) {
				replacedURL += "&quick_needed_money="+$("input[type=hidden][name=quick_needed_money]").val();
			}
		}
		
		layer_mask(replacedURL, w, h);
	}
	
	function pickDeliveryArea(memberNo) {
		// 깜짝배송 프로세스 변경으로 주석처리
		// if( $("input[type=radio][name=baesong_section]:checked").val() == "quick" ) {
		// 	modal('깜짝배송의 경우 "우편변호 찾기"를 눌러 배송지를 변경해주시기 바랍니다.');
		// 	return false;
		// } else {
			layer_mask('/layer/addr_list_ignore/'+memberNo, 860, 481);
		// }
	}
	
	// 새로 입력한 주소 데이터 객체로 변환 하는함수
	function getAddr() {
		var r_name = $('#r_name').val();
		var r_hphone1 = $('#r_hphone1 option:selected').val();
		var r_hphone2 = $('#r_hphone2').val();
		var r_hphone3 = $('#r_hphone3').val();
		
		var r_phone1 = $('#r_phone1 option:selected').val();
		var r_phone2 = $('#r_phone2').val();
		var r_phone3 = $('#r_phone3').val();
		
		var zip = $('#zip').val();
		var addr1 = $('#addr1').val();
		var addr2 = $('#addr2').val()
		
		var select_tab = $('input[name=deliveryType]:checked').val();
		
		var baesong_insert = $('#baesong_insert').val();
		
		var comment = '';
		
		var memo_multi_check = $('#enter_product:checked').val();
		var memo_multi_name_list = [];
		var memo_multi_value_list = [];
		
		var resno4 = $('input[name=resno4]').val();
		var informationCollectionAgreement = $('#informationCollectionAgreement:checked').val();
		
		
		if (memo_multi_check == '1') {
			$('.memo_multi').each(function() {
				memo_multi_name_list.push($(this).attr('name'));
				memo_multi_value_list.push($(this).val());
			});
		}
		else {
			comment = $('input[name=comment]').val();
		}
		
		return {
			'r_name': r_name,
			'r_hphone1': r_hphone1,
			'r_hphone2': r_hphone2,
			'r_hphone3': r_hphone3,
			'r_phone1': r_phone1,
			'r_phone2': r_phone2,
			'r_phone3': r_phone3,
			'zip': zip,
			'addr1': addr1,
			'addr2': addr2,
			'select_tab': select_tab,
			'baesong_insert': baesong_insert,
			'comment': comment,
			'memo_multi_name_list': memo_multi_name_list,
			'memo_multi_value_list': memo_multi_value_list,
			'memo_multi_check': memo_multi_check,
			'resno4': resno4,
			'informationCollectionAgreement': informationCollectionAgreement
		}
		
	}
	
	function makeOrderList() {
		var items = [];
		var item = {};

		var product_name = $('.product_name');
		var product_count = $('.product_count');
		var product_price = $('.gtag_price');
		var brand = $('.brand');

		product_name.each(function(index, el) {
			item.name = $(el).text();
			item.quantity = $(product_count[index]).text();
			item.quantity = parseInt(item.quantity);
			item.brand = $(brand[index]).text().trim();
			item.price = $(product_price[index]).text().replace(/,/gi, '');
			item.price = parseInt(item.price);

			items.push(item);
		});
		return items;
	}

	function gtag_begin_checkout() {
		var items = makeOrderList();
		try {
			gtag('event', 'begin_checkout', {
				"items": items
			});
		} catch(e) {
			console.log(e)
		}
	}
	
	var oPay;
	function naver_pay_open(defaultOPay, oPayData) {
		oPay = Naver.Pay.create(defaultOPay);
		
		oPay.open(oPayData);
	}
	
	function changePaymentName(str) {
		$("#payment_name").text(str);
	}
	
	function loadRule(paymethod) {
		if (paymethod['value'] == 'VBank') {
			$('#ruleArea').load('/front_ajax/getVBankRules');
		} else {
			$('#ruleArea').load('/front_ajax/getCardRules');
		}
	}
</script>	</div>
</div>

<!-- 푸터 -->
<<footer id="footer" class="footer_b2c">
									<input type="hidden" id="goodsAdvCmntStYn" value="Y" />
									<div class="footer-content">
										<nav class="footer-inner sitemap-links">
											<h2 class="hide">페이지 링크</h2>
											<ul>
												<li class="productLine1">
													<h3><a href="javascript:void(0);">게임용 모니터</a></h3>
													<ul>
														<li><a href="/GMQDisplay-master/monitors.html?genre=fps/rts" data-omni="product_fps/rts">FPS/RTS</a></li>
														<li><a href="/GMQDisplay-master/monitors.html?genre=rpg/sports/fighting" data-omni="product_RPG/Sports/fights">RPG/Sports/fights</a></li>
														
													</ul>
												</li>
												<li class="productLine2">
													<h3>전문가용 모니터</h3>
													<ul>
														<li><a href="/GMQDisplay-master/monitors.html?genre=graphic" data-omni="product_graphic">그래픽 작업용</a></li>
														<li><a href="/GMQDisplay-master/monitors.html?genre=work" data-omni="product_sound">사운드 작업용</a></li>
														<li><a href="/GMQDisplay-master/monitors.html?genre=videogame" data-omni="product_videogame">비디오/콘솔용</a></li>
													</ul>
												</li>
												<li>
													<a href="javascript:void(0);"><h3>추천 케어</h3></a>
													<ul>
														<li><a href="/GMQDisplay-master/recommend/index_game.html;"
																data-omni="product_smartphones">게임용 추천케어</a></li>
														<li><a href="/GMQDisplay-master/recommend/index_game1.html;"
																data-omni="product_cooking appliances">전문가용 추천케어</a></li>
													</ul>
												</li>
												
												<li>
													<h3>
														<a href="javascript:void(0);">이벤트</a>
													</h3>
													<ul>
														<li><a href="/GMQDisplay-master/event.html"
																data-omni="ethics and law_principle"
																class="link-outlink" title="새창으로 열림"
																target="_blank">이벤트 HOME</a>
														</li>
													</ul>
												</li>
												<li>
													<h3>
														<a href="javascript:void(0);">고객 서비스</a>
													</h3>
													<ul>
														<li><a href="/GMQDisplay-master/faq/FAQ.html"
																data-omni="ethics and law_principle"
																class="link-outlink" title="새창으로 열림"
																target="_blank">고객센터</a>'
														</li>
														<li><a href="/GMQDisplay-master/person.html"
																data-omni="ethics and law_principle"
																class="link-outlink" title="새창으로 열림"
																target="_blank">개인정보처리방침</a>'
														</li>
													</ul>
												</li>
												
												<li class="row2">
													<ul>
														<li>
															<h3><a href="javascript:void(0);">회사 소개</a></h3>
															<ul>
																<li><a href="/GMQDisplay-master/introduceCompany.html"
																		data-omni="about-us_company-info">GMQ Display 소개</a>
																</li>
															</ul>
														</li>
													</ul>
												</li>
											</ul>
										</nav>
									</div>
									<div class="footer-content">
										<div class="footer-inner">
											<div class="info-detail">
												<p>
													<span>GMQDisplay 주식회사 대표이사 : GMQDisplay </span>
													<span class="mo-inline">사업자등록번호 : 000-00-00000</span>
													<span>통신판매업 신고 : 0000-천안점-0000</span>
												</p>
												<p class="gap">
													<span>사업장주소 : 31020 충청남도 천안시 서북구 성환읍 대학로 91번지</span>
													<span>호스팅서비스사업자 : GMQDisplay(주)</span>
													<span>대표번호 : 00-0000-0000</span>
													<span>제품/서비스/멤버십: 0000-0000(통화요금 : 발신자부담)</span>
													<span>구매문의 : 0000-0000</span>
													<span>모니터 문의 : 0000-0000</span>
												</p>
												<p>본 사이트에서 판매되는 상품 중에는 등록된 개별 판매자가 판매하는 상품이 포함되어 있습니다. </p>
												<!-- s : 22-12-21 소비자분쟁해결기준 CTA -->
												<div class="dis-resol">
													<p>개별 판매자 판매 상품의 경우 GMQDisplay(주)는 통신판매중개업자로서 통신판매의 당사자가 아니므로, 개별
														판매자가 등록한 상품, 거래정보 및 거래 등에 대해 책임을 지지 않습니다.</p>
												</div>
												<!-- e : 22-12-21 소비자분쟁해결기준 CTA -->
												<p>본 사이트의 컨텐츠는 저작권법의 보호를 받는 바 무단 전재, 복사, 배포 등을 금합니다.</p>
											</div>
										</div>
									</div>
									<div class="footer-content">
										<div class="footer-inner copyrightGroup">
											<div class="copyrightBox">
												<p class="copyright">Copyright &copy; 2023 GMQDisplay. All Rights
													Reserved.</p>
												<div class="mark-box">
												<div class="cs-btn">
												<ul>
													<li><a href="javascript:void(0);" title="이메일 무단 수집거부"
															data-popup-target="popupGatherRefuse"
															data-omni="footer:bottom_email_security">이메일 무단 수집거부</a>
													</li>
													<!--<li><a href="javascript:void(0);" title="아이디어 정책"
															data-popup-target="popupIdeaPolicy"
															data-omni="footer:bottom_idea security">아이디어 정책</a></li>
													<li><a href="/GMQDisplay-master/info/sitemap/index.html"
															data-omni="footer:bottom_sitemap">사이트맵</a></li>-->
												</ul>
											</div>
													<!-- s : Accessible Dropdown -->
												<!--aria-activedescendant에 선택된 li의 id 삽입 -->
												<!--<div id="dropClauseList01" class="wrap-droplist rounded clause-use">
													<button class="droplist-button" aria-haspopup="listbox"
														aria-labelledby="dropServiceClauseTitle dropServiceClauseBtn"
														id="dropServiceClauseBtn" title="서비스별 이용약관">이용약관<span
															class="blind">하위 메뉴 있음</span>
													</button>
													<ul class="droplist" tabindex="-1"
														aria-labelledby="dropServiceClauseTitle"
														aria-activedescendant="optServiceClause01">
														
														<li id="optServiceClause02" class="droplist-item"
															data-omni="footer:terms_legal"><a
																href="https://account.samsung.com/membership/etc/specialTC.do?fileName=samsungkorea.html"
																target="_blank" title="새 창으로 열림">GMQDisplay 대표사이트
																이용약관</a></li>
														<li id="optServiceClause03" class="droplist-item"
															data-omni="footer:terms_conditions"><a
																href="/GMQDisplay-master/membership/terms/index.html">GMQDisplay멤버십
																이용약관</a></li>
														<li id="optServiceClause04" class="droplist-item"
															data-omni="footer:terms_contents"><a
																href="https://account.samsung.com/membership/policy/terms"
																target="_blank" title="새 창으로 열림">GMQDisplay 서비스 이용약관</a>
														</li>
													</ul>
												</div> -->
												
												<!-- s : Accessible Dropdown -->
												<div class="clause-links">
												<div id="dropClauseList02"
													class="wrap-droplist rounded  clause-private">
													<button class="droplist-button" title="서비스별 개인정보처리방침">GMQ Display<span
															class="blind">하위 메뉴 있음</span></button>
													<ul class="droplist" tabindex="-1"
														aria-labelledby="dropServicePrivateTitle"
														aria-activedescendant="optServicePrivate01">
														<!--aria-activedescendant에 선택된 li의 id 삽입-->
														<li id="optServicePrivate02" class="droplist-item">
														<a href="/GMQDisplay-master/person.html">GMQ Display 개인정보처리방침</a>
														</li>
														<li id="optServicePrivate03" class="droplist-item">
															<a href="/GMQDisplay-master/event.html">GMQ Display 이벤트/멤버쉽</a>
														</li>
														<li id="optServicePrivate04" class="droplist-item">
															<a href="/GMQDisplay-master/faq/FAQ.html">GMQ Display 고객센터</a>
														</li>
														<li id="optServicePrivate05" class="droplist-item">
															<a href="/GMQDisplay-master/faq/notice.html">GMQ Display 공지사항</a>
														</li>
														<li id="optServicePrivate06" class="droplist-item">
															<a href="/GMQDisplay-master/introduceCompany.html">GMQ Display 회사소개</a>
														</li>
													</ul>
												</div>
												<!-- e : Accessible Dropdown -->
											</div>
												</div>
											</div>
										</div>
									</div>
								
								</footer>

								<!-- s : 에너지 계산기 -->
								<button id="energyBtn" style="display:none" type="button"
									data-popup-target="popupEnergy">팝업보기</button>
								<div class="layer-pop layer-normal layer-energy-calculator" id="popupEnergy"
									tabindex=" 0" data-popup-layer="popupEnergy" data-focus="popupEnergy">
								</div>
								<!-- e : 에너지 계산기 -->
								<!-- s : 이메일 무단 수집거부 -->
								<div class="layer-pop layer-normal" id="popupGatherRefuse" tabindex="0"
									data-popup-layer="popupGatherRefuse" data-focus="popupGatherRefuse">
									<div class="layer-header">
										<h2>이메일 무단 수집거부</h2>
									</div>
									<div class="layer-content">
										<div class="etc-divWrap">
											<p>본 웹사이트는 게시된 이메일 주소가 전자우편 수집 프로그램이나 그 밖의 기술적 장치를 이용하여 무단 수집되는 것을
												거부합니다.<br>
												이를 위반 시 『정보통신망 이용 촉진 및 정보보호 등에 관한 법률』등에 의해 처벌받을 수 있습니다.</p>
										</div>
									</div>
									<button type="button" class="pop-close"
										data-focus-next="popupGatherRefuse">팝업닫기</button>
								</div>
								<!-- e : 이메일 무단 수집거부 -->

								<!-- s : 아이디어 정책 -->
								<div class="layer-pop layer-normal" id="popupIdeaPolicy" tabindex="0"
									data-popup-layer="popupIdeaPolicy" data-focus="popupIdeaPolicy">
									<div class="layer-header">
										<h2>아이디어 제안에 대한 정책</h2>
									</div>
									<div class="layer-content">
										<div class="etc-divWrap">
											<p>GMQDisplay 및 GMQDisplay 임직원은 당사가 공식적으로 요청하지 않았음에도 불구하고 여러분께서 일방적으로 당사에
												제출하는 아이디어나 제안 등을 수령하거나 검토하지 않습니다.</p>
											<p>이는 제출하신 내용이 당사 내부적으로 개발한 제품, 기술, 서비스와 유사할 경우 발생할 수 있는 오해와 분쟁을 방지하고 나아가
												여러분의 창의적인 아이디어를 적극 보호하기 위함입니다.</p>
											<p>이러한 취지를 이해하여 주시고 구체화되지 않은 아이디어나 콘셉트(Concept) 단계의 제안이 당사에 제출되지 않도록 하여 주시기
												바랍니다.</p>
										</div>
									</div>
									<button type="button" class="pop-close"
										data-focus-next="popupIdeaPolicy">팝업닫기</button>
								</div>
								<!-- e : 아이디어 정책 -->

								<!-- s : 웹접근성 우수사이트 인증서  -->
								<div class="layer-pop layer-default" id="popupWA" tabindex="0"
									data-popup-layer="popupWA" data-focus="popupWA">
									<div class="layer-content">
										<img class="pc-ver" src="/GMQDisplay-master/static/images/common/WA-2022.jpg"
											alt="웹접근성 우수사이트 인증서">
										<img class="mo-ver" src="/GMQDisplay-master/static/images/common/WA-2022-mo.jpg"
											alt="웹접근성 우수사이트 인증서">
									</div>
									<button type="button" class="pop-close" data-focus-next="popupWA">팝업닫기</button>
								</div>
								<!-- e : 웹접근성 우수사이트 인증서  -->
								<!-- e : 바닥글 영역 - b2c -->
							</div>

							<input type="hidden" id="viewStContextPath" value="/" />

							<script src="/GMQDisplay-master/static/script/masonry.min.js" async></script>

							<!-- masonry js -->
							<script src="/GMQDisplay-master/static/script/buynow.js" async></script>
							<script type="text/javascript"
								src="https://resources.digital-cloud-west.medallia.com/wdcwest/145272/onsite/embed.js"
								async></script>

<!-- 관리자가 아니면 쪽지 -->



<!-- 구매전환 : 네이버 -->

<!-- 리마케팅 : (구)구글 -->
<!-- 2018-08-06 구글 리마케팅 리뉴얼
<script type="text/javascript">
/* <![CDATA[ */
	var google_conversion_id = 987758025;
	var google_conversion_label = "vdBmCJ-qggUQyfv_1gM";
	var google_custom_params = window.google_tag_params;
	var google_remarketing_only = true;
/* ]]> */
</script>
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js"></script>
<noscript>
<div style="display:inline;">
	<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/987758025/?value=0&amp;label=vdBmCJ-qggUQyfv_1gM&amp;guid=ON&amp;script=0"/>
</div>
</noscript>
-->

<!-- START :: ADN 트래킹 -->
<!-- END :: ADN 트래킹 -->

<!-- START :: RTB House -->
<!-- END :: RTB House -->

<script type="text/javascript">
	(function(w,d,n,s,e,o) {
		w[n]=w[n]||function(){(w[n].q=w[n].q||[]).push(arguments)};
		e=d.createElement(s);e.async=1;e.charset="utf-8";e.src="//static.recopick.com/dist/production.min.js";
		o=d.getElementsByTagName(s)[0];o.parentNode.insertBefore(e,o);
	})(window, document, "recoPick", "script");
</script>
<script type="text/javascript" src="//dynamic.criteo.com/js/ld/ld.js?a=8022" async="true"></script>
<script type="text/javascript">
	window.criteo_q = window.criteo_q || [];
		var deviceType = /iPad/.test(navigator.userAgent) ? "t" : /Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent) ? "m" : "d";
		window.criteo_q.push(
			{ event: "setAccount", account: 8022 },
			{ event: "setEmail", email: "c608f510c3476c1d9d9d6231b1238135fced849fc01d10644a4658c6db210315" },
			{ event: "setSiteType", type: deviceType},
			{ event: "viewPage" }
		)
</script>
	
<script type="text/javascript">
(function(a,g,e,n,t){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};n=g.createElement(e);n.async=!0;n.defer=!0;n.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js";t=g.getElementsByTagName(e)[0];t.parentNode.insertBefore(n,t)})(window,document,"script");
enp("create", "common", "mustit", { device: "W" });  // W:웹, M: 모바일, B: 반응형
enp("send", "common", "mustit");
</script>

<!-- START :: BRAZE WEB SDK -->
<script type="text/javascript">
  +function(a,p,P,b,y){a.appboy={};a.appboyQueue=[];for(var s="DeviceProperties Card Card.prototype.dismissCard Card.prototype.removeAllSubscriptions Card.prototype.removeSubscription Card.prototype.subscribeToClickedEvent Card.prototype.subscribeToDismissedEvent Banner CaptionedImage ClassicCard ControlCard ContentCards ContentCards.prototype.getUnviewedCardCount Feed Feed.prototype.getUnreadCardCount ControlMessage InAppMessage InAppMessage.SlideFrom InAppMessage.ClickAction InAppMessage.DismissType InAppMessage.OpenTarget InAppMessage.ImageStyle InAppMessage.Orientation InAppMessage.TextAlignment InAppMessage.CropType InAppMessage.prototype.closeMessage InAppMessage.prototype.removeAllSubscriptions InAppMessage.prototype.removeSubscription InAppMessage.prototype.subscribeToClickedEvent InAppMessage.prototype.subscribeToDismissedEvent FullScreenMessage ModalMessage HtmlMessage SlideUpMessage User User.Genders User.NotificationSubscriptionTypes User.prototype.addAlias User.prototype.addToCustomAttributeArray User.prototype.getUserId User.prototype.incrementCustomUserAttribute User.prototype.removeFromCustomAttributeArray User.prototype.setAvatarImageUrl User.prototype.setCountry User.prototype.setCustomLocationAttribute User.prototype.setCustomUserAttribute User.prototype.setDateOfBirth User.prototype.setEmail User.prototype.setEmailNotificationSubscriptionType User.prototype.setFirstName User.prototype.setGender User.prototype.setHomeCity User.prototype.setLanguage User.prototype.setLastKnownLocation User.prototype.setLastName User.prototype.setPhoneNumber User.prototype.setPushNotificationSubscriptionType InAppMessageButton InAppMessageButton.prototype.removeAllSubscriptions InAppMessageButton.prototype.removeSubscription InAppMessageButton.prototype.subscribeToClickedEvent display display.automaticallyShowNewInAppMessages display.destroyFeed display.hideContentCards display.showContentCards display.showFeed display.showInAppMessage display.toggleContentCards display.toggleFeed changeUser destroy getDeviceId initialize isPushBlocked isPushGranted isPushPermissionGranted isPushSupported logCardClick logCardDismissal logCardImpressions logContentCardsDisplayed logCustomEvent logFeedDisplayed logInAppMessageButtonClick logInAppMessageClick logInAppMessageHtmlClick logInAppMessageImpression logPurchase openSession registerAppboyPushMessages removeAllSubscriptions removeSubscription requestContentCardsRefresh requestFeedRefresh requestImmediateDataFlush resumeWebTracking setLogger stopWebTracking subscribeToContentCardsUpdates subscribeToFeedUpdates subscribeToInAppMessage subscribeToNewInAppMessages toggleAppboyLogging trackLocation unregisterAppboyPushMessages wipeData".split(" "),i=0;i<s.length;i++){for(var m=s[i],k=a.appboy,l=m.split("."),j=0;j<l.length-1;j++)k=k[l[j]];k[l[j]]=(new Function("return function "+m.replace(/\./g,"_")+"(){window.appboyQueue.push(arguments); return true}"))()}window.appboy.getCachedContentCards=function(){return new window.appboy.ContentCards};window.appboy.getCachedFeed=function(){return new window.appboy.Feed};window.appboy.getUser=function(){return new window.appboy.User};(y=p.createElement(P)).type="text/javascript";
    y.src="https://js.appboycdn.com/web-sdk/3.1/appboy.min.js";
    y.async=1;(b=p.getElementsByTagName(P)[0]).parentNode.insertBefore(y,b)
  }(window,document,"script");
</script>
<!-- END :: BRAZE WEB SDK -->
			
<script>
try {
	(function () {
	var prefix = "", hash = "kRKbOHQmIF0Z9I0CFSvn", rtbhTags = [];
	rtbhTags.push("pr_" + hash + "_startorder");
	rtbhTags.push("pr_" + hash + "_uid_unknown");
	var key = "__rtbhouse.lid", lid = window.localStorage.getItem(key);
	if (!lid) {
		lid = "";
		var pool = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
		for (var i = 0; i < 20; i++) {
			lid += pool.charAt(Math.floor(Math.random() * pool.length));
		}
		window.localStorage.setItem(key, lid);
	}
	rtbhTags.push("pr_" + hash + "_lid_" + lid);
	var ifr = document.createElement("iframe"),
	sr = encodeURIComponent(document.referrer ? document.referrer : ""),
	su = encodeURIComponent(document.location.href ? document.location.href : ""),
	ifrSrc = "https://" + prefix + "creativecdn.com/tags?type=iframe",
	tmstmp = encodeURIComponent("" + Date.now());
	for (var i = 0; i < rtbhTags.length; i++) {
		ifrSrc += "&id=" + encodeURIComponent(rtbhTags[i]);
	}
	ifrSrc += "&su=" + su + "&sr=" + sr + "&ts=" + tmstmp;
	ifr.setAttribute("src", ifrSrc);
	ifr.setAttribute("width", "1");
	ifr.setAttribute("height", "1");
	ifr.setAttribute("scrolling", "no");
	ifr.setAttribute("frameBorder", "0");
	ifr.setAttribute("style", "display:none");
	ifr.setAttribute("referrerpolicy", "no-referrer-when-downgrade");
	if (document.body) {
		document.body.appendChild(ifr);
	} else {
		window.addEventListener("DOMContentLoaded", function () {
		document.body.appendChild(ifr);
		});
	}
	})();
} catch (e) {}
</script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
		if(!wcs_add) var wcs_add = {};
		wcs_add["wa"] = "s_4c853babaea7";
				
		if (!_nasa) var _nasa={};
		wcs.inflow("mustit.co.kr");
				
		wcs_do(_nasa);
</script>

<!-- ADN Tracker[공통] start -->
<script type="text/javascript">
try {
	var adn_param = adn_param || [];
	adn_param.push([{
		ui:"100510",
		ut:"Home"
	}]);
} catch(e) {
	console.log(e);
}
</script>
<script type="text/javascript" defer="" src="//fin.rainbownine.net/js/adn_tags_2.1.3.js"></script>
<!-- ADN Tracker[공통] end -->
<script type="text/javascript">
	$(window).load(function() {recoPick("service", "mustit.co.kr");recoPick("setMID", "m4U-YFMnKDezTUGlSRV66wRUF1q4yeCs9SfiiuXf87c");recoPick("setUserInfo", {birthyear:"1999", gender:"M"});recoPick("sendLog", "visit");recoPick("setUID", "1669054650.9137652");
	// START :: BRAZE WEB SDK initialize
	appboy.initialize("d8f3915b-c92e-4470-a7cc-85ac814b597f", {
		baseUrl: "sdk.iad-05.braze.com",
		enableHtmlInAppMessages: true
		
		
	});
	appboy.display.automaticallyShowNewInAppMessages();
	appboy.openSession();
	appboy.registerAppboyPushMessages();

	var loggedinExternalId = "";
	appboy.getUser().getUserId(function(userId) {
		loggedinExternalId = userId;
	});

	if (true && loggedinExternalId != "9VNqHNk+khsCNFwsrQPz+w==") {
		appboy.changeUser("9VNqHNk+khsCNFwsrQPz+w==");
		appboy.getUser().setHomeCity("경기");
	}
	// END :: BRAZE WEB SDK initialize
			
try {
	gtag("event", "conversion", {"send_to": "AW-987758025/xIz9CObH78gCEMn7_9YD"});
} catch(e) {
	console.log(e)
}
		
	});
</script>
</body>
</html>
<script>
	$(document).ready(function() {
		handleFindCouponEvent(null)
	})
</script>
