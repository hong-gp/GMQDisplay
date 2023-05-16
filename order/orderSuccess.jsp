<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE HTML>
<html lang="ko">
<head>

<title>Gaming Monitor Display</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="canonical" href="index.html">
<meta name="keywords" content="GMQDisplay 게이밍 모니터, 게이밍 모니터">
<meta name="description" content="GMQDisplay 게이밍 모니터에 대한 모든 궁금증을 해결하세요. 디자인과 기능, 사용 방법 등을 한눈에 비교하고 확인할 수 있어 제품 선택이 한결 쉬워집니다.">
<meta name="date" content="">
<meta name="sitecode" content="sec">


<meta name="twitter:card" content="Summary">
<meta name="twitter:site" content="@samsungkorea">
<meta name="twitter:creator" content="@samsungkorea">
<meta name="twitter:url" content="https://www.samsung.com/monitors/gaming-monitors/">
<meta name="twitter:title" content="게이밍 모니터 | GMQDisplay 대한민국">
<meta name="twitter:description" content="GMQDisplay 게이밍 모니터에 대한 모든 궁금증을 해결하세요. 디자인과 기능, 사용 방법 등을 한눈에 비교하고 확인할 수 있어 제품 선택이 한결 쉬워집니다.">
<meta name="twitter:image" content="https://images.samsung.com/kdp/st/1/5ab39f9a-9f76-4be5-b7e2-ecf40795aade.png">

<!-- s: 2022.03.15 VAC 광고 세팅 중 웹사이트 확인을 위한 tag -->
<meta name="google-site-verification" content="Y5FXtKRkwrMXPsNBUlQe-3vZp4mtp_PZRy1jmEyp6wM" />
<!-- e: 2022.03.15 VAC 광고 세팅 중 웹사이트 확인을 위한 tag -->

<meta property="og:url" content="https://www.samsung.com/monitors/gaming-monitors/">
<meta property="og:image" content="https://images.samsung.com/kdp/st/1/5ab39f9a-9f76-4be5-b7e2-ecf40795aade.png">
<meta property="og:type" content="website">
<meta property="og:site_name" content="GMQDisplay sec">
<meta property="og:locale" content="ko">
<meta property="og:title" content="게이밍 모니터 | GMQDisplay 대한민국">
<meta property="og:description" content="GMQDisplay 게이밍 모니터에 대한 모든 궁금증을 해결하세요. 디자인과 기능, 사용 방법 등을 한눈에 비교하고 확인할 수 있어 제품 선택이 한결 쉬워집니다.">
<meta property="og:country-name" content="sec">

<meta itemprop="name" content="GMQDisplay sec">
<meta itemprop="image" content="https://images.samsung.com/kdp/st/1/5ab39f9a-9f76-4be5-b7e2-ecf40795aade.png">
<meta itemprop="url" content="https://www.samsung.com/monitors/gaming-monitors/">
<meta itemprop="description" content="GMQDisplay 게이밍 모니터에 대한 모든 궁금증을 해결하세요. 디자인과 기능, 사용 방법 등을 한눈에 비교하고 확인할 수 있어 제품 선택이 한결 쉬워집니다.">
<meta itemprop="keywords" content="GMQDisplay 게이밍 모니터, 게이밍 모니터">

<link rel="dns-prefetch" href="https://images.samsung.com">
<link rel="preconnect" href="https://images.samsung.com">
<link rel="shortcut icon" href="/GMQDisplay-master/static/images/favicon.png">
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
<link rel="stylesheet" href="../static/css/component.css"><!-- 컴포넌트 스타일 -->
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
<!-- <script src="../static/script/common.js"></script> -->
<script src="../static/script/custom.js"></script>
<script src="../static/script/sticky.min.js"></script>
<script src="../static/script/jquery.cookie.js"></script>
<script src="../static/script/search.js"></script>
<script src="../static/script/component.js"></script>
<script src="../static/script/clipboard.min.js"></script>
<script type="text/javascript" src="../static/script/picturePolyfill.min.js"></script>
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
		}, 24*60*60*1300);
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
		<script src="../../static/script/snsShare.js"></script>
			<script type="text/javascript"> shareInit('5880e4317936087f2764a5d340e6bca6', ''); </script>
<script>(window.BOOMR_mq=window.BOOMR_mq||[]).push(["addVar",{"rua.upush":"false","rua.cpush":"false","rua.upre":"false","rua.cpre":"false","rua.uprl":"false","rua.cprl":"false","rua.cprf":"false","rua.trans":"SJ-a74f0aac-5888-411f-8744-125b1ec005ec","rua.cook":"true","rua.ims":"false","rua.ufprl":"false","rua.cfprl":"false","rua.isuxp":"false","rua.texp":"norulematch"}]);</script>
                              <script>!function(a){var e="https://s.go-mpulse.net/boomerang/",t="addEventListener";if("False"=="True")a.BOOMR_config=a.BOOMR_config||{},a.BOOMR_config.PageParams=a.BOOMR_config.PageParams||{},a.BOOMR_config.PageParams.pci=!0,e="https://s2.go-mpulse.net/boomerang/";if(window.BOOMR_API_key="VRZKC-5BSTD-4EWS3-R2J59-B8GYB",function(){function n(e){a.BOOMR_onload=e&&e.timeStamp||(new Date).getTime()}if(!a.BOOMR||!a.BOOMR.version&&!a.BOOMR.snippetExecuted){a.BOOMR=a.BOOMR||{},a.BOOMR.snippetExecuted=!0;var i,_,o,r=document.createElement("iframe");if(a[t])a[t]("load",n,!1);else if(a.attachEvent)a.attachEvent("onload",n);r.src="javascript:void(0)",r.title="",r.role="presentation",(r.frameElement||r).style.cssText="width:0;height:0;border:0;display:none;",o=document.getElementsByTagName("script")[0],o.parentNode.insertBefore(r,o);try{_=r.contentWindow.document}catch(O){i=document.domain,r.src="javascript:var d=document.open();d.domain='"+i+"';void(0);",_=r.contentWindow.document}_.open()._l=function(){var a=this.createElement("script");if(i)this.domain=i;a.id="boomr-if-as",a.src=e+"VRZKC-5BSTD-4EWS3-R2J59-B8GYB",BOOMR_lstart=(new Date).getTime(),this.body.appendChild(a)},_.write("<bo"+'dy onload="document._l();">'),_.close()}}(),"".length>0)if(a&&"performance"in a&&a.performance&&"function"==typeof a.performance.setResourceTimingBufferSize)a.performance.setResourceTimingBufferSize();!function(){if(BOOMR=a.BOOMR||{},BOOMR.plugins=BOOMR.plugins||{},!BOOMR.plugins.AK){var e="false"=="true"?1:0,t="cookiepresent",n="pf7u3ryxguseazbapkcq-f-107f7835f-clientnsv4-s.akamaihd.net",i="false"=="true"?2:1,_={"ak.v":"34","ak.cp":"143520","ak.ai":parseInt("293013",10),"ak.ol":"0","ak.cr":19,"ak.ipv":4,"ak.proto":"h2","ak.rid":"b2d6b78","ak.r":37315,"ak.a2":e,"ak.m":"x","ak.n":"essl","ak.bpcip":"121.127.77.0","ak.cport":49961,"ak.gh":"23.53.32.47","ak.quicv":"","ak.tlsv":"tls1.3","ak.0rtt":"","ak.csrc":"-","ak.acc":"","ak.t":"1679850117","ak.ak":"hOBiQwZUYzCg5VSAfCLimQ==N44QcC0YWT0dwylyrsIfR3hwfiFvZ2mefvjbTiCwxGK5yLumupvxoOrsmqFzY9tOMSCLKxmpQtqkyE5YP6qDzgLYRvYJEcpVkO6VHaQ3uhbyAqICbaF1/1iP5LgyTqe7N4JJa3FqOHbnfJVwfpNQZKyNKCqcLhMpFhGpJj/qzZ4GxIy7+13JxcYw/iRKgNupUze3ao+3XS0ACKaW6ijogflcPql53L0aLjeH8hi3zb0J73BH5hAKCUUmIpLI29Nlwg+QKJQQ9VcF4AU+iMBfOWda5k4nvaCDUF00W2oP50FQKBbPp5ltUY8spe8TKa7PrePlgGa3nmxZCfjgysY7+wYIvqJhlZ2fdb/5H6QIpwRwzwmx0e70DplUt+CMYlp55rEXpSywVGCZBQloBZwk4o3xdGhJlTeUuMh1GI7hZis=","ak.pv":"2900","ak.dpoabenc":"","ak.tf":i};if(""!==t)_["ak.ruds"]=t;var o={i:!1,av:function(e){var t="http.initiator";if(e&&(!e[t]||"spa_hard"===e[t]))_["ak.feo"]=void 0!==a.aFeoApplied?1:0,BOOMR.addVar(_)},rv:function(){var a=["ak.bpcip","ak.cport","ak.cr","ak.csrc","ak.gh","ak.ipv","ak.m","ak.n","ak.ol","ak.proto","ak.quicv","ak.tlsv","ak.0rtt","ak.r","ak.acc","ak.t","ak.tf"];BOOMR.removeVar(a)}};BOOMR.plugins.AK={akVars:_,akDNSPreFetchDomain:n,init:function(){if(!o.i){var a=BOOMR.subscribe;a("before_beacon",o.av,null,null),a("onbeacon",o.rv,null,null),o.i=!0}return this},is_complete:function(){return!0}}}}()}(window);</script>
							  

							  
<style>
    .gnb-api{margin-bottom:20px}.renewal-header{position:relative;background-color:#fff;border-bottom:1px solid #eee}.renewal-header #header{position:relative;width:980px;height:115px;margin:0 auto;padding-top:32px;background:#fff}.renewal-header #header section{position:absolute;width:840px;height:91px;margin:25px 0 0 140px}.renewal-header #header section h1{width:174px;height:41px;margin:2px 20px 0 0;float:left}.renewal-header #header section h1 a{display:block;height:41px}.renewal-header #header section div.clearFix{position:relative;z-index:3}.renewal-header #header fieldset{margin:0;padding:0;border:0}.renewal-header #header .ic-t-new,.renewal-header #header .ic-new{display:inline-block;overflow:hidden;width:12px;height:12px;background:url("//static.coupangcdn.com/image/coupang/common/ico_new.png") no-repeat transparent;background-size:12px;text-indent:-9em}.renewal-header #header .product-search a.search,.renewal-header .my-coupang-icon,.renewal-header .cart-icon,.renewal-header .category-btn,.renewal-header .select-icon,.renewal-header .depth-select-icon,.renewal-header .speech-icon,.renewal-header .blue-arrow,.renewal-header .subscription-menu-warning-icon,.renewal-header .gnb-menu li.rocket-delivery,.renewal-header .vendor-join .ic{background-image:url("//static.coupangcdn.com/image/coupang/common/pc_header_img_sprite_180104.png");background-repeat:no-repeat}.renewal-header .gnb-menu li.rocket-fresh a::before{content:url("//static.coupangcdn.com/image/coupang/common/pc_header_rocket_fresh_1x.png");display:inline-block;position:absolute;left:0;top:3px}.renewal-header .gnb-menu li.rocket-fresh a{padding-left:21px}.renewal-header .gnb-menu li.heart-teddy a::before{content:url("//img1a.coupangcdn.com/image/coupang/common/icon_heart_teddy.png");display:inline-block;position:absolute;left:13px;top:0}.renewal-header .gnb-menu li.heart-teddy a{padding-left:34px}.renewal-header .gnb-menu li.thanksgiving a::before{content:'';background-image:url("//static.coupangcdn.com/image/coupang/common/pc_header_thanksgiving_1.png");display:inline-block;position:absolute;left:14px;top:3px;height:20px;width:17px;background-size:cover}.renewal-header .gnb-menu li.thanksgiving a{padding-left:32px}.renewal-header .gnb-menu li.familymonth a::before{content:url("//static.coupangcdn.com/image/coupang/common/pc_header_familymonth_icon.png");display:inline-block;position:absolute;left:14px;top:3px}.renewal-header .gnb-menu li.familymonth a{padding-left:35px}.renewal-header .gnb-menu li.business-mall{margin-right:14px}.renewal-header .gnb-menu li.business-mall a::before{content:url("//static.coupangcdn.com/image/coupang/common/logoBizonlyBrown.png");display:inline-block;position:absolute;left:0;top:6px}.renewal-header .gnb-menu li.business-mall a{padding-left:20px}.renewal-header .gnb-menu li.business-mall-landing a::before{content:url("//static.coupangcdn.com/image/coupang/common/logoBizonlyBrown.png");display:inline-block;position:absolute;left:14px;top:6px}.renewal-header .gnb-menu li.business-mall-landing a{padding-left:34px}.renewal-header .gnb-menu li.coupang-global a::before{content:url("//static.coupangcdn.com/image/coupang/home/icons/Overseas.png");display:inline-block;position:absolute;left:14px;top:3px}.renewal-header .gnb-menu li.coupang-new-year a::before{content:url("//img1a.coupangcdn.com/image/coupang/common/newYear2023.png");display:inline-block;position:absolute;left:13px;top:0}.renewal-header .gnb-menu li.coupang-global a{padding-left:36px}.renewal-header .gnb-menu li.coupang-new-year a{padding-left:36px}.renewal-header .gnb-menu li.sustainable-market a::before{content:'';background-image:url("//static.coupangcdn.com/image/coupang/common/icon_government_promotion.png");position:absolute;left:11px;top:4.5px;width:20px;height:17px;background-size:cover}.renewal-header .gnb-menu li.sustainable-market a{padding-left:32px}.renewal-header .gnb-menu li.travel a::before{content:'';background-image:url("//static.coupangcdn.com/image/coupang/common/icon_travel.png");position:absolute;left:11px;top:3px;width:20px;height:24px;background-size:cover}.renewal-header .gnb-menu li.travel a{padding-left:32px}.renewal-header .gnb-menu li.christmas a::before{content:'';background-image:url("//static.coupangcdn.com/image/coupang/common/icon_christmas_2022.png");position:absolute;left:11px;top:1px;width:22px;height:26px;background-size:cover}.renewal-header .gnb-menu li.christmas a{padding-left:34px}.renewal-header .gnb-menu{position:relative;width:auto;min-width:1040px;left:0;z-index:0}.renewal-header .gnb-menu li{background:0;position:relative;float:left;text-align:center;height:32px}.renewal-header .gnb-menu li .ic-new{position:absolute;right:0;top:8px}.renewal-header .gnb-menu li.rocket-delivery{padding-left:10px;background-position:0 -118px}.renewal-header .gnb-menu li a{padding:7px 14px 0;font-weight:normal;display:block;height:25px;margin-left:1px;font-size:12px;color:#333}.renewal-header .gnb-menu li a:hover{text-decoration:underline;color:#4285f4}.renewal-header .gnb-menu li a.selected{color:#4285f4;font-weight:bold}.renewal-header[data-show-scroll-button="true"] .gnb-menu-scroll{position:absolute;top:0;left:22px;z-index:0;min-width:unset;white-space:nowrap;font-size:0}.renewal-header[data-show-scroll-button="true"] .gnb-menu-scroll li.gnb-menu-item{display:inline-block;margin-left:10px;padding:0 5px;vertical-align:top}.renewal-header[data-show-scroll-button="true"] .gnb-menu-scroll li.gnb-menu-item:first-child{margin-left:0;padding-left:0}.renewal-header[data-show-scroll-button="true"] .gnb-menu-scroll li.gnb-menu-item:last-child{padding-right:0}.renewal-header[data-show-scroll-button="true"] .gnb-menu-scroll li.gnb-menu-item a{font-weight:normal;display:-ms-flexbox;display:flex;-ms-flex-direction:row;flex-direction:row;-ms-flex-align:center;align-items:center;height:32px;line-height:32px;margin-left:1px;font-size:12px;color:#333}.renewal-header[data-show-scroll-button="true"] .gnb-menu-scroll li.gnb-menu-item a img{margin-right:2px;width:20px;-o-object-fit:contain;object-fit:contain}.renewal-header[data-show-scroll-button="true"] .gnb-menu-scroll li.gnb-menu-item a i{position:relative;top:-1px;margin-left:2px;width:12px}.renewal-header[data-show-scroll-button="true"] .gnb-menu-scroll li.gnb-menu-item a:hover{text-decoration:underline;color:#4285f4}.renewal-header[data-show-scroll-button="true"] .gnb-menu-scroll li.gnb-menu-item a.selected{color:#4285f4;font-weight:bold}.renewal-header[data-show-scroll-button="true"] .gnb-menu-container{position:relative;top:-1px;left:-22px;width:100%;max-width:1160px;min-width:846px;height:32px;z-index:0}.renewal-header[data-show-scroll-button="true"] .gnb-menu-btn{display:none;position:absolute;top:0;width:20px;height:32px;line-height:32px;z-index:1;background:#fff center}.renewal-header[data-show-scroll-button="true"] .gnb-menu-btn-left{left:0;background-image:url("//img1a.coupangcdn.com/image/coupang/common/pc_gnb_arrow-left-gray@2x.png");background-repeat:no-repeat;background-size:contain}.renewal-header[data-show-scroll-button="true"] .gnb-menu-btn-left.gnb-menu-btn-active{cursor:pointer;background-image:url("//img1a.coupangcdn.com/image/coupang/common/pc_gnb_arrow-left@2x.png")}.renewal-header[data-show-scroll-button="true"] .gnb-menu-btn-left.gnb-menu-btn-active:after{content:'';position:absolute;top:0;left:100%;width:16px;height:32px;background:linear-gradient(90deg,#fff 13.13%,rgba(255,255,255,0) 100%)}.renewal-header[data-show-scroll-button="true"] .gnb-menu-btn-right{right:0;background-image:url("//img1a.coupangcdn.com/image/coupang/common/pc_gnb_arrow-right-gray@2x.png");background-repeat:no-repeat;background-size:contain}.renewal-header[data-show-scroll-button="true"] .gnb-menu-btn-right.gnb-menu-btn-active{cursor:pointer;background-image:url("//img1a.coupangcdn.com/image/coupang/common/pc_gnb_arrow-right@2x.png")}.renewal-header[data-show-scroll-button="true"] .gnb-menu-btn-right.gnb-menu-btn-active:after{content:'';position:absolute;top:0;right:100%;width:32px;height:32px;background:linear-gradient(270deg,#fff 13.13%,rgba(255,255,255,0) 100%)}.renewal-header[data-show-scroll-button="true"] .gnb-menu-animation{transition:all .35s ease-in-out}.renewal-header #headerCartCount{position:absolute;width:17px;height:19px;top:8px;right:10px;margin:-5px 0 0 4px;color:#fff;text-align:center;line-height:19px;letter-spacing:-1px;font:bold 10px Tahoma}.renewal-header .cart-icon{width:40px;height:41px;display:block;margin:0 auto;background-position:-112px 0}.renewal-header .cart-title{width:50px;display:block;text-align:center;padding-top:3px;color:#333;white-space:nowrap}.renewal-header .icon-menus .cart,.renewal-header .icon-menus .cart>a{width:50px;height:60px;margin-top:-4px;display:inline-block}.renewal-header .mycart-preview-module{position:relative}.renewal-header .my-coupang-menu{position:absolute;top:52px;left:-18px;display:none;z-index:3}.renewal-header .my-coupang-menu .wrapper{position:relative;display:block;width:50px;padding:8px 20px 20px;margin-top:14px;background-color:#fff;border:1px solid #ddd;box-shadow:0 4px 5px rgba(0,0,0,0.3)}.renewal-header .my-coupang-menu .speech-icon{position:absolute;top:-6px;left:39px}.renewal-header .my-coupang-menu .subscription-menu-a{display:none}.renewal-header .my-coupang-menu .subscription-menu-warning-icon{width:17px;height:17px;margin-top:-2px;margin-left:3px;background-position:-168px -78px;vertical-align:middle;position:absolute;display:none}.renewal-header #headerPopupWords{position:absolute;width:350px;height:auto;top:37px;left:134px;border:1px solid #ddd;z-index:1;box-shadow:0 4px 5px rgba(0,0,0,0.3)}.renewal-header #headerPopupWords.auto-search{height:328px}.renewal-header #headerPopupWords.auto-search .autocomplete_wrap{padding:20px 12px 6px 12px}.renewal-header #headerPopupWords.auto-search a{top:39px;left:0;right:0;display:block;padding:0 0 16px 0}.renewal-header .autocomplete_wrap{padding-right:0}.renewal-header .noImage .autocomplete_wrap{padding-right:0}.renewal-header .autocomplete_wrap h3{height:11px;margin:0 6px;padding:14px 0 13px 4px;color:#333}.renewal-header .autocomplete_wrap h3 span{color:#333}.renewal-header .autocomplete_wrap ol{height:247px;padding:12px 6px 0 6px}.renewal-header .autocomplete_wrap>a:hover{text-decoration:underline}.renewal-header .autocomplete_wrap a.kwd:hover{color:#4285f4;text-decoration:underline}.renewal-header .select--category--option a:hover{text-decoration:underline}.renewal-header .select--category--option a.select--category__selected{color:#4285f4;font-weight:bold}.renewal-header .popularity-words:before{display:none}.renewal-header .popularity-words a.kwd{padding:0 0 12px 4px}.renewal-header .popularity-words .delete-kwdhistory{margin:1px 0 13px 0;padding:0;background-position:-156px -187px}.renewal-header .popularity-words .history-off-msg{display:block;padding:12px 0;text-align:center;font-weight:bold}.renewal-header #searchPreviewImage{width:169px;padding:0 6px}.renewal-header .search_preview_list .desc{height:11px;margin:0;padding:14px 0 13px 4px;color:#333;font-size:12px;font-weight:bold;border-bottom:1px solid #ddd}.renewal-header .preview_type .preview_thumb{height:auto;margin:0}.renewal-header .preview_type .preview_thumb img{width:160px;height:160px;padding:10px 0}.renewal-header .preview_title{padding:0 5px}.renewal-header .preview_rice{width:154px;height:19px;position:relative;margin-top:2px;padding:0 5px}.renewal-header .preview_type .lnk_detail{height:auto;bottom:0}.renewal-header .my-coupang-menu a{display:block;padding-top:12px;color:#333;font-size:12px;white-space:nowrap}.renewal-header .my-coupang-menu a:hover{color:#4285f4;text-decoration:underline}.renewal-header .my-coupang-icon{width:29px;height:31px;display:block;margin:0 auto;background-position:-112px -42px}.renewal-header .my-coupang-icon-warning{width:36px;height:40px;margin-top:-8px;background-position:-168px -33px}.renewal-header .my-coupang-title{width:50px;display:block;padding-top:7px;text-align:center;color:#333;white-space:nowrap}.renewal-header .my-coupang-title-warning{padding-top:5px}.renewal-header .subscription-menu-label-warning{color:red}.renewal-header .icon-menus .my-coupang{position:relative;margin-right:20px;width:50px;height:52px}.renewal-header .icon-menus li{float:left}.renewal-header .icon-menus{margin-top:3px;display:block;font-size:12px}.renewal-header .select--category--option{width:125px;padding:10px 0 10px 10px;border:1px solid #ddd;left:-2px;box-shadow:0 4px 5px rgba(0,0,0,0.3)}.renewal-header .select--category--option li{padding:0}.renewal-header .select--category{border:0;width:134px;border-right:1px solid #ddd}.renewal-header #header .product-search .coupang-search.is-speech{width:276px;padding-right:23px}.renewal-header #header .coupang-search:focus{z-index:20;border:0}.renewal-header #header .coupang-search.ad-keyword{color:#888}.renewal-header #header .product-search{float:left;margin-left:0;width:484px;height:37px;margin-right:22px;border:2px solid #4285f4;background-position:0 -207px}.renewal-header #header .product-search .coupang-search{width:299px;left:135px;color:#333;position:absolute;top:0;height:37px;margin:0;border:0;background:#fff;text-indent:10px;line-height:37px;font-size:14px;outline:0}.renewal-header #header .product-search .coupang-search:not(*:root){line-height:normal}.renewal-header #header .product-search input.coupang-search::-ms-clear{display:none}.renewal-header #header .product-search a.search{overflow:hidden;position:absolute;right:0;width:50px;height:39px;background-position:-112px -71px;text-indent:-9em}.renewal-header .history-btns{position:absolute;height:30px;top:335px;left:134px;right:-2px;display:none;border:1px solid #ddd;z-index:1;box-shadow:0 4px 5px rgba(0,0,0,0.3)}.renewal-header .history-btns.fixTop{top:105px}.renewal-header .history-btns span{color:#888;line-height:30px}.renewal-header .history-btns span.del-button{float:left}.renewal-header .history-btns span.history-onoff{float:right}.renewal-header .top-bar{position:absolute;height:32px;top:0;right:0;left:0;background:#f0f0f0;z-index:3}.renewal-header .top-bar>section{width:980px;margin:0 auto;font-size:11px}.renewal-header .top-bar>section a{color:#333}.renewal-header .top-bar>section li{padding-right:12px}.renewal-header #headerMenu{float:right;position:relative}.renewal-header #headerMenu li{height:26px;position:relative;padding-top:10px;float:left}.renewal-header #headerMenu hr.vertical-divider{float:left;border:0;display:inline-block;background:#CCC;width:1px;height:18px;margin-top:7px}.renewal-header #headerMenu hr.vertical-divider.mr12{margin-right:12px}.renewal-header li#freeShippingBenefitMenu{font-family:"apple sd gothic neo","留묒� 怨좊뵓","malgun gothic","�섎닎怨좊뵓","nanumgothic","�뗭�","dotum","sans-serif";-webkit-user-select:none;-ms-user-select:none;user-select:none;color:#212b36;padding-left:12px;padding-top:0;height:auto;visibility:hidden}.renewal-header li#freeShippingBenefitMenu a{cursor:pointer}.renewal-header li#freeShippingBenefitMenu .green{color:#008c00}.renewal-header li#freeShippingBenefitMenu .triangle-down:after{border-top-color:#454f5b}.renewal-header li#freeShippingBenefitMenu .dn{display:none}.renewal-header li#freeShippingBenefitMenu .badge{background:white;font-weight:bold;border-radius:4px;padding:1px 4px;margin-right:4px;border:1px solid #c4cdd5;color:#454f5b}.renewal-header li#freeShippingBenefitMenu .badge.red{border:1px solid #e12705;color:#e12705}.renewal-header li#freeShippingBenefitMenu .link-loyalty{background:#346aff;border-radius:4px;color:white;padding:4px 16px 4px 6px;margin-left:6px;font-size:10px;position:relative}.renewal-header li#freeShippingBenefitMenu .link-loyalty img{position:absolute;top:5px}.renewal-header li#freeShippingBenefitMenu .link-loyalty.big{display:block;padding:6px 0 5px 0;font-size:12px}.renewal-header li#freeShippingBenefitMenu .link-loyalty.big img{height:12px;margin-left:2px;top:7px}.renewal-header li#freeShippingBenefitMenu .mouseover-popup{position:absolute;left:-5px;width:280px;top:32px;background:white;border:1px solid #DDD;box-shadow:0 4px 5px 0 rgba(0,0,0,0.3);box-sizing:border-box;padding:24px 16px 16px 16px;cursor:auto;text-align:center}.renewal-header li#freeShippingBenefitMenu .mouseover-popup .info{font-size:16px;color:#212b36;font-weight:bold;margin-bottom:6px}.renewal-header li#freeShippingBenefitMenu .mouseover-popup .desc{font-size:11px;color:#454f5b;margin-bottom:14px}.renewal-header li#freeShippingBenefitMenu .mouseover-popup .desc .dark{color:#212b36}.renewal-header li#freeShippingBenefitMenu:hover .mouseover-popup{display:block}.renewal-header li#myCoupang{padding-right:9px}.renewal-header li#logout>a{padding:2px;color:#888;border:1px solid #ccc;background-color:#fafafa}.renewal-header #login strong{font-weight:normal}.renewal-header .cs-center>a{position:relative;padding-right:25px}.renewal-header .cs-center>p{position:absolute;width:100px;right:0;top:32px;display:none;font-size:12px;background-color:#fff;padding:8px 20px 20px;border:1px solid #ddd;box-shadow:0 4px 5px rgba(0,0,0,0.3)}.renewal-header .cs-center>p a{display:block;padding-top:12px;white-space:nowrap}.renewal-header .cs-center>p a:hover{color:#4285f4;text-decoration:underline}.renewal-header #header li.more:hover .my-coupang-menu,.renewal-header li.more:hover #mycart-preview,.renewal-header li.more:hover>p{display:block}.renewal-header .cart-preview-hover #mycart-preview{display:block}.renewal-header #mycart-preview{position:absolute;display:none;width:300px;top:58px;right:0;border:0;background:0;z-index:3}.renewal-header #mycart-preview .wrapper{position:relative;width:300px;margin-top:10px;display:block;background-color:#fff;border:1px solid #ddd;box-shadow:0 4px 5px rgba(0,0,0,0.3)}.renewal-header #mycart-preview .speech-icon{position:absolute;top:-6px;right:40px}.renewal-header #mycart-preview .mycart-preview-products{position:relative;padding:0 16px;overflow:hidden}.renewal-header #mycart-preview .mycart-preview-products a{display:block}.renewal-header #mycart-preview .mycart-preview-products .empty-cart{width:260px;height:70px;padding:20px 0;line-height:70px;font-size:12px}.renewal-header #mycart-preview .mycart-preview-products .empty-cart:before{display:none}.renewal-header #mycart-preview .preview-product{width:260px;height:72px;padding:10px 0;border-bottom:1px solid #EEE;position:relative;background-image:none}.renewal-header #mycart-preview .preview-product img{float:left}.renewal-header #mycart-preview .preview-product .mycart-preview-producttitle{position:relative;display:table;overflow:hidden;float:left;width:176px;height:72px;padding-left:12px;font-size:12px;color:#333}.renewal-header #mycart-preview .preview-product .mycart-preview-producttitle>span{display:table-cell;vertical-align:middle}.renewal-header #mycart-preview .preview-product .mycart-preview-producttitle>span span{max-height:46px;display:-webkit-box;overflow:hidden;-webkit-line-clamp:3;/*! autoprefixer: off */-webkit-box-orient:vertical;/*! autoprefixer: on */box-orient:vertical;text-overflow:ellipsis}.renewal-header #mycart-preview .preview-product:hover span{color:#4285f4;text-decoration:underline}.renewal-header #mycart-preview .preview-product:before{display:none}.renewal-header #mycart-preview .preview-product .empty-cart{width:280px;height:203px;line-height:203px;padding:0;background:0;text-align:center}.renewal-header #mycart-preview .preview-product .empty-cart:before{content:'';position:absolute;left:4%;bottom:56px;width:92%;border-bottom:1px solid #d4d4d4}.renewal-header #mycart-preview .preview-product.bundle-option-item{overflow:hidden;padding-top:0;margin-top:-3px;background:#fff;height:auto;word-break:break-all}.renewal-header #mycart-preview .preview-product.bundle-option-item .arrow-icon{width:24px;height:24px;margin:5px 29px 29px}.renewal-header #mycart-preview .preview-product.bundle-option-item .bundle-item-info{float:left;width:150px;padding:12px;border-radius:2px;background-color:#f5f5f5}.renewal-header #mycart-preview .preview-product.bundle-option-item .mycart-preview-bundle-item-title{display:block;font-size:12px;font-weight:normal;line-height:15px;color:#111}.renewal-header #mycart-preview .preview-product.bundle-option-item .bundle-item-title-icon{width:14px;height:14px;padding-right:4px;vertical-align:top}.renewal-header #mycart-preview .mycart-btn{position:relative;width:300px;height:60px;display:block;margin-top:-1px;border-top:1px solid #d4d4d4;background:#fafafa}.renewal-header #mycart-preview .mycart-btn>span{position:relative;width:115px;height:13px;display:block;margin:23px auto 0;text-align:center;color:#333}.renewal-header #mycart-preview .mycart-btn:hover>span{text-decoration:underline;color:#4285f4}.renewal-header #mycart-preview .blue-arrow{width:6px;height:9px;display:inline-block;margin-left:7px;background-position:-143px -52px}.renewal-header .speech-icon{width:12px;height:9px;display:block;background-position:-143px -42px}#subscribeHeader{float:left}#subscribeHeader a{cursor:pointer}#subscribeHeader .vendor-join{position:relative}#subscribeHeader .vendor-join .ic{display:inline-block;margin-top:-2px;margin-left:4px;padding-left:10px;width:5px;height:3px;background-position:-153px -36px;vertical-align:middle}#subscribeHeader .vendor-join>a{position:relative}#subscribeHeader .vendor-join>p{position:absolute;right:-12px;top:32px;display:none;font-size:12px;background-color:#fff;padding:8px 20px 20px;border:1px solid #ddd;box-shadow:0 4px 5px rgba(0,0,0,0.3)}#subscribeHeader .vendor-join>p a{display:block;padding-top:12px;white-space:nowrap}#subscribeHeader .vendor-join>p a:hover{color:#4285f4;text-decoration:underline}#subscribeHeader li{float:left;height:24px;padding:10px 0 0 12px}body.renewal{min-width:1020px}.sdp-wide.renewal .renewal-header .top-bar>section,.sdp-wide.renewal .renewal-header #header{width:1242px}.sdp-wide.renewal .renewal-header #headerPopupWords{width:667px}#container.sdp-wide.renewal #header section{width:1100px}#container.sdp-wide.renewal #header .product-search{width:743px}#container.sdp-wide.renewal #header .product-search .coupang-search{width:559px}#container.sdp-wide.renewal #header .product-search .coupang-search.is-speech{width:536px}.category-btn{position:absolute;width:110px;height:115px;top:32px;left:0;margin-right:30px;background-position:0 0;text-align:center}.category-btn>a{display:block;margin-top:73px;color:#fff;font-size:13px}.category-btn:hover .category-layer{height:auto;display:block}.category-layer{position:absolute;width:auto;height:auto;min-height:450px;top:114px;left:0;display:none;border:1px solid #ddd;box-shadow:-1px 4px 5px rgba(0,0,0,0.3);z-index:1;background:#fff;text-align:left}.category-layer li{height:29px}.category-layer a{display:inline-block;height:20px;color:#333;font-size:12px}.category-layer a:hover{color:#4285f4;text-decoration:underline}.category-layer .depth{height:100%;min-height:450px;background-image:none;background-color:#fff;margin:-1px 0 0 0;padding-right:0;border:1px solid #ddd;box-shadow:2px 4px 5px rgba(0,0,0,0.3);left:163px;display:none;position:absolute;z-index:2;top:0}.category-layer .select-icon,.category-layer .depth-select-icon{position:absolute;width:5px;height:9px;right:9px;top:11px;display:none;background-position:-156px -20px}.category-layer .hover>a{font-weight:bold;color:#4285f4}.category-layer .hover .select-icon,.category-layer .second-depth-list.hover .depth-select-icon,.category-layer .travel-second-depth-row.hover .depth-select-icon{display:block}.category-layer .depth-list .gnb-banner,.category-layer .depth-list .gnb-banner>a{display:block;position:absolute;overflow:hidden;width:591px;height:100%;top:0;left:0;text-indent:-9em;background:rgba(255,255,255,0)}.category-layer .depth-list .gnb-banner>a{z-index:1}.category-layer .depth-list ul{height:100%;border:0;padding-top:12px;position:absolute;z-index:2}.category-layer .depth-list li{width:157px;height:28px;overflow:hidden}.category-layer .depth-list li a{font-size:12px;width:137px;height:28px;position:relative;letter-spacing:-1px;padding:9px 0 0 20px;white-space:nowrap}.category-layer .depth-list li a:hover{font-weight:bold;color:#4285f4}.category-layer .depth-list li.more-category a{text-decoration:underline;color:#4285f4;width:auto;float:left}.category-layer .depth-list img{width:auto;height:auto;position:absolute;right:0;bottom:0;z-index:0;display:none}.category-layer .depth-list .second-depth-list.hover .third-depth-list{display:block}.category-layer .depth-list .third-depth-list,.category-layer .depth-list .travel-third-depth-list{height:100%;left:157px;position:absolute;top:0;width:177px;border-left:#ddd solid 1px;display:none}.category-layer .depth-list .travel-category-nav{width:157px;height:100%;border:0;padding-top:12px;position:absolute;z-index:2}.category-layer .depth-list .travel-category-nav .travel-home{display:block;font-weight:bold;font-size:12px;letter-spacing:-1px;padding:5px 0 0 20px;cursor:pointer}.category-layer .depth-list .travel-category-nav .travel-home:hover{color:#4285f4;text-decoration:underline}.category-layer .depth-list .travel-category-nav .travel-leisure,.category-layer .depth-list .travel-category-nav .travel-international{padding:20px 0 10px 20px;font-weight:bold;font-size:12px;letter-spacing:-1px;color:#333}.category-layer .depth-list .travel-category-nav ul.travel-second-depth-list{position:static;height:auto;padding-top:0}.category-layer .depth-list .travel-category-nav ul.travel-second-depth-list>li.travel-second-depth-row{width:157px;height:28px}.category-layer .depth-list .travel-category-nav ul.travel-second-depth-list>li.travel-second-depth-row.hover .travel-third-depth-list{display:block}.category-layer .depth-list .ic-t-new,.category-layer .depth-list .ic-new{margin-left:2px}.category-layer .renewal-fashion-sundries__wide .depth-list .gnb-banner,.category-layer .renewal-fashion-sundries__wide .depth-list .gnb-banner>a{width:815px}.category-layer .renewal-fashion-sundries__wide .depth-list li:first-child a{display:inline-block;color:#4285f4;font-weight:bold}.category-layer .renewal-fashion-sundries__wide .wide-fashion-banner .fashion-banner{position:absolute;z-index:2;height:401px;padding-top:12px;border-left:0}.category-layer .renewal-fashion-sundries__wide .wide-fashion-banner .fashion-banner__index0{left:0}.category-layer .renewal-fashion-sundries__wide .wide-fashion-banner .fashion-banner__index1{left:144px}.category-layer .renewal-fashion-sundries__wide .wide-fashion-banner .fashion-banner__index2{left:288px;height:290px}.category-layer .renewal-fashion-sundries__wide .wide-fashion-banner .fashion-banner__index3{left:432px;height:290px}.category-layer .renewal-fashion-sundries__wide .wide-fashion-banner .fashion-banner__index4{left:576px;height:205px}.category-layer .shopping-menu-list{padding:8px 0 5px 0;border-bottom:#ddd solid 1px}.category-layer .ticket-menu-list{padding:6px 0 5px 0;border-bottom:#ddd solid 1px}.category-layer .theme-menu-list{padding:6px 0 8px 0}.category-layer .menu>li>a{position:relative;width:114px;padding:9px 0 0 51px;white-space:nowrap;background:url("//static.coupangcdn.com/image/coupang/common/pc_gnb_icon_ver10.png") 12px 1px no-repeat}.category-layer .menu>li.hover>a{color:#4285f4}.category-layer .menu>li.hover .depth{display:block;width:591px;height:100%;overflow:hidden}.category-layer .menu>li.renewal-fashion-sundries__wide.hover .depth{width:815px}.category-layer .second-depth-list.hover .third-depth-list{display:block}.category-layer .fashion-sundries>a:hover,.category-layer .theme-store>a:hover,.category-layer .travel-leisure>a:hover{text-decoration:none;cursor:pointer}.category-layer .menu>li.fashion-sundries>a{background-position:-8px -27px}.category-layer .menu>li.fashion-sundries>a:hover{background-position:-200+px -27px}.category-layer .menu>li.mancloth>a{background-position:-8px -69px}.category-layer .menu>li.mancloth>a:hover{background-position:-200+px -69px}.category-layer .menu>li.beauty>a{background-position:-8px -111px}.category-layer .menu>li.beauty>a:hover{background-position:-200+px -111px}.category-layer .menu>li.child-birth>a{background-position:-8px -153px}.category-layer .menu>li.child-birth>a:hover{background-position:-200+px -153px}.category-layer .menu>li.food>a{background-position:-8px -195px}.category-layer .menu>li.food>a:hover{background-position:-200+px -195px}.category-layer .menu>li.snacks>a{background-position:-8px -237px}.category-layer .menu>li.snacks>a:hover{background-position:-200+px -237px}.category-layer .menu>li.kitchen>a{background-position:-8px -279px}.category-layer .menu>li.kitchen>a:hover{background-position:-200+px -279px}.category-layer .menu>li.life>a{background-position:-8px -321px}.category-layer .menu>li.life>a:hover{background-position:-200+px -321px}.category-layer .menu>li.home_decoration>a{background-position:-8px -363px}.category-layer .menu>li.home_decoration>a:hover{background-position:-200+px -363px}.category-layer .menu>li.appliances-digital>a{background-position:-8px -405px}.category-layer .menu>li.appliances-digital>a:hover{background-position:-200+px -405px}.category-layer .menu>li.sports>a{background-position:-8px -447px}.category-layer .menu>li.sports>a:hover{background-position:-200+px -447px}.category-layer .menu>li.office>a{background-position:-8px -489px}.category-layer .menu>li.office>a:hover{background-position:-200+px -489px}.category-layer .menu>li.pet>a{background-position:-8px -531px}.category-layer .menu>li.pet>a:hover{background-position:-200+px -531px}.category-layer .menu>li.book>a{background-position:-8px -573px}.category-layer .menu>li.book>a:hover{background-position:-200+px -573px}.category-layer .menu>li.travel-leisure>a{background-position:-8px -615px}.category-layer .menu>li.travel-leisure>a:hover{background-position:-200+px -615px}.category-layer .menu>li.local-coupon>a{background-position:-8px -657px}.category-layer .menu>li.local-coupon>a:hover{background-position:-200+px -657px}.category-layer .menu>li.culture>a{background-position:-8px -699px}.category-layer .menu>li.culture>a:hover{background-position:-200+px -699px}.category-layer .menu>li.hobby>a{background-position:-8px -741px}.category-layer .menu>li.hobby>a:hover{background-position:-200+px -741px}.category-layer .menu>li.car>a{background-position:-8px -783px}.category-layer .menu>li.car>a:hover{background-position:-200+px -783px}.category-layer .menu>li.giftcard>a{background-position:-8px -825px}.category-layer .menu>li.giftcard>a:hover{background-position:-200+px -825px}.category-layer .menu>li.health>a{background-position:-8px -867px}.category-layer .menu>li.health>a:hover{background-position:-200+px -867px}.category-layer .menu>li.theme-store>a{background-position:-8px -909px}.category-layer .menu>li.theme-store>a:hover{background-position:-200+px -909px}.category-layer .menu>li.travel-international>a{background-position:-8px -951px}.category-layer .menu>li.travel-international>a:hover{background-position:-200+px -951px}.category-layer .menu>li.fashion-sundries.hover>a{background-position:-200px -27px}.category-layer .menu>li.mancloth.hover>a{background-position:-200px -69px}.category-layer .menu>li.beauty.hover>a{background-position:-200px -111px}.category-layer .menu>li.child-birth.hover>a{background-position:-200px -153px}.category-layer .menu>li.food.hover>a{background-position:-200px -195px}.category-layer .menu>li.snacks.hover>a{background-position:-200px -237px}.category-layer .menu>li.kitchen.hover>a{background-position:-200px -279px}.category-layer .menu>li.life.hover>a{background-position:-200px -321px}.category-layer .menu>li.home_decoration.hover>a{background-position:-200px -363px}.category-layer .menu>li.appliances-digital.hover>a{background-position:-200px -405px}.category-layer .menu>li.sports.hover>a{background-position:-200px -447px}.category-layer .menu>li.office.hover>a{background-position:-200px -489px}.category-layer .menu>li.pet.hover>a{background-position:-200px -531px}.category-layer .menu>li.book.hover>a{background-position:-200px -573px}.category-layer .menu>li.travel-leisure.hover>a{background-position:-200px -615px}.category-layer .menu>li.local-coupon.hover>a{background-position:-200px -657px}.category-layer .menu>li.culture.hover>a{background-position:-200px -699px}.category-layer .menu>li.hobby.hover>a{background-position:-200px -741px}.category-layer .menu>li.car.hover>a{background-position:-200px -783px}.category-layer .menu>li.giftcard.hover>a{background-position:-200px -825px}.category-layer .menu>li.health.hover>a{background-position:-200px -867px}.category-layer .menu>li.theme-store.hover>a{background-position:-200px -909px}.category-layer .menu>li.travel-international.hover>a{background-position:-200px -951px}.category-layer .menu>li.sport-leisure>a{background-position:-8px -405px}.category-layer .menu>li.sport-leisure.hover>a{background-position:-200px -405px}#breadcrumb{width:980px;min-height:40px;padding-top:8px;margin:0 auto}#breadcrumb .breadcrumb-open{z-index:100}#breadcrumb li{float:left;position:relative;font-size:11px;color:#333;padding:0 6px 0 3px;height:28px;line-height:28px}#breadcrumb a{display:inline-block;font-size:11px}#breadcrumb .breadcrumb-select li{float:none;width:96%;padding-left:4px;overflow:hidden}.breadcrumb-link{color:#333}.breadcrumb-link:hover{color:#008cff;text-decoration:underline}.breadcrumb-select-item{width:160px;height:22px;line-height:18px;border:#aaa solid 1px;color:#333;font-size:11px;background:#fff url("//static.coupangcdn.com/image/coupang/category/category_image_sprite_0820.png") 134px -178px no-repeat;text-align:left;vertical-align:middle;padding-left:8px;padding-right:22px;overflow:hidden}.breadcrumb-open .breadcrumb-select-item{border:#008cff solid 2px}.breadcrumb-open .breadcrumb-select{display:block;position:absolute;left:3px;top:26px;width:158px;max-height:140px;border:#ddd solid 1px;background:#fff;overflow-y:scroll;overflow-x:hidden;z-index:6}.breadcrumb-select{display:none}.breadcrumb-select a{width:100%;height:28px;line-height:28px;color:#333;text-indent:5px}.breadcrumb-select a:hover{background:#008cff;color:#fff}.list #breadcrumb{margin-bottom:9px}#gnbCashLabelWrapper{position:relative;z-index:10;padding-left:20px;cursor:pointer}#gnbCashLabelWrapper .gnb-cash-label{display:block;position:relative;margin-top:-10px;padding-top:10px}#gnbCashLabelWrapper .gnb-cash-label:before{position:absolute;top:8px;left:-20px;content:'';width:16px;height:16px;background:url("//static.coupangcdn.com/image/badges/cashback/web/cash-icon.svg") no-repeat 0 0;background-size:16px 16px}#gnbCashWidgetWrapper{position:absolute;top:38px;left:50%;min-width:264px;height:92px;margin-left:-132px;background-color:#fff;border-radius:5px;box-shadow:0 1px 6px 0 rgba(0,0,0,0.3);box-sizing:border-box;color:#111;display:none;z-index:2}#gnbCashWidgetWrapper:before{position:absolute;top:-6px;left:50%;content:'';background:#fff;width:12px;height:12px;margin-left:-6px;-ms-transform:rotate(55deg) skew(200deg);transform:rotate(55deg) skew(200deg);box-shadow:0 1px 6px 0 rgba(0,0,0,0.3);z-index:1}#gnbCashWidgetWrapper:after{position:absolute;top:0;left:50%;margin-left:-15px;content:'';background:#fff;width:30px;height:14px;z-index:10}#gnbCashWidgetWrapper .gnb-cash-widget{display:block;margin-top:-14px;padding:34px 20px 20px;cursor:pointer}#gnbCashWidgetWrapper .gnb-cash-widget__message{font-size:14px;line-height:1.57;color:#111;white-space:nowrap}#gnbCashWidgetWrapper .gnb-cash-widget__amount{margin-top:8px;line-height:24px}#gnbCashWidgetWrapper .gnb-cash-widget__amount .g-cash-amount{display:inline-block;position:relative;padding-left:32px;font-family:Roboto;font-size:22px;font-weight:bold;letter-spacing:-0.8px;vertical-align:top}#gnbCashWidgetWrapper .gnb-cash-widget__amount .g-cash-amount:before{position:absolute;top:-3px;left:0;content:'';width:24px;height:24px;background:url("//static.coupangcdn.com/image/badges/cashback/web/cash-icon.svg") no-repeat 0 0;background-size:24px 24px}#gnbCashWidgetWrapper .gnb-cash-widget__amount .g-cash-unit{display:inline-block;font-size:16px;font-weight:normal;letter-spacing:-0.7px;vertical-align:top}.side-fix #my-view{position:fixed;left:50%;top:10px}.side-fix .side-button{position:fixed;left:50%;top:454px;margin-left:555px}.side-stay .side-button{position:absolute;margin-left:60px !important}.home #side-bar.stick{position:fixed;margin-top:0;top:0}#side-bar{position:absolute;white-space:nowrap;margin-left:15px;left:980px;right:0;top:20px}#side-bar .ads-line-banner-container{font-stretch:normal;font-style:normal;font-weight:normal;line-height:normal;letter-spacing:normal;padding-top:16px}#side-bar .ads-line-banner-container .ads-line-banner-main .ads-line-banner-header{font-family:inherit;font-size:14px;font-weight:bold;font-stretch:normal;line-height:1.43;letter-spacing:normal;color:#111}#side-bar .ads-line-banner-container .ads-line-banner-main .ads-line-banner-list a.ads-line-banner-link{display:block;width:102px}#side-bar .ads-line-banner-container .ads-line-banner-main .ads-line-banner-list a.ads-line-banner-link .ads-line-banner-product{border:solid 1px rgba(17,17,17,0.15);border-bottom:0;background-color:#fff;border-radius:4px 4px 0 0;width:78px;padding:15px 11px 12px}#side-bar .ads-line-banner-container .ads-line-banner-main .ads-line-banner-list a.ads-line-banner-link .ads-line-banner-product img{width:78px;height:78px;border-radius:4px;margin:8px auto}#side-bar .ads-line-banner-container .ads-line-banner-main .ads-line-banner-list a.ads-line-banner-link .ads-line-banner-product .review-bg,#side-bar .ads-line-banner-container .ads-line-banner-main .ads-line-banner-list a.ads-line-banner-link .ads-line-banner-product .review{background:url("//img1a.coupangcdn.com/image/fodium/desktop/widget-srp-alsoviewedproducts-20170314@1x.png") no-repeat}#side-bar .ads-line-banner-container .ads-line-banner-main .ads-line-banner-list a.ads-line-banner-link .ads-line-banner-product .review-bg{background-position:-3px -18px;text-indent:-9999px;display:inline-block;float:left;width:70px;margin:0 0 6px}#side-bar .ads-line-banner-container .ads-line-banner-main .ads-line-banner-list a.ads-line-banner-link .ads-line-banner-product .review-bg .review{display:block;float:left;line-height:1;width:70px;height:13px;background-position:-3px -3px;text-indent:-9999px}#side-bar .ads-line-banner-container .ads-line-banner-main .ads-line-banner-list a.ads-line-banner-link .ads-line-banner-product .title{width:100%;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;font-size:11px;line-height:normal;letter-spacing:normal;color:rgba(17,17,17,0.8);margin-bottom:4px}#side-bar .ads-line-banner-container .ads-line-banner-main .ads-line-banner-list a.ads-line-banner-link .ads-line-banner-product .ads-marker{font-size:11px;color:rgba(17,17,17,0.3)}#side-bar .ads-line-banner-container .ads-line-banner-main .ads-line-banner-list a.ads-line-banner-link .ads-line-banner-button{width:100%;height:32px;background-color:#50a0ff;position:relative;border-radius:0 0 4px 4px;font-size:11px;text-align:center;line-height:32px;color:#fff}#side-bar .ads-line-banner-container .ads-line-banner-main .ads-line-banner-list a.ads-line-banner-link .ads-line-banner-button:after{position:relative;display:inline-block;width:12px;height:12px;content:'';background:url("//img1a.coupangcdn.com/image/dragonstone/sdp/arrow_icon_right@3x.png") no-repeat;background-size:contain;top:2px}#side-bar .promotion-banner{padding-bottom:10px}#side-bar .promotion-banner li{padding:10px 0 0}#side-bar.bestCategory #my-view{position:static}#side-bar.bestCategory .side-button{top:auto;bottom:50px;display:none}#side-bar.bestCategory .side-button .up,#side-bar.bestCategory .side-button .down{display:none}#side-bar.bestCategory .side-button .top{height:42px}#side-bar.bestCategory .side-button a{background:url("//img1a.coupangcdn.com/image/coupang/main/categoryBest/top.png") no-repeat;width:42px}#side-bar #my-view{width:102px}#side-bar #my-view .side-cart{width:102px;height:33px;background:url("//img1a.coupangcdn.com/image/coupang/common/bg_side_sprite.png") no-repeat -31px 0;cursor:pointer;overflow:hidden}#side-bar #my-view .side-cart:hover{background-position:-31px -33px}#side-bar #my-view .side-cart a{display:block;overflow:hidden}#side-bar #my-view .side-cart strong{float:left;text-indent:-9999em}#side-bar #my-view .side-cart strong a{display:block}#side-bar #my-view .side-cart em{float:right;height:33px;padding:0 14px 0 0;font:bold 12px 'Arial';color:#3abbff;line-height:33px}#side-bar #my-view .recently-viewed-list{position:relative;padding:10px;background-color:#fff;border:1px solid silver;border-top:0}#side-bar #my-view .recently-viewed-list .recent-viewed-paging{display:none;height:16px;margin:0;padding:8px 5px 4px;font-size:11px;color:#7b7b7b;overflow:hidden}#side-bar #my-view .recently-viewed-list .recent-viewed-paging span{float:right}#side-bar #my-view .recently-viewed-list .recent-viewed-paging span.counter{float:left;padding:2px 0 0}#side-bar #my-view .recently-viewed-list .recent-viewed-paging strong{color:#0085da}#side-bar #my-view .recently-viewed-list .recent-viewed-paging .move{float:left;width:16px;height:16px;background:url("//img1a.coupangcdn.com/image/coupang/common/bg_side_sprite.png") no-repeat;text-indent:-9999em}#side-bar #my-view .recently-viewed-list .recent-viewed-paging .prev{background-position:0 0}#side-bar #my-view .recently-viewed-list .recent-viewed-paging .prev:hover{background-position:0 -16px}#side-bar #my-view .recently-viewed-list .recent-viewed-paging .next{width:15px;background-position:-16px 0}#side-bar #my-view .recently-viewed-list .recent-viewed-paging .next:hover{background-position:-16px -16px}#side-bar #my-view .recently-viewed-item{position:relative;width:76px;height:76px;margin-bottom:8px}#side-bar #my-view .recently-viewed-item.over .view-item{position:absolute;right:0;top:0;width:217px;height:72px;border:2px solid #343c53;background:#f1f1f1;overflow:hidden;text-decoration:none;cursor:pointer}#side-bar #my-view .recently-viewed-item.over img{float:right;margin:-2px -2px 0 0}#side-bar #my-view .recently-viewed-item.over .price em{font:bold 15px Arial}#side-bar #my-view .recently-viewed-item.over .name,#side-bar #my-view .recently-viewed-item.over .price,#side-bar #my-view .recently-viewed-item.over .recently-delete{display:block;float:left}#side-bar #my-view .recently-viewed-item img{display:block;width:74px;height:74px;border:1px solid #eee}#side-bar #my-view .recently-viewed-item .recently-delete{display:none;position:absolute;right:0;top:0;width:13px;height:13px;background:url("//img1a.coupangcdn.com/image/coupang/common/bg_side_sprite.png") no-repeat 0 -32px;text-indent:-9999em;text-decoration:none;cursor:pointer}#side-bar #my-view .recently-viewed-item .name{display:none;float:left;width:120px;padding:19px 0 0 10px;font-size:11px;color:#55575f;word-break:break-all;white-space:nowrap;text-overflow:ellipsis;overflow:hidden}#side-bar #my-view .recently-viewed-item .price{display:none;float:left;width:120px;padding:6px 0 0 10px;font-weight:bold;font-size:12px;color:#0096e4;word-break:break-all;white-space:nowrap;text-overflow:ellipsis;overflow:hidden}#side-bar #my-view .no-item{height:158px;padding:110px 0 0;font-size:11px;color:#929292;line-height:160%;text-align:center}#side-bar #my-view .recently-viewed-page{display:none;height:328px}#side-bar #my-view .recently-viewed-products{width:102px;height:33px;background:url("//img1a.coupangcdn.com/image/coupang/common/bg_side_sprite.png") no-repeat -31px -66px;overflow:hidden}#side-bar #my-view .recently-viewed-products strong{float:left;text-indent:-9999em}#side-bar #my-view .recently-viewed-products em{float:right;height:33px;padding:0 14px 0 0;font:bold 12px/33px Arial;color:#3abbff}#side-bar .side-button{padding:5px 0 0 0}#side-bar .side-button a{display:block;width:50px;height:32px;text-indent:-9999em;background:url("//img1a.coupangcdn.com/image/coupang/common/bg_side_sprite.png") no-repeat}#side-bar .side-button .top{height:33px;background-position:-150px 0}#side-bar .side-button .bottom{background-position:-150px -140px}#side-bar .side-button .up{background-position:-150px -33px}#side-bar .side-button .down{background-position:-150px -65px}.promotion-header{display:table-caption;position:relative}.triangle-down{width:10px;height:10px;margin-left:2px;display:inline-block;position:relative}.triangle-down:after{content:' ';width:0;height:0;border-left:4px solid transparent;border-right:4px solid transparent;border-top:5px solid black;display:inline-block;position:absolute;top:4px}.promotion-header-text{color:#212b36;font-size:11px}.bold{font-weight:bold}.promotion-header-img{width:33px;height:14px;margin-left:4px;margin-top:-1px}.promotion-header-popup-img{position:absolute;display:none;width:282px;border-radius:4px;box-shadow:0 2px 48px 0 rgba(0,0,0,0.15);background-color:#000}.promotion-header-avatar{height:31px;width:36px;margin-top:-10px;margin-right:2px;display:inline-block}html{overflow-y:scroll}body,input,textarea,select,button,table{font-family:sans-serif;font-size:100%}body,div,dl,dt,dd,ul,ol,menu,li,h1,h2,h3,h4,h5,h6,pre,form,fieldset,input,textarea,blockquote,th,td,p{margin:0;padding:0}article,aside,hgroup,header,footer,figure,figcaption,nav,section,time,mark,canvas,video,audio,details,summary{display:block}dl,dt,dd,ul,ol,menu,li{list-style:none}table{border-collapse:collapse;border-spacing:0}fieldset,img{border:0;padding:0}img{vertical-align:top}address,caption,cite,code,dfn,em,var{font-style:normal;font-weight:normal}caption,th{text-align:left}q:before,q:after{content:''}form{margin:0}a{text-decoration:none}.clearFix:after{content:".";display:block;clear:both;height:0;visibility:hidden}* html .clearFix{height:1%}.clearFix{display:block}caption,legend,.skip,hr{display:none}textarea{resize:vertical}body{background-color:#f0f0f0}#container{position:relative;min-width:980px;overflow:hidden}.none{display:block;text-indent:-9em;width:0;height:0;overflow:hidden;font-size:0}.hidden{display:none}#header,#gnb,#contents,#footer{position:relative}#skip-navigation{position:absolute;left:-500px;top:-500px;overflow:hidden;z-index:10}#coupang-banner a.close,#subscribe fieldset label,#subscribe a,#subscribe .comment,#subscribe .subscribe-success em{background:url("//img1a.coupangcdn.com/image/coupang/common/bg_aside_sprite_161005.png") no-repeat}#subscribe{width:100%;height:47px;position:relative;background-color:#e6e6e6;border-top:1px solid #d6d6d6;border-bottom:1px solid #d6d6d6;display:none;overflow:hidden}#subscribe fieldset{width:980px;position:relative;padding:9px 0 0 0;margin:0 auto 0}#subscribe label,#subscribe a{text-indent:-9999em}#subscribe label,#subscribe input,#subscribe a.apply{float:left}#subscribe label{width:271px;height:22px;margin:4px 0 0 103px;background-position:0 0}#subscribe input{width:393px;height:27px;padding:0 0 0 10px;margin-left:14px;font-size:12px;color:#55575f;border:1px solid #b8b8b8;border-bottom:1px solid #d6d6d6;border-right:1px solid #d6d6d6;line-height:28px}#subscribe a.apply{width:74px;height:29px;margin-left:10px;background-position:0 -32px}#subscribe a.close{display:block;width:17px;height:17px;position:absolute;right:10px;top:15px;background-position:-84px -42px;text-indent:-9999em}#subscribe .comment{padding:2px 0 0 15px;position:absolute;top:16px;left:890px;font-size:12px;color:#ed1c24;background-position:-335px 0;word-break:break-all;white-space:nowrap;display:none}#subscribe .comment-show{display:block}#subscribe .subscribe-success{display:block;width:980px;margin:0 auto 0;padding:18px 0 0 0}#subscribe .subscribe-success em{display:block;width:576px;height:14px;margin:0 auto 0;background-position:0 -66px;text-indent:-9999em}#coupang-banner{position:relative;top:0;width:100%;text-align:center;z-index:4;overflow:hidden}#coupang-banner strong,#coupang-banner a.close{display:block;cursor:pointer}#coupang-banner span{display:block}#coupang-banner strong{width:100%;position:absolute;left:0;top:0;background-color:#f1e4d4;overflow:hidden;z-index:2;display:none}#coupang-banner a.close{overflow:hidden;width:30px;height:30px;position:absolute;right:10px;top:20px;background-position:-110px -31px;z-index:1;text-indent:-9em;cursor:pointer}#coupang-banner.hide-bottom-border span.banner-bg{border-bottom:none !important}.popularity-words a.sect,.popularity-words a:hover{text-decoration:underline}.popularity-words a.sect.kwd{color:#4285f4}.popularity-words{overflow:hidden;position:absolute;width:auto;height:230px;display:none;top:38px;left:139px;right:1px;background:#fff;border:1px solid #888}.popularity-words:before{content:'';position:absolute;top:0;right:0;width:199px;height:100%;background:#fff;border-left:1px solid #ccc}.popularity-words li{position:relative;width:100%;overflow:hidden}.popularity-words h3{position:relative;margin:0 10px;padding:10px 0 7px;border-bottom:1px solid #ddd;font-size:12px;color:#55575f}.popularity-words h3 span{color:#008cff}.popularity-words a{overflow:hidden;white-space:nowrap;font:normal 12px Tahoma;color:#555}.popularity-words .delete-kwdhistory{width:38px;height:13px;float:right;margin-right:2px;padding:5px 10px 5px 5px;color:#0070ff;font:normal 12px Tahoma;background-position:-150px -182px;text-indent:-9999px;cursor:pointer}.popularity-words a.kwd{position:absolute;top:0;left:0;right:53px;bottom:0;padding:5px 0 5px 12px;cursor:pointer}.popularity-words .history-off-msg{height:43px;display:block;line-height:43px;padding-left:12px;font-size:12px;color:#666}.history-btns{position:absolute;left:0;bottom:0;right:200px;height:27px;padding:0 12px;background-color:#f5f5f5;border-top:1px solid #e1e1e1}.history-btns span{float:left;font-size:12px;color:#666;line-height:27px;cursor:pointer}.history-btns span.del-button{float:right}.history-btns span:hover{text-decoration:underline}.popularity-words .delete-kwdhistory.select-btn{text-indent:0;background-position:-95px -182px}a.del-button:hover,a.kwd:hover{background-color:#fff}.popularity-words ol{padding:4px 0}.popularity-words div a{font:normal 12px Tahoma;color:#555}.popularity-words a{display:block;height:13px;padding:5px 10px;cursor:pointer}.popularity-words div strong{color:#008cff}.contents{padding:0 0 40px}#contents{width:980px;margin:0 auto}.coupang-exhibitions h2{overflow:hidden;width:600px;height:118px;margin:13px auto 0 auto;text-indent:-99em;background-image:url("//img1a.coupangcdn.com/image/promotion/promotion_title.png");color:transparent}.exhibitions-list{position:relative;overflow:hidden}.exhibitions-list ul{width:1002px}.exhibitions-list li{height:150px;float:left;padding:0 20px 20px 0}.exhibitions-list li a{display:block;border:1px solid #d6d6d6}.exhibitions-list li a:hover{border:1px solid #0085da}.coupang-benefits h2{width:552px;height:145px;margin:9px auto 0;text-indent:-9999em;background-image:url("//img1a.coupangcdn.com/image/coupang/benefit/coupang_benefit_title_v3.png")}.coupang-benefits .go-my{float:right;width:146px;height:40px;margin:-55px 5px 0 0;text-indent:-999em;background-image:url("//img1a.coupangcdn.com/image/coupang/etc/btn_go_my_coupon.png")}.message-benefit{width:978px;height:270px;border:1px solid #dadada}.message-benefit p{width:480px;height:67px;margin:101px auto;text-indent:-9999em;background-image:url("//img1a.coupangcdn.com/image/benefit/message_benefit.png")}.coupang-benefit-list{position:relative;overflow:hidden;clear:both}.coupang-benefit-list ul{margin-top:-6px;width:1002px}.coupang-benefit-list li{float:left;padding-right:10px;padding-bottom:10px}.no-footer-padding{padding:0}@supports(-webkit-appearance:none){.speech-content-mic{z-index:30;overflow:hidden;position:absolute;top:5px;right:48px;width:26px;height:26px;background:url("//img1a.coupangcdn.com/image/coupang/common/ic_mic.png") 3px 1px no-repeat;background-size:20px 48px;text-indent:-99px}.speech-content-mic.speech-mic-works{background-position:3px -23px}#header .product-search input.is-speech{width:254px;padding-right:40px}}.preview_type{overflow:hidden;display:block;position:absolute;top:0;right:0;width:171px;height:100%;padding:0 11px 0 17px;background:#fff;border-left:1px solid #ccc}.autocomplete_wrap{padding-right:200px}.search_preview_list li{position:relative;display:none;font-family:apple sd gothic neo,"留묒� 怨좊뵓",malgun gothic,"�섎닎怨좊뵓",nanumgothic,"�뗭�",dotum,sans-serif}.search_preview_list li.item0{display:block}.search_preview_list .label_price{font-weight:bold;font-size:11px;color:#e30f13}.search_preview_list .price{margin-right:2px;font-size:11px;color:#33353d}.search_preview_list .price em{position:relative;top:1px;font-weight:bold;font-size:12px;font-family:Tahoma,sans-serif}.search_preview_list .count{position:absolute;bottom:0;left:17px;right:11px;height:22px;padding-top:4px;background:#fff;border-top:1px solid #eee;font-size:11px;color:#aaa}.search_preview_list .preview_title{overflow:hidden;white-space:nowrap;text-overflow:ellipsis;font-size:12px;color:#555}.search_preview_list .desc{border-bottom:1px solid #eee;height:18px;margin-bottom:7px;padding-top:7px;font-size:11px;color:#aaa}.preview_thumb{padding:0 !important;background:none !important;text-align:center;font-size:0}.preview_type .preview_thumb{height:150px;margin-bottom:7px}.preview_type .preview_thumb img{width:150px;height:150px}.preview_type .ico_rocket{vertical-align:middle}.preview_type .preview_title{margin-bottom:-3px}.preview_type .count,.preview_type .label_price{display:none}.preview_type .lnk_detail{display:none;position:absolute;top:25px;left:0;right:0;height:185px;background:#fff;opacity:0;filter:Alpha(Opacity=0);text-indent:-5000px}.preview_type .lnk_detail:hover{background:#fff}.preview_type .preview_rice{position:relative;width:100%}.preview_type .txt_more{position:absolute;right:0;top:4px;width:50px;font-family:apple sd gothic neo,"留묒� 怨좊뵓",malgun gothic,"�섎닎怨좊뵓",nanumgothic,"�뗭�",dotum,sans-serif;font-size:11px;color:#0070cc;text-align:right}.noImage .preview_type{display:none}.noImage:before{display:none}.noImage .autocomplete_wrap{padding-right:0}@media screen and (-webkit-min-device-pixel-ratio:0){.search_preview_list .price em{position:static}.preview_type .preview_title{margin-bottom:0}.search_preview_list .count{height:20px;padding-top:6px}}#headerMenu{z-index:10}#header .product-search .dimmed{display:none}#header .product-search .header-searchForm{position:absolute;top:0;left:0;right:0;bottom:0}#searchCategories{visibility:hidden;width:0;height:0}.select--category{z-index:20;position:absolute;top:0;left:0;background-color:#fff;border:1px solid #aaa;font-size:12px;font-weight:normal;height:37px;width:138px}.select--category__current{display:block;height:38px;left:0;line-height:38px;outline:0;overflow:hidden;position:absolute;text-indent:10px;top:0;width:110px}.select--category__current:link,.select--category__current:visited,.select--category__current:hover{color:#555;outline:0;text-decoration:none}.select--category--button{background:url("//img1a.coupangcdn.com/image/coupang/common/pc_header_img_sprite_180104.png") 6px -165px no-repeat;display:block;height:30px;outline:0;position:absolute;right:0;top:3px;width:30px}.select--category__opened{background:url("//img1a.coupangcdn.com/image/coupang/common/pc_header_img_sprite_180104.png") 6px -142px no-repeat}.select--category__disabled{background-color:#3c3c3c;border:solid 1px #515151}.select--category--option{background-color:#fff;border:solid 1px #aaa;list-style:none;left:-1px;margin:0;padding:0;position:absolute;top:30px;width:138px;z-index:1;overflow-y:auto;margin-top:-1px}.select--category--option li{padding:0 7px;font-size:12px}.select--category--option a{display:block;outline:0;padding:7px 0 7px 3px;letter-spacing:-1px}.select--category--option a:link,.select--category--option a:visited{color:#000;text-decoration:none}.select--category--option a:hover,.select--category--option a:focus,.select--category--option a.select--category--option__focused{color:#008cff}.select--category--option li.last a{border-bottom:0}.select--category--option__disabled{border-bottom:dotted 1px #515151;color:#999;display:block;padding:7px 0 7px 3px}.select--category--option__group{display:none}.select--category--option__sub{padding-left:17px}.dimmed-background{position:absolute;left:0;top:0;z-index:1;width:100%;height:100%;background-color:#000;opacity:.2;filter:Alpha(Opacity=50)}#header .keyword_container{display:none}.ly_dimmed{display:none;z-index:10;position:fixed;top:0;left:0;right:0;bottom:0;background:#000;opacity:.4;filter:Alpha(Opacity=40)}.is-keywordpopup_active #header{z-index:20;background:#f0f0f0}.is-keywordpopup_active .ly_dimmed{display:block}#side-left-bar-card-event.side-fix.travelSticky{top:104px}.side-fix #my-view.travelSticky{top:89px}.side-fix .side-button.travelSticky{position:fixed;left:50%;top:530px}.opt_rocket_button,.bg_tooltip_arrow,.bg_rocket_icon,.btn_rocket_tooltip_close{background:url("//img1a.coupangcdn.com/image/coupang/search/sp_rocket_icon_151117.png") no-repeat}.opt_rocket_wrap{z-index:30;position:absolute;top:1px;right:96px;width:40px;height:37px}.opt_rocket_button{display:block;width:40px;height:37px;margin-right:0 !important;background-color:#fff;background-position:7px -29px;text-indent:-5000px;cursor:pointer}.opt_rocket_button.is-checked{background-position:7px 6px}.opt_rocket_checkbox{position:absolute;top:0;left:0;visibility:hidden}#header .has-rocket_search .coupang-search{width:254px;padding-right:40px}.opt_rocket_tooltip{display:none;position:absolute;top:48px;left:50%;width:178px;height:65px;padding:13px 0 0 45px;margin-left:-110px;border:1px solid #acacac;background:#fff;box-shadow:3px 5px 15px #ccc;font-size:12px;font-family:apple sd gothic neo,"留묒� 怨좊뵓",malgun gothic,"�섎닎怨좊뵓",nanumgothic,"�뗭�",dotum,sans-serif}.opt_rocket_tooltip input{vertical-align:middle}.opt_rocket_tooltip label{display:inline !important;margin-left:4px !important;margin-right:0 !important;font-size:11px;color:#777;cursor:pointer;vertical-align:middle}.opt_rocket_text{margin-bottom:3px;color:#555;line-height:1.5}.bg_rocket_icon{position:absolute;top:15px;left:10px;width:27px;height:27px;background-position:0 -94px}.btn_rocket_tooltip_close{position:absolute;top:8px;right:5px;width:20px;height:20px;background-position:-35px -137px;text-indent:-5000px}.bg_tooltip_arrow{position:absolute;top:-7px;left:50%;width:9px;height:7px;margin-left:-4px;background-position:-41px -179px}.popularSearches{display:none}.footer_new{border-top:#ddd solid 2px;background:#fff}.footer_new .sns-link a,.footer_new .footer-layer2 h1 a,.footer_new .award-list li a{display:block;overflow:hidden;background:url("//static.coupangcdn.com/image/coupang/common/footer_asset_v8.png") no-repeat;text-indent:-99em}.footer_new .footer-layer1{border-bottom:#ddd solid 1px;height:34px;text-align:center;padding-top:15px;white-space:nowrap}.footer_new .footer-layer1 a{display:inline-block;white-space:nowrap;padding:0 14px;font-size:12px;color:#555;height:12px;border-left:#888 solid 1px}.footer_new .footer-layer1 a:first-child{border-left:0}.footer_new .footer-layer2{width:1020px;height:100px;margin:30px auto;font-size:12px;color:#555;line-height:150%}.footer_new .footer-layer2 a{color:#555}.footer_new .footer-layer2 h1{float:left;width:150px;background-image:none}.footer_new .footer-layer2 h1 a{background-position:-19px -34px;width:117px;height:34px;margin-left:10px}.footer_new .footer-layer2 .licensee,.footer_new .footer-layer2 .service-check{text-decoration:underline}.footer_new .footer-layer2 strong{font-weight:bold;font-size:12px}.footer_new .footer-content address{float:left;width:260px}.footer_new .contact-fax{font-size:11px}.footer_new .contact-info{float:left;width:340px;color:#555}.footer_new .contact-info em{font-size:24px;font-family:Tahoma;font-weight:bold;display:block;margin:9px 0 11px 0}.footer_new .safe-service{float:left;width:270px;font-size:11px}.footer_new .footer-layer3{width:1020px;height:80px;margin:0 auto;position:relative;border-top:#ddd solid 1px}.footer_new .footer-layer3 .slide-area{width:940px;height:80px;margin:0 auto;overflow:hidden}.footer_new .footer-layer3 .slide-navi .move{position:absolute;width:40px;height:80px;overflow:hidden;text-indent:-9em}.footer_new .footer-layer3 .slide-navi .prev{background-position:-20px -92px;left:0;z-index:5}.footer_new .footer-layer3 .slide-navi .next{background-position:-998px -92px;right:0;z-index:5}.footer_new .award-list{overflow:hidden}.footer_new .award-list li{float:left;width:220px;height:80px}.footer_new .award-list li a{height:55px;margin-top:15px;width:188px}.footer_new .award-list li a.award-link3{background-position:-44px -107px}.footer_new .award-list li a.award-link4{background-position:-222px -107px}.footer_new .award-list li a.award-link5{background-position:-417px -107px}.footer_new .award-list li a.award-link13{background-position:-623px -107px}.footer_new .footer-layer4{background:#333;height:80px}.footer_new .coupang-copyright{width:1020px;margin:0 auto;position:relative}.footer_new .coupang-copyright p{color:#888;font-size:11px}.footer_new .coupang-copyright .info{padding:21px 0 3px 0}.footer_new .sns-link{position:absolute;top:23px;right:0}.footer_new .sns-link li{float:left}.footer_new .sns-link a{width:34px;height:34px;margin-right:8px}.footer_new .sns-link a.facebook{background-position:-220px -30px}.footer_new .sns-link a.blog{background-position:-348px -30px}.footer_new .sns-link a.instagram{background-position:-390px -30px}.footer-top__banner-notice{background:#f1f4f6;font-size:12px}.footer-top__banner-notice .footer-top__banner-notice-inner{width:1020px;position:relative;margin:0 auto;padding:12px}.footer-top__banner-notice .footer-top__banner-notice-inner .footer-top__banner-notice-link{color:inherit;font-weight:bold}.footer-top__banner-notice .footer-top__banner-notice-inner .footer-top__banner-notice-link:after{display:inline-block;content:'';border-top:1px solid #000;border-right:1px solid #000;-ms-transform:rotate(45deg);transform:rotate(45deg);width:6px;height:6px;position:relative;top:-1px}.footer-banner-floating{z-index:2000;position:fixed;bottom:0;left:0}.footer-banner{width:100%;min-width:1020px;text-align:center;background-color:rgba(214,239,255,0.98);padding-top:14px;padding-bottom:13px}.footer-banner .footer-banner-message{font-size:14px}.footer-banner .footer-banner-message a{color:#111}.footer-banner .footer-banner-message .footer-banner-arrow{height:12px;margin-top:2px}.footer-banner .footer-banner-message .highlights{color:#009abf;font-weight:550}.footer-banner .footer-banner-close-button-wrapper{position:absolute;right:0;bottom:0;width:44px;height:44px}.footer-banner .footer-banner-close-button-wrapper img{height:100%}#browserSupportWrap{background:#fff;height:70px;text-align:center}.bs-wrap{width:930px;margin:0 auto;padding-top:10px;text-align:left}.bs-message{float:left;font-size:12px;color:#333;margin-top:8px;letter-spacing:-1px;line-height:18px}.bs-browser-download li{float:left;margin-left:44px;height:50px}.bs-browser-download li.ie a{background-position:0 0}.bs-browser-download li.chrome a{background-position:0 -100px}.bs-browser-download li.firefox a{background-position:0 -200px}.bs-browser-download li em{color:#4285f4}.bs-browser-download a{display:inline-block;height:40px;padding:10px 0 0 66px;font-size:12px;color:#333;text-decoration:none;background:url("//img1a.coupangcdn.com/image/coupang/common/browser_icon.png") no-repeat;letter-spacing:-1px;line-height:18px}.bs-browser-download a:hover{font-size:12px;color:#4285f4;text-decoration:underline}.plp-srp-free-shipping-badge{position:relative;display:block}.plp-srp-free-shipping-badge__icon{display:inline-block;margin-right:4px;margin-top:6px;padding:0}.plp-srp-free-shipping-badge__icon.s-10{margin-top:7px}.plp-srp-free-shipping-badge__text{display:inline-block;box-sizing:border-box;margin:0;padding:0;height:24px;font-size:12px;font-weight:700;background-color:transparent;color:#111;text-align:left}.plp-srp-free-shipping-badge__text.has-bg{margin-top:4px;margin-bottom:2px;text-align:center;padding:0 8px;border-radius:2px;color:#fff;background-color:#008c00}.plp-srp-free-shipping-badge__text span{display:inline-block;line-height:25px;vertical-align:top}.site-picker{position:relative;font-size:14px;display:inline-block;text-align:left;vertical-align:top;margin-top:-9px;color:#212b36;margin-left:5px}.site-picker__arrow{display:inline-block;width:14px;height:14px;background-color:#333;-webkit-mask-size:100%;mask-size:100%;-webkit-mask-position:center;mask-position:center;-webkit-mask-repeat:no-repeat;mask-repeat:no-repeat;-webkit-mask-image:url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTQiIGhlaWdodD0iMTQiIHZpZXdCb3g9IjAgMCAxNCAxNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTExLjI0MTggNC41NTg2MkMxMS40NjI2IDQuMzIzOTcgMTEuODMxNyA0LjMxMjcyIDEyLjA2NjQgNC41MzM0OEMxMi4yODMgNC43MzcyNiAxMi4zMDkyIDUuMDY3NDkgMTIuMTM4NCA1LjMwMTY1TDEyLjA5MTUgNS4zNTgwNUw3LjQyNjU1IDEwLjMxNjRDNy4yMTI3MiAxMC41NDM3IDYuODYyMSAxMC41NiA2LjYyODY2IDEwLjM2NTJMNi41NzY5OCAxMC4zMTY1TDEuOTA4NjIgNS4zNTgyMUMxLjY4Nzc4IDUuMTIzNjUgMS42OTg5IDQuNzU0NDcgMS45MzM0NiA0LjUzMzYyQzIuMTQ5OTggNC4zMjk3NyAyLjQ4MTIgNC4zMjM1NiAyLjcwNDU4IDQuNTA4M0wyLjc1ODA1IDQuNTU4NDZMNy4wMDExNiA5LjA2NDk5TDExLjI0MTggNC41NTg2MloiIGZpbGw9IiMyMTJCMzYiLz4KPC9zdmc+Cg==);mask-image:url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTQiIGhlaWdodD0iMTQiIHZpZXdCb3g9IjAgMCAxNCAxNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTExLjI0MTggNC41NTg2MkMxMS40NjI2IDQuMzIzOTcgMTEuODMxNyA0LjMxMjcyIDEyLjA2NjQgNC41MzM0OEMxMi4yODMgNC43MzcyNiAxMi4zMDkyIDUuMDY3NDkgMTIuMTM4NCA1LjMwMTY1TDEyLjA5MTUgNS4zNTgwNUw3LjQyNjU1IDEwLjMxNjRDNy4yMTI3MiAxMC41NDM3IDYuODYyMSAxMC41NiA2LjYyODY2IDEwLjM2NTJMNi41NzY5OCAxMC4zMTY1TDEuOTA4NjIgNS4zNTgyMUMxLjY4Nzc4IDUuMTIzNjUgMS42OTg5IDQuNzU0NDcgMS45MzM0NiA0LjUzMzYyQzIuMTQ5OTggNC4zMjk3NyAyLjQ4MTIgNC4zMjM1NiAyLjcwNDU4IDQuNTA4M0wyLjc1ODA1IDQuNTU4NDZMNy4wMDExNiA5LjA2NDk5TDExLjI0MTggNC41NTg2MloiIGZpbGw9IiMyMTJCMzYiLz4KPC9zdmc+Cg==)}.site-picker label{height:36px;border:1px solid #c4cdd5;display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;width:180px;border-radius:3px;padding:12px 14px;box-sizing:border-box;cursor:pointer}.site-picker label p{-ms-flex:1;flex:1}.site-picker label span{transition:.3s}.site-picker:hover .site-picker__arrow{-ms-transform:rotate(180deg);transform:rotate(180deg)}.site-picker ul{position:absolute;overflow:hidden;list-style:none;margin:0;padding:5px 0;background:#fff;box-shadow:0 1px 7px rgba(0,0,0,0.26);top:36px;left:0;width:180px;border-radius:4px;visibility:hidden}.site-picker ul li{padding:10px;white-space:nowrap}.site-picker ul li:hover{background:#fafafa}.site-picker ul a{text-decoration:none;padding:0 !important;height:auto !important;color:#333 !important;font-size:14px !important}.site-picker:hover ul{visibility:visible}@media(max-width:470px){.site-picker{width:100%;margin-top:15px}}
  </style>
  <style>
    #coupang-banner span.banner-bg {
      float: left;
      width: 100%;
    }

    #coupang-banner .banner-middle {
      width: 980px;
      margin: 0 auto;
    }

    #coupang-banner .banner-middle a {
      float: left;
      display: inline-block
    }
  </style>

  <style>
    body, div, dl, dt, dd, ul, ol, menu, li, h1, h2, h3, h4, h5, h6,
    pre, form, fieldset, input, textarea, blockquote, th, td, p {
      margin: 0;
      padding: 0;
      font-size: 100%;
      font-family: '돋움', Dotum, sans-serif;
    }

    article,
    aside,
    hgroup,
    header,
    footer,
    figure,
    figcaption,
    nav,
    section,
    time,
    mark,
    canvas,
    video,
    audio,
    details,
    summary {
      display: block;
    }

    dl,
    dt,
    dd,
    ul,
    ol,
    menu,
    li {
      list-style: none;
    }

    table {
      border-collapse: collapse;
      border-spacing: 0;
    }

    fieldset,
    img {
      border: 0;
      padding: 0;
    }

    a {
      text-decoration: none;
    }

    button::-moz-focus-inner {
      padding: 0;
      border: 0;
    }

    body.overflow-hidden {
      overflow: hidden;
    }

    body .__next-wrap,
    .__next-wrap input,
    .__next-wrap textarea,
    .__next-wrap select,
    .__next-wrap button,
    .__next-wrap table {
      font-family: "맑은 고딕", malgun gothic, apple sd gothic neo, "나눔고딕", nanumgothic, "돋움", dotum, sans-serif;
    }

    .portal-modal {
      z-index: 30;
    }

    #contents {
      z-index: inherit !important;
    }
  </style>
  <style>
    * {
      margin: 0;
      padding: 0;
    }

    body {
      font-family: "맑은 고딕", malgun gothic, apple sd gothic neo, "나눔고딕", nanumgothic, "돋움", dotum, sans-serif;
    }

    .__next-wrap {
      position: relative;
      min-height: 1000px;
      line-height: 1.42857;
      color: #333;
      font-family: "맑은 고딕", malgun gothic, apple sd gothic neo, "나눔고딕", nanumgothic, "돋움", dotum, sans-serif;
    }

    .__next-wrap input,
    .__next textarea,
    .__next select,
    .__next button,
    .__next table {
      font-family: "맑은 고딕", malgun gothic, apple sd gothic neo, "나눔고딕", nanumgothic, "돋움", dotum, sans-serif;
    }

    .__next-wrap * {
      box-sizing: border-box;
      top: 100px;
    }

    .__next-wrap a,
    .__next button {
      -webkit-touch-callout: none;
      user-select: none;
      -webkit-user-select: none;
      cursor: pointer;
      text-decoration: none;
      outline: none;
    }

    .__next-wrap [hidden] {
      display: none;
    }

    .__next-wrap ol,
    .__next ul {
      list-style-type: none;
    }

    .__next-wrap::after {
      content: '';
      display: table;
      clear: both;
    }

    html {
      font-size: 16px;
    }

    img,
    fieldset,
    button,
    input {
      border: 0 none;
    }

    button:focus {
      outline: 0;
    }

    @media (max-width: 320px) {
      html {
        font-size: 14px;
      }
    }

    body {
      background-color: #ffffff;
    }

    .__next.disable-body-scroll {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      overflow: hidden;
    }

    .__next.disable-body-scroll.focus-in {
      position: relative;
      top: 0;
      left: 0;
      right: 0;
      width: 100%;
      height: auto;
      overflow: auto;
    }

    #contents.increase-z-index {
      z-index: 30;
    }
  </style>

  <style>
    .dgNrpP {
      font-weight: normal;
      font-size: 100%;
    }

    /*!sc*/

    data-styled.g934[id="sc-jl7hjb-0"] {
      content: "dgNrpP,"
    }

    /*!sc*/

    .kQvlGP {
      height: 44px;
      padding-bottom: 15px;
      border-bottom: 2px solid #DDDDDD;
    }

    /*!sc*/

    data-styled.g935[id="sc-wp5isd-0"] {
      content: "kQvlGP,"
    }

    /*!sc*/

    .dntWFS {
      font-size: 24px;
      font-weight: 700;
      color: #333333;
    }

    /*!sc*/

    data-styled.g936[id="sc-wp5isd-1"] {
      content: "dntWFS,"
    }

    /*!sc*/

    .fgkLLK {
      margin-top: 11px;
      float: right;
    }

    /*!sc*/

    data-styled.g937[id="sc-wp5isd-2"] {
      content: "fgkLLK,"
    }

    /*!sc*/

    .leEVMz {
      font-size: 15px;
      font-weight: 700;
      margin-left: 12px;
      color: #AAAAAA;
    }

    /*!sc*/

    data-styled.g938[id="sc-wp5isd-3"] {
      content: "leEVMz,"
    }

    /*!sc*/

    .cCOJLY {
      font-size: 15px;
      font-weight: 700;
      margin-left: 12px;
      color: #333333;
    }

    /*!sc*/

    data-styled.g939[id="sc-wp5isd-4"] {
      content: "cCOJLY,"
    }

    /*!sc*/

    .gWgVCb {
      text-align: center;
      height: 100%;
      border-style: solid;
      border-width: 1px;
      border-radius: 2px;
      padding: 8px;
      background: #ffffff;
      cursor: pointer;
      overflow: visible;
      box-sizing: border-box;
      color: inherit;
      width: initial;
      border-color: #b5b5b5;
    }

    /*!sc*/

    data-styled.g967[id="sc-1vm0jpx-0"] {
      content: "gWgVCb,"
    }

    /*!sc*/

    .iqKTcw {
      color: red;
      border-color: #555555;
      border-color: inherits;
      background-color: inherits;
    }

    /*!sc*/

    data-styled.g969[id="sc-1vm0jpx-2"] {
      content: "iqKTcw,"
    }

    /*!sc*/

    .dRiHfk {
      text-align: center;
      height: 100%;
      border: none;
      border-radius: 2px;
      padding: 8px;
      background-color: red;
      cursor: pointer;
      overflow: visible;
      box-sizing: border-box;
      color: #ffffff;
      font-weight: bold;
      width: inherit;
    }

    /*!sc*/

    data-styled.g971[id="sc-1vm0jpx-4"] {
      content: "dRiHfk,"
    }

    /*!sc*/

    .sNTur {
      height: 79px;
      border-top: 2px solid #DDDDDD;
      padding: 20px 0 10px;
      text-align: center;
    }

    /*!sc*/

    data-styled.g972[id="sc-wh3cod-0"] {
      content: "sNTur,"
    }

    /*!sc*/

    .hmSagB {
      width: 160px;
      height: 35px;
      font-size: 14px;
      margin-right: 2px;
      border-color: red;
    }

    /*!sc*/

    data-styled.g973[id="sc-wh3cod-1"] {
      content: "hmSagB,"
    }

    /*!sc*/

    .gQBFoi {
      width: 160px;
      height: 35px;
      font-size: 14px;
      margin-left: 2px;
    }

    /*!sc*/

    data-styled.g974[id="sc-wh3cod-2"] {
      content: "gQBFoi,"
    }

    /*!sc*/

    .kHdGTr {
      border-bottom: 2px solid #DDDDDD;
      padding: 30px;
      font-size: 1.5625rem;
      color: #555555;
      text-align: center;
    }

    /*!sc*/

    data-styled.g1002[id="sc-lsrlw6-0"] {
      content: "kHdGTr,"
    }

    /*!sc*/

    .hQRrrf {
      padding: 20px;
      border: 1px solid #DDDDDD;
      border-left: 0;
      color: #333333;
      cursor: pointer;
    }

    /*!sc*/

    data-styled.g1025[id="sc-ch64hn-0"] {
      content: "hQRrrf,"
    }

    /*!sc*/

    .dUrtMr {
      font-size: 1.25rem;
      font-weight: bold;
    }

    /*!sc*/

    data-styled.g1027[id="sc-ch64hn-2"] {
      content: "dUrtMr,"
    }

    /*!sc*/

    .eRYUZn {
      font-size: 0.75rem;
      padding-left: 10px;
    }

    /*!sc*/

    data-styled.g1028[id="sc-ch64hn-3"] {
      content: "eRYUZn,"
    }

    /*!sc*/

    .iGmVTY {
      width: 14px;
      height: 14px;
      margin-top: 4px;
      margin-right: 4px;
      border-top: 1px solid #888888;
      border-left: 1px solid #888888;
      -webkit-transform: rotate(-135deg);
      -ms-transform: rotate(-135deg);
      transform: rotate(-135deg);
      float: right;
    }

    /*!sc*/

    data-styled.g1030[id="sc-ch64hn-5"] {
      content: "iGmVTY,"
    }

    /*!sc*/

    .julitQ {
      margin-bottom: 20px;
    }

    /*!sc*/

    data-styled.g1031[id="sc-1qr3oxa-0"] {
      content: "julitQ,"
    }

    /*!sc*/

    .bVxsuc {
      box-shadow: 0 2px 1px -1px rgba(0, 0, 0, 0.1);
      border-left: 3px solid #333333;
    }

    /*!sc*/

    data-styled.g1032[id="sc-1qr3oxa-1"] {
      content: "bVxsuc,"
    }

    /*!sc*/

    .gHwYDP {
      position: fixed;
      width: 100%;
      height: 100%;
      top: 0;
      left: 0;
      z-index: 30;
    }

    /*!sc*/

    data-styled.g1073[id="sc-76sbpw-0"] {
      content: "gHwYDP,"
    }

    /*!sc*/

    .dptKFv {
      display: none;
    }

    /*!sc*/

    data-styled.g1074[id="sc-76sbpw-1"] {
      content: "dptKFv,"
    }

    /*!sc*/

    .eJKepJ {
      position: fixed;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.7);
    }

    /*!sc*/

    data-styled.g1075[id="sc-76sbpw-2"] {
      content: "eJKepJ,"
    }

    /*!sc*/

    .eGWiUY {
      position: absolute;
      width: 540px;
      height: auto;
      margin: 0 auto;
      top: 50%;
      left: 0;
      right: 0;
      -webkit-transform: translateY(-50%);
      -ms-transform: translateY(-50%);
      transform: translateY(-50%);
    }

    /*!sc*/

    data-styled.g1076[id="sc-76sbpw-3"] {
      content: "eGWiUY,"
    }

    /*!sc*/

    .goPuEW {
      display: table;
      width: 100%;
      height: auto;
      opacity: 1;
      background-color: #FFFFFF;
    }

    /*!sc*/

    data-styled.g1077[id="sc-76sbpw-4"] {
      content: "goPuEW,"
    }

    /*!sc*/

    .coePZY {
      font-size: 13px;
      padding: 30px;
      color: #555;
    }

    /*!sc*/

    data-styled.g1078[id="sc-76sbpw-5"] {
      content: "coePZY,"
    }

    /*!sc*/

    .kERPNq {
      margin-top: 20px;
      text-align: center;
    }

    /*!sc*/

    data-styled.g1082[id="sc-76sbpw-9"] {
      content: "kERPNq,"
    }

    /*!sc*/

    .dWdObW {
      display: inline-block;
      box-sizing: content-box;
      min-width: 63px;
      line-height: 26px;
      min-height: 1em;
      padding: 0 5px;
      margin: -2px 0 0;
      text-align: center;
      vertical-align: middle;
      border-radius: 2px;
      white-space: nowrap;
      -webkit-appearance: none;
      font-size: 12px;
      font-weight: normal;
      border: 1px solid #CCCCCC;
      color: red;
      background-color: #ffffff;
      cursor: pointer;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
      margin-right: 10px;
    }

    /*!sc*/

    .hdTqfu {
      display: inline-block;
      box-sizing: content-box;
      min-width: 63px;
      line-height: 26px;
      min-height: 1em;
      padding: 0 5px;
      margin: -2px 0 0;
      text-align: center;
      vertical-align: middle;
      border-radius: 2px;
      white-space: nowrap;
      -webkit-appearance: none;
      font-size: 12px;
      font-weight: normal;
      border: 1px solid #0070cc;
      color: #ffffff;
      background-color: red;
      cursor: pointer;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
    }

    /*!sc*/

    data-styled.g1083[id="sc-76sbpw-10"] {
      content: "dWdObW,hdTqfu,"
    }

    /*!sc*/

    .clkOtx {
      width: 100%;
      font-size: 0.75rem;
    }

    /*!sc*/

    .clkOtx tbody>tr>td {
      height: 23px;
      vertical-align: top;
    }

    /*!sc*/

    .clkOtx tbody>tr>td:nth-child(1) {
      color: #777777;
    }

    /*!sc*/

    .clkOtx tbody>tr>td:nth-child(2) {
      text-align: right;
      font-weight: bold;
      color: #111111;
    }

    /*!sc*/

    .clkOtx tfoot {
      vertical-align: bottom;
      border-top: 1px solid #EEEEEE;
    }

    /*!sc*/

    .clkOtx tfoot>tr>td {
      height: 44px;
      padding-bottom: 2px;
    }

    /*!sc*/

    .clkOtx tfoot>tr>td:nth-child(1) {
      width: 120px;
      font-size: 1rem;
      font-weight: bold;
      color: rgba(0, 0, 0, 1);
    }

    /*!sc*/

    .clkOtx tfoot>tr>td:nth-child(2) {
      text-align: right;
    }

    /*!sc*/

    .clkOtx .link {
      max-width: 70px;
      color: red;
    }

    /*!sc*/

    .clkOtx .link span {
      cursor: pointer;
    }

    /*!sc*/

    data-styled.g1102[id="sc-qa1n54-0"] {
      content: "clkOtx,"
    }

    /*!sc*/

    .gzGHSo {
      font-size: 20px;
      font-weight: 700;
      margin-bottom: 25px;
    }

    /*!sc*/

    data-styled.g1111[id="sc-1ooz7v9-1"] {
      content: "gzGHSo,"
    }

    /*!sc*/

    .dUUdQF {
      width: 100%;
      color: #111111;
      font-size: 0.75rem;
    }

    /*!sc*/

    .dUUdQF td {
      height: 23px;
      min-width: 100px;
      vertical-align: top;
    }

    /*!sc*/

    .dUUdQF td:nth-child(2) {
      font-weight: 700;
    }

    /*!sc*/

    .dUUdQF td:nth-child(3) {
      text-align: right;
      color: red;
    }

    /*!sc*/

    .dUUdQF td:nth-child(3) span {
      cursor: pointer;
    }

    /*!sc*/

    data-styled.g1112[id="sc-1ooz7v9-2"] {
      content: "dUUdQF,"
    }

    /*!sc*/

    .iGQYjL {
      width: 100%;
      margin-bottom: 10px;
      border-collapse: collapse;
      table-layout: fixed;
      word-break: break-all;
    }

    /*!sc*/

    .iGQYjL>tbody>tr>td {
      padding: 20px;
      vertical-align: top;
    }

    /*!sc*/

    data-styled.g1113[id="sc-1vpz0ja-0"] {
      content: "iGQYjL,"
    }

    /*!sc*/

    .jvaBXc {
      border-right: 1px solid #DDDDDD;
    }

    /*!sc*/

    data-styled.g1114[id="sc-1vpz0ja-1"] {
      content: "jvaBXc,"
    }

    /*!sc*/

    .dvDgLA {
      border-left: 1px solid #DDDDDD;
    }

    /*!sc*/

    data-styled.g1115[id="sc-1vpz0ja-2"] {
      content: "dvDgLA,"
    }

    /*!sc*/

    .kKFgrF {
      font-size: 1.25rem;
      font-weight: bold;
      margin-bottom: 25px;
    }

    /*!sc*/

    data-styled.g1116[id="sc-1vpz0ja-3"] {
      content: "kKFgrF,"
    }

    /*!sc*/

    .iGbvMl {
      margin-top: 30px;
      margin-bottom: 10px;
      font-size: 24px;
      font-weight: 700;
      color: #333333;
    }

    /*!sc*/

    data-styled.g1118[id="sc-kz2veq-1"] {
      content: "iGbvMl,"
    }

    /*!sc*/

    .hnTLwu {
      width: 100%;
      height: 700px;
      padding: 40px;
      background-color: rgba(255, 255, 255, 1);
      position: absolute;
    }

    /*!sc*/

    data-styled.g1119[id="sc-ztsili-0"] {
      content: "hnTLwu,"
    }

    /*!sc*/
  </style>
      <script>
    function toggleClass() {
            var element = document.querySelector('.sc-18pc8pe-0');
            var button = document.getElementById('toggleButton');

            element.classList.toggle('hidden');

            if (button.innerHTML === '<img src="/GMQDisplay-master/static/images/" alt="product image">') {
                button.innerHTML = '<img src="(다른이미지경로.jpg)" alt="product image">';
            } else {
                button.innerHTML = '<img src="(이미지경로.jpg)" alt="product image">';
            }
        }
  </script>
</head>
<body>
	<!-- Google Tag Manager (noscript) -->
	<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NVX3V74"
	height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
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
					url: '../xhr/gnbCartList.jsp',
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
					url: "../xhr/loginCheck.jsp",
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
					url: "../xhr/checkReview.jsp",
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
					<img type="image/svg+xml" src="../static/images/common/logo_gmqd_black.png" alt="GMQ Display" style="width:130px; height:20px"/>
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
																<span class="pic-wrap" style="background: url('../static/images/explain/G32C4X_1.png') no-repeat top center / cover; background-color: #f6f6f6;">
																	<span class="pc-pic lozad"
																		data-background-image="../static/images/product/G32C4X_1.png"></span>
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
																<span class="pic-wrap" style="background: url('../static/images/product/27LGD4IPS_1.png') no-repeat top center / contain; background-color: #f6f6f6;">
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
																<span class="pic-wrap" style="background: url('../static/images/product/27UP850N_1.png') no-repeat top center / contain; background-color: #f6f6f6;">
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
																<span class="pic-wrap" style="background: url('../static/images/product/28MQ780_1.png') no-repeat top center / contain; background-color: #f6f6f6;">
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
																<span class="pic-wrap" style="background: url('../static/images/product/27G2SP_1.png') no-repeat top center / contain; background-color: #f6f6f6;">
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
																<img src="../static/images/explain/IP2742_1.png" style="position: absolute; bottom: -50px;" alt="쓰리윈즈 인터픽셀 게이밍 IPS 165 피벗 무결점" class="lozad">
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
							<a href="javascript:void(0);" id="link-search" class="link-search" data-omni="search"
								role="button">
								<i class="icon ico-large ico-zoom">검색</i>
							</a>
						</li>

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

		<script>
			var userAgent = navigator.userAgent.toUpperCase();
			if (userAgent.indexOf("SECAPP") > -1 || userAgent.indexOf("SECTEST") > -1) {
				$("#header").hide();
				$(".string-banner-wrap").hide();
			}

			//앱설치 유도 토스트 팝업 AA 태깅
			function appToastPopupTag(obj) {
				if (obj !== undefined) {
					tpTrack('click', $(obj).attr('data-omni'));
				}
			}

			function setCookieA(name, value, exp) {
				var date = new Date();
				date.setTime(date.getTime() + exp * 24 * 60 * 60 * 1000);
				document.cookie = name + '=' + value + ';expires=' + date.toUTCString() + ';path=/';
			}

			function getCookieA(key) {
				var result = null;
				var cookie = document.cookie.split(';');
				cookie.some(function (item) {
					//공백 제거
					item = item.replace(' ', '');
					var dic = item.split('=');
					if (key === dic[0]) {
						result = dic[1];
						return true;
					}
				});
				return result;
			}

			function doLogout() {
				try {
					if (window.secapp !== undefined && navigator.userAgent.toUpperCase().indexOf("SECAPP") > -1) {
						window.secapp.logout();
						var eventParam = {
							eventName: "App_logout"
							, attrModel: {
								service_id: 'SDC'
							}
						};
						window.secapp.customEvent(JSON.stringify(eventParam));
					} else {
						adbrix.logout();
					}
				} catch (exception) {

				}
				location.href = "/member/logout/";
			}

			function writableCommentM() {
				writableCommentSetC();
				location.href = '/mypage/review/indexMyReview/';

			}
			function writableCommentSetC() {
				var wcpc = $("#chknotsee").is(":checked");
				setCookieA("commentPopYN", "N", wcpc ? 7 : 1);
				closeLayer("popupInduceReview");
				setCookieA("commentPC", "N", 1);
			}

			var commentCheck = "N";

			function commentCheckAdd() {
				if (commentCheck == "Y") {
					var commentStr = "<li class='menu05' aria-hidden=''><a href='/mypage/review/indexMyReview/'>상품평 쓰기</a></li>";
					$("#floatingSticky").find(".menuGift").after(commentStr);
				} else {
					$("#floatingSticky").find(".menu05").remove();
				}
			}

			function writableComment() {
				var commentPopYN = getCookieA("commentPopYN");
				var locationUrl = window.location.href;

				$.ajax({
					url: "/xhr/review/loadWritableMyCommentList"
					, type: "POST"
					, success: function (data) {
						$(".review-produck-list").find("div").remove();
						$("#floatingSticky").find(".menu05").remove();
						var CpCondition = (commentPopYN != "N" && "N" == "N"
							&& (locationUrl == "https://dev-www.samsung.com/" || locationUrl == "https://stg-www.samsung.com/" || locationUrl == "https://www.samsung.com/"));

						if (data.resultYN == "N") {
							appToast();

						} else if (data.resultYN == "Y") {
							commentCheck = "Y";

							$.each(data.cmntList, function (index, result) {

								var str = "";

								str = "<div>";
								str += "<div class='prd-box'>";
								str += "<div class='prd-img'>";
								str += "<img src='" + result.imgPath + "'alt=''>";
								str += "</div>";
								str += "<div class='prd-title'>";
								str += "<strong class='prd-name'>" + result.goodsNm + "</strong>";
								str += "<span class='prd-number'>" + result.mdlCode + "</span>";
								str += "</div>";
								str += "</div>";
								//s : 5점 상품평 10개 미만인 경우 해당 영역 미출력 
								if (result.commentCnt >= 10) {
									str += "<div class='review-number'>";
									str += "<p><span>" + result.commentCnt + "명</span>의 고객이 이 상품에<br>평균 <span class='star'>별점 5점</span>을 줬어요!</p>";
									str += "</div>";
								}
								//e : 5점 상품평 10개 미만인 경우 해당 영역 미출력
								str += "</div>";

								$(".layer-induce-review .review-product-list").append(str);
							});

							// slick slide
							$(".layer-induce-review .review-product-list").slick(setSlide);

							CpCondition ? setTimeout(openLayer("popupInduceReview"), 500) : appToast();
							var commentCheckIt = setInterval(function () {
								if ($("#floatingSticky").find(".menu05").length) {
									clearInterval(commentCheckIt);
								} else {
									commentCheckAdd();
								}
							}, 1000);
						}
					}
				});
			}

			writableComment();

			var setSlide = {
				accessibility: true,
				slidesToShow: 1,
				slidesToScroll: 1,
				dots: true,
				adaptiveHeight: true,
				infinite: true,
				fade: true,
				centerMode: true,
				arrows: true,
				prevArrow: '<button type="button" class="slick-prev"><span>이전</span></button>',
				nextArrow: '<button type="button" class="slick-next"><span>다음</span></button>'
			};
		</script><!-- e : 머리글 영역 -->


		<!-- s : 통합검색 -->
		<script type="text/javascript">
			var searchInputManager = {
				isMobileDevice: function () {
					var that = this,
						winW = $(window).width();
					if (winW > 800) {
						return 'N';
					} else {
						return 'Y';
					}
				},
				init: function () {
					var that = searchInputManager;
					$.cookie.json = true;
					$.cookie.data = {
						SEARCH_HISTORY: 'sh-b2c',
						SEARCH_MAX_SIZE: 10,
						option: {
							expires: 30,
							path: '/'
						}
					};

					that.$appendingTarget = {
						searchHistory: $('#searchkeywordRecent ul.list'),
						popular: $('#searchkeywordPopular ul.list'),
						makeTime: $('#makeTime'),
						autoComplete: $('#searchAuto ul.list')
					};

					that.cookieName = $.cookie.data.SEARCH_HISTORY;
					that.isMobileYN = that.isMobileDevice();
				},
				searchHistoryTemplate: function (keyword) {
					return {
						keyword: keyword,
						date: searchDatetimestampToString(new Date())
					};
				},
				getKeywordList: function (cookieName) {
					var searchKeywordList = new Array()
						, dataList = $.cookie(cookieName).data;

					if (!dataList || '' == dataList || undefined == dataList) {
						return searchKeywordList;
					}

					$.each(dataList, function (idx, element) {
						searchKeywordList.push(element.keyword);
					});

					return searchKeywordList;
				},
				saveSearchHistory: function (keyword) {
					var that = searchInputManager
						, $cookie = $.cookie
						, cookieValue = $cookie(that.cookieName)
						, dataList = null;

					if (cookieValue == undefined) {
						dataList = [that.searchHistoryTemplate(keyword)];
					} else {
						if (cookieValue.length == 0) {
							dataList = [that.searchHistoryTemplate(keyword)];

						} else {
							dataList = cookieValue.data;

							if ($.inArray(keyword, that.getKeywordList(that.cookieName)) >= 0) {
								return;
							}

							if (dataList.length >= $cookie.data.SEARCH_MAX_SIZE) {
								dataList.splice(0, 1);
							}
							dataList.push(that.searchHistoryTemplate(keyword));
						}
					}

					$cookie(that.cookieName, { 'data': dataList }, $cookie.data.option);
				},
				getSearchHistory: function () {
					var cookieValue = $.cookie(searchInputManager.cookieName);

					if (undefined != cookieValue) {
						return cookieValue;
					}
				},
				getSearchDate: function (keyword) {
					var date = ''
						, that = searchInputManager
						, cookieValue = $.cookie(that.cookieName)
						, searchHistoryList = that.getSearchHistory();

					if ('' == searchHistoryList || searchHistoryList == undefined || cookieValue == undefined) {
						return date;
					}

					var dataList = cookieValue.data;

					var idx = -1;
					for (var i = 0; i < dataList.length; ++i) {
						var keywordInList = dataList[i].keyword;

						if (keywordInList != undefined) {
							if (keywordInList.toLocaleLowerCase() == keyword.toLocaleLowerCase()) {
								idx = i;
								break;
							}
						}
					}
					if (idx > -1) {
						date = dataList[idx].date;
					}

					return date;
				},
				drawSearchHistory: function () {
					var that = searchInputManager
						, $cookie = $.cookie
						, cookieValue = $cookie(that.cookieName);

					if (undefined == cookieValue) {
						return;
					} else if (cookieValue.length == 0) {
						return;
					}

					var dataList = cookieValue.data
						, template = '';

					for (var i = dataList.length - 1; i >= 0; i--) {
						var element = dataList[i], keyword = element.keyword;
						template += '<li class="item">';
						template += '<a href="javascript:void(0);" class="link">' + keyword + '</a>';
						template += '<button type="button" class="btn-delete delete" keyword="' + keyword + '" onclick="searchInputManager.clearSearchHistory(this)">';
						template += '<span class="blind">삭제</span>';
						template += '</button>';
						template += '</li>';
					}
					that.$appendingTarget.searchHistory.html(template);
					that.$appendingTarget.searchHistory.off('click').on('click', 'a', function (e) {
						that.getSearchResult($(e.target).text());
						//chat_open4($(e.target).text());
					});

				},
				clearSearchHistory: function (element) {
					var that = searchInputManager
						, $element = $(element)
						, $cookie = $.cookie;

					if ($element.hasClass('delete-all')) {
						$.removeCookie(that.cookieName, { path: $cookie.data.option.path });
						that.$appendingTarget.searchHistory.empty();

					} else if ($element.hasClass('delete')) {
						var selectedKeyword = $element.attr('keyword')
							, cookieValue = $cookie(that.cookieName)
							, dataList = cookieValue.data;

						var idx = -1;
						for (var i = 0; i < dataList.length; ++i) {
							var keyword = dataList[i].keyword;
							if (keyword == undefined) {
								keyword = 'undefined';
							}

							if (keyword == selectedKeyword) {
								idx = i;
								break;
							}
						}
						if (idx > -1) {
							dataList.splice(idx, 1);
							$cookie(that.cookieName, { 'data': dataList }, $cookie.data.option);

							$element.parent().remove();
						}
					}
				},
				callAjax: function (options) {
					$.ajax({
						url: options.url,
						type: options.type,
						data: options.data

					}).done(
						function (data, textStatus, jqXHR) {
							if (data.exCode != null && data.exCode !== "") {
								if (options.fail !== undefined) {
									options.fail();
								}
								let alertData = {
									title: "alert",
									content: data.exMsg
								};
								commonAlert(alertData);
								openLayer('commonAlert');
							} else {
								options.done(data);
							}
						}).fail(function (jqXHR, textStatus, errorThrown) {
							if (options.fail !== undefined) {
								options.fail();
							}
							if (jqXHR.status !== 0) {
								ajax.error(jqXHR.status, jqXHR.responseText);
							}
						}).always(function () {
						}).then(function (data, textStatus, jqXHR) {
						});
				},

				getRecommendKeyword: function (callback) {
					var that = searchInputManager;
					that.callAjax(
						{
							url: '/xhr/search/recommendkeyword/',
							type: 'GET',
							done: function (result) {
								that.recommendKeyword = result.recommendKeyword;

								if (callback != undefined) {
									callback();
								}
							}
						}
					);
				},
				setRecommendKeyword: function () {
					var that = searchInputManager;

					if (that.recommendKeyword == undefined) {
						that.getRecommendKeyword(that.setRecommendKeywordCallback);
						return;
					}
					that.setRecommendKeywordCallback();
				},

				setRecommendKeywordCallback: function () {
					var that = searchInputManager;
					//$('#unifiedInputSearch').attr('placeholder', that.recommendKeyword);
					$('.inp-placeholder').text(that.recommendKeyword);
				},

				getPopularKeyword: function () {
					var that = searchInputManager;
					that.callAjax(
						{
							url: '/xhr/search/popword/',
							type: 'POST',
							data: new wnAddonParamVo('', 'popword', 'D', 'B2C_SearchWord', 'json', ''),
							done: function (result) {
								var popwordResult = result.popwordResult;
								if (popwordResult.Data == undefined) {
									return;
								}

								var queryList = popwordResult.Data.Query
									, popularList = '';

								$.each(queryList, function (idx, element) {
									var order = idx + Number(1);
									popularList += '<li class="item">'
										+ '<span class="rank">' + order + '</span>'
										+ '<a href="javascript:void(0);" class="link">' + element.content + '</a>';
									if (element.updown == 'U') {
										popularList += '<span class="change arr-up"><span class="blind">순위상승</span></span>';
									} else if (element.updown == 'D') {
										popularList += '<span class="change arr-down"><span class="blind">순위하락</span></span>';
									} else if (element.updown == 'C') {
										popularList += '<span class="change arr-same"><span class="blind">순위유지</span></span>';
									}
									popularList += '</li>';
								});

								that.$appendingTarget.popular.off('click').on('click', 'a', function (e) {
									that.getSearchResult($(e.target).text());
									//chat_open4($(e.target).text());
								});
								that.$appendingTarget.popular.empty();
								that.$appendingTarget.makeTime.empty();

								that.$appendingTarget.popular.append(popularList);
								that.$appendingTarget.makeTime.append(popwordResult.Data.MakeTime + ' 기준');
							}
						}
					);
				},
				getSearchInputAutoComplete: function (keyword) {
					var that = searchInputManager;
					keyword = keyword.trim();

					that.callAjax(
						{
							url: '/xhr/search/autocom/',
							type: 'POST',
							data: new wnAddonParamVo(keyword, 'b2c', '', '', 'json', 'fw'),
							done: function (result) {
								var template = '';
								var autoCompleteResultList = result.autoCompleteResult;
								that.$appendingTarget.autoComplete.empty();

								if (autoCompleteResultList.length > 0 && autoCompleteResultList != undefined) {
									$.each(autoCompleteResultList, function (idx, element) {
										template += '<li class="item">';
										template += '<a href="javascript:void(0);" class="link" text="' + element.text + '">';
										template += (element.modified).replace(/\<!HS\>(.*)\<!HE\>/gi, "\<span class=\"key\"\>$1\</span\>");
										template += '</a>';
										template += '<span class="date">' + searchInputManager.getSearchDate(element.text) + '</span>';
										template += '</li>';
									});

									that.$appendingTarget.autoComplete.html(template);

									that.$appendingTarget.autoComplete.off('click').on('click', 'a', function (e) {
										if ($(e.target).attr('text') != undefined) {
											that.getSearchResult($(e.target).attr('text'));
											chat_open4($(e.target).attr('text'));
										} else {
											that.getSearchResult($(e.target).parent().attr('text'));
											chat_open4($(e.target).parent().attr('text'));
										}
									});

									$('.unified-search-layer.type-keyword').hide();
									$('.unified-search-layer.type-auto').show();

								} else {
									$('.unified-search-layer.type-auto').hide();
									if (keyword == '') {
										//$('#unifiedInputSearch').attr('placeholder', searchInputManager.recommendKeyword);
										$('.inp-placeholder').text(that.recommendKeyword);
										$('.unified-search-layer.type-keyword').show();
									}
								}
							}
						}
					)
				},

				getSearchResult: function (keyword, searchResultInputId, tab) {
					keyword = escapeHtml(keyword);

					var that = searchInputManager;
					keyword = keyword.trim();
					keyword = filterAcc(keyword); // 액세서리

					if (searchResultInputId != undefined) {
						that.searchResultInputId = searchResultInputId;
					}

					if (keyword == '') {
						var recommendKeyword = that.recommendKeyword;
						if (recommendKeyword == undefined) {
							that.getRecommendKeyword(that.getSearchResultNoKeywordCallback);
						}
						that.getSearchResultCallback(recommendKeyword);
						return;
					}
					that.getSearchResultCallback(keyword, tab);
				},
				getSearchResultNoKeywordCallback: function () {
					var that = searchInputManager
						, recommendKeyword = that.recommendKeyword
						, searchResultInputId = that.searchResultInputId;

					if (searchResultInputId != undefined) {
						$(searchResultInputId).val(recommendKeyword);
						$(searchResultInputId).attr('placeholder', recommendKeyword);
					}

					that.getSearchResultCallback(recommendKeyword);
				},
				getSearchResultCallback: function (keyword, tab) {
					var that = searchInputManager
						, isMobileYN = that.isMobileDevice();
					that.saveSearchHistory(keyword);
					ajax.call({
						url: '/xhr/search/keywordRedirect?keyword=' + encodeURIComponent(keyword),
						data: new WNSearchParamVo(keyword, '', '', '', '', '', '', '', '', '', '', '', '', 'b2c', isMobileYN),
						dataType: 'json',
						contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
						done: function (result) {
							//yhj
							$(".unified-search-input-wrap").removeClass("is-active");
							$("body").removeClass("is-pc is-mo");
							$(".unified-search-layer").hide();
							$("body").removeClass("fixed-scroll");
							$("#gnbmask").hide();
							$(".unified-search-input-wrap .inp").val("");
							$(".unified-search-input-wrap .btn-inp-clear").hide();
							$(".inp-placeholder").show();
							if (isSecApp() == "true") {
								window.secapp.showAndHideGnb('VISIBLE');
							}


							var keywordRedirect = result.keywordRedirect;

							if (keywordRedirect.totalCount > 0) {
								window.location.href = keywordRedirect.REDIRECT_URL;
								return;
							}

							if (typeof tab == "undefined" || tab == null || tab == "null") {
								tab = '';
							}

							var $form = document.createElement("form");
							$form.setAttribute('charset', 'UTF-8');
							$form.setAttribute('method', 'POST');
							$form.setAttribute('action', '/search/searchresult/' + tab + '?keyword=' + encodeURIComponent(keyword));

							var $input = document.createElement('input');
							$input.setAttribute('type', 'hidden');
							$input.setAttribute('name', 'isMobileYN');
							$input.setAttribute('value', searchInputManager.isMobileYN);
							$form.appendChild($input);
							document.body.appendChild($form);

							$form.submit();
						}
					});
				}
			}

			function filterAcc(keyword) {
				if ((keyword.indexOf("") > -1 || keyword.indexOf("") > -1) && (keyword.indexOf("액세서리") > -1 || keyword.indexOf("악세서리") > -1 || keyword.indexOf("엑세서리") > -1)) {
					keyword = "액세서리";
				}
				return keyword;
			}

			function escapeHtml(string) {
				return String(string).replace(/[&<>"'`=\/]/g, function (s) {
					return entityMap[s];
				});
			}
			var entityMap = { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;', '/': '&#x2F;', '`': '&#x60;', '=': '&#x3D;' };

			/* s: APP용 함수 */
			function isSecApp() {
				/* 20230104 변경*/
				if (device.isApp != true) {
					if (window.secapp == undefined && window.secapppopup == undefined) {
						return false;
					}
				}
				return true;
			}

			function once(func) {
				var flag
					, result;

				return function () {
					if (flag) {
						return result;
					}
					flag = true;
					return result = func.apply(this);
				}
			}

			
			var searchLinkforApp = once(function () {
				var that = searchInputManager;

				that.setRecommendKeyword();
				that.drawSearchHistory();
				that.getPopularKeyword();

			});

			function searchOpenforApp() { 
				searchLinkforApp();
				headerSearch.eventListener.uinifiedSearchOpen();
			}

			/* APP용 함수 */

			/* 닷컴 웹 검색시 챗봇 검색 연계 구현  */
			function chat_open4(chatbotKeyword) {
				var isMobile = false; // 모바일 여부
				var filter = "win16|win32|win64|mac|macintel"; // PC 환경

				// 모바일,태블릿 / PC 환경 구분 
				if (navigator.platform) {
					isMobile = filter.indexOf(navigator.platform.toLowerCase()) < 0
				}

				if (!isMobile) {
					var birthAge = null;
					var birthDate = $.cookie("birthDate_1_");

					if (birthDate != 0 && birthDate != null) {
						birthAge = checkAge(birthDate);
					}

					if (birthAge >= 14 || birthAge == 0 || birthAge == null) {
						var agepass = checkAgepass(birthAge);
						fcTrack('click', 'floating chat:chat online');

						var keyword = encodeURIComponent(chatbotKeyword);
						var popupX = (window.screen.width / 2) - (356 / 2);
						var popupY = (window.screen.height / 2) - (750 / 2);

						window.open('/chatbot/?keyword=' + keyword + '&agepass=' + agepass, '_chatbot4', 'status=no, height=750, width=356, left=' + popupX + ', top=' + popupY + ', screenX=' + popupX + ', screenY= ' + popupY);
					}
				}
			}
			/*  닷컴 웹 검색시 챗봇 검색 연계 구현   */

			/*  만 나이 구하는 함수 @param birthDate : 생년월일   */
			function checkAge(birthDate) {
				const today = new Date(); //현재날짜
				birthDate = (birthDate + "")

				var age = today.getFullYear() - Number(birthDate.slice(0, 4)); 	//나이
				var mon = (today.getMonth() + 1) - Number(birthDate.slice(4, 6));	//월
				//생일 안지났으면 -1
				if (mon < 0 || (mon === 0 && today.getDate() < Number(birthDate.slice(6, 8)))) {
					age = age - 1;
				}
				return age;
			}
			/*  만 나이 구하는 함수 @param birthDate : 생년월일 */

			/*  만 나이별로 agepass 구분값 설정 함수 @param birthAge : 만나이   14세 이상 : 'y'   로그인하지 않을경우 : 'u'    */
			function checkAgepass(birthAge) {
				var agepass = null;

				if (birthAge == 0 || birthAge == null) {
					agepass = "u";
				} else if (birthAge >= 14) {
					agepass = "y";
				}

				return agepass
			}
			/* 만 나이별로 agepass 구분값 설정 함수  */

			$(document).ready(function () {
				var that = searchInputManager;

				$('#link-search').on('click', function () {
					that.setRecommendKeyword();
					that.drawSearchHistory();
					that.getPopularKeyword();
				});

				$('#unifiedInputSearch').on('keyup', function (e) {
					var $target = $(e.target)
						, keyword = $target.val().replace(/\\/gi, '');
					$target.val(keyword);

					that.getSearchInputAutoComplete(keyword);
				});

				$('#unifiedInputSearch').on('click', function () { 
					$('.inp-placeholder').hide();
				});

				/*  닷컴 웹 검색시 챗봇 검색 연계 구현 */
				$('.chatbot-search').off('click').on('click', function () {
					let chatbotKeyword;
					if ($(this).attr('id') == 'unifiedSearchButton') {
						chatbotKeyword = $("#unifiedInputSearch").val();
					} else if ($(this).attr('id') == 'inputSearchButton') {
						chatbotKeyword = $("#inputSearch").val();
					}

					if ($(this).attr('id') == 'unifiedSearchButton') {
						if (chatbotKeyword == null || chatbotKeyword == "") {
							chatbotKeyword = that.recommendKeyword;
							chat_open4(chatbotKeyword);
						} else {
							chat_open4(chatbotKeyword);
						}
					} else {
						if (chatbotKeyword != null && chatbotKeyword != "") {
							chat_open4(chatbotKeyword);
						}
					}
				});
				/*  닷컴 웹 검색시 챗봇 검색 연계 구현  */

			});


		</script>
		<!-- s : 통합검색 -->
		<div class="unified-search-input-wrap">
			<div class="unified-search-input-inner">
				<div class="search-box">
					<label for="unifiedInputSearch" class="blind">통합 검색</label><!--  for 값 변경 -->
					<input type="text" id="unifiedInputSearch" class="inp"
						onfocus="headerSearch.eventListener.uinifiedSearchInp()"
						onkeydown="headerSearch.eventListener.uinifiedSearchChange()">
					<span class="inp-placeholder"></span><!--  추천검색어 추가 -->
					<button type="button" class="btn-inp-clear" title="삭제"><span
							class="blind">삭제</span></button><!--  삭제 버튼 추가-->
					<button type="button" class="btn-search" title="검색" id="unifiedSearchButton"
						onclick="javascript:searchInputManager.getSearchResult($('#unifiedInputSearch').val(), '#unifiedInputSearch')"><span
							class="blind">검색</span></button>
				</div>
			</div>

			<!--  검색레이어 : 최근, 인기-->
			<div class="unified-search-layer type-keyword" style="display:none">
				<div class="unified-search-layer-inner">

					<!--  감싸는 태그 unified-search-layer-inner 추가 -->
					<div class="layer-cont">
						<div class="cont-inner box-recent" id="searchkeywordRecent" role="tabpanel">
							<strong class="tit">최근 검색어</strong>
							<ul class="list">
							</ul>
							<div class="etc"><a href="javascript:void(0);" class="btn-delete delete-all"
									onclick="searchInputManager.clearSearchHistory(this)">최근 검색어 전체 삭제</a></div>
						</div>
						<div class="cont-inner box-popular" id="searchkeywordPopular" role="tabpanel">
							<strong class="tit">인기 검색어</strong>
							<ul class="list">
							</ul>
							<div class="etc" id="makeTime">
								<p class="date"></p>
							</div>
						</div>
					</div>
				</div><!--  감싸는 태그 unified-search-layer-inner의 닫는 태그 추가 -->
				<button type="button" class="btn-close-search"><span class="blind">검색 레이어
						닫기</span></button><!--  닫는 태그 추가--><!--  button type 변경-->
			</div>
			<!-- e : 검색레이어 : 최근, 인기-->

			<!-- s : 검색레이어 : 자동 완성-->
			<div class="unified-search-layer type-auto" style="display:none">
				<div class="unified-search-layer-inner"><!--  감싸는 태그 unified-search-layer-inner 추가 -->
					<div class="layer-cont" id="searchAuto">
						<ul class="list">
						</ul>
					</div>
				</div><!--  감싸는 태그 unified-search-layer-inner의 닫는 태그 추가 -->
				<button type="button" class="btn-close-search"><span class="blind">검색 레이어
						닫기</span></button><!--  닫는 태그 추가--><!--  button type 변경-->
			</div>
			<!--  검색레이어 : 자동 완성-->

			<button type="button" class="btn-close-search"><span class="blind">검색 레이어
					닫기</span></button><!--  button type 변경-->
		</div>
		<!--  통합검색 --><!--  통합검색 -->

		<!-- s : 본문 영역 -->
		<div id="container" class=''>

			<!--  페이지 로케이션 영역 -->
			<script type="text/javascript">
				getDispPathByUrl();

				function getDispPathByUrl() {

					let stId = "1";
					let reqUri = "/monitors/gaming-monitors/";
					reqUri = reqUri.replace("/", "");
					if (reqUri.length == 0) return;

					let tmp = "";

					if ("" === "Y") return;

					if (reqUri.indexOf('homefitness') > -1) {
						return;
					}

					$.ajax({
						url: "/xhr/display/getGnbByUrl"
						, type: "POST"
						, data: { stId: stId, linkUrl: reqUri }
						, success: function (data) {
							list = data.list;
							if (list == null) return;

							$.each(list, function (idx, obj) {
								if (obj.linkUrl.length > 0) {
									tmp += '<a href="/' + obj.linkUrl + '">' + obj.dispClsfNm + '</a>';
								} else if (obj.dispClsfNm != obj.upDispClsfNm) {	//동일명칭 Depth Skip 2020.09.14 YJU
									tmp += "<span>" + obj.dispClsfNm + "</span>";
								}
							});

							if (tmp == '') return;
							let html = "";
							html += "<div class=\"pg-location-inner locationDiv\">";
							html += "<a href='/'>HOME</a>";
							html += tmp;
							html += "</div>";
							$(".pg-location").html(html);
						}
					});
				}
			</script>

			<div class="pg-location">
			</div><!-- e : 페이지 로케이션 영역 -->

			<!-- s : 최근 본 제품 -->
			<div id='latestItemLayer' class='layer-pop layer-normal floatingStyle'>
				<div class='layer-header'>
					<h2>최근 본 제품</h2>
				</div>
				<button type='button' class='pop-close' onclick="closePop(latestItemLayer)"
					data-focus-next="latestItemLayer"><span class='blind'>최근 본 제품 닫기</span></button>
				<div class="LatestItm-result">
					<p class="result-tit">
						<span>검색 결과</span><strong class="num">0</strong> 개
					</p>
					<button type="button" class="btn btn-d btn-allListClear" onclick="deleteRecentGoods('Y')"
						data-st-path="/" data-focus-next="latestItemLayer">전체삭제</button>
				</div>
				<div class="caution-note">※ 최근 본 제품은 7일간 보관됩니다.</div>
			</div><!-- e : 최근 본 제품 -->

			<link rel="stylesheet" href="./static/css/mig/page.css" type="text/css">
			<link rel="stylesheet" href="./static/css/mig/sec.css" type="text/css">
<%
request.setCharacterEncoding("utf-8");

String id = (String)session.getAttribute("sid");

String order_id = "";
String order_date = "";
String order_user_name = "";
String order_delivery_address = "";
String order_delivery_comment = "";
int total = 0;

DecimalFormat df = new DecimalFormat("###,###");

String db_url = "jdbc:mysql://localhost:3306/gpqd";
String db_id = "root";
String db_password = "1234";

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(db_url, db_id, db_password);

try {
	String sql = "SELECT * FROM orderInfo WHERE userID=? ORDER BY order_id DESC LIMIT 1";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	ResultSet rs = pstmt.executeQuery();
	if (rs.next()) {
		order_id = rs.getString("order_id");
		order_date = rs.getString("order_date");
		order_user_name = rs.getString("order_user_name");
		order_delivery_address = rs.getString("order_delivery_address");
		order_delivery_comment = rs.getString("order_delivery_comment");

		String sql2 = "SELECT * FROM orderItem WHERE order_id=?";
		PreparedStatement pstmt2 = con.prepareStatement(sql2);
		pstmt2.setString(1, rs.getString("order_id"));
		ResultSet rs2 = pstmt2.executeQuery();

		while(rs2.next()) {
			String sql3 = "SELECT * FROM cart WHERE Mno=? AND userID=?";
			PreparedStatement pstmt3 = con.prepareStatement(sql3);
			pstmt3.setString(1, rs2.getString("Mno"));
			pstmt3.setString(2, id);
			ResultSet rs3 = pstmt3.executeQuery();

			if(rs3.next()) {
				String sql4 = "DELETE FROM cart WHERE userID=? AND Mno=?";
				PreparedStatement pstmt4 = con.prepareStatement(sql4);
				pstmt4.setString(1, rs3.getString("userID"));
				pstmt4.setString(2, rs3.getString("Mno"));
				pstmt4.executeUpdate();
			}
		}
	}
%>
    <section id="contents" class="contents">
      <div class="__next-wrap">
        <div id="__next" data-reactroot="">
          <style>
            #container {
              background-color: #F0F0F0;
            }
          </style>
          <div class="sc-ztsili-0 hnTLwu">
            <div class="sc-zlsu1d-0 sc-wp5isd-0 gAsjwR kQvlGP">
              <span class="sc-jl7hjb-0 sc-wp5isd-1 dgNrpP dntWFS">주문완료</span>
            </div>
            <div class="sc-lsrlw6-0 kHdGTr">
              <span class="i18n-wrapper"> 
                <strong>주문이 완료</strong> 되었습니다. 감사합니다! 
              </span>
            </div>
            <div class="sc-kz2veq-0 bbZhll" onclick="toggleClass()">
              <div class="sc-kz2veq-1 iGbvMl">상품배송 정보</div>
              <div class="sc-1qr3oxa-0 julitQ">
                  <div class="sc-1qr3oxa-1 bVxsuc">
                      <div class="sc-ch64hn-0 hQRrrf">
                          <span class="sc-ch64hn-2 dUrtMr"><%=order_date%></span>
                          <span class="sc-ch64hn-3 eRYUZn">판매자: GMQDisplay</span>
                          <div class="sc-ch64hn-5 iGmVTY"></div>
                          <div class="sc-18pc8pe-0 iuCGcW hidden">
						  	<%
			  				String sql5 = "SELECT * FROM orderItem WHERE order_id=?";
							PreparedStatement pstmt5 = con.prepareStatement(sql5);
							pstmt5.setString(1, order_id);
							ResultSet rs5 = pstmt5.executeQuery();

							while (rs5.next()) {
								String Mno = rs5.getString("Mno");
								int count = rs5.getInt("item_count");

								String sql6 = "SELECT * FROM product WHERE Mno=?";
								PreparedStatement pstmt6 = con.prepareStatement(sql6);
								pstmt6.setString(1, Mno);
								ResultSet rs6 = pstmt6.executeQuery();

								if(rs6.next()) {
									int Msale = rs6.getInt("Msale");
									int total_Msale = Msale * count;
									total += total_Msale;
							%>
                              <a class="sc-18pc8pe-1 eQfPNh float-left" href="(이미지경로.jpg)" target="_blank">
                                  <img class="sc-18pc8pe-2 daJtqk" loading="lazy" src="/GMQDisplay-master/static/images/product/<%=Mno%>_1.png" alt="product image" style="width: 100px; display: inline-block">
                              </a>
                              <div style="display: inline-block">
                                  <a href="(이미지경로.jpg)" target="_blank" class="sc-18pc8pe-3 gGAwML"><%=Mno%></a>
                                  <div class="sc-18pc8pe-5 pLEoM">
                                      <span class="sc-18pc8pe-9 fFYOeI"><%=df.format(Msale)%></span> 원
                                  </div>
                                  <div class="sc-18pc8pe-8 dCzZgT">수량: <%=count%> 개</div>
                              </div><br><br>
							<%
								}
							}
							%>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
            <table class="sc-1vpz0ja-0 iGQYjL">
              <tbody>
                <tr>
                  <td class="sc-1vpz0ja-1 jvaBXc">
                    <div class="sc-1ooz7v9-0 gdmyEn">
                      <div class="sc-1ooz7v9-1 gzGHSo">받는사람 정보</div>
                      <table class="sc-1ooz7v9-2 dUUdQF">
                        <colgroup>
                          <col width="80" />
                          <col />
                          <col width="70" />
                        </colgroup>
                        <tbody>
                          <tr>
                            <td>받는사람</td>
                            <td><%=order_user_name%></td>
                            <td>
                            </td>
                          </tr>
                          <tr>
                            <td>받는주소</td>
                            <td>
                              <%=order_delivery_address%>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                          </tr>
                          <tr>
                            <td>배송요청사항</td>
                            <td>
                              <span><%=order_delivery_comment%></span>
                            </td>
                            <td>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </td>
                  <td class="sc-1vpz0ja-2 dvDgLA">
                    <div class="sc-1vpz0ja-3 kKFgrF">결제 정보</div>
                    <table class="sc-qa1n54-0 clkOtx">
                      <colgroup>
                        <col width="100" />
                        <col />
                      </colgroup>
                      <tbody>
                        <tr>
                          <td>주문금액</td>
                          <td><%=df.format(total)%> 원</td>
                        </tr>
                        <tr>
                          <td>배송비</td>
                          <td>
                            0 원
                          </td>
                        </tr>
                      </tbody>
                      <tfoot>
                        <tr>
                          <td>총 결제금액</td>
                          <td>
                            <span style="font-size:10px;color:#777777;margin-right:3px">카카오페이
                              / 일시불 </span>
                            <span style="font-size:20px;color:#CB1400;font-weight:700"><%=df.format(total)%></span>
                            <span style="font-size:15px;color:#CB1400">원</span>
                          </td>
                        </tr>
                      </tfoot>
                    </table>
                  </td>
                </tr>
              </tbody>
            </table>
            <div class="sc-wh3cod-0 sNTur">
              <button class="sc-1vm0jpx-0 sc-1vm0jpx-2 sc-wh3cod-1 gWgVCb iqKTcw hmSagB" onclick="location.href = '/GMQDisplay-master/mypage/myinfo.jsp'">주문 상세보기</button>
              <button class="sc-1vm0jpx-4 sc-wh3cod-2 dRiHfk gQBFoi" onclick="location.href = '/GMQDisplay-master/monitors.html'">쇼핑 계속하기</button>
            </div>
          </div>
          <div class="sc-76sbpw-0 sc-76sbpw-1 gHwYDP dptKFv">
            <div class="sc-76sbpw-2 eJKepJ"></div>
            <div width="" class="sc-76sbpw-3 eGWiUY">
              <div class="sc-76sbpw-4 goPuEW">
                <div class="sc-76sbpw-5 coePZY">
                  <div class="sc-76sbpw-9 kERPNq">
                    <button class="sc-76sbpw-10 dWdObW">취소</button>
                    <button class="sc-76sbpw-10 hdTqfu">확인</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div style="display:contents"></div>
          <div style="display:contents"></div>
          <div style="display:contents"></div>
          <div style="display:contents"></div>
        </div>
      </div>
    </section>
<%
} catch (Exception e) {
	out.print(e);
}
%>
	<script src="/resources/kr/20230509163421/_next/static/chunks/polyfills-5cd94c89d3acac5f.js" nomodule=""></script>
    <script id="beforeScript">
      if (!window.mcTiming) {
        window.mcTiming = {};
      }
      window.mcTiming["beforeScript"] = new Date().getTime();
    </script>












										<!-- e : Feature full-bleed -->
										<style>
											.emoji-btn {
												overflow: hidden;
												position: absolute;
												top: 0;
												left: 100px;
												z-index: 2;
												transform: translateY(-100%);
											}

											.emoji-btn img {
												width: 64px;
												height: 64px;
												transform: translateY(50%);
												transition: transform 300ms;
												will-change: transform;
											}

											.emoji-btn:hover img {
												transform: translateY(20%);
											}

											.emoji-toggle-btn {
												position: absolute;
												top: -10px;
												right: 50px;
												z-index: 1;
												width: 84px;
												height: 36px;
												background: url(https://images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/switch-off.png) no-repeat center / contain;
												transform: translateY(-100%);
											}

											.emoji-toggle-btn.active {
												background-image: url(https://images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/switch-on.png);
											}

											.emoji-canvas {
												position: fixed;
												top: 0;
												left: 0;
												z-index: 10000;
												width: 100%;
												height: 100%;
												pointer-events: none;
											}

											@media (max-width: 1440px) {
												.emoji-btn {
													left: 6.9444vw;
												}

												.emoji-btn img {
													width: 4.4444vw;
													height: 4.4444vw;
												}

												.emoji-toggle-btn {
													top: -0.6944vw;
													right: 3.4722vw;
													width: 5.8333vw;
													height: 2.5000vw;
												}
											}

											@media (max-width: 800px) {
												.emoji-btn {
													left: 6.9444vw;
												}

												.emoji-btn img {
													width: 8.8889vw;
													height: 8.8889vw;
												}

												.emoji-toggle-btn {
													top: -1.3888vw;
													right: 6.9444vw;
													width: 11.6667vw;
													height: 5.0000vw;
												}
											}
										</style>

										<script>
											$('[data-cptnm="pcd:motinors:gaming_monitors"]').eq(1).css('overflow', 'inherit');
											let emojiWrap = $('[data-cptnm="pcd:motinors:gaming_monitors"]').eq(1).find('.slider-carousel-visual');
											emojiEasteregg(emojiWrap);

											function emojiEasteregg(dataCptnm) {
												var emoji = {
													container: {
														install: $(dataCptnm),
													},
													sprite: {
														maxCount: 175,
														items: [],
													},
													image: {
														sources: [
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f340.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f381.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f388.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f389.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f3b5.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f497.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f600.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f607.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f60e.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f618.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f642.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f917.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f920.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f929.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f92a.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f92b.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f92d.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f973.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1fa75.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1fa77.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1fae0.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1faf6.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u2728.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u2764.png?$ORIGIN_JPG$',
														],
														items: [],
														triggerSources: [
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f600.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f607.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f60e.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f618.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f642.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f917.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f920.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f929.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f92a.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f92b.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f92d.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1f973.png?$ORIGIN_JPG$',
															'//images.samsung.com/kdp/static/pcd/common/easter_egg/emoji/u1fae0.png?$ORIGIN_JPG$',
														],
														triggerItems: [],
														size: 512,
													},
													elements: {},
													state: {
														resizeDelayId: null,
													}
												};

												// for test
												console.log = console.info.bind(console);

												$(window).on('load', function () {
													for (var i = 0; i < emoji.image.sources.length; i++) {
														var source = emoji.image.sources[i];
														var image = new Image;
														image.src = source;
														image.addEventListener('load', function () {
															if (emoji.state.enabled) {
																return;
															}

															var notLoadedImage = emoji.image.items.find(function (emojiImage) {
																return !emojiImage.complete;
															});

															if (notLoadedImage === void 0) {
																enableAnimate();
															}
														}, { once: true });

														emoji.image.items.push(image);
													}
													for (var i = 0; i < emoji.image.triggerSources.length; i++) {
														var triggerSource = emoji.image.triggerSources[i];
														var index = emoji.image.sources.indexOf(triggerSource);

														if (index > -1) {
															emoji.image.triggerItems.push(emoji.image.items[index]);
														}
													}
												});


												function disableAnimate() {
													if (!emoji.state.enabled) {
														return;
													}

													emoji.elements.btn.remove();
													emoji.elements.canvas.remove();

													emoji.elements.toggleBtn.removeClass('active');

													if (emoji.state.frameId) {
														cancelAnimationFrame(emoji.state.frameId);
														delete emoji.state.frameId;
													}

													if (emoji.state.initFrameId) {
														clearTimeout(emoji.state.initFrameId);
														delete emoji.state.initFrameId;
													}

													if (emoji.state.hiddenFrameId) {
														clearTimeout(emoji.state.hiddenFrameId);
														delete emoji.state.hiddenFrameId;
													}

													emoji.state = {};
													emoji.sprite.items = [];

													emoji.state.enabled = false;

													emoji.state.disableFrameId = setTimeout(function () {
														enableAnimate();
													}, 300);
												}

												function trigger() {
													if (emoji.state.triggered) {
														return;
													}

													var canvas = $('<canvas class="emoji-canvas">Not supported</canvas>');

													emoji.elements.canvas = canvas;

													emoji.state.triggered = true;

													var image = emoji.elements.btn.find('img');
													var rotate = 360 * 2;
													image.css({ 'transform': 'translateY(0%) rotate(' + rotate + 'deg)' });

													emoji.elements.toggleBtn.addClass('active');
													emoji.state.initFrameId = setTimeout(function () {
														emoji.elements.btn.before(canvas);

														canvas.attr('width', canvas.width());
														canvas.attr('height', canvas.height());

														var emojiBtn = emoji.elements.btn;
														var emojiSize = emojiBtn.width();
														var emojiOffset = emojiBtn.offset();

														emoji.state.centerX = emojiOffset.left - window.scrollX + emojiSize / 2;
														emoji.state.centerY = emojiOffset.top - window.scrollY + emojiSize / 2;

														var spriteIndex = Math.floor(Math.random() * 2);

														for (var i = 0; i < emoji.sprite.maxCount; i++) {
															emoji.sprite.items.push(new Sprite(i));
														}

														emoji.state.time = performance.now();
														emoji.state.frameId = requestAnimationFrame(draw);
													}, 250);

													emoji.state.hiddenFrameId = setTimeout(function () {
														emoji.elements.btn.css({ 'visibility': 'hidden' });
													}, 300);
												}

												function toggleTrigger() {
													if (emoji.state.triggered) {
														if (emoji.state.frameId) {
															disableAnimate();
														}
													} else {
														if (emoji.state.enabled) {
															trigger();
														}
													}
												}

												// 1안: 팡! 터지는 이모지
												function Sprite() {
													this.init = function () {
														this.imageIndex = Math.floor(Math.random() * emoji.image.items.length);
														this.disabled = false;

														this.direction = Math.random() * 180;
														this.distance = Math.random() * 30 + 1;
														this.speed = 1.70;

														this.x = emoji.state.centerX;
														this.y = emoji.state.centerY;

														this.gravity = -(this.distance * 0.035);
														this.scale = Math.random() * 0.5 + 0.75;
														this.rotate = Math.random() * 360;

														this.velocity = {
															gravity: 0.1,
															scale: Math.random() * 0.025,
															rotate: (Math.abs(this.direction - 90) * 0.025) * (this.distance * 0.45) * (this.direction > 90 ? -1 : 1),
														};
													}

													this.draw = function (context) {
														if (!this.disabled) {
															var image = emoji.image.items[this.imageIndex];
															var imageSize = emoji.elements.btn.width() * this.scale;

															var drawX = -imageSize / 2;
															var drawY = -imageSize / 2;

															context.translate(this.x, this.y);
															context.rotate(Math.PI / 180 * this.rotate);
															context.drawImage(image, drawX, drawY, imageSize, imageSize);
															context.setTransform(1, 0, 0, 1, 0, 0);

															this.update();
														}
													}

													this.update = function () {
														this.x += (Math.cos(Math.PI / 180 * this.direction) * this.distance) * this.speed;
														this.y += (Math.sin(Math.PI / 180 * this.direction) * -this.distance + this.gravity) * this.speed;
														this.gravity += this.velocity.gravity * this.speed;
														this.velocity.gravity += 0.0075 * this.speed;
														this.scale += this.velocity.scale * this.speed;
														this.rotate += this.velocity.rotate * this.speed;

														var imageSize = emoji.elements.btn.width() * this.scale;
														if (this.y - imageSize >= $(window).height()
															|| this.x + imageSize < 0
															|| this.x - imageSize >= $(window).width()) {
															// console.log(this.y - imageSize >= $(window).height()
															// 			, this.x - imageSize < 0
															// 			, this.x + imageSize >= $(window).width());
															this.disabled = true;
														}
													}

													this.init();

													return this;
												}

												function draw(time) {
													var canvas = emoji.elements.canvas;
													var context = canvas[0].getContext('2d');

													context.clearRect(0, 0, canvas.width(), canvas.height());

													var duration = Math.max(0, time - emoji.state.time);
													for (var i = 0; i < emoji.sprite.items.length; i++) {
														var sprite = emoji.sprite.items[i];
														sprite.draw(context, duration);
													}

													var notFinished = emoji.sprite.items.find(function (item) {
														return !item.disabled;
													});
													if (notFinished) {
														emoji.state.frameId = requestAnimationFrame(draw);
													} else {
														disableAnimate();
													}
												}

												function handleResize() {
													if (emoji.state.resizeDelayId) {
														clearTimeout(emoji.state.resizeDelayId);
													}

													emoji.state.resizeDelayId = setTimeout(function () {
														_handleResize(true);

														emoji.state.resizeDelayId = null;
													}, 100);

													_handleResize(true);
												}
												function handleResizeInstall() {
													if (emoji.state.resizeDelayId) {
														clearTimeout(emoji.state.resizeDelayId);
													}

													emoji.state.resizeDelayId = setTimeout(function () {
														_handleResize();

														emoji.state.resizeDelayId = null;
													}, 100);

													_handleResize();
												}
												function _handleResize(disable) {
													if (emoji.state.enabled) {
														var emojiBtn = emoji.elements.btn;

														var containerOffset = emojiBtn.parent().offset();
														var installContainerOffset = emoji.container.install.offset();
														var emojiSize = emojiBtn.height();

														if (emoji.state.triggered) {
															if (disable) {
																disableAnimate();
															} else {
																var canvas = emoji.elements.canvas;

																canvas.removeAttr('width');
																canvas.removeAttr('height');

																canvas.attr('width', canvas.width());
																canvas.attr('height', canvas.height());
															}
														}
													}
												}

												window.addEventListener('resize', handleResize);
												window.addEventListener('scroll', handleResizeInstall);
												document.documentElement.addEventListener('keydown', function (event) {
													if (event.keyCode === 27) { // ESC
														if (emoji.state.frameId) {
															disableAnimate();
														}
													}
												});
											}
										</script><!-- s : compo Script -->

										<!-- e : compo Script -->
									</div>
									<!-- 레이어 팝업 모음 -------------------------------------------------------------------------------------------------------------------------------------------------------------------->
									<!-- s : 공통 팝업(alert)  -->
									<div class="layer-pop layer-default alert" id="commonAlert" tabindex="0"
										data-popup-layer="commonAlert" data-focus="commonAlert">
										<div class="layer-header blind">
											<h2></h2>
										</div>
										<div class="layer-content">
											<p style="word-break:keep-all;"></p>
											<div class="btn-box">
												<a href="javascript:void(0)" onclick=""
													class="btn btn-d btn-type2">확인</a>
											</div>
										</div>
									</div>
									<!-- e : 공통 팝업(alert)  -->
									<!-- s : 공통 팝업(confirm)  -->
									<div class="layer-pop layer-default" id="commonConfirm" tabindex="0"
										data-popup-layer="commonConfirm" data-focus="commonConfirm">
										<div class="layer-header blind">
											<h2></h2>
										</div>
										<div class="layer-content">
											<p></p>
											<div class="btn-box double">
												<!-- 버튼 두개시 클래스 double 추가 -->
												<a href="javascript:void(0)"
													class="btn btn-d btn-type1 accessibility-pop-close"
													id="commonConfirmCancelBtn"
													onclick="closeLayer('commonConfirm');">취소</a>
												<a href="javascript:void(0)" class="btn btn-d btn-type2"
													id="commonConfirmOkBtn">확인</a>
											</div>
										</div>
										<button type="button" class="pop-close accessibility-pop-close"
											id="closeCommonConfirmBtn" name="closeCommonConfirmBtn"
											data-focus-next="commonConfirm">팝업닫기</button>
									</div>
									<!-- e : 공통 팝업(confirm)  -->
									<!-- s : 공통 팝업(confirm2)  -->
									<div class="layer-pop layer-default" id="commonConfirm2" tabindex="0"
										data-popup-layer="commonConfirm2" data-focus="commonConfirm2">
										<div class="layer-header blind">
											<h2></h2>
										</div>
										<div class="layer-content">
											<p></p>
											<div class="btn-box double">
												<!-- 버튼 두개시 클래스 double 추가 -->
												<a href="javascript:void(0)"
													class="btn btn-d btn-type1 accessibility-pop-close"
													id="commonConfirmCancelBtn2"
													onclick="closeLayer('commonConfirm2');">취소</a>
												<a href="javascript:void(0)" class="btn btn-d btn-type2"
													id="commonConfirmOkBtn2">확인</a>
											</div>
										</div>
									</div>
									<!-- e : 공통 팝업(confirm2)  -->
								</div>
								<!-- e : 본문 영역 -->

								<!-- 플로팅 메뉴 -->
								<!-- s : 220615 웹 접근성 수정 : css 삽입 -->
								<style>
									/* s : num_5 */
									.floating-sticky .menu-list .menu01 a {
										display: none;
									}

									.floating-sticky .menu-list .menu02 a {
										display: none;
									}

									.floating-sticky .menu-list .menu03 a {
										display: none;
									}

									.floating-sticky .menu-list .on .menu01 a {
										display: flex;
									}

									.floating-sticky .menu-list .on .menu02 a {
										display: flex;
									}

									.floating-sticky .menu-list .on .menu03 a {
										display: flex;
									}

									/* e : num_5 */
								</style>
								<!-- e : 220615 수정 -->

								<div id="floatingSticky" class="floating-sticky">
									<!-- <div class="menu-list">
			<div class="inner">
				<a href="#" class="btn-floating" onclick="floating_open();"><span>메뉴 보기</span></a>
				<ul>
					<li class="menu01" aria-hidden=""><a href="javascript:chat_open();">챗봇 채팅하기</a></li>
					<li class="menu02" aria-hidden=""><a href="javascript:chat_open2();">구매 상담사 채팅하기</a></li>
					<li class="menu03" aria-hidden="true" style="display:none;"><a href="./customer/reservationstore/index%EF%B9%96ref=floating%EA%A4%B7.html" onclick="chat_open3();">매장 방문 예약하기</a></li>
					<li class="menuGift"><a href="javascript:gift_open();" data-omni="float chat:event gift">선물하기</a></li>
				</ul>
			</div>
		</div> -->
									<button type="button" class="btn-gotop">
										<span>위로</span>
									</button>
								</div>
								<script>
									floatSticky();

									function firstRecentGoods() {

										$.ajax({
											url: "/xhr/goods/getFirstRecentGoods"
											, type: "POST"
											, success: function (result) {
												var recentGoodsData = JSON.parse(result);

												if (recentGoodsData.recentYn === "Y") {
													$("floatingSticky").find(".menu04").remove();
													var html = "";
													html += '<li class="menu04">'
													html += '<a href="#" id = "btn-rcntgoods-floating" type="button" onclick="showLatestItem(self,\'latestItemLayer\'); getRecentGoods(); return false" data-st-path ="' + recentGoodsData.stContextPath + '"  data-popup-target="latestItemLayer" >'
													html += '<span> <img src="' + recentGoodsData.recentImgPath + '?$128_128_PNG$" alt="' + recentGoodsData.recentGoodsNm + '"> 최근 본 제품 (' + recentGoodsData.recentGoodsLength + ')</span>'
													html += '</a>'
													html += '</li>'

													$("#floatingSticky").find("ul").append(html);
												}
											}
										});
									}

									if ("N" === "N") {
										firstRecentGoods();
									}
									if (device.agent.indexOf('secapp') >= 0 || device.agent.indexOf('sectest') >= 0) {
										if ("N" === "N") {
											$("#floatingSticky").find(".menuAr").remove();
											var html = "";
											html += '<li class="menuAr">';
											html += '<a href="javascript:window.secapp.goToARService(\'\',\'\');">';
											html += 'AR로 제품보기';
											html += '</a>';
											html += '</li>';
											$("#floatingSticky").find("ul").prepend(html);
										}
									} else {
										$("#floatingSticky").find(".menuAr").remove();
									}
								</script>
								<!-- //플로팅 메뉴 -->
								<!-- s : 바닥글 영역 - b2c -->
								<script type="text/javascript">
									function showSafety() {
										$(".dropDown-content .subDesc").hide();
										$(".dropDown-content .dropButton").hide();

										$(".dropDown-content .dropcontent").show();
									}

									// 약관 변경
									$(document).on("click", "#dropClauseList01 .droplist-item", function (e) {
										var id = $(this).attr("id");

										if (id == "optServiceClause03") {
											location.href = "/membership/terms/";
										}
									});

									function openPrivacy() {
										var agent = navigator.userAgent.toLowerCase();

										if (((navigator.appName === 'Netscape' && agent.indexOf('trident') !== -1) || (agent.indexOf("msie") !== -1))) { // ie
											window.open("https://www.eprivacy.or.kr/front/certifiedSiteMark/certifiedSiteMarkPopup.do?certCmd=E&certNum=2023-E-R002", "popup", "width=650, height=900, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no");
										} else {
											window.open("https://www.eprivacy.or.kr/front/certifiedSiteMark/certifiedSiteMarkPopup.do?certCmd=E&certNum=2023-E-R002", "popup", "width=550,height=750");
										}
									}

									//협력회사 사이버 신문고(새창)
									function openCyberVoc() {
										var agent = navigator.userAgent.toLowerCase();
										if (((navigator.appName === 'Netscape' && agent.indexOf('trident') !== -1) || (agent.indexOf("msie") !== -1))) { // ie
											window.open("https://www.secbuy.com/irj/servlet/prt/portal/prtroot/com.sec.gsrm.com.cybervoc.BoardComponent?submissionId=introductionGuest&boardId=E0009&entrance=samsung.com", "popup", "width=830,height=600, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no");
										} else {
											window.open("https://www.secbuy.com/irj/servlet/prt/portal/prtroot/com.sec.gsrm.com.cybervoc.BoardComponent?submissionId=introductionGuest&boardId=E0009&entrance=samsung.com", "popup", "width=830,height=600");
										}
									}

								</script>
								<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
								<script type="text/javascript">
									if (!wcs_add) var wcs_add = {};
									wcs_add["wa"] = "13bc3440ce4191";
									if (window.wcs) {
										wcs_do();
									}
								</script>

							<footer id="footer" class="footer_b2c">
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
													<h3>
														<a href="javascript:void(0);">추천 케어</a>
													</h3>

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
													<li><a href="./info/sitemap/index.html"
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
																href="./membership/terms/index.html">GMQDisplay멤버십
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
										<img class="pc-ver" src="./static/images/common/WA-2022.jpg"
											alt="웹접근성 우수사이트 인증서">
										<img class="mo-ver" src="./static/images/common/WA-2022-mo.jpg"
											alt="웹접근성 우수사이트 인증서">
									</div>
									<button type="button" class="pop-close" data-focus-next="popupWA">팝업닫기</button>
								</div>
								<!-- e : 웹접근성 우수사이트 인증서  -->
								<!-- e : 바닥글 영역 - b2c -->
							</div>

							<input type="hidden" id="viewStContextPath" value="/" />

							<script src="./static/script/masonry.min.js" async></script>

							<!-- masonry js -->
							<script src="./static/script/buynow.js" async></script>
							<script type="text/javascript"
								src="https://resources.digital-cloud-west.medallia.com/wdcwest/145272/onsite/embed.js"
								async></script>
</body>

</html>