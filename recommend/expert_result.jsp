<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.text.DecimalFormat" %>
<%String id = (String)session.getAttribute("sid");%>
<!DOCTYPE HTML>
<html lang="ko">
<head>

<title>Gaming Monitor Display</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="canonical" href="">
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="date" content="">
<meta name="sitecode" content="sec">


<meta name="twitter:card" content="">
<meta name="twitter:site" content="">
<meta name="twitter:creator" content="">
<meta name="twitter:url" content="">
<meta name="twitter:title" content="">
<meta name="twitter:description" content="">
<meta name="twitter:image" content="">

<!-- s: 2022.03.15 VAC 광고 세팅 중 웹사이트 확인을 위한 tag -->
<meta name="google-site-verification" content="Y5FXtKRkwrMXPsNBUlQe-3vZp4mtp_PZRy1jmEyp6wM" />
<!-- e: 2022.03.15 VAC 광고 세팅 중 웹사이트 확인을 위한 tag -->

<meta property="og:url" content="">
<meta property="og:image" content="">
<meta property="og:type" content="website">
<meta property="og:site_name" content="Samsung sec">
<meta property="og:locale" content="ko">
<meta property="og:title" content="">
<meta property="og:description" content="">
<meta property="og:country-name" content="sec">

<meta itemprop="name" content="Samsung sec">
<meta itemprop="image" content="">
<meta itemprop="url" content="">
<meta itemprop="description" content="">
<meta itemprop="keywords" content="">

<link rel="dns-prefetch" href="//images.samsung.com">
<link rel="preconnect" href="//images.samsung.com">
<link rel="shortcut icon" href="/GMQDisplay-master/static/images/favicon.png">
<link rel="apple-touch-icon" href="" sizes="">

<link rel="stylesheet" href="/GMQDisplay-master/static/css/reset.css?ver=20230401081009">
<link rel="stylesheet" href="/GMQDisplay-master/static/css/slick.css?ver=20230401081009">
<link rel="stylesheet" href="/GMQDisplay-master/static/css/common.css?ver=20230401081009">
<link rel="stylesheet" href="/GMQDisplay-master/static/css/layout.css?ver=20230401081009">
<link rel="stylesheet" href="/GMQDisplay-master/static/css/pf.css?ver=20230401081009">
<link rel="stylesheet" href="/GMQDisplay-master/static/css/content_part01.css?ver=20230401081009">
<link rel="stylesheet" href="/GMQDisplay-master/static/css/content_part02.css?ver=20230401081009">
<link rel="stylesheet" href="/GMQDisplay-master/static/css/content_part03.css?ver=20230401081009">
<link rel="stylesheet" href="/GMQDisplay-master/static/css/content_part04.css?ver=20230401081009">
<link rel="stylesheet" href="/GMQDisplay-master/static/css/content_part05.css?ver=20230401081009">
<link rel="stylesheet" href="/GMQDisplay-master/static/css/content_part06.css?ver=20230401081009">
<link rel="stylesheet" href="/GMQDisplay-master/static/css/order.css?ver=20230401081009">
 <link rel="stylesheet" href="/GMQDisplay-master/static/css/cart.css?ver=20230401081009">
<link rel="stylesheet" href="/GMQDisplay-master/static/css/component.css?ver=20230401081009">
<link rel="stylesheet" href="/GMQDisplay-master/static/css/app.css?ver=20230401081009">
<link rel="stylesheet" href="/GMQDisplay-master/static/css/jquery-ui.min.css?ver=20230401081009">
<link rel="stylesheet" href="/GMQDisplay-master/static/css/swiper.min.css?ver=20230401081009">
<link rel="stylesheet" href="/GMQDisplay-master/static/css/homefitness.css?ver=20230401081009">

<script src="/GMQDisplay-master/static/script/jquery-3.3.1.min.js?ver=20230401081009"></script>
<script src="/GMQDisplay-master/static/script/jquery-ui.min.js?ver=20230401081009"></script>
<script src="/GMQDisplay-master/static/script/slick.js?ver=20230401081009"></script>
<script src="/GMQDisplay-master/static/script/slick-init.js?ver=20230401081009"></script>
<script src="/GMQDisplay-master/static/script/swiper.min.js?ver=20230401081009"></script>
<script src="/GMQDisplay-master/static/script/masonry.min.js?ver=20230401081009"></script><!-- masonry js -->
<script src="/GMQDisplay-master/static/script/jquery.blockUI.js?ver=20230401081009"></script>
<script src="/GMQDisplay-master/static/script/base.js?ver=20230401081009"></script>
<script src="/GMQDisplay-master/static/script/layerPop.js?ver=20230401081009"></script>
<script type="text/javascript" src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js" charset="utf-8"></script>
<script src="/GMQDisplay-master/static/script/netfunnel.js?ver=20230401081009" charset="UTF-8"></script>
<script src="/GMQDisplay-master/static/script/netfunnel_skin.js?ver=20230401081009" charset="UTF-8"></script>
<!-- <script src="/GMQDisplay-master/static/script/common.js?ver=20230401081009"></script> -->
<script src="/GMQDisplay-master/static/script/custom.js?ver=20230401081009"></script>
<script src="/GMQDisplay-master/static/script/sticky.min.js?ver=20230401081009"></script>
<script src="/GMQDisplay-master/static/script/jquery.cookie.js?ver=20230401081009"></script>
<script src="/GMQDisplay-master/static/script/search.js?ver=20230401081009"></script>
<script src="/GMQDisplay-master/static/script/component.js?ver=20230401081009"></script>
<script src="/GMQDisplay-master/static/script/jquery.ui.touch-punch.min.js?ver=20230401081009"></script>
<script src="/GMQDisplay-master/static/script/event/event.js?ver=20230401081009"></script>
<script src="/GMQDisplay-master/static/script/clipboard.min.js?ver=20230401081009"></script>
<script src="/GMQDisplay-master/static/script/buynow.js?ver=20230401081009"></script>
<script src="/GMQDisplay-master/static/script/orderQooker.js?ver=20230401081009"></script>
<script type="text/javascript" src="/GMQDisplay-master/static/script/order/orderAdbrix.js?ver=20230401081009"></script>
<script type="text/javascript" src="/GMQDisplay-master/static/script/picturePolyfill.min.js?ver=20230401081009"></script>
<script type="text/javascript">
	var checkActionTimeOut;
	$(document).ready(function () { 
		/*
		$.ajax({
			 url : "/GMQDisplay-master/xhr/member/getSession"
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
			location.href="/GMQDisplay-master/member/logout/";
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
	<script async src="//assets.adobedtm.com/c8a575b84bb9/0d8938615268/launch-160c25cdcd93.min.js"></script>
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
    window.open('/GMQDisplay-master/chatbot/?agepass='+ agepass, 'chatbot', 'status=no, height=750, width=356, left=' + popupX + ', top=' + popupY + ', screenX=' + popupX + ', screenY= ' + popupY);
}

function chat_open2() {
	fcTrack('click','floating chat:chat online');

	var gType = Math.round(Math.random() * 1) ? 'm' : 'f';

	var popupX = (window.screen.width / 2) - (356 / 2);
    var popupY = (window.screen.height / 2) - (750 / 2);
    window.open('/GMQDisplay-master/chatbot/?type=ep&c='+ gType, '_chatbot2', 'status=no, height=750, width=356, left=' + popupX + ', top=' + popupY + ', screenX=' + popupX + ', screenY= ' + popupY);
}

function chat_open3() {
	fcTrack('click','floating chat:offline store');
}

function gift_open() {
	fcTrack('click','float chat:event gift');
	window.location.href = '/GMQDisplay-master/' + "event/gift/";	
}

function floating_open() {
	fcTrack('click','floating chat');
}
logger("prd");
</script>

<!-- <script src="/GMQDisplay-master/static/script/clipboard.min.js"></script> -->
<script src="//t1.kakaocdn.net/kakao_js_sdk/v1/kakao.min.js"></script>
<script src="/GMQDisplay-master/static/script/jsrender.min.js"></script>
<script src="/GMQDisplay-master/static/script/jquery.form.min.js"></script>
<!-- <script src="/GMQDisplay-master/static/script/swiper.min.js"></script> -->
<script type="text/javascript" >

// JS Render Helpers 재 정의
$.views.helpers({
	fn_equals : function(A,B){ 
		return A==B 
	},
	fn_lt : function(A,B){
		return A<B
	},
	fn_gt : function(A,B){
		return A>B
	},
	fn_ne : function(A,B){
		return A!=B
	},
	// 값 유무 체크
	fn_notEmpty : function(A){ 
		if(typeof A == 'undefined' ){
			return false;
		}
		if( A == null ){
			return false;
		}
		if( A.length < 1 ){
			return false;
		}
		return true;
	},
	// 천단위 콤마
	fn_comma : function(value){
		var v=(value+'');var reg=/(^[+-]?\d+)(\d{3})/;var n= v.split(",").join("").replace(/^\s*|\s*$/g, '');while(reg.test(n)){n=n.replace(reg, '$1'+','+'$2');}
		return n;
	},
	fn_length : function(obj){
		if(typeof obj == 'object'){
			if(Array.isArray(obj)){
				return obj.length;
			}else{
				return Object.keys(compareData).length;
			}
		}else{
			return (obj+'').length;
		}
	},
	fn_first : function (obj){
		if(Array.isArray(obj)){
			return obj[0];
		}else{
			var keys = Object.keys(compareData);
			return obj[(keys[0])];
		}
	},
	fn_last : function (obj){
		if(Array.isArray(obj)){
			return obj[obj.length-1];
		}else{
			var keys = Object.keys(compareData);
			return obj[(keys[keys.length-1])];
		}
	},
	fn_default : function (val, v){
		if(typeof val == 'undefined'){
			return v;
		}else if(val == null){
			return v;
		}else if(val == ''){
			return v;
		}
		return val;
	}
});

// JS Render Tag 재 정의
$.views.tags('script',{   // 스크립트
	init : function(tagCtx){
		switch (tagCtx.props.mode) {
		case 'include':
			this.template = '<'+'script type="text/javascript" src="{{:}}"></'+'script>';
			break;
		case 'open':
			this.template = '<'+'script type="text/javascript">';
			break;
		case 'close':
			this.template = '</'+'script>';
			break;
		default:
			this.template = '{{:}}';
			break;
		}
	}
});


</script><script src="/GMQDisplay-master/static/script/snsShare.js"></script>
		<script src="/GMQDisplay-master/static/script/jquery.mCustomScrollbar.js"></script>
		<script>
			viewportChange();
		</script>	
		<script>
			document.addEventListener("DOMContentLoaded", function(){
		        var hash = location.hash;
		        var hashArr = hash.split('_');
		        if (hashArr[0] == '#compare'  && hashArr[1] != null) {
		                 if ($('.compare')) {
		                         setTimeout(function () {
		                                    $('.compare a[data-mdl-code="' + hashArr[1] + '"]').trigger('click')
		                                }, 3500);
		                         setTimeout(function () {
		                        	$('button.btn.btn-d.btn-type2.btn-compare').trigger('click')
		                                }, 6000);
		                }
		        }
		
			});	
		
				
		</script>			
		<!-- s : 220624 수정 : 스크립트 추가 -->
		<script>
		$(window).resize(function(){
			var windowWidth = window.innerWidth;
			if(windowWidth > 800){								
				$(".ranking li button").attr("tabindex","0");	
				$(".ranking li a").attr("tabindex","0");	
			}else{
				$(".ranking li button").attr("tabindex","-1");	
				$(".ranking li a").attr("tabindex","-1");	
				$(".slick-active a").attr("tabindex","0");	
				$(".slick-active button").attr("tabindex","0");	
			}
		});
		</script>
	<!-- e : 220624 수정 : 스크립트 추가 -->
<script>(window.BOOMR_mq=window.BOOMR_mq||[]).push(["addVar",{"rua.upush":"false","rua.cpush":"true","rua.upre":"false","rua.cpre":"false","rua.uprl":"false","rua.cprl":"false","rua.cprf":"false","rua.trans":"SJ-e6be25e2-4da6-4fd4-b40a-cd3f0e72250f","rua.cook":"false","rua.ims":"false","rua.ufprl":"false","rua.cfprl":"true","rua.isuxp":"false","rua.texp":"norulematch"}]);</script>
                              <script>!function(a){var e="https://s.go-mpulse.net/boomerang/",t="addEventListener";if("False"=="True")a.BOOMR_config=a.BOOMR_config||{},a.BOOMR_config.PageParams=a.BOOMR_config.PageParams||{},a.BOOMR_config.PageParams.pci=!0,e="https://s2.go-mpulse.net/boomerang/";if(window.BOOMR_API_key="VRZKC-5BSTD-4EWS3-R2J59-B8GYB",function(){function n(e){a.BOOMR_onload=e&&e.timeStamp||(new Date).getTime()}if(!a.BOOMR||!a.BOOMR.version&&!a.BOOMR.snippetExecuted){a.BOOMR=a.BOOMR||{},a.BOOMR.snippetExecuted=!0;var i,_,o,r=document.createElement("iframe");if(a[t])a[t]("load",n,!1);else if(a.attachEvent)a.attachEvent("onload",n);r.src="javascript:void(0)",r.title="",r.role="presentation",(r.frameElement||r).style.cssText="width:0;height:0;border:0;display:none;",o=document.getElementsByTagName("script")[0],o.parentNode.insertBefore(r,o);try{_=r.contentWindow.document}catch(O){i=document.domain,r.src="javascript:var d=document.open();d.domain='"+i+"';void(0);",_=r.contentWindow.document}_.open()._l=function(){var a=this.createElement("script");if(i)this.domain=i;a.id="boomr-if-as",a.src=e+"VRZKC-5BSTD-4EWS3-R2J59-B8GYB",BOOMR_lstart=(new Date).getTime(),this.body.appendChild(a)},_.write("<bo"+'dy onload="document._l();">'),_.close()}}(),"".length>0)if(a&&"performance"in a&&a.performance&&"function"==typeof a.performance.setResourceTimingBufferSize)a.performance.setResourceTimingBufferSize();!function(){if(BOOMR=a.BOOMR||{},BOOMR.plugins=BOOMR.plugins||{},!BOOMR.plugins.AK){var e="true"=="true"?1:0,t="",n="ah3ivhaxepogszbjojia-f-4d7854b9e-clientnsv4-s.akamaihd.net",i="false"=="true"?2:1,_={"ak.v":"34","ak.cp":"143520","ak.ai":parseInt("293013",10),"ak.ol":"0","ak.cr":17,"ak.ipv":4,"ak.proto":"h2","ak.rid":"197a0431","ak.r":31195,"ak.a2":e,"ak.m":"x","ak.n":"essl","ak.bpcip":"1.246.138.0","ak.cport":49854,"ak.gh":"23.35.218.6","ak.quicv":"","ak.tlsv":"tls1.3","ak.0rtt":"","ak.csrc":"-","ak.acc":"","ak.t":"1680437840","ak.ak":"hOBiQwZUYzCg5VSAfCLimQ==M/sUqaNQvpwLVX337zY6GTufsGVZ+ateXwMsQV6q2CCA1uBNptZgsVVzH5WymAEe0IIzRQypKDwTGByek3ps39Bos6JKbujnXDTuWJbYoEZmX1nF+UZ3HllkxOOvMN5rLSakc+x0Yvt9J6h3O3z7z4BvHbGbyX8C5KBJVf58nsIyN6ltAizabCG8IgHkj8qDERU8rpOFAAGKvlIGsiC1JT2AwimjXrVjMWfr4xEcZ/vECXog672a8HNNrJFJ2T9cLFj0gnRT0xseLApNFLQQ7xuLVOsHiiNwn6QgkvIfW7K4na4LwDGIezBSMgFfO88I8LR8DcTzVWc1zMF4rc780SpYsK4fiBNLswD4gV+QnSJzPmYTC/YDaacwQ/k3pUALv2Hdk9Y/9JS3sF5pf6ZU6F/CBxsX1gP+UCVhB8gq2Xk=","ak.pv":"2904","ak.dpoabenc":"","ak.tf":i};if(""!==t)_["ak.ruds"]=t;var o={i:!1,av:function(e){var t="http.initiator";if(e&&(!e[t]||"spa_hard"===e[t]))_["ak.feo"]=void 0!==a.aFeoApplied?1:0,BOOMR.addVar(_)},rv:function(){var a=["ak.bpcip","ak.cport","ak.cr","ak.csrc","ak.gh","ak.ipv","ak.m","ak.n","ak.ol","ak.proto","ak.quicv","ak.tlsv","ak.0rtt","ak.r","ak.acc","ak.t","ak.tf"];BOOMR.removeVar(a)}};BOOMR.plugins.AK={akVars:_,akDNSPreFetchDomain:n,init:function(){if(!o.i){var a=BOOMR.subscribe;a("before_beacon",o.av,null,null),a("onbeacon",o.rv,null,null),o.i=!0}return this},is_complete:function(){return!0}}}}()}(window);</script></head>
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

//현재 페이지 앱 열기
function appOpen(){
	var locationUrl = window.location.href;
	var appUrl = ('https:/..androidprd.page.link/?link=' + locationUrl + '&apn=com.samsung.sec.android.prd&afl=https://apps.samsung.com/appquery/appDetail.as?appId=com.samsung.sec.android.prd');
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
	location.href = "/GMQDisplay-master/member/logout/";
}

function writableCommentM(){
	writableCommentSetC();
	location.href = '/GMQDisplay-master/mypage/review/indexMyReview/';
	
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
		var commentStr = "<li class='menu05' aria-hidden=''><a href='/GMQDisplay-master/mypage/review/indexMyReview/'>상품평 쓰기</a></li>";	
		$("#floatingSticky").find(".menuGift").after(commentStr);
	}else{
		$("#floatingSticky").find(".menu05").remove();
	}
}

function writableComment(){
	var commentPopYN = getCookieA("commentPopYN");
	var locationUrl = window.location.href;
	
	$.ajax({
		 url : "/GMQDisplay-master/xhr/review/loadWritableMyCommentList"
		,type : "POST"
		,success : function(data) {
			$(".review-produck-list").find("div").remove();
			$("#floatingSticky").find(".menu05").remove();
			var CpCondition = (commentPopYN !="N" && "N" == "N"
					&&(locationUrl=="https://dev-www.samsung.com/GMQDisplay-master/" || locationUrl == "https://stg-www.samsung.com/GMQDisplay-master/" || locationUrl == "https://www.samsung.com/GMQDisplay-master/"));
			
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
					url: '/GMQDisplay-master/xhr/search/recommendkeyword/',
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
			$('.inp-placeholder').text(that.recommendKeyword); // 20200917 추가
		},
		
		getPopularKeyword: function() {
			var that = searchInputManager;
			that.callAjax(
				{
					url: '/GMQDisplay-master/xhr/search/popword/',
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
					url: '/GMQDisplay-master/xhr/search/autocom/',
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
				url: '/GMQDisplay-master/xhr/search/keywordRedirect?keyword=' + encodeURIComponent(keyword),
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
					$form.setAttribute('action', '/GMQDisplay-master/search/searchresult/' + tab + '?keyword=' + encodeURIComponent(keyword));
					
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
	
	function searchOpenforApp() { // 20200917 추가
		searchLinkforApp();
		headerSearch.eventListener.uinifiedSearchOpen();
	}
	/* e : 20200917 수정 */
	
	/* e: APP용 함수 */
	
	/* s : 닷컴 웹 검색시 챗봇 검색 연계 구현  jiwon0.id 22.04.26 */
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
				
			    window.open('/GMQDisplay-master/chatbot/?keyword='+ keyword+'&agepass='+agepass, '_chatbot4', 'status=no, height=750, width=356, left=' + popupX + ', top=' + popupY + ', screenX=' + popupX + ', screenY= ' + popupY);
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
	
	 /* s : 만 나이별로 agepass 구분값 설정 함수 @param birthAge : 만나이   14세 이상 : 'y'   로그인하지 않을경우 : 'u'   jiwon0.id 22.06.09 */
	function checkAgepass(birthAge){
    	var agepass = null;  

   	    if( birthAge == 0 || birthAge == null ) {
   	            agepass = "u";
   	    } else if(birthAge >= 14) {
   	            agepass = "y";
   	    }
   	    
   	    return agepass
     }
	/* e : 만 나이별로 agepass 구분값 설정 함수  jiwon0.id 22.06.09 */
	
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
		
		$('#unifiedInputSearch').on('click', function() { //20210324 추가
			$('.inp-placeholder').hide();
		}); 
		
		/* s : 닷컴 웹 검색시 챗봇 검색 연계 구현  jiwon0.id 22.04.26 */
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
		/* e : 닷컴 웹 검색시 챗봇 검색 연계 구현  jiwon0.id 22.04.26 */
		
	});
	
	
</script>
<!-- s : 통합검색 -->
<div class="unified-search-input-wrap">
	<div class="unified-search-input-inner">
		<div class="search-box">
			<label for="unifiedInputSearch" class="blind">통합 검색</label><!-- 20200622 for 값 변경 -->
			<input type="text" id="unifiedInputSearch" class="inp" onfocus="headerSearch.eventListener.uinifiedSearchInp()"
			onkeydown="headerSearch.eventListener.uinifiedSearchChange()">
			<span class="inp-placeholder"></span><!-- 20200917 추천검색어 추가 -->
			<button type="button" class="btn-inp-clear" title="삭제"><span class="blind">삭제</span></button><!-- 20200616 삭제 버튼 추가-->
			<button type="button" class="btn-search" title="검색" id="unifiedSearchButton" onclick="javascript:searchInputManager.getSearchResult($('#unifiedInputSearch').val(), '#unifiedInputSearch')"><span class="blind">검색</span></button>
		</div>
	</div>

	<!-- s : 검색레이어 : 최근, 인기-->
	<div class="unified-search-layer type-keyword" style="display:none">
		<div class="unified-search-layer-inner"><!-- 20200618 감싸는 태그 unified-search-layer-inner 추가 -->
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
		</div><!-- 20200618 감싸는 태그 unified-search-layer-inner의 닫는 태그 추가 -->
		<button type="button" class="btn-close-search"><span class="blind">검색 레이어 닫기</span></button><!-- 20200618 닫는 태그 추가--><!-- 20200622 button type 변경-->
	</div>
	<!-- e : 검색레이어 : 최근, 인기-->

	<!-- s : 검색레이어 : 자동 완성-->
	<div class="unified-search-layer type-auto" style="display:none">
		<div class="unified-search-layer-inner"><!-- 20200618 감싸는 태그 unified-search-layer-inner 추가 -->
			<div class="layer-cont" id="searchAuto">
				<ul class="list">
				</ul>
			</div>
		</div><!-- 20200618 감싸는 태그 unified-search-layer-inner의 닫는 태그 추가 -->
		<button type="button" class="btn-close-search"><span class="blind">검색 레이어 닫기</span></button><!-- 20200618 닫는 태그 추가--><!-- 20200622 button type 변경-->
	</div>
	<!-- e : 검색레이어 : 자동 완성-->
	
	<button type="button" class="btn-close-search"><span class="blind">검색 레이어 닫기</span></button><!-- 20200622 button type 변경-->
</div>
<!-- e : 통합검색 --><!-- e : 통합검색 -->

	<!-- s : 본문 영역 -->
	<div id="container" class='' >

		<!-- s : 페이지 로케이션 영역 -->
			<script type="text/javascript">
			getDispPathByUrl();
	        
			function getDispPathByUrl() {
				
				let stId = "1";
				let reqUri = "/GMQDisplay-master/recommend/recommendresult/";
				reqUri = reqUri.replace("/GMQDisplay-master/", "");
				if (reqUri.length == 0) return;
		    	
				let tmp = "";
				
				if("" === "Y") return;
				
				if(reqUri.indexOf('homefitness') > -1) {
					return;
				}
				
				$.ajax({
					 url : "/GMQDisplay-master/xhr/display/getGnbByUrl"
					,type : "POST"
					,data : {stId:stId, linkUrl:reqUri}
					,success : function(data) {
						list = data.list;
						if (list == null) return;
		   				
						$.each(list, function(idx, obj) {
							if (obj.linkUrl.length > 0) {
		   						tmp += '<a href="/GMQDisplay-master/'+obj.linkUrl+'">'+obj.dispClsfNm+'</a>';
							} else if(obj.dispClsfNm != obj.upDispClsfNm){	//동일명칭 Depth Skip 2020.09.14 YJU
		   						tmp += "<span>"+obj.dispClsfNm+"</span>";
		   					}
		   				});
		   				
						if (tmp == '') return;
						let html = "";
						html += "<div class=\"pg-location-inner locationDiv\">";
						html += "<a href='/GMQDisplay-master/'>HOME</a>";
						html += tmp;
						html += "</div>";
						$(".pg-location").html(html);
					}
				});
			}
        </script>
<!-- s : 본문 영역 -->
    <div id="container" >
    	<input type="hidden" id="page" value="1">
   		<input type="hidden" id="rows" value="15">
   		<input type="hidden" id="presentPrdCount" value="0">
    	<input type="hidden" id="rcmndTotalCount" value="0">
    	<input type="hidden" id="addRcmndTotalCount" value="0">
    	
    	<!--<article class="copmpo-rcmd-kv">
			<picture data-alt="추천하기 메인 이미지 - 예시" data-default-src="//images.samsung.com/kdp/_pub/rcmd/kv_rcmd_pc.jpg">
				<source media="(max-width: 799px)" srcset="//images.samsung.com/kdp/_pub/rcmd/kv_rcmd_mo.jpg">
				<source media="(min-width: 800px)" srcset="//images.samsung.com/kdp/_pub/rcmd/kv_rcmd_pc.jpg">
				<img src="//images.samsung.com/kdp/_pub/rcmd/kv_rcmd_pc.jpg" alt="">
			</picture>
			<section class="hddng">
						<p>
							게임용부터 전문가용까지 <br> 나에게 딱 맞는 모니터를 알고싶다면?
						</p>
						<h1>MY 게이밍 모니터 추천받기</h1>
			</section>
		</article>-->

<!-- 추천제품 -->
<%
int count = 0;
	request.setCharacterEncoding("utf-8");

	String genre = request.getParameter("genre");
	String price = request.getParameter("price");
	String double_monitor = request.getParameter("double");
	String doubleStr = "";
	if (double_monitor.equals("yes")) {
		double_monitor = "지원";
		doubleStr = "더블모니터 지원";
	}
	else {
		double_monitor = "미지원";
		doubleStr = "더블모니터 미지원";
	}

	String speaker = request.getParameter("speaker");
	String speakerStr = "";
	if (speaker.equals("yes")) {
		speaker = "지원";
		speakerStr = "내장스피커 지원";
	} else {
		speaker = "미지원";
		speakerStr = "내장스피커 미지원";
	}
	String color = request.getParameter("color");
	String colorStr = "";
	if (color.equals("")) {
		colorStr = "색역 미지원";
	} else {
		colorStr = "색역 지원";
	}

	int max = 0;
	int min = 0;
	String resolution = request.getParameter("resolution");
	String panel = request.getParameter("panel");
	String inchValue = request.getParameter("inch") + "인치";

	if (price.equals("10")) {
		price = "10만원대";
		max = 200000;
		min = 100000;
	} else if (price.equals("20")) {
		price = "20만원대";
		max = 300000;
		min = 200000;
	} else if (price.equals("20")) {
		price = "30만원대";
		max = 400000;
		min = 300000;
	} else {
		price = "가격 상관없어요";
		max = 99999999;
		min = 0;
	}

	if (resolution.equals("1080p"))
		resolution = "1920 x 1080(FHD)";
	else if (resolution.equals("1440p"))
		resolution = "2560 x 1440(QHD)";
	else if (resolution.equals("4K"))
		resolution = "3840 x 2160(4K UHD)";
	else if (resolution.equals("5K"))
		resolution = "5120 x 2880(QHD)";
	else if (resolution.equals("8K"))
		resolution = "7680 x 4320(QHD)";

	if (panel.equals("flat"))
		panel = "평면";
	else 
		panel = "커브드";

try {
	String db_url = "jdbc:mysql://localhost:3306/gpqd";
	String db_id = "root";
	String db_password = "1234";

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(db_url, db_id, db_password);

	String sql = "SELECT * FROM product WHERE Mgenre=? AND Mresolution=? AND Mform=? AND Msize=? AND (Mprice BETWEEN ? AND ?) AND Mdouble=?";
	if (!genre.equals("videogame")) {
		sql += " AND (Mspeaker=? OR";
		if (color.equals("yes"))
			sql += " Mcolor >= 100)";
		else 
			sql += " Mcolor < 100)";
	}
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, genre);
	pstmt.setString(2, resolution);
	pstmt.setString(3, panel);
	pstmt.setString(4, inchValue);
	pstmt.setInt(5, min);
	pstmt.setInt(6, max);
	pstmt.setString(7, double_monitor);

	if (!genre.equals("videogame")) {
		pstmt.setString(8, speaker);
	}

	ResultSet rs = pstmt.executeQuery();
	while(rs.next()) {
		count++;
	}
	rs.close();
%>
		<article class="copmpo-rcmd-area rslt">
		
			<div class="title">
				<h2>고객님께 딱 맞는 <br class="mo-block"><span>모니터 제품 <%=count%>개</span>를 추천해드려요</h2>
			</div>
			<div class="contnts-box">
				<section class="result-info top">
					<!-- 선택 된 조건 --> 
					<dl>
						<dt class="blind">내가 선택한 조건</dt>
						<dd><strong>#</strong><%=genre%></dd>
						<dd><strong>#</strong><%=price%></dd>
						<dd><strong>#</strong><%=resolution%></dd>
						<dd><strong>#</strong><%=panel%></dd>
						<dd><strong>#</strong><%=inchValue%></dd>
						<dd><strong>#</strong><%=doubleStr%></dd>
						<dd><strong>#</strong><%=speakerStr%></dd>
						<dd><strong>#</strong><%=colorStr%></dd>
					</dl>
					<!-- 정렬 옵션 -->
					<div id="rcmndCycle" class="wrap-droplist">
						<button class="droplist-button" aria-haspopup="listbox" aria-labelledby="rcmndCycleTitle rcmndCycleBtn" id="rcmndCycleBtn">추천순</button>
						<ul class="droplist" tabindex="-1"  role="listbox" aria-labelledby="rcmndCycleTitle" aria-activedescendant="optRcmndCycle10"><!--aria-activedescendant에 선택된 li의 id 삽입-->
							<li id="optRcmndCycle10"  role="option" class="droplist-item focused" aria-selected="true" data-sort-type="10" data-omni="recommendedorder" tabindex="-1">추천순</li>
							<li id="optRcmndCycle20"  role="option" class="droplist-item" data-sort-type="20" data-omni="highprice" tabindex="-1">높은 가격순</li>
							<li id="optRcmndCycle30"  role="option" class="droplist-item" data-sort-type="30" data-omni="lowprice"tabindex="-1">낮은 가격순</li>
							<li id="optRcmndCycle40"  role="option" class="droplist-item" data-sort-type="40" data-omni="producthigh" tabindex="-1">상품평 높은순</li>
								</ul>
					</div>
				</section>
				<section class="rcmd-prdt-list ">
					<ul>
<%
	DecimalFormat df = new DecimalFormat("###,###");

	ResultSet rs2 = pstmt.executeQuery();

	while(rs2.next()) {
		int total = 0;
		int cnt = 0;
		double rating = 0;

		String sql_review = "SELECT * FROM review WHERE Mno=?";
		PreparedStatement pstmt_review = con.prepareStatement(sql_review);
		pstmt_review.setString(1, rs2.getString("Mno"));
		ResultSet rs_review = pstmt_review.executeQuery();

		while(rs_review.next()) {
			total += rs_review.getInt("review_rating");
			cnt++;
		}
		if (cnt == 0)
			rating = 0;
		else
			rating = (double)total / cnt;

		DecimalFormat df_rating = new DecimalFormat("#.#");
		String format_rating = df_rating.format(rating);
%>
						<li class="item" id="li-prd-G000261003">
							<form name="form<%=rs2.getString("Mno")%>" id="form<%=rs2.getString("Mno")%>" method="post">
								<input type="hidden" name="Mno" value="<%=rs2.getString("Mno")%>" />
							</form>
							<div class="prdt-box">
								<!-- <div class="bdge">
									<strong>닷컴<br>추천</strong>
								</div> -->
								<div class="top">
									<div class="tag">
										<ul></ul>
										<%
										if (id != null) {
											String sql_wish = "SELECT * FROM wishlist WHERE userID=? AND Mno=?"; 
											PreparedStatement pstmt_wish = con.prepareStatement(sql_wish);
											pstmt_wish.setString(1, id);
											pstmt_wish.setString(2, rs2.getString("Mno"));

											ResultSet rs_wish = pstmt_wish.executeQuery();
											if (rs_wish.next()) {
										%>
										<button title="" type="submit" form="form<%=rs2.getString("Mno")%>" class="btn-rcmd-good click-good on" data-goods-id="<%=rs2.getString("Mno")%>" data-omni="wish_on">
											<span class="blind">툴팁보기(레이어열림)</span>
										</button>
										<%
											} else {
										%>
										<button title="" type="submit" form="form<%=rs2.getString("Mno")%>" class="btn-rcmd-good click-good" data-goods-id="<%=rs2.getString("Mno")%>" data-omni="wish_on">
											<span class="blind">툴팁보기(레이어열림)</span>
										</button>
										<%
											}
										} else {
										%>
										<button title="" class="btn-rcmd-good click-good" data-goods-id="<%=rs2.getString("Mno")%>" data-omni="wish_on" onClick="location.href='/GMQDisplay-master/login_info/login.html';">
											<span class="blind">툴팁보기(레이어열림)</span>
										</button>
										<%
											}
										%>
										<div class="bookmarkTooltip flashTooltip bookmarkOn<%=rs2.getString("Mno")%>">
											<div>
												<p><span>찜</span>이 되었습니다.</p>
												<a href="/GMQDisplay-master/mypage/mywishlist.jsp" class="btn-underline">전체보기</a>
											</div>
										</div>
										<div class="bookmarkTooltip flashTooltip bookmarkOff<%=rs2.getString("Mno")%>">
											<div>
												<p><span>찜</span>이 취소되었습니다.</p>
											</div>
										</div>
									</div>
									<div class="info">
										<div class="img">
										<!-- 마우스 오버시 이미지 순차교체  -->
											<img src="/GMQDisplay-master/static/images/product/<%=rs2.getString("Mno")%>_1.png">
										</div>
										<div class="dtl">
											<h1><%=rs2.getString("Mname")%></h1> <!-- 상품명 -->
											<p><%=rs2.getString("Mno")%></p> <!-- 상품번호 -->
											<div class="price-detail">
												<span class="price"><%=df.format(Integer.parseInt(rs2.getString("Mprice")))%>원</span>
												<div class="sale">
													<em><%=df.format(Integer.parseInt(rs2.getString("Msale")))%></em><span>원</span> <!-- 상품가격 -->
													<button class="btn-downtool" aria-hidden="true"><span class="blind">툴팁보기(레이어열림)</span></button>
													<!-- s : 툴팁 -->
													<div class="box-tip" aria-hidden="true" style="display: none;">
														<ul>
															<li>
																<span class="tit">기준가</span><del class="price"><%=df.format(Integer.parseInt(rs2.getString("Mprice")))%>원</del>
															</li>
															<li>
																<span class="tit">회원가</span><del class="price"><%=df.format(Integer.parseInt(rs2.getString("Mperson")))%>원</del>
															</li>
															<li class="total">
																<span class="tit">혜택가</span><span class="price"><%=df.format(Integer.parseInt(rs2.getString("Msale")))%>원</span>
															</li>
														</ul>
													</div>
													<!-- e : 툴팁 -->
												</div>
											</div>
											<div class="point-detail">
												<span class="expect">적립 예정 포인트</span><strong class="point"><%=Integer.parseInt(rs2.getString("Msale"))/100%>P</strong>
											</div>
											<div class="cta"><!-- 200723 href 속성 삭제 -->
												<button class="btn btn-type1 btn-rcmd-prdt" onclick="location.href = '/GMQDisplay-master/product/<%=rs2.getString("Mno")%>.jsp'">자세히 보기</button>
											</div>
										</div>
									</div>
								</div>
								<div class="bot">
									<div class="feature">
										<div class="titl">
											<strong>제품 특징</strong>
										</div>
										<ul>
											<li><%=rs2.getString("Mfeatures1")%></li>
											<li><%=rs2.getString("Mfeatures2")%></li>
											<li><%=rs2.getString("Mfeatures3")%></li>
										</ul>
									</div>
									<div class="epilogue">
										<div class="titl">
											<strong>후기 보기</strong>
											<a href="/sec/tvs/neo-qled-8k-qnb800fxkr-d2c/KQ75QNB800FXKR/?focus=review" title="상품평점" data-omni="productcomment">
												<div class="num">
													<p class="blind">툴팁보기(레이어열림)</p><%=format_rating%><span> <!-- (<%=cnt%>) --></span>
												</div>
											</a>
										</div>
										<ul class="list-box slick-initialized slick-slider">
											<div class="slick-list draggable">
												<div class="slick-track" style="opacity: 1; width: 660px; transform: translate3d(0px, 0px, 0px);">
												<%
												try {
													String sql_review2 = "SELECT * FROM review WHERE Mno=? LIMIT 2";
													PreparedStatement pstmt_review2 = con.prepareStatement(sql_review2);
													pstmt_review2.setString(1, rs2.getString("Mno"));

													ResultSet rs_review2 = pstmt_review2.executeQuery();
													if (!rs_review2.next()) {
												%>
														<div style="text-align: center; margin-top: 50px;">
															<h3>후기가 없습니다.</h3>
														</div>
												<%
													} else { 
														do {
												%>
													<li class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" tabindex="-1" aria-describedby="slick-slide20" style="width: 330px;">
														<a href="/sec/tvs/neo-qled-8k-qnb800fxkr-d2c/KQ75QNB800FXKR/?focus=review" title="상품평점" data-omni="productcomment" tabindex="0">
															<div class="item">
																<div class="stars point-<%=rs_review2.getInt("review_rating")%>">
																	<p class="blind">툴팁보기(레이어열림)</p>
																</div>
																<p><%=rs_review2.getString("review_comment")%></p>
															</div>
														</a>
													</li>
												<%
														} while (rs_review2.next());
													}
												} catch (Exception e) { out.print(e); }
												%>
												</div>
											</div>
										</ul>

									</div>
								</div>
							</div>
						</li>
<script>
	$('#form<%=rs2.getString("Mno")%>').submit(function(event) {
		event.preventDefault();
		$.ajax({
			url: "/GMQDisplay-master/xhr/wishlist_insert.jsp",
			type: "POST",
			data: $('#form<%=rs2.getString("Mno")%>').serialize(),
			success: function(data) {
				$('.btn-rcmd-good[data-goods-id="<%=rs2.getString("Mno")%>"]').toggleClass('on');
  
				if ($('.btn-rcmd-good[data-goods-id="<%=rs2.getString("Mno")%>"]').hasClass('on')) {
					$('.bookmarkOff<%=rs2.getString("Mno")%>').css('display', 'none');
					$('.bookmarkOn<%=rs2.getString("Mno")%>').css('display', 'block');
				} else {
					$('.bookmarkOn<%=rs2.getString("Mno")%>').css('display', 'none');
					$('.bookmarkOff<%=rs2.getString("Mno")%>').css('display', 'block');
				}

				var vTimer = setTimeout((function () {
					$('.bookmarkTooltip').fadeOut(300);
				}), 5000);

				$(document).click(function (e) {
					if ($btnGoods.has(e.target).length === 0) {
						clearTimeout(vTimer);
						$('.bookmarkOn').fadeOut(300);
						$('.bookmarkOff').fadeOut(300);
						btnclass.off();
					}
				});
			},
			error: function(jqXHR, textStatus, errorThrown) {
				console.log(errorThrown);
			}
		});
	});
</script>
<%
	}
} catch (Exception e) {
	out.print(e);
}
%>
					</ul>
				</section>
			</div>
				
			<section class="pf-container">
				<div class="pf-prd-cardlist" id="">
					<div class="list-product" id= "list-rcmnd-product">
						<ul class="list">
						</ul>
					</div>
				</div>	
			</section>
		</article>
			
		<article class="copmpo-rcmd-area etc" style="display:none;">
			<!-- 			추가추천상품 -->
				<!-- 추천결과 값이 있을 때 -->
				<div class="title">
					<h2>함께 추천드리고 싶은 제품을 보여드릴게요</h2>
				</div>
				
				<div class="contnts-box">
					<div class="result-info bot">
						<!-- 정렬 옵션 -->
						<div id="addRcmndCycle" class="wrap-droplist">
							<button class="droplist-button" aria-haspopup="listbox" aria-labelledby="addRcmndCycleTitle addRcmndCycleBtn" id="addRcmndCycleBtn">추천순</button>
							<ul class="droplist" tabindex="-1"  role="listbox" aria-labelledby="addRcmndCycleTitle" aria-activedescendant="optAddRcmndCycle10"><!--aria-activedescendant에 선택된 li의 id 삽입-->
								<li id="optAddRcmndCycle10"  role="option" class="droplist-item focused" aria-selected="true" data-sort-type="10" data-omni="recommendedorder" tabindex="-1">추천순</li>
								<li id="optAddRcmndCycle20"  role="option" class="droplist-item" data-sort-type="20" data-omni="highprice" tabindex="-1">높은 가격순</li>
								<li id="optAddRcmndCycle30"  role="option" class="droplist-item" data-sort-type="30" data-omni="lowprice"tabindex="-1">낮은 가격순</li>
								<li id="optAddRcmndCycle40"  role="option" class="droplist-item" data-sort-type="40" data-omni="producthigh" tabindex="-1">상품평 높은순</li>
									</ul>
						</div>
					</div>
				</div>
				
				
				<section class="pf-container">
					<div class="pf-prd-cardlist" id="">
						<div class="list-product" id= "list-add-rcmnd-product">
							<ul class="list">
							</ul>
						</div>
						
						<div class="pf-btn-box">
							<button id="morePrd" type="button" class="btn btn-type1 btn-d" style="display:none;" onclick="morePrd()" >더보기</button>
						</div>
					</div>
				</section>
			
		</article>
		
		<article class="copmpo-rcmd-btn">
			<a href="/GMQDisplay-master/recommend/index_game1.html">
				<button class="btn btn-l btn-rcmd-like" id="reset-recommend" data-omni="recommendedagain" >다른 조건으로 다시 추천받기</button>
			</a>
			<a href="/GMQDisplay-master/monitors.html">
				<button class="btn btn-l btn-rcmd-cart" id="go-pf-page" data-omni="productorder" >더 많은 제품 구매하기</button>
			</a>
			</article>
		
		<!-- <script src="/GMQDisplay-master/static/script/goods/goods-detail-view.js"></script> -->

		<article class="copmpo-rcmd-desc">
			<div class="pf-disclaimer">
				<!-- 타이틀 들어가야 합니다. -->
				<div class="title">
					<strong>꼭 확인하세요!</strong>
				</div>
				<div class="wrap-disc">
					* ‘자세히 보기’ 상품인 경우, 해당 상품은 현재 GMQ Display에서 상품 정보만 확인이 가능합니다. *
				</div>
			</div>
		</article>
    </div>

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
</body>

</html>
</body>
</html>