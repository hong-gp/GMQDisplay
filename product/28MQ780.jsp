<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.Arrays" %>
<%String id = (String)session.getAttribute("sid");%>
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
		<script src="../../static/script/snsShare.js"></script>
			<script type="text/javascript"> shareInit('5880e4317936087f2764a5d340e6bca6', ''); </script>
<script>(window.BOOMR_mq=window.BOOMR_mq||[]).push(["addVar",{"rua.upush":"false","rua.cpush":"false","rua.upre":"false","rua.cpre":"false","rua.uprl":"false","rua.cprl":"false","rua.cprf":"false","rua.trans":"SJ-a74f0aac-5888-411f-8744-125b1ec005ec","rua.cook":"true","rua.ims":"false","rua.ufprl":"false","rua.cfprl":"false","rua.isuxp":"false","rua.texp":"norulematch"}]);</script>
                              <script>!function(a){var e="https://s.go-mpulse.net/boomerang/",t="addEventListener";if("False"=="True")a.BOOMR_config=a.BOOMR_config||{},a.BOOMR_config.PageParams=a.BOOMR_config.PageParams||{},a.BOOMR_config.PageParams.pci=!0,e="https://s2.go-mpulse.net/boomerang/";if(window.BOOMR_API_key="VRZKC-5BSTD-4EWS3-R2J59-B8GYB",function(){function n(e){a.BOOMR_onload=e&&e.timeStamp||(new Date).getTime()}if(!a.BOOMR||!a.BOOMR.version&&!a.BOOMR.snippetExecuted){a.BOOMR=a.BOOMR||{},a.BOOMR.snippetExecuted=!0;var i,_,o,r=document.createElement("iframe");if(a[t])a[t]("load",n,!1);else if(a.attachEvent)a.attachEvent("onload",n);r.src="javascript:void(0)",r.title="",r.role="presentation",(r.frameElement||r).style.cssText="width:0;height:0;border:0;display:none;",o=document.getElementsByTagName("script")[0],o.parentNode.insertBefore(r,o);try{_=r.contentWindow.document}catch(O){i=document.domain,r.src="javascript:var d=document.open();d.domain='"+i+"';void(0);",_=r.contentWindow.document}_.open()._l=function(){var a=this.createElement("script");if(i)this.domain=i;a.id="boomr-if-as",a.src=e+"VRZKC-5BSTD-4EWS3-R2J59-B8GYB",BOOMR_lstart=(new Date).getTime(),this.body.appendChild(a)},_.write("<bo"+'dy onload="document._l();">'),_.close()}}(),"".length>0)if(a&&"performance"in a&&a.performance&&"function"==typeof a.performance.setResourceTimingBufferSize)a.performance.setResourceTimingBufferSize();!function(){if(BOOMR=a.BOOMR||{},BOOMR.plugins=BOOMR.plugins||{},!BOOMR.plugins.AK){var e="false"=="true"?1:0,t="cookiepresent",n="pf7u3ryxguseazbapkcq-f-107f7835f-clientnsv4-s.akamaihd.net",i="false"=="true"?2:1,_={"ak.v":"34","ak.cp":"143520","ak.ai":parseInt("293013",10),"ak.ol":"0","ak.cr":19,"ak.ipv":4,"ak.proto":"h2","ak.rid":"b2d6b78","ak.r":37315,"ak.a2":e,"ak.m":"x","ak.n":"essl","ak.bpcip":"121.127.77.0","ak.cport":49961,"ak.gh":"23.53.32.47","ak.quicv":"","ak.tlsv":"tls1.3","ak.0rtt":"","ak.csrc":"-","ak.acc":"","ak.t":"1679850117","ak.ak":"hOBiQwZUYzCg5VSAfCLimQ==N44QcC0YWT0dwylyrsIfR3hwfiFvZ2mefvjbTiCwxGK5yLumupvxoOrsmqFzY9tOMSCLKxmpQtqkyE5YP6qDzgLYRvYJEcpVkO6VHaQ3uhbyAqICbaF1/1iP5LgyTqe7N4JJa3FqOHbnfJVwfpNQZKyNKCqcLhMpFhGpJj/qzZ4GxIy7+13JxcYw/iRKgNupUze3ao+3XS0ACKaW6ijogflcPql53L0aLjeH8hi3zb0J73BH5hAKCUUmIpLI29Nlwg+QKJQQ9VcF4AU+iMBfOWda5k4nvaCDUF00W2oP50FQKBbPp5ltUY8spe8TKa7PrePlgGa3nmxZCfjgysY7+wYIvqJhlZ2fdb/5H6QIpwRwzwmx0e70DplUt+CMYlp55rEXpSywVGCZBQloBZwk4o3xdGhJlTeUuMh1GI7hZis=","ak.pv":"2900","ak.dpoabenc":"","ak.tf":i};if(""!==t)_["ak.ruds"]=t;var o={i:!1,av:function(e){var t="http.initiator";if(e&&(!e[t]||"spa_hard"===e[t]))_["ak.feo"]=void 0!==a.aFeoApplied?1:0,BOOMR.addVar(_)},rv:function(){var a=["ak.bpcip","ak.cport","ak.cr","ak.csrc","ak.gh","ak.ipv","ak.m","ak.n","ak.ol","ak.proto","ak.quicv","ak.tlsv","ak.0rtt","ak.r","ak.acc","ak.t","ak.tf"];BOOMR.removeVar(a)}};BOOMR.plugins.AK={akVars:_,akDNSPreFetchDomain:n,init:function(){if(!o.i){var a=BOOMR.subscribe;a("before_beacon",o.av,null,null),a("onbeacon",o.rv,null,null),o.i=!0}return this},is_complete:function(){return!0}}}}()}(window);</script></head>
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
<script>
var userAgent=navigator.userAgent.toUpperCase();
if(userAgent.indexOf("SECAPP")>-1||userAgent.indexOf("SECTEST")>-1){
	$("#header").hide();
	$(".string-banner-wrap").hide();
}

//앱설치 유도 토스트 팝업 AA 태깅
function appToastPopupTag(obj) {
	if(obj !== undefined) {
		tpTrack('click', $(obj).attr('data-omni'));	
	}
}

//.toast-parent 앱설치 유도
function appToast(){
	var toastI = $('.toast-parent');
	var toastC = $('.child-pops-form');
	var appSetYN = getCookieA("appSetYN");
	var toastCYN = getCookieA("toastCYN");
	var commentPC = getCookieA("commentPC");
	
	var appUrl = window.location.href;

	let mask = `<div id="mask" style="z-index: 299;"></div>`;
	if(device.agent.indexOf("mobi") >= 0 ){
		if(appUrl.indexOf('sec/order') < 0 && appUrl.indexOf('sec/cart') < 0  && appUrl.indexOf('sec/present') < 0){
			if(device.os == "android"){
				if(device.agent.indexOf('secapp') < 0 && device.agent.indexOf('sectest') < 0){
					if(window.secapp == undefined && window.secapppopup == undefined){
						if(appSetYN != "N" && commentPC != "N"){
							$('body').append(mask);
							$("#mask").fadeIn(); 
							$(toastI).addClass("active");
						}else{
							if(toastCYN !="N"){
								$(toastC[1]).addClass("active");
							}
						}
					}
				}
			}
		}
	}
	
};


function setCookieA(name, value, exp){
	var date = new Date();
	date.setTime(date.getTime()+exp*24*60*60*1000);
	document.cookie=name+'='+value+';expires='+date.toUTCString()+';path=/';
}

function getCookieA(key){
	var result = null;
	var cookie = document.cookie.split(';');
	cookie.some(function (item) {
		//공백 제거
		item = item.replace(' ', '');
		var dic = item.split('=');
		if (key === dic[0]){
			result = dic[1];
			return true;
		}
	});
	return result;
}

// 앱설치 유도 토스트 팝업 닫기
function appToastIClose(){
	$("#mask").fadeIn('fast').remove();
	$('.toast-parent').removeClass("active");
	
	var atpc = $("#chk-not-see-appP").is(":checked");
	setCookieA("appSetYN","N",atpc ? 7 : 1);
}
//앱설치 유도 띠배너 닫기
function appToastCClose(){
	$('.child-pops-form').each(function(i,e){
		$(this).removeClass("active");
	});
	setCookieA("toastCYN","N",7);
}
//현재 페이지 앱 열기
function appOpen(){
	var locationUrl = window.location.href;
	var appUrl = ('https://secandroidprd.page.link/?link=' + locationUrl + '&apn=com.samsung.sec.android.prd&afl=https://apps.samsung.com/appquery/appDetail.as?appId=com.samsung.sec.android.prd');
	appToastIClose();
	window.open(appUrl);
}

function doLogout(){
	try{
		if( window.secapp !== undefined && navigator.userAgent.toUpperCase().indexOf("SECAPP") > -1 ){
			window.secapp.logout();
			var eventParam = {
					eventName : "App_logout"
					, attrModel : {
						service_id: 'SDC'
					}
			};
			window.secapp.customEvent(JSON.stringify(eventParam));
		} else {
			adbrix.logout();
		}
	} catch (exception){
		
	}
	location.href = "/sec/member/logout/";
}

function writableCommentM(){
	writableCommentSetC();
	location.href = '/sec/mypage/review/indexMyReview/';
	
}
function writableCommentSetC(){
	var wcpc = $("#chknotsee").is(":checked");
	setCookieA("commentPopYN","N",wcpc ? 7 : 1);
	closeLayer("popupInduceReview");
	setCookieA("commentPC","N",1);
}

var commentCheck="N";

function commentCheckAdd(){
	if(commentCheck == "Y"){
		var commentStr = "<li class='menu05' aria-hidden=''><a href='/sec/mypage/review/indexMyReview/'>상품평 쓰기</a></li>";	
		$("#floatingSticky").find(".menuGift").after(commentStr);
	}else{
		$("#floatingSticky").find(".menu05").remove();
	}
}

function writableComment(){
	var commentPopYN = getCookieA("commentPopYN");
	var locationUrl = window.location.href;
	
	$.ajax({
		 url : "/sec/xhr/review/loadWritableMyCommentList"
		,type : "POST"
		,success : function(data) {
			$(".review-produck-list").find("div").remove();
			$("#floatingSticky").find(".menu05").remove();
			var CpCondition = (commentPopYN !="N" && "N" == "N"
					&&(locationUrl=="https://dev-www.samsung.com/sec/" || locationUrl == "https://stg-www.samsung.com/sec/" || locationUrl == "https://www.samsung.com/sec/"));
			
			if(data.resultYN=="N"){
				appToast();
				
			}else if(data.resultYN=="Y"){
				commentCheck = "Y";
								
				$.each(data.cmntList, function(index, result){
					
					var str = "";
					
					str = "<div>";
					str += "<div class='prd-box'>";
					str += "<div class='prd-img'>";
					str += "<img src='"+ result.imgPath + "'alt=''>";
					str += "</div>";
					str += "<div class='prd-title'>";
					str += "<strong class='prd-name'>"+ result.goodsNm +"</strong>";
					str += "<span class='prd-number'>" + result.mdlCode + "</span>";
					str += "</div>";
					str += "</div>";
					//s : 5점 상품평 10개 미만인 경우 해당 영역 미출력 
					if(result.commentCnt >= 10){
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

				CpCondition ? setTimeout(openLayer("popupInduceReview"),500) : appToast() ;
				var commentCheckIt = setInterval(function(){
					if($("#floatingSticky").find(".menu05").length){
						clearInterval(commentCheckIt);				
					}else{
						commentCheckAdd();
					}
				},1000);
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
		isMobileDevice: function() {
			var that = this,
			winW = $(window).width();
			if ( winW > 800 ) {
				return 'N';
			} else {
				return 'Y';
			}
		},
		init: function() {
			var that = searchInputManager;
			$.cookie.json = true;
			$.cookie.data = {
				SEARCH_HISTORY : 'sh-b2c',
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
		searchHistoryTemplate: function(keyword) {
			return {
				keyword: keyword,
	        	date: searchDatetimestampToString(new Date())
			};
		},
		getKeywordList: function(cookieName) {
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
		saveSearchHistory: function(keyword) {
			var that = searchInputManager
			  , $cookie = $.cookie
			  , cookieValue = $cookie(that.cookieName)
			  , dataList = null;
			
			if ( cookieValue == undefined ) {
				dataList = [ that.searchHistoryTemplate(keyword) ];
			} else {
				if ( cookieValue.length == 0 ) {
					dataList = [ that.searchHistoryTemplate(keyword) ];
					
				} else {
					dataList = cookieValue.data;

				    if($.inArray(keyword, that.getKeywordList(that.cookieName)) >= 0) {
				    	return;
					}
				    
				    if(dataList.length >= $cookie.data.SEARCH_MAX_SIZE) {
				    	dataList.splice(0, 1);
				    }
				    dataList.push(that.searchHistoryTemplate(keyword));
				}
			}
			
			$cookie(that.cookieName, {'data': dataList} , $cookie.data.option);
		},
		getSearchHistory: function() {
			var cookieValue = $.cookie(searchInputManager.cookieName);

			if (undefined != cookieValue) {
				return cookieValue;
			}
		},
		getSearchDate: function(keyword) {
			var date = ''
			  , that = searchInputManager
			  , cookieValue = $.cookie(that.cookieName)
			  , searchHistoryList = that.getSearchHistory();
			
			if ( '' == searchHistoryList || searchHistoryList == undefined || cookieValue == undefined) {
				return date;
			}

			var dataList = cookieValue.data;
			
			var idx = -1;
			for (var i = 0; i < dataList.length; ++i) {
				var keywordInList = dataList[i].keyword;
				
				if ( keywordInList != undefined ) {
				    if (keywordInList.toLocaleLowerCase() == keyword.toLocaleLowerCase()) {
				    	idx = i;
				        break;
				    }
				}
			}
			if ( idx > -1 ) {
				date = dataList[idx].date;
			}

			return date;
		},
		drawSearchHistory: function() {
			var that = searchInputManager
			  , $cookie = $.cookie
			  , cookieValue = $cookie(that.cookieName);

			if ( undefined == cookieValue ) {
				return;
			} else if ( cookieValue.length == 0 ) {
				return;
			}
			
			var dataList = cookieValue.data
			  , template = '';
			
			for( var i = dataList.length-1 ; i >= 0; i--) {
				var element = dataList[i], keyword = element.keyword;
				template += '<li class="item">';
				template += '<a href="javascript:void(0);" class="link">' + keyword + '</a>';
				template += '<button type="button" class="btn-delete delete" keyword="' + keyword + '" onclick="searchInputManager.clearSearchHistory(this)">';
				template += '<span class="blind">삭제</span>';
				template += '</button>';
				template += '</li>';
			}
			that.$appendingTarget.searchHistory.html(template);
			that.$appendingTarget.searchHistory.off('click').on('click', 'a', function(e) {
				that.getSearchResult($(e.target).text());
				//chat_open4($(e.target).text());
			});
			
		},
		clearSearchHistory: function(element) {
			var that = searchInputManager
			  , $element = $(element)
			  , $cookie = $.cookie;
			
			if ($element.hasClass('delete-all')) {
				$.removeCookie( that.cookieName , { path: $cookie.data.option.path });
				that.$appendingTarget.searchHistory.empty();
				
			} else if ($element.hasClass('delete')) {
				var selectedKeyword = $element.attr('keyword')
				  , cookieValue = $cookie(that.cookieName)
				  , dataList = cookieValue.data;
				
				var idx = -1;
				for (var i = 0; i < dataList.length; ++i) {
					var keyword = dataList[i].keyword;
					if ( keyword == undefined ) {
						keyword = 'undefined';
					}
					
				    if (keyword == selectedKeyword) {
				    	idx = i;
				        break;
				    }
				}
				if ( idx > -1 ) {
					dataList.splice(idx, 1);
					$cookie(that.cookieName, {'data': dataList} , $cookie.data.option);
					
					$element.parent().remove();
				}
			}
		},
		callAjax: function(options) {
			$.ajax({
				url: options.url,
				type: options.type,
				data: options.data
				
			}).done(
				function(data, textStatus, jqXHR) {
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
			}).fail(function(jqXHR, textStatus, errorThrown) {
				if (options.fail !== undefined) {
					options.fail();
				}
				if (jqXHR.status !== 0) {
					ajax.error(jqXHR.status, jqXHR.responseText);
				}
			}).always(function() {
			}).then(function(data, textStatus, jqXHR) {
			});
		},

		getRecommendKeyword: function(callback) {
			var that = searchInputManager;
			that.callAjax(
				{
					url: '/sec/xhr/search/recommendkeyword/',
					type: 'GET',
					done: function(result) {
						that.recommendKeyword = result.recommendKeyword;
						
						if ( callback != undefined ) {
							callback();
						}
					}
				}
			);
		},
		setRecommendKeyword: function() {
			var that = searchInputManager;
			
			if ( that.recommendKeyword == undefined ) {
				that.getRecommendKeyword(that.setRecommendKeywordCallback);
				return;
			} 
			that.setRecommendKeywordCallback();
		},
		
		setRecommendKeywordCallback: function() {
			var that = searchInputManager;
			//$('#unifiedInputSearch').attr('placeholder', that.recommendKeyword); // 20200917 삭제
			$('.inp-placeholder').text(that.recommendKeyword); 
		},
		
		getPopularKeyword: function() {
			var that = searchInputManager;
			that.callAjax(
				{
					url: '/sec/xhr/search/popword/',
					type: 'POST',
					data: new wnAddonParamVo('', 'popword', 'D', 'B2C_SearchWord', 'json', ''),
					done: function(result) {
						var popwordResult = result.popwordResult;
						if ( popwordResult.Data == undefined ) {
							return;
						}
						
						var queryList = popwordResult.Data.Query
						  , popularList = '';
						
						$.each(queryList, function(idx, element) {
						var order = idx + Number(1);
						popularList += '<li class="item">'
							         + '<span class="rank">' + order + '</span>'
							         + '<a href="javascript:void(0);" class="link">' + element.content + '</a>';
							if ( element.updown == 'U' ) {
								popularList += '<span class="change arr-up"><span class="blind">순위상승</span></span>';
							} else if ( element.updown == 'D' ) {
								popularList += '<span class="change arr-down"><span class="blind">순위하락</span></span>';
							} else if ( element.updown == 'C' ) {
								popularList += '<span class="change arr-same"><span class="blind">순위유지</span></span>';
							}
							popularList += '</li>';
						});
						
						that.$appendingTarget.popular.off('click').on('click', 'a', function(e) {
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
		getSearchInputAutoComplete: function(keyword) {
			var that = searchInputManager;
			keyword = keyword.trim();
			
			that.callAjax(
				{
					url: '/sec/xhr/search/autocom/',
					type: 'POST',
					data: new wnAddonParamVo(keyword, 'b2c', '', '', 'json', 'fw'),
					done: function(result) {
						var template = '';
						var autoCompleteResultList = result.autoCompleteResult;
						that.$appendingTarget.autoComplete.empty();
						
						if ( autoCompleteResultList.length > 0 && autoCompleteResultList != undefined ) {
							$.each(autoCompleteResultList, function (idx, element) {
								template += '<li class="item">';
								template += '<a href="javascript:void(0);" class="link" text="' + element.text + '">';
								template +=  (element.modified).replace(/\<!HS\>(.*)\<!HE\>/gi, "\<span class=\"key\"\>$1\</span\>");
								template += '</a>';
								template += '<span class="date">' + searchInputManager.getSearchDate(element.text) + '</span>';
								template += '</li>';
							});
							
							that.$appendingTarget.autoComplete.html(template);

							that.$appendingTarget.autoComplete.off('click').on('click', 'a', function(e) {
								if($(e.target).attr('text') != undefined){
									that.getSearchResult($(e.target).attr('text'));
									chat_open4($(e.target).attr('text'));
								}else{
									that.getSearchResult($(e.target).parent().attr('text'));
									chat_open4($(e.target).parent().attr('text'));
								}
							});
							
							$('.unified-search-layer.type-keyword').hide();
							$('.unified-search-layer.type-auto').show();
							
						} else {
							$('.unified-search-layer.type-auto').hide();
							if ( keyword == '' ) {
								//$('#unifiedInputSearch').attr('placeholder', searchInputManager.recommendKeyword); // 20200917 삭제
								$('.inp-placeholder').text(that.recommendKeyword); // 20200917 추가
								$('.unified-search-layer.type-keyword').show();
							}
						}
					}
				}
			)
		},
		
		getSearchResult: function(keyword, searchResultInputId, tab) {
			keyword = escapeHtml(keyword);
			
			var that = searchInputManager;
			keyword = keyword.trim();
			keyword = filterAcc(keyword); // 에어컨액세서리
			
			if ( searchResultInputId != undefined ) {
				that.searchResultInputId = searchResultInputId;
			}
			
			if ( keyword == '' ) {
				var recommendKeyword = that.recommendKeyword;
				if ( recommendKeyword == undefined ) {
					that.getRecommendKeyword(that.getSearchResultNoKeywordCallback);
				}
				that.getSearchResultCallback(recommendKeyword);
				return;
			}
			that.getSearchResultCallback(keyword, tab);
		},
		getSearchResultNoKeywordCallback: function() {
			var that = searchInputManager
			  , recommendKeyword = that.recommendKeyword
			  , searchResultInputId = that.searchResultInputId;

			if ( searchResultInputId != undefined ) {
				$(searchResultInputId).val(recommendKeyword);
				$(searchResultInputId).attr('placeholder', recommendKeyword);
			}
			
			that.getSearchResultCallback(recommendKeyword);
		},
		getSearchResultCallback: function(keyword, tab) {
			var that	   = searchInputManager
			  , isMobileYN = that.isMobileDevice();
			that.saveSearchHistory(keyword);
			ajax.call({
				url: '/sec/xhr/search/keywordRedirect?keyword=' + encodeURIComponent(keyword),
				data: new WNSearchParamVo(keyword, '', '', '', '', '', '', '', '', '', '', '', '', 'b2c', isMobileYN),
				dataType : 'json',
				contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
				done: function(result) {
					//yhj
					$(".unified-search-input-wrap").removeClass("is-active"); 
					$("body").removeClass("is-pc is-mo");
					$(".unified-search-layer").hide();
					$("body").removeClass("fixed-scroll");
					$("#gnbmask").hide();
					$(".unified-search-input-wrap .inp").val(""); 
					$(".unified-search-input-wrap .btn-inp-clear").hide(); 
					$(".inp-placeholder").show();
					if ( isSecApp() == "true" ) {
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
					$form.setAttribute('action', '/sec/search/searchresult/' + tab + '?keyword=' + encodeURIComponent(keyword));
					
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
		if((keyword.indexOf("에어컨") > -1 || keyword.indexOf("무풍에어컨") > -1) && (keyword.indexOf("액세서리") > -1 || keyword.indexOf("악세서리") > -1 || keyword.indexOf("엑세서리") > -1) ) {
			keyword = "에어컨액세서리";
		}
		return keyword;
	}
	
	function escapeHtml (string) { 
		return String(string).replace(/[&<>"'`=\/]/g, function (s) {
        	return entityMap[s]; 
        }); 
	}
	var entityMap = { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;', '/': '&#x2F;', '`': '&#x60;', '=': '&#x3D;' };
	
	/* s: APP용 함수 */
	function isSecApp() {
		/* 20230104 변경*/
		if(device.isApp != true){
			if(window.secapp == undefined && window.secapppopup == undefined){
				return false;
			}
		}
		return true;
	}
	
	function once(func) {
		var flag
		  , result;
		
		return function() {
			if ( flag ) {
				return result;
			}
			flag = true;
			return result = func.apply(this);
		}
	}
	
	/* s : 20200917 수정 */
	var searchLinkforApp = once(function() {
		var that = searchInputManager;
		
		that.setRecommendKeyword();
		that.drawSearchHistory();
		that.getPopularKeyword();
		
	});
	
	function searchOpenforApp() { 
		searchLinkforApp();
		headerSearch.eventListener.uinifiedSearchOpen();
	}
	
	
	/* e: APP용 함수 */
	
	/* s : 닷컴 웹 검색시 챗봇 검색 연계 구현 */
	function chat_open4(chatbotKeyword) {
		var isMobile = false; // 모바일 여부
		var filter = "win16|win32|win64|mac|macintel"; // PC 환경
		
		// 모바일,태블릿 / PC 환경 구분 
		if(navigator.platform){
			isMobile = filter.indexOf(navigator.platform.toLowerCase()) < 0
		}
		
		if(!isMobile){
			var birthAge = null;
			var birthDate = $.cookie("birthDate_1_");
			
			if(birthDate != 0 && birthDate != null){
				birthAge = checkAge(birthDate); 
			}
			
			if(birthAge >= 14 || birthAge == 0 || birthAge == null) {
				var agepass = checkAgepass(birthAge);
				fcTrack('click','floating chat:chat online');
				
				var keyword = encodeURIComponent(chatbotKeyword);
				var popupX = (window.screen.width / 2) - (356 / 2);
			    var popupY = (window.screen.height / 2) - (750 / 2);
				
			    window.open('/sec/chatbot/?keyword='+ keyword+'&agepass='+agepass, '_chatbot4', 'status=no, height=750, width=356, left=' + popupX + ', top=' + popupY + ', screenX=' + popupX + ', screenY= ' + popupY);
			}
		}
	}
	/* e : 닷컴 웹 검색시 챗봇 검색 연계 구현  jiwon0.id 22.04.26 */
	
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
	
	 /* s : 만 나이별로 agepass 구분값 설정 함수 @param birthAge : 만나이   14세 이상 : 'y'   로그인하지 않을경우 : 'u'   */
	function checkAgepass(birthAge){
    	var agepass = null;  

   	    if( birthAge == 0 || birthAge == null ) {
   	            agepass = "u";
   	    } else if(birthAge >= 14) {
   	            agepass = "y";
   	    }
   	    
   	    return agepass
     }
	/* e : 만 나이별로 agepass 구분값 설정 함수  */
	
	$(document).ready(function() {
		var that = searchInputManager;
		
		$('#link-search').on('click', function() {
			that.setRecommendKeyword();
			that.drawSearchHistory();
			that.getPopularKeyword();
		});
		
		$('#unifiedInputSearch').on('keyup', function(e) {
			var $target = $(e.target)
			  , keyword = $target.val().replace(/\\/gi, '');
			$target.val(keyword);
			
			that.getSearchInputAutoComplete(keyword);
		});
		
		$('#unifiedInputSearch').on('click', function() { 
			$('.inp-placeholder').hide();
		}); 
		
		/* s : 닷컴 웹 검색시 챗봇 검색 연계 구현   */
		$('.chatbot-search').off('click').on('click', function() { 
			let chatbotKeyword;
			if($(this).attr('id') == 'unifiedSearchButton'){
				chatbotKeyword =  $("#unifiedInputSearch").val();
			}else if($(this).attr('id') == 'inputSearchButton'){
				chatbotKeyword =  $("#inputSearch").val();
			}
			
			if($(this).attr('id') == 'unifiedSearchButton'){
				if(chatbotKeyword == null || chatbotKeyword == ""){
					chatbotKeyword = that.recommendKeyword;
					chat_open4(chatbotKeyword);
				} else{
					chat_open4(chatbotKeyword);
				}
			} else{
				if(chatbotKeyword != null && chatbotKeyword != "") {
					chat_open4(chatbotKeyword);
				}
			}
		});
		/* e : 닷컴 웹 검색시 챗봇 검색 연계 구현  */
		
	});
	
	
</script>
<!-- s : 통합검색 -->
<div class="unified-search-input-wrap">
	<div class="unified-search-input-inner">
		<div class="search-box">
			<label for="unifiedInputSearch" class="blind">통합 검색</label><!-- 20200622 for 값 변경 -->
			<input type="text" id="unifiedInputSearch" class="inp" onfocus="headerSearch.eventListener.uinifiedSearchInp()"
			onkeydown="headerSearch.eventListener.uinifiedSearchChange()">
			<span class="inp-placeholder"></span>
			<button type="button" class="btn-inp-clear" title="삭제"><span class="blind">삭제</span></button>
			<button type="button" class="btn-search" title="검색" id="unifiedSearchButton" onclick="javascript:searchInputManager.getSearchResult($('#unifiedInputSearch').val(), '#unifiedInputSearch')"><span class="blind">검색</span></button>
		</div>
	</div>

	<!-- s : 검색레이어 : 최근, 인기-->
	<div class="unified-search-layer type-keyword" style="display:none">
		<div class="unified-search-layer-inner"><!-- 감싸는 태그 unified-search-layer-inner 추가 -->
			<div class="layer-cont">
				<div class="cont-inner box-recent" id="searchkeywordRecent" role="tabpanel">
					<strong class="tit">최근 검색어</strong>
					<ul class="list">
					</ul>
					<div class="etc"><a href="javascript:void(0);" class="btn-delete delete-all" onclick="searchInputManager.clearSearchHistory(this)">최근 검색어 전체 삭제</a></div>
				</div>
				<div class="cont-inner box-popular" id="searchkeywordPopular" role="tabpanel">
					<strong class="tit">인기 검색어</strong>
					<ul class="list">
					</ul>
					<div class="etc" id="makeTime"><p class="date"></p></div>
				</div>
			</div> 
		</div><!--  감싸는 태그 unified-search-layer-inner의 닫는 태그 추가 -->
		<button type="button" class="btn-close-search"><span class="blind">검색 레이어 닫기</span></button><!--  닫는 태그 추가--><!-- 20200622 button type 변경-->
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
		<button type="button" class="btn-close-search"><span class="blind">검색 레이어 닫기</span></button><!--  닫는 태그 추가--><!--  button type 변경-->
	</div>
	<!-- e : 검색레이어 : 자동 완성-->
	
	<button type="button" class="btn-close-search"><span class="blind">검색 레이어 닫기</span></button><!--  button type 변경-->
</div>
<!-- e : 통합검색 --><!-- e : 통합검색 -->

	<!-- s : 본문 영역 -->
	<div id="container" class='' >

		<!-- s : 페이지 로케이션 영역 -->
			<script type="text/javascript">
			getDispPathByUrl();
	        
			function getDispPathByUrl() {
				
				let stId = "1";
				let reqUri = "/sec/monitors/gaming-ls24ag320nkxkr-d2c/LS24AG320NKXKR/";
				reqUri = reqUri.replace("/sec/", "");
				if (reqUri.length == 0) return;
		    	
				let tmp = "";
				
				if("Y" === "Y") return;
				
				if(reqUri.indexOf('homefitness') > -1) {
					return;
				}
				
				$.ajax({
					 url : "/sec/xhr/display/getGnbByUrl"
					,type : "POST"
					,data : {stId:stId, linkUrl:reqUri}
					,success : function(data) {
						list = data.list;
						if (list == null) return;
		   				
						$.each(list, function(idx, obj) {
							if (obj.linkUrl.length > 0) {
		   						tmp += '<a href="/sec/'+obj.linkUrl+'">'+obj.dispClsfNm+'</a>';
							} else if(obj.dispClsfNm != obj.upDispClsfNm){	//동일명칭 Depth Skip 2020.09.14 YJU
		   						tmp += "<span>"+obj.dispClsfNm+"</span>";
		   					}
		   				});
		   				
						if (tmp == '') return;
						let html = "";
						html += "<div class=\"pg-location-inner locationDiv\">";
						html += "<a href='/sec/'>HOME</a>";
						html += tmp;
						html += "</div>";
						$(".pg-location").html(html);
					}
				});
			}
        </script>
        
        <div class="pg-location" style="display:none;">
        </div><!-- e : 페이지 로케이션 영역 -->

			<!-- s : 최근 본 제품 -->
			<div id='latestItemLayer' class='layer-pop layer-normal floatingStyle'>
	<div class='layer-header'>
		<h2>최근 본 제품</h2>
	</div>
		<button type='button' class='pop-close' onclick = "closePop(latestItemLayer)" data-focus-next="latestItemLayer"><span class='blind'>최근 본 제품 닫기</span></button>
	<div class="LatestItm-result">
		<p class="result-tit">
			<span>검색 결과</span><strong class="num">0</strong> 개 
		</p>
		<button type="button" class="btn btn-d btn-allListClear" onclick = "deleteRecentGoods('Y')" data-st-path ="/sec/" data-focus-next="latestItemLayer">전체삭제</button>
	</div>
	<div class="caution-note">※ 최근 본 제품은 7일간 보관됩니다.</div>
</div><!-- e : 최근 본 제품 -->

			<script type="text/javascript">
var goodsMain = {
	vMainWrapId : '#pd-inner-cont'
	, vGoodsWrapId : '#goods_detail_wrap'
	, fnGetHtml : function(target, url, data, callback){
		var options = {
			url: goodsMain.fnAjaxUrl(url)
			, dataType : "html"
			, data: data
			, done: function (html){
				$(target).html(html);
				if(callback){
					callback();
				}
			}
		};
		ajax.call(options);
	}
	, fnAjaxUrl : function(vUrl, vAjaxUrl){
		var ajaxUrl = "xhr/goods/";
		if (vAjaxUrl !== undefined){
			ajaxUrl = vAjaxUrl;
		}
		return $(this.vGoodsWrapId).data("ctpath") +  ajaxUrl + vUrl;
	}, fnLoginCheck : function(callback){
		var options = {
			url : goodsMain.fnAjaxUrl("loginCheck")
			, type: 'POST'
			, done : function(data) {
				if(callback){
					callback(data.isLogin);
				}
			}
		};
		ajax.call(options);
	}
	, fnBizCloseCheck : function(callback){
		var options = {
				url : goodsMain.fnAjaxUrl("bizCloseCheck")
				, type: 'POST'
				, done : function(data) {
					if(callback){
						callback(data);
					}
				}
			};
			ajax.call(options);
		}
	, fnNtsBizCloseCheck : function(callback){
		var options = {
			url : goodsMain.fnAjaxUrl("bizNtsCloseCheck")
			, type: 'POST'
			, done : function(data) {
				if(callback){
					callback(data);
				}
			}
		};
		ajax.call(options);
	}
	, fnMsgPop : function(vOption){
		var msgOptions = {};
		if(typeof vOption === "string"){
			$.extend(msgOptions, { content : vOption, yes : "확인", close : "닫기" });
		}else if(typeof vOption === "object"){
			$.extend(msgOptions, vOption);
		}
		this.fnOpenLayer($("#popupMsg"), $("#popupMsgTempl").render(msgOptions)).find('a').off().on('click', function (){
			if($(this).hasClass('login-view')){
				var returnUrl = $("input[name=returnUrl]").val();
				// 로그인 화면 이동
				location.href = $(goodsMain.vGoodsWrapId).data("ctpath") + "member/indexLogin/?returnUrl="+returnUrl;
				_satellite.track('login');
				// 웹 접근성 수정
				$("[data-focus-target=true]").removeAttr("data-focus-target");
			}else if($(this).hasClass('contact-view')){
				// 견적문의
				location.href =$(goodsMain.vGoodsWrapId).data("ctpath") + "support/contactus/sales-enquiries/?goodsId="+$("input[name=goodsId]").val();
			}else if($(this).hasClass('cart-view')){
				// 장바구니 가기
				$('#outCheck').val('Y');
				location.href = $(goodsMain.vGoodsWrapId).data("ctpath") + "cart/";
			}else if($(this).hasClass('cont-shpng')){
				// 쇼핑 계속하기
				$(this).closest('.layer-pop').find('.pop-close').trigger('click');
				$("#btnCart").focus();
				// 패밀리넷 앱 장바구니 콜백
				if('b2c' == 'fnet'  && 'false' == 'true' && 'false' == 'true'){
					window.secapp.requestCartCountView();
				}
			}else if($(this).hasClass('btn-type1') || $(this).hasClass('btn-type2')){
				// 팝업닫기
				$(this).closest('.layer-pop').find('.pop-close').trigger('click');
			}
		});
	}, fnOpenLayer : function($objLayer, data){
		var t = $objLayer.attr('id');
		$objLayer.html(data);
		if($(".layer-pop").is(":visible")) {
			LAYERZINDEX++; // 200729 팝업 두 개 이상 띄울 경우 z-index ++
		} else {
			LAYERZINDEX = 300; // 200729 팝업 두 개 이상 띄울 경우 z-index ++
		}
		$objLayer.show().css("z-index", LAYERZINDEX).attr("aria-hidden", false).attr("data-zindex", LAYERZINDEX).focus(); // 200729 z-index 값 data attr에 저장
		$objLayer.find(".pop-close").data("activeTarget", t);
		// 딤드팝업 마스크 생성 및 활성화  // 200729
		if(!$objLayer.hasClass("nomask")){
			var zidx = parseInt($("#"+t).attr("data-zindex")) - 1;
			$("body").append("<div id='mask' data-mask-target='"+t+"' style='z-index:"+zidx+"'></div>");

			$("#mask").fadeIn().data("activeTarget", t);
			scrollLock('lock');
		}

        if(!$("body").children().is("#mask")) $("body").append("<div id='mask'></div>");
        $("#mask").fadeIn().data("activeTarget", $objLayer.data("popup-layer"));
        $("#commonAlert a").attr("onblur", "$('#commonAlert').focus();")
        $("#commonAlert").attr("onblur", "$('#commonAlert a').focus();")

        $objLayer.find('.pop-close').off().on('click', function (){
        	$objLayer.removeAttr("style").removeAttr("data-zindex").attr("aria-hidden", true).hide();  // 
        	$objLayer.empty();
        	$("body").css("overflow", "");

        	if ($objLayer.hasClass("layer-storepickup")) $objLayer.removeClass("layer-storepickup");
			if ($objLayer.hasClass("layer-gatherview")) $objLayer.removeClass("layer-gatherview");
			if ($objLayer.hasClass("popup-comm-video")) $objLayer.removeClass("popup-comm-video");
			if ($objLayer.hasClass("popup-comm-img360")) $objLayer.removeClass("popup-comm-img360");
			if ($objLayer.hasClass("popup-comm-gallery")) $objLayer.removeClass("popup-comm-gallery");

        	$("#mask[data-mask-target='"+t+"']").fadeOut("fast").remove();  // 
        	scrollLock('unlock');
        	
        	LAYERZINDEX--;  //  레이어팝업 z-index값 초기화
        	
        	// 웹 접근성 수정
        	$("[data-focus-target=true]").focus();
			$("[data-focus-target=true]").removeAttr("data-focus-target");
        	
			$(this).off();
			
	    });
        return $objLayer;
	}, fnCloseLayer : function($objLayer) {
		var t = $objLayer.attr('id');

		$objLayer.removeAttr("style").removeAttr("data-zindex").attr("aria-hidden", true).hide(); // 
		$objLayer.empty();

		if ($objLayer.hasClass("layer-storepickup"))
			$objLayer.removeClass("layer-storepickup");
		if ($objLayer.hasClass("layer-gatherview"))
			$objLayer.removeClass("layer-gatherview");
		if ($objLayer.hasClass("popup-comm-video"))
			$objLayer.removeClass("popup-comm-video");
		if ($objLayer.hasClass("popup-comm-img360"))
			$objLayer.removeClass("popup-comm-img360");
		if ($objLayer.hasClass("popup-comm-gallery"))
			$objLayer.removeClass("popup-comm-gallery");

		if (!$(".layer-pop").not("#latestItemLayer").is(":visible"))
			scrollLock('unlock');
		$("#mask[data-mask-target='" + t + "']").fadeOut("fast").remove(); // 200729
		LAYERZINDEX--; // 200729 레이어팝업 z-index값 초기화

		$(this).off();
	}, fnCtaInit : function(){
		
		var saleStatCd = $(".itm-info-detail", goodsMain.vGoodsWrapId).data("sale-stat");
		var stGbCd = $("input[name=stGbCd]", goodsMain.vGoodsWrapId).val();
		/*  210406 정재동 stId 값 지정*/
		var stId= $("input[name=stId]").val();
		
		$("button,p", ".btn-direct-div").hide();
		var tempData = $(".price-clone").detach();
		if ($("#restoreAlarm", goodsMain.vMainWrapId).length > 0) {
			// 재입고 버튼 활성화 처리
			//재입고 알림 사용 안함 - 2020.12.17 (#26002)
			//$("#btnRestoreSub").show();
		}else if ($("#btnDirect", goodsMain.vMainWrapId).length > 0) {
			// 바로구매
			$("#btnDirectSub").show();
			$('.btn-direct-div').append(tempData);
		}else if ($("#btnCombine", goodsMain.vMainWrapId).length > 0) {
			// 조합하여 구매하기
			$("#btnCombineSub").show();
		}else{
			//버튼 컨트롤
			if(stGbCd == '10' && (saleStatCd == '14' || saleStatCd == '16')){
				//B2C - 판매준비중, 타경로 판매
				$("#findStoreSub").attr("ga-la", $(".itm-info-detail", goodsMain.vGoodsWrapId).data("mdl-nm"));
				$("#findStoreSub").show();
			}else if(stGbCd == '50' && (saleStatCd == '14' || saleStatCd == '15' || saleStatCd =='17' )){
				//B2B 비지니스스토어 - 판매준비중, 판매종료, 미판매
				$("#btnContactSub").show();
			}else if((stGbCd == '70' || stGbCd == '80') && saleStatCd == '18'){
				//임직원몰 - 판매중지
				$("#stopSelling").show();
			}		
		}		
		// 210407 정재동 임직원몰(E카달로그), 사이트아이디 193
		if(stGbCd == '90' &&  stId == '193'){
			$("#btnDirectSub").hide(); 
			$("#reservStoreSub").show();
		}

	}
	, fnFindPosition : function(){
        $('.component-body article:visible').each(function(){
        	var scrollNum = 110;
        	
        	// 22-07-10 갤캠스 체크 값 변경 110 > 160
        	if('80' == '10' && '1' == '122'){
        		scrollNum = 160;	
        	}
        	
        	if(($(this).offset().top - $(window).scrollTop()) < scrollNum){
                $('.anchor-nav .dot').removeClass('active');
                $('#anchor-navbar').find('[data-scroll="'+ $(this).attr('id') +'"]').addClass('active');
            }
        });
	}
	, fnNodeMove : function(){
	    // node 이동
		if($(window).outerWidth() <= 800){
			if(!$(".itm-info-head").children().is(".prod-image") === true){
				$(".prod-image").appendTo(".itm-info-head");

				// 베스트 상품평 목록
				if("Y" === $("#goodsAdvCmntStYn").val()) {
					$(".best_review_list_move").insertAfter(".itm-info-head");
				}
			}
			// 포토/동영상 목록 더보기 버튼 처리
			if("Y" === $("#goodsAdvCmntStYn").val() && 7 < $(".attach_cmnt_list > .item").length) {
				$('.btn-cmnt-more').show();
			}
		}else{
			if($(".itm-pd-picture").children().is(".prod-image") !== true){
				$(".prod-image").insertAfter("#slickView");
				
				// 베스트 상품평 목록
				if("Y" === $("#goodsAdvCmntStYn").val()) {
					$(".best_review_list_move").insertAfter(".prod-image");
				}
			}
			// 포토/동영상 목록 더보기 버튼 처리
			if("Y" === $("#goodsAdvCmntStYn").val() && 12 > $(".attach_cmnt_list > .item").length) {
				$('.btn-cmnt-more').hide();
			}
		}
	}
	, fnShowOrderMenu : function($ele){
		
	    if($ele.length == 0){
	        return false;
	    }

	    var screen_size = $(window).width();
	    var winH_size = $(window).height();
	    var targetH_size = $('#compGoodsNoticeInfo').outerHeight();
	    var fixedH_size = $('.itm-total-bottom').outerHeight();
	    var pfpdCompare= $('.pfpd-compare'); 
	    var effectOpt = {effect : "slide", direction : "down"};
	    
        if($(window).width() < 900){
        	//비교하기 
        	if(screen_size <= 800){ 
                if(!($(document).scrollTop() > $("#footer").offset().top + winH_size - targetH_size + fixedH_size * 2)) {
    				if(pfpdCompare.hasClass('open')){
						pfpdCompare.show(effectOpt);
    						$ele.hide(effectOpt); 
    				}else{
    					pfpdCompare.show(effectOpt);
    					$ele.show(effectOpt);
    				}
                }else{
    				pfpdCompare.hide(effectOpt);
    				$ele.hide(effectOpt);
                } 
            }else{
            	// 모바일에서 하단 합계 부분
                if($(document).scrollTop() > $("#footer").offset().top + winH_size - targetH_size + fixedH_size * 2){
                	$ele.hide(effectOpt);
                }else{
                	$ele.show(effectOpt);
                }
            }
        }

		//비교하기 
        if(screen_size <= 800){ 
            if(!($(document).scrollTop() > $("#footer").offset().top + winH_size - targetH_size + fixedH_size * 2)) { 
				if(pfpdCompare.hasClass('open')){
					pfpdCompare.show(effectOpt);
					$ele.hide(effectOpt);
				}else{
					pfpdCompare.show(effectOpt);
					$ele.show(effectOpt);
				}
            }else{
				pfpdCompare.hide(effectOpt);
				$ele.hide(effectOpt);
            } 
        }
		
     	// Web Accessibility
		// aniAct 클래스 없을 때 포커스 가지 않도록 적용
		var ctaAct = $('.btn-direct-div .btn');
		ctaAct.attr('tabindex', '-1');

		if('80' == '10' && '1' == '122'){
			 // 갤캠스 헤더 값 추가
	        if ($(".component-bar").length > 0 && $(document).scrollTop() > $(".component-bar").offset().top - ($(window).height() / 3) + $('.component-bar').height() + $('#header').height()) {
	            $('.component-bar').addClass("aniAct");
	        } else {
	            $('.component-bar').removeClass("aniAct");
	        }
		}else{
			if ($(".component-bar").length > 0 && $(document).scrollTop() > $(".component-bar").offset().top - ($(window).height() / 2) + $('.component-bar').height()) {
				$('.component-bar').addClass("aniAct");
					ctaAct.removeAttr('tabindex');
			} else {
				$('.component-bar').removeClass("aniAct");
					ctaAct.attr('tabindex', '-1');
				}
			
		}
		
	}

	, fnFamliyNetCountLimitAgree: function() {
		$('#fnetOrderAgree').val('Y');
		closeLayer('popupFmailyAgree');

		if ($("input[name=nowBuyYn]").val() == 'Y') {
			$('#btnDirect').trigger('click');
		} else {
			$('#btnCart').trigger('click');
		}
	} , moveMobileAppsInfo : function(){
		var mdlCode = $(".ins-apps-btn").data('mdl-code');
		window.open($("#goods_detail_wrap").data("ctpath") +'consumer/mobile/Apps/'+mdlCode+'/', '_blank');
	}
};

function isGcsLogin() {
    var options = {
        url: "/sec/xhr/member/getSession",
        type: "POST",
        done: function(returnUrl) {
           if("0" == JSON.parse(returnUrl).mbrNo){
	            window.location.href = "/sec/member/introPage/?returnUrl=" + window.location.pathname;
           }
           else if( "0" == JSON.parse(returnUrl).gcsMbrNo){
	            window.location.href = "/sec/member/loginDocumentEmailCheck";
           }
        }
    };
    ajax.call(options);
}

// 접근성 - 아코디언 상태 정보 추가
$(document).ready(function() {
	if('80' == '10' && '1' == '122'){
		isGcsLogin();
	}
	
	checkPdDropOption($('.itm-option-choice .dropButton'));
	checkPdDropOption($('.drop-component .dropButton'));

	$('.itm-option-choice .dropButton').on('click', function() {
		checkPdDropOption($(this)); 
	});

	$('.drop-component .dropButton').on('click', function() {
		checkPdDropOption($(this)); 
	});
	
	$('#reservStoreSub').on('click', function() {
		//  정재동 매장상담 예약하기 링크 이동				
		location.href = "https://www.samsungsales.co.kr/event/evSmbHope.sesc";
	});
	
	var url = '';	
	var agent = navigator.userAgent.toLowerCase();
	if(agent.indexOf('secapp') < 0 || agent.indexOf('sectest') < 0){
		if(url !=null && url !=''){
			checkBroadCast(url);	
		} 	
	}
	
	
	//  비교하기 s
	$(window).resize(function(){
		//floatingStickyComparePosition(); // 230119
	}).resize();
	//  비교하기 e
	
	//  웹접근성
	$(document).on("keydown", function(event){
		var _keyCode = event.keyCode || event.which;
		// 바로구매 버튼 존재 시 탭 처리
		if(!event.shiftKey && _keyCode == 9){
			var _btnDirectSub = $("#btnDirectSub");
			// 바로구매 버튼 있을경우
			if(_btnDirectSub.length > 0){
				// 바로구매 버튼 포커스 일 경우만 동작
				if(_btnDirectSub.is(":focus")){
					// nav 있을경우
					var _componentBar = $(".component-bar");
					if(_componentBar.length > 0){
						// 바로구매 버튼 활성화 클래스 여부
						if(_componentBar.hasClass("aniAct")){
							// goods-display-view.js 의 이벤트로 바인딩
							var _dot = _componentBar.find("ul.anchor-nav > li > a.dot");
							if(_dot.length > 0){
								event.preventDefault();
								_dot.removeClass("active");
								var _acompGoodsFeatures = $("#acompGoodsFeatures");
								if(_acompGoodsFeatures){
									_acompGoodsFeatures.addClass("active");
									//_acompGoodsFeatures.focus();
									_componentBar.find("ul.anchor-nav > li > a.dot.active").trigger("click");
									
									// 본문영역 스크롤이동
									if($(".component-body")){
										$(".component-body").focus();
									}
								}
							}
							
						}
						
					}
					
				}
			}
			
			
		}
		
		
	});
	
	
	//todo 웹 접근성 
	$("#btnDirectSub").on("focusin", function (){
		if($('.price-clone-inner')){
			$('.price-clone-inner').append($(".itm-price div").html());
	        $('.price-clone').addClass('opacity');
		}
    }).on("focusout", function (){
    	if($('.price-clone')){
    		$('.price-clone').removeClass('opacity').children().children().remove();
    	}
    });
	
	// 웹 접근성 수정
	$("a[data-scroll=compGoodsSpec]").on("click", function() {
		$('#compGoodsSpec a').first().focus();
	});
	$("a[data-scroll=compGoodsManual]").on("click", function() {
		$('#compGoodsManual a').first().focus();
	});
	$("a[data-scroll=compGoodsComment]").on("click", function() {
		$('#compGoodsComment a').first().focus();
	});
	/* KDP-20177 [FO][BO][B2C] PD  특장점 신규 CAD 영역 추가 LMJ START */
	$("a[data-scroll=compGoodsCad]").on("click", function() {
		$('#compGoodsCad a').first().focus();
	});
	/* KDP-20177 [FO][BO][B2C] PD  특장점 신규 CAD 영역 추가 LMJ END */
})

 function checkBroadCast(url){
	var apiUrl =  'https://api.sauceflex.com/V1/front/broadcast/samsung/';
	$.ajax({
		type : "GET",
		url : apiUrl+url,
		dataType : "Json",
		contentType : "application/json; charset=UTF-8",
		success : function(data) {
			if(data.code == 'SU0000'){
				if(data.response.items[0] != null && data.response.items[0] != undefined ){
					if(data.response.items[0].broadcastStateCode == 'onair'){
						executeBroadCast(data.response.items[0].outputInfo[0].path);	
					}
				}
			}
		},
		error : function(error) {
			console.log(error);
		}
	});
	
}

function executeBroadCast(data){
	
	var playerInstance = jwplayer("player").setup({
		  "file": data,				             
		  "height": 180,
		  "width": 320,
		  "autostart": "true",
		  "floating": { "dismissible": true }
		});
		
		playerInstance.on('ready', function(ev) {
			document.getElementById(playerInstance.id).style.height = 0;
			document.getElementById(playerInstance.id).style.width = 0;
			
			playerInstance.setFloating("true");
		});
		var checkUnload = true;
	      $(window).on("beforeunload", function () {
	    	  var outCheck = $('#outCheck').val();
	          if (checkUnload && outCheck == 'N') return "페이지 이동하시겠슴까";
	      });
} 

function checkPdDropOption(e) {
	var $e = $(e);
	clearTimeout(timer);
	var timer = setTimeout(function(){
		$e.find($('span.blind')).remove();
		$e.each(function() {
			if ($(this).hasClass("open")) {
				$(this).append('<span class="blind">열림</span>');
			} else {
				$(this).append('<span class="blind">닫힘</span>');
			}
		});
	}, 500)
}
// 접근성 - 아코디언 상태 정보 추가
</script>

<style>.jw-flag-floating .jw-wrapper {
	 width:180px !important;
	 height:320px !important;
	 max-height:320px !important;
	}
	
	.jw-svg-icon-rewind {
		display: none;
	}
	.jw-icon-fullscreen {
		display: none !important;
	}
	.jw-icon.jw-icon-inline.jw-button-color.jw-reset.jw-icon-pip {
	  display: none !important;
	}
</style>
	<script src="https://cdn.jwplayer.com/libraries/ItMW7Ep3.js"></script>
	<input type="hidden" id="isMuhanDojeonApplyDateInfo" value="false" />
	<input type="hidden" id="ancId" value="" />
	<input type="hidden" id="pdYn" value="Y" />
	<input type="hidden" id="outCheck" value="N" />
	<input type="hidden" id="compGbCd" value="10" />
	<div class="pd-Container" id="pd-inner-cont">
		<div class="pg-location ">
			<div class="pg-location-inner">
				<a href="./../index.html">HOME</a>
				<a href="./../monitors.html">게이밍 모니터</a>
				<a href="/GMQDisplay-master/expert-monitor.html">전문가용 모니터</a>
				<a href="./../monitors.html?genre=work">사운드 작업용</a>
				<span>LG전자 울트라와이드 듀얼업 28MQ780</span>
			</div>
		</div>

		<section class="content" role="product_content_search">
			<div id="goods_detail_wrap" class="conbox" data-ctpath="/sec/" data-kakaokey="5880e4317936087f2764a5d340e6bca6" data-facebookid="" data-goods-id="28MQ780"
			data-goods-tp-cd="10" data-goods-Nm="LG전자 울트라와이드 듀얼업 28MQ780" data-admin-yn="" data-admin-price-yn="" data-task-id="" data-task-dtl-no="">

				<input type="hidden" name="returnUrl" value="./../static/images/product/28MQ780"/>
				<!-- s : 제품구매영역 -->
				<div class="itm-buy-area" data-sticky-container>
					<!-- s : 제품 이미지 슬라이드 -->
					<div class="itm-pd-picture" data-margin-top="50">
						<div id="slickView">
		<div class="prod-image">
			<div class="prod-image-view">
				<div>
							<img src="./../static/images/product/28MQ780_1.png" alt="LG전자 울트라와이드 듀얼업 28MQ780 28MQ780정면" data-img-tp="10" data-seq="1">
				</div>
					<div>
							<img src="./../static/images/product/28MQ780_2.png" data-lazy="./../static/images/product/28MQ780_2.png" alt="오디세이 게이밍 모니터 60.4 cm 블랙 좌측 30도" data-img-tp="10" data-seq="2">
								</div>
					<div>
							<img src="./../static/images/product/28MQ780_3.png" data-lazy="./../static/images/product/28MQ780_3.png" alt="오디세이 게이밍 모니터 60.4 cm 블랙 우측 30도" data-img-tp="10" data-seq="3">
								</div>
					<div>
							<img src="./../static/images/product/28MQ780_4.png" data-lazy="./../static/images/product/28MQ780_4.png" alt="오디세이 게이밍 모니터 60.4 cm 블랙 모서리 디테일" data-img-tp="10" data-seq="4">
								</div>
					<div>
							<img src="./../static/images/product/28MQ780_5.png" data-lazy="./../static/images/product/28MQ780_5.png" alt="오디세이 게이밍 모니터 60.4 cm 블랙 피봇" data-img-tp="10" data-seq="5">
								</div>
					</div>
			<div class="prod-image-navi-wrap">
				<ol class="prod-image-navi">
					<li><span><a href="javascript:;"><img src="./../static/images/product/28MQ780_1.png" alt="오디세이 게이밍 모니터 60.4 cm 블랙 정면"></a></span></li>
						<li><span><a href="javascript:;"><img src="./../static/images/product/28MQ780_2.png" alt="오디세이 게이밍 모니터 60.4 cm 블랙 좌측 30도"></a></span></li>
						<li><span><a href="javascript:;"><img src="./../static/images/product/28MQ780_3.png" alt="오디세이 게이밍 모니터 60.4 cm 블랙 우측 30도"></a></span></li>
						<li><span><a href="javascript:;"><img src="./../static/images/product/28MQ780_4.png" alt="오디세이 게이밍 모니터 60.4 cm 블랙 모서리 디테일"></a></span></li>
						<li><span><a href="javascript:;"><img src="./../static/images/product/28MQ780_5.png" alt="오디세이 게이밍 모니터 60.4 cm 블랙 피봇"></a></span></li>
						</ol>
			</div>
			
           </div>
	</div>
<script>
	var firstLoding = 1;
	$(document).ready(function(){
		
		$('.prod-image-navi').on('init', function(){
			if(device.val == 'p') {
				var btnPrev = $('.prod-image-navi .slick-prev');
				btnPrev.on('click', function(){
					if($('.prod-image-navi .slick-current').data('slick-index') < 6) $('.prod-image-navi').slick("slickGoTo", 0);
				});
			}
		});
		
		$('.prod-image-view').filter(':not(.slick-initialized)').slick({
			accessibility:false,
	        slidesToShow: 1,
	        slidesToScroll: 1,
	        arrows: false,
	        infinite:false,
	        lazyLoad: 'ondemand',
	        responsive: [
	            {
	                breakpoint: 801,
	                settings: {
	                    slidesToShow: 1,
	                    slidesToScroll: 1,
	                    fade:false,
	                    arrows: false,
						asNavFor: '.prod-image-navi',
	                }
	            }
	        ]
		});
		$('.prod-image-navi').filter(':not(.slick-initialized)').slick({
			infinite:false,
	        accessibility:false,
	        touchMove:false,
	        waitForAnimate:true,
	        slidesToShow: 6,
	        slidesToScroll: 6,
	        dots: false,
	        vertical: true,
	        verticalSwiping: true,
	        responsive: [
	            {
	                breakpoint: 1280,
	                settings: {
	                    slidesToShow:6,
	                    dots: false
	                }
	            },
	            {
	                breakpoint: 801,
	                settings: {
	                    slidesToShow:1,
	                    slidesToScroll:1,
	                    arrows: false,
	                    dots: true,
	                    vertical: false,
	                    verticalSwiping: false,
						asNavFor: '.prod-image-view',
	                }
	            }
	        ]
		});
		
		$('.prod-image-view').slick('refresh');
		$('.prod-image-view').slick('refresh');
		
		$('.prod-image-navi .slick-slide').on('click', function (e, slick, currentSlide, nextSlide) {
			if($('.btn360').hasClass('act')){
				$('.btn360').trigger('click');
			}
	    });
		
		//초기 비디오 표시 제어
		/* if($('.prod-image-view img').eq(0).data('img-tp') == '10'){
			$(".btn-videopop").hide();
		} */
		
		//360도
		$('.btn360').on('click',function(){
		    var $self = $(this);
		    if($self.hasClass("act") ){
		    	$self.focus();
		    	$self.removeClass('act');
		      	$(".rotate360").removeClass('shower');
		      	$(".btnBig").show(); //확대보기 노출
		    }else {
		    	if(firstLoding) {
		    		$('.btn360').prop('disabled', true);
		    		setMySpriteSpin();
		    	}
		    	$(".rotate360").attr('tabindex', '0').focus();
		    	$(".rotate360").addClass('shower');
		    	$self.addClass('act');
		    	$(".rotate360 .spritespin-stage").css('background-size', "100% 100%");
		    	$(".btnBig").hide(); //확대보기 숨김
		    }
		    
		    
	    });
		
		$('.prod-image-navi li').on('click', function(){
			var _this = $(this);
			var clickIdx = _this.data('slick-index');
			if(device.val == 'p') {
				var activeSlick = _this.closest('.slick-track').find('.slick-active');
				var total = _this.parent().find('li').length;
				
				$('.prod-image-navi').slick("slickSetOption", "slidesToScroll", 1);
				
				if(total - clickIdx < 4) {
					$('.prod-image-navi').slick('slickGoTo',total - 6);
				} else {
					activeSlick.each(function(idx){
						var $this = $(this);
						if(clickIdx == $this.data('slick-index')) {
							if(idx == '5' || idx == '0') {
								$('.prod-image-navi').slick('slickGoTo', clickIdx - 2);
							}
						}
					})
				}
				$('.prod-image-navi').slick("slickSetOption", "slidesToScroll", 6);
			}
			_this.attr("aria-selected","true").siblings().attr("aria-selected","false");
			$('.prod-image-view').slick('slickGoTo', clickIdx);
			if($('.btn360').length > 0) {
				$(".btnBig").show(); //확대보기 노출
			}
		});

		$('.prod-image-view').on('afterChange',  function(event, slick, currentSlide) {
			var _this = $('.prod-image-navi li:eq('+currentSlide+')');
			var clickIdx = currentSlide;
			
			if(device.val == 'p') {
				var activeSlick = _this.closest('.slick-track').find('.slick-active');
				var total = _this.parent().find('li').length;
				
				$('.prod-image-navi').slick("slickSetOption", "slidesToScroll", 1);
				
				if(total - clickIdx < 4) {
					$('.prod-image-navi').slick('slickGoTo',total - 6);
				} else {
					activeSlick.each(function(idx){
						var $this = $(this);
						if(clickIdx == $this.data('slick-index')) {
							if(idx == '5' || idx == '0') {
								$('.prod-image-navi').slick('slickGoTo', clickIdx - 2);
							}
						}
					})
				}
				$('.prod-image-navi').slick("slickSetOption", "slidesToScroll", 6);
			}
			_this.attr("aria-selected","true").siblings().attr("aria-selected","false");
		});
		
		//이미지 확대 버튼
		$('.btnBig, .btnVideo', goodsMain.vGoodsWrapId).on('click',function(e){
			var imgTpCd;
			var imgClass;
			var imgSeq;
			var arrImgTpCd;
			if($(this).hasClass('btnVideo')){
				imgSeq = $('.slick-list li.slick-current img', goodsMain.vGoodsWrapId).data('seq');
				imgTpCd = '30';
				imgClass = 'popup-comm-gallery'; //'popup-comm-video';
			}else{
				if($('.btn360 ', goodsMain.vGoodsWrapId).hasClass('act')){
					imgTpCd = '20';
					imgClass = 'popup-comm-img360';
				}else{
					imgSeq = $(".prod-image-view").find('.slick-current img').data('seq');
					imgTpCd = '10';
					imgClass = 'popup-comm-gallery';
				}
			}
			
			var options = {
				url : goodsMain.fnAjaxUrl("imgDetailPop")
				, data : {
					imgTpCd : imgTpCd
					,arrImgTpCd : arrImgTpCd
					, goodsId : $("input[name=goodsId]", goodsMain.vGoodsWrapId).val()
					, imgSeq : imgSeq
				}
				, type: 'POST'
				, dataType : "html"
				, done : function(data) {
					goodsMain.fnOpenLayer($("#popupLayer").addClass(imgClass), data);
				}
			};
			ajax.call(options);
        });

	});
	
	function setMySpriteSpin() {
		$("#mySpriteSpin").spritespin({
			  // path to the source images.
			  source: [
			  	
			  ],
			  animate : false,
			  renderer : "background",
			  sense: -1,
			  responsive: true,
			  onComplete:function(){
				  $('.btn360').prop('disabled', false);
				  firstLoding = 0;
		      },
		      // onProgress 추가 
              onProgress: function(e, s) {
                var p = s.progress.percent;
                $(".spritespin-progress-label").text(p + "%");
                $(".spritespin-progress-bar").width(p + "%");
                if (p === 100) {
                    $(".spritespin-progress").fadeOut(300);
                }
              }
              //  onProgress 추가 
              // 로딩시 자동 롤링
		});
	}

</script></div>
					<!-- 제품 이미지 슬라이드 -->
					<!-- 제품 정보영역 -->
					<div class="itm-information">
					<link rel="stylesheet" href="/static/css/homefitness.css">
					<script src="/static/script/goods/goods-detail-view.js"></script>
					<script src="/static/script/order/orderPay.js"></script>
					<script type="text/javascript">
						$(document).ready(function () {
							var agent = navigator.userAgent.toLocaleLowerCase();
							if(agent.indexOf('iphone') > -1 || agent.indexOf('ipad') > -1) {
								$("#appDownDiv").css("display","none");
							}
							if($(".itm-option-choice").length > 0 && $(".itm-option-choice").html().trim() == ""){
								$(".itm-option-choice").hide();
							}
							if($("#membership-info").length > 0){
								var goods = new Array();
								var mainGoods = {
									goodsId : "28MQ780"
									, mdlCode : '28MQ780'
									,price : $('.pd-total-price:first', goodsMain.vGoodsWrapId).data("price")
									,cnt : 1
								}
								goods.push(mainGoods);
								
								var options = {
										url : goodsMain.fnAjaxUrl("membershipPolicy"),
										data : {
											goodsListStr : JSON.stringify(goods),
											bespokeMinimumPrice : "0",
											cpDiscountPrice : $("#lastDiscountPrice").data("price")
										},
										type: 'POST',
										done : function(data) {
				
											if($("#membership-ptn-top").length > 0){
												$("#membership-ptn-top").text(fnComma(data.totalPoint)+ ' 포인트');
											}
											if($(".icon-membershipClass").length > 0 && data.membershipGrd){
												$("#membership"+data.membershipGrd).show();
												$(".grd-txt").show();
											}
										}
									}
								ajax.call(options);
								
							}
							
				
							var isReady = $(goodsMain.vGoodsWrapId).data("goods-id") == $("input[name=goodsId]", goodsMain.vGoodsWrapId).val();
							if(!isReady){
								$("#location-prd-nm").text($(".itm-info-detail").data('goods-nm'));
								$("#goods-title-text").text($(".itm-info-detail").data('goods-nm'));
								//옵션 변경
								$(goodsMain.vGoodsWrapId).data("goods-id", "28MQ780");
							}
							
							
							
							//할인율 표시 
							
							/* var discountRateYn = $("#discountRateYn").val();					
							var discountRate = $('#discountRate').val() + "% off";			
							if(discountRateYn == 'Y'){
								if($('input[name="stGbCd"]').val() == 10){
									$('#discountRateTag').text(discountRate);
								}
								
							} */
							
							//아울렛 클래스 주기
							var outletFlgYn = $("#outletFlgYn").val();
							if(outletFlgYn == 'Y'){
								$('.itm-buy-area').addClass('outlet');					
							}			
							
							//비교하기 버튼 클래스 추가
							$(".link-compare-i").addClass(isCompareDataStorageGoods("28MQ780")?'disabled':'');
								
						});
				
						$("#membershipDropBtn").on('click', function(){
							if(!$(this).hasClass('open')){
								setMembershipInfo();
							}
						});
				
						function goPdSohoLogin() {
							location.href = '/sec/' + "member/indexLogin/?returnUrl=" + location.pathname;
						}
						
						function setMembershipInfo(){
							var goods = new Array();
				
							var mainGoods = {
								goodsId : "28MQ780"
								, mdlCode : '28MQ780'
								,price : $('.pd-total-price:first', goodsMain.vGoodsWrapId).data("price")
								,cnt : $("#countPrd").val() ? $("#countPrd").val() : 1
							};			
							
							goods.push(mainGoods);
				
				
							$.each($(".option>.list-prd-optional>ul>li"), function(){
								var orgOptPrice = $(this).find(".box-itm-option").data("price");
								var optQty = $(this).find(".number").val(); // 옵션수량
								var optMdlCode = $(this).find(".box-itm-option").data("mdl-code");
								var optGoodsId = $(this).find(".box-itm-option").data("option-id");
								var optionGoods = {
									goodsId : optGoodsId
									,mdlCode : optMdlCode
									,price : orgOptPrice
									,cnt : $(this).find(".number").val()
								}
								goods.push(optionGoods);
							});
				
							var options = {
									url : goodsMain.fnAjaxUrl("membershipPolicy"),
									data : {
										goodsListStr : JSON.stringify(goods),
										bespokeMinimumPrice : "0",
										cpDiscountPrice : $("#lastDiscountPrice").data("price")
									},
									type: 'POST',
									done : function(data){
										//포인트 desc 노출 영역
										if($("#membership-ptn-top").length > 0){
											$("#membership-ptn-top").text(fnComma(data.totalPoint)+ ' 포인트');
				
											//html set
											if(data.isLogin){
												//로그인
												msg = " 포인트 "+ fnComma(data.totalPoint) + " (";
												if(data.addRate * 1 > 0){
													msg += "기본 "+data.basicRate+"% + 추가 "+ data.addRate + "%";
												}else{
													msg += "기본 "+data.basicRate+"%";
												}
				
												if(data.aplPoint != '0'){
													msg += " + 금액대별 포인트 " + fnComma(data.aplPoint) + " ";
												}
				
												if(data.mdlAddPoint != '0'){
													msg += " + 상품별 포인트 " + fnComma(data.mdlAddPoint) + " ";
												}
				
												msg += ")";
				
												$(".point-member .membership-ptn").text(msg);
												if($("#membershipGrd").length > 0){
													$("#membershipGrd").text(data.membershipGrdNm);
													$("#limitPoint").text(fnComma(data.limitPoint));
												}
											}else{
												//비로그인
												var msg = " 포인트 "+ fnComma(data.totalPoint) + " (기본 "+data.basicRate+"%";
												if(data.aplPoint != '0'){
													msg += " + 금액대별 포인트 " + fnComma(data.aplPoint) + " ";
												}
												if(data.mdlAddPoint != '0'){
													msg += " + 상품별 포인트 " + fnComma(data.mdlAddPoint) + " ";
												}
				
												msg += ")";
												$(".point-nomember .membership-ptn").text(msg);
											}
										}
									}
								}
							ajax.call(options);
										
						}
						
						// 매장 픽업 매장 선택 완료
						function setChoosenPickupStore(data, pickupCount, buyNowYn){
							
							$('.select-store').show();
							// 소상공인몰 매장픽업Only일때 팝업 노출 시작
							$('.type01').show();
							$('.type02').css("display", "none");
							// 소상공인몰 매장픽업Only일때 팝업 노출 끝
							$('.select-store .box-txt ul>li').text(data.plazaNm);
							//$('.select-store .box-txt').find('#store-addr').text("(" + data.roadAddr + ")");
							$('.select-store .box-txt').find('#store-addr').text("(" + storePickupManager.genFullAddress(data) + ")");
							$('#countPrd').val(pickupCount);
							$('#pckStrNo').val(data.plazaNo);
							$(".goods-count > .count-prd").trigger('change');
				
							// PD페이지 상품 수량 버튼 비활성화
							$('#pd-goods-count-miner').css("pointer-events", "none");
							$('#pd-goods-count-plus').css("pointer-events", "none");
							$(".goods-count").addClass("disabled");
							$(".goods-count > .count-prd").prop("disabled", true);
				
							if($("#dlvrGenYn").val() == 'Y') {
								//소상공인몰 매장픽업 + 웹 재고 가능한 상품만 장바구니 버튼 활성화
								if($("input[name=stGbCd]").val() != '50') {
									// PD페이지 장바구니 버튼 비활성화
									$("#btnCart").addClass("btn-type6");
									$("#btnCart").removeClass("btn-type1");
									$("#btnCart").prop("disabled", true);
								}
								// PD페이지 선물하기 버튼 비활성화
								$("#btnPresent").addClass("btn-disable");
								$("#btnPresent").prop("disabled", true);
							}
							
							if(buyNowYn == 'Y') {
								// goodsDetail.fnValidMinCount 내용
								var minQty = $("#countPrd").data('min-ord-qty');
				
								if(minQty && minQty > 1 && $("#countPrd ").val() < minQty){
									let alertData = {
										title: ""
										, content : "수량은 "+minQty+"개 이상 선택되어야 합니다."
										, callback : function(){
											$("#pd-goods-count-miner").focus();
										}
										, btnText : "확인"
									};
									commonAlert(alertData);
									openLayer('commonAlert');
									return false;
								}
								
								$("input[name=nowBuyYn]").val("Y");
				
								
								if($("#netfunnelYn").val() == "Y" || $("#netfunnelYn").val() == "ALL"){
									NetFunnel_Action({action_id : $("#netfunnelStGrp").val() + '_checkout'},function(ev, ret){
										if($("input[name=stGbCd]").val() == '10' && $("input[name=winePickupGoodsYn]").val() != null && $("input[name=winePickupGoodsYn]").val() =='Y' ){
											fnWinePickupCheckForPickUp(fnReqDataForPickUp());
										} else {
										fnCartNowBuyForPickUp(fnReqDataForPickUp());
										}
									});
								}else{
									if($("input[name=stGbCd]").val() == '10' && $("input[name=winePickupGoodsYn]").val() != null && $("input[name=winePickupGoodsYn]").val() =='Y' ){
										fnWinePickupCheckForPickUp(fnReqDataForPickUp());
									} else {
									fnCartNowBuyForPickUp(fnReqDataForPickUp());
									}
								}
							}
						}
						
						function fnWinePickupCheckForPickUp(reqData) {
							if( $("#dlvrPckYn").val() != 'Y' || $("#dlvrGenYn").val() == 'Y') {
								var alertData = {
										 title: ""
										,content : "상품을 준비중입니다."
										,btnText : "확인"
									};
									commonAlert(alertData);
									openLayer('commonAlert');
									return false;
							} else {
								var loginCheck = {
									url : goodsMain.fnAjaxUrl("loginCheck")
									, type: 'POST'
									, done : function(data) {
										if(!data.isLogin) {
											var urlNm = $(".itm-info-detail", goodsMain.vGoodsWrapId).data("url-nm");
											location.href = $(goodsMain.vGoodsWrapId).data("ctpath")  + "member/indexLogin/?returnUrl="+ $(goodsMain.vGoodsWrapId).data("ctpath") + urlNm + "/all-" + urlNm + "/";
												return;
										} else {
											var cerificationCheck = {
													url : goodsMain.fnAjaxUrl("cerificationCheck", "xhr/pf/")
													, type: 'POST'
													, done : function(data) {
														if(data.adultCerification == "F"){//계정 성인체크 여부가 없을때
															let alertData = {
																		 title: "alert",
																		 content: "로그인이 필요합니다."
																	 };
															alertData.callback = function(){
																var urlNm = $(".itm-info-detail", goodsMain.vGoodsWrapId).data("url-nm");
																location.href =  $(goodsMain.vGoodsWrapId).data("ctpath")  + "member/indexLogin/?returnUrl=" + $(goodsMain.vGoodsWrapId).data("ctpath") + urlNm + "/all-" + urlNm + "/";
															}
																 commonAlert(alertData);
																 openLayer('commonAlert');
																 return;
														} else if ( data.adultCerification == "N" || data.kcbAdultCerification == "F" || data.kcbAdultCerification == "N" ) { // 계정 성인체크 여부가 N일때 (미성년) || KCB 본인 인증 안했을때 || KCB 본인 인증 했으나 미성년일때
															let alertData = {
																	title: "본인인증 시 19세 미만자",
																	content: "만 19세 이상만 구매할 수 있습니다."
																	 };
															alertData.callback = function(){
																var urlNm = $(".itm-info-detail", goodsMain.vGoodsWrapId).data("url-nm");
																location.href =  $(goodsMain.vGoodsWrapId).data("ctpath") + urlNm + "/all-" + urlNm + "/";
															}
																 commonAlert(alertData);
																 openLayer('commonAlert');
																 return;
															 } else{
																fnCartNowBuyForPickUp(reqData);
															 }
													}
												};
												ajax.call(cerificationCheck);
										}
									}
								};
								ajax.call(loginCheck);	
							}
						}
						//goodsDetail.fnReqData 참고
						function fnReqDataForPickUp(){
							
							var reqData = $("#goodsCartForm").serializeJson();
							
							// 사은품
							var freebieArr = new Array();
				
							$.each($(".freebies .dropdownMenu", goodsMain.vGoodsWrapId), function(){
								if($(this).find('input:checked').next('label').data('key') == 'noChoice'){
									var prmt = $(this).find('.box-itm-option').eq(0);
									var str = prmt.data("goodsid") + ":" +prmt.data("prmtno") +":"+"0";
									freebieArr.push(str);
								}
							})
				
							$.each($(".freebies .dropdownMenu", goodsMain.vGoodsWrapId).siblings('.list-prd-optional').find('.box-itm-option'), function(){
								if($(this).data("goodsid")){
									var str = $(this).data("goodsid") + ":" + $(this).data("prmtno") +":" + $(this).data("freeno");
									freebieArr.push(str);
								}
							})
							reqData.frbInfo = freebieArr;
				
							// 옵션상품
							var goodsIds = new Array();
							var buyQtys = new Array();
							goodsIds.push(reqData.goodsIds);
							buyQtys.push(reqData.buyQtys);
							$.each($(".option .list-prd-optional", goodsMain.vGoodsWrapId).find('.box-itm-option'), function(){
								goodsIds.push($(this).data("option-id"));
								buyQtys.push($(this).find(".number").val());
							})
				
							// reqData.goodsIds = goodsIds;
							// reqData.buyQtys = buyQtys;
							
							if($("#goodsFnetCountLimitForm").find("input[name=goodsIds]").val() === null || $("#goodsFnetCountLimitForm").find("input[name=goodsIds]").val() === undefined || $("#goodsFnetCountLimitForm").find("input[name=goodsIds]").length == 0){
								reqData.goodsIds = goodsIds;
								reqData.buyQtys = buyQtys;
							}else{
								reqData.goodsIds = $("#goodsFnetCountLimitForm").find("input[name=goodsIds]").val();
								reqData.buyQtys = $("#goodsFnetCountLimitForm").find("input[name=buyQtys]").val();
								$("#goodsFnetCountLimitForm").remove();
							}
							
							if( $('#optRegularDel').is(':checked') ) {
								reqData.rglrDlvrYn = 'Y';
								reqData.rglrDlvrCycl = $('.itm-radiobtn-list input[name="itm-deliver-type"]:checked').data().key;
							}
						
							return reqData;
						}
						
						//goodsDetail.fnCartNowBuy 참고
						function fnCartNowBuyForPickUp(reqData){
							if ($("input[name=stGbCd]").val() == '10' && $("#dlvrPckYn").val() == 'Y' && $("#winePickupGoodsYn").val() != 'Y' && $("#thirdPartyYn").val() == 'Y') {
								var alertData = {
										 title: ""
										,content : "와인 상품을 준비중 입니다."
										,btnText : "확인"
									};
									commonAlert(alertData);
									openLayer('commonAlert');
									return false;
							}
							
							if(($("input[name=stGbCd]").val() == '10' || $("input[name=stGbCd]").val() == '80') && $("#shop-storeYN").val() == 'Y' && $("#dlvrPckYn").val() == 'Y' && $("#dlvrGenYn").val() != 'Y') {
								var alertMsg = "매장픽업/빠른배송 상품은 매장을 선택 후 바로구매가 가능합니다.";
								
								if($("#omsSendYn").val() != 'N') {
									alertMsg += "<br/>상품을 준비중입니다.";
								}
								
								
								if (reqData.pckStrNo === null || reqData.pckStrNo === undefined || $.trim(reqData.pckStrNo).length == 0) {
									var alertData = {
											 title: ""
											,content : alertMsg
											,callback : openPopDlvrPck
											,btnText : "확인"
										};
										commonAlert(alertData);
										openLayer('commonAlert');
										return false;
								}
							}
							
							$('#outCheck').val('Y');
							// 트레이드인 체크 후 바로구매 시 팝업
										if($("input[name=goodsOrdTpCd]").val() == 'TRD' || $("input[name=goodsOrdTpCd]").val() == 'CETRD' /* $(frontConstants.TRADE_IN */) {
								
								var nowBuyOptions = {
									url : goodsMain.fnAjaxUrl("insertCart", "xhr/order/")
									, data : reqData
									, done : function(data){
										// GMQDisplay닷컴 큐커식품관 비회원 로그인 구매 불가
										if(data.qookerNonMemYn != null && data.qookerNonMemYn != '' && data.qookerNonMemYn == 'Y'){
											let alertData = {
													content : data.exMsg
												};
											alertData.callback = function(){
												location.href = "/sec/member/indexLogin/?returnUrl=" + location.pathname;
											}
											commonAlert(alertData);
											openLayer('commonAlert');
											return;
										} else {
										var options2 = {
											url : goodsMain.fnAjaxUrl("loginCheck")
											, type: 'POST'
											, done : function(data) {
												if(!data.isLogin) {
													let confirmData = {
														content : "로그인 후 바로구매 가능 합니다<br/>로그인 하시겠습니까?"
															,okBtnText : "확인"
															,cancelBtnText : "취소"
													};
													commonConfirm(confirmData);
													openLayer('commonConfirm');
													
													var isTrdLoginPopupClicked = false;
													
													$("#closeCommonConfirmBtn").hide();
													
													$("#commonConfirmOkBtn").on('click' , function(){
														if($("#pdAlertYn").val() == "Y"){
															var msgOptions = {};
															$.extend(msgOptions, { content : $("#pdAlertMsg").val(), yes : '확인' });
															goodsMain.fnOpenLayer($(".popup-msg"), $("#popupMsgTempl").render(msgOptions)).find('a').off().on('click', function() {
																var _ = $(this)
																	, layerClass = 'div.layer-pop';
																location.href=$(goodsMain.vGoodsWrapId).data("ctpath") + "member/indexLogin/?returnUrl="+$(goodsMain.vGoodsWrapId).data("ctpath")+"order/";
															});
														}else{
															location.href=$(goodsMain.vGoodsWrapId).data("ctpath") + "member/indexLogin/?returnUrl="+$(goodsMain.vGoodsWrapId).data("ctpath")+"order/";
														}
														return false;
													});
													
													$("#commonConfirmCancelBtn").on('click' , function(){
														return false;
													});
												} else {
													if($("#pdAlertYn").val() == "Y"){
														var msgOptions = {};
														$.extend(msgOptions, { content : $("#pdAlertMsg").val(), yes : '확인' });
														goodsMain.fnOpenLayer($(".popup-msg"), $("#popupMsgTempl").render(msgOptions)).find('a').off().on('click', function() {
															var _ = $(this)
																, layerClass = 'div.layer-pop';
															
																location.href = $(goodsMain.vGoodsWrapId).data("ctpath") + "order/";
														});
													}else{
															location.href = $(goodsMain.vGoodsWrapId).data("ctpath") + "order/";
													}
												}
											}
										};
										ajax.call(options2);
										return false;
										}
									},
											error : function(response, status, error) {
												var alertData = {
															title : "",
															content : "오류가 발생하였습니다.",
															callBack : "",
															btnText : "확인"
													};
												commonAlert(alertData);
												openLayer('commonAlert');
												return false;
											},
											beforeSend : function(xhr) {
												xhr.setRequestHeader("ajax", true);
											},
											complete : function() {
											}
								};
								ajax.call(nowBuyOptions);
								
								return false;
							}
							
							// My 갤럭시 클럽 체크 후 바로구매 시 팝업
							if($("input[name=goodsOrdTpCd]").val() == 'GC' || $("input[name=goodsOrdTpCd]").val() == 'TRDGC') {
								var nowBuyOptions = {
									url : goodsMain.fnAjaxUrl("insertCart", "xhr/order/")
									, data : reqData
									, done : function(data){
										// GMQDisplay닷컴 큐커식품관 비회원 로그인 구매 불가
										if(data.qookerNonMemYn != null && data.qookerNonMemYn != '' && data.qookerNonMemYn == 'Y'){
															let alertData = {
													content : data.exMsg
																	};
											alertData.callback = function(){
												location.href = "/sec/member/indexLogin/?returnUrl=" + location.pathname;
													}
															commonAlert(alertData);
															openLayer('commonAlert');
															return;
									} else {
										var options2 = {
											url : goodsMain.fnAjaxUrl("galaxyClubCheck")
											, type: 'POST'
											, data : reqData
											, done : function(data) {
												if(!data.isLogin) {
													let confirmData = {
														content : "로그인 이후 바로구매 가능 합니다<br/>로그인 하시겠습니까?"
															,okBtnText : "확인"
															,cancelBtnText : "취소"
													};
													commonConfirm(confirmData);
													openLayer('commonConfirm');
													
													var isTrdLoginPopupClicked = false;
													
													$("#closeCommonConfirmBtn").hide();
													
													$("#commonConfirmOkBtn").on('click' , function(){
														if($("#pdAlertYn").val() == "Y"){
															var msgOptions = {};
															$.extend(msgOptions, { content : $("#pdAlertMsg").val(), yes : '확인' });
															goodsMain.fnOpenLayer($(".popup-msg"), $("#popupMsgTempl").render(msgOptions)).find('a').off().on('click', function() {
																var _ = $(this)
																	, layerClass = 'div.layer-pop';
																var returnUrl = $("input[name=returnUrl]").val();
																location.href=$(goodsMain.vGoodsWrapId).data("ctpath") + "member/indexLogin/?returnUrl="+returnUrl;
															});
														}else{
															var returnUrl = $("input[name=returnUrl]").val();
															location.href=$(goodsMain.vGoodsWrapId).data("ctpath") + "member/indexLogin/?returnUrl="+returnUrl;
														}
														return false;
													});
													
													$("#commonConfirmCancelBtn").on('click' , function(){
														return false;
													});
												} else {
													// 멤버십 가입 여부
													if(data.membershipNo != null){
														// 캠페인 가입 여부
														if(data.isGalaxyCmpnYn != null){
															if(data.isGalaxyCmpnYn == 'N' && data.prgrStatCd == null){
																// 주문화면
																location.href = $(goodsMain.vGoodsWrapId).data("ctpath") + "order/";
															}else if(data.isGalaxyCmpnYn == 'N' && data.prgrStatCd != null){
																if(data.prgrStatCd == '01'){// 가입상태:접수
																	let confirmData = {
																			content : "<span class='blue-color'>" + data.clubNm + "</span>에<br class='pc-ver'> 가입신청이 진행 중이므로<br class='pc-ver'> My 갤럭시 클럽 대상 제품을<br class='pc-ver'> 추가 구매할 수 없습니다."
																			,cancelBtnText : "닫기"
																	};
																	commonConfirm(confirmData);
																	openLayer('commonConfirm');
																	
																	$("#commonConfirmOkBtn").hide();
																	
																	$("#commonConfirmCancelBtn").on('click' , function(){
																		return false;
																	});
																}else if(data.prgrStatCd == '02'){// 가입상태:가입대기
																	let confirmData = {
																		content : "<span class='blue-color'>" + data.clubNm + "</span>에<br class='pc-ver'> 가입신청이 완료되었으므로<br class='pc-ver'> My 갤럭시 클럽 대상 제품을<br class='pc-ver'> 추가 구매할 수 없습니다."
																			,cancelBtnText : "닫기"
																	};
																	commonConfirm(confirmData);
																	openLayer('commonConfirm');
																	
																	$("#commonConfirmOkBtn").hide();
																	
																	$("#commonConfirmCancelBtn").on('click' , function(){
																		return false;
																	});
																}else if(data.prgrStatCd == '03'){// 가입상태:가입완료
																	let confirmData = {
																			content : "<span class='blue-color'>" + data.clubNm + "</span>에<br class='pc-ver'> 가입이 완료되었으므로<br class='pc-ver'> My 갤럭시 클럽 대상 제품을<br class='pc-ver'> 추가 구매할 수 없습니다."
																			,cancelBtnText : "닫기"
																	};
																	commonConfirm(confirmData);
																	openLayer('commonConfirm');
																	
																	$("#commonConfirmOkBtn").hide();
																	
																	$("#commonConfirmCancelBtn").on('click' , function(){
																		return false;
																	});
																}	
															}else{
																let confirmData = {
																	content : "이미 <span class='blue-color'>" + data.clubNm + "</span>에<br class='pc-ver'> 포함되어 있는 제품을 구매하셨습니다.<br>"
																			+ "동일 " + data.clubNm + "에<br class='pc-ver'> 포함되어 있는 제품은<br class='pc-ver'> 회원 1인당 1대만 구매 가능합니다."
																	,cancelBtnText : "닫기"
																};
																commonConfirm(confirmData);
																openLayer('commonConfirm');
																
																$("#commonConfirmOkBtn").hide();
																
																$("#commonConfirmCancelBtn").on('click' , function(){
																	return false;
																});
															}
														}
													}else{
														let confirmData = {
																content : "My 갤럭시 클럽 제품을 구매하시려면<br class='pc-ver'> 멤버십 회원으로 먼저 가입하셔야 합니다.<br>멤버십 회원으로 가입 하시겠습니까?"
																,okBtnText : "확인"
																,cancelBtnText : "취소"
														};
														commonConfirm(confirmData);
														openLayer('commonConfirm');
														
														$("#commonConfirmOkBtn").on('click' , function(){
															if($("#pdAlertYn").val() == "Y"){
																var msgOptions = {};
																$.extend(msgOptions, { content : $("#pdAlertMsg").val(), yes : '확인' });
																goodsMain.fnOpenLayer($(".popup-msg"), $("#popupMsgTempl").render(msgOptions)).find('a').off().on('click', function() {
																	var _ = $(this)
																		, layerClass = 'div.layer-pop';
																	location.href="/sec/membership/point/";
																});
															}else{
																location.href="/sec/membership/point/";
															}
															return false;
														});
														
														$("#commonConfirmCancelBtn").on('click' , function(){
															return false;
														});
													}
												}
											}
										};
										ajax.call(options2);
										return false;
										}
									},
										error : function(response, status, error) {
												var alertData = {
														title : "",
														content : "오류가 발생하였습니다.",
														callBack : "",
														btnText : "확인"
													};
												commonAlert(alertData);
												openLayer('commonAlert');
												return false;
										},
										beforeSend : function(xhr) {
												xhr.setRequestHeader("ajax", true);
										},
										complete : function() {
										}
								};
								ajax.call(nowBuyOptions);
								
								return false;
							}
							
							var nowBuyOptions = {
								url : goodsMain.fnAjaxUrl("insertCart", "xhr/order/")
								, data : reqData
								, done : function(data){
										// GMQDisplay닷컴 큐커식품관 비회원 로그인 구매 불가
									if(data.qookerNonMemYn != null && data.qookerNonMemYn != '' && data.qookerNonMemYn == 'Y'){
										let alertData = {
																	content : data.exMsg
																};
														alertData.callback = function(){
											location.href = "/sec/member/indexLogin/?returnUrl=" + location.pathname;
														}
														commonAlert(alertData);
														openLayer('commonAlert');
														return;
										} else {
									if ( (reqData.pckStrNo !== null && reqData.pckStrNo !== undefined && $.trim(reqData.pckStrNo).length > 0 ) || reqData.rglrDlvrYn != null || data.isHomefitnessPrivateGoodsYn == "Y" 
										|| (($("input[name=stGbCd]").val() == '50' || $("input[name=stGbCd]").val() == '60') && $("input[id=disp2ClsfEnNm]").val() == 'soho')) {
										var options2 = {
												url : goodsMain.fnAjaxUrl("loginCheck")
												, type: 'POST'
												, done : function(data) {
													if(!data.isLogin) {
														if($("#pdAlertYn").val() == "Y"){
															var msgOptions = {};
															$.extend(msgOptions, { content : $("#pdAlertMsg").val(), yes : '확인' });
															goodsMain.fnOpenLayer($(".popup-msg"), $("#popupMsgTempl").render(msgOptions)).find('a').off().on('click', function() {
																var _ = $(this)
																	, layerClass = 'div.layer-pop';
																location.href=$(goodsMain.vGoodsWrapId).data("ctpath") + "member/indexLogin/?returnUrl="+$(goodsMain.vGoodsWrapId).data("ctpath")+"order/";
															});
														}else{
															location.href=$(goodsMain.vGoodsWrapId).data("ctpath") + "member/indexLogin/?returnUrl="+$(goodsMain.vGoodsWrapId).data("ctpath")+"order/";
														}
														
													} else {
														if($("#pdAlertYn").val() == "Y"){
															var msgOptions = {};
															$.extend(msgOptions, { content : $("#pdAlertMsg").val(), yes : '확인' });
															goodsMain.fnOpenLayer($(".popup-msg"), $("#popupMsgTempl").render(msgOptions)).find('a').off().on('click', function() {
																var _ = $(this)
																	, layerClass = 'div.layer-pop';
																location.href = $(goodsMain.vGoodsWrapId).data("ctpath") + "order/";
															});
														}else{
															location.href = $(goodsMain.vGoodsWrapId).data("ctpath") + "order/";
														}
													}
												}
											};
											ajax.call(options2);
										
									} else {
										if($("#pdAlertYn").val() == "Y"){
											var msgOptions = {};
											$.extend(msgOptions, { content : $("#pdAlertMsg").val(), yes : '확인' });
											goodsMain.fnOpenLayer($(".popup-msg"), $("#popupMsgTempl").render(msgOptions)).find('a').off().on('click', function() {
												var _ = $(this)
													, layerClass = 'div.layer-pop';
												location.href = $(goodsMain.vGoodsWrapId).data("ctpath") + "order/";
											});
										}else{
											location.href = $(goodsMain.vGoodsWrapId).data("ctpath") + "order/";
										}
									}
										_satellite.track('buy now');
									}
								},
									error : function(response, status, error) {
											var alertData = {
													title : "",
													content : "오류가 발생하였습니다.",
													callBack : "",
													btnText : "확인"
												};
											commonAlert(alertData);
											openLayer('commonAlert');
											return false;
									},
									beforeSend : function(xhr) {
											xhr.setRequestHeader("ajax", true);
									},
									complete : function() {
									}
							};
							
							var checkGoodsLimitOptions = {
								url : goodsMain.fnAjaxUrl("limit", "xhr/order/check/goods/")
								, data : reqData
								, done : function(data) {
									ajax.call(nowBuyOptions);
								}
								
							};
							
							ajax.call(checkGoodsLimitOptions);
						}
						
						// 매장 픽업 선택 매장 삭제 (x버튼 클릭시)
						$('.select-store .box-txt .delete').on('click', function() {
							//var that =
							var msgOptions = {};
							$.extend(msgOptions, { content : '픽업 매장을 삭제 하시겠습니까?', yes : '확인', no : '취소' });
				
							goodsMain.fnOpenLayer($(".popup-msg"), $("#popupMsgTempl").render(msgOptions)).find('a').off().on('click', function() {
								var _ = $(this)
									, layerClass = 'div.layer-pop';
				
								// 취소
								if (_.hasClass('btn-type1')) {
				
								// 픽업 매장 삭제
								} else if (_.hasClass('btn-type2')) {
									$('.select-store').css("display", "none");
									// 2022.11.09 소상공인몰 매장픽업Only일때 팝업 노출 시작
									$('.type01').css("display", "none");
									$('.type02').show();
									// 2022.11.09 소상공인몰 매장픽업Only일때 팝업 노출 끝
									$('#countPrd').val("1");
									$('#pckStrNo').val("");
									$(".goods-count > .count-prd").trigger('change');					
				
									if($("#dlvrGenYn").val() == 'Y') {
										// PD페이지 상품 수량 버튼 활성화
										$('#pd-goods-count-miner').css("pointer-events", "auto");
										$('#pd-goods-count-plus').css("pointer-events", "auto");
										$(".goods-count").removeClass("disabled");
										$(".goods-count > .count-prd").prop("disabled", false);
										
										// PD페이지 장바구니 버튼 활성화
										$("#btnCart").addClass("btn-type1");
										$("#btnCart").removeClass("btn-type6");
										$("#btnCart").prop("disabled", false);
										
										// PD페이지 선물하기 버튼 활성화
										 $("#btnPresent").removeClass("btn-disable");
										$("#btnPresent").prop("disabled", false);
									}
								}
				
								goodsMain.fnCloseLayer(_.closest(layerClass));
							});
				
						});
				
							var mintitCheckFlag = true;
							var mintitHisData = null;
				
							$("#chk-trade-in, #chk-trade-ce").on('click', function(){
								var reqData = $("#goodsCartForm").serializeJson();
								var chkTrd = $("#chk-trade-in").is(':checked');
								if(chkTrd == true){
									var galCheck = {
											url : goodsMain.fnAjaxUrl("galaxyClubOrderHistoryCheck")
											, type: 'POST'
											, data : reqData
											, done : function(data) {
												if(data.membershipNo != null && data.isGalaxyCmpnYn == 'Y'){
													if(!mintitCheckFlag){
														if(mintitHisData.prgrStatYn=='Y'){
															openLayer('popupTradeIn')
														}else{
															fnTradeInOnClick();
														}
													}else{
														var galMintCheck={
																url : goodsMain.fnAjaxUrl("galaxyClubMintitCheck")
																, type: 'POST'
																, data : reqData
																, done : function(data) {
																	mintitHisData = data;
																	if(data.prgrStatYn=='Y'){
																		openLayer('popupTradeIn')
																	}else{
																		fnTradeInOnClick();
																	}
																}
															};
														mintitCheckFlag = false;
														ajax.call(galMintCheck);
													}
												}else{
													fnTradeInOnClick();
												}
											},
												error : function(response, status, error) {
														var alertData = {
																title : "",
																content : "오류가 발생하였습니다.",
																callBack : "",
																btnText : "확인"
															};
														commonAlert(alertData);
														openLayer('commonAlert');
														return false;
												},
												beforeSend : function(xhr) {
														xhr.setRequestHeader("ajax", true);
												},
												complete : function() {
												}
										};
									ajax.call(galCheck);
								}else{
									fnTradeInOnClick();
								}
						});
						
						/* 트레이드 인 선택 여부 */
						function fnTradeInOnClick() {
							var chkTrd = $("#chk-trade-in").is(':checked');
							var chkGc = $("#chk-galaxy-club").is(':checked');
							var chkCeTrd = $("#chk-trade-ce").is(':checked');
							
							if($("#chk-trade-in").is(':checked') && $("#chk-galaxy-club").is(':checked')){
								$("#goodsOrdTpCd").val("TRDGC");
							}else if($("#chk-trade-in").is(':checked')){
								$("#goodsOrdTpCd").val("TRD");	
							}else if($("#chk-trade-ce").is(':checked')){
								$("#goodsOrdTpCd").val("CETRD");	
							}else {
								$("#goodsOrdTpCd").val($("#chk-galaxy-club").is(':checked') ? "GC" : "");	
							}
							
							if( chkTrd == true || chkGc == true || chkCeTrd == true) {
								if( chkGc == true || chkTrd == true) {
									// PD페이지 장바구니 버튼 비활성화
									$("#btnCart").addClass("btn-type6");
									$("#btnCart").removeClass("btn-type1");
									$("#btnCart").prop("disabled", true);
								}
								
								// PD페이지 선물하기 버튼 비활성화
								$("#btnPresent").addClass("btn-disable");
								$("#btnPresent").prop("disabled", true);
								
							} else {
								// PD페이지 장바구니 버튼 활성화
								$("#btnCart").addClass("btn-type1");
								$("#btnCart").removeClass("btn-type6");
								$("#btnCart").prop("disabled", false);
								
								var bomYn = $("#bomYn").val();
								var count = $("#countPrd").val();
											if((bomYn == "Y" && parseInt(count) == 1) || bomYn != "Y") {
												// PD페이지 선물하기 버튼 활성화
									 $("#btnPresent").removeClass("btn-disable");
									$("#btnPresent").prop("disabled", false);	
											}
							}
							
						}
						
						$("#chk-galaxy-club").on('click', function(){
							var reqData = $("#goodsCartForm").serializeJson();
							var chkGc = $("#chk-galaxy-club").is(':checked');
							if(chkGc == true) {
							var galCheck = {
									url : goodsMain.fnAjaxUrl("galaxyClubOrderHistoryCheck")
									, type: 'POST'
									, data : reqData
									, done : function(data) {
										if(data.membershipNo != null && data.isGalaxyCmpnYn == 'Y'){
											if(!mintitCheckFlag){
												if(mintitHisData.prgrStatYn=='Y'){
													openLayer('popupGlxClubJoin')
												}else{
													fnGalaxyClubOnClick();
												}
											}else{
												var galMintCheck={
													url : goodsMain.fnAjaxUrl("galaxyClubMintitCheck")
													, type: 'POST'
													, data : reqData
													, done : function(data) {
														mintitHisData = data;
														if(data.prgrStatYn=='Y'){
															openLayer('popupGlxClubJoin')
														}else{
															fnGalaxyClubOnClick();
														}
													}
												};
												mintitCheckFlag = false;
												ajax.call(galMintCheck);
											}
										}else{
											fnGalaxyClubOnClick();
										}
									},
										error : function(response, status, error) {
												var alertData = {
														title : "",
														content : "오류가 발생하였습니다.",
														callBack : "",
														btnText : "확인"
													};
												commonAlert(alertData);
												openLayer('commonAlert');
												return false;
										},
										beforeSend : function(xhr) {
												xhr.setRequestHeader("ajax", true);
										},
										complete : function() {
										}
								};
								ajax.call(galCheck);
							}else{
								fnGalaxyClubOnClick();
							}
						});
						
						/* 갤럭시클럽 선택 여부 */
						function fnGalaxyClubOnClick(e) {
							var chkTrd = $("#chk-trade-in").is(':checked');
							var chkGc = $("#chk-galaxy-club").is(':checked');
							var chkCeTrd = $("#chk-trade-ce").is(':checked');
										
							if($("#chk-trade-in").is(':checked') && $("#chk-galaxy-club").is(':checked')){
								$("#goodsOrdTpCd").val("TRDGC");
							}else if($("#chk-galaxy-club").is(':checked')){
								$("#goodsOrdTpCd").val("GC");	
							}else{
								$("#goodsOrdTpCd").val($("#chk-trade-in").is(':checked') ? "TRD" : "");
							}
							
							if(chkGc == true) {
								//갤럭시클럽 청구할인 불가 안내
								$("#billDiscount").find('span:first').removeClass();
								$("#billDiscount").find('span:first').addClass("ico-sscard galaxy-club-msg");
								$("#billDiscount").find('strong').after("<br>");
								
								// PD페이지 장바구니 버튼 비활성화
								$("#btnCart").addClass("btn-type6");
								$("#btnCart").removeClass("btn-type1");
								$("#btnCart").prop("disabled", true);
								$(".regular").css("display","none");
								
								// PD페이지 선물하기 버튼 비활성화
								$("#btnPresent").addClass("btn-disable");
								$("#btnPresent").prop("disabled", true);
								
								// PD페이지 상품 수량 버튼 비활성화
								 $('#pd-goods-count-miner').css("pointer-events", "none");
								$('#pd-goods-count-plus').css("pointer-events", "none");
								$(".goods-count").addClass("disabled");
								$(".goods-count > .count-prd").prop("disabled", true);
								$('#countPrd').val("1"); 
								// 상품 1개 적용
								$(".count-prd", goodsMain.vGoodsWrapId).val("1");
							} else {
								if(chkTrd == false) {
									// PD페이지 장바구니 버튼 활성화
									$("#btnCart").addClass("btn-type1");
									$("#btnCart").removeClass("btn-type6");
									$("#btnCart").prop("disabled", false);	
									if(chkCeTrd == false){					
										// PD페이지 선물하기 버튼 활성화
										$("#btnPresent").removeClass("btn-disable");
										$("#btnPresent").prop("disabled", false);	
									}
								}
				
								// PD페이지 상품 수량 버튼 활성화
								$('#pd-goods-count-miner').css("pointer-events", "auto");
								$('#pd-goods-count-plus').css("pointer-events", "auto");
								$(".goods-count").removeClass("disabled");
								$(".goods-count > .count-prd").prop("disabled", false); 
								
								$("#billDiscount").find('span:first').removeClass("ico-sscard galaxy-club-msg");
								$("#billDiscount").find('span:first > br').remove();
							}
							
						}
						
						$(document).ready(function () {
				
							if((($("input[name=stGbCd]").val() == '10' || $("input[name=stGbCd]").val() == '80') && $("#shop-storeYN").val() == 'Y' && $("#dlvrPckYn").val() == 'Y' && $("#dlvrGenYn").val() != 'Y')
									|| ("" != null && "" != "" && "" != 'N' && "" != 'CP') //케어플러스
									|| ("N" != null && "N" != "" && "N" != 'N')
									|| ($("input[name=stGbCd]").val() == '50' && "false" == "true")) {
								// PD페이지 상품 수량 버튼 비활성화
								$('#pd-goods-count-miner').css("pointer-events", "none");
								$('#pd-goods-count-plus').css("pointer-events", "none");
								$(".goods-count").addClass("disabled");
								$(".goods-count > .count-prd").prop("disabled", true);
				
								//소상공인몰 매장픽업Only 상품일때 PD페이지 장바구니 버튼 활성화
								if($("input[name=stGbCd]").val() == '50' && "false" == "true") {
									// PD페이지 장바구니 버튼 활성화
									$("#btnCart").addClass("btn-type1");
									$("#btnCart").removeClass("btn-type6");
									$("#btnCart").prop("disabled", false);
								} else {
									// PD페이지 장바구니 버튼 비활성화
									$("#btnCart").addClass("btn-type6");
									$("#btnCart").removeClass("btn-type1");
									$("#btnCart").prop("disabled", true);
								}
								// 선물하기 - 케어플러스 전문세척 한정 선물하기 가능
								if("W" != "") {
									// PD페이지 선물하기 버튼 비활성화
									$("#btnPresent").addClass("btn-disable");
									$("#btnPresent").prop("disabled", true);
								}
							}
							
							if("" != null && typeof "" != "" && "" != 'N'){
								$("#goodsOrdTpCd").val("");	
								$("#linkSubCd").val("");
								$("#itemCd").val("");
							}
							console.log($("#goodsCartForm").serializeJson())
							freebiesToggle('.dropButton.frbs');
				/* 			var goodsOrdTpCd = ""
							
							if (goodsOrdTpCd != '') {
								var tradeInStr = goodsOrdTpCd.split(';');
								tradeInStr = tradeInStr[0];
							}
							
							 */
				
						});
						
						$(document).ready(function() {
						
							checkPdDropOption($('.itm-option-choice .dropButton'));
							checkPdDropOption($('.itm-eventInfo .dropButton'));
							checkPdDropOption($('.itm-freebies-option .dropButton'));
				
							$('.itm-option-choice .dropButton').on('click', function() {
								checkPdDropOption($(this)); 
							});
							$('.itm-eventInfo .dropButton').on('click', function() {
								checkPdDropOption($(this)); 
							});
							$('.itm-freebies-option .dropButton').on('click', function() {
								checkPdDropOption($(this)); 
							});
						})
				
						function checkPdDropOption(e) {
							var $e = $(e);
							clearTimeout(timer);
							var timer = setTimeout(function(){
								$e.find($('span.blind')).remove();
								$e.each(function() {
									if ($(this).hasClass("open")) {
										$(this).append('<span class="blind">열림</span>');
									} else {
										$(this).append('<span class="blind">닫힘</span>');
									}
								});
							}, 500)
						}
								
						$("#tradeCancelBtn").on("click", function(e){
							var chkTrd = $("#chk-trade-in").is(':checked');
							if(chkTrd == true){
									$("#chk-trade-in").click();
							}
									e.preventDefault();
									$(this).parents('.layer-pop').hide();
									$("body").css("overflow","");
									$("#mask").fadeOut("fast").remove();
							});
							
							$("#galClubCancelBtn").on("click", function(e){
								var chkGc = $("#chk-galaxy-club").is(':checked');
							if(chkGc == true) {
									$("#chk-galaxy-club").click();
							}
									e.preventDefault();
									$(this).parents('.layer-pop').hide();
									$("body").css("overflow","");
									$("#mask").fadeOut("fast").remove();
							});
							
							$("#tradeOkBtn").on("click", function(e){
								var chkTrd = $("#chk-trade-in").is(':checked');
							if(chkTrd == true){
									fnTradeInOnClick();
							}
									e.preventDefault();
									$(this).parents('.layer-pop').hide();
									$("body").css("overflow","");
									$("#mask").fadeOut("fast").remove();
							});
							
							$("#galClubOkBtn").on("click", function(e){
								var chkGc = $("#chk-galaxy-club").is(':checked');
							if(chkGc == true) {
									fnGalaxyClubOnClick();
							} 
									e.preventDefault();
									$(this).parents('.layer-pop').hide();
									$("body").css("overflow","");
									$("#mask").fadeOut("fast").remove();
							});
					</script>
				
						<div class="itm-info-detail" id="itmInfoDetail" data-mdl-code="28MQ780" data-url-nm="monitors" data-fmy-grp-nm="gaming-ls27bg654ekxkr-d2c" data-goods-nm="LG전자 울트라와이드 듀얼업 28MQ780" data-sale-stat="12" data-mdl-nm="28MQ780" data-fmy-eng-nm="gaming-ls27bg654ekxkr-d2c" data-goods-id="G000277237" data-envmt-gb-cd="prd" data-fast-dlvr-yn="N">
							<input type="hidden" name="goodsId" value="G000277237">
							<input type="hidden" name="masterGoodsFlag" id="masterGoodsFlag" value="">
							<input type="hidden" name="masterGoodsId" id="masterGoodsId" value="">
							<input type="hidden" name="goodsTpCd" value="10">
							<input type="hidden" name="compNo" value="312">
							<input type="hidden" name="goodsAddTpCd" value="">
							<input type="hidden" name="bspkGoodsYn" value="N">
							<input type="hidden" id="shop-storeYN" value="Y">
							<input type="hidden" name="mhdjTgYn" value="N">
							<input type="hidden" name="stContextPath" value="/sec/">
							<input type="hidden" name="dlvrGenYn" id="dlvrGenYn" value="N">
							<input type="hidden" name="dlvrPckYn" id="dlvrPckYn" value="N">
							<input type="hidden" name="omsSendYn" id="omsSendYn" value="N">
							<input type="hidden" name="goodsNm" id="goodsNm" value="LG전자 울트라와이드 듀얼업 28MQ780">
							<input type="hidden" name="mdlCode" id="mdlCode" value="28MQ780">
							<input type="hidden" name="netfunnelYn" id="netfunnelYn" value="N">
							<input type="hidden" name="isLoginYn" id="isLoginYn" value="N">
							<input type="hidden" name="discountRate" id="discountRate" value="0">
							<input type="hidden" name="discountRateYn" id="discountRateYn" value="N">
							<input type="hidden" name="outletFlgYn" id="outletFlgYn" value="N">			
							<input type="hidden" name="winePickupGoodsYn" id="winePickupGoodsYn" value="N">
							<input type="hidden" name="thirdPartyYn" id="thirdPartyYn" value="N">						
							<input type="hidden" name="1depthCtgNm" id="1depthCtgNm" value="PC/프린터">						
							<input type="hidden" name="2depthCtgNm" id="2depthCtgNm" value="모니터">						
							<input type="hidden" id="imgPath" value="//images.samsung.com/kdp/goods/2022/09/30/31cf773c-3852-4816-85a6-ddb0bc2bf78b.png">
							<input type="hidden" name="useStkCd" id="useStkCd" value="10">
							<input type="hidden" name="qookerYn" id="qookerYn" value="N">
							<input type="hidden" name="showCpAmtYn" id="showCpAmtYn" value="Y">
							<input type="hidden" name="showAppCpAmtYn" id="showAppCpAmtYn" value="Y">
							<form id="goodsCartForm" name="goodsCartForm" method="post">
								<input type="hidden" name="goodsIds" id="goodsIds" value="G000277237">
								<input type="hidden" name="stGbCd" value="10">
								<input type="hidden" name="stId" value="1">
								<input type="hidden" name="empPrcStYn" value="N">
								<input type="hidden" name="nowBuyYn" value="N">
								<input type="hidden" name="buyQtys" class="count-prd" value="1">
								<input type="hidden" name="orderType" value="ONCE">
								<input type="hidden" name="frbInfo">
								<input type="hidden" name="pckStrNo" id="pckStrNo" value="">
								<input type="hidden" name="goodsOrdTpCd" id="goodsOrdTpCd" value="">
								<input type="hidden" name="galaxyClubYn" id="galaxyClubYn" value="">
								<input type="hidden" name="clsMtdCd" id="clsMtdCd" value="">
								<input type="hidden" name="galaxyClubTpCd" id="galaxyClubTpCd" value="">
								<input type="hidden" name="linkSubCd" id="linkSubCd" value="">
								<input type="hidden" name="itemCd" id="itemCd" value="">
								<input type="hidden" name="secApp" id="secApp" value="false">
								<input type="hidden" name="price" id="price" value="">
							</form>
							<!--구매수량별 혜택가 추가 2020.12.18 -->
							<div class="itm-info-head">
								<div class="itm-flag">
								<!-- KDP-17720 B2B 소상공인몰 매장픽업only won1.id  -->
									<!-- 아웃렛 상품 여부 -->
										<!-- 케어플러스 -->
										<!-- 상품 플래그명 -->						
										<!-- 할인율 표시 -->
										</div>
<!-- sns공유 -->
<script>
function Urlsend(sns) {
    var thisUrl = "http://localhost:8080/GMQDisplay-master/product/28MQ780.jsp";
    var snsTitle = "GMQ Display";
    if( sns == 'facebook' ) {
        var url = "http://www.facebook.com/sharer/sharer.php?u="+encodeURIComponent(thisUrl);
        window.open(url, "", "width=486, height=286");
    }
    else if( sns == 'twitter' ) {
        var url = "http://twitter.com/share?url="+encodeURIComponent(thisUrl)+"&text="+encodeURIComponent(snsTitle);
        window.open(url, "tweetPop", "width=486, height=286,scrollbars=yes");
    }
    else if( sns == 'band' ) {
        var url = "http://www.band.us/plugin/share?body="+encodeURIComponent(snsTitle)+"&route="+encodeURIComponent(thisUrl);
        window.open(url, "shareBand", "width=400, height=500, resizable=yes");
    } 
</script>
	<div class="social-box">
			<button type="button" class="btn-sns-link" data-title="공유" data-content="" data-close="툴팁 닫기" id="toggle4">
				<i class="icon ico-large ico-share">소셜공유</i>
			</button>
				<div class="btn-underline" style="display:none;" id="divToggle4">
					<ol class="share-tooltip-box">												
						<ul class="sns">
							<li class="facebook">
							<a href="http://www.facebook.com/sharer/sharer.php" onclick="Urlsend('facebook');return false;" class="facebook" target="_blank" title="페이스북 새창열림"><span class="skip">페이스북</span></a>
							</li>
							<li class="twitter">
							<a href="http://twitter.com/share" onclick="Urlsend('twitter');return false;" class="twitter" target="_blank" title="트위터 새창열림"><span class="skip">트위터</span></a>
							</li>
							<li class="band">
							<a href="http://www.band.us/plugin/share" onclick="Urlsend('band');return false;" class="band" target="_blank" title="네이버밴드 새창열림"><span class="skip">네이버밴드</span></a>
							</li>
						</ul>	            
					</ol>
				</div>
						<%
						try {
							String db_url = "jdbc:mysql://localhost:3306/gpqd";
							String db_id = "root";
							String db_password = "1234";

							Class.forName("com.mysql.jdbc.Driver");
							Connection con = DriverManager.getConnection(db_url, db_id, db_password);

							if (id != null) { 
								String sql_wish = "SELECT * FROM wishlist WHERE userID=? AND Mno=?"; 
								PreparedStatement pstmt_wish = con.prepareStatement(sql_wish);
								pstmt_wish.setString(1, id);
								pstmt_wish.setString(2, "28MQ780");

								ResultSet rs_wish = pstmt_wish.executeQuery();
								if (rs_wish.next()) {
						%>
							<button type="button" class="btn-good on" title="" form="28MQ780">
								<i class="icon ico-large ico-goods">좋아요 미선택</i>
							</button>
						<%
								} else {
						%>
							<button type="button" class="btn-good " title="" form="28MQ780">
								<i class="icon ico-large ico-goods">좋아요 미선택</i>
							</button>
						<%
								}
							} else {
						%>
							<button type="button" class="btn-good " title="" onclick="location.href='/GMQDisplay-master/login_info/login.html';">
								<i class="icon ico-large ico-goods">좋아요 미선택</i>
							</button>	
						<%
							}
						} catch (Exception e) {
							out.print(e);
						}
						%>
<script>
	$('.btn-good').click(function() {
		$.ajax({
			url: "/GMQDisplay-master/xhr/wishlist_insert.jsp",
			type: "POST",
			data: {Mno: "28MQ780"},
			success: function(data) {
			},
			error: function(jqXHR, textStatus, errorThrown) {
				console.log(errorThrown);
			}
		});
	});
</script>
						<div class="bookmarkTooltip flashTooltip bookmarkOn">
							<div>
								<p><span>찜</span>이 되었습니다.</p>
									<a href="javascript:void(0);" class="btn-underline">전체보기</a>
							</div>
						</div>
							 <div class="bookmarkTooltip flashTooltip bookmarkOff">
								<div>
									<p><span>찜</span>이 취소되었습니다.</p></div>
								</div>
							</div>

								<h1 class="itm-info-title" id="goodsDetailNm">LG전자 울트라와이드 듀얼업 28MQ780</h1>
								<div class="itm-sku b2c-itm-sku compare-box-align">28MQ780</div>
										<!-- B2C, 패넷, 패넷 디플 PD페이지 비교하기 버튼 추가 s --> 
										<!--<div class="compare">
												<a href="javascript:void(0);" class="link-compare-i" onclick="readyCompare(this)" data-goods-id="28MQ780" data-mdl-code="28MQ780 " data-comp-disp-clsf-en-nm="monitors">
												비교하기
												</a>
											</div>-->
										<!-- B2C, 패넷, 패넷 디플 PD페이지 비교하기 버튼 추가 e --> 
										<div class="itm-rating-con">
											<div class="itm-rating b2c-itm-rating">
													<%
													try {
														int total = 0;
														int cnt = 0;
														double rating = 0;

														String db_url = "jdbc:mysql://localhost:3306/gpqd";
														String db_id = "root";
														String db_password = "1234";

														Class.forName("com.mysql.jdbc.Driver");
														Connection con = DriverManager.getConnection(db_url, db_id, db_password);

														// 리뷰 조회
														String sql = "SELECT * FROM review WHERE Mno=?"; 
														PreparedStatement pstmt = con.prepareStatement(sql);
														pstmt.setString(1, "28MQ780");

														ResultSet rs = pstmt.executeQuery();
														while(rs.next()) {
															total += rs.getInt("review_rating");
															cnt++;
														}
														if (cnt == 0)
															rating = 0;
														else
															rating = (double)total / cnt;

														DecimalFormat df = new DecimalFormat("#.#");
														String format_rating = df.format(rating);
													%>
												<div class="itm-sart-rating" role="img" aria-label="별점 <%=format_rating%>점">
													<!-- 
														별점 1점일때 클래스 star-yellow 적용
														별점 0.5점일때 클래스 star-half-yellow 적용
														별점 0점일때 클래스 star-gray 적용
													-->
													<%
														if (rating < 0.5) {
													%>
													<i class="star-gray"></i><!-- 별점 0점 -->
													<i class="star-gray"></i><!-- 별점 0점 -->
													<i class="star-gray"></i><!-- 별점 0점 -->
													<i class="star-gray"></i><!-- 별점 0점 -->
													<i class="star-gray"></i><!-- 별점 0점 -->
													<%
														} else if (rating >= 0.5 && rating < 1) {
													%>
													<i class="star-half-yellow"></i><!-- 별점 0.5점 -->
													<i class="star-gray"></i><!-- 별점 0점 -->
													<i class="star-gray"></i><!-- 별점 0점 -->
													<i class="star-gray"></i><!-- 별점 0점 -->
													<i class="star-gray"></i><!-- 별점 0점 -->
													<%
														} else if (rating >= 1 && rating < 1.5) {
													%>
													<i class="star-yellow"></i><!-- 별점 1점 -->
													<i class="star-gray"></i><!-- 별점 0점 -->
													<i class="star-gray"></i><!-- 별점 0점 -->
													<i class="star-gray"></i><!-- 별점 0점 -->
													<i class="star-gray"></i><!-- 별점 0점 -->
													<%
														} else if (rating >= 1.5& rating < 2) {
													%>
													<i class="star-yellow"></i><!-- 별점 1점 -->
													<i class="star-half-yellow"></i><!-- 별점 0.5점 -->
													<i class="star-gray"></i><!-- 별점 0점 -->
													<i class="star-gray"></i><!-- 별점 0점 -->
													<i class="star-gray"></i><!-- 별점 0점 -->
													<%
														} else if (rating >= 2 && rating < 2.5) {
													%>
													<i class="star-yellow"></i><!-- 별점 0.5점 -->
													<i class="star-yellow"></i><!-- 별점 0점 -->
													<i class="star-gray"></i><!-- 별점 0점 -->
													<i class="star-gray"></i><!-- 별점 0점 -->
													<i class="star-gray"></i><!-- 별점 0점 -->
													<%
														} else if (rating >= 2.5 && rating < 3) {
													%>
													<i class="star-yellow"></i><!-- 별점 0.5점 -->
													<i class="star-yellow"></i><!-- 별점 0점 -->
													<i class="star-half-yellow"></i><!-- 별점 0점 -->
													<i class="star-gray"></i><!-- 별점 0점 -->
													<i class="star-gray"></i><!-- 별점 0점 -->
													<%
														} else if (rating >= 3 && rating < 3.5) {
													%>
													<i class="star-yellow"></i><!-- 별점 0.5점 -->
													<i class="star-yellow"></i><!-- 별점 0점 -->
													<i class="star-yellow"></i><!-- 별점 0점 -->
													<i class="star-gray"></i><!-- 별점 0점 -->
													<i class="star-gray"></i><!-- 별점 0점 -->
													<%
														} else if (rating >= 3.5 && rating < 4) {
													%>
													<i class="star-yellow"></i><!-- 별점 0.5점 -->
													<i class="star-yellow"></i><!-- 별점 0점 -->
													<i class="star-yellow"></i><!-- 별점 0점 -->
													<i class="star-half-yellow"></i><!-- 별점 0점 -->
													<i class="star-gray"></i><!-- 별점 0점 -->
													<%
														} else if (rating >= 4 && rating < 4.5) {
													%>
													<i class="star-yellow"></i><!-- 별점 0.5점 -->
													<i class="star-yellow"></i><!-- 별점 0점 -->
													<i class="star-yellow"></i><!-- 별점 0점 -->
													<i class="star-yellow"></i><!-- 별점 0점 -->
													<i class="star-gray"></i><!-- 별점 0점 -->
													<%
														} else if (rating >= 4.5 && rating < 5) {
													%>
													<i class="star-yellow"></i><!-- 별점 0.5점 -->
													<i class="star-yellow"></i><!-- 별점 0점 -->
													<i class="star-yellow"></i><!-- 별점 0점 -->
													<i class="star-yellow"></i><!-- 별점 0점 -->
													<i class="star-half-yellow"></i><!-- 별점 0점 -->
													<%
														} else if (rating >= 5) {
													%>
													<i class="star-yellow"></i><!-- 별점 0.5점 -->
													<i class="star-yellow"></i><!-- 별점 0점 -->
													<i class="star-yellow"></i><!-- 별점 0점 -->
													<i class="star-yellow"></i><!-- 별점 0점 -->
													<i class="star-yellow"></i><!-- 별점 0점 -->
													<%
														}
													%>
													<span><%=format_rating%></span>
												</div>
												<!-- <div class="itm-sart-rating">
													<i class="icon ico-default ico-star">별점</i> 
													<span>4.0</span>
												</div> -->
												<a href="javascript:;" class="itm-review-count" title="상품평 보러가기">(<%=cnt%>건)</a>
											</div>
												<%
													} catch (Exception e) {
														out.print(e);
													}
												%>
											<div class="itm-rating itm-review">
												<span class="itm-review-write"><a href="javascript:void(0);" class="btn-underline" title="상품평 쓰기 바로가기" onclick="fnWrite()">상품평 쓰기</a></span>
											</div>
											
										</div>
											</div>
							<!-- 가격이 없을 경우 영역 노출 X -->
								<script>
									$(function (){
										$("#toggle1").click(function (){
  										$("#divToggle1").toggle();
										});
									});
									$(function (){
										$("#toggle2").click(function (){
  										$("#divToggle2").toggle();
										});
									});
									$(function (){
										$("#toggle3").click(function (){
  										$("#divToggle3").toggle();
										});
									});
									$(function (){
										$("#toggle4").click(function (){
  										$("#divToggle4").toggle();
										});
									});
								</script>	

									<div class="itm-price itm-type">
										<div>
											<input type="hidden" id="originalPrice" value="990000">	                               		
											<input type="hidden" id="discountAmount" value="0">
											<input type="hidden" id="lastPrice" value="990000">

										<dl class="event-price">
										<dt>기준가
												<button type="button" class="btn-tooltop02 price-tooltip" data-title="기준가 안내" data-content="" data-close="툴팁 닫기" data-width="360"  id="toggle1">
													<span>기준가 안내 보기</span>
												</button>
												<div class="tooltip-content1" style="display:none;" id="divToggle1">
													<p>판매가는 <strong>GMQ Display에만 적용</strong>됩니다.</p>
												</div>
											</dt>
																			
											 <dd>
												<span data-price="990000" class="pd-total-price">990,000</span>원
											</dd>
										</dl>
												<script type="text/javascript">
													if('990000' == '0'){
													 $(".itm-price").hide();
													 }
												</script>
	
												<!-- 유효 시작 기간 -->
												<!-- 유효종료 기간 -->
												<!-- 최적쿠폰 정보 할당 최대 2장 (일반,중복)-->
												<!-- 최적 일반 쿠폰 -->
												<input type="hidden" id="BaseCpAmt" data-cpamt="7570" data-multiaplyn="N" data-cpno="7570" data-apl-strt-dtm="2023-03-31 23:59:59.0" data-apl-end-dtm="2023-03-31 23:59:59.0">
												<input type="hidden" id="maxAplStrtDtm" value="2023-03-01 00:00:00.0">
												<input type="hidden" id="minAplEndDtm" value="2023-03-31 23:59:59.0">
												 <dl class="event-price">
												<dt>회원가</dt>
												<!-- 회원가 -->
												<dd><span class="discount" style="text-decoration-line: line-through">950,000</span>원</dd>
												</dl>
												<dl class="expected-price">
												<dt>
												<!-- 회원 할인가 -->
													회원 할인가
													<button type="button" class="btn-tooltop02 price-tooltip" data-title="쿠폰 적용 예상가 안내" data-content="couponDiscountPrice" data-close="툴팁 닫기" data-width="500" id="toggle2">
													<span>쿠폰 적용 예상가 툴팁보기(레이어 열림)</span></button>
												</dt>
															 
													<div class="tooltip-content" style="display: none;" id="divToggle2">
														<p>	<strong>회원인 경우에만</strong> 해당 상품에<br> 즉시 할인이 적용되어 있으며,<br>주문/결제 페이지에서
															<br>주문 가능합니다.<br>			
														</p>
													</div>
														<!-- 웹쿠폰 할인가격(앱쿠폰 제외) -->
														<dd><span>899,000</span>원</dd>
												</dl>
													
												</div>
											</div>
												<div class="itm-option-choice droptoggle">
												 <dl>
													<dt><span>색상</span></dt>
													
												<dd>
													<div class="dropOption" id="dropOption-1001-1">
														<span class="itm-color-object" style="background-color:#000000;" data-omni="color_블랙">블랙</span>
														<span class="selectedOption">블랙</span> 
													</div>
												</dd>
												</dl>
<!-- 구매 수량 -->
<form name="form" method="post" action="/GMQDisplay-master/order/order.jsp">
	<input type="hidden" name="Mno" value="28MQ780" />
	<dl class="count-show-box">
		<dt>수량</dt>
		<dd>
			<span class="spinner-box pd-spinner goods-count">
				<a href="javascript:void(0);" class="count count-miner" id="pd-goods-count-miner">감소</a>
				<label for="countPrd" class="blind">구매수량</label><input type="text" class="number count-prd" id="countPrd" name="count" value="1" data-max-qty="5" data-min-ord-qty="">
				<a href="javascript:void(0);" class="count count-plus" id="pd-goods-count-plus">증가</a>
			</span>
		</dd>
	</dl>
</form>
 </div>

<script type="text/javascript"> 
        var cDisplay = true; 
		function MemDisplay(){ 	
            var con = document.getElementById("TabMembership"); 	
            if(con.style.display=='none'){ 		
                con.style.display = 'block'; 	
            }else{ 		
                con.style.display = 'none'; 	
            } 
        } 
 </script>
															 
															 

				
										<!-- GMQDisplay 멤버십 -->
											<div class="dropDown-content itm-eventInfo">
												<div id="membership-info">
													<a href="javascript:MemDisplay();" class="dropButton" id="membershipDropBtn">
														<span>GMQDisplay 멤버십 <strong id="membership-ptn-top">8990 포인트</strong> 적립</span>
														<span class="blind">닫힘</span>
													</a>
														<div class="dropcontent" id="TabMembership">
															<div class="casewrap point-nomember" style="display: block;" >
																<p class="emphasis-txt border-line">GMQ Display
																	<em class="case-blue membership-ptn"> 포인트 8990 (기본 0.1%)</em> 적립 예정
																</p>
																	<p class="assi-txt">GMQ Display 포인트는 GMQ Display계정의<br> 
																	'국가 또는 지역' 정보가 <br>
																	대한민국인 고객님만 적립 및 사용 가능합니다.</p>
																											
																		<div class="center-link">
																			<a href="#" target="_blank" class="btn-underline">내 계정정보 확인하기</a>
																		</div>
																				<p class="assi-txt">적립 예정 포인트는 멤버십 회원 상태와 등급별 최대 적립 <br>한도에 따라 실제 적립 포인트와 상이할 수 있습니다.</p>
																					<div>
																							<ul class="detail-view">
																								<li>
																									<span>GMQ Display 멤버십 등급혜택</span>
																										<a href="#" target="_blank" class="btn-underline">자세히 보기</a>
																								</li>
																								<li>
																									<span>GMQ Display 포인트 적립혜택</span>
																										<a href="#" target="_blank" class="btn-underline">자세히 보기</a>
																								</li>
																							</ul>
																					</div>
																				</div>
																			</div>
																		</div>
																	 </div>
										<!-- 회원 할인 적용 예상가 -->

											<a class="sp-custom-c1071-1 ins-banner" href="javascript:void(0);"><div class="ins-pd-inline-banner" style="margin-top:15px;"></div></a>
												<div class="itm-total-bottom">
													<div class="box-total-price">
														<dt>회원 할인 적용 예상가
															<button type="button" class="btn-tooltop02 price-tooltip fixed-tootip" data-title="회원 할인 예상가 안내" data-content="" data-close="툴팁 닫기" data-width="400" id="toggle3">
																<span>회원 할인 예상가 안내 보기</span>
															</button>

												<div  class="tooltip-content1" style="display:none;" id="divToggle3">
													<p style="margin-top:10px;"><b>할인 금액</b> : 91,000원</p>
												</div>
												</dt>
													<strong data-price="899000">899,000</strong><span>원</span>
												</dl>
											</div>
																					 <div class="box-btn">
																								<div class="box-cto">
																									 <!-- KDP-20396 [FO][BO] 상품엑셀수정업로드 및 PD 선물하기 버튼_선물하기여부 유효성검사_2차 LMJ START -->
																									 <ul>
																										<!-- KDP-20396 [FO][BO] 상품엑셀수정업로드 및 PD 선물하기 버튼_선물하기여부 유효성검사_2차 LMJ END -->
																												<!-- KDP-20159 [FO][BO] 상품엑셀수정업로드 및 PD 선물하기 버튼_선물하기여부 유효성검사 LMJ START -->
																													<!-- KDP-20159 [FO][BO] 상품엑셀수정업로드 및 PD 선물하기 버튼_선물하기여부 유효성검사 LMJ END -->
																												<li>
<!-- 추가된 부분 -->
<%
	if (id != null) {
%>
<button id="btnCart" type="button" class="btn btn-l btn-type6"
	data-omni="장바구니"
	data-content="제품이 장바구니에 추가되었습니다.<br>(현재 총 $cnt$개의 제품이 장바구니에 담겼습니다.)"
	data-yes="쇼핑 계속하기" data-yescls="cont-shpng"
	data-nocls="cart-view" data-no="장바구니 가기"
	data-close="툴팁 닫기">장바구니
</button>
<%
	} else {
%>
<button id="btnCart" type="button" class="btn btn-l btn-type6" onclick="window.open('../login_info/login.html', '_self')"
	data-omni="장바구니"
	data-content="제품이 장바구니에 추가되었습니다.<br>(현재 총 $cnt$개의 제품이 장바구니에 담겼습니다.)"
	data-yes="쇼핑 계속하기" data-yescls="cont-shpng"
	data-nocls="cart-view" data-no="장바구니 가기"
	data-close="툴팁 닫기">장바구니
</button>
<%
	}
%>
<script>
	$(document).ready(function(){
		$('#btnCart').click(function(){
			var Mno = "28MQ780";
			var countPrd = $('#countPrd').val();
			$.ajax({
				url: '../xhr/addCart.jsp',
				type: 'POST',
				data: { Mno: Mno, countPrd: countPrd},
				success: function(response){
					$('.alert#cartMsg').show();
					$("body").append("<div id='mask'></div>");
				},
				error: function(xhr, status, error){
					
				}
			});
		});
	});
</script>
<!-- 추가된 부분 -->
																																	</li>
																													<li>
																															 <div class="txt-noti-coupon" id="cpPop" style="display: block;"><p>회원 할인가를 놓치지마세요</p>
																																	<script type="text/javascript">
																																		
																																			// s : 230221 쿠폰알림텍스트
																																			function checkShow( elm, eval ) {
																																				eval = eval || "object visible";
																																				var viewportHeight = $(window).height(),
																																					scrolltop = $(window).scrollTop(),
																																					y = $(elm).offset().top,
																																					elementHeight = $(elm).height();
																																				if (eval == "object visible") return ((y < (viewportHeight + scrolltop)) && (y > (scrolltop - elementHeight)));
																																				if (eval == "above") return ((y < (viewportHeight + scrolltop)));
																																			}
																																			var isVisible = false;
																																			$(window).on('scroll',function() {
																																				if (checkShow($('#cpPop'))&&!isVisible) {
																																					$("#cpPop").css("display","block");
																																					if(false == true){
																																						setTimeout(function(){
																																							$("#cpPop").css("display","none");
																																						},20000);
																																					}
																																					isVisible=true;
																																				}
																																			});
																																			// e : 230221 쿠폰알림텍스트 		
																																			
																																		</script></div>
																																		
																																<button id="btnDirect" type="button" class="btn btn-l btn-type2" data-omni="바로구매" onClick="buy()">바로구매</button>
																																	<input type="hidden" id="pdAlertYn" value="">
																						<input type="hidden" id="pdAlertMsg" value="제품이 장바구니에 추가되었습니다.<br>(현재 총 $cnt$개의 제품이 장바구니에 담겼습니다.)">
																						<input type="hidden" id="netfunnelStGrp" value="b2c">
																																</li>
				
																													</ul>
																										<!-- 빠른배송 -->
																										</div>
															<div class="regular" style="display:none;">
																										<button id="btnRegular" type="button" class="btn btn-l btn-type2 opt-regular-btn" style="width:100%" data-omni="shop regular">정기 구매하기</button>
																								</div>
																								<!-- GMQDisplay닷컴 선물하기 이벤트 오픈 시 주석 해제 -->
																								</div>
																					</div>
																			 <ul class="sub-btn-box">
																						 <!-- 갤럭시 캠퍼스 스토어일때 조건 임시 추가 -->
																						 <!-- B2C-->
																							 </ul>
																					<div class="box-bann">
																		 <!--  class="promotionBtn"  가 있을때 구매혜택으로 anchor 이동,  없을땐 일반 링크 배너일때 2가지 type이 있음. -->
																			 <!-- <a href="javascript:;"> -->
																			 <a href="https://www.samsung.com/sec/event/SuperSale/" target="_blank" title="새 창으로 열림">				                      					                      	
																					
																				</a>		                      			
																			</div>
																 </div>
						<!-- e : 제품 구매영역 전체 노출 -->
				
						<div class="layer-pop layer-normal layer-company layer-tvRuler" id="PfLayerTvRuler" tabindex="0" data-popup-layer="PfLayerTvRuler" data-focus="PfLayerTvRuler">
							<div class="layer-header">
									<h2>일러두기 : TV크기 쉽게 알아보기</h2>
							 </div>
							<div class="layer-content">
								<!-- <h3><strong>Samsung TV</strong></h3> -->
								<div class="wrap-scroll">
									<!-- s : 버튼 선택 시 -->
									<div class="search-content selected-inp">
												<div class="ul-tbl-box tbl-white-simple t-left">
														<!-- KDP-21609 [FO][B2B] 모바일 웹접근성_p58 LMJ START -->
																<table class="ul-tbl mile-tbl2">
																		<tbody><tr class="ul-tr">
																				<th class="ul-td ul-head">cm</th>
																				<th class="ul-td ul-head">인치</th>
																		</tr>
																		<tr class="ul-tr"> <!-- 20201029 추가 -->
																				<td class="ul-td">330 cm</td>
																				<td class="ul-td">130"</td>
																		</tr>
																		<tr class="ul-tr"> <!-- 20201029 추가 -->
																				<td class="ul-td">305 cm</td>
																				<td class="ul-td">120"</td>
																		</tr>
																		<tr class="ul-tr"> <!-- 20210125 추가 -->
																				<td class="ul-td">278 cm</td>
																				<td class="ul-td">110"</td>
																		</tr>
																		<tr class="ul-tr"> <!-- 20201029 추가 -->
																				<td class="ul-td">254 cm</td>
																				<td class="ul-td">100"</td>
																		</tr>
																		<tr class="ul-tr">
																				<td class="ul-td">247 cm</td>
																				<td class="ul-td">98"</td>
																		</tr>
																		<tr class="ul-tr"> <!-- 20201029 추가 -->
																				<td class="ul-td">229 cm</td>
																				<td class="ul-td">90"</td>
																		</tr>
																		<tr class="ul-tr">
																				<td class="ul-td">223 cm</td>
																				<td class="ul-td">88"</td>
																		</tr>
																		<tr class="ul-tr">
																				<td class="ul-td">214 cm</td>
																				<td class="ul-td">85"</td>
																		</tr>
																		<tr class="ul-tr">
																				<td class="ul-td">207 cm</td>
																				<td class="ul-td">82"</td>
																		</tr>
																		<tr class="ul-tr">
																				<td class="ul-td">189 cm</td>
																				<td class="ul-td">75"</td>
																		</tr>
																		<tr class="ul-tr"> <!-- 20201029 추가 -->
																				<td class="ul-td">176 cm</td>
																				<td class="ul-td">70"</td>
																		</tr>
																		<tr class="ul-tr">
																				<td class="ul-td">163 cm</td>
																				<td class="ul-td">65"</td>
																		</tr>
																		<tr class="ul-tr"> <!-- 20210514 추가 -->
																				<td class="ul-td">152 cm</td>
																				<td class="ul-td">60"</td>
																		</tr>
																		<tr class="ul-tr"> <!-- 20201029 추가 -->
																				<td class="ul-td">146 cm</td>
																				<td class="ul-td">58"</td>
																		</tr>
																		<tr class="ul-tr">
																				<td class="ul-td">138 cm</td>
																				<td class="ul-td">55"</td>
																		</tr>
																		<tr class="ul-tr">
																				<td class="ul-td">125 cm</td>
																				<td class="ul-td">50"</td>
																		</tr>
																		<tr class="ul-tr">
																				<td class="ul-td">123 cm</td>
																				<td class="ul-td">49"</td>
																		</tr>
																		<tr class="ul-tr">
																				<td class="ul-td">108 cm</td>
																				<td class="ul-td">43"</td>
																		</tr>
																		<tr class="ul-tr">
																				<td class="ul-td">80 cm</td>
																				<td class="ul-td">32"</td>
																		</tr> 
																</tbody></table>
														<!-- KDP-21609 [FO][B2B] 모바일 웹접근성_p58 LMJ START -->
												</div>
												<p class="txt-info">* 약 2.54 cm = 1 인치</p>
										</div>
							</div>
						</div>
						<button type="button" class="pop-close" data-focus-next="PfLayerTvRuler">팝업닫기</button>
						</div>
					<!-- e : 일러두기 : TV크기 쉽게 알아보기 -->
						
						<!-- s : 소상공인몰 구매확인서 popup - 210331 -->
					<div class="layer-pop layer-normal popup-smallb-purchase" id="popupSmallbPurchase" tabindex="0" data-popup-layer="popupSmallbPurchase" data-focus="popupSmallbPurchase">
							<div class="layer-header">
									<h2>소상공인몰 제품 구매확인서</h2>
							</div>
							<div class="layer-content">
							<div class="box-clause-content clause-family">
								<p class="set txt-box">GMQDisplay판매 주식회사 (이하 '판매자' 라 한다) 와의 사업자 납품 거래를 아래와 같이 확인합니다.</p>
								<p class="set ac">-	아 래 -</p>
											<div class="set">
													<p class="set-tit">제1조 (목적)</p>
									<ul class="list-dash">
										<li class="item">본 판매건은 사업자 납품 계약 제품 (이하 '제품'이라 한다) 을 구매자 에게 납품하고  '구매자'가 그 제품대금을 결재함에 있어 필요한 제반사항을 규정하여 상호간 거래를 명확히 함에 목적이 있다.</li>
									</ul>
											</div>
											<div class="set">
													<p class="set-tit">제2조 (설치)</p>
													<ul class="list-dash">
										<li class="item">'판매자'는 '구매자'가 요청한 인도처 로 설치배송을 해야하며 '구매자'는 제품설치를 받아야한다</li>
										<li class="item">'구매자'가 제품설치를 거부하는 경우 '판매자'는 제품회수 처리를 할 수도 있다.</li>
									</ul>
											</div>
											<div class="set">
													<p class="set-tit">제3조 (물량유출금지)</p>
													<ul class="list-dash">
										<li class="item">'구매자'는 '판매자'의 제품을 실사용 용도 이외에 다른 용도로 판매, 전용(이하 '물량유출'이라 칭함) 하여서는 아니되며, '구매자'가 이를 위한한 경우 '판매자'는 '구매자'와 의 거래를 중단조치 할 수 있다.</li>
									</ul>
											</div>
									</div>
							<!-- 버튼 두개시 클래스 double 추가 -->
							<div class="btn-box double">
								<a href="javascript:void(0)" onclick="javascript:closeLayer('popupSmallbPurchase');" class="btn btn-d btn-type1">취소</a>
								<a href="javascript:void(0)" id="smallbPurchaseAgreeBtn" class="btn btn-d btn-type2">동의</a>
							</div>
						</div>
						<button type="button" class="pop-close" data-focus-next="popup-pica">팝업닫기</button>
						<input type="hidden" id="smallbPurchaseAgree" name="smallbPurchaseAgree" value="N">
					</div>
					<!-- e : 소상공인몰 구매확인서 popup-->
					
					<!-- s : 20211210 소상공인몰 PF 팝업 - 에어컨 추가 설치비 -->
					<div class="layer-pop layer-normal max850" id="PfLayerPdfView" tabindex="0" data-popup-layer="PfLayerPdfView" data-focus="PfLayerPdfView">
							<div class="layer-header">
									<h2>에어컨 추가 설치비</h2>
							 </div>
							<div class="layer-content">
									<div class="wrap-scroll">
								<div>
									<img src="https://images.samsung.com/kdp/sohomall/images/img_sohoAirConditioner01.png" alt="23년 일반 에어컨 추가 설치비 운영 기준">
									<img src="https://images.samsung.com/kdp/sohomall/images/img_sohoAirConditioner02.png" alt="23년 중대형 에어컨(냉/난방기) 스탠드 추가 설치비 운영 기준">
								</div>
								</div>
							</div>
							<button type="button" class="pop-close" data-focus-next="PfLayerPdfView">팝업닫기</button>
						</div>
					<!-- e : 20211210 소상공인몰 PF 팝업 - 에어컨 추가 설치비 -->
					
					<!-- s : 소상공인몰 PF 팝업 - 플립2 구매 안내 -->
					<div class="layer-pop layer-normal max850" id="popupFilp2" tabindex="0" data-popup-layer="popupFilp2" data-focus="popupFilp2">
							<div class="layer-header">
									<h2>플립2 구매 안내</h2>
							 </div>
							<div class="layer-content">
									<div class="wrap-scroll">
								<div>
									<img src="//images.samsung.com/kdp/editor/common/202203/d7f1da5a-82c2-491f-943f-d906da6820e1.jpg">
								</div>
								</div>
							</div>
							<button type="button" class="pop-close" data-focus-next="PfLayerPdfView">팝업닫기</button>
						</div>
					<!-- e : 소상공인몰 PF 팝업 - 플립2 구매 안내 -->
					
				<!-- s : 210402 패밀리넷 동일 품목 다량 구매 관련 안내 -->
				<div class="layer-pop layer-normal component-head popupLayer104" id="fnMultiPurchaseGuidance" tabindex="0" data-popup-layer="fnMultiPurchaseGuidance" data-focus="fnMultiPurchaseGuidance">
						<div class="layer-header">
							<h2>패밀리넷 동일 품목 다량 구매 관련 안내</h2>
								</div>
				
						<div class="layer-content">
						<div class="privacy-terms">
							<div class="terms-box">
								<div class="point" id="fnMultiPurchasePrivacyTermsPoint">
									귀하는 동일 품목을 
									<strong>3대째(4대째)</strong>
									구매하고 계십니다.
								</div>
								<p class="mt20">
											패밀리넷은 제품의 사외 유출 및 부정 사용 예방을 위해 동일품목 다량 구매 시 본 서약 절차를 진행하고 있습니다.<br><br>
											B2B 용도, 재판매 등 패밀리넷 운영 취지에 맞지 않는 구매인 경우 인사상 징계 조치 될 수 있음을 안내 드립니다. 
										</p>
									</div>
						</div>    
						<div class="q-txt">본인은 상기 내용에 동의합니다.
							<strong class="red-color">(필수)</strong>
						</div>
						<div class="flex-btw-c mt20">
							<label for="inp01" class="lb-line">
								본인입력 
								<span class="ico-required">*<span>필수입력</span></span>
							</label>
							<div class="inp-wrap">
								<input type="text" id="agreeInput" class="inp-line" placeholder="본인은 상기 내용에 동의합니다.">
								<!-- case : 에러 시 클래스 block 추가 -->
								<div class="error-msg" id="agreeInputErrorMsg">
									<p>본인입력 내용을 입력 해주세요.</p>
								</div>
							</div>
						</div>
						<div class="btn-box double">
							<!-- case : 버튼 두개시 클래스 double 추가 -->
							<button type="button" class="btn btn-d btn-type1" title="동의 안함" id="multiPurchaseCancelBtn">동의 안함</button>
							<button type="button" class="btn btn-d btn-type2" title="동의함" id="multiPurchaseAgreeBtn">동의함</button>
						</div>
				
						</div>
						<button type="button" class="pop-close" id="multiPurchasePopupClose" data-focus-next="fnMultiPurchaseGuidance">팝업닫기</button>
				</div>
				<!-- e : 210402 패밀리넷 동일 품목 다량 구매 관련 안내 -->
				
				<!-- s : 210402 패밀리넷 품목별 초과 구매 관련 신청 안내 -->
				<div class="layer-pop layer-normal component-head" id="fnOverpurchaseApplyGuidance" tabindex="0" data-popup-layer="fnOverpurchaseApplyGuidance" data-focus="fnOverpurchaseApplyGuidance">
						<div class="layer-header">
								<h2>패밀리넷 품목별 초과 구매 관련 신청 안내</h2>
						</div>
				
						<div class="layer-content">
						<div class="privacy-terms">
							<div class="terms-box">
								<div class="point">귀하는 품목별 구매 가능 수량을 초과하여 구매하고 계십니다.</div><br>
								<div class="txt-box"> 패밀리넷은 임직원들이 저렴한 가격으로 자사 제품을 구매할 수 있도록 마련되었지만,  
									일부 직원이 같은 품목의 제품을 다수 구매하고 재판매 했던 사례가 있어 
									품목별 구매 수량을 제한하여 운영 중입니다.<br><br> 
									그러나, 지정 수량을 초과하여 구매가 필요한 경우에는 부서장 승인 후 구매가 가능하오니 아래 '바로가기' 를 클릭하셔서 품의를 진행해주시기 바랍니다.<br><br>
									※ 실제 지정 수량까지 구매하신 경우에만 초과 구매 추가신청이 가능합니다.
								</div>
							</div>
						</div>    
						<p class="q-txt">품목별 초과 구매 신청하시겠습니까?</p>
						<div class="btn-box double">
							<!-- 버튼 두개시 클래스 double 추가 -->
							<button type="button" class="btn btn-d btn-type1" title="취소" id="overpurchaseApplyCancelBtn">취소</button>
							<button type="button" class="btn btn-d btn-type2" title="바로가기" id="overpurchaseApplyDirectBtn">바로가기</button>
						</div>
						</div>
						<button type="button" class="pop-close" id="fnOverpurchasePopupClose" data-focus-next="fnOverpurchaseApplyGuidance">팝업닫기</button>
				</div>
				<!-- e : 210402 패밀리넷 품목별 초과 구매 관련 신청 안내 -->
				
				<!-- s : 혼수/이사 바로 구매 -->
				<div class="layer-pop layer-default" id="popupFamilyWeddingOrder" tabindex="0" data-popup-layer="popupFamilyWeddingOrder" data-focus="popupFamilyWeddingOrder"></div>
				<div class="layer-pop layer-default" id="popupFamilyWeddingOrderReal" tabindex="0" data-popup-layer="popupFamilyWeddingOrder" data-focus="popupFamilyWeddingOrder">
						<div class="layer-header blind">
								<h2>혼수/이사 장바구니 일반 구매 주문</h2>
						</div>
						<div class="layer-content">
						<p>현재 동일 카테고리의 상품이 혼수/이사 장바구니에 담겨 있기 때문에 본 상품은 일반 구매 주문으로 진행됩니다.</p>
						<p>구매를 진행하시겠습니까?</p>
						<p>(혼수/이사 장바구니의 기존 상품 삭제 후, 혼수/이사 적용하여 구매 가능합니다.)</p>
								<div class="btn-box double">
										<!-- 버튼 두개시 클래스 double 추가 -->
										<a href="javascript:void(0)" class="btn btn-d btn-type1">확인</a>
										<a href="javascript:void(0)" class="btn btn-d btn-type2">취소</a>
								</div>
						</div>
						<button type="button" class="pop-close" data-focus-next="popupFamilyWeddingOrder">팝업닫기</button>
				</div>
				<!-- e : 혼수/이사 바로 구매 -->
				
				<!-- s : 혼수/이사 장바구니 -->
				<div class="layer-pop layer-default" id="popupFamilyWeddingCart" tabindex="0" data-popup-layer="popupFamilyWeddingCart" data-focus="popupFamilyWeddingCart"></div>
				<div class="layer-pop layer-default" id="popupFamilyWeddingCartReal" tabindex="0" data-popup-layer="popupFamilyWeddingCart" data-focus="popupFamilyWeddingCart">
						<div class="layer-header blind">
								<h2>혼수/이사 장바구니 추가</h2>
						</div>
						<div class="layer-content">
						<p>현재 동일 카테고리의 상품이 혼수/이사 장바구니에 담겨 있기 때문에 본 상품은 일반장바구니에 이동됩니다.</p>
						<p>해당상품을 장바구니에 추가하시겠습니까?</p>
						<p>(혼수/이사 장바구니의 기존 상품 삭제 후, 혼수/이사 장바구니 담기가 가능합니다.)</p>
								<div class="btn-box double">
										<!-- 버튼 두개시 클래스 double 추가 -->
										<a href="javascript:void(0)" class="btn btn-d btn-type1">담기</a>
										<a href="javascript:void(0)" class="btn btn-d btn-type2">이동</a>
								</div>
						</div>
						<button type="button" class="pop-close" data-focus-next="popupFamilyWeddingCart">팝업닫기</button>
				</div>
				<div class="layer-pop layer-normal layer-agreement" id="popupBannerPopup01" tabindex="0" data-popup-layer="popupBannerPopup01" data-focus="popupBannerPopup01">
						<div class="layer-header blind">
						<h2></h2>
						</div>
						<div class="layer-content">
						 </div>
					<button type="button" class="pop-close" data-focus-next="popupOrderDeliveryAgrm07">팝업닫기</button>
				</div>
				<!-- e : 혼수/이사 장바구니 -->
				
				<!-- EPP몰 품목별 초과 구매 관련 안내 -->
				<div class="layer-pop layer-normal component-head" id="fnOverpurchaseGuidanceByEppmall" tabindex="0" data-popup-layer="fnOverpurchaseGuidanceByEppmall" data-focus="fnOverpurchaseGuidanceByEppmall">
						<div class="layer-header">
								<h2>패밀리몰 품목별 초과 구매 관련 안내</h2>
								</div>
						<div class="layer-content">
								<div class="privacy-terms">
										<div class="point">귀하는 품목별 구매 가능 수량을 초과하여 구매하고 계십니다.</div><br>
												<div class="txt-box">
																		패밀리몰은 임직원들이 저렴한 가격으로 자사 제품을 구매할 수 있도록 마련되었지만, 일부 직원이 같은 품목의 제품을 다수 구매하고 재판매 했던 사례가 있어 품목별 구매 수량을 제한하여 운영 중입니다.
																</div>
														</div>
						</div>
						<button type="button" class="pop-close" id="fnOverpurchasePopupClose" data-focus-next="fnOverpurchaseGuidanceByEppmall">팝업닫기</button>
				</div>
				
				<!-- s : 비교하기 b2c, fnet, fnet 디플(고도화) -->
				<!-- <script src="/sec/static/script/goods/goods-detail-view.js"></script> -->
				
				<!-- s : 비교하기 카드 -->
				<div class="pfpd-compare if2item close" style="bottom: 0px;">
					<div class="compare-innerWrap">
						<div class="toggle-toast">
							<a href="javascript:;" class="arrow-i" onclick="openCloseArrow()"><span class="blind">비교하기 펼치기</span></a>
						</div>
							<input type="hidden" id="compDispClsfEnNm" value="monitors">
							<input type="hidden" id="compDispClsfNm" value="">
						<div class="compare-inner flex-box">
							<div class="compare-catagory">
								<div class="box-droplist" id="compareDiv"><div id="compareDropList" class="wrap-droplist"><button id="compareDropListBtnSelect" class="droplist-button selected" title="최근 비교한 카테고리">최근 비교한 카테고리</button><ul class="droplist" id="dropList" tabindex="-1" data-roll="listbox"><li id="compareDropList" data-roll="option" class="droplist-item" data-comp-disp-clsf-en-nm="tablets" data-comp-disp-clsf-nm="태블릿" onclick="selectBtn(this)"><button type="button" id="dropListBtn">태블릿 (1/4)</button></li></ul></div></div>
							</div>
							
							<div class="compare-contentGroup">
								<div class="compare-content">
									<div class="slider-prd-compare" tabindex="-1">
										<div id="pfpdSlideCompare" class="">
					
					<div class="prd" value="tablets"><!-- 221230 : id 값 삭제 -->
					
					
					
						<div class="box">
							<div class="prd-left">
								
									<a href="/sec/tablets/galaxy-tab-s8-ultra-wifi-x900/SM-X900NZAFKOO/" class="prd-img"><img src="//images.samsung.com/kdp/goods/2022/10/25/53dba4fe-65b2-463a-b0a3-a89f7fc91996.png?$PG_PRD_CARD_PNG$" alt="갤럭시 탭 S8 Ultra (Wi-Fi)"></a><!-- 221230 : href 값 변경 -->
								
								
								
								
								<div class="prd-review">
									
										<a class="link-review" target="_blank" href="/sec/tablets/galaxy-tab-s8-ultra-wifi-x900/SM-X900NZAFKOO/?focus=review" title="상품평점">4.9 (517)</a><!-- 221230 -->
									
									
									
								</div>
								
							</div>
							<div class="prd-info">
								<strong class="name">갤럭시 탭 S8 Ultra (Wi-Fi)</strong>
								<span class="serial">SM-X900NZAFKOO</span>
								<span class="price">
								
									
								
								</span>
							</div>
							<button type="button" class="prd-delete prd-delete-mo" onclick="deleteCompare(this)" value="G000260027" data-omni="compare:delete"><span class="blind">삭제</span></button>
						</div>
					</div>
				
					<div class="prd" id="">
						<div class="box compare-emptyBox">
							<a href="#none" type="button" class="" onclick="openCompareAddPop(this)">
								<div class="prd-info">
									<span class="blind">plus(더하기)아이콘 버튼</span><span class="plus-i"></span>
									<span class="notice">비교하고 싶은 제품 최대<br class="mobile"> 4개까지 선택 가능해요!</span>
								</div>
							</a>
						</div>
					</div>
				
					<div class="prd" id="">
						<div class="box compare-emptyBox">
							<a href="#none" type="button" class="" onclick="openCompareAddPop(this)">
								<div class="prd-info">
									<span class="blind">plus(더하기)아이콘 버튼</span><span class="plus-i"></span>
									<span class="notice">비교하고 싶은 제품 최대<br class="mobile"> 4개까지 선택 가능해요!</span>
								</div>
							</a>
						</div>
					</div>
				
					<div class="prd" id="">
						<div class="box compare-emptyBox">
							<a href="#none" type="button" class="" onclick="openCompareAddPop(this)">
								<div class="prd-info">
									<span class="blind">plus(더하기)아이콘 버튼</span><span class="plus-i"></span>
									<span class="notice">비교하고 싶은 제품 최대<br class="mobile"> 4개까지 선택 가능해요!</span>
								</div>
							</a>
						</div>
					</div>
				</div>
									</div>
								</div>
								
								<div class="compare-btns">
									<ul>
										<li class="reset-i"><button class="btn-underline btn-reset" onclick="btnReset(this)" data-omni="compare:reset" value="tablets">비우기</button></li>
										<li><button class="btn btn-d btn-type2 btn-compare" id="compareBtn" data-popup-target="popupPrdCompare" value="tablets" onclick="openCompareWindow(this)" data-omni="compare:pop-up">비교하기 (1/4)</button></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- e : 비교하기 카드 -->
				
				<!-- s : 제품을 선택하세요(alert) -->
				<div class="layer-pop layer-default alert" id="choicePrdAlert" data-popup-layer="choicePrdAlert" data-focus="choicePrdAlert">
					<div class="layer-header blind"><h2> 제품을 선택하세요.</h2></div>
					<div class="layer-content">
						<p>제품을 선택하세요.</p>
						<div class="btn-box">
							<a href="javascript:void(0)" class="btn btn-d btn-type2">확인</a>
						</div>
					</div>
				</div>
				<!-- e : 제품을 선택하세요(alert) -->
				
				<!-- s : 제품 추가 팝업 -->
				<div class="layer-pop layer-normal chooseComparePrd" id="chooseComparePrd" tabindex="0" data-popup-layer="chooseComparePrd" data-focus="chooseComparePrd" aria-hidden="false" data-zindex="300" style="z-index: 300;">
					<div class="layer-header-compare">
						<span>비교할 제품을 선택하세요</span>
					</div>
					<div class="layer-content-compare">
						<section class="box-content-rounded product" id="selectProductList">
						
						</section>
					</div>
					<div class="btn-box">
						<button type="button" class="btn btn-d btn-type1" onclick="compareSelect()">비교하기</button> <!-- 제품 selected 되면 btn-type2 -->
					</div>
					<button type="button" class="pop-close" data-focus-next="chooseComparePrd">팝업닫기</button>
				</div>
				<!-- e : 제품 추가 팝업 -->
				
				<!-- s : 비교하기 팝업 -->
				<div class="layer-pop layer-normal popupPrdCompare" id="popupPrdCompare" data-popup-layer="popupPrdCompare" data-focus="popupPrdCompare" style="">
					<div class="layer-header-compare">
						<span>비교하기</span>
						<div class="selectBox-right">
							<div class="box-droplist" id="compareDiv"><div id="compareDropList" class="wrap-droplist"><button id="compareDropListBtnSelect" class="droplist-button selected" title="최근 비교한 카테고리">최근 비교한 카테고리</button><ul class="droplist" id="dropList" tabindex="-1" data-roll="listbox"><li id="compareDropList" data-roll="option" class="droplist-item" data-comp-disp-clsf-en-nm="tablets" data-comp-disp-clsf-nm="태블릿" onclick="selectBtn(this)"><button type="button" id="dropListBtn">태블릿 (1/4)</button></li></ul></div></div>
						</div>
					</div>
					<div class="layer-difference-compare">
						<div class="toggleCheck only-toggle">
						<input type="checkbox" id="toggle-check-on" checked="">
							<label for="toggle-check-on">토글버튼</label>
							<span class="labeltxt on" aria-hidden="true">차이점만 비교하기</span>
							<span class="labeltxt off">차이점만 비교하기</span>
						</div>
					</div>
					<div class="layer-filter-compare">
				
					</div>
				
					<div class="layer-content-compare-wrap">
						<div class="layer-content-compare" style="max-height: 479.999998px; height: 479.999998px;">
							<section class="box-content-rounded products">
								<div class="part1 slick-initialized slick-slider">
									
								<div aria-live="polite" class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 0px; transform: translate3d(0px, 0px, 0px);"></div></div></div>
							</section>
							<section class="box-content-rounded specDetails">
								<div class="part2 slick-initialized slick-slider">
									
								<div aria-live="polite" class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 0px; transform: translate3d(0px, 0px, 0px);"></div></div></div>
							</section>	
						</div>
					</div>
					<button type="button" class="pop-close" data-focus-next="popupPrdCompare">팝업닫기</button>
				</div>
				<!-- e : 비교하기 팝업-->
				
				<!-- s : 비교하기 mobile > select 221110 -->
				<div class="layer-pop moSelectPop" id="popupMobileSelect" data-popup-layer="popupMobileSelect" data-focus="popupMobileSelect">
					<div class="layer-header blind"> <h2>다른 카테고리 비교하기 선택</h2></div>
					<section>
						<ul id="moPopUp"></ul>
					</section>
					<button type="button" class="pop-close" data-focus-next="popupMobileSelect">팝업닫기</button>
				</div>
				<!-- e : 비교하기 mobile > select 221110 -->
				
				<!-- 비교하기 카드 템플릿 -->
				<script id="compareSummaryTempl" type="text/x-jsrender" data-jsv-tmpl="jsvTmpl">
					{{if ~fn_equals(pfGoods.stId, 1)}}
					<div class="prd" value="{{:goodsDetail.compDispClsfEnNm}}"><!-- 221230 : id 값 삭제 -->
					{{/if}}
					{{if ~fn_equals(pfGoods.stId, 2)}}
					<div class="prd" value="{{:goodsDetail.disp2ClsfEnNm}}"><!-- 221230 : id 값 삭제 -->
					{{/if}}
					{{if ~fn_equals(pfGoods.stId, 3)}}
					<div class="prd" value="{{:goodsDetail.disp2ClsfEnNm}}"><!-- 221230 : id 값 삭제 -->
					{{/if}}
						<div class="box">
							<div class="prd-left">
								{{if ~fn_equals(pfGoods.stId, 1)}}
									<a href="/sec/{{:summary.goodsDetailUrl}}" class="prd-img"><img src="{{:summary.imgPath}}?$PG_PRD_CARD_PNG$" alt="{{:goodsDetail.goodsNm}}"></a><!-- 221230 : href 값 변경 -->
								{{/if}}	
								{{if ~fn_equals(pfGoods.stId, 2)}}
									<a href="/{{:summary.goodsDetailUrl}}" class="prd-img"><img src="{{:summary.imgPath}}?$PG_PRD_CARD_PNG$" alt="{{:goodsDetail.goodsNm}}"></a><!-- 221230 : href 값 변경 -->
								{{/if}}
								{{if ~fn_equals(pfGoods.stId, 3)}}
									<a href="/solpopmall/{{:summary.goodsDetailUrl}}" class="prd-img"><img src="{{:summary.imgPath}}?$PG_PRD_CARD_PNG$" alt="{{:goodsDetail.goodsNm}}"></a><!-- 221230 : href 값 변경 -->
								{{/if}}
								{{if pfGoods.goodsAdvCmntStYn === 'Y' }}
								<div class="prd-review">
									{{if ~fn_equals(pfGoods.stId, 1)}}
										<a class="link-review" target="_blank" href="/sec/{{:summary.goodsDetailUrl}}?focus=review" title="상품평점">{{:goodsDetail.commentAvg}} ({{:goodsDetail.commentCnt}})</a><!-- 221230 -->
									{{/if}}
									{{if ~fn_equals(pfGoods.stId, 2)}}
										<a class="link-review" target="_blank" href="/{{:summary.goodsDetailUrl}}?focus=review" title="상품평점">{{:goodsDetail.commentAvg}} ({{:goodsDetail.commentCnt}})</a><!-- 221230 -->
									{{/if}}
									{{if ~fn_equals(pfGoods.stId, 3)}}
										<a class="link-review" target="_blank" href="/solpopmall/{{:summary.goodsDetailUrl}}?focus=review" title="상품평점">{{:goodsDetail.commentAvg}} ({{:goodsDetail.commentCnt}})</a><!-- 221230 -->
									{{/if}}
								</div>
								{{else}}
								<div class="prd-review">
									<a class="" target="_blank" href="javascript:void(0);" title="상품평점">&nbsp;</a>
								</div>
								{{/if}}	
							</div>
							<div class="prd-info">
								<strong class="name">{{:goodsDetail.goodsNm}}</strong>
								<span class="serial">{{:goodsDetail.mdlCode}}</span>									
								<span class="price" {{if summary.price == '0'}}style="display:none"{{/if}}>															
								{{if ~fn_notEmpty(summary.price)}}
									{{if ~fn_equals(goodsDetail.saleStatCd, 12) || ~fn_equals(goodsDetail.saleStatCd, 13) || ~fn_equals(goodsDetail.saleStatCd, 14)}}																															
										{{:summary.priceNm}}<em class="num">{{:~fn_comma( summary.price ) }} 원</em>
									{{/if}}																				
								{{/if}}
								</span>					
							</div>
							<button type="button" class="prd-delete prd-delete-mo" onclick="deleteCompare(this)" value="{{:goodsDetail.goodsId}}" data-omni="compare:delete"><span class="blind">삭제</span></button>
						</div>
					</div>
				</script>
				
				<!-- 비교하기 카드(빈상자) 템플릿 -->
				<script id="compareSummaryEmptyTempl" type="text/x-jsrender" data-jsv-tmpl="jsvTmpl">
					<div class="prd" id="">
						<div class="box compare-emptyBox">
							<a href="#none" type="button"  class="" onclick="openCompareAddPop(this)">
								<div class="prd-info">
									<span class="blind">plus(더하기)아이콘 버튼</span><span class="plus-i"></span>
									<span class="notice">비교하고 싶은 제품 최대<br class="mobile"> 4개까지 선택 가능해요!</span>
								</div>
							</a>
						</div>
					</div>
				</script>
				
				<!-- 비교하기 팝업 템플릿 -->
				<script id="compareItemTempl" type="text/x-jsrender">
					<div class="prdBox">
						<div class="prd prdDetail" id="compareItem{{:goodsDetail.goodsId}}"> <!-- 제품 선택되면 prdDetail 넣기 -->
							<div class="box">
								<div class="prd-img">
									<input id="check1" type="checkbox" name="pinIcon" required="" title="고정" tabindex="0">
									<label for="check1"><span class="blind">고정 아이콘</span></label>
									{{if ~fn_equals(pfGoods.stId, 1)}}
										<a href="/sec/{{:summary.goodsDetailUrl}}" tabindex="0"><img src="{{:summary.imgPath}}?$PG_PRD_CARD_PNG$" alt="{{:goodsDetail.goodsNm}}"></a>
									{{/if}}
									{{if ~fn_equals(pfGoods.stId, 2)}}
										<a href="/{{:summary.goodsDetailUrl}}" tabindex="0"><img src="{{:summary.imgPath}}?$PG_PRD_CARD_PNG$" alt="{{:goodsDetail.goodsNm}}"></a>
									{{/if}}
									{{if ~fn_equals(pfGoods.stId, 3)}}
										<a href="/solpopmall/{{:summary.goodsDetailUrl}}" tabindex="0"><img src="{{:summary.imgPath}}?$PG_PRD_CARD_PNG$" alt="{{:goodsDetail.goodsNm}}"></a>
									{{/if}}
									
									<button type="button" class="btn-del" onclick="deleteCompare(this)" value="{{:goodsDetail.goodsId}}" tabindex="0">삭제</button>
								</div>
								<div class="prd-info">
									<div class="name-box">
										<strong class="name">{{:goodsDetail.goodsNm}}</strong>
									</div>
									<span class="serial">{{:goodsDetail.mdlCode}}</span>
								</div>
								{{if pfGoods.goodsAdvCmntStYn === 'Y' }}
								<div class="prd-review">
									{{if ~fn_equals(pfGoods.stId, 1)}}
										<a class="link-review" target="_blank" href="/sec/{{:summary.goodsDetailUrl}}?focus=review" title="상품평점" tabindex="0">{{:goodsDetail.commentAvg}} ({{:goodsDetail.commentCnt}})</a>
									{{/if}}
									{{if ~fn_equals(pfGoods.stId, 2)}}
										<a class="link-review" target="_blank" href="/{{:summary.goodsDetailUrl}}?focus=review" title="상품평점" tabindex="0">{{:goodsDetail.commentAvg}} ({{:goodsDetail.commentCnt}})</a>
									{{/if}}
									{{if ~fn_equals(pfGoods.stId, 3)}}
										<a class="link-review" target="_blank" href="/solpopmall/{{:summary.goodsDetailUrl}}?focus=review" title="상품평점" tabindex="0">{{:goodsDetail.commentAvg}} ({{:goodsDetail.commentCnt}})</a>
									{{/if}}
								</div>
								{{else}}				
								<div class="prd-review">
									<a class="" target="_blank" href="javascript:void(0);" title="상품평점">&nbsp;</a>
								</div>
								{{/if}}
								<div class="prd-price">
									<div class="price-detail type-list">
										<ul class="list-price">
											{{if ~fn_equals(pfGoods.stId, 1)}}
												
												{{if (pfGoods.priceStr1 === '00' && pfGoods.priceStr2 != pfGoods.priceStr3) || pfGoods.priceStr1 !== '00' }}
													<li><span class="tit">기준가</span><span class="sale">{{:~fn_comma( pfGoods.priceStr2 ) }} 원</span></li>
												{{/if}}
												
												{{if (pfGoods.priceStr1 === '00' || pfGoods.priceStr1 !== '00') }}
													<li><span class="tit">회원가</span><span class="sale">{{:~fn_comma( pfGoods.priceStr3 ) }} 원</span></li>
												{{/if}}
												
												{{if pfGoods.priceStr1 !== '00' && pfGoods.outletFlgYn !== 'Y' }}
													<li><span class="tit">혜택가</span><span class="sale">{{:~fn_comma( pfGoods.priceStr4 ) }} 원</span></li>
												{{/if}}
												
												{{if pfGoods.priceStr1 !== '00' && pfGoods.outletFlgYn === 'Y' }}
													<li><span class="tit">아울렛 특가</span><span class="sale">{{:~fn_comma( pfGoods.priceStr4 ) }} 원</span></li>
												{{/if}}
											{{/if}}	
											{{if ~fn_equals(pfGoods.stId, 2) || ~fn_equals(pfGoods.stId, 3)}}
												<li><span class="tit">출고가</span><span class="sale">{{:~fn_comma( pfGoods.priceStr2 ) }} 원</span></li>
												<li><span class="tit">기준판매가</span><span class="sale">{{:~fn_comma( pfGoods.priceStr3 ) }} 원</span></li>
												
												{{if (pfGoods.priceStr4 !== '' && pfGoods.priceStr3 !== pfGoods.priceStr4) }}
													<li><span class="tit">특별판매가</span><span class="sale">{{:~fn_comma( pfGoods.priceStr4 ) }} 원</span></li>
												{{/if}}
												
												{{if (pfGoods.stGbCd === '30') }}
													<li><span class="tit">회사 지원금</span><span class="sale">{{:~fn_comma( pfGoods.priceStr5 ) }} 원</span></li>
												{{/if}}
												{{if ~fn_equals(pfGoods.stId, 2)}}
													<li><span class="tit">임직원가</span><span class="sale">{{:~fn_comma( pfGoods.priceStr6 ) }} 원</span></li>
												{{/if}}
												{{if ~fn_equals(pfGoods.stId, 3)}}
													<li><span class="tit">임직원가</span><span class="sale">{{:~fn_comma( pfGoods.priceStr6 ) }} 원</span></li>
												{{/if}}
												
											{{/if}}			
										</ul>
										</div>
									{{if ~fn_equals(pfGoods.stId, 1)}}
										{{if (pfGoods.mShipPtShowYn) }}
											<div class="point-detail">
												<span class="expect">적립 예정 포인트</span>
												<span class="point">{{:~fn_comma( pfGoods.membershipPoint ) }} 원</span>
											</div>		
										{{/if}}
							
									{{/if}}	
									{{if ~fn_equals(pfGoods.stId, 2) || ~fn_equals(pfGoods.stId, 3)}}
										{{if (pfGoods.mShipPtShowYn) }}
											<div class="point-detail">
												<span class="expect">적립 예정 포인트</span>
												<span class="point">{{:~fn_comma( pfGoods.membershipPoint ) }} 원</span>
											</div>
										{{/if}}
									{{/if}}
								</div>
				</div>
						</div>
					</div>
				</script>
				
				<!-- 비교하기 팝업(빈상자) 템플릿 -->
				<script id="compareItemEmptyTempl" type="text/x-jsrender">
					<div class="prdBox">
						<div class="prd" id="">
							<div class="box compare-emptyBox">
								<a href="#none" type="button"  class="" onclick="openCompareAddPop(this)">
									<div class="prd-info">
										<span class="blind">plus(더하기)아이콘 버튼</span><span class="plus-i"></span>
										<span class="notice">비교하고 싶은 제품 최대<br class="mobile"> 4개까지 선택 가능해요!</span>
									</div>
								</a>
							</div>
						</div>
					</div>
				</script>
				
				<!-- 비교하기 팝업 스펙 템플릿 -->
				<script id="compareItemSpecTempl" type="text/x-jsrender">
					<div class="prdBox">
						<div class="spec">
							<div class="box-spec-detail">
							</div>
						</div>
					</div>
				</script>
				
				<!-- 비교하기 팝업 상세 스펙 템플릿 -->
				<script id="compareItemSpecDetailTempl" type="text/x-jsrender">
					<div class="set specAnchor{{:specIdx }}" id="set{{:specIdx}}">
					{{if ~fn_notEmpty(depth2) }}
						<h3>{{: dispNm }}</h3>
						{{for depth2}}
						<dl>
							<dt>{{: DISP_NM }} </dt>
							<dd><span>{{: SPEC_VALUE }}</span></dd>
						</dl>
						{{/for}}
					{{else}}
						<h3>{{: dispNm }}</h3>
						<dl>
							<dt>{{: dispNm }} </dt>
							<dd><span>-</span></dd>
						</dl>
					{{/if}}
					</div>
				</script>
				
				<!-- 비교하기 팝업 스펙(빈상자) 템플릿 -->
				<script id="compareItemSpecEmptyTempl" type="text/x-jsrender">
					<div class="prdBox">
						<div class="spec emptyBox"> <!-- 값 뿌리면서 emptyBox 삭제 -->
							<div class="box-spec-detail">
								<!-- <div class="set">
									<h3></h3>
									<dl>
										<dt></dt>
										<dd><span></span></dd>
									</dl>
								</div>
								<div class="set">
									<h3></h3><dl><dt></dt><dd><span></span></dd></dl>
								</div>
								<div class="set">
									<h3></h3><dl><dt></dt><dd><span></span></dd></dl>
								</div>
								<div class="set">
									<h3></h3><dl><dt></dt><dd><span></span></dd></dl>
								</div>-->
							</div>
						</div>
					</div>
				</script>
				
				<script type="text/javascript">
					var pfpdCompare = document.querySelector('.pfpd-compare');
					var toggleToast = document.querySelector('.pfpd-compare .toggle-toast .arrow-i'); /* 221124 : pf랑 통일 */
					
					/* 비교하기 만료일자 스토리지 생성 */
					var expireDateDataStorage = '/sec/'+'compare/expireDate';
					var expireDateData = JSON.parse(localStorage.getItem(expireDateDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(expireDateDataStorage));
				
					var compareDataStorage, compareData;/* 비교하기 스토리지 생성(B2C) */
					var categoryDataStorage, categoryData;/* 카테고리 스토리지 생성(B2C) */
					var goodsIdDataStorage, goodsIdData;/* total goodsId 스토리지 생성(B2C) */
					var lastCompDataStorage, lastCompData;/* 마지막 담은 상품 스토리지 생성(B2C) */
					
					var compareDataStorageFNET, compareDataFNET;/* 비교하기 스토리지 생성(FNET) */
					var categoryDataStorageFNET, categoryDataFNET;/* 카테고리 스토리지 생성(FNET) */
					var goodsIdDataStorageFNET, goodsIdDataFNET;/* total goodsId 스토리지 생성(FNET) */
					var lastCompDataStorageFNET, lastCompDataFNET;/* 마지막 담은 상품 스토리지 생성(FNET) */
					
					var compareDataStorageFNET_SOL, compareDataFNET_SOL;/* 비교하기 스토리지 생성(FNET 디플) */
					var categoryDataStorageFNET_SOL, categoryDataFNET_SOL;/* 카테고리 스토리지 생성(FNET 디플) */
					var goodsIdDataStorageFNET_SOL, goodsIdDataFNET_SOL;/* total goodsId 스토리지 생성(FNET 디플) */
					var lastCompDataStorageFNET_SOL, lastCompDataFNET_SOL;/* 마지막 담은 상품 스토리지 생성(FNET 디플) */
					
					if('1' == '1'){
						/* 비교하기 스토리지 생성 */
						 compareDataStorage = '/sec/'+'compare/'+$("#compDispClsfEnNm").val(); 
						compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorage));
						
						/* 카테고리 스토리지 생성 */
						categoryDataStorage = '/sec/'+'compare/category'; 
						categoryData = JSON.parse(localStorage.getItem(categoryDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(categoryDataStorage));
						
						/* total goodsId 스토리지 생성 */
						goodsIdDataStorage = '/sec/'+'compare/goodsId'; 
						goodsIdData = JSON.parse(localStorage.getItem(goodsIdDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(goodsIdDataStorage));
						
						/* 마지막 담은 상품 스토리지 생성 */
						lastCompDataStorage = '/sec/'+'compare/lastComp'; 
						lastCompData = JSON.parse(localStorage.getItem(lastCompDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(lastCompDataStorage));
					
					}else if('1' == '2'){
						/* 비교하기 스토리지 생성 */
						 compareDataStorageFNET = '/sec/'+'fnet/compare/'+$("#compDispClsfEnNm").val();
						compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET));
					
						/* 카테고리 스토리지 생성 */
						categoryDataStorageFNET = '/sec/'+'fnet/compare/category';
						categoryDataFNET = JSON.parse(localStorage.getItem(categoryDataStorageFNET)) == null ? {}: JSON.parse(localStorage.getItem(categoryDataStorageFNET));
					
						/* total goodsId 스토리지 생성 */
						goodsIdDataStorageFNET = '/sec/'+'fnet/compare/goodsId';
						goodsIdDataFNET = JSON.parse(localStorage.getItem(goodsIdDataStorageFNET)) == null ? {}: JSON.parse(localStorage.getItem(goodsIdDataStorageFNET));
						
						/* 마지막 담은 상품 스토리지 생성 */
						lastCompDataStorageFNET = '/sec/'+'fnet/compare/lastComp';
						lastCompDataFNET = JSON.parse(localStorage.getItem(lastCompDataStorageFNET)) == null ? {}: JSON.parse(localStorage.getItem(lastCompDataStorageFNET));
					
					}else if('1' == '3'){
						/* 비교하기 스토리지 생성 */
						 compareDataStorageFNET_SOL = '/sec/'+'fnet_sol/compare/'+$("#compDispClsfEnNm").val(); 
						compareDataFNET_SOL = JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL));
					
						/* 카테고리 스토리지 생성 */
						categoryDataStorageFNET_SOL = '/sec/'+'fnet_sol/compare/category'; 
						categoryDataFNET_SOL = JSON.parse(localStorage.getItem(categoryDataStorageFNET_SOL)) == null ? {}: JSON.parse(localStorage.getItem(categoryDataStorageFNET_SOL)); 
					
						/* total goodsId 스토리지 생성 */
						goodsIdDataStorageFNET_SOL = '/sec/'+'fnet_sol/compare/goodsId'; 
						goodsIdDataFNET_SOL = JSON.parse(localStorage.getItem(goodsIdDataStorageFNET_SOL)) == null ? {}: JSON.parse(localStorage.getItem(goodsIdDataStorageFNET_SOL)); 
						
						/* 마지막 담은 상품 스토리지 생성 */
						lastCompDataStorageFNET_SOL = '/sec/'+'fnet_sol/compare/lastComp'; 
						lastCompDataFNET_SOL = JSON.parse(localStorage.getItem(lastCompDataStorageFNET_SOL)) == null ? {}: JSON.parse(localStorage.getItem(lastCompDataStorageFNET_SOL)); 
					
					}
					
					/* 비교하기 팝업 버튼 이벤트(필요) */
					function openCompareWindow(self) {console.log("비교하기 팝업 버튼 이벤트(필요)");
						
						/* 차이점 비활성화 */
						if($('.popupPrdCompare .layer-difference-compare .toggleCheck .labeltxt.off').attr('aria-hidden') == 'true'){
							var compDispClsfEnNm = '';
							if($('#compareBtn').val() == ''){ $('#compareBtn').val($('.prd').attr('value')); $('.btn-reset').val($('.prd').attr('value')); }
							compDispClsfEnNm = $('#compareBtn').val();
							
							/* 비교하기 팝업 정보 세팅 스토리지(차이점 비활성화)(필요) */
							setCompInfoStrg(compDispClsfEnNm, false, true);
						}else{/* 차이점 활성화 */
							
							/* 비교하기 팝업 정보 세팅 DB(차이점 활성화)(필요) */
							setCompInfoDb();
						}
					}
					
					/* 비교하기 제품 삭제(필요) */
					function deleteCompare(self) {console.log("비교하기 제품 삭제");
						var val = $(self).val();	var lan; 
						var compDispClsfEnNm = '';
						if($('.btn-reset').val() == ''){ $('#compareBtn').val($('.prd').attr('value')); $('.btn-reset').val($('.prd').attr('value')); }
						compDispClsfEnNm = $('.btn-reset').val();
						
						if('1' == '1'){
							lan = Object.keys(compareData).length; 
							
							if (lan == 1) {/* 비교하기 1개인 경우 */
								delete categoryData[compDispClsfEnNm]; localStorage.setItem(categoryDataStorage, JSON.stringify(categoryData));
								openCloseArrow();
								$('#chooseComparePrd').find('.pop-close').click();
								$('#popupPrdCompare').find('.pop-close').click();
							}
							
							delete compareData[val]; localStorage.setItem(compareDataStorage, JSON.stringify(compareData));
							delete goodsIdData[val]; localStorage.setItem(goodsIdDataStorage, JSON.stringify(goodsIdData));
							delete lastCompData[val]; localStorage.setItem(lastCompDataStorage, JSON.stringify(lastCompData));
							
							/* 비교하기 데이터 없으면 slider 숨김 */
							if(Object.keys(goodsIdData).length == 0){ $(".pfpd-compare").css("display","none"); }
							
							if(lan == 1 && Object.keys(goodsIdData).length != 0){
								compareDataStorage = '/sec/'+'compare/'+Object.values(goodsIdData)[0];
								 compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorage));  
								localStorage.setItem(compareDataStorage, JSON.stringify(compareData));
								
								$('.btn-reset').val(Object.values(goodsIdData)[0]);
								$('#compareBtn').val(Object.values(goodsIdData)[0]);
								
								setCompInfoStrg(Object.values(goodsIdData)[0], true, true);
								addSelectedBtn(Object.values(compareData).length);
							}else{
								setCompInfoStrg(compDispClsfEnNm, true, true);
								addSelectedBtn(Object.values(compareData).length);
							}
						}else if('1' == '2'){
							lan = Object.keys(compareDataFNET).length; 
							
							if (lan == 1) {/* 비교하기 1개인 경우 */
								delete categoryDataFNET[compDispClsfEnNm]; localStorage.setItem(categoryDataStorageFNET, JSON.stringify(categoryDataFNET));
								openCloseArrow();
								$('#chooseComparePrd').find('.pop-close').click();
								$('#popupPrdCompare').find('.pop-close').click();
							}
							
							delete compareDataFNET[val]; localStorage.setItem(compareDataStorageFNET, JSON.stringify(compareDataFNET));
							delete goodsIdDataFNET[val]; localStorage.setItem(goodsIdDataStorageFNET, JSON.stringify(goodsIdDataFNET));
							delete lastCompDataFNET[val]; localStorage.setItem(lastCompDataStorageFNET, JSON.stringify(lastCompDataFNET));
							
							///* 비교하기 데이터 없으면 slider 숨김 */
							if(Object.keys(goodsIdDataFNET).length == 0){ $(".pfpd-compare").css("display","none"); }
							
							if(lan == 1 && Object.keys(goodsIdDataFNET).length != 0){
								compareDataStorageFNET = '/sec/'+'fnet/compare/'+Object.values(goodsIdDataFNET)[0];
								 compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET));  
								localStorage.setItem(compareDataStorageFNET, JSON.stringify(compareDataFNET));
								
								$('.btn-reset').val(Object.values(goodsIdDataFNET)[0]);
								$('#compareBtn').val(Object.values(goodsIdDataFNET)[0]);
								
								setCompInfoStrg(Object.values(goodsIdDataFNET)[0], true, true);
								addSelectedBtn(Object.values(compareDataFNET).length);
							}else{
								setCompInfoStrg(compDispClsfEnNm, true, true);
								addSelectedBtn(Object.values(compareDataFNET).length);
							}
						}else if('1' == '3'){
							lan = Object.keys(compareDataFNET_SOL).length; 
							
							if (lan == 1) {/* 비교하기 1개인 경우 */
								delete categoryDataFNET_SOL[compDispClsfEnNm]; localStorage.setItem(categoryDataStorageFNET_SOL, JSON.stringify(categoryDataFNET_SOL));
								openCloseArrow();
								$('#chooseComparePrd').find('.pop-close').click();
								$('#popupPrdCompare').find('.pop-close').click();
							}
							
							delete compareDataFNET_SOL[val]; localStorage.setItem(compareDataStorageFNET_SOL, JSON.stringify(compareDataFNET_SOL));
							delete goodsIdDataFNET_SOL[val]; localStorage.setItem(goodsIdDataStorageFNET_SOL, JSON.stringify(goodsIdDataFNET_SOL));
							delete lastCompDataFNET_SOL[val]; localStorage.setItem(lastCompDataStorageFNET_SOL, JSON.stringify(lastCompDataFNET_SOL));
							
							/* 비교하기 데이터 없으면 slider 숨김 */
							if(Object.keys(goodsIdDataFNET_SOL).length == 0){ $(".pfpd-compare").css("display","none"); }
							
							if(lan == 1 && Object.keys(goodsIdDataFNET_SOL).length != 0){
								compareDataStorageFNET_SOL = '/sec/'+'fnet_sol/compare/'+Object.values(goodsIdDataFNET_SOL)[0];
								 compareDataFNET_SOL = JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL));  
								localStorage.setItem(compareDataStorageFNET_SOL, JSON.stringify(compareDataFNET_SOL));
								
								$('.btn-reset').val(Object.values(goodsIdDataFNET_SOL)[0]);
								$('#compareBtn').val(Object.values(goodsIdDataFNET_SOL)[0]);
								
								setCompInfoStrg(Object.values(goodsIdDataFNET_SOL)[0], true, true);
								addSelectedBtn(Object.values(compareDataFNET_SOL).length);
							}else{
								setCompInfoStrg(compDispClsfEnNm, true, true);
								addSelectedBtn(Object.values(compareDataFNET_SOL).length);
							}
						}
						
						categoryBtn();
						disabledCompareButton();
						
						if($('.popupPrdCompare .layer-difference-compare .toggleCheck .labeltxt.off').attr('aria-hidden') == 'true'){
						}else{
							setCompInfoDb();
						}
					}
					
					/* 비교하기 대상or비대상 +비교하기 버튼 처리(PF)(필요) */
					function disabledCompareButton() {console.log("비교하기 대상or비대상 +비교하기 버튼 처리(PF)(필요)");
						$('.link-compare-i').each(function(i) {
							if ($(this).is('.disabled')) { if (!isCompareDataStorageGoods($(this).data('goodsId'))) { $(this).removeClass('disabled'); }
							} else { if (isCompareDataStorageGoods($(this).data('goodsId'))) { $(this).addClass('disabled'); }}
						});
					}
					
					/* 비교 대상이 로컬스토리지에 있는지 여부 확인(필요) *//* 비교하기 대상or비대상 +비교하기 버튼 처리(PF) */
					function isCompareDataStorageGoods(goodsId) {console.log("비교 대상이 로컬스토리지에 있는지 여부 확인(필요)");
						var result = false; var keys;
						
						if('1' == '1'){ keys = Object.keys(goodsIdData);
						}else if('1' == '2'){ keys = Object.keys(goodsIdDataFNET);
						}else if('1' == '3'){ keys = Object.keys(goodsIdDataFNET_SOL); }
						
						if (keys.length > 0) {
							for (var i = 0; i < keys.length; i++) {
								if (keys[i] == goodsId) { result = true; }
							}
						}
						return result;
					}
					
					/* 제품 선택 팝업창 확인 버튼(필요) */
					function compareSelect() {console.log("제품 선택 팝업창 확인 버튼(필요)");
						var self = $("#chooseComparePrd .prd.active").find('input[name="PrdSelect"]');
						var compareDataBef;
						if($("#chooseComparePrd").find("button.btn.btn-d").hasClass("btn-type2") && $("#chooseComparePrd").find(".prd").hasClass("active")){
							ajax.call({
								data : self.data()
								, async : false
								, url : "/sec/xhr/goods/incGoodsCompare"
								, type : 'POST'
								, dataType : 'json'
								, done : function(data) {
									if('1' == '1'){
										/* 비교하기 데이터 추가 */
										compareDataStorage = '/sec/'+'compare/'+data.summary.compDispClsfEnNm;
										compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorage)); 
										compareDataBef = compareData;
										compareData[data.goodsDetail.goodsId] = data;
										localStorage.setItem(compareDataStorage, JSON.stringify(compareData));
										
										/* 비교하기 활성화 goodId 추가 */
										goodsIdData[data.goodsDetail.goodsId] = data.summary.compDispClsfEnNm;
										localStorage.setItem(goodsIdDataStorage, JSON.stringify(goodsIdData));
										
										/* 마지막 담은 상품 추가 */
										lastCompData = {};
										lastCompData[data.goodsDetail.goodsId] = data.summary.compDispClsfEnNm;
										localStorage.setItem(lastCompDataStorage, JSON.stringify(lastCompData));
										
										addSelectedBtn(Object.values(compareData).length);
									}else if('1' == '2'){
										/* 비교하기 데이터 추가 */
										compareDataStorageFNET = '/sec/'+'fnet/compare/'+data.summary.compDispClsfEnNm;
										compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET)); 
										compareDataBef = compareDataFNET;
										compareDataFNET[data.goodsDetail.goodsId] = data;
										localStorage.setItem(compareDataStorageFNET, JSON.stringify(compareDataFNET));
										
										/* 비교하기 활성화 goodId 추가 */
										goodsIdDataFNET[data.goodsDetail.goodsId] = data.summary.compDispClsfEnNm;
										localStorage.setItem(goodsIdDataStorageFNET, JSON.stringify(goodsIdDataFNET));
										
										/* 마지막 담은 상품 추가 */
										lastCompDataFNET = {};
										lastCompDataFNET[data.goodsDetail.goodsId] = data.summary.compDispClsfEnNm;
										localStorage.setItem(lastCompDataStorageFNET, JSON.stringify(lastCompDataFNET));
										
										addSelectedBtn(Object.values(compareDataFNET).length);
									}else if('1' == '3'){
										/* 비교하기 데이터 추가 */
										compareDataStorageFNET_SOL = '/sec/'+'fnet_sol/compare/'+data.summary.compDispClsfEnNm;
										compareDataFNET_SOL = JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)); 
										compareDataBef = compareDataFNET_SOL;
										compareDataFNET_SOL[data.goodsDetail.goodsId] = data;
										localStorage.setItem(compareDataStorageFNET_SOL, JSON.stringify(compareDataFNET_SOL));
										
										/* 비교하기 활성화 goodId 추가 */
										goodsIdDataFNET_SOL[data.goodsDetail.goodsId] = data.summary.compDispClsfEnNm;
										localStorage.setItem(goodsIdDataStorageFNET_SOL, JSON.stringify(goodsIdDataFNET_SOL));
										
										/* 마지막 담은 상품 추가 */
										lastCompDataFNET_SOL = {};
										lastCompDataFNET_SOL[data.goodsDetail.goodsId] = data.summary.compDispClsfEnNm;
										localStorage.setItem(lastCompDataStorageFNET_SOL, JSON.stringify(lastCompDataFNET_SOL));
										
										addSelectedBtn(Object.values(compareDataFNET_SOL).length);
									}
									setCompInfoStrg(data.summary.compDispClsfEnNm, true, true);
									
									// Adobe Rule 호출
									_satellite.track("pd compare", {
										index : (Object.keys(compareDataBef).length + 1),
										mdlInfo : data.pfGoods.mdlNm
									});
									
									$('#chooseComparePrd').find('.pop-close').click();
									//$('#popupPrdCompare').find('.pop-close').click();
									
								}
								, fail : function(data) {
									if (!isCompareDataStorageGoods($(this).data('goodsId'))) { $(this).removeClass('disabled'); }
								}
								, error : function(error) {
									if (!isCompareDataStorageGoods($(this).data('goodsId'))) { $(this).removeClass('disabled'); }
								}
							});
							categoryBtn();/* 카테고리 select box */
							disabledCompareButton();
							
							if($('.popupPrdCompare .layer-difference-compare .toggleCheck .labeltxt.off').attr('aria-hidden') == 'true'){
							}else{
								setCompInfoDb();
							}
							
							if($('.pfpd-compare').hasClass("close") || (!$('.pfpd-compare').hasClass("close") && !$('.pfpd-compare').hasClass("open"))){
								$('.pfpd-compare').addClass("close");
								openCloseArrow();	
							}
						}else{
							commonAlert({ content : "제품을 선택 하세요." });
							openLayer('commonAlert');
						}
					}
					
					//비교하기 제품 추가(Pf에서 쓰임)(필요)
					function readyCompare(self) {console.log("비교하기 제품 추가(Pf에서 쓰임)(필요)");
						self = $(self); self.parent().toggleClass('active');
						var filter = "win16|win32|win64|mac|macintel";
						 
						if ($(self).hasClass('link-compare-i disabled')) {
							commonAlert({ content : "이미 담은 제품 입니다." });
							openLayer('commonAlert');
							return false;
						}
						
						var compDispClsfEnNm = '';
						if($('#compareBtn').val() == ''){ $('#compareBtn').val($('.prd').attr('value')); $('.btn-reset').val($('.prd').attr('value')); }
						compDispClsfEnNm = $('#compareBtn').val();
						
						var compareDataStorageNew, compareDataNew;
						var compareDataStorageBef, compareDataBef;
						if('1' == '1'){
							compareDataStorageNew = '/sec/'+'compare/'+self.data('comp-disp-clsf-en-nm');
							compareDataNew = JSON.parse(localStorage.getItem(compareDataStorageNew)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageNew));
							compareDataStorageBef = '/sec/'+'compare/'+compDispClsfEnNm;
							compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageBef));
						}else if('1' == '2'){
							compareDataStorageNew = '/sec/'+'fnet/compare/'+self.data('comp-disp-clsf-en-nm');
							compareDataNew = JSON.parse(localStorage.getItem(compareDataStorageNew)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageNew));
							compareDataStorageBef = '/sec/'+'fnet/compare/'+compDispClsfEnNm;
							compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageBef));
						}else if('1' == '3'){
							compareDataStorageNew = '/sec/'+'fnet_sol/compare/'+self.data('comp-disp-clsf-en-nm');
							compareDataNew = JSON.parse(localStorage.getItem(compareDataStorageNew)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageNew));
							compareDataStorageBef = '/sec/'+'fnet_sol/compare/'+compDispClsfEnNm;
							compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageBef));
						}
				
						if(compareDataStorageNew == compareDataStorageBef){ /* 선택된 카테고리와 동일한 카테고리 상품 담을 때 */			
							if (!(filter.indexOf(navigator.platform.toLowerCase()) < 0)) { /* pc 4개 */
								if (Object.keys(compareDataBef).length == 4) { commonAlert({ content : "최대 4개까지 담을 수 있습니다." }); self.parent().toggleClass('active'); openLayer('commonAlert');
									return false;
								}
							} else { /* mo 4개 */ 
								if (Object.keys(compareDataBef).length == 4) { commonAlert({ content : "최대 4개까지 담을 수 있습니다." }); self.parent().toggleClass('active'); openLayer('commonAlert');
									return false;
								}
							}
						}else{ /* 선택된 카테고리와 다른 카테고리 상품 담을 때 */
							var len = '';
							if(compareDataNew == null){ len = 0; }else{ len = Object.keys(compareDataNew).length; }
							if (!(filter.indexOf(navigator.platform.toLowerCase()) < 0)) { /* pc 4개 */
								if (len == 4) { commonAlert({ content : "최대 4개까지 담을 수 있습니다." }); self.parent().toggleClass('active'); openLayer('commonAlert');
									return false;
								}
							} else { /* mo 4개 */ 
								if (len == 4) { commonAlert({ content : "최대 4개까지 담을 수 있습니다." }); self.parent().toggleClass('active'); openLayer('commonAlert');
									return false;
								}
							}
						}
				
						if(Object.keys(compareDataBef).length == 0){ $('#pfpdSlideCompare').empty(); }
						
						ajax.call({
							data : $(self).data()
							, url : "/sec/xhr/goods/incGoodsCompare"
							, type : 'POST'
							, dataType : 'json'
							, done : function(data) {
								$('#compDispClsfEnNm').val(data.summary.compDispClsfEnNm);
								$('#compDispClsfNm').val(data.summary.compDispClsfNm);
								$('.btn-reset').val(data.summary.compDispClsfEnNm);
								$('#compareBtn').val(data.summary.compDispClsfEnNm);
								
								if('1' == '1'){
									/* 비교하기 데이터 추가 */
									 compareDataStorage = '/sec/'+'compare/'+data.summary.compDispClsfEnNm;
									compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorage)); 
									compareData[data.goodsDetail.goodsId] = data;
									localStorage.setItem(compareDataStorage, JSON.stringify(compareData));
									
									/* 비교하기 활성화 goodId 추가 */
									goodsIdData[data.goodsDetail.goodsId] = data.summary.compDispClsfEnNm;
									localStorage.setItem(goodsIdDataStorage, JSON.stringify(goodsIdData));
									
									/* 마지막 담은 상품 추가 */
									lastCompData = {};
									lastCompData[data.goodsDetail.goodsId] = data.summary.compDispClsfEnNm;
									localStorage.setItem(lastCompDataStorage, JSON.stringify(lastCompData));
									
									/* 카테고리 항목 스토리지에 추가 */
									var array = [];		
									for(var i=0; i<localStorage.length; i++){
										array[i] = localStorage.key(i);
										if(array[i].includes('/sec/compare/')){
											var index = array[i].lastIndexOf("/")+1;
											if(array[i].substring(index) == data.summary.compDispClsfEnNm && categoryData[array[i].substring(index)] != $("#compareDropList").text()){
												categoryData[array[i].substring(index)] = data.summary.compDispClsfNm;
												localStorage.setItem(categoryDataStorage, JSON.stringify(categoryData));
											}
										}
									}
									
									addSelectedBtn(Object.values(compareData).length);
								}else if('1' == '2'){
									/* 비교하기 데이터 추가 */
									 compareDataStorageFNET = '/sec/'+'fnet/compare/'+data.summary.compDispClsfEnNm;
									compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET)); 
									compareDataFNET[data.goodsDetail.goodsId] = data;
									localStorage.setItem(compareDataStorageFNET, JSON.stringify(compareDataFNET));
									
									/* 비교하기 활성화 goodId 추가 */
									goodsIdDataFNET[data.goodsDetail.goodsId] = data.summary.compDispClsfEnNm;
									localStorage.setItem(goodsIdDataStorageFNET, JSON.stringify(goodsIdDataFNET));
									
									/* 마지막 담은 상품 추가 */
									lastCompDataFNET = {};
									lastCompDataFNET[data.goodsDetail.goodsId] = data.summary.compDispClsfEnNm;
									localStorage.setItem(lastCompDataStorageFNET, JSON.stringify(lastCompDataFNET));
									
									/* 카테고리 항목 스토리지에 추가 */
									var array = [];		
									for(var i=0; i<localStorage.length; i++){
										array[i] = localStorage.key(i);
										if(array[i].includes('/fnet/compare/')){
											var index = array[i].lastIndexOf("/")+1;
											if(array[i].substring(index) == data.summary.compDispClsfEnNm && categoryDataFNET[array[i].substring(index)] != $("#compareDropList").text()){
												categoryDataFNET[array[i].substring(index)] = data.summary.compDispClsfNm;
												localStorage.setItem(categoryDataStorageFNET, JSON.stringify(categoryDataFNET));
											}
										}
									}
									
									addSelectedBtn(Object.values(compareDataFNET).length);
								}else if('1' == '3'){
									/* 비교하기 데이터 추가 */
									 compareDataStorageFNET_SOL = '/sec/'+'fnet_sol/compare/'+data.summary.compDispClsfEnNm;
									compareDataFNET_SOL = JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)); 
									compareDataFNET_SOL[data.goodsDetail.goodsId] = data;
									localStorage.setItem(compareDataStorageFNET_SOL, JSON.stringify(compareDataFNET_SOL));
									
									/* 비교하기 활성화 goodId 추가 */
									goodsIdDataFNET_SOL[data.goodsDetail.goodsId] = data.summary.compDispClsfEnNm;
									localStorage.setItem(goodsIdDataStorageFNET_SOL, JSON.stringify(goodsIdDataFNET_SOL));
									
									/* 마지막 담은 상품 추가 */
									lastCompDataFNET_SOL = {};
									lastCompDataFNET_SOL[data.goodsDetail.goodsId] = data.summary.compDispClsfEnNm;
									localStorage.setItem(lastCompDataStorageFNET_SOL, JSON.stringify(lastCompDataFNET_SOL));
									
									/* 카테고리 항목 스토리지에 추가 */
									var array = [];		
									for(var i=0; i<localStorage.length; i++){
										array[i] = localStorage.key(i);
										if(array[i].includes('/fnet_sol/compare/')){
											var index = array[i].lastIndexOf("/")+1;
											if(array[i].substring(index) == data.summary.compDispClsfEnNm && categoryDataFNET_SOL[array[i].substring(index)] != $("#compareDropList").text()){
												categoryDataFNET_SOL[array[i].substring(index)] = data.summary.compDispClsfNm;
												localStorage.setItem(categoryDataStorageFNET_SOL, JSON.stringify(categoryDataFNET_SOL));
											}
										}
									}
									
									addSelectedBtn(Object.values(compareDataFNET_SOL).length);
								}				
								
								
								//마지막 담은 상품의 날짜/시간/분 저장
								expireDateData = {};
								let today = new Date();
								expireDateData['date'] = dateFormat(today);
								localStorage.setItem(expireDateDataStorage, JSON.stringify(expireDateData));
								
								$('#pfpdSlideCompare').empty();
								
								setCompInfoStrg(data.summary.compDispClsfEnNm, true, false);
								
								categoryBtn();/* 카테고리 select box */
								disabledCompareButton();
								
								if($('.pfpd-compare').hasClass("close") || (!$('.pfpd-compare').hasClass("close") && !$('.pfpd-compare').hasClass("open"))){
									$('.pfpd-compare').addClass("close");
									openCloseArrow();	
								}
								
								// Adobe Rule 호출
								_satellite.track("pd compare", {
									index : (Object.keys(compareDataBef).length + 1),
									mdlInfo : data.pfGoods.mdlNm
								});
								
								$(".list-product li").find(".link-compare-i").removeAttr("data-compare-target");/* 웹접근성 포커싱 처리를 위한 attribute */
								$(self).attr("data-compare-target", "true");/* 웹접근성 포커싱 처리를 위한 attribute */
								$(".pfpd-compare").css("display","");
							}
							, fail : function(data) {
								if (!isCompareDataStorageGoods($(this).data('goodsId'))) { $(this).removeClass('disabled'); }
							}
							, error : function(error) {
								if (!isCompareDataStorageGoods($(this).data('goodsId'))) { $(this).removeClass('disabled'); }
							}
						});
					}
					
					function dateFormat(date){
						let month = date.getMonth() + 1;
						let day = date.getDate();
						let hour = date.getHours();
						let minute = date.getMinutes();
						let second = date.getSeconds();
						
						month = month >= 10 ? month : '0' + month ;
						day = day >= 10 ? day : '0' + day;
						hour = hour >= 10 ? hour : '0' + hour;
						minute = minute >= 10 ? minute : '0' + minute;
						second = second >= 10 ? second : '0' + second;
						
						return date.getFullYear() + '-' + month + '-' + day + ' ' + hour + ':' + minute + ':' + second;
					}
					
					/* 카테고리 select box(필요) */
					function categoryBtn(){console.log("카테고리 select box(필요)");
						var categoryDataBefLen; var categoryDataBef;
						if('1' == '1'){ categoryDataBefLen = Object.values(categoryData).length; categoryDataBef = categoryData;
						}else if('1' == '2'){ categoryDataBefLen = Object.values(categoryDataFNET).length; categoryDataBef = categoryDataFNET;
						}else if('1' == '3'){ categoryDataBefLen = Object.values(categoryDataFNET_SOL).length; categoryDataBef = categoryDataFNET_SOL; }
				
						if(categoryDataBefLen > 0) {
							var filter = "win16|win32|win64|mac|macintel";
							var max = 0;
							
							$(".compare-catagory .box-droplist").empty();
							$(".selectBox-right .box-droplist").empty();
							$("#moPopUp").empty();
							
							if ((filter.indexOf(navigator.platform.toLowerCase()) < 0)) { /* mo버전 selet box */
								max = '4';	
								var moHtml = "<button id='compareDropListBtnSelect' class='selected moSelectBtn' title='최근 비교한 카테고리' data-popup-target='popupMobileSelect'>최근 비교한 카테고리</button>";
								$(".compare-catagory .box-droplist").append(moHtml);
								
								var html = "<div id='compareDropList' class='wrap-droplist'>";
								html += "<button id='compareDropListBtnSelect' class='droplist-button selected' title='최근 비교한 카테고리'>최근 비교한 카테고리</button>";
								html += "<ul class='droplist' id='dropList' tabindex='-1' data-roll='listbox'></ul></div>";
								//$(".compare-catagory .box-droplist").append(html);
								$(".selectBox-right .box-droplist").append(html);
								
								var i = 0;
								var moHtml2 = "<li class='select-title'>다른 카테고리 제품 비교하기</li>";
								 for(var [key, value] of Object.entries(categoryDataBef)){
									var length = '';
									if(Object.keys(categoryDataBef)[i] == key){
										if('1' == '1'){
											compareDataStorage = '/sec/'+'compare/'+key;
											compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorage));
											length = Object.keys(compareData).length;
											i++;
										}else if('1' == '2'){
											compareDataStorageFNET = '/sec/'+'fnet/compare/'+key;
											compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET));
											length = Object.keys(compareDataFNET).length;
											i++;
										}else if('1' == '3'){
											compareDataStorageFNET_SOL = '/sec/'+'fnet_sol/compare/'+key;
											compareDataFNET_SOL = JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL));
											length = Object.keys(compareDataFNET_SOL).length;
											i++;
										}
										
									}
									moHtml2 += "<li><a href='javascript:void(0);' data-comp-disp-clsf-en-nm='"+key+"' data-comp-disp-clsf-nm='"+value+"' onClick='selectBtn(this)'>"+value+" ("+length+"/"+max+")</a></li>"
									var html2 = "<li id='compareDropList' data-roll='option' class='droplist-item' data-comp-disp-clsf-en-nm='"+key+"' data-comp-disp-clsf-nm='"+value+"' onClick='selectBtn(this)'><button type='button' id='dropListBtn'>"+value+" ("+length+"/"+max+")</button></li>";
									$(".selectBox-right .box-droplist #compareDropList .droplist").append(html2);
								} 
								 $("#moPopUp").append(moHtml2);
								 //$(".compare-catagory .box-droplist #compareDropList .droplist").append(moHtml2);
								 
							} else { /* pc버전 selet box */
								max = '4';	
								var html = "<div id='compareDropList' class='wrap-droplist'>";
								html += "<button id='compareDropListBtnSelect' class='droplist-button selected' title='최근 비교한 카테고리'>최근 비교한 카테고리</button>";
								html += "<ul class='droplist' id='dropList' tabindex='-1' data-roll='listbox'></ul></div>";
								$(".compare-catagory .box-droplist").append(html);
								$(".selectBox-right .box-droplist").append(html);
								
								var i = 0;
								for(var [key, value] of Object.entries(categoryDataBef)){
									var length = '';
									if(Object.keys(categoryDataBef)[i] == key){
										if('1' == '1'){
											compareDataStorage = '/sec/'+'compare/'+key;
											compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorage));
											length = Object.keys(compareData).length;
											i++;
										}else if('1' == '2'){
											compareDataStorageFNET = '/sec/'+'fnet/compare/'+key;
											compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET));
											length = Object.keys(compareDataFNET).length;
											i++;
										}else if('1' == '3'){
											compareDataStorageFNET_SOL = '/sec/'+'fnet_sol/compare/'+key;
											compareDataFNET_SOL = JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL));
											length = Object.keys(compareDataFNET_SOL).length;
											i++;
										}
									}
									var html2 = "<li id='compareDropList' data-roll='option' class='droplist-item' data-comp-disp-clsf-en-nm='"+key+"' data-comp-disp-clsf-nm='"+value+"' onClick='selectBtn(this)'><button type='button' id='dropListBtn'>"+value+" ("+length+"/"+max+")</button></li>";
									$(".compare-catagory .box-droplist #compareDropList .droplist").append(html2);
									$(".selectBox-right .box-droplist #compareDropList .droplist").append(html2);
								}
							}
							
							if('1' == '1'){
								compareDataStorage = '/sec/'+'compare/'+$("#compDispClsfEnNm").val(); 
								compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorage)); 
							}else if('1' == '2'){
								compareDataStorageFNET = '/sec/'+'fnet/compare/'+$("#compDispClsfEnNm").val(); 
								compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET)); 
							}else if('1' == '3'){
								compareDataStorageFNET_SOL = '/sec/'+'fnet_sol/compare/'+$("#compDispClsfEnNm").val(); 
								compareDataFNET_SOL = JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)); 
							}
						} 
					}
					
					/* 비교하기 버튼 UI 수정(필요) */
					function addSelectedBtn(length){console.log("비교하기 버튼 UI 수정(필요)");
						var filter = "win16|win32|win64|mac|macintel";
						var max = 0;
						if (!(filter.indexOf(navigator.platform.toLowerCase()) < 0)) { max = '4';/* pc */ } else { max = '4';/* mo */ }
				
						var compLenMax = "비교하기 ("+length+"/"+max+")";
						if(length == 0){ compLenMax = "비교하기"; }
						
						$("#compareBtn").text(compLenMax);
						$("#compareDropListBtnSelect").addClass('selected');
						$("#compareDropListPfBtnSelect").addClass('selected');
					}
					
					/* 카테고리 선택(필요) */
					function selectBtn(self){console.log("카테고리 선택(필요) ");
						var compareEnNm = $(self).data().compDispClsfEnNm; var compareNm = $(self).data().compDispClsfNm;
						var compareDataBefLen;
						if('1' == '1'){
							compareDataStorage = '/sec/'+'compare/'+compareEnNm;
							compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorage));
							compareDataBefLen = Object.keys(compareData).length;
							addSelectedBtn(Object.values(compareData).length);	
						}else if('1' == '2'){
							compareDataStorageFNET = '/sec/'+'fnet/compare/'+compareEnNm;
							compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET));
							compareDataBefLen = Object.keys(compareDataFNET).length;
							addSelectedBtn(Object.values(compareDataFNET).length);	
						}else if('1' == '3'){
							compareDataStorageFNET_SOL = '/sec/'+'fnet_sol/compare/'+compareEnNm;
							compareDataFNET_SOL = JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL));
							compareDataBefLen = Object.keys(compareDataFNET_SOL).length;
							addSelectedBtn(Object.values(compareDataFNET_SOL).length);	
						}
				
						$('#compDispClsfEnNm').val(compareEnNm);
						$('#compDispClsfNm').val(compareNm);
						$('.btn-reset').val(compareEnNm);
						$('#compareBtn').val(compareEnNm);
						if($('.pfpd-compare').hasClass("close")){ openCloseArrow(); }
						
						if (compareDataBefLen > 0) {
							setCompInfoStrg(compareEnNm, true, true);
							categoryBtn();/* 카테고리 select box */
						}
						
						if($('.popupPrdCompare .layer-difference-compare .toggleCheck .labeltxt.off').attr('aria-hidden') == 'true'){
						}else{
							setCompInfoDb();
						}
						$('#popupMobileSelect').find('.pop-close').click();
					}
					
					/* 제품선택 팝업(필요) */
					function selectProductList(data){console.log("제품선택 팝업(필요)");
						var goodsAdvCmntStYn = 'Y';//$('#goodsAdvCmntStYn').val()
						
						$('#selectProductList').empty();
						var compareEnNm = data;
						var compareDataStorageBef, compareDataBef, compareDataBefLen;
						if('1' == '1'){
							compareDataStorageBef = '/sec/'+'compare/'+compareEnNm;
							compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageBef)); // 비교하기 담기 스토리지
							compareDataBefLen = Object.keys(compareDataBef).length;
						}else if('1' == '2'){
							compareDataStorageBef = '/sec/'+'fnet/compare/'+compareEnNm;
							compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageBef)); // 비교하기 담기 스토리지
							compareDataBefLen = Object.keys(compareDataBef).length;
						}else if('1' == '3'){
							compareDataStorageBef = '/sec/'+'fnet_sol/compare/'+compareEnNm;
							compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageBef)); // 비교하기 담기 스토리지
							compareDataBefLen = Object.keys(compareDataBef).length;
						}
						
						/* 이미 추가된 비교하기 데이터 */
						var stGoodsIds = [];
						if (compareDataBefLen > 0 ) {
							Object.keys(compareDataBef).forEach(function(v, i) {
								stGoodsIds[i] = v;
							});
						} 
						
						ajax.call({
							data : { filterEnNm : compareEnNm }
							, url : "/sec/xhr/pf/compGoodsList"
							, type: 'POST'
							, dataType : 'json'
							, done: function (data) {
								for(var i=0; i<data.products.length; i++){
									var html = '';
									if (data.products[i].imgPath1 != null && data.products[i].imgPath1[data.products[i].imgPath1.length -1] != '$') {
										if(data.products[i].imgPresetYn1 == 'Y'){ data.products[i].imgPath1 += '?$PF_PRD_KDP_PNG$';
										}else{ data.products[i].imgPath1 += '?$PF_PRD_PNG$'; }
									}
									
									data.products[i].goodsNm = data.products[i].goodsNm.replace(/(<([^>]+)>)/ig,'').replace(/'/ig, '').replace(/"/ig, '');
									
									if(data.products[i].compareExcptYn == '' || data.products[i].compareExcptYn == 'N' || data.products[i].compareExcptYn == null){
										for(var j=0;j<stGoodsIds.length;j++){
											if(data.products[i].goodsId == stGoodsIds[j]){
												html += "<button type='button' class='prd' id=' ' disabled>";
												html += "	<div class='box disabled'>";
												html += "		<div class='prd-img'><img src='"+data.products[i].imgPath1+"' alt='"+data.products[i].goodsNm+"'></div>";
												if(goodsAdvCmntStYn == 'Y'){
												html += "		<div class='prd-review'>";
												html += "			<span class='link-review' title='상품평점'>"+data.products[i].reviewGrade+" ("+data.products[i].reviewCount+")</span>";
												html += "		</div>";
												}else{
												html += "		<div class='prd-review'>";
												html += "			<span class='' title='상품평점'>&nbsp;</span>";
												html += "		</div>";	
												}
												break;
											}
										}
											if(html == ''){
												html += "<button type='button' class='prd' id=' ' onclick='befAddCompCard(this)'>";
												html += "	<div class='box'>";
												html += "		<div class='prd-img'><img src='"+data.products[i].imgPath1+"' alt='"+data.products[i].goodsNm+"'></div>";
												if(goodsAdvCmntStYn == 'Y'){
												html += "		<div class='prd-review'>";
												html += "			<span class='link-review' title='상품평점'>"+data.products[i].reviewGrade+" ("+data.products[i].reviewCount+")</span>";
												html += "		</div>";
												}else{
												html += "		<div class='prd-review'>";
												html += "			<span class='' title='상품평점'>&nbsp;</span>";
												html += "		</div>";	
												}
												}
												html += "		<div class='prd-info'>";
												html += "			<div class='name-box'>";			
												html += "				<strong class='name'>"+data.products[i].goodsNm+"</strong>";			
												html += "			</div>";								
												html += "			<span class='serial'>"+data.products[i].mdlCode+"</span>";
												html += 				_htmlProductPrice(data.products[i]);	
												html += "		</div>";						
												html += "	</div>";
												html += "	<input type='hidden' name='PrdSelect' value='"+data.products[i].goodsId+"' data-goods-id='"+data.products[i].goodsId+"' data-mdl-code='"+data.products[i].mdlCode+"'>";
												html += "</button>";
									}
									$('#selectProductList').append(html);
								}
								
								$("#chooseComparePrd").find("button.btn.btn-d").removeClass("btn-type2");
								$("#chooseComparePrd").find("button.btn.btn-d").addClass("btn-type1");
								
								layerPopFunc('chooseComparePrd');/* 제품선택 팝업실행 */
							}
						});		
					}
					
					/* 초기화 버튼(필요) */
					function btnReset(self) {console.log("초기화 버튼(필요)");
						toastCtl(this);
						
						var compDispClsfEnNm = '';
						if($('.btn-reset').val() == ''){ $('#compareBtn').val($('.prd').attr('value')); $('.btn-reset').val($('.prd').attr('value')); }
						compDispClsfEnNm = $('.btn-reset').val();
						
						if('1' == '1'){
							compareDataStorage = '/sec/'+'compare/'+compDispClsfEnNm;
							compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorage));  
							localStorage.setItem(compareDataStorage, JSON.stringify(compareData));
							
							/* goodsId 스토리지 데이터 삭제 */
							Object.keys(goodsIdData).forEach(function(v){
								if(compareData.hasOwnProperty(v)){
									delete goodsIdData[v]; localStorage.setItem(goodsIdDataStorage, JSON.stringify(goodsIdData));
								}			
							}); 		
							
							compareData = {}; localStorage.setItem(compareDataStorage, JSON.stringify(compareData));
							delete categoryData[compDispClsfEnNm]; localStorage.setItem(categoryDataStorage, JSON.stringify(categoryData));
							lastCompData = {}; localStorage.setItem(lastCompDataStorage, JSON.stringify(lastCompData));
							
							/* 남은 비교하기 제품 없는 경우 */
							if(Object.keys(goodsIdData).length == 0){ $(".pfpd-compare").css("display","none");
							}else{/* 남은 비교하기 제품 있는 경우 */
								compareDataStorage = '/sec/'+'compare/'+Object.values(goodsIdData)[0];
								 compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorage));  
								localStorage.setItem(compareDataStorage, JSON.stringify(compareData));
								
								$('.btn-reset').val(Object.values(goodsIdData)[0]);
								$('#compareBtn').val(Object.values(goodsIdData)[0]);
								setCompInfoStrg(Object.values(goodsIdData)[0], true, false);
								addSelectedBtn(Object.values(compareData).length);
							}
							
						}else if('1' == '2'){
							compareDataStorageFNET = '/sec/'+'fnet/compare/'+compDispClsfEnNm;
							compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET));  
							localStorage.setItem(compareDataStorageFNET, JSON.stringify(compareDataFNET));
							
							/* goodsId storage 데이터 삭제 */
							Object.keys(goodsIdDataFNET).forEach(function(v){
								if(compareDataFNET.hasOwnProperty(v)){
									delete goodsIdDataFNET[v]; localStorage.setItem(goodsIdDataStorageFNET, JSON.stringify(goodsIdDataFNET));
								}			
							}); 		
							
							compareDataFNET = {}; localStorage.setItem(compareDataStorageFNET, JSON.stringify(compareDataFNET));
							delete categoryDataFNET[compDispClsfEnNm]; localStorage.setItem(categoryDataStorageFNET, JSON.stringify(categoryDataFNET));
							lastCompDataFNET = {}; localStorage.setItem(lastCompDataStorageFNET, JSON.stringify(lastCompDataFNET));
							
							/* 남은 비교하기 제품 없는 경우 */
							if(Object.keys(goodsIdDataFNET).length == 0){
								$(".pfpd-compare").css("display","none");
							}else{/* 남은 비교하기 제품 있는 경우 */
								compareDataStorageFNET = '/sec/'+'fnet/compare/'+Object.values(goodsIdDataFNET)[0];
								 compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET));  
								localStorage.setItem(compareDataStorageFNET, JSON.stringify(compareDataFNET));
								
								$('.btn-reset').val(Object.values(goodsIdDataFNET)[0]);
								$('#compareBtn').val(Object.values(goodsIdDataFNET)[0]);
								setCompInfoStrg(Object.values(goodsIdDataFNET)[0], true, false);
								addSelectedBtn(Object.values(compareDataFNET).length);
							}
						}else if('1' == '3'){
							compareDataStorageFNET_SOL = '/sec/'+'fnet_sol/compare/'+compDispClsfEnNm;
							compareDataFNET_SOL = JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL));  
							localStorage.setItem(compareDataStorageFNET_SOL, JSON.stringify(compareDataFNET_SOL));
							
							/* goodsId storage 데이터 삭제 */
							Object.keys(goodsIdDataFNET_SOL).forEach(function(v){
								if(compareDataFNET_SOL.hasOwnProperty(v)){
									delete goodsIdDataFNET_SOL[v]; localStorage.setItem(goodsIdDataStorageFNET_SOL, JSON.stringify(goodsIdDataFNET_SOL));
								}			
							}); 		
							
							compareDataFNET_SOL = {}; localStorage.setItem(compareDataStorageFNET_SOL, JSON.stringify(compareDataFNET_SOL));
							delete categoryDataFNET_SOL[compDispClsfEnNm]; localStorage.setItem(categoryDataStorageFNET_SOL, JSON.stringify(categoryDataFNET_SOL));
							lastCompDataFNET_SOL = {}; localStorage.setItem(lastCompDataStorageFNET_SOL, JSON.stringify(lastCompDataFNET_SOL));
							
							/* 남은 비교하기 제품 없는 경우 */
							if(Object.keys(goodsIdDataFNET_SOL).length == 0){
								$(".pfpd-compare").css("display","none");
							}else{/* 남은 비교하기 제품 있는 경우 */
								compareDataStorageFNET_SOL = '/sec/'+'fnet_sol/compare/'+Object.values(goodsIdDataFNET_SOL)[0];
								 compareDataFNET_SOL = JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL));  
								localStorage.setItem(compareDataStorageFNET_SOL, JSON.stringify(compareDataFNET_SOL));
								
								$('.btn-reset').val(Object.values(goodsIdDataFNET_SOL)[0]);
								$('#compareBtn').val(Object.values(goodsIdDataFNET_SOL)[0]);
								setCompInfoStrg(Object.values(goodsIdDataFNET_SOL)[0], true, false);
								addSelectedBtn(Object.values(compareDataFNET_SOL).length);
							}
						}
				
						categoryBtn();
						disabledCompareButton();
						$('#chooseComparePrd').find('.pop-close').click();
						$('#popupPrdCompare').find('.pop-close').click();
					}
					
					/* 비교하기 카드(펼치기 숨기기)(필요) */
					function openCloseArrow(){console.log("비교하기 카드(펼치기 숨기기)(필요)");
						if($('.pfpd-compare').hasClass("only-pdCompare")){ goodsMain.fnShowOrderMenu($('.itm-total-bottom', goodsMain.vGoodsWrapId)); }
						toastCtl(this);
					}
					
					/* 제품선택 팝업 열기(필요) */
					function openCompareAddPop(self){console.log("비교하기 팝업창 열기(필요)");
						
						var compDispClsfEnNm = '';
						if($('#compareBtn').val() == ''){ $('#compareBtn').val($('.prd').attr('value')); $('.btn-reset').val($('.prd').attr('value')); }
						compDispClsfEnNm = $('#compareBtn').val();
						
						selectProductList(compDispClsfEnNm);
					}
					
					/* 비교하기 레이아웃 초기 세팅(필요) */
					function sliderCompareBox(){console.log("비교하기 레이아웃 초기 세팅(필요)");
						var compareDataStorageBef, compareDataBef, compareDataBefLen;
						var goodsIdDataBefLen;
						var categoryDataBefLen;
						var lastCompDataBefLen;
						
						if('1' == '1'){
							compareDataStorageBef = '/sec/'+'compare/'+$("#compDispClsfEnNm").val(); 
							compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageBef)); 
							compareDataBefLen = Object.keys(compareDataBef).length;
							
							goodsIdDataBefLen = Object.keys(goodsIdData).length;
							categoryDataBefLen = Object.keys(categoryData).length;
							lastCompDataBefLen = Object.keys(lastCompData).length;
						}else if('1' == '2'){
							compareDataStorageBef = '/sec/'+'fnet/compare/'+$("#compDispClsfEnNm").val(); 
							compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageBef)); 
							compareDataBefLen = Object.keys(compareDataBef).length;
							
							goodsIdDataBefLen = Object.keys(goodsIdDataFNET).length;
							categoryDataBefLen = Object.keys(categoryDataFNET).length;
							lastCompDataBefLen = Object.keys(lastCompDataFNET).length;
						}else if('1' == '3'){
							compareDataStorageBef = '/sec/'+'fnet_sol/compare/'+$("#compDispClsfEnNm").val();
							compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageBef));
							compareDataBefLen = Object.keys(compareDataBef).length;
							
							goodsIdDataBefLen = Object.keys(goodsIdDataFNET_SOL).length;
							categoryDataBefLen = Object.keys(categoryDataFNET_SOL).length;
							lastCompDataBefLen = Object.keys(lastCompDataFNET_SOL).length;
						}
				
						/* 남은 비교하기 데이터가 하나도 없는 경우 slider 숨김 처리 */
						if(goodsIdDataBefLen == 0 && categoryDataBefLen == 0){ $(".pfpd-compare").css("display","none");
							return false;
						}else{ $(".pfpd-compare").css("display",""); }
						
						/* 선택된 카테고리의 비교하기 상품이 있는 경우 */
						if (compareDataBefLen > 0 ) {
							setCompInfoStrg($("#compDispClsfEnNm").val(), true, false);
							addSelectedBtn(compareDataBefLen);
						}
								
						categoryBtn();
						disabledCompareButton();
						
						/* 선택된 카테고리의 비교하기 상품이 없는 경우(or pd,pf가 아닌 경우) */
						if(compareDataBefLen == 0){
				
							/* 마지막으로 담은 상품이 있고 goodsId 정보 있는 경우 */
							if(lastCompDataBefLen != 0 && goodsIdDataBefLen != 0){
								if('1' == '1'){
									compareDataStorageBef = '/sec/'+'compare/'+Object.values(lastCompData)[0];
									$('.btn-reset').val(Object.values(lastCompData)[0]);
									$('#compareBtn').val(Object.values(lastCompData)[0]);
									setCompInfoStrg(Object.values(lastCompData)[0], true, false);
								}else if('1' == '2'){
									compareDataStorageBef = '/sec/'+'fnet/compare/'+Object.values(lastCompDataFNET)[0];
									$('.btn-reset').val(Object.values(lastCompDataFNET)[0]);
									$('#compareBtn').val(Object.values(lastCompDataFNET)[0]);
									setCompInfoStrg(Object.values(lastCompDataFNET)[0], true, false);
								}else if('1' == '3'){
									compareDataStorageBef = '/sec/'+'fnet_sol/compare/'+Object.values(lastCompDataFNET_SOL)[0];
									$('.btn-reset').val(Object.values(lastCompDataFNET_SOL)[0]);
									$('#compareBtn').val(Object.values(lastCompDataFNET_SOL)[0]);
									setCompInfoStrg(Object.values(lastCompDataFNET_SOL)[0], true, false);
								}
								compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageBef));
								addSelectedBtn(Object.values(compareDataBef).length);
								
							}else if(goodsIdDataBefLen != 0){/* goodsId 정보 있는 경우 */
								if('1' == '1'){
									compareDataStorageBef = '/sec/'+'compare/'+Object.values(goodsIdData)[0];
									$('.btn-reset').val(Object.values(goodsIdData)[0]);
									$('#compareBtn').val(Object.values(goodsIdData)[0]);
									setCompInfoStrg(Object.values(goodsIdData)[0], true, false);
								}else if('1' == '2'){
									compareDataStorageBef = '/sec/'+'fnet/compare/'+Object.values(goodsIdDataFNET)[0];
									$('.btn-reset').val(Object.values(goodsIdDataFNET)[0]);
									$('#compareBtn').val(Object.values(goodsIdDataFNET)[0]);
									setCompInfoStrg(Object.values(goodsIdDataFNET)[0], true, false);
								}else if('1' == '3'){
									compareDataStorageBef = '/sec/'+'fnet_sol/compare/'+Object.values(goodsIdDataFNET_SOL)[0];
									$('.btn-reset').val(Object.values(goodsIdDataFNET_SOL)[0]);
									$('#compareBtn').val(Object.values(goodsIdDataFNET_SOL)[0]);
									setCompInfoStrg(Object.values(goodsIdDataFNET_SOL)[0], true, false);
								}
								compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageBef));
								addSelectedBtn(Object.values(compareDataBef).length);
							}
						}
						
						/* 모바일 pd페이지 접속시 class추가 */
						var filter = "win16|win32|win64|mac|macintel";
						if($("#pdYn").val() == 'Y'){
							 if((filter.indexOf(navigator.platform.toLowerCase()) < 0)){ /* mo */ $(".pfpd-compare").addClass("only-pdCompare"); $('.itm-total-bottom').addClass("hasCompare");
							}else{ /* pc */ $('.pfpd-compare').css('bottom',0); } 
						}
						$('.arrow-i').addClass("disabled");
						$('.pfpd-compare').removeClass("close");
						$('.pfpd-compare').addClass("open"); 
						toastCtl(this);
					}
					
					//여기로
					/* 제품 가격 세팅(필요) */
					function _htmlProductPrice(prd) {
						var price = prd.priceStr.split('|');
						if (prd.priceStr == null || price[2] == '0' || (prd.saleStatCd != '12' &&  prd.saleStatCd != '13' && prd.saleStatCd != '14')) {return '';}
						
						var stGbCd = '10';
						var isLogin; if(typeof isLoginCheck !== "undefined"){ isLogin= isLoginCheck; }
						var contextPath = "/sec/";
						var stId   = '1';
						
						var titPrice1 = '기준가'; var titPrice2 = '회원가'; var titPrice3 = "혜택가"; var titPrice4 = "아울렛 특가"; 
						var titPrice5 = "쿠폰 적용 예상가"; var titPrice6 = "앱 쿠폰 적용 시"; var titPrice7 = "청구할인 예상가";
						var titPrice8 = '출고가'; var titPrice9 = '기준판매가'; var titPrice10 = '특별판매가'; var titPrice11 = '회사 지원금';
						var titPrice12 = '임직원가'; var titPrice13 = '임직원가';
						
						var html = '';
						
						if(stGbCd === '10') {/* B2C */
						
							/* 기준가 *//* if ((price[1] === '00' && price[2] !== price[3]) || price[1] !== '00') { html += '<span class="price">'+titPrice1+'<em class="num">' + fnComma(price[2]) + ' 원</em></span><br>';} */		
							/* 회원가 *//* if ((price[1] !== '00' || price[1] === '00')) { html += '<span class="price">'+titPrice2+'<em class="num">' + fnComma(price[3]) + ' 원</em></span><br>';} */
							/* 혜택가 */if (price[1] !== '00' && prd.outletFlgYn !== 'Y') { html += '<span class="price">'+titPrice3+'<em class="num">' + fnComma(price[4]) + ' 원</em></span><br>';}
							/* 아울렛 특가 */else if(price[1] !== '00' && prd.outletFlgYn === 'Y'){ html += '<span class="price">'+titPrice4+'<em class="num">' + fnComma(price[4]) + ' 원</em></span><br>';}
							
							/* 쿠폰 적용 예상가 *//* if(prd.cpUseYn === "Y"){
								html += '<span class="price">'+titPrice5+'<em class="num">' + fnComma(price[price.length-1]) + ' 원</em></span><br>';
								if('false' === 'false' ){//앱 쿠폰 적용 시
									html += '            <span class="price">'+titPrice6+'<span class="price">50,000원 추가 할인</span></span><br>';
								}
							} */
						}else if(stId === '2'){/* 패넷 */
							/* 출고가 *//* html += '<span class="price">'+titPrice8+'<em class="num">' + fnComma(price[2]) + ' 원</em></span><br>'; */
							/* 기준판매가 *//* html += '<span class="price">'+titPrice9+'<em class="num">' + fnComma(price[3]) + ' 원</em></span><br>'; */
							/* 특별판매가 */if(price[4] !== '' && price[3] !== price[4]){ html += '<span class="price">'+titPrice10+'<em class="num">' + fnComma(price[4]) + ' 원</em></span><br>'; }
							/* 회사 지원금 *//* if(stGbCd === '30'){ html += '<span class="price">'+titPrice11+'<em class="num">' + fnComma(price[5]) + ' 원</em></span><br>'; } */
							/* 임직원가 *//* html += '<span class="price">'+titPrice12+'<em class="num">' + fnComma(price[6]) + ' 원</em></span><br>'; */
						}else if(stId === '3'){/* 패넷_디플 */
							/* 출고가 *//* html += '<span class="price">'+titPrice8+'<em class="num">' + fnComma(price[2]) + ' 원</em></span><br>'; */
							/* 기준판매가 *//* html += '<span class="price">'+titPrice9+'<em class="num">' + fnComma(price[3]) + ' 원</em></span><br>'; */
							/* 특별판매가 */if(price[4] !== '' && price[3] !== price[4]){ html += '<span class="price">'+titPrice10+'<em class="num">' + fnComma(price[4]) + ' 원</em></span><br>'; }
							/* 회사 지원금 *//* if(stGbCd === '30'){ html += '<span class="price">'+titPrice11+'<em class="num">' + fnComma(price[5]) + ' 원</em></span><br>'; } */
							/* 임직원가 *//* html += '<span class="price">'+titPrice13+'<em class="num">' + fnComma(price[6]) + ' 원</em></span><br>'; */
						}
						
						if(html === ''){
							html += '<span class="price"> <em class="num"> </em></span>';
						}
						
						return html;
					}
					
					/* 제품 선택 팝업에서 제품 선택 시(필요) */
					function befAddCompCard(prd) {console.log("제품 선택 팝업에서 제품 선택 시(필요)");
						if($(prd).hasClass("active")){
							$("#chooseComparePrd").find(".prd.active").removeClass("active");
							$(prd).removeClass("active");
							$("#chooseComparePrd").find("button.btn.btn-d").removeClass("btn-type2");
							$("#chooseComparePrd").find("button.btn.btn-d").addClass("btn-type1");
						}else{
							$("#chooseComparePrd").find(".prd.active").removeClass("active");
							$(prd).addClass("active");
							$("#chooseComparePrd").find("button.btn.btn-d").removeClass("btn-type1");
							$("#chooseComparePrd").find("button.btn.btn-d").addClass("btn-type2");
						}
					}
				
					/* 비교하기 팝업 정보 세팅 스토리지(차이점 비활성화)(필요) */
					/* compDispClsfEnNm : 2뎁스 카테고리명 */
					/* compCard : T/F (비교하기 카드) */
					/* compPopup : T/F (비교하기 팝업) */
					function setCompInfoStrg(compDispClsfEnNm, compCard, compPopup){console.log("비교하기 팝업 정보 세팅 스토리지(차이점 비활성화)(필요)");
						var goodsAdvCmntStYn = 'Y';//$('#goodsAdvCmntStYn').val()
						
						var resultDate = false;
						if(Object.keys(expireDateData).length != 0 ){
									var options = {
													url : "/sec/xhr/goods/getCompareExpireDate"
													, type : 'POST'
													, async : false
													, done : function(data){
															// Date type
															if(expireDateData['date'] <= data.compExpDt) {
																resultDate = true;
															}
															 
													}
											}
									ajax.call(options);
						}
				
						// expireDateData에 시간 셋팅X || 비교하기 만료일자 지나면 기존 스토리지 데이터 삭제 
						if(Object.keys(expireDateData).length == 0 || resultDate == true){
							for(var i = 0; i < localStorage.length; i++){
								//비교하기 로컬 스토리지 삭제
								if(localStorage.key(i).indexOf('compare') > -1){
									compareDataStorage = localStorage.key(i);
									compareData = {};
									localStorage.setItem(compareDataStorage, JSON.stringify(compareData));
								}
							}
							//닷컴 스토리지 리셋
							categoryData = {}; 
							localStorage.setItem(categoryDataStorage, JSON.stringify(categoryData));
							goodsIdData = {}; 
							localStorage.setItem(goodsIdDataStorage, JSON.stringify(goodsIdData));
							lastCompData = {}; 
							localStorage.setItem(lastCompDataStorage, JSON.stringify(lastCompData));
							//패넷전자 스토리지 리셋
							categoryDataFNET = {}; 
							localStorage.setItem(categoryDataStorageFNET, JSON.stringify(categoryDataFNET));
							goodsIdDataFNET = {}; 
							localStorage.setItem(goodsIdDataStorageFNET, JSON.stringify(goodsIdDataFNET));
							lastCompDataFNET = {}; 
							localStorage.setItem(lastCompDataStorageFNET, JSON.stringify(lastCompDataFNET));
							//패넷디플 스토리지 리셋
							categoryDataFNET_SOL = {}; 
							localStorage.setItem(categoryDataStorageFNET_SOL, JSON.stringify(categoryDataFNET_SOL));
							goodsIdDataFNET_SOL = {}; 
							localStorage.setItem(goodsIdDataStorageFNET_SOL, JSON.stringify(goodsIdDataFNET_SOL));
							lastCompDataFNET_SOL = {}; 
							localStorage.setItem(lastCompDataStorageFNET_SOL, JSON.stringify(lastCompDataFNET_SOL));
				
							$(".pfpd-compare").css("display","none");
							$('.link-compare-i').removeClass('disabled');
				
						}
						
						var compareDataStorage; var compareData;
						if('1' == '1'){ compareDataStorage = '/sec/'+'compare/'+compDispClsfEnNm;
						}else if('1' == '2'){ compareDataStorage = '/sec/'+'fnet/compare/'+compDispClsfEnNm;
						}else if('1' == '3'){ compareDataStorage = '/sec/'+'fnet_sol/compare/'+compDispClsfEnNm; }
						compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorage));
						
						if(compCard){/* 비교하기 카드 - s */
							if (Object.keys(compareData).length > 0) {
								$('#pfpdSlideCompare').empty();
								
								if(Object.keys(compareData).length >= 2 && $('.pfpd-compare').hasClass('if2item')){ $('.pfpd-compare').removeClass('if2item'); 
								}else if(Object.keys(compareData).length < 2 && !$('.pfpd-compare').hasClass('if2item')){ $('.pfpd-compare').addClass('if2item'); }
								
								var cnt = 0;
								Object.keys(compareData).forEach(function(v, i) {
									compareData[v]["pfGoods"]["goodsAdvCmntStYn"] = goodsAdvCmntStYn;
									var tempPriceNm = compareData[v]["summary"]["priceNm"];
									var tempStId = compareData[v]["pfGoods"]["stId"];
									if(tempStId == '3' && tempPriceNm.replaceAll(' ','') == '임직원부담금'){
										compareData[v]["summary"]["priceNm"] = '임직원가';
									}
									
									$('#pfpdSlideCompare').append($('#compareSummaryTempl').render(compareData[v]));
									cnt++;
								});
								
								for(var i=cnt ; i < 4 ; i++){/* 비교하기 카드 빈카드 세팅 */					
									$('#pfpdSlideCompare').append($('#compareSummaryEmptyTempl').render());
								}
							}
							$('#pfpdSlideCompare').removeClass();
						}/* 비교하기 카드 - e */
						
						if(compPopup){/* 비교하기 팝업 - s*/
							var cnt = 0;
							var totalMShipPtShowYn = false;
							if (Object.keys(compareData).length > 0) {
								$('.part1').slick('unslick'); $('.part2').slick('unslick');
								$('.part1').empty(); $('.part2').empty(); 
								
								Object.keys(compareData).forEach(function(v, i) {
									/* .part1 */
									var bspkParam = '';/* 패넷 */
									if(compareData[v]["pfGoods"]["goodsAddTpCd"] === '50'){ bspkParam = '&pannelYn=Y';/* 패넷 */
									}else{ bspkParam = '&selModel='+compareData[v]["pfGoods"]["mdlCode"]; }/* 패넷 */
									compareData[v]["pfGoods"]["bspkParam"] = bspkParam;/* 패넷 */
									compareData[v]["pfGoods"]["stCd"] = 'b2c';/* 패넷 */
									compareData[v]["pfGoods"]["secApp"] = 'false';
									compareData[v]["pfGoods"]["stGbCd"] = '10';
									if(typeof isLoginCheck !== "undefined"){ compareData[v]["pfGoods"]["isLogin"] = isLoginCheck;/* B2C,패넷 */ }
									compareData[v]["pfGoods"]["stContextPath"] = "/sec/";
									compareData[v]["pfGoods"]["stGrp"] = "b2c";
									compareData[v]["pfGoods"]["goodsAdvCmntStYn"] = goodsAdvCmntStYn;
									
									//적립포인트 - s 
									var mShipPtShowYn = false;
									if(!mShipPtShowYn){
										var stId = compareData[v]["pfGoods"]["stId"];
										if(stId == '1'){
											var mdlCode = compareData[v]["pfGoods"]["mdlCode"];
											var envmtGbCd = 'prd';
											var environmentGbLocal = 'local';
											var environmentGbDev = 'dev';
											var environmentGbStg = 'stg';
											var stGbCd = '10';
											var membershipUseExcptYn = compareData[v]["pfGoods"]["membershipUseExcptYn"];
											var carePlusType = compareData[v]["pfGoods"]["carePlusType"];
											var thirdPartyYn = compareData[v]["pfGoods"]["thirdPartyYn"];
											var isLogin = false; if(typeof isLoginCheck !== "undefined"){ isLogin = isLoginCheck;/* B2C,패넷 */ }
											var membershipYn = compareData[v]["pfGoods"]["membershipYn"];
											
											mShipPtShowYn = mShipPtShowYnB2C(stId, mdlCode, envmtGbCd, environmentGbLocal, environmentGbDev, environmentGbStg, stGbCd, membershipUseExcptYn, carePlusType, thirdPartyYn, isLogin, membershipYn);//B2C
											
										}else if(stId == '2' || stId == '3'){
											var stGbCd = '10';
											var stCd = 'b2c';/* 패넷 */
											var isLogin = false; if(typeof isLoginCheck !== "undefined"){ isLogin = isLoginCheck;/* B2C,패넷 */ }
											var membershipYn = compareData[v]["pfGoods"]["membershipYn"];
											
											mShipPtShowYn = mShipPtShowYnFNET(stId, stGbCd, stCd, isLogin, membershipYn);
										}
									}
									if(mShipPtShowYn){
										totalMShipPtShowYn = true;
									}
									compareData[v]["pfGoods"]["mShipPtShowYn"] = mShipPtShowYn;
									//적립포인트 - e
									
									$('.part1').append($('#compareItemTempl').render(compareData[v]));	
									
									/* .part2 */
									$('.part2').append($('#compareItemSpecTempl').render());
									var data = compareData[v];
									if (data.goodsCompareSpec) {
										var dataGoodsCompareSpec = data.goodsCompareSpec;
										
										/* 대분류 문자열 정렬(한, 영, 순자 순서) 오름차순 */
										dataGoodsCompareSpec.sort(function(a, b){ var a = a.dispNm.toString(); var b = b.dispNm.toString(); return a.localeCompare(b); });
										
										dataGoodsCompareSpec.forEach(function(v, j) {
											
											/* 소분류 문자열 정렬(한, 영, 순자 순서) 내림차순 */
											var dataGoodsCompareSpecDepth2 = v.depth2;
											dataGoodsCompareSpecDepth2.sort(function(a, b){ var a = a.DISP_NM.toString(); var b = b.DISP_NM.toString(); return b.localeCompare(a); });
											
											v['specIdx'] = j;
											$('.part2').find('.spec').eq(i).find('.box-spec-detail').append($('#compareItemSpecDetailTempl').render(v));
										});
									}
									cnt++;
								});
								for(var i=cnt ; i < 4 ; i++){/* 비교하기 팝업 빈카드 세팅 */
									$('.part1').append($('#compareItemEmptyTempl').render());
									$('.part2').append($('#compareItemSpecEmptyTempl').render());
								}
								
								/* 비교하기 팝업 정보 세팅 스토리지 이후1(차이점 비활성화)(필요) */
								afterSetCompInfoStrg1();
								
								/* 비교하기 팝업 정보 세팅 스토리지 이후2(차이점 비활성화)(필요) */
								afterSetCompInfoStrg2();
								
								/* 비교하기 팝업 앵커 세팅(다 되고 0 컬럼만 id) */
								setSpecAnchor();
								
								/* 비교하기 팝업 정보 세팅 이후 공통(앵커 버튼 생성)(필요) */
								afterSetCompInfoComm();
								
								/* 가격 높이 클래스 */
								if('1' == '1'){ 
								}else if('1' == '2'){ 
									$('.prdBox .prd.prdDetail').addClass('cnt-4-li_list-price');
									$('.prdBox .prd .box.compare-emptyBox').parent().addClass('cnt-4-li_list-price');
								}else if('1' == '3'){ 
									$('.prdBox .prd.prdDetail').addClass('cnt-5-li_list-price');
									$('.prdBox .prd .box.compare-emptyBox').parent().addClass('cnt-5-li_list-price');
								}
								if(totalMShipPtShowYn){
									$('.prdBox .prd.prdDetail').addClass('addpoint');
									$('.prdBox .prd .box.compare-emptyBox').parent().addClass('addpoint');
								}
								
								/* 비교하기 팝업 슬릭 적용 */
								comparePopupSlickpart1($('.part1'));
								comparePopupSlickpart2($('.part2'));
							}
						}/* 비교하기 팝업 - e*/
					}
					
					/* 비교하기 팝업 정보 세팅 DB(차이점 활성화)(필요) */
					function setCompInfoDb(){console.log("비교하기 팝업 정보 세팅 DB(차이점 활성화)(필요)");
						var goodsAdvCmntStYn = 'Y';//$('#goodsAdvCmntStYn').val()
						
						var compDispClsfEnNm = '';
						if($('#compareBtn').val() == ''){ $('#compareBtn').val($('.prd').attr('value')); $('.btn-reset').val($('.prd').attr('value')); }
						compDispClsfEnNm = $('#compareBtn').val();
						
						var compareDataStorage; var compareData;
						if('1' == '1'){ compareDataStorage = '/sec/'+'compare/'+compDispClsfEnNm;
						}else if('1' == '2'){ compareDataStorage = '/sec/'+'fnet/compare/'+compDispClsfEnNm;
						}else if('1' == '3'){ compareDataStorage = '/sec/'+'fnet_sol/compare/'+compDispClsfEnNm; }
						compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorage));
						
						var cnt = 0;
						var totalMShipPtShowYn = false;
						if (Object.keys(compareData).length > 0) {
							/* 비교하기 팝업 제품 카드 */
							$('.part1').slick('unslick'); $('.part2').slick('unslick');
							$('.part1').empty(); $('.part2').empty();
							
							Object.keys(compareData).forEach(function(v, i) {
								/* .part1 */				
								var bspkParam = '';/* 패넷 */
								if(compareData[v]["pfGoods"]["goodsAddTpCd"] === '50'){ bspkParam = '&pannelYn=Y';/* 패넷 */
								}else{ bspkParam = '&selModel='+compareData[v]["pfGoods"]["mdlCode"]; }/* 패넷 */
								compareData[v]["pfGoods"]["bspkParam"] = bspkParam;/* 패넷 */
								compareData[v]["pfGoods"]["stCd"] = 'b2c';/* 패넷 */
								compareData[v]["pfGoods"]["secApp"] = 'false';
								compareData[v]["pfGoods"]["stGbCd"] = '10';
								if(typeof isLoginCheck !== "undefined"){ compareData[v]["pfGoods"]["isLogin"] = isLoginCheck;/* B2C,패넷 */ }
								compareData[v]["pfGoods"]["stContextPath"] = "/sec/";
								compareData[v]["pfGoods"]["stGrp"] = "b2c";
								compareData[v]["pfGoods"]["goodsAdvCmntStYn"] = goodsAdvCmntStYn;
								
								//적립포인트 - s 
								var mShipPtShowYn = false;
								if(!mShipPtShowYn){
									var stId = compareData[v]["pfGoods"]["stId"];
									if(stId == '1'){
										var mdlCode = compareData[v]["pfGoods"]["mdlCode"];
										var envmtGbCd = 'prd';
										var environmentGbLocal = 'local';
										var environmentGbDev = 'dev';
										var environmentGbStg = 'stg';
										var stGbCd = '10';
										var membershipUseExcptYn = compareData[v]["pfGoods"]["membershipUseExcptYn"];
										var carePlusType = compareData[v]["pfGoods"]["carePlusType"];
										var thirdPartyYn = compareData[v]["pfGoods"]["thirdPartyYn"];
										var isLogin = false; if(typeof isLoginCheck !== "undefined"){ isLogin = isLoginCheck;/* B2C,패넷 */ }
										var membershipYn = compareData[v]["pfGoods"]["membershipYn"];
										
										mShipPtShowYn = mShipPtShowYnB2C(stId, mdlCode, envmtGbCd, environmentGbLocal, environmentGbDev, environmentGbStg, stGbCd, membershipUseExcptYn, carePlusType, thirdPartyYn, isLogin, membershipYn);//B2C
										
									}else if(stId == '2' || stId == '3'){
										var stGbCd = '10';
										var stCd = 'b2c';/* 패넷 */
										var isLogin = false; if(typeof isLoginCheck !== "undefined"){ isLogin = isLoginCheck;/* B2C,패넷 */ }
										var membershipYn = compareData[v]["pfGoods"]["membershipYn"];
										
										mShipPtShowYn = mShipPtShowYnFNET(stId, stGbCd, stCd, isLogin, membershipYn);
									}
								}
								if(mShipPtShowYn){
									totalMShipPtShowYn = true;
								}
								compareData[v]["pfGoods"]["mShipPtShowYn"] = mShipPtShowYn;
								//적립포인트 - e
								
								$('.part1').append($('#compareItemTempl').render(compareData[v]));	
								
								cnt++;
							});
							for(var i=cnt ; i < 4 ; i++){/* 비교하기 팝업 빈카드 세팅 */
								$('.part1').append($('#compareItemEmptyTempl').render());
							}
							
							/* 비교하기 팝업 상세 스펙 */
							var goodsIds = new Array();
							var compareDataLen = Object.keys(compareData).length;
							ajax.call({
								data : { goodsIds : Object.keys(compareData) }
								, async : false
								, url : "/sec/xhr/pf/compGoodsSpecList"
								, type : 'POST'
								, dataType : 'json'
								, done : function(data) {
									$('.part2').empty();
									var cnt = 0;
									var productsSpec = data.productsSpec;
									var pSpecLen = data.productsSpec.length;
									if(data.productsSpec.length > 0){
										for(var i=0;i<compareDataLen;i++){
											var html = '';
											var dispNm1 = '';
											var tmpDispNm1 = '';
											var setCount = 0;
											var setDepth1Cnt = 0;
											dispNm1 = productsSpec[0].dispNm1;	
											html += '<div class="prdBox">';
											html += '	<div class="spec">';
											html += '		<div class="box-spec-detail">';
											html += '			<div class="set specAnchor'+setDepth1Cnt+'">';
											html += '				<h3>'+dispNm1+'</h3>';
											for(var j=0;j<pSpecLen;j++){
												tmpDispNm1 = productsSpec[j].dispNm1;
												if(tmpDispNm1 == dispNm1){
													html += '			<dl>';
													html += '				<dt>'+productsSpec[j].dispNm+'</dt>';
													if(i == 0){
														html += '				<dd><span>'+productsSpec[j].specValue1+'</span></dd>';
													}else if(i == 1){
														html += '				<dd><span>'+productsSpec[j].specValue2+'</span></dd>';
													}else if(i == 2){
														html += '				<dd><span>'+productsSpec[j].specValue3+'</span></dd>';
													}else if(i == 3){
														html += '				<dd><span>'+productsSpec[j].specValue4+'</span></dd>';
													}
													html += '			</dl>';
													setCount++;
												}else{
													setDepth1Cnt++;
													dispNm1 = productsSpec[setCount].dispNm1;	
													j--;
													html += '		</div>';
													html += '		<div class="set specAnchor'+setDepth1Cnt+'">';
													html += '			<h3>'+dispNm1+'</h3>';
												}
											}
											html += '			</div>';
											html += '		</div>';
											html += '	</div>';
											html += '</div>';
											cnt++;
											$('.part2').append(html);
										}
									}
									for(var i=cnt ; i < 4 ; i++){
										/* 비교하기 팝업 빈카드 세팅 */
										$('.part2').append($('#compareItemSpecEmptyTempl').render());
									}
									
								}
							});
							
							/* 비교하기 팝업 정보 세팅 DB 이후1(차이점 활성화)(필요) */
							afterSetCompInfoDb1();
				
							/* 비교하기 팝업 앵커 세팅(다 되고 0 컬럼만 id) */
							setSpecAnchor();
				
							/* 비교하기 팝업 정보 세팅 이후 공통(앵커 버튼 생성)(필요) */
							afterSetCompInfoComm();
							
							/* 가격 높이 클래스 */
							if('1' == '1'){ 
							}else if('1' == '2'){ 
								$('.prdBox .prd.prdDetail').addClass('cnt-4-li_list-price');
								$('.prdBox .prd .box.compare-emptyBox').parent().addClass('cnt-4-li_list-price');
							}else if('1' == '3'){ 
								$('.prdBox .prd.prdDetail').addClass('cnt-5-li_list-price');
								$('.prdBox .prd .box.compare-emptyBox').parent().addClass('cnt-5-li_list-price');
							}
							if(totalMShipPtShowYn){
								$('.prdBox .prd.prdDetail').addClass('addpoint');
								$('.prdBox .prd .box.compare-emptyBox').parent().addClass('addpoint');
							}
							
							/* 비교하기 팝업 슬릭 적용 */
							comparePopupSlickpart1($('.part1'));
							comparePopupSlickpart2($('.part2'));
						}
					}
					
					/* 비교하기 팝업 정보 세팅 스토리지 이후1(차이점 비활성화)(필요) */
					function afterSetCompInfoStrg1(){console.log("비교하기 팝업 정보 세팅 스토리지 이후1(차이점 비활성화)(필요)");
						//1. 팝업 정보 비교(동일한 정보로 세팅)
						var part1Len = $(".part1 .prdBox .prd.prdDetail").length;//part1 길이
						if(part1Len > 1){
							
							//왼쪽 -> 오른쪽
							for(var i=0;i<part1Len;i++){
								
								var part2SetLen1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').length;//비교기준 스펙 대분류 갯수
								for(var j=0;j<part2SetLen1;j++){
									var part2SetNm1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('h3').text();//part2 대분류 set명
									var copyPart2Set1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).clone();//part2 대분류 set div 복사
									copyPart2Set1.find('span').text('-');
									var part2SetDlLen1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').length;//비교기준 스펙 대분류의 소분류 갯수
									
									for(var k=(i+1);k<part1Len;k++){//다른 스펙 비교
										var isPart2SetNm = '';
										if(typeof $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $.trim($(this).text().trim()) === part2SetNm1; })[0] != "undefined"){
											isPart2SetNm = $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $.trim($(this).text().trim()) === part2SetNm1; })[0].innerHTML.trim();//다른 part2 대분류 set 찾기
										}
										if(part2SetNm1 != isPart2SetNm){//동일한 대분류 없으면, 세팅
											if(($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').length == 0) && (j == 0)){
												var html = '';
												html += '<div class="set dummy" id=""></div>';
												$('.part2').find('.prdBox').eq(k).find('.spec').find('.box-spec-detail').append(html);
											}
											
											if($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').eq(j).length == 1){
												copyPart2Set1.insertBefore($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').eq(j));
											}else{
												copyPart2Set1.insertAfter($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').eq(j-1));
											}
											
											$('.part2').find('.prdBox').find('.spec').find('.set.dummy').remove();
										}else{//동일한 대분류 있으면, 소분류 비교
											for(var l=0;l<part2SetDlLen1;l++){
												var part2SetDtNm1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').eq(l).find('dt').text().trim(); 
												var copyPart2SetDl1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').eq(l).clone();//part2 대분류 set div 복사
												copyPart2SetDl1.find('span').text('-');
												var isPart2SetDtNm = '';
												if(typeof $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $(this).text().trim() === part2SetNm1; }).parent().find('dt').filter(function(){ return $(this).text().trim() === part2SetDtNm1; })[0] != "undefined"){
													isPart2SetDtNm = $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $(this).text().trim() === part2SetNm1; }).parent().find('dt').filter(function(){ return $(this).text().trim() === part2SetDtNm1; })[0].innerHTML.trim();
												}
												if(part2SetDtNm1 != isPart2SetDtNm){//동일한 소분류 없으면, 세팅
													if($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $(this).text().trim() === part2SetNm1; }).parent().find('dl').eq(l).length == 1){
														copyPart2SetDl1.insertBefore($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $(this).text().trim() === part2SetNm1; }).parent().find('dl').eq(l));
													}else{
														copyPart2SetDl1.insertAfter($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $(this).text().trim() === part2SetNm1; }).parent().find('dl').eq(l-1));
													}
												}
											}
										}
									}
								}
							}
							
							//오른쪽 -> 왼쪽
							for(var i=(part1Len-1);i>=0;i--){
								
								var part2SetLen1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').length;//비교기준 스펙 대분류 갯수
								for(var j=0;j<part2SetLen1;j++){
									var part2SetNm1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('h3').text().trim();//part2 대분류 set명
									var copyPart2Set1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).clone();//part2 대분류 set div 복사
									copyPart2Set1.find('span').text('-');
									var part2SetDlLen1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').length;//비교기준 스펙 대분류의 소분류 갯수
									
									for(var k=(part1Len-2);k>=0;k--){//다른 스펙 비교
										var isPart2SetNm = '';
										if(typeof $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $.trim($(this).text().trim()) === part2SetNm1; })[0] != "undefined"){
											isPart2SetNm = $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $.trim($(this).text().trim()) === part2SetNm1; })[0].innerHTML.trim();//다른 part2 대분류 set 찾기
										}
										if(part2SetNm1 != isPart2SetNm){//동일한 대분류 없으면, 세팅
											if(($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').length == 0) && (j == 0)){
												var html = '';
												html += '<div class="set dummy" id=""></div>';
												$('.part2').find('.prdBox').eq(k).find('.spec').find('.box-spec-detail').append(html);
											}
										
											if($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').eq(j).length == 1){
												copyPart2Set1.insertBefore($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').eq(j));
											}else{
												copyPart2Set1.insertAfter($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').eq(j-1));
											}
											
											$('.part2').find('.prdBox').find('.spec').find('.set.dummy').remove();
										}else{//동일한 대분류 있으면, 소분류 비교
											for(var l=0;l<part2SetDlLen1;l++){
												var part2SetDtNm1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').eq(l).find('dt').text().trim();
												var copyPart2SetDl1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').eq(l).clone();//part2 대분류 set div 복사
												copyPart2SetDl1.find('span').text('-');
												var isPart2SetDtNm = '';
												if(typeof $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $(this).text().trim() === part2SetNm1; }).parent().find('dt').filter(function(){ return $(this).text().trim() === part2SetDtNm1; })[0] != "undefined"){
													isPart2SetDtNm = $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $(this).text().trim() === part2SetNm1; }).parent().find('dt').filter(function(){ return $(this).text().trim() === part2SetDtNm1; })[0].innerHTML.trim();
												}
												if(part2SetDtNm1 != isPart2SetDtNm){//동일한 소분류 없으면, 세팅
													if($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $(this).text().trim() === part2SetNm1; }).parent().find('dl').eq(l).length == 1){
														copyPart2SetDl1.insertBefore($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $(this).text().trim() === part2SetNm1; }).parent().find('dl').eq(l));
													}else{
														copyPart2SetDl1.insertAfter($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $(this).text().trim() === part2SetNm1; }).parent().find('dl').eq(l-1));
													}
												}
											}
										}
									}
								}
							}
						}
					}
					
					/* 비교하기 팝업 정보 세팅 스토리지 이후2(차이점 비활성화)(필요) */
					function afterSetCompInfoStrg2(){console.log("비교하기 팝업 정보 세팅 스토리지 이후2(차이점 비활성화)(필요)");
						var part1Len = $(".part1 .prdBox .prd.prdDetail").length;/* part1 길이 */
						if(part1Len > 1){
							/* 비교 상품 box-spec-detail set 의 모든 dl span 값이 모두 - 이면, 해당 set 전체 displayNoneF(비교하기 팝업 로딩 될 때 공통으로 처리) */
							/* 비교 상품 dl span 값이 모두 - 이면, 해당 row 전체 displayNoneF(비교하기 팝업 로딩 될 때 공통으로 처리) */
							/* 비교 상품 dl span 값이 다르면 text에 하이라트 처리 */
							var part2SpecSpanLen = 0;
							part2SpecSpanLen = $('.part2').find('.spec').eq(0).find('.box-spec-detail').find('span').length;
							for(var i=0;i<part2SpecSpanLen;i++){
								var spanText0 = "1"; var spanText1 = "1"; var spanText2 = "1"; var spanText3 = "1";
								for(var j=0;j<part1Len;j++){
									var tempText = $('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).text().trim();
									if((j == 0) && tempText != "-" && tempText != ""){ spanText0 = tempText; }else if((j == 1) && tempText != "-" && tempText != ""){ spanText1 = tempText; }else if((j == 2) && tempText != "-" && tempText != ""){ spanText2 = tempText; }else if((j == 3) && tempText != "-" && tempText != ""){ spanText3 = tempText; }
								}
								switch(part1Len){
									case 1: 
										for(var j=0;j<part1Len;j++){
											$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).removeClass('highlight');
										}
										break;
									case 2:
										if(((spanText0 == spanText1) ? true : false )){
											if((spanText0 == '1') && (spanText1 == '1')){
												for(var j=0;j<part1Len;j++){
													$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('dl').eq(i).css('display','none');
												}
											}else{
												for(var j=0;j<part1Len;j++){
													$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).removeClass('highlight');
												}
											}
										}else{
											for(var j=0;j<part1Len;j++){
												$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).addClass('highlight');
											}
										}
										break;
									case 3:
										if(((spanText0 == spanText1) ? ((spanText1 == spanText2) ? true : false ) : false )){
											if((spanText0 == '1') && (spanText1 == '1') && (spanText2 == '1')){
												for(var j=0;j<part1Len;j++){
													$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('dl').eq(i).css('display','none');
												}
											}else{
												for(var j=0;j<part1Len;j++){
													$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).removeClass('highlight');
												}
											}
										}else{
											for(var j=0;j<part1Len;j++){
												$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).addClass('highlight');
											}
										}
										break;
									case 4:
										if(((spanText0 == spanText1) ? ((spanText1 == spanText2) ? ((spanText2 == spanText3) ? true : false) : false ) : false )){
											if((spanText0 == '1') && (spanText1 == '1') && (spanText2 == '1') && (spanText3 == '1')){
												for(var j=0;j<part1Len;j++){
													$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('dl').eq(i).css('display','none');
												}
											}else{
												for(var j=0;j<part1Len;j++){
													$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).removeClass('highlight');
												}
											}
										}else{
											for(var j=0;j<part1Len;j++){
												$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).addClass('highlight');
											}
										}
										break;
								}
							}
							
							/* 비교하기 팝업 상품 스펙 set의 모든 dl의 display 값이 none이면 안보이게 */
							for(var i=0;i<part1Len;i++){
								var part2BoxSpecDetailLen = $('.part2').find('.spec').eq(i).find('.box-spec-detail').children().length;
								var dispNoneRowTF = false;
								for(var j=0;j<part2BoxSpecDetailLen;j++){
									var part2BoxSpecDetailDlLen = $('.part2').find('.spec').eq(i).find('.box-spec-detail').children().eq(j).find('dl').length;
									dispNoneRowTF = false;
									for(var k=0;k<part2BoxSpecDetailDlLen;k++){
										var dLdisp = $('.part2').find('.spec').eq(i).find('.box-spec-detail').children().eq(j).find('dl').eq(k).css('display');
										if(dLdisp == 'none'){ 
											dispNoneRowTF = true;
										}else if(dLdisp == 'block'){ 
											dispNoneRowTF = false;
											break;
										}
									}
									if(dispNoneRowTF){
										$('.part2').find('.spec').eq(i).find('.box-spec-detail').children().eq(j).css('display','none');
									}
								}
							}
						}else{
							/* 비교 상품 dl span 값 모든 text에 하이라이트 처리 */
							//$('.part2 .prdBox .box-spec-detail').find('.set').find('span').addClass('highlight');
						}
					}
					
					/* 비교하기 팝업 정보 세팅 DB 이후1(차이점 활성화)(필요) */
					function afterSetCompInfoDb1(){console.log("비교하기 팝업 정보 세팅 DB 이후1(차이점 활성화)(필요)");
						var part1Len = $(".part1 .prdBox .prd.prdDetail").length;/* part1 길이 */
						if(part1Len > 1){
							/* 비교 상품 box-spec-detail set 의 모든 dl span 값이 모두 - 이면, 해당 set 전체 displayNoneF(비교하기 팝업 로딩 될 때 공통으로 처리) */
							/* 비교 상품 dl span 값이 모두 - 이면, 해당 row 전체 displayNoneF(비교하기 팝업 로딩 될 때 공통으로 처리) */
							/* 비교 상품 dl span 값이 다르면 text에 하이라트 처리 */
							var part2SpecSpanLen = 0;
							part2SpecSpanLen = $('.part2').find('.spec').eq(0).find('.box-spec-detail').find('span').length;
							for(var i=0;i<part2SpecSpanLen;i++){
								var spanText0 = "1"; var spanText1 = "1"; var spanText2 = "1"; var spanText3 = "1";
								for(var j=0;j<part1Len;j++){
									var tempText = $('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).text().trim();
									if((j == 0) && tempText != "-" && tempText != ""){ spanText0 = tempText; }else if((j == 1) && tempText != "-" && tempText != ""){ spanText1 = tempText; }else if((j == 2) && tempText != "-" && tempText != ""){ spanText2 = tempText; }else if((j == 3) && tempText != "-" && tempText != ""){ spanText3 = tempText; }
								}
								switch(part1Len){
									case 1: 
										for(var j=0;j<part1Len;j++){
											$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).addClass('highlight');
										}
										break;
									case 2:
										if(((spanText0 == spanText1) ? true : false )){
											for(var j=0;j<part1Len;j++){
												$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('dl').eq(i).css('display','none');
											}
										}else{
											for(var j=0;j<part1Len;j++){
												$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).addClass('highlight');
											}
										}
										break;
									case 3:
										if(((spanText0 == spanText1) ? ((spanText1 == spanText2) ? true : false ) : false )){
											for(var j=0;j<part1Len;j++){
												$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('dl').eq(i).css('display','none');
											}
										}else{
											for(var j=0;j<part1Len;j++){
												$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).addClass('highlight');
											}
										}
										break;
									case 4:
										if(((spanText0 == spanText1) ? ((spanText1 == spanText2) ? ((spanText2 == spanText3) ? true : false) : false ) : false )){
											for(var j=0;j<part1Len;j++){
												$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('dl').eq(i).css('display','none');
											}
										}else{
											for(var j=0;j<part1Len;j++){
												$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).addClass('highlight');
											}
										}
										break;
								}
							}
							
							/* 비교하기 팝업 상품 스펙 set의 모든 dl의 display 값이 none이면 안보이게 */
							for(var i=0;i<part1Len;i++){
								var part2BoxSpecDetailLen = $('.part2').find('.spec').eq(i).find('.box-spec-detail').children().length;
								var dispNoneRowTF = false;
								for(var j=0;j<part2BoxSpecDetailLen;j++){
									var part2BoxSpecDetailDlLen = $('.part2').find('.spec').eq(i).find('.box-spec-detail').children().eq(j).find('dl').length;
									dispNoneRowTF = false;
									for(var k=0;k<part2BoxSpecDetailDlLen;k++){
										var dLdisp = $('.part2').find('.spec').eq(i).find('.box-spec-detail').children().eq(j).find('dl').eq(k).css('display');
										if(dLdisp == 'none'){ 
											dispNoneRowTF = true;
										}else if(dLdisp == 'block'){ 
											dispNoneRowTF = false;
											break;
										}
									}
									if(dispNoneRowTF){
										$('.part2').find('.spec').eq(i).find('.box-spec-detail').children().eq(j).css('display','none');
									}
								}
							}
						}else{
							/* 비교 상품 dl span 값 모든 text에 하이라이트 처리 */
							$('.part2 .prdBox .box-spec-detail').find('.set').find('span').addClass('highlight');
						}
					}
					
					/* 비교하기 팝업 정보 세팅 이후 공통(앵커 버튼 생성)(필요) */
					function afterSetCompInfoComm(){console.log("비교하기 팝업 정보 세팅 이후 공통(앵커 버튼 생성)(필요)");
						var part1Len = $(".part1 .prdBox .prd.prdDetail").length;/* part1 길이 */
						
						/* 대분류 필터 세팅(앵커) */
						var anchorTmpArr = [];
						var lfcTmpArr = [];
						if(part1Len > 0){
							var part2SpecSet0Len = 0;
							var part2SpecSet0Len = $('.part2').find('.spec').eq(0).find('.box-spec-detail').find('.set').length;
							for(var i=0;i<part2SpecSet0Len;i++){
								var setDisp = $('.part2').find('.spec').eq(0).find('.box-spec-detail').find('.set').eq(i).css('display');
								var setText = $('.part2').find('.spec').eq(0).find('.box-spec-detail').find('.set').eq(i).find('h3').text();
								var setAncorClass = $('.part2').find('.spec').eq(0).find('.box-spec-detail').find('.set').eq(i).attr('class').split('set ')[1];
								if(setDisp != 'none' && setText != "" && setAncorClass != ""){
									lfcTmpArr[i] = setText;
									anchorTmpArr[i] = setAncorClass;
								}
							}
							lfcTmpArr = lfcTmpArr.filter(function(item){return item !== null && item !== undefined && item !== '';});
							anchorTmpArr = anchorTmpArr.filter(function(item){return item !== null && item !== undefined && item !== '';});
							var lfcBtnSet = new Set(lfcTmpArr);
							var lfcBtnArr = [...lfcBtnSet];
							
							var ancCassNmSet = new Set(anchorTmpArr);
							var ancCassNmArr = [...ancCassNmSet];
							
							$('.layer-filter-compare').empty();
							var html = '';
							for(var i=0;i<lfcBtnArr.length;i++){
								/* 활성화 : btn-type2, 비활성화 :  btn-type6 */
								if(i == 0){
									html += '<a href="#'+ancCassNmArr[i]+'" onClick="specAnchor(this)"><button type="button"  value="'+i+'" class="btn btn-s btn-type2">'+lfcBtnArr[i]+'</button></a>';
								}else{
									html += '<a href="#'+ancCassNmArr[i]+'" onClick="specAnchor(this)"><button type="button"  value="'+i+'" class="btn btn-s btn-type6">'+lfcBtnArr[i]+'</button></a>';
								}
							}
							$('.layer-filter-compare').append(html);
						}
					}
					
					/* 비교하기 팝업 앵커 세팅(필요)(다 되고 0 컬럼만 id) */
					function setSpecAnchor(){console.log("비교하기 팝업 앵커 세팅(필요)(다 되고 0 컬럼만 id)");
						var part2SpecSet0Len = $('.part2').find('.spec').eq(0).find('.box-spec-detail').find('.set').length;
						for(var i=0;i<part2SpecSet0Len;i++){
							var set0ClassNm = $('.part2').find('.spec').eq(0).find('.box-spec-detail').find('.set').eq(i).attr('class').split('set ')[1];
							$('.part2').find('.spec').eq(0).find('.box-spec-detail').find('.set').eq(i).attr('id',set0ClassNm);
						}
					}
					
					/* 비교하기 팝업 스펙 카테고리 앵커(필요) */
					function specAnchor(self){console.log("비교하기 팝업 스펙 카테고리 앵커(필요)");
						$('.btn.btn-s.btn-type2').removeClass('active');
						$('.btn.btn-s.btn-type2').removeClass('btn-type2');
						$('.btn.btn-s').removeClass('btn-type6');
						$('.btn.btn-s').addClass('btn-type6');
						if($(self).find('button').hasClass('btn-type6')){
							$(self).find('button').removeClass('btn-type6');
							$(self).find('button').addClass('btn-type2 active');
						}
						
						/* 상품상세 fixed 되기 전, 요소들의 높이 값 받아오기 */
						var headerH = $('.popupPrdCompare .layer-header-compare').outerHeight();
						var differenceM = parseInt($('.layer-difference-compare').css('margin-top'));
						var nofixedSpecDetailsMT = parseInt($('.popupPrdCompare .box-content-rounded.specDetails').css('margin-top'));
						var PrdHeight = $('.layer-pop.popupPrdCompare .layer-content-compare .prd').outerHeight();
						/* 상품상세 fixed 상태, 요소들의 높이 값 받아오기 */
						var specDetailsMT = parseInt($('.popupPrdCompare.fixed .box-content-rounded.specDetails').css('margin-top'));
						var fixedPrdHeight = $('.layer-pop.popupPrdCompare.fixed .layer-content-compare .prd').outerHeight();
						/* 스펙박스 찾기 */
						var position; /* 스펙박스에 계산 된 높이 값 넣을 변수 */
						var href = $(self).attr("href"); 
						var target = $(href == "#" || href == "" ? "body" : href);
						/* fixed 되기 전과 후로 분기 함 */
						var hasFiexd = $('.layer-pop.popupPrdCompare').hasClass('fixed');	
						if (hasFiexd) {/* 비교하기 팝업 스크롤 이동된 경우 */
							position = target.position().top - fixedPrdHeight + specDetailsMT;
						}else{/* 비교하기 팝업 스크롤 맨 위 */
							//1440 이하는 target의 포지션값은 유지된채, vw로 화면이 작아져서 값들이 변하기 때문에
							// 앵커다운이 pc(1920)처럼 작동을 안함. 그래서 화면을 보면서 높이을 설정할 수 있는 요소들의 값을 얻어 빼주는 방식으로 작업 함.
							// 화면이 바뀔 경우.. 일일히 확인해야함...
				
							var get_width = $(window).width();
							
							if( get_width <= 800){
								position = target.position().top + headerH;
							}else if(get_width <= 810){
								// fold 펼친화면
								position = target.position().top + (headerH * 3.5) ;
							}else if(get_width <= 1440){
								var filterMB = parseInt($('.layer-pop.popupPrdCompare .layer-filter-compare').css('margin-bottom'));
								position = target.position().top + nofixedSpecDetailsMT + headerH + differenceM + filterMB;	
							}else{
								position = target.position().top + nofixedSpecDetailsMT + headerH + differenceM;	
							}
						}
						$(".layer-content-compare").animate({ scrollTop: position }, 600, "swing");
					}
					/* ===================================================================== */
					/* 멤버십 적립포인트 보이기 여부(B2C)(필요) */
					function mShipPtShowYnB2C(stId, mdlCode
																, envmtGbCd, environmentGbLocal, environmentGbDev, environmentGbStg
																, stGbCd, membershipUseExcptYn, carePlusType
																, thirdPartyYn
																, isLogin, membershipYn){console.log("멤버십 적립포인트 보이기 여부(B2C)(필요)");
						
						//적립 예정 포인트 or GMQDisplay 멤버십 가입하기
						//(한달살기) 특정 SKU 멤버십 포인트 미노출 처리
						if(!(
								mdlCode === 'NT950QDB-KC58T' || mdlCode === 'NT950QDB-KC58F' || mdlCode === 'NT950XDB-KC58O' || mdlCode === 'NT950XDB-KC58F' || 
								mdlCode === 'NT930XDB-KC58O' || mdlCode === 'NT930XDB-KC58F' || mdlCode === 'NT930QDB-KC58O' || mdlCode === 'NT930QDB-KC58F' || 
								mdlCode === 'NT950QDB-KD71T' || mdlCode === 'NT950QDB-KD71U' || mdlCode === 'NT950QDB-KD71V' || mdlCode === 'NT950XDC-XD71R' || 
								mdlCode === 'NT950XDC-XD71T' || mdlCode === 'NT950XDB-KD71T' || mdlCode === 'NT950XDB-KD71U' || mdlCode === 'NT950XDB-KD71V' ||
								mdlCode === 'NT950QDB-KC58O' || mdlCode === 'NT930QDB-KC58T' || mdlCode === 'NT950XDC-XL51O' || mdlCode === 'SM-F926NZUYKOO' ||
								mdlCode === 'SM-F711NZUYKOO' || mdlCode === 'SM-F721NAWZKOO' 
							) || 
							(
								mdlCode === 'SM-F700NZKAKOO' && (envmtGbCd === environmentGbLocal || envmtGbCd === environmentGbDev || envmtGbCd === environmentGbStg)
							)
						){
							if(stGbCd !== '80' && membershipUseExcptYn === 'N' && (carePlusType === null || typeof carePlusType === "undefined" || carePlusType === 'N' || carePlusType === 'CP')){
								if(thirdPartyYn === 'N'){
									if((isLogin && membershipYn !== 'Y')){
										return false;
									}else{
										return true;
									}
								}
							}
						}
					}
					
					/* 멤버십 적립포인트 보이기 여부(패넷)(필요) */
					function mShipPtShowYnFNET(stId, stGbCd, stCd, isLogin, membershipYn){console.log("멤버십 적립포인트 보이기 여부(패넷)(필요)");
						
						if((stGbCd !== '80')){
							if((stCd !== 'epp')){
								if((isLogin && membershipYn !== 'Y')){
									return false;
								}else{
									return true;
								}
							}
						}
					}
					/* ===================================================================== */
					var vCopyUrl = window.document.location.href;
					var myMarriageMoveBuyYn = false; // 패넷혼수이사여부
					var myMarriageMoveStat = {};     // 패넷혼수이사상태
					var myMarriageMoveCartCnt = 0;   // 패넷혼수이사장바구니개수
					var spcExhbnYn = false;		  // 패넷특별기획전여부
					var spcExhbnGoodsStat = {};	  // 패넷특별기획전상품 특별기획전구매상태
						
					/* 장바구니 시작(B2C, 패넷)(필요) */
					function _btnCompCart(self){console.log("장바구니 시작(B2C, 패넷)(필요)");
						var goodsIds_ 	= $(self).attr('data-goods-ids');
						var nowBuyYn_ 	= $(self).attr('data-now-buy-yn');
						var buyQtys_ 	= $(self).attr('data-buy-qtys');
						var stGbCd_ 		= $(self).attr('data-st-gb-cd');
						var stId_ 			= $(self).attr('data-st-id');
						var orderType_ 	= $(self).attr('data-order-type');
						
						$("#compGoodsCartForm").remove();
						var compGoodsCartFormHTML = "";
						compGoodsCartFormHTML += "<form id='compGoodsCartForm' name='compGoodsCartForm' method='post'>";
						compGoodsCartFormHTML += 		"<input type='hidden' name='goodsIds' id='goodsIds' value='"+goodsIds_+"' />";
						compGoodsCartFormHTML += 		"<input type='hidden' name='stGbCd' value='"+stGbCd_+"' />";
						compGoodsCartFormHTML += 		"<input type='hidden' name='stId' value='"+stId_+"' />";
						compGoodsCartFormHTML += 		"<input type='hidden' name='nowBuyYn' value='"+nowBuyYn_+"' />";
						compGoodsCartFormHTML += 		"<input type='hidden' name='buyQtys' class='count-prd' value='"+buyQtys_+"' />";
						compGoodsCartFormHTML += 		"<input type='hidden' name='orderType' value='"+orderType_+"'>";
						//compGoodsCartFormHTML += 		"<input type='hidden' name='frbInfo'>";
						//compGoodsCartFormHTML += 		"<input type='hidden' name='pckStrNo' id='pckStrNo' value='' />";
						//compGoodsCartFormHTML += 		"<input type='hidden' name='goodsOrdTpCd' id='goodsOrdTpCd' value='' />";
						//compGoodsCartFormHTML += 		"<input type='hidden' name='galaxyClubYn' id='galaxyClubYn' value='' />";
						//compGoodsCartFormHTML += 		"<input type='hidden' name='clsMtdCd' id='clsMtdCd' value=''/>";
						//compGoodsCartFormHTML += 		"<input type='hidden' name='galaxyClubTpCd' id='galaxyClubTpCd' value=''/>";
						//compGoodsCartFormHTML += 		"<input type='hidden' name='linkSubCd' id='linkSubCd' value='' />";
						//compGoodsCartFormHTML += 		"<input type='hidden' name='itemCd' id='itemCd' value='' />";
						//compGoodsCartFormHTML += 		"<input type='hidden' name='empPrcStYn' value='N' />";
						//compGoodsCartFormHTML += 		"<input type='hidden' name='secApp' id='secApp' value='false' />";
						//compGoodsCartFormHTML += 		"<input type='hidden' name='price' id='price' value='' />";
						compGoodsCartFormHTML += "</form>";
						$(self).parent().append(compGoodsCartFormHTML);
						var reqData = $("#compGoodsCartForm").serializeJson();
						
						if( stGbCd === '20' || stGbCd === '30' ){// 패밀리넷
							if( stGbCd == '20' || stId == '7' || stId == '900') {
								if( $('#fnMultiPurchaseGuidance').hasClass('btnDirectClicked') ) {
									$('#fnMultiPurchaseGuidance').removeClass('btnDirectClicked');
								}
								if( $('#fnOverpurchaseApplyGuidance').hasClass('btnDirectClicked') ) {
									$('#fnOverpurchaseApplyGuidance').removeClass('btnDirectClicked');
								}
								
								$('#fnMultiPurchaseGuidance').addClass('btnCartClicked');
								$('#fnOverpurchaseApplyGuidance').addClass('btnDirectClicked');
								
								_fnFamliyNetCountLimit(reqData);
							}else{
								_fnFamliyNetCountLimit(reqData);
							}
						}else if(stGbCd === '10'){//B2C
							
						}
					}
					
					/* 장바구니 확인(패밀리넷인 경우 수량제한)(필요) */
					function _fnFamliyNetCountLimit(reqData){console.log("장바구니 확인(패밀리넷인 경우 수량제한)(필요)");
						//$('#fnetOrderAgree').val('N');
						var options = {
								url : '/sec/xhr/order/check/limitcount'
								, data: reqData
								, done : function(data){
									var listBuyInfo = data.listOrderBuyLimitVO
										, baseCount = data.baseCount
										, buyQty		 = parseInt(reqData.buyQtys[0]);
									
									myMarriageMoveBuyYn 	 	= (data.myMarriageMoveBuyYn == undefined || data.myMarriageMoveBuyYn == null)? false : data.myMarriageMoveBuyYn;	// 혼수이사가능여부
									myMarriageMoveStat 		 	= (data.myMarriageMoveStat == undefined || data.myMarriageMoveStat == null)? {} : data.myMarriageMoveStat;					// 혼수이사 상태
									myMarriageMoveCartCnt		= (data.myMarriageMoveCartCnt == undefined || data.myMarriageMoveCartCnt == null)? 0 : data.myMarriageMoveCartCnt;	// 혼수이사상품품목 장바구니 수량
									
									spcExhbnYn 				= (data.spcExhbnYn == undefined || data.spcExhbnYn == null)? false : data.spcExhbnYn; 	 						 							// 특별기획전가능여부
									spcExhbnGoodsStat 	= (data.spcExhbnGoodsStat == undefined || data.spcExhbnGoodsStat == null)? {} : data.spcExhbnGoodsStat; 			 			// 특별기획전 상품 특별기획전구매 상태
									
									orderGoodsQtyRestrictYn = data.orderGoodsQtyRestrictYn;
									orderGoodsQtyRestrictQty = data.orderGoodsQtyRestrictQty;
					
									if(Array.isArray(data.dispRestricts)){
										$('#compDispRestrictsForm').remove();
										var formHtml = '';
										formHtml += '<form action="" id="compDispRestrictsForm"  name="compDispRestrictsForm" method="post" >';
										for(var j=0 ; j<data.dispRestricts.length ; j++){
											formHtml += '<input name="dispClsfNo" value="'+data.dispRestricts[j].dispClsfNo+'">';
											formHtml += '<input name="qty_'+data.dispRestricts[j].dispClsfNo+'" value="'+data.dispRestricts[j].buyQty+'" >';
										}
										formHtml += '</form>'; 
										$('body').append(formHtml);
									}	
									
									if( orderGoodsQtyRestrictYn != null ) {
										if( orderGoodsQtyRestrictYn == "Y" ) {
											// 패밀리넷 품목별 초과 구매 관련 신청 안내
											openLayer('fnOverpurchaseApplyGuidance');
											return;
										}else if( orderGoodsQtyRestrictYn == "N" ){
											// 패밀리넷 동일 품목 다량 구매 관련 안내
											openLayer('fnMultiPurchaseGuidance');
											return;
										}
									}
									
									if ( buyQty >= baseCount ) {
										$('#popupFmailyAgree').find('#baseCount').text(baseCount);
										openLayer('popupFmailyAgree');
										return false;
									}
									
									for ( var i=0; i < listBuyInfo.length ; i++) {
										// var goodsId = listBuyInfo[i].goodsId
										var orderCount = parseInt(listBuyInfo[i].count);
										 
										if ( orderCount >= baseCount || (orderCount + buyQty) >= baseCount) {
											$('#popupFmailyAgree').find('#baseCount').text(baseCount);
											openLayer('popupFmailyAgree');
											return false;
										}
									}
									
									//$('#fnetOrderAgree').val('Y');
									
									if(spcExhbnYn){ // 패넷특별기획전가능
										reqData.spcExhbnYn = spcExhbnYn;
										if(reqData.nowBuyYn == 'N'){
											_fnFamilyNetSpcExhbnCart(reqData);
											return false;
										}
									}else if(myMarriageMoveBuyYn){ // 혼수이사가능
										reqData.myMarriageMoveBuyYn = myMarriageMoveBuyYn;
										if(reqData.nowBuyYn == 'N'){
											_fnFamilyNetMyMarriageMoveCart(reqData, myMarriageMoveCartCnt);
											return false;
										}
									}
									
									if ( reqData.nowBuyYn == 'N' ) { _fnShowCartMessage(reqData); } 
									return true;
								}
							};
						ajax.call(options);
					}
					
					/* 패밀리넷 특별기획전 상품 장바구니에 담기(FNET)(필요) */
					function _fnFamilyNetSpcExhbnCart(reqData){console.log("패밀리넷 특별기획전 상품 장바구니에 담기(FNET)(필요)");
						let stGbCd = reqData.stGbCd;
						let spcExhbnGoodsStatLocal = spcExhbnGoodsStat[reqData.goodsIds[0]];
						
						if(spcExhbnGoodsStatLocal == undefined || spcExhbnGoodsStatLocal == null || spcExhbnGoodsStatLocal == ""){
							let confirmData = { content : "특별기획전 구매 중 오류가 발생하였습니다. 관리자에게 문의 바랍니다." };
							commonConfirm(confirmData);
							openLayer('commonConfirm');
						}else if(spcExhbnGoodsStatLocal == "lmtOver" && stGbCd == '30'){//디플인 경우, 잔여한도가 임직원가보다 높은경우
							reqData.spcExhbnYn = false;
							_fnInsertCart(reqData);
						}else if(spcExhbnGoodsStatLocal == "cartFull"){// 장바구니에 이미 담겨있거나 더 담을수 없는경우
							let confirmData = { content : "이미 특별기획전으로 구매하려는 상품의 카테고리에 해당되는 상품이 장바구니에 담겨 있습니다.<br>특별기획전 장바구니에서 제품삭제 후 추가 가능합니다." };
							commonConfirm(confirmData);
							openLayer('commonConfirm');
						}else if(spcExhbnGoodsStatLocal == "ordQtyOver"){// 기준구매수량보다 구매희망수량이 많은경우
							let confirmData = { content : "특별기획전 기준구매수량을 초과하였습니다.<br> 수량을 조정해 주세요." };
							commonConfirm(confirmData);
							openLayer('commonConfirm');
						}else{// 특별기획전 장바구니담기 가능
							_fnInsertCart(reqData);
						}
					}
					
					/* 패밀리넷 혼수이사 상품 장바구니에 담기(FNET)(필요) */
					function _fnFamilyNetMyMarriageMoveCart(reqData, myMarriageMoveCartCnt){console.log("패밀리넷 혼수이사 상품 장바구니에 담기(FNET)(필요)");
						let stId = reqData.stId;
						if(myMarriageMoveStat.accCteGoods != undefined && myMarriageMoveStat.accCteGoods != "" && myMarriageMoveStat.accCteGoods == "accCteGoods"){
							let confirmData = { content : "액세서리 상품으로 일반장바구니로 이동됩니다." , okBtnText : "확인", cancelBtnText : "취소" };
							commonConfirm(confirmData);
							openLayer('commonConfirm');
							$("#closeCommonConfirmBtn").hide();
							reqData.myMarriageMoveBuyYn = false;
						}else if(myMarriageMoveStat.ordered != undefined && myMarriageMoveStat.ordered != "" && myMarriageMoveStat.ordered == "ordered"){ //이미 카테고리에 해당되는 상품을 구매했을경우
							let confirmData = { content : "혼수/이사 혜택을 받은 구매이력이 확인되어 일반장바구니로 이동됩니다." , okBtnText : "확인", cancelBtnText : "취소" };
							commonConfirm(confirmData);
							openLayer('commonConfirm');
							$("#closeCommonConfirmBtn").hide();
							reqData.myMarriageMoveBuyYn = false;
						}else if(myMarriageMoveCartCnt > 0){// 이미 카테고리에 해당되는 상품이 혼수이사 장바구니에 담겨있는 경우
							reqData.myMarriageMoveBuyYn = false;
						}else if(myMarriageMoveStat.lmtOver != undefined && myMarriageMoveStat.lmtOver != "" && myMarriageMoveStat.lmtOver == "lmtOver" && stGbCd == '30' && stId != '7' && stId != '600' && stId != '900'){ // 패넷디플일경우 잔여한도보다 임직원가가 높을경우
							let confirmData = { content : "임직원가보다 잔여한도가 높으므로 일반장바구니로 이동됩니다." , okBtnText : "확인", cancelBtnText : "취소" };
							commonConfirm(confirmData);
							openLayer('commonConfirm');
							$("#closeCommonConfirmBtn").hide();
							reqData.myMarriageMoveBuyYn = false;
						}else {
							_fnInsertCart(reqData);
						}
						
						$("#commonConfirmOkBtn").on('click' , function(){
							_fnInsertCart(reqData);
							return false;
						});
						
						$("#commonConfirmCancelBtn").on('click' , function(){// 웹 접근성 수정
									$("[data-focus-target=true]").focus();
							$("[data-focus-target=true]").removeAttr("data-focus-target");
							return false;
						});
					}
					
					/* 장바구니 확인(B2C, FNET)(필요) */
					function _fnShowCartMessage(reqData){console.log("장바구니 확인(B2C, FNET)(필요)");
						var options = {
							url : '/sec/xhr/order/goodscnt'
							, data : reqData
							, done : function(data){
								var cartCnt = data.goodsCnt;
								$("#btnCompCart").attr("data-focus-target", "true");
								
								if ( cartCnt > 0 ) {
									let confirmData = { content : "이미 동일한 상품이 장바구니에 있습니다.</br>추가하시겠습니까?" , okBtnText : "확인", cancelBtnText : "취소" };
									commonConfirm(confirmData);
									openLayer('commonConfirm');
									$("#closeCommonConfirmBtn").hide();
								} else {
									let confirmData = { content : "장바구니에 추가하시겠습니까?", okBtnText : "확인", cancelBtnText : "취소" };
									commonConfirm(confirmData);
									openLayer('commonConfirm');
									$("#closeCommonConfirmBtn").hide();
								}
								
								$("#commonConfirmOkBtn").on('click' , function(){
									_fnInsertCart(reqData);
									return false;
								});
								
								$("#commonConfirmCancelBtn").on('click' , function(){// 웹 접근성 수정
											$("[data-focus-target=true]").focus();
									$("[data-focus-target=true]").removeAttr("data-focus-target");
									return false;
								});
								
							}
						};
						ajax.call(options);
					}
				
					/* 장바구니 담기(B2C, FNET)(필요) */
					function _fnInsertCart(reqData){console.log("장바구니 담기(B2C, FNET)(필요)");
						var stGbCd = reqData.stGbCd;
						var options = {
							url : '/sec/xhr/order/insertCart'
							, data : reqData
							, done : function(data){
								if(reqData.myMarriageMoveBuyYn && reqData.buyQtys.length > 1){// 혼수이사장바구니와 일반장바구니에 동시에 담았을 경우
									let confirmData = { content : "해당 제품이 혼수/이사 제품에 해당되어<br> 혼수/이사로 장바구니로 이동됩니다.<br>(1개의 제품은 일반장바구니를 확인하세요)" };
									commonConfirm(confirmData);
									openLayer('commonConfirm');
								}
								
								if (data.cartCnt !== 0) { $(".cart-inner-count").css("display", "block"); $(".cart-inner-count").html(data.cartCnt);
								} else { $(".cart-inner-count").css("display", "none"); }
								
								_satellite.track('add to cart');
							}
						};
						
						if(stGbCd == '10'){ options = $.extend({}, options, {netFunnelId : 'b2c_add_cart'}); }// NetFunnel_Action B2C만 적용 (20200902)
						
						ajax.call(options);
					}
					/* ===================================================================== */
					/* 구매하기 시작(B2C, FNET)(필요) */
					function _netFunnel_Action_PF(stGrp, goodsPath){console.log("구매하기 시작(B2C, FNET)(필요)");
						NetFunnel_Action({action_id: stGrp+'_pd_view'}, function(ev, ret){
							location.href = goodsPath;
						});
					}
					
					/* 구매하기 시작(FNET)(필요) */
					function _bespoke_Action_PF(stGrp, goodsPath){console.log("구매하기 시작(FNET)(필요)");
						location.href = goodsPath;
					}
					
					/* 구매하기 시작(B2C, FNET)(필요) */
					function _wine_Action_PF(isLogin, stGrp, goodsPath){console.log("구매하기 시작(B2C, FNET)(필요)");
						if(!isLogin){
							location.href = '/sec/' + "member/indexLogin/?returnUrl=" + location.pathname;
							return;
						}else{
							_fnGetCerificationCheck (goodsPath);	    	    		
						}
					}
					
					/* 구매하기_와인(필요) */
					function _fnGetCerificationCheck (goodsPath){console.log("구매하기_와인(필요)");
						var options = {
							url : "/sec/xhr/pf/cerificationCheck/"
							, type: 'POST'
							, done : function(data) {
								if(data.adultCerification == "F"){ //계정 성인체크 여부가 없을때
									let alertData = { title: "alert", content: "로그인이 필요합니다." };
									commonAlert(alertData);
									openLayer('commonAlert');
									return;
								} else if ( data.adultCerification == "N" ) { // 계정 성인체크 여부가 N일때 (미성년)
									let alertData = { title: "본인인증 시 19세 미만자", content: "만 19세 이상만 구매할 수 있습니다." };
									commonAlert(alertData);
									openLayer('commonAlert');
									return;
								} else if(data.kcbAdultCerification == "F" ){// KCB 본인 인증 안했을때 인증 팝업 콜
									_kcb(goodsPath);
									return;
								} else if (data.kcbAdultCerification == "N"){// KCB 본인 인증 했으나 미성년일때
									let alertData = { title: "본인인증 시 19세 미만자", content: "만 19세 이상만 구매할 수 있습니다." };
									commonAlert(alertData);
									openLayer('commonAlert');
									return;
								} else {
									_netFunnel_Action_PF(goodsPath);
								}					
							}
						};
						ajax.call(options);
					}
					
					/* 구매하기_와인(필요) */
					/* KCB 본인 인증 안했을때 인증 팝업 콜 */
					function _kcb(goodsPath){console.log("KCB 본인 인증 안했을때 인증 팝업 콜");
								var options = {
							url  : "/sec/xhr/join/kcbPersonalAuthCheck/"
							, data : { url : goodsPath , kcbGb : "W"}
							, type : 'GET'
							, async : false
							, dataType : "html"
							, done : function(data) {
								$('#index_kcb').html(data);
								if (!$("#index_kcb").hasClass('active')) { openLayer('index_kcb'); } 
									}
						};
						ajax.call(options);
					}
					
					/* ===================================================================== */
					$(window).resize(function(){
						setPopupHeight(); // 윈도우 세로 값에 따라 스크롤 되는 영역 세로값 설정하기
						floatingStickyComparePosition(); // 230119 
						setPopupPart1Fixed($('.popupPrdCompare .layer-content-compare'));// 221230 비교하기 팝업 스크롤내리면 제품이미지 고정
						
					}).resize();
					
						$(document).ready(function () {
							sliderCompareBox('itmInfoDetail');
				
							/* 비교하기 팝업_차이점 토글 세팅 */
							$("label[for = 'toggle-check-on']").click(function(){
								/* 차이점 활성화 */
								if($('.popupPrdCompare .layer-difference-compare .toggleCheck .labeltxt.off').attr('aria-hidden') == 'true'){
									$('.popupPrdCompare .layer-difference-compare .toggleCheck .labeltxt.off').attr('aria-hidden','false');
									$('.popupPrdCompare .layer-difference-compare .toggleCheck .labeltxt.on').attr('aria-hidden','true');
									
									/* 가격 높이 클래스 */
									$('.prdBox .prd.prdDetail').removeClass('addpoint');
									$('.prdBox .prd .box.compare-emptyBox').parent().removeClass('addpoint');
									if('1' == '1'){ 
								}else if('1' == '2'){ 
									$('.prdBox .prd.prdDetail').removeClass('cnt-4-li_list-price');
									$('.prdBox .prd .box.compare-emptyBox').parent().removeClass('cnt-4-li_list-price');
								}else if('1' == '3'){ 
									$('.prdBox .prd.prdDetail').removeClass('cnt-5-li_list-price');
									$('.prdBox .prd .box.compare-emptyBox').parent().removeClass('cnt-5-li_list-price');
								}
									
									/* 비교하기 팝업 정보 세팅 DB(차이점 활성화)(필요) */
									setCompInfoDb();
									
								}else{/* 차이점 비활성화 */
									$('.popupPrdCompare .layer-difference-compare .toggleCheck .labeltxt.off').attr('aria-hidden','true');
									$('.popupPrdCompare .layer-difference-compare .toggleCheck .labeltxt.on').attr('aria-hidden','false');
									var compDispClsfEnNm = '';
								if($('#compareBtn').val() == ''){ $('#compareBtn').val($('.prd').attr('value')); $('.btn-reset').val($('.prd').attr('value')); }
								compDispClsfEnNm = $('#compareBtn').val();
								
								/* 가격 높이 클래스 */
									$('.prdBox .prd.prdDetail').removeClass('addpoint');
									$('.prdBox .prd .box.compare-emptyBox').parent().removeClass('addpoint');
									if('1' == '1'){ 
								}else if('1' == '2'){ 
									$('.prdBox .prd.prdDetail').removeClass('cnt-4-li_list-price');
									$('.prdBox .prd .box.compare-emptyBox').parent().removeClass('cnt-4-li_list-price');
								}else if('1' == '3'){ 
									$('.prdBox .prd.prdDetail').removeClass('cnt-5-li_list-price');
									$('.prdBox .prd .box.compare-emptyBox').parent().removeClass('cnt-5-li_list-price');
								}
								
								/* 비교하기 팝업 정보 세팅 스토리지(차이점 비활성화)(필요) */
								setCompInfoStrg(compDispClsfEnNm, false, true);
								
								/* 비교 상품 dl span 값 모든 text에 스펙 모두 보이고 하이라이트 처리 */
								//$('.part2 .prdBox .box-spec-detail').find('.set').find('span').addClass('highlight');
								//$('.part2 .prdBox .box-spec-detail').find('dl').css('display','block');
								//$('.part2 .prdBox .box-spec-detail').find('.set').css('display','block');
								}
							});
							
							// 221230 비교하기 s
						comparePopupSlickpart1($('.part1'));
						comparePopupSlickpart2($('.part2'));
						setPopupHeight(); // 윈도우 세로 값에 따라 스크롤 되는 영역 세로값 설정하기
							// 221230 비교하기 e
						});
					 
					$(document).on("click", ".btn-compare", setPopupHeight);// 221230 비교하기 버튼 누를 때, 팝업창 세로사이즈 설정
				</script><!-- e : 비교하기 b2c, fnet, fnet 디플(고도화)  -->
				
				<div class="layer-pop layer-default basic-pop" id="popupTradeIn" tabindex="0" data-popup-layer="popupTradeIn" data-focus="popupTradeIn" aria-hidden="false" data-zindex="300" style="z-index: 300;">
						<div class="layer-header"><h3>중고제품 추가보상 프로그램 (트레이드인)</h3></div>
						<div class="layer-content">
						<p>
							My 갤럭시 클럽 가입 고객님입니다.<br>
							트레이드인(추가보상)을 선택하실 경우
							권한실행 대상 제품으로 해당 제품을 신청할 수 없습니다.
							그래도 선택하시겠습니까?
						</p>
						<p>
							<span class="txt-bold">※ 구매전 참고사항 ※</span><br>
							My 갤럭시 클럽 권한실행 대상으로 제품을 선택하여
							기존단말 반납과 일정금액을 납부하실 경우,
							<span class="txt-blue">잔여할부금 면제(권한실행) 혜택</span>을 받으실 수 있습니다. 
						</p>
						<p>
							<span class="txt-red">※ 트레이드인 서비스와 권한실행 중복 신청 불가</span><br>
							* My 갤럭시 클럽 세부안내 페이지에서 조회 바랍니다. <a href="https://www.samsung.com/sec/galaxyclub/" class="btn-underline" target="_blank">[바로가기]</a>
						</p>
								<div class="btn-box double">
										<a href="javascript:void(0)" class="btn btn-d btn-type1" id="tradeCancelBtn">아니오</a>
										<a href="javascript:void(0)" class="btn btn-d btn-type2" id="tradeOkBtn">예</a>
								</div>
						</div>
				</div>
				<div class="layer-pop layer-default basic-pop" id="popupGlxClubJoin" tabindex="0" data-popup-layer="popupGlxClubJoin" data-focus="popupGlxClubJoin" aria-hidden="false" data-zindex="300" style="z-index: 300;">
						<div class="layer-header"><h3>My 갤럭시 클럽 신청하기</h3></div>
						<div class="layer-content">
						<p>
							기존 My 갤럭시 클럽 가입 고객님입니다.<br>
							My 갤럭시 클럽 신규 가입을 신청하시겠습니까?
						</p>
						<p class="small-text b-blk">
							※ 권한실행 서비스 신청은<br>
							‘마이페이지 &gt; My 갤럭시 클럽’ 메뉴를 통해 진행해주세요 
						</p>
								<div class="btn-box double">
										<a href="javascript:void(0)" class="btn btn-d btn-type1" id="galClubCancelBtn">취소</a>
										<a href="javascript:void(0)" class="btn btn-d btn-type2" id="galClubOkBtn">신청</a>
								</div>
						</div>
				</div>
					
					</div>
					</div>
				</div>
			</div>
		</section>
	    <!-- s : 컴퍼넌트 바 -->
	    <section class="component-bar" role="product_content_search">
	        <div class="component-bar-inner">
	            <div>
	                <div class="itm-title-text" id="goods-title-text">LG전자 울트라와이드 듀얼업 28MQ780</div>
	                <nav id="anchor-navbar" class="anchor-navbar">
	                    <ul class="anchor-nav">
 	                    	<!--3rd 파티 상품은 특장점/상품평/유의사항만 노출 -->
	        				
		                        <li>
	                        	<a id="acompGoodsFeatures" data-scroll="compGoodsFeatures" href="javascript:void(0);" class="dot">
		                                <span data-omni="benefits">특장점</span>
		                            </a>
	                            </li>
	                        <!--3rd 파티 상품은 특장점/상품평/유의사항만 노출 -->
	        				<li>
										<a data-scroll="compGoodsSpec" href="javascript:void(0);" class="dot">
	                                	<span data-omni="specs">스펙</span>
	                            	</a>
	                        	</li>
	                        	<li id="compGoodsInstallGuideLi" style="display:none;">
	                            	<a data-scroll="compGoodsInstallGuide" href="javascript:void(0);" class="dot">
	                                	<span data-omni="install guide">설치가이드</span>
	                            	</a>
	                        	</li>
	                       	 		<li>
									<a data-scroll="compGoodsComment" href="javascript:void(0);" class="dot" id="itm-review-component">
										<span data-omni="reviews">상품평</span>
									</a>
								</li>
											<!--3rd 파티 상품은 특장점/상품평/유의사항만 노출 -->
	        				<li id="compGoodsRelationLi" style="display:none;">
		                            <a data-scroll="compGoodsRelation" href="javascript:void(0);" class="dot">
		                                 <span data-omni="related">연관제품</span>
		                            </a>
		                        </li>
		                    <li id="compGoodsNoticeInfoLi" >
	                            <a data-scroll="compGoodsNoticeInfo" href="#compGoodsNoticeInfo1" class="dot" id="compGoodsNoticeInfo">
	                                <span data-omni="compGoodsNoticeInfo">유의사항</span>
	                            </a>                        	
                        	</li>            	
                        	<!-- 제품 연관성 링크 노출 -->
                        	</ul>
	                </nav>
	                <div class="btn-direct-div">
	                	<button type="button" style="display:none;" id="btnDirectSub" class="btn btn-l btn-type3 btn-direct -sg" data-omni="buy now">바로구매</button>
	                	<button type="button" style="display:none;" id="btnCombineSub" class="btn btn-l btn-type3 btn-direct -sg" data-omni="buy now">조합하여 구매하기</button>
	                   	<button type="button" style="display:none;" id="btnRegularSub" style="display:none;" class="btn btn-l btn-type3 btn-direct btn-otherAction" data-omni="shop regular">정기배송 결제하기</button>
	                   	<button type="button" style="display:none;" id="btnRestoreSub" data-scroll="restoreAlarm" class="btn btn-l btn-type3 btn-restore" data-omni="stock alert">재입고 알림</button>
	                   	<button type="button" style="display:none;" id="findStoreSub" class="btn btn-l btn-type3 btn-direct btn-otherAction" data-omni="store locator" ga-ca="Where to buy" ga-la="S24AG320NK" ga-ac="store locator">매장찾기</button>
	                   	<button type="button" style="display:none;" id="btnContactSub" class="btn btn-l btn-type3 btn-direct btn-otherAction btn-pd-contact" data-omni="contact us">견적문의</button>
	                   	<!-- 210406 정재동 ST_ID 193 임직원몰(e카달로그) 일때 표시하는 버튼  -->
	                   	<button type="button" style="display:none;" id="reservStoreSub" class="btn btn-l btn-type3 btn-direct -sg" data-omni="store locator">매장상담 예약하기</button>
	                   	
	                   	<p id="stopSelling" style="display:none;" class="noItemLable">판매중지된 상품</p>
	                	<div class="price-clone">
	                		<div class="price-clone-inner"></div>
	                	</div>
	                </div>
	            </div>
	        </div>
	    </section>
	    <!-- e : 컴퍼넌트 바 -->
	    <!-- s : 컴퍼넌트 영역 -->
	    <section class="itm-component">
	        <div class="component-body" tabindex="0">
 	            <!--3rd 파티 상품은 특장점/상품평/유의사항만 노출 -->
	        	<article class="component-content component02" id="compGoodsPurBenefit" role="product_content_search" >
			                <!-- 구매혜택 -->
			            	<div>
		<div class="target">
			<!--GMQDisplay 멤버십 플랜 미식가 혜택 (연중)-->

<div class="target">

<p class="pc-ver" style="text-align: center;" align="center">

<a href="../../../bespokeshop/index.html" target="_blank">
<!-- 구매혜택 사진
<img src="https://images.samsung.com/kdp/editor/goods_desc/202209/39c1381a-ecb1-4b48-8fd7-62f975fb41c5.jpg" alt="img">
-->
</a>

</p>

<p style="text-align: center;" align="center">&nbsp;</p>



<p class="mo-ver" style="text-align: center;" align="center">

<a href="../../../bespokeshop/index.html" target="_blank">

<img src="https://images.samsung.com/kdp/editor/goods_desc/202209/84c2887d-9e3e-4748-8fd5-24b034c4ba7c.jpg" alt="img">

</a>

</p>

</div>

<style>.component-body .component02 .target .pc-ver{display:block;}

.component-body .component02 .target .mo-ver{display:none;}

@media (max-width: 800px){

.component-body .component02 .target .pc-ver{display:none;}

.component-body .component02 .target .mo-ver{display:block;}

}

</style></div>
	</div>
</article>
<article class="component-content component01 " id="compGoodsFeatures" role="product_content_search">
 <!-- 구매혜택 및 상품설명 -->
 <!-- 첫번째 사진 -->

<div class="wrap-component feature-benefit pt-none pb-none w1440px img-bottom" >
	<div class="component-contents  pt-wide pb-none txt-mid-center txtm-top-center "  style="background-color=black " data-cptnm="">
		<div class="visual-area ">
			<img src="./../static/images/explain/28MQ780_1.png"" class="objGif">
			<img src="./../static/images/explain/28MQ780_2.png"" class="objGif">
			<img src="./../static/images/explain/28MQ780_3.gif"" class="objGif">
			<img src="./../static/images/explain/28MQ780_4.png"" class="objGif">
			<img src="./../static/images/explain/28MQ780_5.gif"" class="objGif">
			<img src="./../static/images/explain/28MQ780_6.png"" class="objGif">
			<img src="./../static/images/explain/28MQ780_7.png"" class="objGif">
			<img src="./../static/images/explain/28MQ780_8.png"" class="objGif">
			<img src="./../static/images/explain/28MQ780_9.png"" class="objGif">
		</div>
	</div>
</div>

<!-- e : Feature Benefit -->
<div class="itm-notice">
<div>
<픽셀 하자 보증><br>
모니터 화면(패널) 불량 발생 시기준에 따라 무상 패널교체 가능
불량 화소 발견 시, 서비스센터를 통해 전문상담원의 판정을 거친 후 패널 교체를 받으시기 바랍니다.<br>
(불량 화소의 경우, 모니터 전체가 교환되지는 않으며 패널부 교체만 가능합니다.)<br><br>
* 픽셀 하자 보증 기준 [구매 후 ~ 소비자분쟁해결기준 무상보증기간 이내]
   - 휘점 0개 혹은 암점 5개 초과 시<br>
* 패널 교체를 위한 제조사 운영 기준은 변동될 수 있으므로 구매 전 관련 기준을 서비스센터의 전문 상담원을 통해 반드시 확인하시기 바랍니다.<br>
* 에너지 소비효율 기준 변경이나 성능 개선에 따라 에너지 소비효율 등급은 변경될 수도 있습니다.<br>
* 소비자의 이해를 돕기 위해 연출된 장면으로 실사용 환경에 따라 다를 수 있습니다.<br>
<br></div>
		</div>
	
<script type="text/javascript">
	$(document).ready(function () {
		$('.feature-bar').on('click', '.btn-ctrl', function(){
			var featureWrwap = $(this).closest('.feature-wrap'),
				featureContent = featureWrwap.find('.feature-content'),
				pointHeight = $('.family-point-wrapper').height() || 0, 
				barHeight = $('.component-bar').height() + pointHeight,  
				moveTop = featureWrwap.offset().top - barHeight ;

			featureContent.slideToggle();
			featureWrwap.toggleClass('is-close');

			if ( featureWrwap.hasClass('is-close') ){
				$(this).text('더보기');
			} else {
				$(this).text('닫기');
				$('html, body').stop().animate({scrollTop: moveTop} ,500);
			}
		});
		
		if ( $('.family-point-wrapper').length ){
			$('.component-bar-inner').attr('data-margin-top', $('.family-point-wrapper').height());
		}
		$(window).resize(function(){ // resize 시 위치 재조정 
			if ( $('.family-point-wrapper').length ){
				var sticky2 = new Sticky(".component-bar-inner");
				$('.component-bar-inner').attr('data-margin-top', $('.family-point-wrapper').height());
			}
		});
	});
</script></article>
	           <!--3rd 파티 상품은 특장점/상품평/유의사항만 노출 -->
	        	<article class="component-con" style="display:none;">
						<div class="award-box">
							<div class="fixWidth">
								<ul class="award-list ">
									</ul>
								<div class="btn-more-box" style="display:none;">
									<button class="btn-more">더보기</button>
								</div>
							</div>
						</div>
					</article>
					
					<article class="component-con spec-all drop-component component03" id="compGoodsSpec" role="product_content_search">
		            	<!-- 스펙 -->
		            	<div>
						<div class="dropcontent fixWidth" id="specContents" style=""><script type="text/javascript">
	$(document).ready(function(){
		//패키지 상품 구성품 선택 시 구성품 스팩 조회
		$(".spec-tabcontent-tab").on('click', 'a[name^=spec-tab]', function (e){
			e.preventDefault();
			var id = $(this).attr("aria-controls");
	        $(this).closest('.tab-style-btn').find("a").attr("aria-selected", "false");
	        $(this).attr("aria-selected", "true");
	        $(this).closest('.tab-style-btn').parent().find("> .tab-content").hide();
	        $("#"+id).show();
	        
			var cstrtGoodsId = $(this).data('cstrtGoodsId');
			var goodsId = $(this).data('goodsId');
			var cstrtDispGoodsNm = $(this).data('dispNm');
			
			var param = {
				goodsId : cstrtGoodsId
				, goodsTpCd : $("input[name=goodsTpCd]", goodsMain.vGoodsWrapId).val()
				, goodsNm : cstrtDispGoodsNm
				, adminYn : $(goodsMain.vGoodsWrapId).data("admin-yn")
				, taskDtlGbCd : $(goodsMain.vGoodsWrapId).data("task-dtl-gb-cd")
			};
			goodsMain.fnGetHtml(".spec-table-wrap", "getGoodsSpecList", param, function(){
				$("#specTabContent").show();
			});
		});
		
		
		if($("input[name=goodsTpCd]", goodsMain.vGoodsWrapId).val() == '10'){
			var specParam = {
				goodsId : $("input[name=goodsId]", goodsMain.vGoodsWrapId).val()
				, goodsTpCd : $("input[name=goodsTpCd]", goodsMain.vGoodsWrapId).val()
				, goodsNm : $(".itm-info-detail", goodsMain.vGoodsWrapId).data("goods-nm")
				, adminYn : $(goodsMain.vGoodsWrapId).data("admin-yn")
				, taskId : $(goodsMain.vGoodsWrapId).data("task-id")
				, taskDtlNo : $(goodsMain.vGoodsWrapId).data("task-dtl-no")
			};
			goodsMain.fnGetHtml(".spec-table-wrap", "getGoodsSpecList", specParam, function(){
				$("#specTabContent").show();
			});
			
		}else if($("input[name=goodsTpCd]", goodsMain.vGoodsWrapId).val() == '20'){
			$("a[name^=spec-tab]").eq(0).trigger('click');
		}
		
	});

</script>
<script type="text/javascript"> 
        var bDisplay = true; 
		function doDisplay(){ 	
            var con = document.getElementById("specTabContent"); 	
            if(con.style.display=='none'){ 		
                con.style.display = 'block'; 	
            }else{ 		
                con.style.display = 'none'; 	
            } 
        } 
 </script> 
<a href="javascript:doDisplay();" class="dropButton" id="specDropBtn" title="" data-omni="all:specs">
<span>스펙</span>
</a>
<div class="spec-tabcontent-content tab-content" id="specTabContent" role="tabpanel" style="display: block;">
<div class="spec-table-wrap"><h3 class="spec-itm-title" id="cstrt-nm">LG전자 울트라와이드 듀얼업 28MQ780</h3>
<div class="spec-table">
<dl>
<dt>디스플레이</dt>
<dd>
<ol>
<li>
<strong class="spec-title">화면사이즈</strong>
<p class="spec-desc">28인치&nbsp;</p>
</li>
<li>
<strong class="spec-title">평면 / 곡면</strong>
<p class="spec-desc">평면&nbsp;</p>
</li>
<li>
<strong class="spec-title">화면비율</strong>
<p class="spec-desc">16:18&nbsp;</p>
</li>
<li><strong class="spec-title">패널 타입</strong>
<p class="spec-desc">Nano-IPS&nbsp;</p>
</li>
<li><strong class="spec-title">밝기(Brightness)</strong>
<p class="spec-desc">300 cd&nbsp;</p>
</li>
<li>
<strong class="spec-title">명암비</strong>
<p class="spec-desc">1,000:1&nbsp;</p>
</li>
<li>
<strong class="spec-title">색역</strong>
<p class="spec-desc">DCI-P3 98 %&nbsp;</p>
</li>
<li>
<strong class="spec-title">해상도</strong>
<p class="spec-desc">2560 x 2880 (SDQHD) &nbsp;</p>
</li>
<li>
<strong class="spec-title">응답속도 (ms)</strong>
<p class="spec-desc">5ms (GTG)&nbsp;</p>
</li>
<li>
<strong class="spec-title">시야각(수평/수직)</strong>
<p class="spec-desc">178°(H)/178°(V)&nbsp;</p>
</li>
<li>
<strong class="spec-title">주사율</strong>
<p class="spec-desc">Max 60 Hz&nbsp;</p>
</li>
</ol>
</dd>
</dl>

<dl>
<dt>특성</dt>
<dd>
<ol>
<li>
<strong class="spec-title">스피커</strong>
<p class="spec-desc">지원&nbsp;</p>
</li>
<li>
<strong class="spec-title">플리커 프리</strong>
<p class="spec-desc">지원&nbsp;</p>
</li>
<li>
<strong class="spec-title">SW 화면분할</strong>
<p class="spec-desc">지원&nbsp;</p>
</li>
<li>
<strong class="spec-title">도킹스테이션</strong>
<p class="spec-desc">지원&nbsp;</p>
</li>
<li>
<strong class="spec-title">블랙 이퀄라이저</strong>
<p class="spec-desc">지원&nbsp;</p>
</li>
<li>
<strong class="spec-title">KVM 스위치</strong>
<p class="spec-desc">지원&nbsp;</p>
</li>
<li>
<strong class="spec-title">HDR</strong>
<p class="spec-desc">지원&nbsp;</p>
</li>
</ol>
</dd>
</dl>
				
<dl>
<dt>지원단자</dt>
<dd>
<ol>
<li>
<strong class="spec-title">HDMI</strong>
<p class="spec-desc">x2&nbsp;</p>
</li>
<li>
<strong class="spec-title">DP</strong>
<p class="spec-desc">x1&nbsp;</p>
</li>
<li>
<strong class="spec-title">헤드폰 잭</strong>
<p class="spec-desc">x1&nbsp;</p>
</li>
</ol>
</dd>
</dl>
<dl>
<dt>제픔 디자인</dt>
<dd>
<ol>
<li>
<strong class="spec-title">색상</strong>
<p class="spec-desc">블랙&nbsp;</p>
</li>
<li>
<strong class="spec-title">스텐드 제외 제품크기(HxWxD)(mm)</strong>
<p class="spec-desc">482 x 843 x 461mm&nbsp;</p>
</li>
<li>
<strong class="spec-title">제품 무게(kg)</strong>
<p class="spec-desc">9 kg&nbsp;</p>
</li>
</ol>
</dd>
</dl>

<dl>
<dt>악세서리</dt>
<dd>
<ol>
<li>
<strong class="spec-title">구성품</strong>
<p class="spec-desc">모니터 본체, HDMI / DP / USB C 케이블, 전원 어뎁터, 설명서 &nbsp;</p>
</li>
<li>
<strong class="spec-title">스탠드</strong>
<p class="spec-desc">지원&nbsp;</p>
</li>
</ol>
</dd>
</dl>

<dl>
<dt>전원 & 인증</dt>
<dd>
<ol>
<li>
<strong class="spec-title">정격전압</strong>
<p class="spec-desc">100~240V&nbsp;</p>
</li>
<li>
<strong class="spec-title">KC</strong>
<p class="spec-desc">R-R-LGE-28MQ780&nbsp;</p>
</li>
<li>
<strong class="spec-title">무상보증기간</strong>
<p class="spec-desc">3년 무상보증&nbsp;</p>
</li>
<li>
<strong class="spec-title">제조회사</strong>
<p class="spec-desc">LG전자 &nbsp;</p>
</li>
<li>
<strong class="spec-title">등록년월</strong>
<p class="spec-desc">2022년 05월&nbsp;</p>
</li>
</ol>
</dd>
</dl>

</div>
</div>
</div>
</div>
</div>
<div class="dropcontent fixWidth"  id="specContents" style="display:none;">
</div>
<div class="spec-link-box" style="display:none">
<!-- B2C, 패넷만 노출 -->
<div class="spec-link-box-inner">
	</div>
	</div>
	</div>		           
<article class="component-con install-guide drop-component component04" id="compGoodsInstallGuide" role="product_content_search" style="display:none;">
<!-- 설치가이드 -->
<div>
	<a href="javascript:;" class="dropButton" title="">
		<span>설치가이드</span>
	</a>
	<div class="dropcontent fixWidth target" style="display:none;"></div>
</div>
</article>

			            <article class="component-con component07" id="compGoodsComment">
								<!-- 상품평 고도화  ee-->
								<style>.dropdownMenu .account-types {display:none;}
.dropdownMenu.active .account-types {display:block;}
</style>
<script>

	/* 상품평 정보 */
	var goodsComment = {
		vWrapId : "#goods_comment_wrap"
		, vShareUrl : window.document.location.href
		, vFocus : "?focus="
		, fnReloadFocusReview : function(){
			var returnUrl = $("input[name=returnUrl]").val();
			location.href=returnUrl+goodsComment.vFocus+"review";
		}
		, fnAlertPop : function(data){
			let alertData = {
				title: ""
				,content : data.content
				,btnText : "확인"
			};
			if(data.callback != undefined && data.callback != ""){
				$.extend(alertData, {callback : data.callback});
			}
			commonAlert(alertData);
			openLayer('commonAlert');
		}
		, fnMsgPop : function(vOption){
			var msgOptions = {};
			if(typeof vOption === "string"){
				$.extend(msgOptions, { content : vOption, yes : "확인", close : "닫기" });
			}else if(typeof vOption === "object"){
				$.extend(msgOptions, vOption);
			} 
			this.fnOpenLayer($(".popup-msg"), $("#popupMsgTempl").render(msgOptions)).find('a').off().on('click', function (){

				if($(this).hasClass('login-view')|| $(this).hasClass('login-view-like')){
					var returnUrl = $("input[name=returnUrl]").val();
					// 로그인 화면 이동
					location.href='/sec/member/indexLogin/?returnUrl='+returnUrl+goodsComment.vFocus+"review";
				}else if($(this).hasClass('login-view-write')){
					var returnUrl = $("input[name=returnUrl]").val();
					// 로그인 화면 이동
					location.href='/sec/member/indexLogin/?returnUrl='+returnUrl+goodsComment.vFocus+"review"; //review-write
				}else if($(this).hasClass('report-login')){
					var clsAr = $(this).attr('class').split(" ");
					var selectCommentNo = clsAr[clsAr.length-1];
					var returnUrl = $("input[name=returnUrl]").val();
					var page = ""
					if(location.hash != ""){
						page = "#"+location.hash;
					}
					// 로그인 화면 이동
					location.href='/sec/member/indexLogin/?returnUrl='+returnUrl+goodsComment.vFocus+"review-no-"+selectCommentNo+page;
				}else if($(this).hasClass('comment-report')){
					// 신고하기
					var clsAr = $(this).attr('class').split(" ");
					var selectComment = clsAr[clsAr.length-1];
					$("a[class="+selectComment+"]").trigger('click');
					$(this).closest('.layer-pop').find('.pop-close').trigger('click');
				}else if($(this).hasClass('report-sucess')){
					// 신고 완료
					loadCommentList();
					$(this).closest('.layer-pop').find('.pop-close').trigger('click');
				}else if($(this).hasClass('btn-type1') || $(this).hasClass('btn-type2')){
					
					if($(this).closest('.layer-content').find("p")[0].innerHTML== "내용은 최소 10자 이상으로 입력해 주세요."){
						$("#commentArea").attr("tabindex",-1).focus();					
					}						
					// 팝업닫기
					$(this).closest('.layer-pop').find('.pop-close').trigger('click');	
				}
			});
		}
		, fnOpenLayer : function($objLayer, data){
			$objLayer.html(data);
			$objLayer.show().focus();
			if(!$("body").children().is("#mask")){
				$("body").append("<div id='mask'></div>");
			}
			$("#mask").fadeIn().data("activeTarget", $objLayer.data("popup-layer"));
			$("#mask").css('z-index', 299);
			$objLayer.css('z-index', 300);
			scrollLock('lock');
			$objLayer.find('.pop-close').off().on('click', function (){
				
				if($objLayer.find("p").length > 0 && $objLayer.find("p")[0].innerHTML=="내용은 최소 10자 이상으로 입력해 주세요."){
					$("#commentArea").attr("tabindex",-1).focus();
				}	
				$objLayer.hide();
				$objLayer.empty();
				if ($objLayer.hasClass("layer-storepickup")) $objLayer.removeClass("layer-storepickup");
				$("#mask").fadeOut("fast").remove();
				scrollLock('unlock');
				$("[data-popup-target=popupLayer]").focus();
				$("a[data-popup-target=popupLayer]").removeAttr("data-popup-target");

				$("[data-focus-target=true]").focus();
				$("[data-focus-target=true]").removeAttr("data-focus-target");
				
				$(this).off();
				
				
			});
			return $objLayer; 
		}
		, fnShareFacebook : function(){
			snsShare.facebook(this.vShareUrl);
		}
		,fnGetGatherView : function(addData){
			var data = {
				goodsId : $(goodsMain.vGoodsWrapId).data('goodsId')
				, stId : $("input[name=stId]").val()
				, goodsNm : $("input[name=goodsNm]").val()
				, sord : CommentListSearch.sord
				, sort : CommentListSearch.sort
				, viewType : 'img'
				, limit : 0
				, offset : 1
			}
			$.extend(data, addData);
			
			var options = {
				url : "/sec/xhr/goods/detailGatherView"
				, data: data
				, async: false
				, type: 'POST'
				, dataType : "html"
				, done : function(data) {
					$("#popBestReview").html(data);
					callBestReview();
					layerPopFunc('popBestReview');
				}
			};
			ajax.call(options);
		}
	};
	
	
	function layerMsgPop(btn){
		$(btn).attr("data-focus-target", "true");
		var $msgData = $(btn).data();
		goodsComment.fnMsgPop($msgData);
	}
	
	//PD페이지 상품평 리스트에서 신고
	function commentReport(goodsEstmNo){
		var goodsEstmNo = goodsEstmNo;
		goodsMain.fnLoginCheck(function(isLogin){
			if(!isLogin){
				var $msgData = {
					content :"로그인 이후 신고 가능합니다.<br/>로그인 화면으로 이동하시겠습니까?"
					, yes : "확인"
					, yescls : "report-login"
					, no : "취소"
					, close : "툴팁 닫기"
				}
				goodsComment.fnMsgPop($msgData);
				return false;
			}

			
			var options = {
				url : "/sec/xhr/goods/commentReport"
				, data : {
					goodsEstmNo : goodsEstmNo
				}
				, done: function (data) {
					$("#report-sucess").click();
				}
				
			} 
			ajax.call(options);
		});			
	}

 	// 슬라이드 호출 함수
	function SliderBestReview( slickFor, slickNav ){
		if(slickFor.hasClass('slick-initialized', 'slick-slider')){
			slickFor.slick("unslick");
		}
		if(slickNav.hasClass('slick-initialized', 'slick-slider')){
			slickNav.slick("unslick");
		}

		
		slickFor.slick({
			slidesToShow: 1,
			slidesToScroll: 1,
			arrows: false,
			fade: true,
			setPosition: 0,
			asNavFor:slickNav
		});
		slickNav.slick({
			variableWidth: true,
			slidesToShow: 4,
			slidesToScroll:1,
			focusOnSelect: true,
			dots: false,
			arrows: true,
			infinite: true,
			setPosition: 0,
			asNavFor: slickFor,
			nextArrow: $(".bestReview-navi-wrap .next-btn"),
    		prevArrow: $(".bestReview-navi-wrap .prev-btn"),
			responsive: [
				{
				breakpoint: 800,
				settings: {
					slidesToShow: 5,
					slidesToScroll: 1,
					infinite: true,
				}
			}],
		});
	};

	// 베스트 상품평 팝업시 슬라이드 slide, thumb 연동 함수
	var callBestReview = function (){
		$(".bestReview-images").each(function(idx, el){
			console.log(idx, el);
			idx += 1;	
			var slickfor = $(el).find('.bestReview-slide').addClass('for'+ idx) 
			var slicknav = $(el).find('.bestReview-thumb').addClass('nav'+ idx) 
			SliderBestReview(slickfor,slicknav);
		});
	}

	//팝업 상품평 신고
    function commentReportPop(self, type){
   		if(type == 'login'){
			var loginData = {
				content : "로그인 이후 신고 가능합니다.<br/>로그인 화면으로 이동하시겠습니까?"
				,okBtnText : "확인"
				,cancelBtnText : "취소"
				,callback : loginCommentReportPop
			};			
			commonConfirm2(loginData);
			openLayer('commonConfirm2');
   		}else if(type == 'dup'){
   			var alertData = {
			        content : "동일 상품평은 1회만 신고 가능합니다."
			        ,btnText : "확인"
			    };
			commonAlert(alertData);
			openLayer('commonAlert');
   		}else if(type == 'report'){
       		var confirmData = {
       			content : "상품평을 신고하시겠습니까?"
       			,okBtnText : "확인"
       			,cancelBtnText : "취소"
       			,callback : completeCommentReportPop
       		};       		
       		commonConfirm2(confirmData);
       		openLayer('commonConfirm2');
   		}
    }
	
	//팝업 상품평 로그인 콜백
	function loginCommentReportPop(){
		var returnUrl = $("input[name=returnUrl]").val();
		location.href='/sec/member/indexLogin/?returnUrl='+returnUrl;
	}
	
	//팝업 상품평 신고 콜백
	function completeCommentReportPop(){
		var goodsEstmNo = $('#popBestReview .btn-report input').val();
		var options = {
   			url : "/sec/xhr/goods/commentReport"
   	   		, async : false
			, data : {
				goodsEstmNo : goodsEstmNo
			}
			, done: function (data) {
				var params = $('.bestReview-slide').find('li');
				commentDetailPop(params);
				var alertData = {
				        content : "신고가 완료되었습니다."
				        ,btnText : "확인"
				    };
				commonAlert(alertData);
				openLayer('commonAlert');
				return false;
			}
   		}
   		ajax.call(options);

	}
  
	(function($){
		$(document).ready(function(){
			
			// 230106 상품평 고도화
			var bestReviewList = $('.best_review_list');
			var bestReviewItems = bestReviewList.find('.item');
			
			window.addEventListener('resize',function(){
				let w = window.innerWidth;
				let testarr;
				console.log(w);
				if(w > 1440){
					testarr = bestReviewItems.slice(0, 5);
					console.log(testarr); 
				}else if(1100 < w < 1440){
					console.log("notebook");
				}else if(800 < w < 1440){
					console.log("t");
				}else if(w < 800){
					console.log("m");
				}
			});
			
			/* 모바일, pc 구분 */
			var filter = "win16|win32|win64|mac|macintel";
			if(navigator.platform){
				//false 앱, 웹 구분 -> 앱 : true, 웹 false
				//!(filter.indexOf(navigator.platform.toLowerCase())<0)
				if(false){
					//mobile
					$(".appOnlyBtn").show();
					$(".mediaCount").show();
					$(".addMedia").hide();
				}else{
					//pc
					$(".appOnlyBtn").hide();
					$(".mediaCount").hide();
					$(".addMedia").show();
				}
			}

			/* 모바일 더보기 */
			$(document).on('click',".moreView", function(){
				CommentListSearch.page = parseInt(CommentListSearch.page)+1; 
				var options = {
					data : CommentListSearch
					, url : "/sec/xhr/goods/loadGoodsAdvancedCommentList"
					, type: 'POST'
					, dataType : "html"
					, done: function (data) {
						$(".moreView").css('display', 'none');
						$("#review-list").append(data);
					}
				}
				ajax.call(options);
				
				if(CommentListSearch.page >= CommentListSearch.totalCount){
					$(this).hide();
					return false;
				}
			});

			/* 상품평 리스트 페이징 */
			$(document).on("click","#CommentListPage a", function(){
				if($(this).attr("data-page") != null){
					location.hash = $(this).attr("data-page");
					CommentListSearch.page =$(this).attr("data-page");
					loadCommentList();
				}
			});

			/* 상품평 유형 검색 */
			$('.chk-form>.dropBox>ul>li>input', goodsComment.vWrapId).on('click', function(){
				CommentListSearch.goodsCmntTpCd = $(this).val();
				$("#commentForm #goodsCmntTpCd").val($(this).val());
				location.hash = 1;
				var commentSearchType = "";
				commentSearchType = $("label[for='goodsCmntTp_" + $(this).val() + "']").text();
				$(".chk-form>.drop-toggle>button>span").text(commentSearchType);
				loadCommentList();
			});

			/* 상품평 목록 선택한 주제 조회*/
			$('.review-tab', goodsComment.vWrapId).on('click','a', function(){
				//목록 정렬 시 페이지 1로 변경
				location.hash = 1;
				var estmSbj = new Array;
				var html = '';
				$("#commentForm input[name=estmSbjArr]").remove();
				var selectEstmSbj = $('.review-tab>a[aria-selected=true]>input[name=estmSbj]');
				if($(selectEstmSbj).length > 0){
					for(var i = 0; i < selectEstmSbj.length; i++){
						estmSbj.push($(selectEstmSbj[i]).val());
						html += '<input type="hidden" id="estmSbjArr'+i+'" name="estmSbjArr" value="'+$(selectEstmSbj[i]).val()+'"/>'
					}
					$("#commentForm").append(html);
				}
				CommentListSearch.estmSbjArr = estmSbj;
				loadCommentList();
			});
			
			

			/* 상품평 목록 정렬 엔터키용*/
			$('.account-types>li>input', goodsComment.vWrapId).keydown(
				function(event){					
					if(event.keyCode == 13){						
						var selectSort = $(this);				
						$("#review-sort-btn").html($(this).next().find("span").text()+"<span class='blind'>하위메뉴 있음</span>");
						//목록 정렬 시 페이지 1로 변경
						location.hash = 1;
						CommentListSearch.page = location.hash;
						
						if(selectSort.val() == 'bestCmnt'){
							CommentListSearch.sord = 'desc';
							CommentListSearch.sort = 'BEST_COMMENT';
							$("#commentForm #sord").val('desc');
							$("#bestCmnt").attr('aria-selected', true);
							$("#sysRegDtm").attr('aria-selected', false);
							$("#estmScoreHigh").attr('aria-selected', false);
							$("#estmScoreLow").attr('aria-selected', false);
						}else if(selectSort.val() == 'sysRegDtm'){
							CommentListSearch.sord = 'desc';
							CommentListSearch.sort = 'SYS_REG_DTM';
							$("#commentForm #sord").val('desc');
							$("#commentForm #sord").val('SYS_REG_DTM');
							$("#bestCmnt").attr('aria-selected', false);
							$("#sysRegDtm").attr('aria-selected', true);
							$("#estmScoreHigh").attr('aria-selected', false);
							$("#estmScoreLow").attr('aria-selected', false);
						}else if(selectSort.val() == 'estmScoreHigh'){
							CommentListSearch.sord = 'desc';
							CommentListSearch.sort = 'ESTM_SCORE';
							$("#commentForm #sord").val('desc');
							$("#commentForm #sord").val('ESTM_SCORE');
							$("#bestCmnt").attr('aria-selected', false);
							$("#sysRegDtm").attr('aria-selected', false);
							$("#estmScoreHigh").attr('aria-selected', true);					
							$("#estmScoreLow").attr('aria-selected', false);
						}else if(selectSort.val() == 'estmScoreLow'){
							CommentListSearch.sord = 'asc';
							CommentListSearch.sort = 'ESTM_SCORE';
							$("#commentForm #sord").val('asc');
							$("#commentForm #sord").val('ESTM_SCORE');
							$("#bestCmnt").attr('aria-selected', false);
							$("#sysRegDtm").attr('aria-selected', false);
							$("#estmScoreHigh").attr('aria-selected', false);					
							$("#estmScoreLow").attr('aria-selected', true);
						}
						if($('.dropdownMenu', goodsComment.vWrapId).hasClass('active')){
							$("#review-sort-btn").click();
						}						
						loadCommentList();	
					}
				}					
			);
			
			
			
			
			/* 상품평 목록 정렬 클릭이벤트용*/			
			$('.account-types>li>label .reviewSortDetail', goodsComment.vWrapId).on('click', function(){
				var selectSort = $(this).parent().prev();				
				$("#review-sort-btn").html($(this).text()+"<span class='blind'>하위메뉴 있음</span>");
				//목록 정렬 시 페이지 1로 변경
				location.hash = 1;
				CommentListSearch.page = location.hash;
				
				if(selectSort.val() == 'bestCmnt'){
					CommentListSearch.sord = 'desc';
					CommentListSearch.sort = 'BEST_COMMENT';
					$("#commentForm #sord").val('desc');
					$("#bestCmnt").attr('aria-selected', true);
					$("#sysRegDtm").attr('aria-selected', false);
					$("#estmScoreHigh").attr('aria-selected', false);
					$("#estmScoreLow").attr('aria-selected', false);
				}else if(selectSort.val() == 'sysRegDtm'){
					CommentListSearch.sord = 'desc';
					CommentListSearch.sort = 'SYS_REG_DTM';
					$("#commentForm #sord").val('desc');
					$("#commentForm #sord").val('SYS_REG_DTM');
					$("#bestCmnt").attr('aria-selected', false);
					$("#sysRegDtm").attr('aria-selected', true);
					$("#estmScoreHigh").attr('aria-selected', false);
					$("#estmScoreLow").attr('aria-selected', false);
				}else if(selectSort.val() == 'estmScoreHigh'){
					CommentListSearch.sord = 'desc';
					CommentListSearch.sort = 'ESTM_SCORE';
					$("#commentForm #sord").val('desc');
					$("#commentForm #sord").val('ESTM_SCORE');
					$("#bestCmnt").attr('aria-selected', false);
					$("#sysRegDtm").attr('aria-selected', false);
					$("#estmScoreHigh").attr('aria-selected', true);					
					$("#estmScoreLow").attr('aria-selected', false);
				}else if(selectSort.val() == 'estmScoreLow'){
					CommentListSearch.sord = 'asc';
					CommentListSearch.sort = 'ESTM_SCORE';
					$("#commentForm #sord").val('asc');
					$("#commentForm #sord").val('ESTM_SCORE');
					$("#bestCmnt").attr('aria-selected', false);
					$("#sysRegDtm").attr('aria-selected', false);
					$("#estmScoreHigh").attr('aria-selected', false);					
					$("#estmScoreLow").attr('aria-selected', true);
				}
				loadCommentList();
			});

			/* 작성하기 버튼 클릭 */
			$('#commentWrite', goodsComment.vWrapId).on('click', function(){
				goodsMain.fnLoginCheck(function(isLogin){
					if(!isLogin){
						$('#commentWrite').attr("data-focus-target", "true");
						var $msgData = {
							content :"로그인 이후 상품평 작성 가능합니다.<br/>로그인 화면으로 이동하시겠습니까?"
							, yes : "확인"
							, yescls : "login-view-write"
							, no : "취소"
							, close : "툴팁 닫기"
						}						
						goodsComment.fnMsgPop($msgData);						
						return false;
					}
					
					var goodsId = $(goodsMain.vGoodsWrapId).data('goodsId');
					var options = {
						url : "/sec/xhr/goods/commentCheck"
						, data : {goodsId : goodsId}
						, type: 'POST'
						, done: function (data) {
							var contVO = data.contVO;
							if(contVO.writeYn == 'Y'){
								var $msgData = {
										content :"상품 당 1개까지만 작성 가능합니다."
										, yes : "확인"
										, close : "툴팁 닫기"
									}
								goodsComment.fnMsgPop($msgData);
							}else{								
								var options = {
									url : "/sec/xhr/goods/loadGoodsAdvancedCommentWriteArea"
									, data : {
										orderYn : contVO.orderYn
										, insertCheck : 'Y'
										, onlineStoreOnlyYn: $('#onlineStoreOnlyYn').val()
										, goodsId : goodsId
										, viewType : "PD"
									}
									, type : 'POST'
									, dataType : 'html'
									, done : function(data){
										$("#writeArea").html(data);
										$("#writeArea").show();
										// $("#listArea").hide();  // review-list-form
										$("#listArea .review-content-body").hide();
										// 웹 접근성
										$('.review-starating button').focus();
										
										// 상품평 가이드 버튼 출력
										$("#commentGuideBtnArea").css('display', '');
										// 상품평 작성 버튼 숨김
										$("#commentWriteBtnArea").css('display', 'none');
										// PD페이지 상품정보 미노출
										$('.review-wt-product').css('display','none');
										// 별점 텍스트 숨김
										$('.review-wt-startext').css('display','none');
									}
								}
								ajax.call(options);
							}
							
						}
					}
					ajax.call(options);
					
					return false;
				});
			});

			/* 작성하기 취소 */
			$(goodsComment.vWrapId).on('click', 'button[name=cancelWrite]', function(){
				//$("#listArea").show();
				$("#listArea .review-content-body").show();
				$("#writeArea").children().remove();
				$("div[name=write-validate]").css('display', 'none');
				
				// 상품평 가이드 버튼 숨김
				$("#commentGuideBtnArea").css('display', 'none');
				// 상품평 작성 버튼 출력
				$("#commentWriteBtnArea").css('display', '');
				
				return false;
			});

			/* 작성하기 - 평점 선택 */
			$("#writeArea", goodsComment.vWrapId).on('click','.review-wt-ratings>.review-starating button', function(){				
				var idx = $(this).val();
				var scoreHtml = "";
				$(".review-wt-ratings>.review-starating").children().remove();			
				// <!-- s: 220616 수정 : jira 70) -->
                for(var i = 1; i <= 5; i++){
                    //스크린리더에서 읽을 수 있도록 aria-hidden 부분은 삭제			
                	if(idx > i){
                    	scoreHtml += '<button type="button" value="'+i+'"><span class="star-yellow">별점 '+i+'점</span></button> ';
                    }else if(idx == i){
                    	scoreHtml += '<button type="button" value="'+i+'"><span class="star-yellow">별점 '+i+'점 선택됨</span></button> ';
                    }else{
                        scoreHtml += '<button type="button" value="'+i+'"><span class="star-gray">별점 '+i+'점</span></button> ';
                    }									
                }
				scoreHtml += '<input type="hidden" id="estmScore" name="estmScore" value="'+idx+'"/>';
				$(".review-wt-ratings>.review-starating").append(scoreHtml);							
				$("button[value='"+idx+"']").focus();				
				starText();
			});

			/* 글자 수 */
			var content;
			/* 상품평 글자수 실시간 카운팅 */
			$("#writeArea", goodsComment.vWrapId).on('propertychange keyup paste input','textarea[name=commentArea]', function(e){
				$("div[name=write-validate]").hide();
				content = $(this).val();
				$(".txtCount").html("<span><strong>"+(content.length).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+"</strong>/5,000</span>");
				
				/* 상품평 글자 수 5000자 제한 */
				if(content.length > 5000){
					var data = {
							content : "내용은 최대 5,000자 이하로 입력해 주세요."
					}
					goodsComment.fnAlertPop(data);
					$(this).val(content.substr(0, 5000));
					content = $(this).val();
					$(".txtCount").attr("tabindex","0").html("<span><strong>"+(content.length).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+"</strong>/5,000</span>");
				}
			});
			
			/* 첨부파일 제거 */
			$("#writeArea", goodsComment.vWrapId).on('click', '.attach-file>ol>li button[name=commentDelFileBtn]', function(){
				
				result = $('.attach-file>ol>li').length;
				$(this).parent().remove();
				result--;
				$("#attach-file-btn>p").remove();
				$("#attach-file-btn").append("<p>(<em>"+result+"</em>/10)</p>");
				$(".mediaCount").html("<p>(<em>"+result+"</em>/10)</p>");
				
				if($(this).data('imgseq') !=null && $(this).data('imgseq') != 'undefined'){
					$("#fileOl").append('<input type="hidden" id="deleteImgSeq" name="deleteImgSeq" value="'+$(this).data('imgseq')+'"/>');				
				}
				
				if(result < 10 && !false){
					$("#attach-file-btn").show();
				}
				if(false){
					$("div[name=write-validate]").hide();
				}
				$('#attachFile').focus();
				
				if(result == 0 && $('.fileAttachOnOff').hasClass('on')){
					$('.fileAttachOnOff').removeClass('on');
					if(!!$('#entryEventNo').val()){
						eventAreaCtl();
					}
				}
			});

			/* 상품평 등록 */
			$("#writeArea", goodsComment.vWrapId).on('click', 'button[name=insertWrite], button[name=updateWrite]', function(){
				var commentLength = $("#commentArea").val().length;
				var estmSbjCd = '10';
				
				if(!$('.review-starating>button>span').hasClass('star-yellow')){
					var alertData = {
							content : "별점을 선택해 주세요."
						    ,btnText : "확인"
						};
					commonAlert(alertData);
					openLayer('commonAlert');
					
					$("#commonAlert a").on('click', function(){
						$('.review-wt-ratings .review-starating button').focus();
						return false;
					});

					return false;
				}
				
				if($('.keyword-wrap .btn-review-keyword.on').length == 0){
					var alertData = {
							content : "키워드를 선택해 주세요."
						    ,btnText : "확인"
						};
					commonAlert(alertData);
					openLayer('commonAlert');
					
					$("#commonAlert a").on('click', function(){
						$(".keyword-wrap .review-keywords .btn-review-keyword:eq(0)").focus();
						return false;
					});

					return false;
				}

				if(commentLength < 10){
					var alertData = {
							content : "내용은 최소 10자 이상으로 입력해 주세요."
						    ,btnText : "확인"
						};
					commonAlert(alertData);
					openLayer('commonAlert');
					
					$("#commonAlert a").on('click', function(){
						$('#commentArea').focus();
						return false;
					});

					return false;
				}
				document.reviewForm.submit();
				// 이벤트 상품평 유효성 검사
				if(!!$("#entryEventNo").val() && $("#chk-enter-all").is(':checked') && !eventValidation()) {
					return false;
				}
				
				var imgPath = new Array;
				var addImgPathArr = $('input[name=imgPath]');
				if($(addImgPathArr).length > 0){
					for(var i = 0; i < addImgPathArr.length; i++){
						imgPath.push($(addImgPathArr[i]).val());
					}
				}
				
				var deleteImgSeq = new Array;
				var deleteImgSeqArr = $('input[name=deleteImgSeq]');
				if($(deleteImgSeqArr).length > 0){
					for(var i = 0; i < deleteImgSeqArr.length; i++){
						deleteImgSeq.push($(deleteImgSeqArr[i]).val());
					}
				}
				
				// 상품평 키워드 처리
				var goodsCmntKwdArr = new Array;
			    $(".keyword-wrap .btn-review-keyword").each(function(){
				    if($(this).hasClass('on')){
				    	goodsCmntKwdArr.push($(this).val());
				    }
				});
				
				var content = $("#commentArea").val();

				// 베스트 상품평 여부
				var bestYn = "N";
				const contentCount = (content.length).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
				if(100 <= contentCount && 0 < $("button[name=commentDelFileBtn]").length) {
					bestYn = "Y";
				}
				
				var insertData = {
					goodsId : CommentListSearch.goodsId
					, estmScore : $("#estmScore").val()
					, estmSbjCd : estmSbjCd
					, buySiteCd : $("input[name=insertBuySiteCd]").val()
					, content : content
					, compNo : $("input[name=compNo]").val()
					, stId : $("input[name=stId]").val()
					, imgPath : imgPath
					, attachFileCnt : $("button[name=commentDelFileBtn]").length
					, goodsCmntTpCd : $("input[name=insertGoodsCmntTpCd]").val()
					, commentType : $("input[name=insertCommentType]").val()
					, deleteSeq : deleteImgSeq
					, goodsEstmNo : $("input[name=insertGoodsEstmNo]").val() 
					, ordNo : $("input[name=insertOrdNo]").val()
					, goodsCmntKwd : goodsCmntKwdArr
					, bestYn : bestYn
					, eventEnterInfo : (!!$("#entryEventNo").val() && $("#chk-enter-all").is(':checked')) ? parseEventParam() : []
				}
				var goodsId = $(goodsMain.vGoodsWrapId).data('goodsId');
				if($("input[name=insertCheck]").val()  == 'Y'){
					//인서트
					var options = {
						url : "/sec/xhr/goods/commentCheck"
						, data : {goodsId : goodsId, commentType : $("input[name=insertCommentType]").val()}
						, type: 'POST'
						, done: function (data) {
							var contVO = data.contVO;
							if(contVO.writeYn == 'Y'){
								$("button[name=commentWrite-nowriteMsg]").trigger('click');
							}else{
								var options = {
									url : "/sec/xhr/goods/insertGoodsAdvancedComment"
									, data : insertData
									, done: function (data) {
										
										//이벤트 참여한 경우 
										if($("#chk-enter-all").is(':checked') && this.data.bestYn == 'Y'){
											// 현재 시간 셋팅  [형식 : yyyy년 MM월 dd일 hh:mm:ss]
											eventPopupText(data.resultTime);
											$('#completeReviewEvent').click();
										}else{ //이벤트 참여 안한 경우
											var data = {
												content : "상품평이 등록되었습니다"
												, callback : goodsComment.fnReloadFocusReview
											}
											goodsComment.fnAlertPop(data)
										}
										
									}
								}
								ajax.call(options);
							}
						}
					}
					ajax.call(options);
				}else{
					//업데이트
					var options = {
							url : "/sec/xhr/goods/updateGoodsAdvancedComment"
							, data : insertData
							, done: function () {
								var data = {
									content : "상품평이 수정되었습니다"
										, callback : goodsComment.fnReloadFocusReview
								}
								goodsComment.fnAlertPop(data)
							}
						}
						ajax.call(options);
				}
				
			});

			/* 첨부파일 추가 */
			$(document).on("change", "#commentUploadFile", function () {
				waiting.start();
				$('#fileUploadForm').ajaxSubmit({
					url: '/sec/xhr/common/fileUploadResult',
					dataType: 'json',
					success: function (result) {
						$("#fileUploadForm").remove();
						waiting.stop();
						fileUpload.callBack(result);
					},
					error: function (xhr, status, error) {
						waiting.stop();
					}
				});
			});

			$($(".layer-normal")).on('click', '.slick-arrow', function(){
				var nowImgNo = $("span[name=pagingInfo] strong").html();
				var fnlImgNo = $("span[name=pagingInfo] em").html().replace("/","");
				
				var nowPage = $("span[name=showPageInfo] strong").html();
				var fnlPage = $("span[name=showPageInfo] em").html().replace("/","");

				if(nowPage != 1 && nowImgNo == 1 && $(this).hasClass('slick-prev') ){
					var page = $("#gather-layer").data("page")-1;
					var addData = {
						page : page
					}
					goodsComment.fnGetGatherView(addData);
				}
				if(fnlPage != nowPage && nowImgNo == fnlImgNo && $(this).hasClass('slick-next') ){
					var page = $("#gather-layer").data("page")+1;
					var addData = {
						page : page
					}
					goodsComment.fnGetGatherView(addData);
				}
			})
			
			if(location.hash != ""){
				var hashString = location.hash.substr(1);
				if(!isNaN(parseInt(hashString))){ //숫자타입일 경우
					CommentListSearch.page = location.hash;
				}
			}
			loadCommentList();
			
			/* 상품평 등록 체크된 주제 라디오버튼 클릭 시 선택 해제*/
			var reviveTopicCheck = $("input:radio[name=revive-topic]:checked").val();
			$(document).on('click', 'input:radio[name=revive-topic]', function(){
				$("div[name=write-validate]").css('display', 'none');
				var selectRadio = $(this).val();
				if(reviveTopicCheck === selectRadio){
					$("#revive-topic-none").trigger("click");
					reviveTopicCheck = "";
				}else{
					reviveTopicCheck = selectRadio; 
				}
			})
			

			// Dropdown Menu
			$(".dropdownMenu>.choose-account", goodsComment.vWrapId).off().on("click", function(e){				
				e.preventDefault();
				var $ul = $(this).siblings('ul');
				$(".dropdownMenu ul", goodsComment.vWrapId).not($ul).css("z-index", 2);
				$ul.css("z-index", 3);
				
				var docHeight = $(document).innerHeight();
				if ($(this).parent().hasClass("active")){
					$(this).parent().removeClass("active").removeClass("bottom");
					$(this).focus();
				} else {
					$(this).parent().addClass("active");
					if(docHeight < ($(this).next().outerHeight() + $(this).next().offset().top)){
						$(this).parent().addClass("bottom");
					}
					$(this).siblings().find("input[type='radio']").eq(0).focus();
				}
			});

			$(".dropdownMenu>.account-types>li>label", goodsComment.vWrapId).off().on("click", function(e){
				e.preventDefault();
				var $btn = $("#review-sort-btn");
				var $ul = $btn.siblings('ul');
				$(".dropdownMenu ul", goodsComment.vWrapId).not($ul).css("z-index", 2);
				$ul.css("z-index", 3);
				
				var docHeight = $(document).innerHeight();
				$btn.parent().removeClass("active").removeClass("bottom");
				$btn.focus();
			});
			
			// 팝업창에서 공유하기
			$(document).on("click", '.review-util .btn-sns-link', function(e) {
				var $tooltip = $(this).data();
				$tooltip.content = $(this).siblings(".tooltip-content").html();
				
				var $divTooltip = $(".pd-tooltip");
				$divTooltip.html($("#tooltipTempl").render($tooltip));
				if ($(this).hasClass("btn-sns-link")){
					// 외부공유링크
					$divTooltip.find('a').off().on('click', function (){
						if ($(this).hasClass('pd-sns-facebook')){ 
							// 페이스북 링크
							//goodsComment.fnShareFacebook();
							/* window.open("","fbSharePop", "resizable=no width=526 height=158");
							$("#facebookShareForm").attr({"action":"/sec/xhr/goods/facebookShareMeta", "method":"post"}).submit(); */
						}else if ($(this).hasClass('pd-sns-instagram')){
							//인스타그램
							window.open('https://www.instagram.com', 'instagramPopup', 'resizable=no width=480 height=720');
						}
					});
				}
				if(!$("body").children().is("#mask")){
					$("body").append("<div id='mask' style=''></div>");
				}
				tooltipCenterTop(this, 'pd-tooltip', 380);
				
			}); 
			
			//이벤트 상품평 작성 후 팝업 닫기
			$(document).on("click", '#reviewEventPopClose', function(){
				goodsComment.fnReloadFocusReview();
			});
		});
	})(jQuery);

	/* 뒤로가기 hashbang */
	window.onhashchange = function (){
		if(location.hash != ""){
			var hashString = location.hash.substr(1);
			if(!isNaN(parseInt(hashString))){ //숫자타입일 경우
				CommentListSearch.page = location.hash;
			}
		}else{
			CommentListSearch.page = 1;
		}
		loadCommentList();
	}
	
	/* 상품평 리스트 조회 param */
	var CommentListSearch = {
			goodsId : $(goodsMain.vGoodsWrapId).data('goodsId')
			, goodsTpCd : "10"
			, goodsCmntTpCd : ""
			, estmSbjArr : ""
			, sort : ""
			, sord : "asc"
			, page : "0"
			, goodsNm : $(goodsMain.vGoodsWrapId).data('goodsNm')
			, totalCount : "0"
	};

	/* 상품평 리스트 조회 */
	function loadCommentList(){		
		ajax.load("review-list", "/sec/xhr/goods/loadGoodsAdvancedCommentList", CommentListSearch);
	}
	
	/* 첨부파일 수 */ 
	var result = 0;
	//파일 업로드
	var fileUpload = {
		/* 첨부파일 callback지정 */
		file: function (callback, mob) {
			result = $('.attach-file>ol>li').length;
			fileUpload.callBack = callback;
			fileUpload.fileForm("goods_comment", mob);
		},
		/* 첨부파일 upload용 form 생성 */
		fileForm: function (type, mob) {
			if(result == 10){
				$("div[name=write-validate]").html("더 이상 첨부가 불가능합니다.");
				$("div[name=write-validate]").show();
				return false;
			}
			$("#fileUploadForm").remove();
			var html = [];
			html.push("<form name=\"fileUploadForm\" id=\"fileUploadForm\" method=\"post\" enctype=\"multipart/form-data\">");
			html.push("	<div style=\"display:none;\">");
			if(mob == undefined){
				html.push("		<input type=\"file\" name=\"uploadFile\" id=\"commentUploadFile\" accept=\".jpg, .jpeg, .png, .gif, .mp4\" />");
			} else if(mob == "camera"){
				html.push("		<input type=\"file\" name=\"uploadFile\" id=\"commentUploadFile\" accept=\"image/*\" />");
			} else if(mob == "camcorder"){
				html.push("		<input type=\"file\" name=\"uploadFile\" id=\"commentUploadFile\" accept=\"video/*\" />");
			}
			html.push("		<input type=\"hidden\" name=\"uploadType\" value=\"" + type + "\">");
			html.push("	</div>");
			html.push("</form>");

			$("body").append(html.join(''));
			$("#commentUploadFile").click();
		},
		/* (callback) 선택한 첨부파일 유효성 체크 -> 파일 목록 추가 */
		afterFileSelect: function (file, exCode) {
			if(file.exMsg != null){
				var data = {
						content : file.exMsg
				}
				goodsComment.fnAlertPop(data);
				return false;
			}
			var ext = file.file.fileName.split('.').pop().toLowerCase();
			
			var attachLength = $(".attach-file>ol>li>a").length;
			for(var i = 0; i < attachLength; i++){
				if(file.file.fileName === $(".attach-file>ol>li>a")[i].title){
					var data = {
							content : "동일한 파일이 등록되어 있습니다." 
					}
					
					goodsComment.fnAlertPop(data);
					return false;
				} 
			}
			var html = '';
			if(ext !== "mp4"){
				html += '<li id="'+result+'">';				
				html += '<a href="javascript:;" title="'+file.file.fileName+'">';
				html += '<input type="hidden" name="imgPath" value="'+file.file.filePath+'"/>';
				html += '<img src="/sec/xhr/common/imageView?filePath='+file.file.filePath+'" alt="'+file.file.fileName+'">';
				html += '</a>';
				html += '<button type="button" class="delete" name="commentDelFileBtn"><span class="blind">삭제</span></button>';
				html += '</li>';
			}else{
				html += '<li id="'+result+'">';
				html += '<a href="javascript:;" title="'+file.file.fileName+'">';
				html += '<input type="hidden" name="imgPath" value="'+file.file.filePath+'"/>';
				html += '<video preload="metadata" muted="muted" loop="loop">'
				html += '<source src="/sec/xhr/common/imageView?filePath='+file.file.filePath+'#t=0.5" type="video/mp4">'
				html += 'Your browser does not support the video tag.'
				html += '</video>'
				html += '</a>';
				html += '<button type="button" class="delete" name="commentDelFileBtn"><span class="blind">삭제</span></button>';
				html += '</li>';
			}
			$(".attach-file>ol").append(html);
			result++;
			$("#attach-file-btn>p").remove();
			$("#attach-file-btn").append("<p>(<em>"+result+"</em>/10)</p>");
			$(".mediaCount").html("<p>(<em>"+result+"</em>/10)</p>");
			if(result == 10){
				$("#attach-file-btn").hide();
			}
			if(result > 0 && !$('.fileAttachOnOff').hasClass('on')){
				$('.fileAttachOnOff').addClass('on');
				if(!!$('#entryEventNo').val()){
					eventAreaCtl();
				}
			}
		}
	}
	
	function starText(){
		var starTextHtml = "";
		var starTitleHtml = "";
		var starTitleHtml2 = "";
		var scoreIdx = $('#estmScore').val();
		$("#starEmpty").html('');
		
		if(scoreIdx == 1){
			starTextHtml += '아쉬워요';
			starTitleHtml += '만족도 1점을 주셨네요.';
			starTitleHtml2 += ' 어떤 점이 아쉬웠나요?';
		}else if(scoreIdx == 2){
			starTextHtml += '그저 그래요';
			starTitleHtml += '만족도 2점을 주셨네요.';
			starTitleHtml2 += ' 어떤 점이 아쉬웠나요?';
		}else if(scoreIdx == 3){
			starTextHtml += '괜찮아요';
			starTitleHtml += '만족도 3점을 주셨네요.';
			starTitleHtml2 += ' 어떤 점이 좋았나요?';
		}else if(scoreIdx == 4){
			starTextHtml += '좋아요';
			starTitleHtml += '만족도 4점을 주셨네요.';
			starTitleHtml2 += ' 어떤 점이 좋았나요?';
		}else if(scoreIdx == 5){
			starTextHtml += '최고예요!';
			starTitleHtml += '만족도 5점을 주셨네요.';
			starTitleHtml2 += ' 어떤 점이 좋았나요?';
		}

		$('.review-wt-startext').css('display','');
		$('#starEmpty').css('display','none');
		$("#starText").text(starTextHtml);
		$("#starTitle").css('display','');
		$("#starTitle").text(starTitleHtml);
		$("#starTitle2").text(starTitleHtml2);
	};
	
	/* 상품평 100자 이상 입력시 활성화 
	 * 상품평 100자 미만 입력시 비활성화 
	 * */
	$(document).on('keyup','#commentArea', function(){
		var commentLength = $('#commentArea').val().length;
		if(commentLength >= 100 && !$('.bestCommentOnOff').hasClass('on')){
			$('.bestCommentOnOff').addClass('on');
			if(!!$('#entryEventNo').val()){
				eventAreaCtl();
			}
		}else if(commentLength < 100 && $('.bestCommentOnOff').hasClass('on')){
			$('.bestCommentOnOff').removeClass('on');
			if(!!$('#entryEventNo').val()){
				eventAreaCtl();
			}
		}
		
	});
	
	//키워드 onoff
	$(document).on('click','.btn-review-keyword', function(){
		
		if($(this).hasClass('on')){
			$(this).removeClass('on');
		}else{
			//원하는 선택지가 없어요 키워드 클릭시, 나머지 선택 제거
			if($(this).attr('id') == 'removeKeyword'){
				$('.btn-review-keyword.on').removeClass('on');
			//나머지 키워드 클릭시, 원하는 선택지가 없어요 선택 제거 
			}else if($('#removeKeyword').hasClass('on')){
				$('#removeKeyword').removeClass('on');
			}
			
			//5개 초과한 키워드 클릭시
			if($('.keyword-wrap .btn-review-keyword.on').length >= 5){
				var alertData = {
						content : "최대 5개까지만 선택 가능해요."
					    ,btnText : "확인"
					};
				commonAlert(alertData);
				openLayer('commonAlert');
				return;
			}
			
			$(this).addClass('on');
		}
		
	});
	
	// 상품평 상세보기 팝업
	function commentDetailPop(self){
		var goodsEstmNo = $(self).data('goodsEstmNo');
		//베스트 상품평 팝업 여부
		var bestYnPop = $(self).data('bestYnPop');
		if(bestYnPop == undefined){
			bestYnPop = $('#commentDetailPop').data('bestYnPop') == 'Y' ? $('#commentDetailPop').data('bestYnPop') : '' ;
		}else{
			bestYnPop = bestYnPop == 'Y' ? bestYnPop : '' ;
		}
		var idx = $('.bestReview-thumb').find('.slick-current').data('slickIndex');
		if($('.bestReview-thumb').find('.slick-current').data('slickIndex') != undefined){
			idx += 1;	
		}
		
		var cmntRowNum = $(self).data('cmntRowNum');
		var addData = {
				goodsEstmNo : goodsEstmNo
				, imgSeq : idx
				, cmntRowNum : cmntRowNum
				, bestYn : bestYnPop
				, bestYnPop : bestYnPop
		}
		
		goodsComment.fnGetGatherView(addData);
	}
	
	// 포토/동영상 상품평 리스트 팝업
	function commentListPop(){
		$('.pop-close[data-focus-next="popBestReview"]').trigger('click'); // 230130 삭제
		
		var data = {
			goodsId : $(goodsMain.vGoodsWrapId).data('goodsId')
			, stId : $("input[name=stId]").val()
			, goodsNm : $("input[name=goodsNm]").val()
			, viewType : 'img'
			, goodsEstmNo : ''
			
		}

		var options = {
			url : "/sec/xhr/goods/listGatherView"
			, data: data
			, type: 'POST'
			, dataType : "html"
			, done : function(data) {						
				$("#popBestVideo").html(data);
				layerPopFunc('popBestVideo');
				callBestReview();
			}
		};
		ajax.call(options);
	}
	
	// 상품평 상세보기 다음&이전 버튼
	$(document).on('click','.btn-page-prev, .btn-page-next', function(){
		var bestYnPop = $('#commentDetailPop').data('bestYnPop') == 'Y' ? $('#commentDetailPop').data('bestYnPop') : '' ;
		var cmntRowNum;
		if($(this).hasClass('btn-page-next')){
			cmntRowNum = $('.bestReview-images').find('li').data('cmntRowNum')+1;
		}else{
			cmntRowNum = $('.bestReview-images').find('li').data('cmntRowNum')-1;
		}
		
		var addData = {
				cmntRowNum : cmntRowNum
				, bestYn : bestYnPop
				, bestYnPop : bestYnPop
		}
		
		goodsComment.fnGetGatherView(addData);
	});
	
	$(document).on('click','#btn-more-pop-close', function(){
        $('.btn-more-pop').focus();
	});
	
	/* 상품평 팝업 좋아요 버튼 클릭 */
	$(document).on('click', ".help-goods button[name=opnnCheckPop]", function(){
		var obj = $(this);
		goodsMain.fnLoginCheck(function(isLogin){
			if(!isLogin){
				var $msgData = {
					content :"로그인 이후 좋아요 가능합니다.<br/>로그인 화면으로 이동하시겠습니까?"
					, yes : "확인"
					, yescls : "login-view-like"
					, no : "취소"
					, close : "툴팁 닫기"
				}
				goodsComment.fnMsgPop($msgData);
				return false;
			}

			var gcOpnnGbCd10Cnt =  parseInt(obj.find('span').text());
			var goodsEstmNo = obj.prev().val();
			var opnnCheck = "";
			if(!obj.hasClass("act")){
				obj.addClass('act');
				gcOpnnGbCd10Cnt = gcOpnnGbCd10Cnt + 1;
				obj.find('span').text(gcOpnnGbCd10Cnt);
				opnnCheck = "Y";
			} else {
				obj.removeClass('act');
				gcOpnnGbCd10Cnt = gcOpnnGbCd10Cnt - 1;
				obj.find('span').text(gcOpnnGbCd10Cnt);
				opnnCheck = "N";
			}
			var data = {
				goodsEstmNo : goodsEstmNo
				, opnnCheck : opnnCheck
			}
			
			var options = {
				url : "/sec/xhr/goods/goodsCommentOpinionCheck"
				, data : data
				, done: function (data) {}
			}
			
			ajax.call(options);
		});
	});
	
	
	// 베스트 & 포토/동영상 상품평 목록
	function bestCommentList() {
		var selectParam = {
			goodsId : $(goodsMain.vGoodsWrapId).data('goodsId')
			, stId : '1'
			, viewType : "img"
		}
		
		var options = {
			url : "/sec/xhr/goods/selectBestGoodsAdvancedCommentList"
			, data : selectParam
			, async : false
			, done: function (data) {
				if(!!data) {
					const goodsAdvancedCommentList = data.goodsAdvancedCommentList;
					const bestGoodsAdvancedCommentCnt = data.bestGoodsAdvancedCommentCnt;
					const moreGoodsAdvancedCommentCnt = data.moreGoodsAdvancedCommentCnt;
					var mobileWidthYn = $(window).outerWidth() <= 800 ? true : false;
					// 베스트 상품평 개수 체크
					if(0 < bestGoodsAdvancedCommentCnt) {
						var bestComment = '';
						var loopLimit = bestGoodsAdvancedCommentCnt;
						var moreBestComment = false;
						var moreCommentCnt = bestGoodsAdvancedCommentCnt + '';
						if(3 < bestGoodsAdvancedCommentCnt) {
							loopLimit = 3;
							moreBestComment = true;
							if(999 <= bestGoodsAdvancedCommentCnt) {
								moreCommentCnt = '999+';
							}
						}
						
						bestComment += '<div class="best_review_list_wrap best_review_list_move detail">';
						bestComment += '	<ul class="best_review_list">';
						
						// 베스트 상품평 리스트
						for(var i = 0; i < loopLimit; i++) {
							var list = goodsAdvancedCommentList[i];
							if('Y' === list.bestYn && 0 < list.goodsCommentImageList.length) {
								var imgPath =  list.goodsCommentImageList[0].imgPath;
								bestComment += '<li class="item">';
								bestComment += '	<a href="javascript:void(0)" onclick="commentDetailPop(this);" data-goods-estm-no="' + list.goodsEstmNo + '" data-best-yn-pop="Y">';
								bestComment += '		<div class="img_box">';
								if('Y' === list.goodsCommentImageList[0].vdYn) {
									bestComment += '		<video preload="metadata" muted="muted" loop="loop" style="max-width: 130px;">';
									bestComment += '			<source src="//images.samsung.com/kdp' + imgPath + '?$80_N_PNG$#t=0.5" type="video/mp4">';
									bestComment += '		</video>';
								} else {
									bestComment += '		<img src="//images.samsung.com/kdp' + imgPath + '?$80_N_PNG$" alt="베스트리뷰 썸네일">';
								}
								bestComment += '			<div class="best_review_underui">';
								bestComment += '				<div class="lating_score_wrap">';
								bestComment += '					<span class="star-yellow">별점 아이콘</span>';
								bestComment += '					<span class="star-score">' + list.estmScore + '.0</span>';
								bestComment += '				</div>	';
								bestComment += '			</div>	';
								bestComment += '		</div>	';
								bestComment += '		<div class="info_box">';
								bestComment += '			<div class="flag">	';
								bestComment += '				<span class="type1">베스트</span>';
								bestComment += '				<span class="type2">' + list.commentTypeNm + '</span>';
								bestComment += '			</div>	';
								bestComment += '			<p>' + list.content + '</p>	';			
								bestComment += '		</div>	';		
								bestComment += '	</a>';
								bestComment += '</li>	';	
							}
						}
						
						bestComment += '	</ul>';
						
						// 베스트 상품평 더보기
						if(moreBestComment) {
							bestComment += '	<div class="btn_box" style="display: block;">';
							bestComment += '		<a href="javascript:void(0)" class="btn-more-bestreview">';
							bestComment += '			<span>전체 상품평<br>보러가기</span>';
							bestComment += '		</a>';
							bestComment += '	</div>';
							
							$(document).on('click','.btn-more-bestreview', function(){
								$('html, body').stop().animate({ scrollTop: $("#compGoodsComment .review-total-count").offset().top - 80 },1000);
								// 웹 접근성 수정
								$('#compGoodsComment a').first().focus();
							});
						}
						
						bestComment += '</div>	';
						// 베스트 상품평 목록
						if(mobileWidthYn){
							$(bestComment).insertAfter(".itm-info-head");
						}else{
							$(bestComment).insertAfter(".prod-image");
						} 
					}
					
					// 포토/동영상 리스트
					if(0 < goodsAdvancedCommentList.length && 0 == $(".photo_video_collect_list").length) {
						var attachList = '';							
						attachList += '<div class="best_review_list_wrap list2 photo_video_collect_list">';
						attachList += '	<h3><span>포토/동영상 상품평</span> 보고 가세요</h3>';
						attachList += '	<ul class="best_review_list attach_cmnt_list">'
						
						for(var i = 0; i < goodsAdvancedCommentList.length; i++) {
							var list = goodsAdvancedCommentList[i];
							var imgPath =  list.goodsCommentImageList[0].imgPath;
							attachList += '		<li class="item"><a href="javascript:void(0)" onclick="commentDetailPop(this);" data-goods-estm-no="' + list.goodsEstmNo + '" data-best-yn-pop="">';
							if('Y' === list.goodsCommentImageList[0].vdYn) {
								attachList += '		<video preload="metadata" muted="muted" loop="loop">';
								attachList += '			<source src="//images.samsung.com/kdp' + imgPath + '?$100_N_PNG$#t=0.5" type="video/mp4">';
								attachList += '		</video>';
							} else {
								attachList += '		<img src="//images.samsung.com/kdp' + imgPath + '?$100_N_PNG$" alt="포토/동영상 리스트 썸네일">';
							}
							attachList += '			<div class="best_review_underui">';
							attachList += '				<div class="lating_score_wrap">';
							attachList += '					<span class="star-yellow">별점 아이콘</span>';
							attachList += '					<span class="star-score">' + list.estmScore + '.0</span>';
							attachList += '				</div>';
							attachList += '			</div>';
							attachList += '		</a></li>';
						}
						
						// 포토/동영상 더보기 버튼
						attachList += '		<li class="btn-cmnt-more" style="display:none;">';
						attachList += '			<a href="javascript:void(0)" class="btn-more-video btn-more-pop" onclick="commentListPop();">';
						attachList += '				<p><strong>' + moreGoodsAdvancedCommentCnt + '개</strong><br>더보기</p>';
						attachList += '			</a>';
						attachList += '		</li>';
						
						attachList += '	</ul>';
						attachList += '</div>';	
						
						$(attachList).insertAfter(".review-lt-condition");
						
						// 포토/동영상 더보기 버튼 처리
						if(mobileWidthYn){
							if(7 < goodsAdvancedCommentList.length) {
								$('.btn-cmnt-more').show();
							}
						}else{
							if(12 <= goodsAdvancedCommentList.length) {
								$('.btn-cmnt-more').show();
							}
						} 
					}						
				}
			}
		}
		ajax.call(options);
	}

	// 이벤트 상품평 영역 컨트롤
	function eventAreaCtl(){
		if($('.bestCommentOnOff').hasClass('on') && $('.fileAttachOnOff').hasClass('on')) {
			$('#chk-enter-all').prop('disabled', false);
		} else {
			$('#chk-enter-all').prop('disabled', true);
			eventBtnCtl();
		}
	}
	// 이벤트 상품평 버튼 컨트롤
	function eventBtnCtl() {	
		if($('.bestCommentOnOff').hasClass('on') && $('.fileAttachOnOff').hasClass('on')) {
			if($("#chk-enter-all").is(":checked")) {
				$('.event-apply-infoBox').addClass('on');
			} else {
				$('.event-apply-infoBox').removeClass('on');
			}
			$('.event-apply-infoBox').slideToggle();
		} else {
			if($('.event-apply-infoBox').hasClass('on')) {
				$('.event-apply-infoBox').removeClass('on');
				$('.event-apply-infoBox').slideToggle();
			}
			$('#chk-enter-all').prop('disabled', true);
			$('#chk-enter-all, .inp-terms').prop('checked', false);
		}
	}

	// 이벤트 상품평 유효성 검사
	function eventValidation() {
		// 필수항목 : 이름 / 전화번호 / 개인정보 수집.이용 동의
		var msg = "이벤트 응모를 위한 필수 항목을 확인해 주세요.";
		// 이름
		if(!$("#inpEnterName").val()){
			var alertData = {
					content : msg
				    ,btnText : "확인"
				};
			commonAlert(alertData);
			openLayer('commonAlert');
			
			$("#commonAlert a").on('click', function(){
				$("#inpEnterName").focus();
				return false;
			});

			return false;
		};
		// 전화번호
		if(!$("#inpEnterCall").val()) {
			var alertData = {
					content : msg
				    ,btnText : "확인"
				};
			commonAlert(alertData);
			openLayer('commonAlert');
			
			$("#commonAlert a").on('click', function(){
				$("#inpEnterCall").focus();
				return false;
			});

			return false;
		};
		
		// 개인정보 수집.이용 동의
		if(!$("#chk-policy-0").is(':checked')) {
			var alertData = {
					content : msg
				    ,btnText : "확인"
				};
			commonAlert(alertData);
			openLayer('commonAlert');
			
			$("#commonAlert a").on('click', function(){
				$("#chk-policy-0").focus();
				return false;
			});

			return false;
		};
		
		// 선택 항목
		var target = $("#chk-policy-1");
		if(!$("#chk-policy-1").is(':checked') && !$("#chk-policy-2").is(':checked')) {
			// 마케팅/광고 활용 목적의 개인정보 수집.이용 동의 & 광고성 정보 수신 동의
			msg = "마케팅/광고 활용 목적의 개인정보 수집∙이용, 광고성 정보 수신에 동의하지 않으실 경우, 이벤트 관련 제품 정보 알림, 혜택 안내 및 혜택 제공을 받으실 수 없으십니다.";
			msg += "\n\n[마케팅/광고 활용 목적의 개인정보 수집∙이용 동의] [광고성 정보 수신 동의]"; 
			msg += "\n\n동의 항목을 한 번 더 확인해 주세요.";
		} else if(!$("#chk-policy-1").is(':checked')) {
			// 마케팅/광고 활용 목적의 개인정보 수집.이용 동의
			msg = "마케팅/광고 활용 목적의 개인정보 수집∙이용 동의하지 않으실 경우, 이벤트 관련 제품 정보 알림, 혜택 안내 및 혜택 제공을 받으실 수 없으십니다.";
			msg += "\n\n[마케팅/광고 활용 목적의 개인정보 수집∙이용 동의]";
			msg += "\n동의 항목을 한 번 더 확인해 주세요.";
		} else if(!$("#chk-policy-2").is(':checked')) {
			// 광고성 정보 수신 동의
			msg = "광고성 정보 수신 동의를 거부하실 경우 이벤트 관련 제품 정보 알림, 혜택 안내 및 혜택 제공을 받으실 수 없습니다.";
			msg += "\n\n[광고성 정보 수신 동의]";
			msg += "\n동의 항목을 한 번 더 확인해 주세요.";
			target = $("#chk-policy-2");
		} else {
			msg = "";
			target = "";
		}
		
		if(!!msg && !!target && 0 == eventAlertIndex) {
			eventAlertIndex++;
			var alertData = {
					content : msg
				    ,btnText : "확인"
				};
			commonAlert(alertData);
			openLayer('commonAlert');
			
			$("#commonAlert a").on('click', function(){
				target.focus();
				return false;
			});

			return false;
		}

		return true;
	}

	// 이벤트 상품평 작성완료 후 팝업 문구
	function eventPopupText(currentTime) {
		// 필수항목 : 개인정보 수집.이용 동의
		var msg = currentTime;

		// 선택 항목
		if(!$("#chk-policy-1").is(':checked') && !$("#chk-policy-2").is(':checked')) {
			// 마케팅/광고 활용 목적의 개인정보 수집.이용 동의 & 광고성 정보 수신 미동의
			msg += "에 이벤트를 위한 마케팅/광고 활용 목적의 개인정보 수집∙이용 동의, 광고성 정보 수신 동의 ‘미동의’하셨습니다. \n동의 하지 않은 경우 이벤트 관련 제품 정보 알림, 혜택 안내 및 혜택 제공을 받으실 수 없습니다. ";
		} else if(!$("#chk-policy-1").is(':checked')) {
			// 마케팅/광고 활용 목적의 개인정보 수집.이용 미동의
			msg += "에 이벤트를 위한 마케팅/광고 활용 목적의 개인정보 수집∙이용 동의에 ‘미동의’하셨습니다. \n동의 하지 않은 경우 이벤트 관련 제품 정보 알림, 혜택 안내 및 혜택 제공을 받으실 수 없습니다."
		} else if(!$("#chk-policy-2").is(':checked')) {
			// 광고성 정보 수신 미동의
			msg += "에 이벤트를 위한 광고성 정보 수신에 ‘미동의’하셨습니다. \n이벤트 관련 제품 정보 알림, 혜택 안내 및 혜택 제공을 받으실 수 없습니다. ";			
		} else if($("#chk-policy-1").is(':checked') && $("#chk-policy-2").is(':checked')) {
			// 개인정보 수집.이용 동의 & 마케팅/광고 활용 목적의 개인정보 수집.이용 동의 & 광고성 정보 수신 동의 (전체동의)
			msg += "에 마케팅/광고 활용 목적의 개인정보 수집∙이용 동의와 이벤트를 위한 광고성 정보 수신에 ‘동의’하셨습니다. \n앞으로 문자(SMS/MMS 등)/카카오 알림톡 또는 이메일을 통해 광고성 정보가 안내됩니다. ";
		}
		
		$("#noticeText").html('');
		$("#noticeText").append(msg);
		
		//이름 셋팅
		$("#reviewEventName").text('');
		$("#reviewEventName").text($("#reviewFormName").text());
		
	}
	
	// 이벤트 상품평 파라메터 셋팅
	function parseEventParam() {
		var eventAgreeList = new Array;
		var eventAgree = {};
		
		// 이벤트 상품평 응모 파라메터
		eventAgree = {'eventNo' : $('input[name=eventNo]').val(), 'inpEnterName' : $('input[name=inpEnterName]').val(), 'inpEnterCall' : $('input[name=inpEnterCall]').val()};
		// 이벤트 상품평 약관 파라메터
		eventAgreeList.push(eventAgree);
		$('.terms-area > .chk-form > .inp-terms').each(function(){
			var agreeYn = 'N';
			if($(this).is(':checked')) {
				agreeYn = 'Y';
			}
			
			eventAgree = {'eventNo' : $('input[name=eventNo]').val(), 'policyNo' : $(this).data('policyno'), 'agreeYn' : agreeYn};
			
			eventAgreeList.push(eventAgree);
		});
		
		return JSON.stringify(eventAgreeList);
	}
	
	// 이벤트 페이지 이동
	function resultLinkUrl(){
		var url = "/sec/" + $('#entryEventLinkUrl').val();
		goodsComment.fnReloadFocusReview();
		return window.open(url);
		
	}
$(document).ready(function() {
	$('.btn-review-keyword').click(function() {
		var value = $(this).val();
		var checkbox = $('.chk[value="'+value+'"]');
		checkbox.prop('checked', !checkbox.prop('checked'));

		if(value == "G99") {
      		$('input[type="checkbox"]').prop('checked', false);
      		selectedValues = [];
      		return;
    		}
	});
});
function buy() {
	document.form.submit();
}
</script>



<%
	try {
		int total = 0;
		int cnt = 0;
		double rating = 0;

		String db_url = "jdbc:mysql://localhost:3306/gpqd";
		String db_id = "root";
		String db_password = "1234";

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(db_url, db_id, db_password);

		// 리뷰 조회
		String sql = "SELECT * FROM review WHERE Mno=?"; 
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, "28MQ780");

		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			total += rs.getInt("review_rating");
			cnt++;
		}
		if (cnt == 0)
			rating = 0;
		else
			rating = (double)total / cnt;
		DecimalFormat df = new DecimalFormat("#.#");
		String format_rating = df.format(rating);
%>
					<div class="fixWidth" id="comment-information">
						<input type="hidden" id="onlineStoreOnlyYn" value="N" name="N">

						<h3 class="component-title">상품평</h3>
						<div class="review-box">
							<div class="review-content" id="goods_comment_wrap" data-focus="">
								<!-- s : 상품평 리스트 -->
								<div class="review-list-form" id="listArea">
									<div name="hiddenCommentArea" style="display:none;">
										<form id="commentForm">
											<input type="hidden" id="commentSearchPage" name="page" value="0" />
											<input type="hidden" id="goodsCmntTpCd" name="goodsCmntTpCd" value="" />
											<input type="hidden" id="sort" name="sort" value="" />
											<input type="hidden" id="sord" name="sord" value="asc" />
										</form>
									</div>
									<div class="review-content-head">

										<!-- 상품평 평균 현황 -->
										<div class="review-lt-condition">
											<!-- 상품평 별점 평균 -->
											<div class="review-lt-ratings">
												<div class="inner">
													<span class="rating-score"><%=format_rating%></span>
													<!-- 별점 점수별 이미지 -->
													<div class="review-lt-starating">
														<!-- 클릭한 별점은 star-yellow 로 변경 -->
														<%
														if (rating < 0.5) {
														%>
														<button type="button" value="1">
															<span class="star-gray">별점 0점</span>
														</button>
														<button type="button" value="2">
															<span class="star-gray">별점 0점</span>
														</button>
														<button type="button" value="3">
															<span class="star-gray">별점 0점</span>
														</button>
														<button type="button" value="4">
															<span class="star-gray">별점 0점</span>
														</button>
														<button type="button" value="5">
															<span class="star-gray">별점 0점</span>
														</button>
														<%
														} else if (rating >= 0.5 && rating < 1) {
														%>
														<button type="button" value="1">
															<span class="star-half-yellow">별점 0.5점</span>
														</button>
														<button type="button" value="2">
															<span class="star-gray">별점 0점</span>
														</button>
														<button type="button" value="3">
															<span class="star-gray">별점 0점</span>
														</button>
														<button type="button" value="4">
															<span class="star-gray">별점 0점</span>
														</button>
														<button type="button" value="5">
															<span class="star-gray">별점 0점</span>
														</button>
														<%
														} else if (rating >= 1 && rating < 1.5) {
														%>
														<button type="button" value="1">
															<span class="star-yellow">별점 1점</span>
														</button>
														<button type="button" value="2">
															<span class="star-gray">별점 0점</span>
														</button>
														<button type="button" value="3">
															<span class="star-gray">별점 0점</span>
														</button>
														<button type="button" value="4">
															<span class="star-gray">별점 0점</span>
														</button>
														<button type="button" value="5">
															<span class="star-gray">별점 0점</span>
														</button>
														<%
														} else if (rating >= 1.5& rating < 2) {
														%>
														<button type="button" value="1">
															<span class="star-yellow">별점 1점</span>
														</button>
														<button type="button" value="2">
															<span class="star-half-yellow">별점 0.5점</span>
														</button>
														<button type="button" value="3">
															<span class="star-gray">별점 0점</span>
														</button>
														<button type="button" value="4">
															<span class="star-gray">별점 0점</span>
														</button>
														<button type="button" value="5">
															<span class="star-gray">별점 0점</span>
														</button>
														<%
														} else if (rating >= 2 && rating < 2.5) {
														%>
														<button type="button" value="1">
															<span class="star-yellow">별점 1점</span>
														</button>
														<button type="button" value="2">
															<span class="star-yellow">별점 1점</span>
														</button>
														<button type="button" value="3">
															<span class="star-gray">별점 0점</span>
														</button>
														<button type="button" value="4">
															<span class="star-gray">별점 0점</span>
														</button>
														<button type="button" value="5">
															<span class="star-gray">별점 0점</span>
														</button>
														<%
														} else if (rating >= 2.5 && rating < 3) {
														%>
														<button type="button" value="1">
															<span class="star-yellow">별점 1점</span>
														</button>
														<button type="button" value="2">
															<span class="star-yellow">별점 1점</span>
														</button>
														<button type="button" value="3">
															<span class="star-half-yellow">별점 0.5점</span>
														</button>
														<button type="button" value="4">
															<span class="star-gray">별점 0점</span>
														</button>
														<button type="button" value="5">
															<span class="star-gray">별점 0점</span>
														</button>
														<%
														} else if (rating >= 3 && rating < 3.5) {
														%>
														<button type="button" value="1">
															<span class="star-yellow">별점 1점</span>
														</button>
														<button type="button" value="2">
															<span class="star-yellow">별점 1점</span>
														</button>
														<button type="button" value="3">
															<span class="star-yellow">별점 1점</span>
														</button>
														<button type="button" value="4">
															<span class="star-gray">별점 0점</span>
														</button>
														<button type="button" value="5">
															<span class="star-gray">별점 0점</span>
														</button>
														<%
														} else if (rating >= 3.5 && rating < 4) {
														%>
														<button type="button" value="1">
															<span class="star-yellow">별점 1점</span>
														</button>
														<button type="button" value="2">
															<span class="star-yellow">별점 1점</span>
														</button>
														<button type="button" value="3">
															<span class="star-yellow">별점 1점</span>
														</button>
														<button type="button" value="4">
															<span class="star-half-yellow">별점 0.5점</span>
														</button>
														<button type="button" value="5">
															<span class="star-gray">별점 0점</span>
														</button>
														<%
														} else if (rating >= 4 && rating < 4.5) {
														%>
														<button type="button" value="1">
															<span class="star-yellow">별점 1점</span>
														</button>
														<button type="button" value="2">
															<span class="star-yellow">별점 1점</span>
														</button>
														<button type="button" value="3">
															<span class="star-yellow">별점 1점</span>
														</button>
														<button type="button" value="4">
															<span class="star-yellow">별점 1점</span>
														</button>
														<button type="button" value="5">
															<span class="star-gray">별점 0점</span>
														</button>
														<%
														} else if (rating >= 4.5 && rating < 5) {
														%>
														<button type="button" value="1">
															<span class="star-yellow">별점 1점</span>
														</button>
														<button type="button" value="2">
															<span class="star-yellow">별점 1점</span>
														</button>
														<button type="button" value="3">
															<span class="star-yellow">별점 1점</span>
														</button>
														<button type="button" value="4">
															<span class="star-yellow">별점 1점</span>
														</button>
														<button type="button" value="5">
															<span class="star-half-yellow">별점 0.5점</span>
														</button>
														<%
														} else if (rating >= 5) {
														%>
														<button type="button" value="1">
															<span class="star-yellow">별점 1점</span>
														</button>
														<button type="button" value="2">
															<span class="star-yellow">별점 1점</span>
														</button>
														<button type="button" value="3">
															<span class="star-yellow">별점 1점</span>
														</button>
														<button type="button" value="4">
															<span class="star-yellow">별점 1점</span>
														</button>
														<button type="button" value="5">
															<span class="star-yellow">별점 1점</span>
														</button>
														<%
														}
														%>
													</div>
													<!-- 별점 점수별 이미지 -->
												</div>
											</div>
											<!-- 상품평 별점 평균 -->

											<!-- 상품평 만족도 분포 -->
											<div class="review-lt-status">
												<%
												int five = 0;
												int four = 0;
												int three = 0;
												int two = 0;
												int one = 0;
												try {
													int cnt_rating = 0;
													
													// 리뷰 평점 조회
													String sql2 = "SELECT * FROM review WHERE Mno=? AND review_rating=?";
													PreparedStatement pstmt2 = con.prepareStatement(sql2);
													pstmt2.setString(1, "28MQ780");
													pstmt2.setInt(2, 5);
													ResultSet rs2 = pstmt2.executeQuery();
													while(rs2.next()) {
														++cnt_rating;
													}
													if (cnt_rating == 0)
														five = 0;
													else
														five = (100 / cnt) * cnt_rating;

													cnt_rating = 0;

													String sql3 = "SELECT * FROM review WHERE Mno=? AND review_rating=?";
													PreparedStatement pstmt3 = con.prepareStatement(sql3);
													pstmt3.setString(1, "28MQ780");
													pstmt3.setInt(2, 4);
													ResultSet rs3 = pstmt3.executeQuery();
													while(rs3.next()) {
														++cnt_rating;
													}
													if (cnt_rating == 0)
														four = 0;
													else
														four = (100 / cnt) * cnt_rating;

													cnt_rating = 0;

													String sql4 = "SELECT * FROM review WHERE Mno=? AND review_rating=?";
													PreparedStatement pstmt4 = con.prepareStatement(sql4);
													pstmt4.setString(1, "28MQ780");
													pstmt4.setInt(2, 3);
													ResultSet rs4 = pstmt4.executeQuery();
													while(rs4.next()) {
														++cnt_rating;
													}
													if (cnt_rating == 0)
														three = 0;
													else
														three = (100 / cnt) * cnt_rating;

													cnt_rating = 0;

													String sql5 = "SELECT * FROM review WHERE Mno=? AND review_rating=?";
													PreparedStatement pstmt5 = con.prepareStatement(sql5);
													pstmt5.setString(1, "28MQ780");
													pstmt5.setInt(2, 2);
													ResultSet rs5 = pstmt5.executeQuery();
													while(rs5.next()) {
														++cnt_rating;
													}
													if (cnt_rating == 0)
														two = 0;
													else
														two = (100 / cnt) * cnt_rating;

													cnt_rating = 0;

													String sql6 = "SELECT * FROM review WHERE Mno=? AND review_rating=?";
													PreparedStatement pstmt6 = con.prepareStatement(sql6);
													pstmt6.setString(1, "28MQ780");
													pstmt6.setInt(2, 1);
													ResultSet rs6 = pstmt6.executeQuery();
													while(rs6.next()) {
														++cnt_rating;
													}
													if (cnt_rating == 0)
														one = 0;
													else
														one = (100 / cnt) * cnt_rating;
												%>
												<ul>
													<li>
														<span>최고</span>
														<div class="status-bar">
															<div class="gauge" style="width: <%=five%>%"></div>
														</div>
														<span><%=five%>%</span>
													</li>
													<li>
														<span>만족</span>
														<div class="status-bar">
															<div class="gauge" style="width: <%=four%>%"></div>
														</div>
														<span><%=four%>%</span>
													</li>
													<li>
														<span>보통</span>
														<div class="status-bar">
															<div class="gauge" style="width: <%=three%>%"></div>
														</div>
														<span><%=three%>%</span>
													</li>
													<li>
														<span>별로</span>
														<div class="status-bar">
															<div class="gauge" style="width: <%=two%>%"></div>
														</div>
														<span><%=two%>%</span>
													</li>
													<li>
														<span>나쁨</span>
														<div class="status-bar">
															<div class="gauge" style="width: <%=one%>%"></div>
														</div>
														<span><%=one%>%</span>
													</li>
												</ul>
												<%
												} catch(Exception e) {
													out.print(e);
												}
												%>
											</div>
											<!-- 상품평 만족도 분포 -->

											<!--
							* 웹에서는 키워드 선택한대로 보여지고 (최대 5개), 
							* 모바일에서는 1개는 default, 나머지는 숨겨지며 + 버튼으로 펼칠수 있습니다.
						-->
											<!-- 상품평 키워드 분포 -->
											<div class="review-lt-keywordsbar">
												<h5>이 상품은 이렇게 표현할 수 있어요</h5>
												<ul>
												<%
												int G01_cnt = 0;
												int G02_cnt = 0;
												int G03_cnt = 0;
												int G04_cnt = 0;
												int G05_cnt = 0;
												int G06_cnt = 0;
												int G07_cnt = 0;
												int G08_cnt = 0;
												int G09_cnt = 0;
												int G10_cnt = 0;
												int G99_cnt = 0;
												
												// 리뷰 키워드 개수 조회
												try {
													String sql_keyword = "SELECT 'G01' AS category, COUNT(*) AS count FROM review ";
													sql_keyword += "WHERE Mno='28MQ780' AND review_keyword LIKE '%G01%' UNION ALL ";
													sql_keyword += "SELECT 'G02' AS category, COUNT(*) AS count FROM review ";
													sql_keyword += "WHERE Mno='28MQ780' AND review_keyword LIKE '%G02%' UNION ALL ";
													sql_keyword += "SELECT 'G03' AS category, COUNT(*) AS count FROM review ";
													sql_keyword += "WHERE Mno='28MQ780' AND review_keyword LIKE '%G03%' UNION ALL ";
													sql_keyword += "SELECT 'G04' AS category, COUNT(*) AS count FROM review ";
													sql_keyword += "WHERE Mno='28MQ780' AND review_keyword LIKE '%G04%' UNION ALL ";
													sql_keyword += "SELECT 'G05' AS category, COUNT(*) AS count FROM review ";
													sql_keyword += "WHERE Mno='28MQ780' AND review_keyword LIKE '%G05%' UNION ALL ";
													sql_keyword += "SELECT 'G06' AS category, COUNT(*) AS count FROM review ";
													sql_keyword += "WHERE Mno='28MQ780' AND review_keyword LIKE '%G06%' UNION ALL ";
													sql_keyword += "SELECT 'G07' AS category, COUNT(*) AS count FROM review ";
													sql_keyword += "WHERE Mno='28MQ780' AND review_keyword LIKE '%G07%' UNION ALL ";
													sql_keyword += "SELECT 'G08' AS category, COUNT(*) AS count FROM review ";
													sql_keyword += "WHERE Mno='28MQ780' AND review_keyword LIKE '%G08%' UNION ALL ";
													sql_keyword += "SELECT 'G09' AS category, COUNT(*) AS count FROM review ";
													sql_keyword += "WHERE Mno='28MQ780' AND review_keyword LIKE '%G09%' UNION ALL ";
													sql_keyword += "SELECT 'G10' AS category, COUNT(*) AS count FROM review ";
													sql_keyword += "WHERE Mno='28MQ780' AND review_keyword LIKE '%G10%' UNION ALL ";
													sql_keyword += "SELECT 'G99' AS category, COUNT(*) AS count FROM review ";
													sql_keyword += "WHERE Mno='28MQ780' AND review_keyword LIKE '%G99%'";

													PreparedStatement pstmt_keyword = con.prepareStatement(sql_keyword);
													ResultSet rsKeyword = pstmt_keyword.executeQuery();
													boolean a = false;
													while(rsKeyword.next()) {
														if(rsKeyword.getString("category").equals("G01"))
															G01_cnt = rsKeyword.getInt("count");
														else if(rsKeyword.getString("category").equals("G02"))
															G02_cnt = rsKeyword.getInt("count");
														else if(rsKeyword.getString("category").equals("G03"))
															G03_cnt = rsKeyword.getInt("count");
														else if(rsKeyword.getString("category").equals("G04"))
															G04_cnt = rsKeyword.getInt("count");
														else if(rsKeyword.getString("category").equals("G05"))
															G05_cnt = rsKeyword.getInt("count");
														else if(rsKeyword.getString("category").equals("G06"))
															G06_cnt = rsKeyword.getInt("count");
														else if(rsKeyword.getString("category").equals("G07"))
															G07_cnt = rsKeyword.getInt("count");
														else if(rsKeyword.getString("category").equals("G08"))
															G08_cnt = rsKeyword.getInt("count");
														else if(rsKeyword.getString("category").equals("G09"))
															G09_cnt = rsKeyword.getInt("count");
														else if(rsKeyword.getString("category").equals("G10"))
															G10_cnt = rsKeyword.getInt("count");
														else if(rsKeyword.getString("category").equals("G99"))
															G99_cnt = rsKeyword.getInt("count");
													}
												%>
													<li>
														<!-- <div class="gauge" style="width:92%"></div> -->
														<div class="gauge pct25" style="width:<%=G01_cnt * 4%>%"></div>
														<div class="keyword-info">
															<img src="../static/images/emoji/emoji-01.png"
																class="" alt="" width="20" height="20">
															<span class="keyword-value"><!-- -->성능이 좋아요<!-- --></span>
															<span class="keyword-total">
																<span class="sr-only">이 키워드를 선택한 인원</span><%=G01_cnt%></span>
														</div>
													</li>
													<li>
														<!-- <div class="gauge" style="width:92%"></div> -->
														<div class="gauge pct25" style="width:<%=G02_cnt * 4%>%"></div>
														<div class="keyword-info">
															<img src="../static/images/emoji/emoji-02.png"
																class="" alt="" width="20" height="20">
															<span class="keyword-value"><!-- -->사용하기 편리해요<!-- --></span>
															<span class="keyword-total">
																<span class="sr-only">이 키워드를 선택한 인원</span><%=G02_cnt%></span>
														</div>
													</li>
													<li style="">
														<!-- <div class="gauge" style="width:92%"></div> -->
														<div class="gauge pct0" style="width:<%=G03_cnt * 4%>%"></div>
														<div class="keyword-info">
															<img src="../static/images/emoji/emoji-04.png"
																class="" alt="" width="20" height="20">
															<span class="keyword-value"><!-- -->디자인이 마음에 들어요<!-- --></span>
															<span class="keyword-total">
																<span class="sr-only">이 키워드를 선택한 인원</span><%=G03_cnt%></span>
														</div>
													</li>
													<li>
														<!-- <div class="gauge" style="width:92%"></div> -->
														<div class="gauge pct0" style="width:<%=G04_cnt * 4%>%"></div>
														<div class="keyword-info">
															<img src="../static/images/emoji/emoji-10.png"
																class="" alt="" width="20" height="20">
															<span class="keyword-value"><!-- -->배송이 빨라요<!-- --></span>
															<span class="keyword-total">
																<span class="sr-only">이 키워드를 선택한 인원</span><%=G04_cnt%></span>
														</div>
													</li>
													<li style="">
														<!-- <div class="gauge" style="width:92%"></div> -->
														<div class="gauge pct0" style="width:<%=G05_cnt * 4%>%"></div>
														<div class="keyword-info">
															<img src="../static/images/emoji/emoji-03.png"
																class="" alt="" width="20" height="20">
															<span class="keyword-value"><!-- -->튼튼해요<!-- --></span>
															<span class="keyword-total">
																<span class="sr-only">이 키워드를 선택한 인원</span><%=G05_cnt%></span>
														</div>
													</li>
													<li>
														<!-- <div class="gauge" style="width:92%"></div> -->
														<div class="gauge pct0" style="width:<%=G06_cnt * 4%>%"></div>
														<div class="keyword-info">
															<img src="../static/images/emoji/emoji-09.png"
																class="" alt="" width="20" height="20">
															<span class="keyword-value"><!-- -->가격이
																합리적이에요<!-- --></span>
															<span class="keyword-total">
																<span class="sr-only">이 키워드를 선택한 인원</span><%=G06_cnt%></span>
														</div>
													</li>
													<li style="">
														<!-- <div class="gauge" style="width:92%"></div> -->
														<div class="gauge pct0" style="width:<%=G07_cnt * 4%>%"></div>
														<div class="keyword-info">
															<img src="../static/images/emoji/emoji-06.png"
																class="" alt="" width="20" height="20">
															<span class="keyword-value"><!-- -->크기가 적당해요<!-- --></span>
															<span class="keyword-total">
																<span class="sr-only">이 키워드를 선택한 인원</span><%=G07_cnt%></span>
														</div>
													</li>
													<li style="">
														<!-- <div class="gauge" style="width:92%"></div> -->
														<div class="gauge pct0" style="width:<%=G08_cnt * 4%>%"></div>
														<div class="keyword-info">
															<img src="../static/images/emoji/emoji-08.png"
																class="" alt="" width="20" height="20">
															<span class="keyword-value"><!-- -->설치기사님이
																친절해요<!-- --></span>
															<span class="keyword-total">
																<span class="sr-only">이 키워드를 선택한 인원</span><%=G08_cnt%></span>
														</div>
													</li>
													<li style="">
														<!-- <div class="gauge" style="width:92%"></div> -->
														<div class="gauge pct0" style="width:<%=G09_cnt * 4%>%"></div>
														<div class="keyword-info">
															<img src="../static/images/emoji/emoji-05.png"
																class="" alt="" width="20" height="20">
															<span class="keyword-value"><!-- -->색상이 마음에
																들어요<!-- --></span>
															<span class="keyword-total">
																<span class="sr-only">이 키워드를 선택한 인원</span><%=G09_cnt%></span>
														</div>
													</li>
													<li style="">
														<!-- <div class="gauge" style="width:92%"></div> -->
														<div class="gauge pct0" style="width:<%=G10_cnt * 4%>%"></div>
														<div class="keyword-info">
															<img src="../static/images/emoji/emoji-07.png"
																class="" alt="" width="20" height="20">
															<span class="keyword-value"><!-- -->소재가 마음에
																들어요<!-- --></span>
															<span class="keyword-total">
																<span class="sr-only">이 키워드를 선택한 인원</span><%=G10_cnt%></span>
														</div>
													</li>
													<li style="">
														<!-- <div class="gauge" style="width:92%"></div> -->
														<div class="gauge pct0" style="width:<%=G99_cnt * 4%>%"></div>
														<div class="keyword-info">
															<img src="../static/images/emoji/emoji-11.png"
																class="" alt="" width="20" height="20">
															<span class="keyword-value"><!-- -->원하는 선택지가
																없어요<!-- --></span>
															<span class="keyword-total">
																<span class="sr-only">이 키워드를 선택한 인원</span><%=G99_cnt%></span>
														</div>
													</li>
												</ul>
												<%
												} catch (Exception e) {
													out.print(e);
												}
												%>
											</div>
											<!-- 상품평 키워드 분포 -->
										</div>
										<!-- 상품평 평균 현황 -->

										<!-- 상품평 작성시 display:none -->
										<div class="box-btn" id="box-btn-review">
											<!-- 상품평 작성 버튼 -->
											<div class="button-review-write" id="commentWriteBtnArea">
												<a href="javascript:;" class="btn btn-d btn-type1" id="commentWrite"
													data-omni="write review" data-insertcheck='Y' onClick="fnWrite()"><span>상품평
														작성</span></a>
											</div>
											<!-- 상품평 작성 버튼 -->
										</div>
										<p class="review-total-count">전체 상품평 <strong><%=cnt%></strong>건</p>
									</div>
									<div class="review-content-body">
										<div class="review-sort drop-toggle">
											<!-- <div class="chk-form">
												<div class="drop-toggle">
													<button type="button" title="상품평 리스트"><span>전체</span></button>
												</div>
												<div class="dropBox">
													<ul>
														<li>
															<input title="전체" id="goodsCmntTp_00" type="radio"
																name="revive-style" value="00" data-omni="all"
																required="" checked="checked">
															<label for="goodsCmntTp_00">전체</label>
														</li>
														data-omni=USR_DFN1_VAL FROM CODE_DETAIL WHERE GRP_CD = GOODS_CMNT_TP_FLTR
														<li>
															<input title="일반 상품평" id="goodsCmntTp_10" type="radio"
																name="revive-style" value="10" data-omni="" required="">
															<label for="goodsCmntTp_10">일반 상품평</label>
														</li>
														data-omni=USR_DFN1_VAL FROM CODE_DETAIL WHERE GRP_CD = GOODS_CMNT_TP_FLTR
														<li>
															<input title="포토 상품평" id="goodsCmntTp_20" type="radio"
																name="revive-style" value="20" data-omni="photo review"
																required="">
															<label for="goodsCmntTp_20">포토 상품평</label>
														</li>
														data-omni=USR_DFN1_VAL FROM CODE_DETAIL WHERE GRP_CD = GOODS_CMNT_TP_FLTR
														<li>
															<input title="동영상 상품평" id="goodsCmntTp_30" type="radio"
																name="revive-style" value="30" data-omni="video review"
																required="">
															<label for="goodsCmntTp_30">동영상 상품평</label>
														</li>
														data-omni=USR_DFN1_VAL FROM CODE_DETAIL WHERE GRP_CD = GOODS_CMNT_TP_FLTR
														<li>
															<input title="한달 상품평" id="goodsCmntTp_40" type="radio"
																name="revive-style" value="40"
																data-omni="monthly review" required="">
															<label for="goodsCmntTp_40">한달 상품평</label>
														</li>
														data-omni=USR_DFN1_VAL FROM CODE_DETAIL WHERE GRP_CD = GOODS_CMNT_TP_FLTR
														<li>
															<input title="선물하기 상품평" id="goodsCmntTp_50" type="radio"
																name="revive-style" value="50"
																data-omni="present review" required="">
															<label for="goodsCmntTp_50">선물하기 상품평</label>
														</li>
													</ul>
												</div>
											</div> -->
											<div class="dropdownMenu type2">
												<button title="리스트 정렬 순서" type="button" id="review-sort-btn"
													class="choose-account" aria-haspopup="true" value="">베스트순<span
														class="blind">하위메뉴 있음</span></button>
												<ul class="account-types" role="menu">
													<li id="bestCmnt" role="presentation" aria-selected="true">
														<input type="radio" id="review-sort-bestCmnt"
															name="review-list-sort" value="bestCmnt" role=""
															aria-checked="" data-omni="">
														<label for="review-sort-bestCmnt"><span
																class="reviewSortDetail">베스트순</span></label>
													</li>
													<li id="sysRegDtm" role="presentation" aria-selected="false">
														<input type="radio" id="review-sort-sysRegDtm"
															name="review-list-sort" value="sysRegDtm" role=""
															aria-checked="" data-omni="most recent">
														<label for="review-sort-sysRegDtm"><span
																class="reviewSortDetail">최신순</span></label>
													</li>
													<li id="estmScoreHigh" role="presentation" aria-selected="false">
														<input type="radio" id="review-sort-estmScoreHigh"
															name="review-list-sort" value="estmScoreHigh"
															data-omni="highest to lowest rating">
														<label for="review-sort-estmScoreHigh"><span
																class="reviewSortDetail">평점높은순</span></label>
													</li>
													<li id="estmScoreLow" role="presentation" aria-selected="false">
														<input type="radio" id="review-sort-estmScoreLow"
															name="review-list-sort" value="estmScoreLow"
															data-omni="lowest to highest rating">
														<label for="review-sort-estmScoreLow"><span
																class="reviewSortDetail">평점낮은순</span></label>
													</li>
												</ul>
											</div>
										</div>
										<div id="commentList">
											<ul class="review-list" id="review-list">
											<%
											// 작성된 리뷰 조회
											String sql_list = "SELECT * FROM review WHERE Mno='28MQ780'";
											PreparedStatement pstmt_list = con.prepareStatement(sql_list);
											ResultSet rs_list = pstmt_list.executeQuery();

											while(rs_list.next()) {
												int rating_list = rs_list.getInt("review_rating");
												String keyword_list = rs_list.getString("review_keyword");
												String[] keyword_split = keyword_list.split(" ");;
											%>
												<li id="cmntList0">
													<!-- s : 221221 상품리스트 
														! 기존 list-div에 advacement 클래스 추가
														! 부득이 구조변경(태그 이동)됨
													-->
													<div class="list-div advancement" id="focus-div-183963">
														<div class="review-wtInfo">
															<div class="wtInfo-badge">
																<!-- 베스트 상품평 뱃지 -->
																<!-- <span class="badge best">베스트</span> -->
																<!-- 상품평타입 -->
																<span class="badge">일반 상품평</span>
																<!-- 이벤트 상품평 뱃지 -->
																</div>
															<div class="wtInfo-top">
																<!-- 작성자 -->
																<span><%=rs_list.getString("userID")%></span>
																</div>
															<div class="wtInfo-bottom">

																<div class="review-starating" role="img" aria-label="별점  <%=rating_list%>점">
																	<%
																	if (rating_list == 1) {
																	%>
																	<span class="star-yellow">별점</span>
																	<span class="star-gray" aria-hidden="true">별점</span>
																	<span class="star-gray" aria-hidden="true">별점</span>
																	<span class="star-gray" aria-hidden="true">별점</span>
																	<span class="star-gray" aria-hidden="true">별점</span>
																	<%
																	} else if (rating_list == 2) {
																	%>
																	<span class="star-yellow">별점</span>
																	<span class="star-yellow" aria-hidden="true">별점</span>
																	<span class="star-gray" aria-hidden="true">별점</span>
																	<span class="star-gray" aria-hidden="true">별점</span>
																	<span class="star-gray" aria-hidden="true">별점</span>
																	<%
																	} else if (rating_list == 3) {
																	%>
																	<span class="star-yellow">별점</span>
																	<span class="star-yellow" aria-hidden="true">별점</span>
																	<span class="star-yellow" aria-hidden="true">별점</span>
																	<span class="star-gray" aria-hidden="true">별점</span>
																	<span class="star-gray" aria-hidden="true">별점</span>
																	<%
																	} else if (rating_list == 4) {
																	%>
																	<span class="star-yellow">별점</span>
																	<span class="star-yellow" aria-hidden="true">별점</span>
																	<span class="star-yellow" aria-hidden="true">별점</span>
																	<span class="star-yellow" aria-hidden="true">별점</span>
																	<span class="star-gray" aria-hidden="true">별점</span>
																	<%
																	} else if (rating_list == 5) {
																	%>
																	<span class="star-yellow">별점</span>
																	<span class="star-yellow" aria-hidden="true">별점</span>
																	<span class="star-yellow" aria-hidden="true">별점</span>
																	<span class="star-yellow" aria-hidden="true">별점</span>
																	<span class="star-yellow" aria-hidden="true">별점</span>
																	<%
																	}
																	%>
																</div>
																<!-- 작성일자 -->
																<span class="date"><%=rs_list.getString("review_date")%></span>
															</div>
														</div>
														<div class="review-con">
															<div class="review-text">
																<a href="javascript:;" class="txt-slide">
																	<p><%=rs_list.getString("review_comment")%></p>
																</a>
																<!-- <div class="attached-file">
																	<ol>
																		<li>
																			<a href="javascript:;" title="첨부파일1 보기" data-img-seq="0">
																				<img src="//images.samsung.com/kdp/goods_comment/183963/eb6e3536-1f4a-4c82-a70a-1246fe25d39d.png?$130_N_PNG$" alt="오디세이 G3 60.4 cm의 첨부파일1">
																			</a>
																		</li>
																	</ol>
																</div> -->
															</div>
														</div>
														<div class="review-lt-keywords">
															<!-- 키워드  -->
														<%
														int j = 0;
														for (int i = 0;i < keyword_split.length;i++) {
														if (keyword_list.contains("G01") && j != 1) {
															j = 1;
														%>
															<button type="button" class="btn-review-keyword on" name="goodsCmntKwd" value="G01" disabled="">
																<img src="../static/images/emoji/emoji-01.png" alt="../static/images/emoji/emoji-01.png">
																<span>성능이 좋아요</span>
															</button>
														<%
														} else if (keyword_list.contains("G02") && j != 2) {
															j = 2;
														%>
															<button type="button" class="btn-review-keyword on" name="goodsCmntKwd" value="G02" disabled="">
																<img src="../static/images/emoji/emoji-02.png" alt="../static/images/emoji/emoji-02.png">
																<span>사용하기 편리해요</span>
															</button>
														<%
														} else if (keyword_list.contains("G03") && j != 3) {
															j = 3;
														%>
															<button type="button" class="btn-review-keyword on" name="goodsCmntKwd" value="G03" disabled="">
																<img src="../static/images/emoji/emoji-04.png" alt="../static/images/emoji/emoji-04.png">
																<span>디자인이 마음에 들어요</span>
															</button>
														<%
														} else if (keyword_list.contains("G04") && j != 4) {
															j = 4;
														%>
															<button type="button" class="btn-review-keyword on" name="goodsCmntKwd" value="G04" disabled="">
																<img src="../static/images/emoji/emoji-10.png" alt="../static/images/emoji/emoji-10.png">
																<span>배송이 빨라요</span>
															</button>
														<%
														} else if (keyword_list.contains("G05") && j != 5) {
															j = 5;
														%>
															<button type="button" class="btn-review-keyword on" name="goodsCmntKwd" value="G05" disabled="">
																<img src="../static/images/emoji/emoji-03.png" alt="../static/images/emoji/emoji-03.png">
																<span>튼튼해요</span>
															</button>
														<%
														} else if (keyword_list.contains("G06") && j != 6) {
															j = 6;
														%>
															<button type="button" class="btn-review-keyword on" name="goodsCmntKwd" value="G06" disabled="">
																<img src="../static/images/emoji/emoji-09.png" alt="../static/images/emoji/emoji-09.png">
																<span>가격이 합리적 이에요</span>
															</button>
														<%
														} else if (keyword_list.contains("G07") && j != 7) {
															j = 7;
														%>
															<button type="button" class="btn-review-keyword on" name="goodsCmntKwd" value="G07" disabled="">
																<img src="../static/images/emoji/emoji-06.png" alt="../static/images/emoji/emoji-06.png">
																<span>크기가 적당해요</span>
															</button>
														<%
														} else if (keyword_list.contains("G08") && j != 8) {
															j = 8;
														%>
															<button type="button" class="btn-review-keyword on" name="goodsCmntKwd" value="G08" disabled="">
																<img src="../static/images/emoji/emoji-08.png" alt="../static/images/emoji/emoji-08.png">
																<span>설치기사님이 친절해요</span>
															</button>
														<%
														} else if (keyword_list.contains("G09") && j != 9) {
															j = 9;
														%>
															<button type="button" class="btn-review-keyword on" name="goodsCmntKwd" value="G09" disabled="">
																<img src="../static/images/emoji/emoji-05.png" alt="../static/images/emoji/emoji-05.png">
																<span>색상이 마음에 들어요</span>
															</button>
														<%
														} else if (keyword_list.contains("G10") && j != 10) {
															j = 10;
														%>
															<button type="button" class="btn-review-keyword on" name="goodsCmntKwd" value="G10" disabled="">
																<img src="../static/images/emoji/emoji-07.png" alt="../static/images/emoji/emoji-07.png">
																<span>소재가 마음에 들어요</span>
															</button>
														<%
														}
														}
														%>
														</div>
														<div class="help-goods">
															<input type="hidden" name="goodsEstmNo" value="183963">
															<button type="button" class="btn-goods" name="opnnCheck" data-yescls="login-view-like">도움이 돼요<span>0</span></button>
																</div>
														<p class="btn-report">
															<input type="hidden" name="goodsEstmNo" value="183963">
																
																<a href="javascript:;" class="report_183963" onclick="commentReport('183963');" tabindex="-1"></a>
																<a href="javascript:;" class="btn-underline" title="상품평 신고하기" id="reportBtn" onclick="layerMsgPop(this);" data-content="상품평을 신고하시겠습니까?" data-yes="확인" data-yescls="comment-report report_183963" data-no="취소" data-close="툴팁 닫기">신고</a>
															</p>
													</div>
													<!-- e : 221221 상품리스트 -->

												</li>
											<%
											}
											%>
											</ul>
										</div>
									</div>
								</div>
<%
	} catch (Exception e) {
		out.print(e);
	}
%>
								<!-- e : 상품평 리스트 -->
								<!-- s : 상품평 작성 -->
<%
	request.setCharacterEncoding("utf-8");
	
	String name = "";

	if (id == null) {
%>
<script>
	function fnWrite() {
		alert("로그인 이후 상품평을 작성할 수 있습니다.");
	}
</script>
<%
	} else {
		try {
			String db_url = "jdbc:mysql://localhost:3306/gpqd";
			String db_id = "root";
			String db_password = "1234";

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(db_url, db_id, db_password);

			String sql = "SELECT * FROM user WHERE userID=?"; 
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);

			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				name = rs.getString("userName");
			}
		} catch (Exception e) {
			out.print(e);
		}
%>
		<script>
			function fnWrite() {
				$("#writeArea").css("display", "flex");
				$("#writeArea")[0].scrollIntoView({
					behavior: 'smooth'
				});
			}
			function fnCancelWrite() {
				$("#writeArea").hide();
			}
		</script>
							<form name="reviewForm" method="post" action="reviewRegister.jsp">
								<div class="layer-content" id="writeArea" style="display: none;">
									<input type="hidden" name="Mno" value="28MQ780">
									<!-- s : 221221 상품평 작성  -->
									<div class="review-wt-form">
										<input type="hidden" name="compNo" value="">
										<input type="hidden" name="stId" value="1">
										<input type="hidden" id="insertCheck" name="insertCheck" value="Y">
										<input type="hidden" id="insertGoodsId" name="insertGoodsId">
										<input type="hidden" id="insertOrdNo" name="insertOrdNo" value="">
										<input type="hidden" id="insertGoodsEstmNo" name="insertGoodsEstmNo" value="">
										<input type="hidden" id="insertCommentType" name="insertCommentType" value="03">
										<input type="hidden" id="insertImgPath" name="insertImgPath" value="">
										<input type="hidden" id="insertGoodsNm" name="insertGoodsNm" value="">
										<input type="hidden" id="insertMdlCode" name="insertMdlCode" value="">
										<input type="hidden" id="insertBuySiteCd" name="insertBuySiteCd" value="20">
										<div class="review-wt-head">
											<p><span id="reviewFormName"><%=name%></span> <b>님,</b> 상품은 어떠셨나요?</p>
										</div>
										<div class="review-wt-product" style="display: none;">
											<div class="product-img">
												<img src="" alt="상품 이미지의 정보 서술" id="productImg">
											</div>
											<div class="product-text">
												<p class="product-name" id="productNm"></p>
												<p class="product-model" id="productMdl"></p>
											</div>
										</div>
										<div class="review-wt-ratings">
											<div class="review-starating">
												<button type="button" value="1">
													<span class="star-gray">
														별점 1점
													</span>
												</button>
												<button type="button" value="2">
													<span class="star-gray">
														별점 2점
													</span>
												</button>
												<button type="button" value="3">
													<span class="star-gray">
														별점 3점
													</span>
												</button>
												<button type="button" value="4">
													<span class="star-gray">
														별점 4점
													</span>
												</button>
												<button type="button" value="5">
													<span class="star-gray">
														별점 5점
														선택됨</span>
												</button>
												<input type="hidden" id="estmScore" name="estmScore" value="0">
											</div>
											<!-- 별점 선택시 문구 변경 -->
											<p class="review-wt-startext" style="display:none"><span
													id="starText"></span><span class="c_red" id="starText2">*</span>
											</p>
											<!-- reveiw-wt-starempty 태그는 별점이 0일때 review-wt-startext 대신 나오는 태그 -->
											<p class="review-wt-starempty" id="starEmpty"><span>별점을
													선택해주세요.</span><span class="c_red">*</span></p>
										</div>

										<div class="review-wt-keyword">
											<div class="review-wt-title">
												<h4>이 상품을 가장 잘 표현하는 키워드를 골라주세요.<span class="c_red">*</span></h4>
												<p>1점을 선택하셨더라도 상품에 대해 설명하는 키워드를 선택해 주세요. (최대 5개)</p>
											</div>
											<div class="review-wt-content">
												<div class="keyword-wrap">
													<div class="review-keywords">
														<div style="display: none;">
															<input type="checkbox" class="chk" name="kwdchk" value="G01"/>
															<input type="checkbox" class="chk" name="kwdchk" value="G02"/>
															<input type="checkbox" class="chk" name="kwdchk" value="G03"/>
															<input type="checkbox" class="chk" name="kwdchk" value="G04"/>
															<input type="checkbox" class="chk" name="kwdchk" value="G05"/>
															<input type="checkbox" class="chk" name="kwdchk" value="G06"/>
															<input type="checkbox" class="chk" name="kwdchk" value="G07"/>
															<input type="checkbox" class="chk" name="kwdchk" value="G08"/>
															<input type="checkbox" class="chk" name="kwdchk" value="G09"/>
															<input type="checkbox" class="chk" name="kwdchk" value="G10"/>
															<input type="checkbox" class="chk" name="kwdchk" value="G99"/>
														</div>
														<button type="button" class="btn-review-keyword "
															name="goodsCmntKwd" value="G01">
															<img src="../static/images/emoji/emoji-01.png"
																alt="../static/images/emoji/emoji-01.png">
															<span>성능이 좋아요</span>
														</button>
														<button type="button" class="btn-review-keyword"
															name="goodsCmntKwd" value="G02">
															<img src="../static/images/emoji/emoji-02.png"
																alt="../static/images/emoji/emoji-02.png">
															<span>사용하기 편리해요</span>
														</button>
														<button type="button" class="btn-review-keyword"
															name="goodsCmntKwd" value="G03">
															<img src="../static/images/emoji/emoji-04.png"
																alt="../static/images/emoji/emoji-04.png">
															<span>디자인이 마음에 들어요</span>
														</button>
														<button type="button" class="btn-review-keyword "
															name="goodsCmntKwd" value="G04">
															<img src="../static/images/emoji/emoji-10.png"
																alt="../static/images/emoji/emoji-10.png">
															<span>배송이 빨라요</span>
														</button>
														<button type="button" class="btn-review-keyword "
															name="goodsCmntKwd" value="G05">
															<img src="../static/images/emoji/emoji-03.png"
																alt="../static/images/emoji/emoji-03.png">
															<span>튼튼해요</span>
														</button>
														<button type="button" class="btn-review-keyword "
															name="goodsCmntKwd" value="G06">
															<img src="../static/images/emoji/emoji-09.png"
																alt="../static/images/emoji/emoji-09.png">
															<span>가격이 합리적이에요</span>
														</button>
														<button type="button" class="btn-review-keyword "
															name="goodsCmntKwd" value="G07">
															<img src="../static/images/emoji/emoji-05.png"
																alt="../static/images/emoji/emoji-05.png">
															<span>색상이 마음에 들어요</span>
														</button>
														<button type="button" class="btn-review-keyword "
															name="goodsCmntKwd" value="G08">
															<img src="../static/images/emoji/emoji-06.png"
																alt="../static/images/emoji/emoji-06.png">
															<span>크기가 적당해요</span>
														</button>
														<button type="button" class="btn-review-keyword "
															name="goodsCmntKwd" value="G09">
															<img src="../static/images/emoji/emoji-07.png"
																alt="../static/images/emoji/emoji-07.png">
															<span>소재가 마음에 들어요</span>
														</button>
														<button type="button" class="btn-review-keyword "
															name="goodsCmntKwd" value="G10">
															<img src="../static/images/emoji/emoji-08.png"
																alt="../static/images/emoji/emoji-08.png">
															<span>설치기사님이 친절해요</span>
														</button>
														<button type="button" class="btn-review-keyword "
															id="removeKeyword" name="goodsCmntKwd" value="G99">
															<img src="../static/images/emoji/emoji-11.png"
																alt="../static/images/emoji/emoji-11.png">
															<span>원하는 선택지가 없어요</span>
														</button>


													</div>
												</div>
											</div>

										</div>

										<div class="review-wt-textarea">
											<div class="review-wt-title">
												<h4><span id="starTitle" style="display:none">만족도 점을
														주셨네요.</span><span class="mo_ent"></span>
													<span id="starTitle2">어떤 점이 좋았나요?</span><span class="c_red">*</span>
												</h4>
											</div>
											<div class="review-wt-content">
												<textarea id="commentArea" name="commentArea" cols="200" wrap="hard"
													title="리뷰 작성하는 공간" placeholder="상세한 상품평을 작성해 주세요!
										고객님의 소중한 상품평은 저희 GMQDisplay에게도, 다른 고객님께도 큰 도움이 되어요.
										
										·왜 구매 하셨나요?
										·성능이 왜 만족스러웠나요?/아쉬웠나요?
										·디자인은 어땠나요? 색상, 모양, 소재, 크기 등 자세히 설명해주세요.
										·배송이 빨랐나요?/느렸나요?
										·마지막은 주요 장단점으로 마무리 해보세요."></textarea>
												<p class="txtCount" id="txtCount"><strong>0</strong>/5000</p>
											</div>
										</div>

										<!--@@ <div class="review-wt-picture">
											<div class="review-wt-title">
												<span class="title-bubble">사진/동영상을 첨부하면 다른 고객님께도 큰 도움이 되어요!</span>
												<h4>이 상품의 사진, 동영상을 첨부해보세요.</h4>
											</div>
											<div class="review-wt-content">
												<div class="attach-file">
													<div class="addMedia" id="attach-file-btn"> @@-->
														<!-- <label class="inp-file" for="attachFile" tabindex="0"> -->
														<!--@@<label class="inp-file" for="attachFile">
															<em class="blind">파일첨부하기</em> @@-->
															<!-- <button type="button" id="attachFile" style="width:100%; background:none;" onclick="fileUpload.file(fileUpload.afterFileSelect);"><span>첨부</span></button> -->
															<!--@@ <button type="button" id="attachFile"
																style="width:100%; background:none;" title="파일첨부하기"
																onclick="fileUpload.file(fileUpload.afterFileSelect);"><span>첨부</span></button>
														</label>
														<p>(<em>0</em>/10)</p>
													</div>
													<ol id="fileOl">
													</ol>
													<p class="mediaCount">(<em>0</em>/10)</p>
												</div>

												<div class="review-wt-guide">
													<p>이런 사진, 동영상이면 더욱 좋아요! <span class="mo_ent">
														</span>(파일 용량 최대 50MB)</p>
													<ul>
														<li>
															<img src="//images.samsung.com/kdp/test/review_guide_test_01.jpg"
																alt="착용샷 예시 이미지">
															<div>
																<h5>착용샷</h5>
																<p>상품을 착용한 모습을 보여주세요.</p>
															</div>
														</li>
														<li>
															<img src="//images.samsung.com/kdp/test/review_guide_test_02.jpg"
																alt="설치샷 예시 이미지">
															<div>
																<h5>설치샷</h5>
																<p>실제 사용 모습을 담아보세요.</p>
															</div>
														</li>
														<li>
															<img src="//images.samsung.com/kdp/test/review_guide_test_03.jpg"
																alt="디테일샷 예시 이미지">
															<div>
																<h5>디테일샷</h5>
																<p>다양한 각도에서 찍어보세요.</p>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div> @@-->
										<div class="review-wt-caution type2">
											<ul>
												<li>
													고객후기를 위한 공간입니다. 제품 및 기타 문의사항은 <a
														href="https://www.samsung.com/sec/info/contactus/">고객서비스</a>를
													이용해주세요.<br>
													[타인에게 불쾌감을 유발할 수 있는 욕설과 저속한 비속어를 사용하거나 타인을 근거 없이 비방하는 리뷰는 제한될 수
													있습니다.]
												</li>
												<li>
													비정상적이거나 부정한 방법으로 이벤트 참여 시 당첨에서 제한될 수 있습니다. (타인 명의 및 저작물 도용, 이벤트
													참여를 위한 별도 계정 생성, 반복 참여 프로그램 이용, 동일 이미지 사용 등)
												</li>
												<li>
													비방 혹은 욕설 등 본 이벤트와 관련 없는 사진 또는 영상과 글을 작성할 경우 당사에 판단에 따라 삭제 및 당첨
													취소 될 수 있습니다.
												</li>
												<li>
													상품평 작성 시 직접 촬영한 이미지를 사용해주시고, 타인의 보호되는 저작물, 초상권 일부 또는 전부를 해당 권리자
													허락 없이 이용, 허락 범위를 넘어서는 행위에 대해서는 저작권, 초상권 침해가 되며 삭제 및 당첨 취소될 수
													있습니다.
												</li>
											</ul>
										</div>

										<div class="appOnlyBtn">
											<button type="button" class="btn-camera"
												onclick="fileUpload.file(fileUpload.afterFileSelect, 'camera');">카메라</button>
											<button type="button" class="btn-movie"
												onclick="fileUpload.file(fileUpload.afterFileSelect, 'camcorder');">동영상</button>
										</div>
										<div class="btn-box">
											<button type="button" class="btn btn-l btn-type1" onClick="fnCancelWrite()">취소</button>
											<button type="button" id="insertWrite" class="btn btn-l btn-type2"
												name="insertWrite">등록</button>
										</div>

									</div>


									<!-- e : 221221 상품평 작성 -->
								</div>
							</form>
<%
	}
%>
			<!-- e : 상품평 작성 -->
		</div>
	</div>
</div>
<!-- s : 221221 상품평 작성가이드 -->
<div class="layer-pop layer-normal layer-review-guide" id="popupReviewGuide" tabindex="0" data-popup-layer="popupReviewGuide" data-focus="popupReviewGuide">
	<div class="layer-header">
		<h2>상품평 가이드</h2>
	</div>
	<div class="layer-content">

		<div class="stdd-best">
			<dl>
				<dt>베스트 상품평 기준</dt>
				<dd>상품평 100자 이상</dd>
				<dd>포토/동영상 첨부</dd>
			</dl>
			<p>2개의 조건을 충족하면 <br class="mo-block">베스트 상품평 선정될 확률 UP!</p>
		</div>
		<ol class="guide-step">
			<li>
				<strong class="num">01</strong>
				<dl class="step">
					<dt>별점을 선택해 주세요.</dt>
					<dd>
						<p>다양한 각도의 사진을 첨부하시면 베스트 상품평에 선정될 확률이 높아져요!</p>
					</dd>
				</dl>
			</li>
			<li>
				<strong class="num">02</strong>
				<dl class="step">
					<dt>키워드를 선택해 주세요.</dt>
					<dd>
						<p>1,2점을 선택하셨더라도 상품에 대해 설명하는 키워드를 선택해 주세요.</p>
					</dd>
				</dl>
			</li>
			<li>
				<strong class="num">03</strong>
				<dl class="step">
					<dt>상세한 리뷰를 작성해 주세요.</dt>
					<dd>
						<dl class="dtl">
							<dt>구매동기</dt>
							<dd>왜 구매 하셨나요?</dd>
							<dt>성능</dt>
							<dd>
								성능이 왜 만족스러웠나요?/아쉬웠나요? 
								<br>그렇게 생각하신 이유도 함께 작성해주세요.
							</dd>
							<dt>디자인</dt>
							<dd>디자인은 어땠나요?</dd>
							<dt>활용TIP</dt>
							<dd>
								상품을 어떻게 활용했는지 본인만의 활용TIP을 공유해 주세요.
								<br><b>마지막은 <i>주요 장단점</i>으로 마무리 해보세요.</b>
							</dd>
						</dl>
					</dd>
				</dl>
			</li>
			<li>
				<strong class="num">04</strong>
				<dl class="step">
					<dt>사진 및 동영상을 첨부해 주세요.</dt>
					<dd>
						<p>다양한 각도의 사진을 첨부하시면 베스트 상품평에 선정될 확률이 높아져요!</p>
						<dl class="pic">
							<div>
								<dt>
									<img src="https://images.samsung.com/kdp/test/review_guide_test_01.jpg" alt="팔목에 워치가 착용 되어있는 사진">
									<b>착용샷</b>
								</dt>
								<dd>상품을 착용한 모습을 보여주세요.</dd>
							</div>
							<div>
								<dt>
									<img src="https://images.samsung.com/kdp/test/review_guide_test_02.jpg" alt="집안에 냉장고가 배치되어있는 사진">
									<b>설치샷</b>
								</dt>
								<dd>실제 사용 모습을 담아보세요.</dd>
							</div>
							<div>
								<dt>
									<img src="https://images.samsung.com/kdp/test/review_guide_test_03.jpg" alt="냉장고 문을 열어 내부를 찍은 사진">
									<b>디테일</b>
								</dt>
								<dd>다양한 각도에서 찍어보세요.</dd>
							</div>
						</dl>
					</dd>
				</dl>
			</li>
		</ol>
	</div>
	<button type="button" class="pop-close" data-focus-next="popupReviewGuide">팝업닫기</button>
</div>
<!-- e : 221221 상품평 작성가이드 -->

<!-- s : 230106 상품평 전체보기 보기 팝업 -->
<div class="layer-pop layer-normal layer-bestReview best-video" tabindex="0" id="popBestVideo" data-popup-layer="popBestVideo" data-focus="popBestVideo"><!-- 230130 best-video 클래스 추가 -->
</div>
<!-- e : 230106 상품평 전체보기 보기 팝업 -->

<!-- s : 230106 상세리스트 보기 팝업-->
<div class="layer-pop layer-normal layer-bestReview" tabindex="0" id="popBestReview" data-popup-layer="popBestReview" data-focus="popBestReview">
</div>
<!-- e : 230106 상세리스트 보기 팝업 -->

<!-- s : 이벤트 상품평 팝업 -->
<button type="button" style="display:none" id="completeReviewEvent" data-popup-target="popupReviewEventAgreement"></button>
<div class="layer-pop layer-normal review-event-agreement-pop" id="popupReviewEventAgreement" tabindex="0" data-popup-layer="popupReviewEventAgreement" data-focus="popupReviewEventAgreement" aria-hidden="false" data-zindex="303" style="z-index: 303;">
    <div class="layer-header"></div>
    <div class="layer-content">
		<div class="content-box">
			<div class="name">
						<strong id="reviewEventName"></strong> 고객님
					</div>
				<div class="txt">
				<p id="noticeText">
				</p><br>
				<strong>상품평 등록 및 이벤트 응모</strong>가 완료 되었습니다.
			</div>
		</div>
    </div>
	<div class="layer-footer">
		<button type="button" class="btn btn-d btn-type3" onclick="resultLinkUrl()">이벤트 확인하기</button>
	</div>
	<button type="button" class="pop-close-review" id="reviewEventPopClose" data-focus-next="popupReviewEventAgreement">팝업닫기</button>
</div>
<!-- e : 이벤트 상품평 팝업 --></article>
		              	<!--3rd 파티 상품은 특장점/상품평/유의사항만 노출 -->
	        	<article class="component-con component08" id="compGoodsRelation" style="display:none;">
		            	<!-- 연관제품-->
		            	<script type="text/javascript">
	// 연관제품 상세 호출
	$(document).on('click', '#compGoodsRelation .connection-itm-img>img' , function (){
		window.open($(goodsMain.vGoodsWrapId).data("ctpath") +  $(this).data("goods-url"));
	});
</script>
                <div class="fixWidth">
                    <h3 class="component-title">연관제품</h3>
                    <div class="connection-itm target">
						</div>
                </div>
</article>
		        <article class="component-con component09" id="compGoodsNoticeInfo1" >
	            	<!-- 구매시 유의사항-->
            		<div class="fixWidth">
		<h3 class="component-title">구매시 유의사항</h3>
		<div class="product-purchase-wrap">
			<div class="product-purchase-wrap_tab-wrap">
				<ul class="product-purchase-caus_tab tab-style-btn target" role="tablist">
					<li><a href="javascript:;" class="on" role="tab" aria-controls="tabContent0" aria-selected="true" data-omni="배송정책 안내">배송정책 안내</a></li>
							<li><a href="javascript:;" class="on" role="tab" aria-controls="tabContent1" aria-selected="false" data-omni="교환/반품/AS 안내">교환/반품/AS 안내</a></li>
							<li><a href="javascript:;" class="on" role="tab" aria-controls="tabContent2" aria-selected="false" data-omni="교환/반품 불가 안내">교환/반품 불가 안내</a></li>
							<li><a href="javascript:;" class="on" role="tab" aria-controls="tabContent3" aria-selected="false" data-omni="판매자 정보">판매자 정보</a></li>
							</ul>
				<div class="product-purchase-caus_contents tab-content" id="tabContent0" role="tabpanel" style="display:block;">
								<div class="product-purchase-sec_contents" style="">
                    <dl class="product-purchase-sec_note">
                        <dt class="product-purchase-sec_note-title">배송지역</dt>
                        <dd class="product-purchase-sec_note-cont">도서 산간지역은 배송이 제한될 수 있습니다.</dd>
                    </dl>
                    <dl class="product-purchase-sec_note">
                        <dt class="product-purchase-sec_note-title">배송비</dt>
                        <dd class="product-purchase-sec_note-cont">전 상품 무료배송
                            <br> (단, 제주도 등 일부 도서/산간 지역은 별도 배송비가 발생할 수 있으며, 설치상품의 경우 설치 환경 등에 따라 추가 설치비가 발생할 수 있습니다.)</dd>
                    </dl>
                    <dl class="product-purchase-sec_note">
                        <dt class="product-purchase-sec_note-title">배송기간</dt>
                        <dd class="product-purchase-sec_note-cont">
                            주문결제 후 평균 3일 이내 배송 (일, 공휴일 제외) 단, 도서/산간지역은 배송일이 추가적으로 소요될 수 있으며, 상품 보유현황에 따라 배송일이 지연될 수 있습니다.
                            <br> 아래 상품군은 지정하신 희망배송일에 상품을 배송 해 드리나 상품 보유현황 및 설치기사 상황에 따라 배송이 다소 지연될 수 있습니다.
                            <ul>
                                <li>- 희망배송일 지정 가능 상품군 : 모니터, 스피커 등 주변기기</li>
                                <li>- 희망배송일 지정 및 설치 상품군 : 모니터, 프린터, 스피커, 무선도킹오디오, DVD플레이어</li>
                            </ul>
                            또한 인수고객과의 통화불가, 수령지 주소가 불명확할 경우 배송이 지연될 수 있습니다.
                        </dd>
                    </dl>
                    <dl class="product-purchase-sec_note">
                        <dt class="product-purchase-sec_note-title">배송방법</dt>
                        <dd class="product-purchase-sec_note-cont">
                            배송 당일 오전에 SMS로 배송예정을 알리는 문자를 발송해드리며, 고객 댁에 도착하기 전 배달설치 기사가 연락 드립니다. 스팸 처리 등으로 인해 문자를
                            <br> 받지 못하는 경우가 있으니 주문내역에서 배송 상황을 확인해주시기 바랍니다.GMQ Display 배송 상품 중에는 고가의 프리미엄 상품들이 포함되어 있어 고객님께
                            <br> 직접 전달을 원칙으로 하고 있습니다. 안전한 배송을 위해 고객님이 주문 시 지정한 배송장소 외 제3자 전달이나 임의장소로의 배송은 제공하지 않습니다.
                            <br> 설치상품을 주문 시에는 설치환경을 꼭 체크하여 주십시오.
                        </dd>
                    </dl>
                    <dl class="product-purchase-sec_note">
                        <dt class="product-purchase-sec_note-title">배송추적</dt>
                        <dd class="product-purchase-sec_note-cont">
                            GMQ Display닷컴 상단 '마이 GMQ Display -&gt; 주문/배송조회 -&gt; 주문정보'에서 배송상태 및 배달설치 기사 전화번호 조회가 가능합니다.</dd>
                    </dl>
                </div></div>
						<div class="product-purchase-caus_contents tab-content" id="tabContent1" role="tabpanel" style="display:none;">
								<div class="product-purchase-sec_contents" style="">
                    <dl class="product-purchase-sec_note">
                        <dt class="product-purchase-sec_note-title">교환/반품 기간</dt>
                        <dd class="product-purchase-sec_note-cont">
단순변심에 의한 상품의 교환ㆍ반품은 실제 상품 등을 수령하신 날부터 7일 이내에 가능합니다. 단, 상품안내 페이지에 표시된 교환/반품 기간이 7일보다 긴 경우에는 그 기간을 따릅니다.<br>
모니터, 프린터, 스피커 등 본체 및 주변기기의 교환은 서비스센터에서 발급받은  불량판정서 지참시 배송완료+7일 가능합니다.<br>
수령한 상품 등의 내용이 표시ㆍ광고 내용과 다르거나 오배송 등 계약내용과 다르게 이행된 경우에는 수령하신 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 가능합니다.
                            <br>제품을 교환/반품 하기 전 고객센터로 미리 연락을 주셔야 합니다.
                            <br>제품 자체에 하자가 있는 경우 GMQ Display 서비스센터(0000-0000)로 접수하시면 A/S 기사의 판정을 거친 후 소비자분쟁해결기준에 의거하여 GMQ Display 서비스 센터를 통해 교환/환불/수리해드립니다.
                            <br> 미성년자인 고객이 구매계약을 체결한 후, 법정대리인이 그 계약에 동의하지 아니하면 본인 또는 법정대리인이 취소할 수 있습니다.</dd>
                    </dl>
                    <dl class="product-purchase-sec_note">
                        <dt class="product-purchase-sec_note-title">교환/반품 배송비</dt>
                        <dd class="product-purchase-sec_note-cont">
                            구매하신 상품의 교환ㆍ반품을 하시는 경우에는 상품 등의 반환에 필요한 비용(2,500원)을 고객님이 부담하셔야 합니다. 단, 고객님이 받으신 상품 등의 내용이 표시ㆍ광고 내용과 다르거나 제품하자ㆍ오배송 등 계약내용과 다르게 이행되어 교환/반품을 하시는 경우에는, 교환ㆍ반품 배송비는 무료입니다.</dd>
                    </dl>
                    <dl class="product-purchase-sec_note">
                        <dt class="product-purchase-sec_note-title">환불지연 배상금 지급안내</dt>
                        <dd class="product-purchase-sec_note-cont">
                            대금 환불 및 환불 지연에 따른 배상금 지급 조건, 절차 등은 전자상거래 등에서의 소비자 보호에 관한 법률에 따라 처리합니다.</dd>
                    </dl>
                    <dl class="product-purchase-sec_note">
                        <dt class="product-purchase-sec_note-title">A/S 안내</dt>
                        <dd class="product-purchase-sec_note-cont">
                            <span id="harman-text" style="display: none;">GMQ Display닷컴에서 판매되는 상품에 대해서는 GMQ Display 전문서비스센터로 문의하시면 A/S가 가능합니다. (상품A/S 문의전화: <a href="tel:02-553-3494" class="phone">00-000-0000</a>)</span>
                            <span id="general-text">GMQ Display닷컴에서 판매되는 상품에 대해서는 가까운 GMQ Display서비스센터를 방문하시면 A/S가 가능합니다. (상품A/S 문의전화: <a href="tel:0000-0000" class="phone">0000-0000</a>) <br>
                                일부제품의 경우 GMQ Display 서비스센터에서 A/S가 불가능하므로, [스펙] -&gt; [상품기본정보] 의 [A/S 책임자와 전화번호] 정보를 확인하시기 바랍니다</span>
                        </dd>
                    </dl>
                </div></div>
						<div class="product-purchase-caus_contents tab-content" id="tabContent2" role="tabpanel" style="display:none;">
								<div class="product-purchase-sec_contents" style="">
                    <dl class="product-purchase-sec_note">
                        <dt class="product-purchase-sec_note-title">교환/반품 불가사유</dt>
                        <dd class="product-purchase-sec_note-cont">
                            <ul>
                                <li>- 고객님의 책임 있는 사유로 상품이 멸실 또는 훼손된 경우
                                    <br> (다만, 단순히 상품의 내용을 확인하기 위해 포장 등을 훼손한 경우는 제외)</li>
                                <li>- 고객님의 사용으로 상품가치가 현저히 감소된 경우</li>
                                <li>- 패키지 상품의 경우 구성상품 일부의 개봉/설치/사용으로 상품가치가 현저히 감소된 경우</li> 
                                <li>- 시간이 경과되어 재판매가 곤란할 정도로 상품가치가 상실된 경우</li>
                                <li>- 복제가 가능한 상품의 경우 그 원본인 상품의 포장이 훼손된 경우</li>
                                <li>- 설치완료 상품에 하자가 없는 경우</li>
                                <li>- 상품 등의 내용이 표시ㆍ광고 내용 및 계약내용과 같고, 별도의 하자가 없음에도 단순변심으로 인한 교환을 요구하는 경우</li>
                                <li>- 기타, '전자상거래 등에서의 소비자보호에 관한 법률' 등 관계법령이 정하는 교환/반품 제한사유에 해당되는 경우</li>
                                <ul>
                        </ul></ul></dd>
                    </dl>
                </div></div>
						<div class="product-purchase-caus_contents tab-content" id="tabContent3" role="tabpanel" style="display:none;">
								<div class="product-purchase-sec_contents product-purchase-sec_sellerinfo" style="">

 

                    <div class="product-purchase-sec_sellerwrap">

 

                        <div class="product-purchase-sec_seller">

 

                            <dl>

 

                                <dt>판매자명/상호명</dt>

 

                                <dd>GMQDisplay(주)</dd>

 

                                <dt>사업자등록번호</dt>

 

                                <dd>000-00-00000</dd>

 

                                <dt>사업자 전화번호</dt>

 

                                <dd><a href="tel:0000-0000" class="phone">0000-0000(GMQDisplay고객센터)</a></dd>

 

                                <dt>이메일</dt>

 

                                <dd>GMQDiplay@naver.com</dd>

 

                            </dl>

 

                        </div>

 

                        <div class="product-purchase-sec_seller">

 

                            <dl style="margin-top:0">

 

                                <dt>대표자명</dt>

 

                                <dd>홍길동</dd>

 

                                <dt>통신판매업신고번호</dt>

 

                                <dd>제0000-남서울대-0000호</dd>

 

                                <dt>주소</dt>

 

                                <dd>충청남도 천안시 GMQDisplay</dd>

 

                            </dl>

 

                        </div>

 

                    </div>

 

</div></div>
						</div>
		</div>
	</div>
<script type="text/javascript">
	/* 구매 시 유의사항 슬라이드 */
	var sliderCausTab =  {
		dots: false,
		arrows: true,
		slidesToShow: 6,
		variableWidth: true,
		infinite: true,
		responsive: [
		{
			breakpoint: 800,
			settings: "unslick" // mobile에서 unslick
		}]
	};
	if($(window).width() > 800) {
		if ( $(".product-purchase-caus_tab li").length > 6 ) {
			var aa = $(".product-purchase-caus_tab").slick(sliderCausTab);
		}
	}
	$(window).resize(function(){
		if($(window).width() > 800) {
			if ( $(".product-purchase-caus_tab li").length > 6 ) {
				var aa = $(".product-purchase-caus_tab").not('.slick-initialized').slick(sliderCausTab);
			}
		}
	});
	/* e : 20200811 구매 시 유의사항 슬라이드 */

</script></article>
	        </div>
	    </section>
	    <!-- e : 컴퍼넌트 영역 -->
	</div>
	 <!-- s : 패밀리넷 구매 동의 -->
	<div class="layer-pop layer-normal layer-family-agree" id="popupFmailyAgree" tabindex="0" data-popup-layer="popupFmailyAgree" data-focus="popupFmailyAgree">
	    <div class="layer-header">
	        <h2>패밀리넷 동일 품목 다량 구매 관련 안내</h2>
	    </div>
	    <div class="layer-content">
	        <p>
		       	구매자께서는 최근 동일 품목을 다량 (<span id="baseCount"></span>개 이상) 구매하고 계십니다.<br/><br/>
		       	패밀리넷 제품의 사외 유출과 부정 사용 예방을 위해 필요시 유관부서에서 별도 연락이 있을 수 있습니다.<br/><br/>
		       	재판매 등 부정 사용이 확인될 경우에는 사용권한 박탈 및 인사상 징계 조치 될 수 있음을 안내 드립니다.<br/><br/>
		       	상위 내용에 동의 및 구매 하시겠습니까?
	       	</p>
		</div>
		<div class="btn-box double">
			<!-- 버튼 두개시 클래스 double 추가 -->
			<a href="javascript:closeLayer('popupFmailyAgree');" class="btn btn-d btn-type1">동의 안함</a>
			<a href="javascript:goodsMain.fnFamliyNetCountLimitAgree();" class="btn btn-d btn-type2">동의함</a>
		</div>
		<input type="hidden" id="fnetOrderAgree" name="fnetOrderAgree" value="N" />
	</div>
	<!-- e : 패밀리넷 구매 동의 -->
	<div id="player"></div><!-- 레이어 팝업 모음 -------------------------------------------------------------------------------------------------------------------------------------------------------------------->
<!-- s : 공통 팝업(alert)  -->
<div class="layer-pop layer-default alert" id="commonAlert" tabindex="0" data-popup-layer="commonAlert" data-focus="commonAlert">
    <div class="layer-header blind"><h2></h2></div>
    <div class="layer-content">
        <p style="word-break:keep-all;"></p>
        <div class="btn-box">
            <a href="javascript:void(0)" onclick="" class="btn btn-d btn-type2">확인</a>
        </div>
    </div>
</div>
<!-- e : 공통 팝업(alert)  -->
<!-- s : 장바구니 팝업 --><!-- 추가된 부분 -->
<div class="layer-pop layer-default alert popup-msg" id="cartMsg" tabindex="0" data-popup-layer="popupMsg" data-focus="popupMsg" aria-hidden="false" style="display: none; z-index: 256;" data-zindex="256">
	<div class="layer-content">
		<p>제품이 장바구니에 추가되었습니다.</p>
		<div class="btn-box double">
			<a href="/GMQDisplay-master/mypage/cart.jsp" class="btn btn-d btn-type1 cart-view">장바구니 가기</a>
			<a href="javascript:void(0);" class="btn btn-d btn-type2 cont-shpng" onclick="$('.alert#cartMsg').hide(); $('#mask').remove();">쇼핑 계속하기</a>
		</div>
	</div>
	<button type="button" class="pop-close" onclick="$('.alert#cartMsg').hide(); $('#mask').remove();">툴팁 닫기</button>
</div>
<!-- e : 장바구니 팝업 --><!-- 추가된 부분 -->
<!-- s : 공통 팝업(confirm)  -->
<div class="layer-pop layer-default" id="commonConfirm" tabindex="0" data-popup-layer="commonConfirm" data-focus="commonConfirm">
    <div class="layer-header blind">
        <h2></h2>
    </div>
    <div class="layer-content">
        <p></p>
        <div class="btn-box double">
            <!-- 버튼 두개시 클래스 double 추가 -->
            <a href="javascript:void(0)" class="btn btn-d btn-type1 accessibility-pop-close" id="commonConfirmCancelBtn" onclick="closeLayer('commonConfirm');">취소</a>
            <a href="javascript:void(0)" class="btn btn-d btn-type2" id="commonConfirmOkBtn">확인</a>
        </div>
    </div>
    <button type="button" class="pop-close accessibility-pop-close" id="closeCommonConfirmBtn" name="closeCommonConfirmBtn" data-focus-next="commonConfirm">팝업닫기</button>
</div>
<!-- e : 공통 팝업(confirm)  -->
<!-- s : 공통 팝업(confirm2)  -->
<div class="layer-pop layer-default" id="commonConfirm2" tabindex="0" data-popup-layer="commonConfirm2" data-focus="commonConfirm2">
    <div class="layer-header blind">
        <h2></h2>
    </div>
    <div class="layer-content">
        <p></p>
        <div class="btn-box double">
            <!-- 버튼 두개시 클래스 double 추가 -->
            <a href="javascript:void(0)" class="btn btn-d btn-type1 accessibility-pop-close" id="commonConfirmCancelBtn2" onclick="closeLayer('commonConfirm2');">취소</a>
            <a href="javascript:void(0)" class="btn btn-d btn-type2" id="commonConfirmOkBtn2">확인</a>
        </div>
    </div>
</div>
<!-- e : 공통 팝업(confirm2)  --></div>
		<!-- e : 본문 영역 -->

		<!-- 플로팅 메뉴 -->
		<!-- s : 220615 웹 접근성 수정 : css 삽입 -->
<style>/* s : num_5 */
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
		<!--<div class="menu-list">
			<div class="inner">
				<a href="#" class="btn-floating" onclick="floating_open();"><span>메뉴 보기</span></a>
				<ul>
					<li class="menu01" aria-hidden=""><a href="javascript:chat_open();">챗봇 채팅하기</a></li>
					<li class="menu02" aria-hidden=""><a href="javascript:chat_open2();">구매 상담사 채팅하기</a></li>
					<li class="menu03" aria-hidden="true" style="display:none;"><a href="../../../customer/reservationstore/index%EF%B9%96ref=floating%EA%A4%B7.html" onclick="chat_open3();">매장 방문 예약하기</a></li>
					<li class="menuGift"><a href="javascript:gift_open();" data-omni="float chat:event gift">선물하기</a></li>
				</ul>
			</div>
		</div>-->
		<button type="button" class="btn-gotop">
			<span>위로</span>
		</button>
	</div>
	<script>
		floatSticky();
		
		function firstRecentGoods(){
			
			$.ajax({
				 url : "/sec/xhr/goods/getFirstRecentGoods"
				,type : "POST"
				,success : function(result) {
					var recentGoodsData = JSON.parse(result);
					
					if(recentGoodsData.recentYn === "Y"){
						$("floatingSticky").find(".menu04").remove();
						var html = "";
						html += '<li class="menu04">'
						html += '<a href="#" id = "btn-rcntgoods-floating" type="button" onclick="showLatestItem(self,\'latestItemLayer\'); getRecentGoods(); return false" data-st-path ="'+recentGoodsData.stContextPath+'"  data-popup-target="latestItemLayer" >'
						html += '<span> <img src="'+recentGoodsData.recentImgPath+'?$128_128_PNG$" alt="'+ recentGoodsData.recentGoodsNm +'"> 최근 본 제품 ('+recentGoodsData.recentGoodsLength+')</span>'
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
		if(device.agent.indexOf('secapp') >= 0 || device.agent.indexOf('sectest') >= 0){
			if("N" === "N"){
				$("#floatingSticky").find(".menuAr").remove();
				var html = "";
				html +='<li class="menuAr">';
				html +='<a href="javascript:window.secapp.goToARService(\'S24AG320NK\',\'gaming-ls24ag320nkxkr-d2c\');">';
				html +='AR로 제품보기';
				html +='</a>';
				html +='</li>';
				$("#floatingSticky").find("ul").prepend(html);
			}			
		}else{
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
	$(document).on("click", "#dropClauseList01 .droplist-item", function(e) {
		var id = $(this).attr("id");
		
		if (id == "optServiceClause03") {
			location.href = "/sec/membership/terms/"; 
		}
    });
	
	function openPrivacy() {
		var agent = navigator.userAgent.toLowerCase();
		
		if ( ( (navigator.appName === 'Netscape' && agent.indexOf('trident') !== -1) || (agent.indexOf("msie") !== -1))){ // ie
			window.open("https://www.eprivacy.or.kr/front/certifiedSiteMark/certifiedSiteMarkPopup.do?certCmd=E&certNum=2023-E-R002", "popup", "width=650, height=900, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no");
		} else {
			window.open("https://www.eprivacy.or.kr/front/certifiedSiteMark/certifiedSiteMarkPopup.do?certCmd=E&certNum=2023-E-R002", "popup", "width=550,height=750");
		}	
	}
	
	//협력회사 사이버 신문고(새창)
	function openCyberVoc() {
		var agent = navigator.userAgent.toLowerCase();
		if ( ( (navigator.appName === 'Netscape' && agent.indexOf('trident') !== -1) || (agent.indexOf("msie") !== -1))){ // ie
			window.open("https://www.secbuy.com/irj/servlet/prt/portal/prtroot/com.sec.gsrm.com.cybervoc.BoardComponent?submissionId=introductionGuest&boardId=E0009&entrance=samsung.com", "popup", "width=830,height=600, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no");
		} else {
			window.open("https://www.secbuy.com/irj/servlet/prt/portal/prtroot/com.sec.gsrm.com.cybervoc.BoardComponent?submissionId=introductionGuest&boardId=E0009&entrance=samsung.com", "popup", "width=830,height=600");	
		}
	}
	
</script>
<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "13bc3440ce4191";
if(window.wcs) {
wcs_do();
}
</script>
<!-- s : 220929 class명 바뀜 -->
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
												<li class="productLine2">
													<h3>추천 케어</h3>
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