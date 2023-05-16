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
        
<div class="pg-location"></div><!-- e : 페이지 로케이션 영역 -->

			<!-- s : 최근 본 제품 -->
			<div id='latestItemLayer' class='layer-pop layer-normal floatingStyle'>
				<div class='layer-header'>
					<h2>최근 본 제품</h2>
				</div>
				<button type='button' class='pop-close' onclick = "closePop(latestItemLayer)" data-focus-next="latestItemLayer">
					<span class='blind'>최근 본 제품 닫기</span>
				</button>
				<div class="LatestItm-result">
					<p class="result-tit">
						<span>검색 결과</span><strong class="num">0</strong> 개 
					</p>
					<button type="button" class="btn btn-d btn-allListClear" onclick = "deleteRecentGoods('Y')" data-st-path ="/GMQDisplay-master/" data-focus-next="latestItemLayer">전체삭제</button>
				</div>
				<div class="caution-note">※ 최근 본 제품은 7일간 보관됩니다.</div>
			</div><!-- e : 최근 본 제품 -->

	<!-- s : 본문 영역 -->
    <div id="container" >
    	<input type="hidden" id="page" value="1">
   		<input type="hidden" id="rows" value="15">
   		<input type="hidden" id="presentPrdCount" value="0">
    	<input type="hidden" id="rcmndTotalCount" value="0">
    	<input type="hidden" id="addRcmndTotalCount" value="0">
    	
    	<article class="copmpo-rcmd-kv">
			<!-- KV Image -->
			<picture data-alt="추천하기 메인 이미지 - 예시" data-default-src="//images.samsung.com/kdp/_pub/rcmd/kv_rcmd_pc.jpg">
				<source media="(max-width: 799px)" srcset="//images.samsung.com/kdp/_pub/rcmd/kv_rcmd_mo.jpg">
				<source media="(min-width: 800px)" srcset="//images.samsung.com/kdp/_pub/rcmd/kv_rcmd_pc.jpg">
				<img src="//images.samsung.com/kdp/_pub/rcmd/kv_rcmd_pc.jpg" alt="">
			</picture>
			<!-- KV Title -->
			<section class="hddng">
						<p>
							게임용부터 전문가용까지 <br> 나에게 딱 맞는 모니터를 알고싶다면?
						</p>
						<h1>MY 게이밍 모니터 추천받기</h1>
			</section>
		</article>
<!-- 추천제품 -->
<%
int count = 0;
try {
	request.setCharacterEncoding("utf-8");

	String genre = request.getParameter("optStep1");
	String size = request.getParameter("optStep2");
	String form = request.getParameter("optStep3");
	int price = Integer.parseInt(request.getParameter("optStep4"));
	int max = 0;
	int min = 0;

	if (price == 10) {
		max = 200000;
		min = 100000;
	} else if (price == 20) {
		max = 300000;
		min = 200000;
	} else if (price == 30) {
		max = 400000;
		min = 300000;
	} else {
		max = 99999999;
		min = 0;
	}

	String db_url = "jdbc:mysql://localhost:3306/gpqd";
	String db_id = "root";
	String db_password = "1234";

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(db_url, db_id, db_password);

	String sql = "SELECT * FROM product WHERE Mgenre=? AND Msize=? AND Mform=? AND Mprice BETWEEN ? AND ?"; 
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, genre);
	pstmt.setString(2, size);
	pstmt.setString(3, form);
	pstmt.setInt(4, min);
	pstmt.setInt(5, max);

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
												<button class="btn btn-type1 btn-rcmd-prdt" onclick="netFunnel_Action_PF('/GMQDisplay-master/product/<%=rs2.getString("Mno")%>.jsp');return false;" data-omni="KQ85QNB800F|KQ75QNB800FXKR">자세히 보기</button>
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
			<a href="/GMQDisplay-master/index_game.html">
				<button class="btn btn-l btn-rcmd-like" id="reset-recommend" data-omni="recommendedagain" >다른 조건으로 다시 추천받기</button>
			</a>
			<a href="/GMQDisplay-master/monitors.html">
				<button class="btn btn-l btn-rcmd-cart" id="go-pf-page" data-omni="productorder" >더 많은 제품 구매하기</button>
			</a>
			</article>
		
		<!-- <script src="/GMQDisplay-master/static/script/goods/goods-detail-view.js"></script> -->

<!-- 비교하기 카드 템플릿 -->
<script id="compareSummaryTempl" type="text/x-jsrender">
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
					<a href="/GMQDisplay-master/{{:summary.goodsDetailUrl}}" class="prd-img"><img src="{{:summary.imgPath}}?$PG_PRD_CARD_PNG$" alt="{{:goodsDetail.goodsNm}}"></a><!-- 221230 : href 값 변경 -->
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
						<a class="link-review" target="_blank" href="/GMQDisplay-master/{{:summary.goodsDetailUrl}}?focus=review" title="상품평점">{{:goodsDetail.commentAvg}} ({{:goodsDetail.commentCnt}})</a><!-- 221230 -->
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
<script id="compareSummaryEmptyTempl" type="text/x-jsrender">
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
						<a href="/GMQDisplay-master/{{:summary.goodsDetailUrl}}" tabindex="0"><img src="{{:summary.imgPath}}?$PG_PRD_CARD_PNG$" alt="{{:goodsDetail.goodsNm}}"></a>
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
						<a class="link-review" target="_blank" href="/GMQDisplay-master/{{:summary.goodsDetailUrl}}?focus=review" title="상품평점" tabindex="0">{{:goodsDetail.commentAvg}} ({{:goodsDetail.commentCnt}})</a>
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
					<h3></h3><dl><dt></dt><dd><span></span></dd></dl>
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
	var expireDateDataStorage = '/GMQDisplay-master/'+'compare/expireDate';
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
	 	compareDataStorage = '/GMQDisplay-master/'+'compare/'+$("#compDispClsfEnNm").val(); 
		compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorage));
		
		/* 카테고리 스토리지 생성 */
		categoryDataStorage = '/GMQDisplay-master/'+'compare/category'; 
		categoryData = JSON.parse(localStorage.getItem(categoryDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(categoryDataStorage));
		
		/* total goodsId 스토리지 생성 */
		goodsIdDataStorage = '/GMQDisplay-master/'+'compare/goodsId'; 
		goodsIdData = JSON.parse(localStorage.getItem(goodsIdDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(goodsIdDataStorage));
		
		/* 마지막 담은 상품 스토리지 생성 */
		lastCompDataStorage = '/GMQDisplay-master/'+'compare/lastComp'; 
		lastCompData = JSON.parse(localStorage.getItem(lastCompDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(lastCompDataStorage));

	}else if('1' == '2'){
		/* 비교하기 스토리지 생성 */
	 	compareDataStorageFNET = '/GMQDisplay-master/'+'fnet/compare/'+$("#compDispClsfEnNm").val();
		compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET));
	
		/* 카테고리 스토리지 생성 */
		categoryDataStorageFNET = '/GMQDisplay-master/'+'fnet/compare/category';
		categoryDataFNET = JSON.parse(localStorage.getItem(categoryDataStorageFNET)) == null ? {}: JSON.parse(localStorage.getItem(categoryDataStorageFNET));
	
		/* total goodsId 스토리지 생성 */
		goodsIdDataStorageFNET = '/GMQDisplay-master/'+'fnet/compare/goodsId';
		goodsIdDataFNET = JSON.parse(localStorage.getItem(goodsIdDataStorageFNET)) == null ? {}: JSON.parse(localStorage.getItem(goodsIdDataStorageFNET));
		
		/* 마지막 담은 상품 스토리지 생성 */
		lastCompDataStorageFNET = '/GMQDisplay-master/'+'fnet/compare/lastComp';
		lastCompDataFNET = JSON.parse(localStorage.getItem(lastCompDataStorageFNET)) == null ? {}: JSON.parse(localStorage.getItem(lastCompDataStorageFNET));
	
	}else if('1' == '3'){
		/* 비교하기 스토리지 생성 */
	 	compareDataStorageFNET_SOL = '/GMQDisplay-master/'+'fnet_sol/compare/'+$("#compDispClsfEnNm").val(); 
		compareDataFNET_SOL = JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL));
	
		/* 카테고리 스토리지 생성 */
		categoryDataStorageFNET_SOL = '/GMQDisplay-master/'+'fnet_sol/compare/category'; 
		categoryDataFNET_SOL = JSON.parse(localStorage.getItem(categoryDataStorageFNET_SOL)) == null ? {}: JSON.parse(localStorage.getItem(categoryDataStorageFNET_SOL)); 
	
		/* total goodsId 스토리지 생성 */
		goodsIdDataStorageFNET_SOL = '/GMQDisplay-master/'+'fnet_sol/compare/goodsId'; 
		goodsIdDataFNET_SOL = JSON.parse(localStorage.getItem(goodsIdDataStorageFNET_SOL)) == null ? {}: JSON.parse(localStorage.getItem(goodsIdDataStorageFNET_SOL)); 
		
		/* 마지막 담은 상품 스토리지 생성 */
		lastCompDataStorageFNET_SOL = '/GMQDisplay-master/'+'fnet_sol/compare/lastComp'; 
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
		//setSpeclongestBox();
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
				compareDataStorage = '/GMQDisplay-master/'+'compare/'+Object.values(goodsIdData)[0];
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
				compareDataStorageFNET = '/GMQDisplay-master/'+'fnet/compare/'+Object.values(goodsIdDataFNET)[0];
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
				compareDataStorageFNET_SOL = '/GMQDisplay-master/'+'fnet_sol/compare/'+Object.values(goodsIdDataFNET_SOL)[0];
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
		//setSpeclongestBox();
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
				, url : "/GMQDisplay-master/xhr/goods/incGoodsCompare"
				, type : 'POST'
				, dataType : 'json'
				, done : function(data) {
					if('1' == '1'){
						/* 비교하기 데이터 추가 */
						compareDataStorage = '/GMQDisplay-master/'+'compare/'+data.summary.compDispClsfEnNm;
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
						compareDataStorageFNET = '/GMQDisplay-master/'+'fnet/compare/'+data.summary.compDispClsfEnNm;
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
						compareDataStorageFNET_SOL = '/GMQDisplay-master/'+'fnet_sol/compare/'+data.summary.compDispClsfEnNm;
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
		//setSpeclongestBox();
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
			compareDataStorageNew = '/GMQDisplay-master/'+'compare/'+self.data('comp-disp-clsf-en-nm');
			compareDataNew = JSON.parse(localStorage.getItem(compareDataStorageNew)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageNew));
			compareDataStorageBef = '/GMQDisplay-master/'+'compare/'+compDispClsfEnNm;
			compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageBef));
		}else if('1' == '2'){
			compareDataStorageNew = '/GMQDisplay-master/'+'fnet/compare/'+self.data('comp-disp-clsf-en-nm');
			compareDataNew = JSON.parse(localStorage.getItem(compareDataStorageNew)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageNew));
			compareDataStorageBef = '/GMQDisplay-master/'+'fnet/compare/'+compDispClsfEnNm;
			compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageBef));
		}else if('1' == '3'){
			compareDataStorageNew = '/GMQDisplay-master/'+'fnet_sol/compare/'+self.data('comp-disp-clsf-en-nm');
			compareDataNew = JSON.parse(localStorage.getItem(compareDataStorageNew)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageNew));
			compareDataStorageBef = '/GMQDisplay-master/'+'fnet_sol/compare/'+compDispClsfEnNm;
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
			, url : "/GMQDisplay-master/xhr/goods/incGoodsCompare"
			, type : 'POST'
			, dataType : 'json'
			, done : function(data) {
				$('#compDispClsfEnNm').val(data.summary.compDispClsfEnNm);
				$('#compDispClsfNm').val(data.summary.compDispClsfNm);
				$('.btn-reset').val(data.summary.compDispClsfEnNm);
				$('#compareBtn').val(data.summary.compDispClsfEnNm);
				
				if('1' == '1'){
					/* 비교하기 데이터 추가 */
	 				compareDataStorage = '/GMQDisplay-master/'+'compare/'+data.summary.compDispClsfEnNm;
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
						if(array[i].includes('/GMQDisplay-master/compare/')){
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
	 				compareDataStorageFNET = '/GMQDisplay-master/'+'fnet/compare/'+data.summary.compDispClsfEnNm;
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
	 				compareDataStorageFNET_SOL = '/GMQDisplay-master/'+'fnet_sol/compare/'+data.summary.compDispClsfEnNm;
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
		//setSpeclongestBox();
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
							compareDataStorage = '/GMQDisplay-master/'+'compare/'+key;
							compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorage));
							length = Object.keys(compareData).length;
							i++;
						}else if('1' == '2'){
							compareDataStorageFNET = '/GMQDisplay-master/'+'fnet/compare/'+key;
							compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET));
							length = Object.keys(compareDataFNET).length;
							i++;
						}else if('1' == '3'){
							compareDataStorageFNET_SOL = '/GMQDisplay-master/'+'fnet_sol/compare/'+key;
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
							compareDataStorage = '/GMQDisplay-master/'+'compare/'+key;
							compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorage));
							length = Object.keys(compareData).length;
							i++;
						}else if('1' == '2'){
							compareDataStorageFNET = '/GMQDisplay-master/'+'fnet/compare/'+key;
							compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET));
							length = Object.keys(compareDataFNET).length;
							i++;
						}else if('1' == '3'){
							compareDataStorageFNET_SOL = '/GMQDisplay-master/'+'fnet_sol/compare/'+key;
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
				compareDataStorage = '/GMQDisplay-master/'+'compare/'+$("#compDispClsfEnNm").val(); 
				compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorage)); 
			}else if('1' == '2'){
				compareDataStorageFNET = '/GMQDisplay-master/'+'fnet/compare/'+$("#compDispClsfEnNm").val(); 
				compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET)); 
			}else if('1' == '3'){
				compareDataStorageFNET_SOL = '/GMQDisplay-master/'+'fnet_sol/compare/'+$("#compDispClsfEnNm").val(); 
				compareDataFNET_SOL = JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)); 
			}
		} 
		//setSpeclongestBox();
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
		//setSpeclongestBox();
	}
	
	/* 카테고리 선택(필요) */
	function selectBtn(self){console.log("카테고리 선택(필요) ");
		var compareEnNm = $(self).data().compDispClsfEnNm; var compareNm = $(self).data().compDispClsfNm;
		var compareDataBefLen;
		if('1' == '1'){
			compareDataStorage = '/GMQDisplay-master/'+'compare/'+compareEnNm;
			compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorage));
			compareDataBefLen = Object.keys(compareData).length;
			addSelectedBtn(Object.values(compareData).length);	
		}else if('1' == '2'){
			compareDataStorageFNET = '/GMQDisplay-master/'+'fnet/compare/'+compareEnNm;
			compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET));
			compareDataBefLen = Object.keys(compareDataFNET).length;
			addSelectedBtn(Object.values(compareDataFNET).length);	
		}else if('1' == '3'){
			compareDataStorageFNET_SOL = '/GMQDisplay-master/'+'fnet_sol/compare/'+compareEnNm;
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
		//setSpeclongestBox();
	}
	
	/* 제품선택 팝업(필요) */
	function selectProductList(data){console.log("제품선택 팝업(필요)");
		var goodsAdvCmntStYn = 'Y';//$('#goodsAdvCmntStYn').val()
		
		$('#selectProductList').empty();
		var compareEnNm = data;
		var compareDataStorageBef, compareDataBef, compareDataBefLen;
		if('1' == '1'){
			compareDataStorageBef = '/GMQDisplay-master/'+'compare/'+compareEnNm;
			compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageBef)); // 비교하기 담기 스토리지
			compareDataBefLen = Object.keys(compareDataBef).length;
		}else if('1' == '2'){
			compareDataStorageBef = '/GMQDisplay-master/'+'fnet/compare/'+compareEnNm;
			compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageBef)); // 비교하기 담기 스토리지
			compareDataBefLen = Object.keys(compareDataBef).length;
		}else if('1' == '3'){
			compareDataStorageBef = '/GMQDisplay-master/'+'fnet_sol/compare/'+compareEnNm;
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
			, url : "/GMQDisplay-master/xhr/pf/compGoodsList"
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
		//setSpeclongestBox();
	}
	
	/* 초기화 버튼(필요) */
	function btnReset(self) {console.log("초기화 버튼(필요)");
		toastCtl(this);
		
		var compDispClsfEnNm = '';
		if($('.btn-reset').val() == ''){ $('#compareBtn').val($('.prd').attr('value')); $('.btn-reset').val($('.prd').attr('value')); }
		compDispClsfEnNm = $('.btn-reset').val();
		
		if('1' == '1'){
			compareDataStorage = '/GMQDisplay-master/'+'compare/'+compDispClsfEnNm;
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
				compareDataStorage = '/GMQDisplay-master/'+'compare/'+Object.values(goodsIdData)[0];
	 			compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorage));  
				localStorage.setItem(compareDataStorage, JSON.stringify(compareData));
				
				$('.btn-reset').val(Object.values(goodsIdData)[0]);
				$('#compareBtn').val(Object.values(goodsIdData)[0]);
				setCompInfoStrg(Object.values(goodsIdData)[0], true, false);
				addSelectedBtn(Object.values(compareData).length);
			}
			
		}else if('1' == '2'){
			compareDataStorageFNET = '/GMQDisplay-master/'+'fnet/compare/'+compDispClsfEnNm;
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
				compareDataStorageFNET = '/GMQDisplay-master/'+'fnet/compare/'+Object.values(goodsIdDataFNET)[0];
	 			compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageFNET));  
				localStorage.setItem(compareDataStorageFNET, JSON.stringify(compareDataFNET));
				
				$('.btn-reset').val(Object.values(goodsIdDataFNET)[0]);
				$('#compareBtn').val(Object.values(goodsIdDataFNET)[0]);
				setCompInfoStrg(Object.values(goodsIdDataFNET)[0], true, false);
				addSelectedBtn(Object.values(compareDataFNET).length);
			}
		}else if('1' == '3'){
			compareDataStorageFNET_SOL = '/GMQDisplay-master/'+'fnet_sol/compare/'+compDispClsfEnNm;
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
				compareDataStorageFNET_SOL = '/GMQDisplay-master/'+'fnet_sol/compare/'+Object.values(goodsIdDataFNET_SOL)[0];
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
		//setSpeclongestBox();
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
			compareDataStorageBef = '/GMQDisplay-master/'+'compare/'+$("#compDispClsfEnNm").val(); 
			compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageBef)); 
			compareDataBefLen = Object.keys(compareDataBef).length;
			
			goodsIdDataBefLen = Object.keys(goodsIdData).length;
			categoryDataBefLen = Object.keys(categoryData).length;
			lastCompDataBefLen = Object.keys(lastCompData).length;
		}else if('1' == '2'){
			compareDataStorageBef = '/GMQDisplay-master/'+'fnet/compare/'+$("#compDispClsfEnNm").val(); 
			compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageBef)); 
			compareDataBefLen = Object.keys(compareDataBef).length;
			
			goodsIdDataBefLen = Object.keys(goodsIdDataFNET).length;
			categoryDataBefLen = Object.keys(categoryDataFNET).length;
			lastCompDataBefLen = Object.keys(lastCompDataFNET).length;
		}else if('1' == '3'){
			compareDataStorageBef = '/GMQDisplay-master/'+'fnet_sol/compare/'+$("#compDispClsfEnNm").val();
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
					compareDataStorageBef = '/GMQDisplay-master/'+'compare/'+Object.values(lastCompData)[0];
					$('.btn-reset').val(Object.values(lastCompData)[0]);
					$('#compareBtn').val(Object.values(lastCompData)[0]);
					setCompInfoStrg(Object.values(lastCompData)[0], true, false);
				}else if('1' == '2'){
					compareDataStorageBef = '/GMQDisplay-master/'+'fnet/compare/'+Object.values(lastCompDataFNET)[0];
					$('.btn-reset').val(Object.values(lastCompDataFNET)[0]);
					$('#compareBtn').val(Object.values(lastCompDataFNET)[0]);
					setCompInfoStrg(Object.values(lastCompDataFNET)[0], true, false);
				}else if('1' == '3'){
					compareDataStorageBef = '/GMQDisplay-master/'+'fnet_sol/compare/'+Object.values(lastCompDataFNET_SOL)[0];
					$('.btn-reset').val(Object.values(lastCompDataFNET_SOL)[0]);
					$('#compareBtn').val(Object.values(lastCompDataFNET_SOL)[0]);
					setCompInfoStrg(Object.values(lastCompDataFNET_SOL)[0], true, false);
				}
				compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {}: JSON.parse(localStorage.getItem(compareDataStorageBef));
				addSelectedBtn(Object.values(compareDataBef).length);
				
			}else if(goodsIdDataBefLen != 0){/* goodsId 정보 있는 경우 */
				if('1' == '1'){
					compareDataStorageBef = '/GMQDisplay-master/'+'compare/'+Object.values(goodsIdData)[0];
					$('.btn-reset').val(Object.values(goodsIdData)[0]);
					$('#compareBtn').val(Object.values(goodsIdData)[0]);
					setCompInfoStrg(Object.values(goodsIdData)[0], true, false);
				}else if('1' == '2'){
					compareDataStorageBef = '/GMQDisplay-master/'+'fnet/compare/'+Object.values(goodsIdDataFNET)[0];
					$('.btn-reset').val(Object.values(goodsIdDataFNET)[0]);
					$('#compareBtn').val(Object.values(goodsIdDataFNET)[0]);
					setCompInfoStrg(Object.values(goodsIdDataFNET)[0], true, false);
				}else if('1' == '3'){
					compareDataStorageBef = '/GMQDisplay-master/'+'fnet_sol/compare/'+Object.values(goodsIdDataFNET_SOL)[0];
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
		//setSpeclongestBox();
	}
	
	//여기로
	/* 제품 가격 세팅(필요) */
	function _htmlProductPrice(prd) {
		var price = prd.priceStr.split('|');
		if (prd.priceStr == null || price[2] == '0' || (prd.saleStatCd != '12' &&  prd.saleStatCd != '13' && prd.saleStatCd != '14')) {return '';}
		
		var stGbCd = '10';
		var isLogin; if(typeof isLoginCheck !== "undefined"){ isLogin= isLoginCheck; }
		var contextPath = "/GMQDisplay-master/";
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
		//setSpeclongestBox();
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
	                url : "/GMQDisplay-master/xhr/goods/getCompareExpireDate"
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
		if('1' == '1'){ compareDataStorage = '/GMQDisplay-master/'+'compare/'+compDispClsfEnNm;
		}else if('1' == '2'){ compareDataStorage = '/GMQDisplay-master/'+'fnet/compare/'+compDispClsfEnNm;
		}else if('1' == '3'){ compareDataStorage = '/GMQDisplay-master/'+'fnet_sol/compare/'+compDispClsfEnNm; }
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
					compareData[v]["pfGoods"]["stContextPath"] = "/GMQDisplay-master/";
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
		//setSpeclongestBox();
	}
	
	/* 비교하기 팝업 정보 세팅 DB(차이점 활성화)(필요) */
	function setCompInfoDb(){console.log("비교하기 팝업 정보 세팅 DB(차이점 활성화)(필요)");
		var goodsAdvCmntStYn = 'Y';//$('#goodsAdvCmntStYn').val()
		
		var compDispClsfEnNm = '';
		if($('#compareBtn').val() == ''){ $('#compareBtn').val($('.prd').attr('value')); $('.btn-reset').val($('.prd').attr('value')); }
		compDispClsfEnNm = $('#compareBtn').val();
		
		var compareDataStorage; var compareData;
		if('1' == '1'){ compareDataStorage = '/GMQDisplay-master/'+'compare/'+compDispClsfEnNm;
		}else if('1' == '2'){ compareDataStorage = '/GMQDisplay-master/'+'fnet/compare/'+compDispClsfEnNm;
		}else if('1' == '3'){ compareDataStorage = '/GMQDisplay-master/'+'fnet_sol/compare/'+compDispClsfEnNm; }
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
				compareData[v]["pfGoods"]["stContextPath"] = "/GMQDisplay-master/";
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
				, url : "/GMQDisplay-master/xhr/pf/compGoodsSpecList"
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
		//setSpeclongestBox();
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
					var part2SetNm1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('h3').text().replaceAll(' ','');//part2 대분류 set명
					var part2SetDlLen1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').length;//비교기준 스펙 대분류의 소분류 갯수
					
					for(var k = (i+1);k<part1Len;k++){//다른 스펙 비교
						var isPart2SetNm = '';
						if(typeof $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $.trim($(this).text().replaceAll(' ','')) === part2SetNm1; })[0] != "undefined"){
							isPart2SetNm = $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $.trim($(this).text().replaceAll(' ','')) === part2SetNm1; })[0].innerHTML.replaceAll(' ','');//다른 part2 대분류 set 찾기
						}
						if(part2SetNm1 != isPart2SetNm){//동일한 대분류 없으면, 세팅
							if(($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').length == 0) && (j == 0)){
								var html = '';
								html += '<div class="set dummy" id=""></div>';
								$('.part2').find('.prdBox').eq(k).find('.spec').find('.box-spec-detail').append(html);
							}
							
							if($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').eq(j).length == 1){
								var copyPart2Set1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).clone();//part2 대분류 set div 복사
								copyPart2Set1.find('span').text('-');
								copyPart2Set1.insertBefore($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').eq(j));
							}else{
								var copyPart2Set1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).clone();//part2 대분류 set div 복사
								copyPart2Set1.find('span').text('-');
								copyPart2Set1.insertAfter($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').eq(j-1));
							}
							
							$('.part2').find('.prdBox').find('.spec').find('.set.dummy').remove();
						}else{//동일한 대분류 있으면, 소분류 비교
							for(var l=0;l<part2SetDlLen1;l++){
								var part2SetDtNm1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').eq(l).find('dt').text().replaceAll(' ',''); 
								var isPart2SetDtNm = '';
								var tempDtNmLenA=0;
								var tempDtNmLenB=0;
								if(typeof $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $(this).text().replaceAll(' ','') === part2SetNm1; }).parent().find('dt').filter(function(){ return $(this).text().replaceAll(' ','') === part2SetDtNm1; })[0] != "undefined"){
									tempDtNmLenA = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').find('h3').filter(function(){ return $(this).text().replaceAll(' ','') === part2SetNm1; }).parent().find('dt').filter(function(){ return $(this).text().replaceAll(' ','') === part2SetDtNm1; }).length;
									tempDtNmLenB = $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $(this).text().replaceAll(' ','') === part2SetNm1; }).parent().find('dt').filter(function(){ return $(this).text().replaceAll(' ','') === part2SetDtNm1; }).length;
									isPart2SetDtNm = $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $(this).text().replaceAll(' ','') === part2SetNm1; }).parent().find('dt').filter(function(){ return $(this).text().replaceAll(' ','') === part2SetDtNm1; })[0].innerHTML.replaceAll(' ','');
								}
								if(part2SetDtNm1 != isPart2SetDtNm || tempDtNmLenA != tempDtNmLenB){//동일한 소분류 없으면, 세팅
									if($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $(this).text().replaceAll(' ','') === part2SetNm1; }).parent().find('dl').eq(l).length == 1){
										var copyPart2SetDl1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').eq(l).clone();//part2 대분류 set div 복사
										copyPart2SetDl1.find('span').text('-');
										copyPart2SetDl1.insertBefore($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $(this).text().replaceAll(' ','') === part2SetNm1; }).parent().find('dl').eq(l));
									}else{
										var copyPart2SetDl1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').eq(l).clone();//part2 대분류 set div 복사
										copyPart2SetDl1.find('span').text('-');
										copyPart2SetDl1.insertAfter($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $(this).text().replaceAll(' ','') === part2SetNm1; }).parent().find('dl').eq(l-1));
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
					var part2SetNm1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('h3').text().replaceAll(' ','');//part2 대분류 set명
					var part2SetDlLen1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').length;//비교기준 스펙 대분류의 소분류 갯수
					
					for(var k=(i-1);k>=0;k--){//다른 스펙 비교
						var isPart2SetNm = '';
						if(typeof $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $.trim($(this).text().replaceAll(' ','')) === part2SetNm1; })[0] != "undefined"){
							isPart2SetNm = $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $.trim($(this).text().replaceAll(' ','')) === part2SetNm1; })[0].innerHTML.replaceAll(' ','');//다른 part2 대분류 set 찾기
						}
						if(part2SetNm1 != isPart2SetNm){//동일한 대분류 없으면, 세팅
							if(($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').length == 0) && (j == 0)){
								var html = '';
								html += '<div class="set dummy" id=""></div>';
								$('.part2').find('.prdBox').eq(k).find('.spec').find('.box-spec-detail').append(html);
							}
						
							if($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').eq(j).length == 1){
								var copyPart2Set1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).clone();//part2 대분류 set div 복사
								copyPart2Set1.find('span').text('-');
								copyPart2Set1.insertBefore($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').eq(j), null);
							}else{
								var copyPart2Set1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).clone();//part2 대분류 set div 복사
								copyPart2Set1.find('span').text('-');
								copyPart2Set1.insertAfter($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').eq(j-1), null);
							}
							
							$('.part2').find('.prdBox').find('.spec').find('.set.dummy').remove();
						}else{//동일한 대분류 있으면, 소분류 비교
							for(var l=0;l<part2SetDlLen1;l++){
								var part2SetDtNm1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').eq(l).find('dt').text().replaceAll(' ','');
								var isPart2SetDtNm = '';
								var tempDtNmLenA=0;
								var tempDtNmLenB=0;
								if(typeof $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $(this).text().replaceAll(' ','') === part2SetNm1; }).parent().find('dt').filter(function(){ return $(this).text().replaceAll(' ','') === part2SetDtNm1; })[0] != "undefined"){
									tempDtNmLenA = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').find('h3').filter(function(){ return $(this).text().replaceAll(' ','') === part2SetNm1; }).parent().find('dt').filter(function(){ return $(this).text().replaceAll(' ','') === part2SetDtNm1; }).length;
									tempDtNmLenB = $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $(this).text().replaceAll(' ','') === part2SetNm1; }).parent().find('dt').filter(function(){ return $(this).text().replaceAll(' ','') === part2SetDtNm1; }).length;
									isPart2SetDtNm = $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $(this).text().replaceAll(' ','') === part2SetNm1; }).parent().find('dt').filter(function(){ return $(this).text().replaceAll(' ','') === part2SetDtNm1; })[0].innerHTML.replaceAll(' ','');
								}
								if(part2SetDtNm1 != isPart2SetDtNm || tempDtNmLenA != tempDtNmLenB){//동일한 소분류 없으면, 세팅
									if($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $(this).text().replaceAll(' ','') === part2SetNm1; }).parent().find('dl').eq(l).length == 1){
										var copyPart2SetDl1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').eq(l).clone();//part2 대분류 set div 복사
										copyPart2SetDl1.find('span').text('-');
										copyPart2SetDl1.insertBefore($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $(this).text().replaceAll(' ','') === part2SetNm1; }).parent().find('dl').eq(l));
									}else{
										var copyPart2SetDl1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').eq(l).clone();//part2 대분류 set div 복사
										copyPart2SetDl1.find('span').text('-');
										copyPart2SetDl1.insertAfter($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function(){ return $(this).text().replaceAll(' ','') === part2SetNm1; }).parent().find('dl').eq(l-1));
									}
								}
							}
						}
					}
				}
			}
			
			for(var i=0;i<part1Len;i++){
				var part2SetLen1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').length;
				for(var j=0;j<part2SetLen1;j++){
					$('.part2').find('.prdBox').eq(i).find('.spec').find('.set').removeClass('specAnchor'+j);
					$('.part2').find('.prdBox').eq(i).find('.spec').find('.set').removeAttr( 'id', '');
				}
			}
			
			for(var i=0;i<part1Len;i++){
				var part2SetLen1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').length;
				var sortResult = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').sort(function (a, b){
					var contentAh3 = $(a).find('h3').text().replaceAll(' ','');
					var contentBh3 = $(b).find('h3').text().replaceAll(' ','');
					return (contentAh3 > contentBh3) ? 1 : (contentAh3 < contentBh3) ? -1 : 0;
				});
				$('.part2').find('.prdBox').eq(i).find('.spec').find('.box-spec-detail').append(sortResult);
			}
			
			for(var i=0;i<part1Len;i++){
				var part2SetLen1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').length;
				for(var j=0;j<part2SetLen1;j++){
					var part2SetDlLen1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').length;
					
					for(var l=0;l<part2SetDlLen1;l++){
						var part2SetDtNm1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').eq(l).find('dt').text().replaceAll(' ',''); 
						var sortResult = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').sort(function (a, b){
							var contentAdd = $(a).find('dd').text().replaceAll(' ','');
							var contentBdd = $(b).find('dd').text().replaceAll(' ',''); 
							
							return (contentAdd == '-') ? 1 : (contentBdd == '-' ) ? -1 : 0;
						});
					}
					$('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).children().first().after(sortResult);
					
				}	
			}

			for(var i=0;i<part1Len;i++){
				var part2SetLen1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').length;
				for(var j=0;j<part2SetLen1;j++){
					var part2SetDlLen1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').length;
					for(var l=0;l<part2SetDlLen1;l++){
						var part2SetDtNm1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').eq(l).find('dt').text().replaceAll(' ',''); 
						var sortResult = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').sort(function (a, b){
							var contentAdt = $(a).find('dt').text().replaceAll(' ',''); 
							var contentBdt = $(b).find('dt').text().replaceAll(' ',''); 
							return (contentAdt > contentBdt) ? -1 : (contentAdt < contentBdt) ? 1 : 0;
						});
						$('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).children().first().after(sortResult);
						
					}
				}
			}

			for(var i=0;i<part1Len;i++){
				var part2SetLen1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').length;
				for(var j=0;j<part2SetLen1;j++){
					$('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).addClass('specAnchor'+j);
					$('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).attr( 'id', 'set'+j);
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
					var tempText = $('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).text().replaceAll(' ','');
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
					var tempText = $('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).text().replaceAll(' ','');
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
		
		//적립 예정 포인트 or 삼성전자 멤버십 가입하기
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
		//compGoodsCartFormHTML += 		"<input type='hidden' name='empPrcStYn' value='' />";
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
				url : '/GMQDisplay-master/xhr/order/check/limitcount'
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
			url : '/GMQDisplay-master/xhr/order/goodscnt'
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
			url : '/GMQDisplay-master/xhr/order/insertCart'
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
			location.href = '/GMQDisplay-master/' + "member/indexLogin/?returnUrl=" + location.pathname;
			return;
		}else{
			_fnGetCerificationCheck (goodsPath);	    	    		
		}
	}
	
	/* 구매하기_와인(필요) */
	function _fnGetCerificationCheck (goodsPath){console.log("구매하기_와인(필요)");
		var options = {
			url : "/GMQDisplay-master/xhr/pf/cerificationCheck/"
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
			url  : "/GMQDisplay-master/xhr/join/kcbPersonalAuthCheck/"
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
</script><article class="copmpo-rcmd-desc">
			<div class="pf-disclaimer">
				<!-- 타이틀 들어가야 합니다. -->
				<div class="title">
					<strong>꼭 확인하세요!</strong>
				</div>
				<div class="wrap-disc">
					* ‘자세히 보기’ 상품인 경우, 해당 상품은 현재 GMQ Display에서 상품 정보만 확인이 가능합니다. *</div>
			</div>
		</article>
		
		<script>
			pfListFunc();
		</script>
		
		
    </div>
<%
	String hashtag1 = request.getParameter("optStep1");
	String hashtag2 = request.getParameter("optStep2");
	String hashtag3 = request.getParameter("optStep3");
	String hashtag4_value = request.getParameter("optStep4");
	String hashtag4 = "";
	if (hashtag4_value.equals("10")) hashtag4="10만원대";
	else if (hashtag4_value.equals("20")) hashtag4="20만원대";
	else if (hashtag4_value.equals("30")) hashtag4="30만원대";
	else hashtag4="가격 상관없어요";
	
%>
	<!-- e : 본문 영역 -->
    <script type="text/javascript">
	    var goodsPf = {
	    		fnAjaxUrl : function(vUrl, vAjaxUrl){
	    			var ajaxUrl = "xhr/goods/";
	    			if (vAjaxUrl !== undefined){
	    				ajaxUrl = vAjaxUrl;
	    			}
	    			return  '/GMQDisplay-master/' + ajaxUrl + vUrl;
	    		},
	    		fnLoginCheck : function(callback){
	    			var options = {
	    				url : goodsPf.fnAjaxUrl("loginCheck")
	    				, type: 'POST'
	    				, done : function(data) {
	    					if(callback){
	    						callback(data.isLogin);
	    					}
	    				}
	    			};
	    			ajax.call(options);
	    		}
	    }
    	
    	function netFunnel_Action_PF(goodsPath) {
    		var top = $(window).scrollTop();
    		var page = $("#page").val();
    		sessionStorage.setItem('rcmndResultPageScroll', top + '|||' + page );
        	
				NetFunnel_Action({action_id:'b2c_pd_view'}, function(ev, ret){
			
					location.href = goodsPath;
			
				});
        	
    	}

    	function bespoke_Action_PF(goodsPath) {
    		location.href ='/GMQDisplay-master/' +  goodsPath;
    	}
    	
    	$(window).on('popstate', function(event) {
    		//itemInit($('#rcmndCycleBtn').parent().find('.focused').data('sort-type'));
    		window.location = document.location.href;
        });
    	    	
    	function productCompareView(prd) {

			var html = '';
			var dispClsfNo = prd.compDispClsfNo
			var mdlCode = prd.mdlCode;
			var compDispClsfEnNm = prd.compDispClsfEnNm;
			
			var lastStr = '';
			var last2Str = '';
			
			lastStr = mdlCode.substr( mdlCode.length-1, 1)
			last2Str = mdlCode.substr( mdlCode.length-2, 1)
			//console.log(dispClsfNo+" ::: "+prd.goodsTpCd+'모델 이름 ==> '+mdlCode+' :: lastStr '+lastStr+' :: last2Str '+last2Str+' isNaN '+isNaN(last2Str))
						
			// 건조기 && 세탁기 && 에어컨 && 테블릿	
			if( dispClsfNo != '37080000' && dispClsfNo != '37020000' && dispClsfNo != '37010000' && dispClsfNo != '44010000' && dispClsfNo != '33020000') {
				html += '      <a href="#none" class="link-compare-i'+( isCompareDataStorageGoods(prd.goodsId)?' disabled':''  )+'" onClick="readyCompare(this)" data-goods-id="'+prd.goodsId+'" data-mdl-code="'+prd.mdlCode+'"  data-disp-clsf-no="'+dispClsfNo+'" data-comp-disp-clsf-en-nm="'+compDispClsfEnNm+'" data-omni="'+prd.mdlNm+'|'+prd.mdlCode+'" >비교하기</a>';
			}else if( dispClsfNo == '37080000' && prd.goodsTpCd == '10' ){
				html += '      <a href="#none" class="link-compare-i'+( isCompareDataStorageGoods(prd.goodsId)?' disabled':''  )+'" onClick="readyCompare(this)" data-goods-id="'+prd.goodsId+'" data-mdl-code="'+prd.mdlCode+'"  data-disp-clsf-no="'+dispClsfNo+'" data-comp-disp-clsf-en-nm="'+compDispClsfEnNm+'" data-omni="'+prd.mdlNm+'|'+prd.mdlCode+'" >비교하기</a>';
			}else if( dispClsfNo == '37020000' && prd.goodsTpCd == '10' ){
				html += '      <a href="#none" class="link-compare-i'+( isCompareDataStorageGoods(prd.goodsId)?' disabled':''  )+'" onClick="readyCompare(this)" data-goods-id="'+prd.goodsId+'" data-mdl-code="'+prd.mdlCode+'"  data-disp-clsf-no="'+dispClsfNo+'" data-comp-disp-clsf-en-nm="'+compDispClsfEnNm+'" data-omni="'+prd.mdlNm+'|'+prd.mdlCode+'" >비교하기</a>';
			}else if( dispClsfNo == '44010000' && prd.goodsTpCd == '10' ){
				html += '      <a href="#none" class="link-compare-i'+( isCompareDataStorageGoods(prd.goodsId)?' disabled':''  )+'" onClick="readyCompare(this)" data-goods-id="'+prd.goodsId+'" data-mdl-code="'+prd.mdlCode+'"  data-disp-clsf-no="'+dispClsfNo+'" data-comp-disp-clsf-en-nm="'+compDispClsfEnNm+'" data-omni="'+prd.mdlNm+'|'+prd.mdlCode+'" >비교하기</a>';
			}else if( dispClsfNo == '33020000' && prd.goodsTpCd == '10' ){
				html += '      <a href="#none" class="link-compare-i'+( isCompareDataStorageGoods(prd.goodsId)?' disabled':''  )+'" onClick="readyCompare(this)" data-goods-id="'+prd.goodsId+'" data-mdl-code="'+prd.mdlCode+'"  data-disp-clsf-no="'+dispClsfNo+'" data-comp-disp-clsf-en-nm="'+compDispClsfEnNm+'" data-omni="'+prd.mdlNm+'|'+prd.mdlCode+'" >비교하기</a>';
			}else if( dispClsfNo == '37010000'){ //에어컨 -> 홈멀티 에어컨 && 무풍멀티에어컨
				if( lastStr != 'R' && last2Str != 'R' && last2Str != '2' && last2Str != '3') {
					
					html += '      <a href="#none" class="link-compare-i'+( isCompareDataStorageGoods(prd.goodsId)?' disabled':''  )+'" onClick="readyCompare(this)" data-goods-id="'+prd.goodsId+'" data-mdl-code="'+prd.mdlCode+'"  data-disp-clsf-no="'+dispClsfNo+'" data-comp-disp-clsf-en-nm="'+compDispClsfEnNm+'" data-omni="'+prd.mdlNm+'|'+prd.mdlCode+'" >비교하기</a>';
				}
			}
			
			return html;
     	}
    	
    	$(document).ready(function() {
        	if (false){
        		//필수 파라미터 없으면 추천선택 페이지로 이동
        			location.href = '/GMQDisplay-master/' + "recommend/recommendMain/";
        	}
        	
    		/* 추천 상품 정렬순서 변경 */
    		$('#rcmndCycleBtn').parent().find('li').on('click', function(e) {    			
    			itemInit($(this).data('sort-type'));    			    			
    		});
    		
    		/* 추가 추천 상품 정렬순서 변경 */
    		$('#addRcmndCycleBtn').parent().find('li').on('click', function(e) {    			
    			addItemInit($(this).data('sort-type'));    			    			
    		});
    		
    		/* PF Page 이동 */
    		$('#go-pf-page').on('click', function(e) {    			
    			location.href = 'https://www.samsung.com/GMQDisplay-master/tvs/all-tvs/'   			    			
    		});
    		
    		/* 추천선택 Page 이동 */
    		$('#reset-recommend').on('click', function(e) {    			
    			if(false){    				
    			location.href = '/GMQDisplay-master/' + "recommend/recommendMain/";
    			} else {
    				location.href = '/GMQDisplay-master/' + "recommend/recommendMain/?tab=" + 'tv' ;   
    			}
    		});
    		      	
    		if('10' == '10'){
	        	shareInit("5880e4317936087f2764a5d340e6bca6", "");
    			/*  추천 결과 공유 */
    			$('#shareResult').on('click', function(e) {    			
    				snsShare.kakaoTalkRecommendGooods(
   						window.origin+"/GMQDisplay-master/recommend/sharerecommendresult/?firstDispClsfNo=800028667&hashTags=<%=hashtag1%>@<%=hashtag2%>@<%=hashtag3%>@<%=hashtag4%>&upDispClsfNo=800028720&dispClsfNos=800028875"
   					);
    			});
    		}
    		
    		$.each('<%=hashtag1%>@<%=hashtag2%>@<%=hashtag3%>@<%=hashtag4%>'.split('@'), function(idx, hashTag) {
    			$('.result-info> dl').append("<dd><strong>#</strong>"+hashTag+"</dd>");
    		});	
    		
    		itemInit();
    		
    		if('Y' != 'N'){
        		addItemInit();    			
    		}
    		
			var scroll = 0;
			var pageScroll = sessionStorage.getItem('rcmndResultPageScroll');
			if(pageScroll != undefined && pageScroll != ''){				
				scroll = pageScroll.split('|||')[0];
				
				sessionStorage.removeItem('rcmndResultPageScroll');
			}
	
			if(scroll > 0){
				$(window).scrollTop(scroll);
			}
    	});
    	
    	function itemInit(sortType) {  
    		  		
    		// 상품 정보 조희(ajax)
    		if (sortType == undefined || sortType === '') {
				sortType = $('#rcmndCycleBtn').parent().find('.focused').data('sort-type');
			}
					
			ajax.call({
				data : {
					upDispClsfNo: '800028720'
					, dispClsfNos: '800028875'
					, sortType: sortType
				}
				, url : "/GMQDisplay-master/xhr/rcmnd/rcmndPfGoodsList"
				, type: 'POST'
				, dataType : 'json'
					, async : false
				, done: function (data) {					
										
					$('.title > h2 > span').html('TV 제품 ' + fnComma(data.count) + '개');
					$('#rcmndTotalCount').val(data.count);
					
					// product card 제거
					$('.rcmd-prdt-list > ul > li').remove();
					$('#list-rcmnd-product > .list > li').remove();
					
					if(data.products != null && data.products.length > 0){
						var sortBtn = "sort";
						$('.copmpo-rcmd-area.rslt').prop('disabled', false);
						$('.copmpo-rcmd-area.rslt').show();
						
			    		appendProductCard(data.products, sortBtn, data.wishGoods);
					}else{
						$('.copmpo-rcmd-area.rslt').prop('disabled', true);
						$('.copmpo-rcmd-area.rslt').hide();
					}
					
					if (sortType != undefined || sortType != '') {
						$('#rcmndCycle li[data-sort-type='+sortType+ ' ]').attr('aria-selected', true);
					}
					
				}
			});								
    	}
    	
    	function addItemInit(sortType) {    		    		
    		$('#morePrd').prop('disabled', true);
    		$('#morePrd').hide();  		
    		
    		// 상품 정보 조희(ajax)
    		$('#page').val('1');
    		
			// 화면 상품 갯수 계산
    		var calc_rows = 6;
			var cookiePage = 0;
			var pageScroll = sessionStorage.getItem('rcmndResultPageScroll');
			if(pageScroll != undefined && pageScroll != ''){
				cookiePage = pageScroll.split('|||')[1];
				calc_rows = calc_rows * cookiePage;				
			}
			
   			$('#rows').val(calc_rows);
   			
			if (sortType == undefined || sortType === '') {
				sortType = $('#addRcmndCycleBtn').parent().find('.focused').data('sort-type');
			}
			
			
			ajax.call({
				data : {
					upDispClsfNo: '800028720'
					, dispClsfNos: '800028875'
					, sortType: sortType
					, page: $('#page').val()
					, rows: $('#rows').val()
				}
				, url : "/GMQDisplay-master/xhr/rcmnd/addRcmndPfGoodsList"
				, type: 'POST'
				, dataType : 'json'
				, async : false
				, done: function (data) {
					
					$('#addRcmndTotalCount').val(data.count);
					
					// product card 제거
					$('#list-add-rcmnd-product > .list > li').remove();
					
					if(data.products != null && data.products.length > 0){
						var sortBtn = "sort";
						
						$('.copmpo-rcmd-area.etc').prop('disabled', false);
						$('.copmpo-rcmd-area.etc').show();
						
						appendAddProductCard(data.products, sortBtn, data.wishGoods);
					}else{
						$('.copmpo-rcmd-area.etc').prop('disabled', true);
						$('.copmpo-rcmd-area.etc').hide();
					}
					if (sortType != undefined || sortType != '') {
						$('#addRcmndCycle li[data-sort-type='+sortType+ ' ]').attr('aria-selected', true);
					}
					
					if(cookiePage > 0){
						$("#page").val(cookiePage);
					}
				}
			});								
    	}
    	
    	function morePrd() {
    		$('#morePrd').prop('disabled', true);
    		
    		var page = $('#page').val();
    		page++;
    		$('#page').val(page);

    		$('#rows').val(6);

    		ajax.call({
				data : {
					upDispClsfNo: '800028720'
					, dispClsfNos: '800028875'
					, sortType: $('#addRcmndCycleBtn').parent().find('.focused').data('sort-type')
					, page: page
					, offset : $('#presentPrdCount').val()
					, rows: $('#rows').val()
				}
				, url : "/GMQDisplay-master/xhr/rcmnd/addRcmndPfGoodsListMore"
				, type: 'POST'
				, dataType : 'json'
				, done: function (data) {
					appendAddProductCard(data.products, '', data.wishGoods);
				}
			});		
    	}
    	
    	function appendProductCard(products, sortBtn, wishGoods) {
    		
    		var index = 0;

    		var stGbCd = '10';
    		
    		if(wishGoods != null && wishGoods.length > 0){
    			for(var i = 0; i < products.length; i++){
	    			if(wishGoods.indexOf(products[i].goodsId) > -1){
	    				products[i].wishYn = "Y";
	    			}
    			}
    		}
    		
    		$.each(products, function(idx, prd) {	
    			var html = '';
    			if(prd.outletFlgYn != null && prd.outletFlgYn =='Y'){
    				html += '<li class="item outlet" id="li-prd-' + prd.goodsId + '">';	
    			}else{
    				html += '<li class="item" id="li-prd-' + prd.goodsId + '">';
    			}
    			
    			if(idx<3){
        			html += htmlRcmdProductCard(prd, idx);
        			html += '</li>';
        			$('.rcmd-prdt-list > ul ').append(html);  
        			// 22-11-22 슬라이드 프로그래스 바 추가
        			if(prd.goodsRcmndCommentList.length>1 && stGbCd == '10')
        			{
        				eplogSlide('#li-prd-' + prd.goodsId); // 슬라이드 초기화
        				eplogLenth('#li-prd-' + prd.goodsId); // 상품평 갯수 > 프로그래스 바 길이 계산
    				}
    			} else {
    				html += htmlProductCard(prd, idx);
        			html += '</li>';
        			$('#list-rcmnd-product > .list ').append(html);  
    			}
    			  			
    			index++;    			
    		});
    		
    		// 웹접근성 포커싱 처리 
    		$("#list-rcmnd-product li .item-inner").find('.card-img[data-focus-target="true"]').focus();
    		
    		$("#list-rcmnd-product li .item-inner").find('.card-img[data-focus-target="true"]').removeAttr("data-focus-target");   		
    		
    		index = 0;
    		
    		/* PF 목록 높이 조절  */
    		pfListHeight();
    		
    		/* PF 이미지 변경 */
    		pfImgChange();
    		    		
    		// 관심상품 초기화    		
    		initBtnGoods();
    		
    	}
    	
    	function appendAddProductCard(products, sortBtn, wishGoods) {
    		
  
    		// pfPrdCardAdv 추가
    		var startIdx = 0;
    		var productCnt = 0;
    		if(wishGoods != null && wishGoods.length > 0){
    			for(var i = 0; i < products.length; i++){
	    			if(wishGoods.indexOf(products[i].goodsId) > -1){
	    				products[i].wishYn = "Y";
	    			}
    			}
    		}    		
    		
    		var index = 0;
    			
    		$.each(products, function(idx, prd) {
    			var html = '';
    			if(prd.outletFlgYn != null && prd.outletFlgYn =='Y'){
    				html += '<li class="item outlet" id="li-prd-' + prd.goodsId + '">';	
    			}else{
    				html += '<li class="item" id="li-prd-' + prd.goodsId + '">';
    			}
    			
    			html += htmlProductCard(prd, idx);
    			html += '</li>';
    			
    			$('#list-add-rcmnd-product > .list ').append(html);    			
    			productCnt++;
    			index++;    			
    		});
    		
    		// 웹접근성 포커싱 처리 
    		$("#list-add-rcmnd-product li .item-inner").find('.card-img[data-focus-target="true"]').focus();
    		
    		$("#list-add-rcmnd-product li .item-inner").find('.card-img[data-focus-target="true"]').removeAttr("data-focus-target");   		
    		
    		index = 0;
    		
    		/* PF 목록 높이 조절  */
//     		pfListHeight();
    		rcmdListHeight();

    		
    		/* PF 이미지 변경 */
    		pfImgChange();
    		
    		var addRcmndTotalCount = $('#addRcmndTotalCount').val();
    		var page = $('#page').val();
    		var rows = $('#rows').val();

    		var presentPrdCount = $('#presentPrdCount').val();
    		// 정렬순
    		if(sortBtn == "sort") {
    			var totalPresentCount = parseInt(productCnt);
    		} else {
    		// 더보기
    			var totalPresentCount = parseInt(presentPrdCount) + parseInt(productCnt);
    		}

    		if (parseInt(totalPresentCount) < parseInt(addRcmndTotalCount)) {
    			$('#morePrd').prop('disabled', false);
    			$('#morePrd').show();
    		} else {
    			$('#morePrd').prop('disabled', true);
    			$('#morePrd').hide();
    		}

    		$('#presentPrdCount').val(totalPresentCount);
    		
    		// 관심상품 초기화    		
    		initBtnGoods();
    	}
    	
    	function htmlRcmdProductCard(prd, idx) {
			var contextPath = "/GMQDisplay-master/";
    		var prdLink = '/GMQDisplay-master/' + prd.goodsDetailUrl;
    		var stGbCd = '10';
    		
    		var price = prd.priceStr.split('|');
    		var isLogin = !true;
    		
    		var liItem = '';
    		
    		if(stGbCd == '10'){
	    		liItem += '<div class="prdt-box"><div class="bdge"><strong>닷컴<br>추천</strong></div>';
    		} else {
    			liItem += '<div class="prdt-box"><div class="bdge"><strong>패넷<br>추천</strong></div>';
    		}
    		liItem += '<div class="top"><div class="tag"><ul>';

   			if (prd.saleStatCd == '13') {
   				liItem += '    <li>상품준비중</li>';
   			} else {
   			
   				if (prd.flagStr != '') {
   					var flags = prd.flagStr.split('|');
   					
   					if (flags.length > 0) {
   						liItem += '    <li>' + flags[0] + '</li>';
   					}
   					
   					if (flags.length > 1) {
   						liItem += '    <li>' + flags[1] + '</li>';
   					}
   				}
   				
   				if (prd.goodsOrdTpCd != null) {
   					var goodsOrdTpCdFlags = prd.goodsOrdTpCd.split(';');
   					
   					for(var i=0; i<=goodsOrdTpCdFlags.length; i++) {
   		
   						if (goodsOrdTpCdFlags[i] ==  '01') {
   							if ('10' == prd.tradeInTypeCd || '20' == prd.tradeInTypeCd || '30' == prd.tradeInTypeCd || '40' == prd.tradeInTypeCd || '210' == prd.tradeInTypeCd) {
   								liItem += '    <li>트레이드인</li>';
   							} else {
   								liItem += '    <li>중고 추가보상</li>';
   							}
   								
   						}else{
   		
   						}  
   					}
   				}
   				if (prd.galaxyClubYn != null && prd.galaxyClubYn == 'Y') {
   					liItem += '    <li>My 갤럭시 클럽</li>';
   				}
   				
   				if(prd.customGoodsYn != null && prd.customGoodsYn  =='Y' || prd.customGoodsYn != null && prd.customGoodsYn  =='D'){
   					liItem += '    <li>Customize</li>';
   				}
   								
   				if(prd.outletFlgYn != null && prd.outletFlgYn == 'Y'){
   					liItem += '    <li>아울렛</li>';
   				}			
   				
   				if(prd.carePlusType == "CP"){
   					liItem += '    <li> 삼성케어플러스 </li>'; 
   				}				
   				
   				// 상품 플래그 명
   				if(prd.colVal1 !=null ){
   					liItem += '    <li>'+ prd.colVal1 +'</li>';
   				}			
   			}
   			
   			liItem += '</ul>';
   			
   			if ( stGbCd != '40' && stGbCd != '90' &&
				// 임직원몰(기획전몰)_체험단말 미노출 추가 2020-12-03
				!(stGbCd == '80' && (contextPath.indexOf("23_ma") > -1 ||
									contextPath.indexOf("23_pa") > -1 ||
									contextPath.indexOf("23_im") > -1 ||
									contextPath.indexOf("23_fan") > -1)
				)
				&& prd.isHomefitnessGoodsYn != 'Y'
			)
			{
				if(prd.hideBtnWishYn == 'Y'){
					liItem += '    <button style="display:none;" title="' + (prd.wishYn === 'Y' ? '선택됨' : '') + '"  class="btn-rcmd-good click-good' + (prd.wishYn === 'Y' ? ' on' : '') + '" data-goods-id="' + prd.goodsId + '" data-omni="'+ (prd.wishYn === 'Y' ? 'wish_off' : 'wish_on') +'"><span class="blind">찜하기 ' + (prd.wishYn === 'Y' ? '선택' : '미선택') + '</span></button>';
				}else{
					liItem += '    <button title="' + (prd.wishYn === 'Y' ? '선택됨' : '') + '"  class="btn-rcmd-good click-good' + (prd.wishYn === 'Y' ? ' on' : '') + '" data-goods-id="' + prd.goodsId + '" data-omni="'+ (prd.wishYn === 'Y' ? 'wish_off' : 'wish_on') +'"><span class="blind">찜하기 ' + (prd.wishYn === 'Y' ? '선택' : '미선택') + '</span></button>';	
				}
				
				liItem += '		<div class="bookmarkTooltip flashTooltip bookmarkOn"  style="display: none;"><div><p><span>찜</span>이 되었습니다.</p><a href="javascript:void(0);" class="btn-underline">전체보기</a></div></div><div class="bookmarkTooltip flashTooltip bookmarkOff" style="display: none;"><div><p><span>찜</span>이 취소되었습니다.</p></div></div>';			
			}
   			
   			liItem += '</div>';
   			
   			liItem += '<div class="info">' 
   			liItem += '<div class="img">';
   			liItem += '  <!-- 마우스 오버시 이미지 순차교체  -->';			
			
			if (prd.imgPath1 != null && prd.imgPath1[prd.imgPath1.length -1] != '$') {
					if(prd.imgPresetYn1 == 'Y'){
						prd.imgPath1 += '?$PF_PRD_KDP_PNG$';
					}else{
						prd.imgPath1 += '?$PF_PRD_PNG$';
					}
			}
			
			liItem += '    <img src="' + prd.imgPath1 + '" alt="' + prd.goodsNm.replace(/(<([^>]+)>)/ig,'').replace(/'/ig, '').replace(/"/ig, '') + '">';
			
			liItem += '</div>'; //<div class="img"> close
			
			liItem += '<div class="dtl">';
			
			liItem += '<h1>'+ prd.goodsNm.replace(/(<([^>]+)>)/ig,'').replace(/'/ig, '').replace(/"/ig, '') +'</h1>';
			
			liItem += '<p>'+ prd.mdlCode +'</p>';
			
			// 가격 && 멤버십
			liItem += htmlRcmndProductPrice(prd);
			
			liItem += htmlRcmndProductBtn(prd);
			
			liItem += '</div>'; // <div class="dtl"> close
			
			if((prd.compareExcptYn == null || prd.compareExcptYn == 'N') && '10' == '10'){
				liItem += '<div class="compare">';
				liItem += productCompareView(prd);
				liItem += '</div>';// <div class="compare"> close
			}
			
			liItem += '</div>'; // <div class="info"> close
			
			liItem += '</div>'; // <div class="top"> close
    		
			if(stGbCd == '10'){
				liItem += '<div class="bot">';
				
				liItem += '<div class="feature"><div class="titl"><strong>제품 특징</strong></div><ul>';
				
				if((prd.itdcMsg1 != null && prd.itdcMsg1 != '') && (prd.uspDescList != null && prd.uspDescList.length != 0)){
					liItem += '<li>';
					liItem += prd.itdcMsg1;
					liItem += '</li>';
					for(var i = 0; i < prd.uspDescList.length; i++){
						liItem += '<li">';
						liItem += prd.uspDescList[i];
						liItem += '</li>';
						if(i == 1){
							break;
						}
					}
				}else if((prd.itdcMsg1 == null || prd.itdcMsg1 == '') && (prd.uspDescList != null && prd.uspDescList.length != 0)){
					for(var i = 0; i < prd.uspDescList.length; i++){
						liItem += '<li>';
						liItem += prd.uspDescList[i];
						liItem += '</li>';
						if(i == 2){
							break;
						}
					}
				}else if((prd.itdcMsg1 != null && prd.itdcMsg1 != '') && (prd.uspDescList == null || prd.uspDescList.length == 0)){
					liItem += '<li>';
					liItem += prd.itdcMsg1;
					liItem += '</li>';
				}
				
				liItem += '</ul>';			
				liItem += '</div>'; // <div class="feature"> close		
				
				if ( (	stGbCd == '10' || stGbCd == '70' ||
						stGbCd == '80' && !(contextPath.indexOf("23_ma") > -1 ||
											contextPath.indexOf("23_pa") > -1 ||
											contextPath.indexOf("23_im") > -1 ||
											contextPath.indexOf("23_fan") > -1||
											contextPath.indexOf("galaxycampus") > -1)
					) && prd.isHomefitnessGoodsYn != 'Y'
				)
				{
					liItem += '<div class="epilogue">';			
					liItem += '<div class="titl">'; 	
					liItem += '<strong>후기 보기</strong>';
					liItem += '<a href="' + prdLink + '?focus=review"   title="상품평점" data-omni="productcomment">';
					liItem += '<div class="num">';
					liItem += '<p class="blind">평점</p>'+ prd.reviewGrade + '<span> (' + prd.reviewCount + ')</span>'	;
					liItem += '</div>'; // <div class="num"> close			
					liItem += '</a>';
					liItem += '</div>'; // <div class="titl"> close			
					
					liItem += '<ul class="list-box">';
					if(prd.goodsRcmndCommentList != null && prd.goodsRcmndCommentList.length !=0){
						for(var i = 0; i < prd.goodsRcmndCommentList.length; i++){
							liItem += '<li>';
							liItem += '<a href="' + prdLink + '?focus=review"   title="상품평점" data-omni="productcomment">';
							liItem += '<div class="item">';
							liItem += '<div class="stars point-'+prd.goodsRcmndCommentList[i].estmScore+'">';
							liItem += '<p class="blind">별점 '+prd.goodsRcmndCommentList[i].estmScore+'점</p>';
							liItem += '</div>';
							liItem += '<p>'+prd.goodsRcmndCommentList[i].content.replace(/&nbsp;/g, ' ')+'</p>';
							liItem += '</div>';
							liItem += '</a>';
							liItem += '</li>';
							if(i == 2){
								break;
							}
						}
					}
					liItem += '</ul>';
	
					// <!-- 22-11-22 슬라이드 프로그래스 바 추가 -->
					if(prd.goodsRcmndCommentList.length>1){				
						liItem += '<div class="prgrs-bar"><div class="inner"></div></div>';
					}
					liItem += '</div>'; // <div class="epilogue"> close	
				}
				liItem += '</div>'; // <div class="bot"> close
			}		
			liItem += '</div>'; // <div class="prdt-box"> close
			
   			return liItem;
    	}
    	
    	function htmlProductCard(prd, idx) {
			var contextPath = "/GMQDisplay-master/";
    		var prdLink = '/GMQDisplay-master/' + prd.goodsDetailUrl;
    		var stGbCd = '10';
    		
    		var price = prd.priceStr.split('|');
    		var isLogin = !true;
    	
    		
			var liItem = '';
			
			liItem += '<div class="item-inner" data-omni="';
			liItem += prd.mdlNm;
			liItem += '|';
			liItem += prd.mdlCode;
			liItem += '">';
			liItem += '  <div class="card-flag">';

			if (prd.saleStatCd == '13') {
				liItem += '    <span>상품준비중</span>';
			} else {
			
				if (prd.flagStr != '') {
					var flags = prd.flagStr.split('|');
					
					if (flags.length > 0) {
						liItem += '    <span>' + flags[0] + '</span>';
					}
					
					if (flags.length > 1) {
						liItem += '    <span>' + flags[1] + '</span>';
					}
				}
				
				if (prd.goodsOrdTpCd != null) {
					var goodsOrdTpCdFlags = prd.goodsOrdTpCd.split(';');
					
					for(var i=0; i<=goodsOrdTpCdFlags.length; i++) {
		
						if (goodsOrdTpCdFlags[i] ==  '01') {
							if ('10' == prd.tradeInTypeCd || '20' == prd.tradeInTypeCd || '30' == prd.tradeInTypeCd || '40' == prd.tradeInTypeCd || '210' == prd.tradeInTypeCd) {
								liItem += '    <span>트레이드인</span>';
							} else {
								liItem += '    <span>중고 추가보상</span>';
							}
								
						}else{
		
						}  
					}
				}
				if (prd.galaxyClubYn != null && prd.galaxyClubYn == 'Y') {
					liItem += '    <span>My 갤럭시 클럽</span>';
				}
				
				if(prd.customGoodsYn != null && prd.customGoodsYn  =='Y' || prd.customGoodsYn != null && prd.customGoodsYn  =='D'){
					liItem += '    <span>Customize</span>';
				}
								
				if(prd.outletFlgYn != null && prd.outletFlgYn == 'Y'){
					liItem += '    <span>아울렛</span>';
				}			
				
				if(prd.carePlusType == "CP"){
					liItem += '    <span> 삼성케어플러스 </span>'; 
				}				
				
				// 상품 플래그 명
				if(prd.colVal1 !=null ){
					liItem += '    <span>'+ prd.colVal1 +'</span>';
				}			
			
			}
			
			
			if ( stGbCd != '40' && stGbCd != '90' &&
				// 임직원몰(기획전몰)_체험단말 미노출 추가 2020-12-03
				!(stGbCd == '80' && (contextPath.indexOf("23_ma") > -1 ||
									contextPath.indexOf("23_pa") > -1 ||
									contextPath.indexOf("23_im") > -1 ||
									contextPath.indexOf("23_fan") > -1)
				)
				&& prd.isHomefitnessGoodsYn != 'Y'
			)
			{
				if(prd.hideBtnWishYn == 'Y'){
					liItem += '    <button style="display:none;" title="' + (prd.wishYn === 'Y' ? '선택됨' : '') + '" type="button" class="btn-good click-good' + (prd.wishYn === 'Y' ? ' on' : '') + '" data-goods-id="' + prd.goodsId + '" data-omni="'+ (prd.wishYn === 'Y' ? 'wish_off' : 'wish_on') +'"><i class="icon ico-large ico-goods">좋아요!! ' + (prd.wishYn === 'Y' ? '선택' : '미선택') + '</i></button>';
				}else{
					liItem += '    <button title="' + (prd.wishYn === 'Y' ? '선택됨' : '') + '" type="button" class="btn-good click-good' + (prd.wishYn === 'Y' ? ' on' : '') + '" data-goods-id="' + prd.goodsId + '" data-omni="'+ (prd.wishYn === 'Y' ? 'wish_off' : 'wish_on') +'"><i class="icon ico-large ico-goods">좋아요 ' + (prd.wishYn === 'Y' ? '선택' : '미선택') + '</i></button>';	
				}
				
				liItem += '		<div class="bookmarkTooltip flashTooltip bookmarkOn"><div><p><span>찜</span>이 되었습니다.</p><a href="javascript:void(0);" class="btn-underline">전체보기</a></div></div><div class="bookmarkTooltip flashTooltip bookmarkOff"><div><p><span>찜</span>이 취소되었습니다.</p></div></div>';			
			}
			
			liItem += '  </div>';
			liItem += '  <!-- 마우스 오버시 이미지 순차교체  -->';
			if ((stGbCd == '20' || stGbCd == '30') && (prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30' || prd.goodsAddTpCd === '50')){
				// 패널 상품일 경우 자동 선택 - 2022.09.06
				var bspkParam = '';
				if ('50' == prd.goodsAddTpCd) {
					bspkParam = '&pannelYn=Y';
				} else {
					bspkParam = '&selModel='+prd.mdlCode;
				}
				
				liItem += '<a href="" onclick="bespoke_Action_PF(\'bespoke/buy/fam/?id=bespoke-make'+bspkParam+'\');return false;" class="card-img" data-image-src="[';				
			} else {
				liItem += '<a href="'+prdLink+'" onclick="netFunnel_Action_PF(\'' + prdLink + '\');return false;" class="card-img" data-image-src="[';
			}
			
			if (prd.imgPath1 != null && prd.imgPath1[prd.imgPath1.length -1] != '$') {
					if(prd.imgPresetYn1 == 'Y'){
						prd.imgPath1 += '?$PF_PRD_KDP_PNG$';
					}else{
						prd.imgPath1 += '?$PF_PRD_PNG$';
					}
			}
			
			if (prd.imgPath2 != null && prd.imgPath2[prd.imgPath2.length -1] != '$') {
				if(prd.imgPresetYn2 == 'Y'){
					prd.imgPath2 += '?$PF_PRD_KDP_PNG$';
				}else{
					prd.imgPath2 += '?$PF_PRD_PNG$';
				}
			}
			
			if (prd.imgPath3 != null && prd.imgPath3[prd.imgPath3.length -1] != '$') {
				if(prd.imgPresetYn3 == 'Y'){
					prd.imgPath3 += '?$PF_PRD_KDP_PNG$';
				}else{
					prd.imgPath3 += '?$PF_PRD_PNG$';
				}
			}
			
			if (prd.imgPath4 != null && prd.imgPath4[prd.imgPath4.length -1] != '$') {
				if(prd.imgPresetYn4 == 'Y'){
					prd.imgPath4 += '?$PF_PRD_KDP_PNG$';
				}else{
					prd.imgPath4 += '?$PF_PRD_PNG$';
				}
			}
			
			liItem += '\'' + prd.imgPath1 + '\'';
			
			if (prd.imgPath2 != null) {
				liItem += ', \'' + prd.imgPath2 + '\'';	
			}
			
			if (prd.imgPath3 != null) {
				liItem += ', \'' + prd.imgPath3 + '\'';	
			}
			
			if (prd.imgPath4 != null) {
				liItem += ', \'' + prd.imgPath4 + '\'';	
			}
			
			liItem += ']">';
		
			//liItem += '  <!-- 마우스 오버시 이미지 순차교체  --><a href="' + prdLink + '" class="card-img" data-image-src="[\'' + prd.imgPath1 + '?$PF_PRD_PNG$\', \'' + prd.imgPath2 + '?$PF_PRD_PNG$\', \'' + prd.imgPath3 + '?$PF_PRD_PNG$\', \'' + prd.imgPath4 + '?$PF_PRD_PNG$\']">';
			
			liItem += '    <img src="' + prd.imgPath1 + '" alt="' + prd.goodsNm.replace(/(<([^>]+)>)/ig,'').replace(/'/ig, '').replace(/"/ig, '') + '">';
			
			liItem += '</a>';			
			
			liItem += '<div class="card-opt"></div><div class="card-option"></div>'
			
			liItem += '  <div class="card-detail">';
			liItem += '    <span class="prd-name" title="' + prd.goodsNm.replace(/(<([^>]+)>)/ig,'').replace(/'/ig, '').replace(/"/ig, '') + '">' + prd.goodsNm.replace(/\n/g, '<br>') + '</span>';
			liItem += '    <span class="prd-num">' + prd.mdlCode + '</span>';
			liItem += '  </div>';
			
			// 가격 && 멤버십
			liItem += htmlProductPrice(prd);
			
			liItem += htmlProductBtn(prd);
			
			if(stGbCd == '10'){
				liItem += '  <div class="card-purchase">';
				liItem += '<ul class="message-list">';
				if((prd.itdcMsg1 != null && prd.itdcMsg1 != '') && (prd.uspDescList != null && prd.uspDescList.length != 0)){
					liItem += '<li class="message-list-item">';
					liItem += prd.itdcMsg1;
					liItem += '</li>';
					for(var i = 0; i < prd.uspDescList.length; i++){
						liItem += '<li class="message-list-item">';
						liItem += prd.uspDescList[i];
						liItem += '</li>';
						if(i == 1){
							break;
						}
					}
				}else if((prd.itdcMsg1 == null || prd.itdcMsg1 == '') && (prd.uspDescList != null && prd.uspDescList.length != 0)){
					for(var i = 0; i < prd.uspDescList.length; i++){
						liItem += '<li class="message-list-item">';
						liItem += prd.uspDescList[i];
						liItem += '</li>';
						if(i == 2){
							break;
						}
					}
				}else if((prd.itdcMsg1 != null && prd.itdcMsg1 != '') && (prd.uspDescList == null || prd.uspDescList.length == 0)){
					liItem += '<li class="message-list-item">';
					liItem += prd.itdcMsg1;
					liItem += '</li>';
				}
				
				liItem += '</ul>';
				liItem += '    <div class="compare">';
				
				if((prd.compareExcptYn == null || prd.compareExcptYn == 'N') && '10' == '10'){
					liItem += productCompareView(prd);
				}
				
				// 패넷은 상품평 노출 제외
				// 임직원몰(기획전몰)_체험단말 노출 제외 추가 2020-12-03
				// 임직원몰(기획전몰)_갤럭시캠퍼스 노출 제외 추가 2020-12-29
				if ( (	stGbCd == '10' || stGbCd == '70' ||
						stGbCd == '80' && !(contextPath.indexOf("23_ma") > -1 ||
											contextPath.indexOf("23_pa") > -1 ||
											contextPath.indexOf("23_im") > -1 ||
											contextPath.indexOf("23_fan") > -1||
											contextPath.indexOf("galaxycampus") > -1)
					) && prd.isHomefitnessGoodsYn != 'Y'
				)
				{
					liItem += '      <a class="link-review" href="' + prdLink + '?focus=review"   title="상품평점" data-omni="productcomment_pf">' + prd.reviewGrade + ' (' + prd.reviewCount + ')</a>';
				}
				
				liItem += '    </div>';
				liItem += '  </div>';
			}
			liItem += '</div>';
			
			return liItem;
    	}
    	
    	function htmlRcmndProductPrice
		(prd) {
    		var stGbCd = '10';
    		var isLogin = !true;
			var contextPath = "/GMQDisplay-master/";
			var stId   = '1';			
			var titPrice = "혜택가";
			if(prd.outletFlgYn != null && prd.outletFlgYn == 'Y'){
				titPrice = "아울렛 특가";
			}		

			// 상품가격
    		if (prd.priceStr == null) {
    			return '  <div class="price-detail"></div> <div class="point-detail"></div>';
    		}
    		
    		var html = '';
    		
    		var price = prd.priceStr.split('|');
    		
    		if (price[2] == 0) {
    			return '  <div class="price-detail"></div> <div class="point-detail"></div>';
    		}
    		
    		//상품 상태가 판매중이 아닌 경우 가격 노출 안함.
    		if(prd.saleStatCd != '12' &&  prd.saleStatCd != '13' && prd.saleStatCd != '14' ) {
    			return '  <div class="price-detail"></div> <div class="point-detail"></div>';
    		}
    		
    		// 셰프컬렉션 or BESPOKE 상품이고 B2C,패밀리넷(로그인),등외급몰(로그인),복지몰(로그인),기획전몰(로그인),비즈니스 스토어,회원사 기획전몰(로그인) 경우 가격 미노출
    		if((prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30') && (stGbCd == 10) ){
    			//비스포크 최저가 
    			if(prd.bespokeMinimumPrice != null && prd.bespokeMinimumPrice != 0){
    				
    				var bspkMinPrice;
    				
    				if (price[1] == '00') {
    					bspkMinPrice = parseInt(price[3]) + parseInt(prd.bespokeMinimumPrice);
        			}else{
        				bspkMinPrice = parseInt(price[4]) + parseInt(prd.bespokeMinimumPrice);
        			}
    				
            		html += '    <div class="price-detail">';
        			html += '      <div class="pic">';
        			html += '        <em>' + fnComma(bspkMinPrice) + '</em><span class="unit">원 부터 ~</span>';
        			html += '      <p class="note-detail" >* 도어 색상/재질 및 옵션에 따라 가격은 변경됩니다.</p>';
        			
        			html += '      </div>';
        			html += '    </div>';
        			
        			html += '    <div class="point-detail">';
    				
	    			if(stGbCd !== '80' && prd.membershipUseExcptYn == 'N' && (prd.carePlusType == null || typeof prd.carePlusType == "undefined" || prd.carePlusType == "N" || prd.carePlusType == "CP") ){
	    				if(prd.thirdPartyYn == 'N'){
			    			if (isLogin && prd.membershipYn != 'Y') {
			    				html += '      <button type="button" class="btn-underline" onclick="goMembershipJoin()" data-omni="membership sign up">삼성전자 멤버십 가입하기</button>';	
			    			} else {			    			
			    				html += '      <span class="expect">적립 예정 포인트</span>';
			        			html += '      <strong class="point">' + fnComma(prd.membershipPoint) + 'P ~</strong>';
			    			}    	
	    				}
	    			}
	    			html += '    </div>';
    				
    				
    			}else{
    				
    				if (price[1] === '00') {
        				html += '        <em>' + fnComma(price[3]) + '</em><span>원</span>';
        			} else {
        				html += '        <em>' + fnComma(price[4]) + '</em><span>원</span>';
        			}
        			
    	        		html += '    <div class="price-detail">';
    	        		html += '      <span class="price"></span>';
    	        		html += '      <div class="sale">';
    	        		html += '        <em></em><span"></span>';
    	        		html += '        <div class="box-tip" aria-hidden="true">';
    	        		html += '          <ul>';
    	        		html += '            <li><span class="tit"></span><del class="price"></del></li>';
    	        		html += '            <li class="total"><span class="tit"></span><span class="price"></span></li>';
    	        		html += '          </ul>';
    	    			html += '        </div>';
    	    			html += '      </div>';
    	    			html += '    </div>';
    	    			html += '    <div class="point-detail">';
    	    			html += '    </div>';
    	    			
    			}
    		}
    		else if((prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30') &&(
        			(stGbCd == 20 && isLogin) || 
        			(stGbCd == 30 && isLogin)  
        			)){
    			
    			//비스포크 최저가 
    			if(prd.bespokeMinimumPrice != null && prd.bespokeMinimumPrice != 0){
    				
    				
        			html += '    <div class="price-detail type-list">';
        			html += '      <ul class="list-price">';
        			html += '        <li><span class="tit">출고가</span><span class="sale">' + fnComma(parseInt(price[2]) + parseInt(prd.bspkPrc1)) + ' 원 부터 ~</span></li>';
        			html += '        <li><span class="tit">기준판매가</span><span class="sale">' + fnComma(parseInt(price[3]) + parseInt(prd.bspkPrc2)) + ' 원 부터 ~</span></li>';
        			if (price[4] != '' && price[3] != price[4]) {
        				html += '        <li><span class="tit">특별판매가</span><span class="sale">' + fnComma(parseInt(price[4]) + parseInt(prd.bspkPrc3)) + ' 원 부터 ~</span></li>';
        			}
        			if (stGbCd === '30') {
        				html += '        <li class="support"><span class="tit">회사 지원금</span><span class="sale">' + fnComma(parseInt(price[5]) + parseInt(prd.bspkPrc5)) + ' 원 부터 ~</span></li>';
        			}
        			html += '      </ul>';
        			html += '      <div class="pic">';
        			html += '        <span class="tit">임직원가</span>';
        			html += '          <em>' + fnComma(parseInt(price[6]) + parseInt(prd.bspkPrc4)) + '</em><span class="unit">원 부터~</span>';
        			html += '      <p class="note-detail" >* 도어 색상/재질 및 옵션에 따라 가격은 변경됩니다.</p>';
        			html += '      </div>';
        			html += '    </div>';
        			
        			html += '    <div class="point-detail">';

        			if(stGbCd !== '80'){
    	    			if (isLogin && prd.membershipYn != 'Y') {
    	    				html += '      <button type="button" class="btn-underline" onclick="goMembershipJoin()" data-omni="membership sign up">삼성전자 멤버십 연동하기</button>';	
    	    			} else {	    				
    	    				html += '      <span class="expect">적립 예정 포인트</span>';
    	        			html += '      <strong class="point">' + fnComma(prd.membershipPoint) + 'P ~</strong>';
    	    			}    		
        			}
        			html += '    </div>';
    				
    			}else{
    				
    				if (price[1] === '00') {
        				html += '        <em>' + fnComma(price[3]) + '</em><span class="unit">원</span>';
        			} else {
        				html += '        <em>' + fnComma(price[4]) + '</em><span class="unit">원</span>';
        			}
        			
    	        		html += '    <div class="price-detail">';
    	        		html += '      <span class="sale"></span>';
    	        		html += '      <div class="pic">';
    	        		html += '        <em></em><span class="unit"></span>';
    	        		html += '        <div class="box-tip" aria-hidden="true">';
    	        		html += '          <ul>';
    	        		html += '            <li><span class="tit"></span><del class="price"></del></li>';
    	        		html += '            <li class="total"><span class="tit"></span><span class="price"></span></li>';
    	        		html += '          </ul>';
    	    			html += '        </div>';
    	    			html += '      </div>';
    	    			html += '    </div>';
    	    			html += '    <div class="point-detail">';
    	    			html += '    </div>';
    				
    			}
    			
    		}
    		else if((prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30') &&(
    			(stGbCd == 40 && isLogin) ||
    			(stGbCd == 50) ||
    			(stGbCd == 60 && isLogin) ||
    			(stGbCd == 70 && isLogin) ||
    			(stGbCd == 80 && isLogin))) {
	        		html += '    <div class="price-detail">';
	        		html += '      <span class="sale"></span>';
	        		html += '      <div class="pic">';
	        		html += '        <em></em><span class="unit"></span>';
	        		html += '        <div class="box-tip" aria-hidden="true">';
	        		html += '          <ul>';
	        		html += '            <li><span class="tit"></span><del class="price"></del></li>';
	        		html += '            <li class="total"><span class="tit"></span><span class="price"></span></li>';
	        		html += '          </ul>';
	    			html += '        </div>';
	    			html += '      </div>';
	    			html += '    </div>';
	    			html += '    <div class="point-detail">';
	    			html += '    </div>';
    		}else if (stGbCd === '10') {
        		html += '    <div class="price-detail">';
        		if (price[1] === '00' && price[2] != price[3] || price[1] != '00') {
        			html += '      <span class="price">' + fnComma(price[2]) + ' 원</span>';	
        		}
        		
    			html += '      <div class="sale">';
    			if (price[1] === '00') {
    				html += '        <em>' + fnComma(price[3]) + '</em><span>원</span>';
    			} else {
    				html += '        <em>' + fnComma(price[4]) + '</em><span>원</span>';
    			}
    			if (price[1] === '00' && price[2] != price[3] || price[1] != '00') {
    				html += '        <button class="btn-downtool"><span class="blind">툴팁보기(레이어열림)</span></button>';
    			}
    			html += '        <!-- s : 툴팁 -->';
    			html += '        <div class="box-tip" aria-hidden="true" style="display: none;">';
    			html += '          <ul>';
    			html += '            <li><span class="tit">기준가</span><del class="price">' + fnComma(price[2]) + ' 원</del></li>';
    			if (price[1] == '00') {
    				html += '            <li class="total"><span class="tit">회원가</span><span class="price">' + fnComma(price[3]) + ' 원</span></li>';
    			} else {
    				if (prd.outletFlgYn != 'Y') {
    					html += '            <li><span class="tit">회원가</span><del class="price">' + fnComma(price[3]) + ' 원</del></li>';
    				}
    				html += '            <li class="total"><span class="tit">'+titPrice+'</span><span class="price">' + fnComma(price[4]) + ' 원</span></li>';
    			} 
    			
    			html += '          </ul>';
    			html += '        </div>';
    			html += '        <!-- e : 툴팁 -->';
    			html += '      </div>';
    			html += '    </div>';
    			
    			//(한달살기) 특정 SKU 멤버십 포인트 미노출 처리
    			if(!((prd.mdlCode === 'NT950QDB-KC58T' || prd.mdlCode === 'NT950QDB-KC58F' || prd.mdlCode === 'NT950XDB-KC58O' || prd.mdlCode === 'NT950XDB-KC58F' || 
    					prd.mdlCode === 'NT930XDB-KC58O' || prd.mdlCode === 'NT930XDB-KC58F' || prd.mdlCode === 'NT930QDB-KC58O' || prd.mdlCode === 'NT930QDB-KC58F' || 
    					prd.mdlCode === 'NT950QDB-KD71T' || prd.mdlCode === 'NT950QDB-KD71U' || prd.mdlCode === 'NT950QDB-KD71V' || prd.mdlCode === 'NT950XDC-XD71R' || 
    					prd.mdlCode === 'NT950XDC-XD71T' || prd.mdlCode === 'NT950XDB-KD71T' || prd.mdlCode === 'NT950XDB-KD71U' || prd.mdlCode === 'NT950XDB-KD71V' ||
    					prd.mdlCode === 'NT950QDB-KC58O' || prd.mdlCode === 'NT930QDB-KC58T' || prd.mdlCode === 'NT950XDC-XL51O' || prd.mdlCode === 'SM-F926NZUYKOO' || prd.mdlCode === 'SM-F711NZUYKOO')
    					|| (prd.mdlCode === 'SM-F700NZKAKOO' && ('prd' === 'local'
    																	|| 'prd' === 'dev'
																		|| 'prd' === 'stg')))) {
    				html += '    <div class="point-detail">';
    				
    				
	    			if(stGbCd !== '80' && prd.membershipUseExcptYn == 'N' && (prd.carePlusType == null || typeof prd.carePlusType == "undefined" || prd.carePlusType == "N" || prd.carePlusType == "CP") ){
	    				if(prd.thirdPartyYn == 'N'){
			    			if (isLogin && prd.membershipYn != 'Y') {
			    				html += '      <button type="button" class="btn-underline" onclick="goMembershipJoin()" data-omni="membership sign up">삼성전자 멤버십 가입하기</button>';	
			    			} else {			    			
			    				html += '      <span class="expect">적립 예정 포인트</span>';
			        			html += '      <strong class="point">' + fnComma(prd.membershipPoint) + 'P</strong>';
			    			}    	
	    				}
	    			}
	    			html += '    </div>';
    			}
    		} else if (stGbCd === '20' || stGbCd === '30') {
    			
    			html += '    <dl class="fnet-dtl">';
    			html += '    <dt>출고가</dt>';
   				html += '    <dd>' + fnComma(price[2]) + ' 원</dd>';
				html += '    <dt>기준판매가</dt>';
				html += '    <dd>' + fnComma(price[3]) + ' 원</dd>';
				if (price[4] != '' && price[3] != price[4]) {
					html += '    <dt class="spcl">특별판매가</dt>';
					html += '    <dd class="spcl">' + fnComma(price[4]) + ' 원</dd>';
				}
				html += '    </dl>';
				
    			html += '    <div class="price-detail">';
    			
    			html += '    <span class="ttl">임직원가</span>';
    			html += '    <div class="sale">';
    			html += '    		<em>' + fnComma(price[6]) + '</em><span>원</span>';
    			html += '    </div>';
    			html += '    </div>';
    			
    			html += '    <div class="point-detail">';

    			if(stGbCd !== '80'){
	    			if (isLogin && prd.membershipYn != 'Y') {
	    				html += '      <button type="button" class="btn-underline" onclick="goMembershipJoin()" data-omni="membership sign up">삼성전자 멤버십 연동하기</button>';	
	    			} else {	    				
	    				html += '      <span class="expect">적립 예정 포인트</span>';
	        			html += '      <strong class="point">' + fnComma(prd.membershipPoint) + 'P</strong>';
	    			}    		
    			}
    			html += '    </div>';
    		} else if (stGbCd === '40') {	
    			// 등외급몰은 가격(prc1)과 배송비(prc2) 합산
    			if (price[2] === null || price[2] === undefined || $.trim(price[2]).length == 0) {
    				price[2] = 0;
    			}
    			
    			if (price[3] === null || price[3] === undefined || $.trim(price[3]).length == 0) {
    				price[3] = 0;
    			}
    			
    			var prc1 = parseInt(price[2], 10);
    			var prc2 = parseInt(price[3], 10);
    			
    			html += '    <div class="price-detail">';
    			html += '      <div class="sale">';
    			html += '        <em>' + fnComma(prc1+prc2) + '</em><span>원</span>';
    			html += '      </div>';
    			html += '    </div>';
    			
    		} else if (stGbCd === '70' || stGbCd === '80') {
				// 임직원몰(기획전몰)_체험단말
    			if(
					contextPath.indexOf("23_ma") > -1 ||
					contextPath.indexOf("23_pa") > -1 ||
					contextPath.indexOf("23_im") > -1 ||
					contextPath.indexOf("23_fan") > -1
				){
					html += '    <div class="price-detail">';
					// html += '      <span class="sale">' + fnComma(price[2]) + ' 원</span>';
					html += '      <div class="sale">';
					html += '        <em>' + fnComma(price[2]) + '</em><span>원</span>'; //판매가
					// html += '        <!-- s : 툴팁 -->';
					// html += '        <div class="box-tip" aria-hidden="true">';
					// html += '          <ul>';
					// html += '            <li><span class="tit">판매가</span><del class="price">' + fnComma(price[2]) + ' 원</del></li>';
					// html += '            <li class="total"><span class="tit">회원가</span><span class="price">' + fnComma(price[3]) + ' 원</span></li>';
					// html += '          </ul>';
					// html += '        </div>';
					// html += '        <!-- e : 툴팁 -->';
					html += '      </div>';
					html += '    </div>';
					html += '    <div class="point-detail">';
				}// 복지몰이고 임직원가 가격 노출해야 하는 경우 (220627 기준 삼판 패밀리몰뿐)
    			else if(stGbCd === '70' && '' == 'Y'){
        			html += '    <div class="price-detail type-list">';
        			html += '      <ul class="list-price">';
        			// 삼판 패밀리몰은 출고가 미노출
        			//html += '        <li><span class="tit">출고가</span><span class="sale">' + fnComma(price[2]) + ' 원</span></li>';
        			html += '        <li><span class="tit">기준판매가</span><span class="price">' + fnComma(price[3]) + ' 원</span></li>';
        			if (price[4] != '' && price[3] != price[4]) {
        				html += '        <li><span class="tit">특별판매가</span><span class="price">' + fnComma(price[4]) + ' 원</span></li>';
        			}
        			if (stGbCd === '30') {
        				html += '        <li class="support"><span class="tit">회사 지원금</span><span class="price">' + fnComma(price[5]) + ' 원</span></li>';
        			}
        			html += '      </ul>';
        			html += '      <div class="sale">';
        			html += '        <span class="tit">임직원가</span>';
        			html += '          <em>' + fnComma(price[6]) + '</em><span>원</span>';
        			html += '      </div>';
        			html += '    </div>';
        			
        			html += '    <div class="point-detail">';
    			}
    			// 그외
    			else{
            		html += '    <div class="price-detail">';
            		if (price[1] === '00' && price[2] != price[3] || price[1] != '00') {
            			html += '      <span class="price">' + fnComma(price[2]) + ' 원</span>';	
            		}
            		
        			html += '      <div class="sale">';
        			if (price[1] === '00') {
        				html += '        <em>' + fnComma(price[3]) + '</em><span>원</span>';
        			} else {
        				html += '        <em>' + fnComma(price[4]) + '</em><span>원</span>';
        			}
        			if (price[1] === '00' && price[2] != price[3] || price[1] != '00') {
        				html += '        <button class="btn-downtool"><span class="blind">툴팁보기(레이어열림)</span></button>';
        			}
        			html += '        <!-- s : 툴팁 -->';
        			html += '        <div class="box-tip" aria-hidden="true" style="display: none;">';
        			html += '          <ul>';
        			html += '            <li><span class="tit">판매가</span><del class="price">' + fnComma(price[2]) + ' 원</del></li>';
        			if (price[1] == '00') {
        				html += '            <li class="total"><span class="tit">회원가</span><span class="price">' + fnComma(price[3]) + ' 원</span></li>';
        			} else {
        				html += '            <li><span class="tit">회원가</span><del class="price">' + fnComma(price[3]) + ' 원</del></li>';
        				html += '            <li class="total"><span class="tit">'+titPrice+'</span><span class="price">' + fnComma(price[4]) + ' 원</span></li>';
        			}
        			html += '          </ul>';
        			html += '        </div>';
        			html += '        <!-- e : 툴팁 -->';
        			html += '      </div>';
        			html += '    </div>';
        			html += '    <div class="point-detail">';
				}

				var svmnUseYn = '';
				
    			if(stGbCd !== '80' && svmnUseYn != 'N'){ 
    				if( stId =='266' || stId =='206' ){ // 210416 복지몰 이지만 ST_ID값이 266 인 사이트는 멤버십 관련 항목 안보게 함 정재동   -->  B2B2C에서 포인트 노출  
    					if (isLogin && prd.membershipYn != 'Y') {
		    				html += '      <button type="button" class="btn-underline" onclick="goMembershipJoin()" data-omni="membership sign up">삼성전자 멤버십 연동하기</button>';	
		    			} else {		    				
		    				html += '      <span class="expect">적립 예정 포인트</span>';
		        			html += '      <strong class="point">' + fnComma(prd.membershipPoint) + 'P</strong>';
		    			}    	
    				}
		    					
    			}
    			html += '    </div>';
    		} else if (stGbCd === '90' && stId ==='193') {	// 210407  임직원몰(e카달로그), ST_ID값이 193인 사이트 정재동
        		html += '    <div class="price-detail">';
       			html += '      <span class="price">' + fnComma(price[2]) + ' 원</span>';	
    			html += '      <div class="sale">';
   				html += '        <em>' + fnComma(price[3]) + '</em><span>원</span>';
   				if (price[1] === '00' && price[2] != price[3] || price[1] != '00') {
    				html += '        <button type="button" class="btn-downtool"><span class="blind">툴팁보기(레이어열림)</span></button>';
    			}
    			html += '        <!-- s : 툴팁 -->';
    			html += '        <div class="box-tip" aria-hidden="true" style="display: none;">';
    			html += '          <ul>';
    			html += '            <li><span class="tit">판매가</span><del class="price">' + fnComma(price[2]) + ' 원</del></li>';
   				html += '            <li class="total"><span class="tit">'+titPrice+'</span><span class="price">' + fnComma(price[3]) + ' 원</span></li>';
    			html += '          </ul>';
    			html += '        </div>';
    			html += '        <!-- e : 툴팁 -->';
    			html += '      </div>';
    			html += '    </div>';
    			
    		}
    		
    		return html;
    	}
    	
    	function htmlProductPrice
		(prd) {
    		var stGbCd = '10';
    		var isLogin = !true;
			var contextPath = "/GMQDisplay-master/";
			var stId   = '1';			
			var titPrice = "혜택가";
			if(prd.outletFlgYn != null && prd.outletFlgYn == 'Y'){
				titPrice = "아울렛 특가";
			}		

			// 상품가격
    		if (prd.priceStr == null) {
    			return '  <div class="card-price"></div>';
    		}
    		
    		var html = '';
    		
    		var price = prd.priceStr.split('|');
    		
    		if (price[2] == 0) {
    			return '  <div class="card-price"></div>';
    		}
    		
    		//상품 상태가 판매중이 아닌 경우 가격 노출 안함.
    		if(prd.saleStatCd != '12' &&  prd.saleStatCd != '13' && prd.saleStatCd != '14' ) {
    			return '  <div class="card-price"></div>';
    		}
    		
    		// 셰프컬렉션 or BESPOKE 상품이고 B2C,패밀리넷(로그인),등외급몰(로그인),복지몰(로그인),기획전몰(로그인),비즈니스 스토어,회원사 기획전몰(로그인) 경우 가격 미노출
    		if((prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30') && (stGbCd == 10) ){
    			//비스포크 최저가 
    			if(prd.bespokeMinimumPrice != null && prd.bespokeMinimumPrice != 0){
    				
    				var bspkMinPrice;
    				
    				if (price[1] == '00') {
    					bspkMinPrice = parseInt(price[3]) + parseInt(prd.bespokeMinimumPrice);
        			}else{
        				bspkMinPrice = parseInt(price[4]) + parseInt(prd.bespokeMinimumPrice);
        			}
    				
    				html += '  <div class="card-price">';
            		html += '    <div class="price-detail">';
        			html += '      <div class="pic">';
        			html += '        <em>' + fnComma(bspkMinPrice) + '</em><span class="unit">원 부터 ~</span>';
        			html += '      <p class="note-detail" >* 도어 색상/재질 및 옵션에 따라 가격은 변경됩니다.</p>';
        			
        			html += '      </div>';
        			html += '    </div>';
        			
        			html += '    <div class="point-detail">';
    				
	    			if(stGbCd !== '80' && prd.membershipUseExcptYn == 'N' && (prd.carePlusType == null || typeof prd.carePlusType == "undefined" || prd.carePlusType == "N" || prd.carePlusType == "CP") ){
	    				if(prd.thirdPartyYn == 'N'){
			    			if (isLogin && prd.membershipYn != 'Y') {
			    				html += '      <button type="button" class="btn-underline" onclick="goMembershipJoin()" data-omni="membership sign up">삼성전자 멤버십 가입하기</button>';	
			    			} else {			    			
			    				html += '      <span class="expect">적립 예정 포인트</span>';
			        			html += '      <span class="point">' + fnComma(prd.membershipPoint) + 'P ~</span>';
			    			}    	
	    				}
	    			}
	    			html += '    </div>';
        			html += '  </div>';
    				
    				
    			}else{
    				
    				if (price[1] === '00') {
        				html += '        <em>' + fnComma(price[3]) + '</em><span class="unit">원</span>';
        			} else {
        				html += '        <em>' + fnComma(price[4]) + '</em><span class="unit">원</span>';
        			}
        			
    	    			html += '  <div class="card-price">';
    	        		html += '    <div class="price-detail">';
    	        		html += '      <span class="sale"></span>';
    	        		html += '      <div class="pic">';
    	        		html += '        <em></em><span class="unit"></span>';
    	        		html += '        <div class="box-tip" aria-hidden="true">';
    	        		html += '          <ul>';
    	        		html += '            <li><span class="tit"></span><del class="price"></del></li>';
    	        		html += '            <li class="total"><span class="tit"></span><span class="price"></span></li>';
    	        		html += '          </ul>';
    	    			html += '        </div>';
    	    			html += '      </div>';
    	    			html += '    </div>';
    	    			html += '    <div class="point-detail">';
    	    			html += '    </div>';
    	    			html += '  </div>';
    	    			
    			}
    		}
    		else if((prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30') &&(
        			(stGbCd == 20 && isLogin) || 
        			(stGbCd == 30 && isLogin)  
        			)){
    			
    			//비스포크 최저가 
    			if(prd.bespokeMinimumPrice != null && prd.bespokeMinimumPrice != 0){
    				
    				
    				html += '  <div class="card-price">';
        			html += '    <div class="price-detail type-list">';
        			html += '      <ul class="list-price">';
        			html += '        <li><span class="tit">출고가</span><span class="sale">' + fnComma(parseInt(price[2]) + parseInt(prd.bspkPrc1)) + ' 원 부터 ~</span></li>';
        			html += '        <li><span class="tit">기준판매가</span><span class="sale">' + fnComma(parseInt(price[3]) + parseInt(prd.bspkPrc2)) + ' 원 부터 ~</span></li>';
        			if (price[4] != '' && price[3] != price[4]) {
        				html += '        <li><span class="tit">특별판매가</span><span class="sale">' + fnComma(parseInt(price[4]) + parseInt(prd.bspkPrc3)) + ' 원 부터 ~</span></li>';
        			}
        			if (stGbCd === '30') {
        				html += '        <li class="support"><span class="tit">회사 지원금</span><span class="sale">' + fnComma(parseInt(price[5]) + parseInt(prd.bspkPrc5)) + ' 원 부터 ~</span></li>';
        			}
        			html += '      </ul>';
        			html += '      <div class="pic">';
        			html += '        <span class="tit">임직원가</span>';
        			html += '          <em>' + fnComma(parseInt(price[6]) + parseInt(prd.bspkPrc4)) + '</em><span class="unit">원 부터~</span>';
        			html += '      <p class="note-detail" >* 도어 색상/재질 및 옵션에 따라 가격은 변경됩니다.</p>';
        			html += '      </div>';
        			html += '    </div>';
        			
        			html += '    <div class="point-detail">';

        			if(stGbCd !== '80'){
    	    			if (isLogin && prd.membershipYn != 'Y') {
    	    				html += '      <button type="button" class="btn-underline" onclick="goMembershipJoin()" data-omni="membership sign up">삼성전자 멤버십 연동하기</button>';	
    	    			} else {	    				
    	    				html += '      <span class="expect">적립 예정 포인트</span>';
    	        			html += '      <span class="point">' + fnComma(prd.membershipPoint) + 'P ~</span>';
    	    			}    		
        			}
        			html += '    </div>';
        			
        			html += '  </div>';
    				
    			}else{
    				
    				if (price[1] === '00') {
        				html += '        <em>' + fnComma(price[3]) + '</em><span class="unit">원</span>';
        			} else {
        				html += '        <em>' + fnComma(price[4]) + '</em><span class="unit">원</span>';
        			}
        			
    	    			html += '  <div class="card-price">';
    	        		html += '    <div class="price-detail">';
    	        		html += '      <span class="sale"></span>';
    	        		html += '      <div class="pic">';
    	        		html += '        <em></em><span class="unit"></span>';
    	        		html += '        <div class="box-tip" aria-hidden="true">';
    	        		html += '          <ul>';
    	        		html += '            <li><span class="tit"></span><del class="price"></del></li>';
    	        		html += '            <li class="total"><span class="tit"></span><span class="price"></span></li>';
    	        		html += '          </ul>';
    	    			html += '        </div>';
    	    			html += '      </div>';
    	    			html += '    </div>';
    	    			html += '    <div class="point-detail">';
    	    			html += '    </div>';
    	    			html += '  </div>';
    				
    			}
    			
    		}
    		else if((prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30') &&(
    			(stGbCd == 40 && isLogin) ||
    			(stGbCd == 50) ||
    			(stGbCd == 60 && isLogin) ||
    			(stGbCd == 70 && isLogin) ||
    			(stGbCd == 80 && isLogin))) {
	    			html += '  <div class="card-price">';
	        		html += '    <div class="price-detail">';
	        		html += '      <span class="sale"></span>';
	        		html += '      <div class="pic">';
	        		html += '        <em></em><span class="unit"></span>';
	        		html += '        <div class="box-tip" aria-hidden="true">';
	        		html += '          <ul>';
	        		html += '            <li><span class="tit"></span><del class="price"></del></li>';
	        		html += '            <li class="total"><span class="tit"></span><span class="price"></span></li>';
	        		html += '          </ul>';
	    			html += '        </div>';
	    			html += '      </div>';
	    			html += '    </div>';
	    			html += '    <div class="point-detail">';
	    			html += '    </div>';
	    			html += '  </div>';
    		}else if (stGbCd === '10') {
    			html += '  <div class="card-price">';
        		html += '    <div class="price-detail">';
        		if (price[1] === '00' && price[2] != price[3] || price[1] != '00') {
        			html += '      <span class="sale">' + fnComma(price[2]) + ' 원</span>';	
        		}
        		
    			html += '      <div class="pic">';
    			if (price[1] === '00') {
    				html += '        <em>' + fnComma(price[3]) + '</em><span class="unit">원</span>';
    			} else {
    				html += '        <em>' + fnComma(price[4]) + '</em><span class="unit">원</span>';
    			}
    			if (price[1] === '00' && price[2] != price[3] || price[1] != '00') {
    				html += '        <button type="button" class="btn-downtool"><span class="blind">툴팁보기(레이어열림)</span></button>';
    			}
    			html += '        <!-- s : 툴팁 -->';
    			html += '        <div class="box-tip" aria-hidden="true">';
    			html += '          <ul>';
    			html += '            <li><span class="tit">기준가</span><del class="price">' + fnComma(price[2]) + ' 원</del></li>';
    			if (price[1] == '00') {
    				html += '            <li class="total"><span class="tit">회원가</span><span class="price">' + fnComma(price[3]) + ' 원</span></li>';
    			} else {
    				if (prd.outletFlgYn != 'Y') {
    					html += '            <li><span class="tit">회원가</span><del class="price">' + fnComma(price[3]) + ' 원</del></li>';
    				}
    				html += '            <li class="total"><span class="tit">'+titPrice+'</span><span class="price">' + fnComma(price[4]) + ' 원</span></li>';
    			} 
    			
    			html += '          </ul>';
    			html += '        </div>';
    			html += '        <!-- e : 툴팁 -->';
    			html += '      </div>';
    			html += '    </div>';
    			
    			//(한달살기) 특정 SKU 멤버십 포인트 미노출 처리
    			if(!((prd.mdlCode === 'NT950QDB-KC58T' || prd.mdlCode === 'NT950QDB-KC58F' || prd.mdlCode === 'NT950XDB-KC58O' || prd.mdlCode === 'NT950XDB-KC58F' || 
    					prd.mdlCode === 'NT930XDB-KC58O' || prd.mdlCode === 'NT930XDB-KC58F' || prd.mdlCode === 'NT930QDB-KC58O' || prd.mdlCode === 'NT930QDB-KC58F' || 
    					prd.mdlCode === 'NT950QDB-KD71T' || prd.mdlCode === 'NT950QDB-KD71U' || prd.mdlCode === 'NT950QDB-KD71V' || prd.mdlCode === 'NT950XDC-XD71R' || 
    					prd.mdlCode === 'NT950XDC-XD71T' || prd.mdlCode === 'NT950XDB-KD71T' || prd.mdlCode === 'NT950XDB-KD71U' || prd.mdlCode === 'NT950XDB-KD71V' ||
    					prd.mdlCode === 'NT950QDB-KC58O' || prd.mdlCode === 'NT930QDB-KC58T' || prd.mdlCode === 'NT950XDC-XL51O' || prd.mdlCode === 'SM-F926NZUYKOO' || prd.mdlCode === 'SM-F711NZUYKOO')
    					|| (prd.mdlCode === 'SM-F700NZKAKOO' && ('prd' === 'local'
    																	|| 'prd' === 'dev'
																		|| 'prd' === 'stg')))) {
    				html += '    <div class="point-detail">';
    				
    				
	    			if(stGbCd !== '80' && prd.membershipUseExcptYn == 'N' && (prd.carePlusType == null || typeof prd.carePlusType == "undefined" || prd.carePlusType == "N" || prd.carePlusType == "CP") ){
	    				if(prd.thirdPartyYn == 'N'){
			    			if (isLogin && prd.membershipYn != 'Y') {
			    				html += '      <button type="button" class="btn-underline" onclick="goMembershipJoin()" data-omni="membership sign up">삼성전자 멤버십 가입하기</button>';	
			    			} else {			    			
			    				html += '      <span class="expect">적립 예정 포인트</span>';
			        			html += '      <span class="point">' + fnComma(prd.membershipPoint) + 'P</span>';
			    			}    	
	    				}
	    			}
	    			html += '    </div>';
    			}
    			html += '  </div>';
    		} else if (stGbCd === '20' || stGbCd === '30') {
    			html += '  <div class="card-price">';
    			html += '    <div class="price-detail type-list">';
    			html += '      <ul class="list-price">';
    			html += '        <li><span class="tit">출고가</span><span class="sale">' + fnComma(price[2]) + ' 원</span></li>';
    			html += '        <li><span class="tit">기준판매가</span><span class="sale">' + fnComma(price[3]) + ' 원</span></li>';
    			if (price[4] != '' && price[3] != price[4]) {
    				html += '        <li><span class="tit">특별판매가</span><span class="sale">' + fnComma(price[4]) + ' 원</span></li>';
    			}
    			if (stGbCd === '30') {
    				html += '        <li class="support"><span class="tit">회사 지원금</span><span class="sale">' + fnComma(price[5]) + ' 원</span></li>';
    			}
    			html += '      </ul>';
    			html += '      <div class="pic">';
    			html += '        <span class="tit">임직원가</span>';
    			html += '          <em>' + fnComma(price[6]) + '</em><span class="unit">원</span>';
    			html += '      </div>';
    			html += '    </div>';
    			
    			html += '    <div class="point-detail">';

    			if(stGbCd !== '80'){
	    			if (isLogin && prd.membershipYn != 'Y') {
	    				html += '      <button type="button" class="btn-underline" onclick="goMembershipJoin()" data-omni="membership sign up">삼성전자 멤버십 연동하기</button>';	
	    			} else {	    				
	    				html += '      <span class="expect">적립 예정 포인트</span>';
	        			html += '      <span class="point">' + fnComma(prd.membershipPoint) + 'P</span>';
	    			}    		
    			}
    			html += '    </div>';
    			
    			html += '  </div>';
    		} else if (stGbCd === '40') {	
    			// 등외급몰은 가격(prc1)과 배송비(prc2) 합산
    			if (price[2] === null || price[2] === undefined || $.trim(price[2]).length == 0) {
    				price[2] = 0;
    			}
    			
    			if (price[3] === null || price[3] === undefined || $.trim(price[3]).length == 0) {
    				price[3] = 0;
    			}
    			
    			var prc1 = parseInt(price[2], 10);
    			var prc2 = parseInt(price[3], 10);
    			
    			html += '  <div class="card-price">';
    			html += '    <div class="price-detail">';
    			html += '      <div class="pic">';
    			html += '        <em>' + fnComma(prc1+prc2) + '</em><span class="unit">원</span>';
    			html += '      </div>';
    			html += '    </div>';
    			
    			html += '  </div>';
    		} else if (stGbCd === '70' || stGbCd === '80') {
				// 임직원몰(기획전몰)_체험단말
    			if(
					contextPath.indexOf("23_ma") > -1 ||
					contextPath.indexOf("23_pa") > -1 ||
					contextPath.indexOf("23_im") > -1 ||
					contextPath.indexOf("23_fan") > -1
				){
					html += '  <div class="card-price">';
					html += '    <div class="price-detail">';
					// html += '      <span class="sale">' + fnComma(price[2]) + ' 원</span>';
					html += '      <div class="pic">';
					html += '        <em>' + fnComma(price[2]) + '</em><span class="unit">원</span>'; //판매가
					// html += '        <!-- s : 툴팁 -->';
					// html += '        <div class="box-tip" aria-hidden="true">';
					// html += '          <ul>';
					// html += '            <li><span class="tit">판매가</span><del class="price">' + fnComma(price[2]) + ' 원</del></li>';
					// html += '            <li class="total"><span class="tit">회원가</span><span class="price">' + fnComma(price[3]) + ' 원</span></li>';
					// html += '          </ul>';
					// html += '        </div>';
					// html += '        <!-- e : 툴팁 -->';
					html += '      </div>';
					html += '    </div>';
					html += '    <div class="point-detail">';
				}// 복지몰이고 임직원가 가격 노출해야 하는 경우 (220627 기준 삼판 패밀리몰뿐)
    			else if(stGbCd === '70' && '' == 'Y'){
    				html += '  <div class="card-price">';
        			html += '    <div class="price-detail type-list">';
        			html += '      <ul class="list-price">';
        			// 삼판 패밀리몰은 출고가 미노출
        			//html += '        <li><span class="tit">출고가</span><span class="sale">' + fnComma(price[2]) + ' 원</span></li>';
        			html += '        <li><span class="tit">기준판매가</span><span class="sale">' + fnComma(price[3]) + ' 원</span></li>';
        			if (price[4] != '' && price[3] != price[4]) {
        				html += '        <li><span class="tit">특별판매가</span><span class="sale">' + fnComma(price[4]) + ' 원</span></li>';
        			}
        			if (stGbCd === '30') {
        				html += '        <li class="support"><span class="tit">회사 지원금</span><span class="sale">' + fnComma(price[5]) + ' 원</span></li>';
        			}
        			html += '      </ul>';
        			html += '      <div class="pic">';
        			html += '        <span class="tit">임직원가</span>';
        			html += '          <em>' + fnComma(price[6]) + '</em><span class="unit">원</span>';
        			html += '      </div>';
        			html += '    </div>';
        			
        			html += '    <div class="point-detail">';
    			}
    			// 그외
    			else{
        			html += '  <div class="card-price">';
            		html += '    <div class="price-detail">';
            		if (price[1] === '00' && price[2] != price[3] || price[1] != '00') {
            			html += '      <span class="sale">' + fnComma(price[2]) + ' 원</span>';	
            		}
            		
        			html += '      <div class="pic">';
        			if (price[1] === '00') {
        				html += '        <em>' + fnComma(price[3]) + '</em><span class="unit">원</span>';
        			} else {
        				html += '        <em>' + fnComma(price[4]) + '</em><span class="unit">원</span>';
        			}
        			if (price[1] === '00' && price[2] != price[3] || price[1] != '00') {
        				html += '        <button type="button" class="btn-downtool"><span class="blind">툴팁보기(레이어열림)</span></button>';
        			}
        			html += '        <!-- s : 툴팁 -->';
        			html += '        <div class="box-tip" aria-hidden="true">';
        			html += '          <ul>';
        			html += '            <li><span class="tit">판매가</span><del class="price">' + fnComma(price[2]) + ' 원</del></li>';
        			if (price[1] == '00') {
        				html += '            <li class="total"><span class="tit">회원가</span><span class="price">' + fnComma(price[3]) + ' 원</span></li>';
        			} else {
        				html += '            <li><span class="tit">회원가</span><del class="price">' + fnComma(price[3]) + ' 원</del></li>';
        				html += '            <li class="total"><span class="tit">'+titPrice+'</span><span class="price">' + fnComma(price[4]) + ' 원</span></li>';
        			}
        			html += '          </ul>';
        			html += '        </div>';
        			html += '        <!-- e : 툴팁 -->';
        			html += '      </div>';
        			html += '    </div>';
        			html += '    <div class="point-detail">';
				}

				var svmnUseYn = '';
				
    			if(stGbCd !== '80' && svmnUseYn != 'N'){ 
    				if( stId =='266' || stId =='206' ){ // 210416 복지몰 이지만 ST_ID값이 266 인 사이트는 멤버십 관련 항목 안보게 함 정재동   -->  B2B2C에서 포인트 노출  
    					if (isLogin && prd.membershipYn != 'Y') {
		    				html += '      <button type="button" class="btn-underline" onclick="goMembershipJoin()" data-omni="membership sign up">삼성전자 멤버십 연동하기</button>';	
		    			} else {		    				
		    				html += '      <span class="expect">적립 예정 포인트</span>';
		        			html += '      <span class="point">' + fnComma(prd.membershipPoint) + 'P</span>';
		    			}    	
    				}
		    					
    			}
    			html += '    </div>';
    			
    			html += '  </div>';
    		} else if (stGbCd === '90' && stId ==='193') {	// 210407  임직원몰(e카달로그), ST_ID값이 193인 사이트 정재동
    			html += '  <div class="card-price">';
        		html += '    <div class="price-detail">';
       			html += '      <span class="sale">' + fnComma(price[2]) + ' 원</span>';	
    			html += '      <div class="pic">';
   				html += '        <em>' + fnComma(price[3]) + '</em><span class="unit">원</span>';
   				if (price[1] === '00' && price[2] != price[3] || price[1] != '00') {
    				html += '        <button type="button" class="btn-downtool"><span class="blind">툴팁보기(레이어열림)</span></button>';
    			}
    			html += '        <!-- s : 툴팁 -->';
    			html += '        <div class="box-tip" aria-hidden="true">';
    			html += '          <ul>';
    			html += '            <li><span class="tit">판매가</span><del class="price">' + fnComma(price[2]) + ' 원</del></li>';
   				html += '            <li class="total"><span class="tit">'+titPrice+'</span><span class="price">' + fnComma(price[3]) + ' 원</span></li>';
    			html += '          </ul>';
    			html += '        </div>';
    			html += '        <!-- e : 툴팁 -->';
    			html += '      </div>';
    			html += '    </div>';
    			
    			html += '  </div>';
    		}
    		
    		return html;
    	}
    	

    	
    	    
    		
    	function htmlRcmndProductBtn(prd) {
			var contextPath = "/GMQDisplay-master/";
	   		var prdLink = '/GMQDisplay-master/' + prd.goodsDetailUrl;
	   		var loginLink = '/GMQDisplay-master/' + 'member/indexLogin/';
	   		var stGbCd = '10';
	   		var isLogin = !true;
	
	   		var html = '';
	   		var btnCd = ''; // 10: 구매하기(주문/결제), 11: 조합하여 구매하기, 12:디자인하기(상품속성 커스텀 상품 여부Y) ,20: 재입고 알림(상세), 21: 재입고 알림(로그인), 30: 자세히 보기, 00: 판매종료(임직원몰(기획전몰)_체험단말용)
	   							   
	   							   
	   		var stId = '1';
	   		// 구매하기
	   		
	   		if (stGbCd === '10') {
	   			if (prd.saleStatCd === '12') {
	   				if(prd.customGoodsYn === 'Y' || prd.customGoodsYn === 'D'){
	   					btnCd = '12';
	   				}else{
	   					if(prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30') {
	       					btnCd = '11';
	       				} else {
	      						btnCd = '10';
	       				}	
	   				}    				    				    					
	   			} else if (prd.saleStatCd === '13') {
	   				//재입고 알림 사용 안함 - 2020.12.17 (#26002)
	   				//btnCd = isLogin ? '20': '21';
	   				btnCd = '30';
	   			} else if (['14', '16', '17', '15'].indexOf(prd.saleStatCd) > -1) {
	   				btnCd = '30';
	   			}
	   			
	   			if(prd.mdlCode == 'SM-F926NZUYKOO' || prd.mdlCode == 'SM-F711NZUYKOO' || prd.mdlCode == 'SM-F916NZKAKOO'){
	   				btnCd = '30';
	   			}
	   		} else if (['20', '30'].indexOf(stGbCd) > -1) {
	   			if (prd.saleStatCd === '12') {
	   				if(prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30'){
	   					btnCd = '11';
	   				} else {
	   					btnCd = '10';
					}
	   			} else if (prd.saleStatCd === '13') {
	   				btnCd = '30';
	   			} else if (prd.saleStatCd === '17') {
	   				btnCd = '30';	// 미판매 자세히 보기 추가(10/05)
	   			}
	   		} else if (stGbCd === '40') {
	   			if (prd.saleStatCd === '12') {
	   				if(prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30'){
	   					btnCd = '11';
	   				} else {
	   					btnCd = '10';
					}
	   			} else if (prd.saleStatCd === '17') {
	   				btnCd = '30';	// 미판매 자세히 보기 추가(10/05)
	   			} 
	   		} else if (['70', '80'].indexOf(stGbCd) > -1) {
				// 임직원몰(기획전몰)_체험단말
				if(
					contextPath.indexOf("23_ma") > -1 ||
					contextPath.indexOf("23_pa") > -1 ||
					contextPath.indexOf("23_im") > -1 ||
					contextPath.indexOf("23_fan") > -1
				){
					if(prd.saleStatCd === '12'){
						if(prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30'){
							btnCd = '11';
						}else{
							btnCd = '10';
						}
					}else{
						btnCd = '00';
					}
				}
				// 그외
				else{
					if (prd.saleStatCd === '12') {
						if(prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30'){
							btnCd = '11';
						}else{
							btnCd = '10';
						}
					} else if (prd.saleStatCd === '13') {
						//재입고 알림 사용 안함 - 2020.12.17 (#26002)
						//btnCd = isLogin ? '20': '21';
						btnCd = '30';
					} else if (prd.saleStatCd === '18') {
						btnCd = '30';
					} else if (prd.saleStatCd === '17') {
						btnCd = '30';	// 미판매 자세히 보기 추가(10/05)
					}
				}
	   		} else if (stGbCd === '50') {
	   			if (prd.saleStatCd === '12') {
	   				if(prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30'){
	   					btnCd = '11';
	   				}else{
	   					btnCd = '10';
					}
	   			} else if (prd.saleStatCd === '13') {
	   				//재입고 알림 사용 안함 - 2020.12.17 (#26002)
	   				//btnCd = isLogin ? '20': '21';
	   				btnCd = '30';
	   			} else if (['14', '15'].indexOf(prd.saleStatCd) > -1) {
	   				btnCd = '30';
	   			} else if (prd.saleStatCd === '17') {
	   				btnCd = '30';	// 미판매 자세히 보기 추가(10/05)
	   			}
	   		} else if (stGbCd === '60') {
	   			if (prd.saleStatCd === '12') {
	   				if(prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30'){
	   					btnCd = '11';
	   				}else{
	   					btnCd = '10';
					}
	   			} else if (prd.saleStatCd === '13') {
	   				//재입고 알림 사용 안함 - 2020.12.17 (#26002)
	   				//btnCd = isLogin ? '20': '21';
	   				btnCd = '30';
	   			} else if (['17', '15'].indexOf(prd.saleStatCd) > -1) {
	   				btnCd = '30';
	   			}
	   		} else if ((stGbCd === '90') && (stId === '193')) { // 임직원몰(e카달로그) 중 193번 사이트 아이디 일때는 자세히보기 정재동
	   			btnCd = '30';
	   		}
	   		
	   		html += '  <div class="cta">';
	   		if (btnCd === '10') {
       			html += '    <!-- 200723 href 속성 삭제 --><button class="btn btn-type2 btn-rcmd-prdt" onclick="netFunnel_Action_PF(\''+prdLink+'\');return false;" data-omni=\"'+ prd.mdlNm + '|'+ prd.mdlCode+'\">구매하기</button>';
	   		} else if (btnCd === '11') {
	   			if(stGbCd == '20' || stGbCd == '30'){
	   				// 패널 상품일 경우 자동 선택 - 2022.09.06
	   				var bspkParam = '';
	   				if ('50' == prd.goodsAddTpCd) {
	   					bspkParam = '&pannelYn=Y';
	   				} else {
	   					bspkParam = '&selModel='+prd.mdlCode;
	   				}    				
	   				html += '    <!-- 200723 href 속성 삭제 --><button class="btn btn-type2 btn-rcmd-prdt" onclick="bespoke_Action_PF(\'bespoke/buy/fam/?id=bespoke-make'+bspkParam+'\');return false;" data-omni=\"'+ prd.mdlNm + '|'+ prd.mdlCode+'\">조합하여 구매하기</button>';
	       		}
	   			else{
	   				html += '    <!-- 200723 href 속성 삭제 --><button class="btn btn-type2 btn-rcmd-prdt" onclick="netFunnel_Action_PF(\''+prdLink+'\');return false;" data-omni=\"'+ prd.mdlNm + '|'+ prd.mdlCode+'\">조합하여 구매하기</button>';
	       		}
	  		} else if (btnCd === '20') {
	  				html += '    <!-- 200723 href 속성 삭제 --><button class="btn btn-type5 btn-rcmd-prdt" onclick="netFunnel_Action_PF(\'' + prdLink + '?stock-notice=Y\');" data-omni=\"'+ prd.mdlNm + '|'+ prd.mdlCode+'\">재입고 알림</button>';   			
	   		} else if (btnCd === '21') {
	   			html += '    <!-- 200723 href 속성 삭제 --><button class="btn btn-type5 btn-rcmd-prdt" onclick="netFunnel_Action_PF(\'' + loginLink + '?returnUrl='+ prdLink + '\');return false;" data-omni=\"'+ prd.mdlNm + '|'+ prd.mdlCode+'\">재입고 알림</button>';    			
	   		} else if (btnCd === '30') {
   				if(stGbCd =='20' || stGbCd == '30'){
   					html += '    <!-- 200723 href 속성 삭제 --><button class="btn btn-type1 btn-rcmd-prdt" onclick="netFunnel_Action_PF(\''+prdLink+'\');return false;" data-omni=\"'+ prd.mdlNm + '|'+ prd.mdlCode+'\">재입고 알림 신청</button>';
   				}else{
   					html += '    <!-- 200723 href 속성 삭제 --><button class="btn btn-type1 btn-rcmd-prdt" onclick="netFunnel_Action_PF(\''+prdLink+'\');return false;" data-omni=\"'+ prd.mdlNm + '|'+ prd.mdlCode+'\">자세히 보기</button>';	
   				}
	   		} else if (btnCd === '12') { //상품속성 커스텀 상품 일때 
	       		html += '    <!-- 200723 href 속성 삭제 --><button class="btn btn-type2 btn-rcmd-prdt" onclick="netFunnel_Action_PF(\''+prdLink+'\');return false;" data-omni=\"'+ prd.mdlNm + '|'+ prd.mdlCode+'\">디자인하기</button>';
	   		} 
	   		
	   		html += '  </div>';
	   		
	   		return html;
	   	}
    	

    	
    	    
    		
    	function htmlProductBtn(prd) {
			var contextPath = "/GMQDisplay-master/";
	   		var prdLink = '/GMQDisplay-master/' + prd.goodsDetailUrl;
	   		var loginLink = '/GMQDisplay-master/' + 'member/indexLogin/';
	   		var stGbCd = '10';
	   		var isLogin = !true;
	
	   		var html = '';
	   		var btnCd = ''; // 10: 구매하기(주문/결제), 11: 조합하여 구매하기, 12:디자인하기(상품속성 커스텀 상품 여부Y) ,20: 재입고 알림(상세), 21: 재입고 알림(로그인), 30: 자세히 보기, 00: 판매종료(임직원몰(기획전몰)_체험단말용)
	   							   
	   							   
	   		var stId = '1';
	   		// 구매하기
	   		
	   		if (stGbCd === '10') {
	   			if (prd.saleStatCd === '12') {
	   				if(prd.customGoodsYn === 'Y' || prd.customGoodsYn === 'D'){
	   					btnCd = '12';
	   				}else{
	   					if(prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30') {
	       					btnCd = '11';
	       				} else {
	      						btnCd = '10';
	       				}	
	   				}    				    				    					
	   			} else if (prd.saleStatCd === '13') {
	   				//재입고 알림 사용 안함 - 2020.12.17 (#26002)
	   				//btnCd = isLogin ? '20': '21';
	   				btnCd = '30';
	   			} else if (['14', '16', '17', '15'].indexOf(prd.saleStatCd) > -1) {
	   				btnCd = '30';
	   			}
	   			
	   			if(prd.mdlCode == 'SM-F926NZUYKOO' || prd.mdlCode == 'SM-F711NZUYKOO' || prd.mdlCode == 'SM-F916NZKAKOO'){
	   				btnCd = '30';
	   			}
	   		} else if (['20', '30'].indexOf(stGbCd) > -1) {
	   			if (prd.saleStatCd === '12') {
	   				if(prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30'){
	   					btnCd = '11';
	   				} else {
	   					btnCd = '10';
					}
	   			} else if (prd.saleStatCd === '13') {
	   				btnCd = '30';
	   			} else if (prd.saleStatCd === '17') {
	   				btnCd = '30';	// 미판매 자세히 보기 추가(10/05)
	   			}
	   		} else if (stGbCd === '40') {
	   			if (prd.saleStatCd === '12') {
	   				if(prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30'){
	   					btnCd = '11';
	   				} else {
	   					btnCd = '10';
					}
	   			} else if (prd.saleStatCd === '17') {
	   				btnCd = '30';	// 미판매 자세히 보기 추가(10/05)
	   			} 
	   		} else if (['70', '80'].indexOf(stGbCd) > -1) {
				// 임직원몰(기획전몰)_체험단말
				if(
					contextPath.indexOf("23_ma") > -1 ||
					contextPath.indexOf("23_pa") > -1 ||
					contextPath.indexOf("23_im") > -1 ||
					contextPath.indexOf("23_fan") > -1
				){
					if(prd.saleStatCd === '12'){
						if(prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30'){
							btnCd = '11';
						}else{
							btnCd = '10';
						}
					}else{
						btnCd = '00';
					}
				}
				// 그외
				else{
					if (prd.saleStatCd === '12') {
						if(prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30'){
							btnCd = '11';
						}else{
							btnCd = '10';
						}
					} else if (prd.saleStatCd === '13') {
						//재입고 알림 사용 안함 - 2020.12.17 (#26002)
						//btnCd = isLogin ? '20': '21';
						btnCd = '30';
					} else if (prd.saleStatCd === '18') {
						btnCd = '30';
					} else if (prd.saleStatCd === '17') {
						btnCd = '30';	// 미판매 자세히 보기 추가(10/05)
					}
				}
	   		} else if (stGbCd === '50') {
	   			if (prd.saleStatCd === '12') {
	   				if(prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30'){
	   					btnCd = '11';
	   				}else{
	   					btnCd = '10';
					}
	   			} else if (prd.saleStatCd === '13') {
	   				//재입고 알림 사용 안함 - 2020.12.17 (#26002)
	   				//btnCd = isLogin ? '20': '21';
	   				btnCd = '30';
	   			} else if (['14', '15'].indexOf(prd.saleStatCd) > -1) {
	   				btnCd = '30';
	   			} else if (prd.saleStatCd === '17') {
	   				btnCd = '30';	// 미판매 자세히 보기 추가(10/05)
	   			}
	   		} else if (stGbCd === '60') {
	   			if (prd.saleStatCd === '12') {
	   				if(prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30'){
	   					btnCd = '11';
	   				}else{
	   					btnCd = '10';
					}
	   			} else if (prd.saleStatCd === '13') {
	   				//재입고 알림 사용 안함 - 2020.12.17 (#26002)
	   				//btnCd = isLogin ? '20': '21';
	   				btnCd = '30';
	   			} else if (['17', '15'].indexOf(prd.saleStatCd) > -1) {
	   				btnCd = '30';
	   			}
	   		} else if ((stGbCd === '90') && (stId === '193')) { // 임직원몰(e카달로그) 중 193번 사이트 아이디 일때는 자세히보기 정재동
	   			btnCd = '30';
	   		}
	   		
	   		html += '  <div class="card-btn">';
	   		if (btnCd === '10') {
       			html += '    <!-- 200723 href 속성 삭제 --><button type="button" class="btn btn-d btn-type2" onclick="netFunnel_Action_PF(\''+prdLink+'\');return false;" data-omni=\"'+ prd.mdlNm + '|'+ prd.mdlCode+'\">구매하기</button>';
	   		} else if (btnCd === '11') {
	   			if(stGbCd == '20' || stGbCd == '30'){
	   				// 패널 상품일 경우 자동 선택 - 2022.09.06
	   				var bspkParam = '';
	   				if ('50' == prd.goodsAddTpCd) {
	   					bspkParam = '&pannelYn=Y';
	   				} else {
	   					bspkParam = '&selModel='+prd.mdlCode;
	   				}    				
	   				html += '    <!-- 200723 href 속성 삭제 --><button type="button" class="btn btn-d btn-type2" onclick="bespoke_Action_PF(\'bespoke/buy/fam/?id=bespoke-make'+bspkParam+'\');return false;" data-omni=\"'+ prd.mdlNm + '|'+ prd.mdlCode+'\">조합하여 구매하기</button>';
	       		}
	   			else{
	   				html += '    <!-- 200723 href 속성 삭제 --><button type="button" class="btn btn-d btn-type2" onclick="netFunnel_Action_PF(\''+prdLink+'\');return false;" data-omni=\"'+ prd.mdlNm + '|'+ prd.mdlCode+'\">조합하여 구매하기</button>';
	       		}
	  		} else if (btnCd === '20') {
	  				html += '    <!-- 200723 href 속성 삭제 --><button type="button" class="btn btn-d btn-type5" onclick="netFunnel_Action_PF(\'' + prdLink + '?stock-notice=Y\');" data-omni=\"'+ prd.mdlNm + '|'+ prd.mdlCode+'\">재입고 알림</button>';   			
	   		} else if (btnCd === '21') {
	   			html += '    <!-- 200723 href 속성 삭제 --><button type="button" class="btn btn-d btn-type5" onclick="netFunnel_Action_PF(\'' + loginLink + '?returnUrl='+ prdLink + '\');return false;" data-omni=\"'+ prd.mdlNm + '|'+ prd.mdlCode+'\">재입고 알림</button>';    			
	   		} else if (btnCd === '30') {
   				if(stGbCd =='20' || stGbCd == '30'){
   					html += '    <!-- 200723 href 속성 삭제 --><button type="button" class="btn btn-d btn-type1" onclick="netFunnel_Action_PF(\''+prdLink+'\');return false;" data-omni=\"'+ prd.mdlNm + '|'+ prd.mdlCode+'\">재입고 알림 신청</button>';
   				}else{
   					html += '    <!-- 200723 href 속성 삭제 --><button type="button" class="btn btn-d btn-type1" onclick="netFunnel_Action_PF(\''+prdLink+'\');return false;" data-omni=\"'+ prd.mdlNm + '|'+ prd.mdlCode+'\">자세히 보기</button>';	
   				}
	   		} else if (btnCd === '12') { //상품속성 커스텀 상품 일때 
	       		html += '    <!-- 200723 href 속성 삭제 --><button type="button" class="btn btn-d btn-type2" onclick="netFunnel_Action_PF(\''+prdLink+'\');return false;" data-omni=\"'+ prd.mdlNm + '|'+ prd.mdlCode+'\">디자인하기</button>';
	   		} 
	   		
	   		html += '  </div>';
	   		
	   		return html;
	   	}
    	
    	function initBtnGoods() {
    		$('.click-good').off().on('click', function(e) {    			
    		    e.preventDefault();
    		    var btnclass = $(this);    		    
    		    goodsPf.fnLoginCheck(function(isLogin){
    		    	 if(!isLogin){
 	    				location.href = '/GMQDisplay-master/' + "member/indexLogin/?returnUrl=" + '/GMQDisplay-master/' + "recommend/recommendMain/";
	    				return;
   	    			}else{
   	    				var goodsId = $(e.target).closest('button').data('goods-id');

   	        		    if(btnclass.hasClass('on')){
   	        		    	var url = '/GMQDisplay-master/' + 'xhr/goods/user/deleteWish';
   	        		    }else{
   	        		    	var url = '/GMQDisplay-master/' + 'xhr/goods/user/insertWish';
   	        		    }
   	        		    
   	        		    ajax.call({
   	        		    	url : url
   	    					, data: {goodsId: goodsId}
   	        		    	, done: function(data) {
   	        		    		$('.click-good[data-goods-id="' + goodsId + '"]').each(function(index, btn) {
   	        		    			if (data.actGubun === 'add') {
   	        		    				// 찜하기 추가
   	        		    				$(btn).addClass("on");
   	        		    				$(btn).children('i').text('좋아요 선택');
   	        		    				$(btn).attr("title", "선택됨");
   	        		    				$(btn).attr("data-omni", "wish_off");
   	        		    				$('.click-good[data-goods-id="' + goodsId + '"]').next().show();
   	        							$('.click-good[data-goods-id="' + goodsId + '"]').next().next().hide();
   	        							$('.bookmarkOn').find('a').off().on('click', function (){
   	        								// 전체보기
   	        								location.href =  '/GMQDisplay-master/' + "mypage/interest/indexMyHotList/";
   	        							});
   	        							
   	        		    			} else if(data.actGubun === 'remove') {
   	        		    				// 찜하기 삭제
   	        		    				$(btn).removeClass("on");
   	        		    				$(btn).children('i').text('좋아요 미선택');
   	        		    				$(btn).removeAttr('title');
   	        		    				$(btn).attr("data-omni", "wish_on");
   	        		    				$('.click-good[data-goods-id="' + goodsId + '"]').next().next().show();
   	        							$('.click-good[data-goods-id="' + goodsId + '"]').next().hide();
   	        		    			}else if(data.actGubun === 'MYPAGE0001'){
   	        		    				let alertData = {
   	       		    						title: ""
   	       		    						,content : "찜하기는 100개까지만 가능합니다."
   	       		    						,btnText : "확인"
   	       		    					};
   	        		    				commonAlert(alertData);
   	        		    				openLayer('commonAlert');
   	        						}
   	        		    			
   	        		    			var vTimer = setTimeout((function(){
   	        							$('.bookmarkTooltip').fadeOut(300);
   	        						}), 5000);
   	        		    			
   	        		    			$(document).click(function (e){
   	        							if($btnGoods.has(e.target).length === 0){
   	        								clearTimeout(vTimer);
   	        								$('.bookmarkOn').fadeOut(300);
   	        								$('.bookmarkOff').fadeOut(300);
   	        								btnclass.off();
   	        							}
   	        						});
   	        		    		});
   	        		    	} 
   	        		    	
   	        		    });
   	    			}
    		    });
    		});
    	}
    	
    						  	
    	function goMembershipJoin() {
    		// window.open('https://membership.samsung.com/GMQDisplay-master/lnc/KoFamNRegister?CiTokn=4b7db13b3c654b80a5f2d412d782993026fc134823312481657e4c36f0bf6330&Fnm=8241445b72beeb8d2e330bc198a4896a0953dff4dd28ced398bcce6c4205a9de', '_blank', "width=630,height=720");
			var stGbCd = '10';
			
			//닷컴과 패넷 멤버십 가입 URL 분기 처리
			if(stGbCd == '10') {
				location.href = '/GMQDisplay-master/' + "membership/membershipJoin/";
			} else {
				window.open('','','width=640, height=508, scrollbars=yes'); 
			}
    	}   
    </script><!-- 레이어 팝업 모음 -------------------------------------------------------------------------------------------------------------------------------------------------------------------->
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
		<div class="menu-list">
			<!-- <div class="inner">
				<a href="#" class="btn-floating" onclick="floating_open();"><span>메뉴 보기</span></a>
				<ul>
					<li class="menu01" aria-hidden=""><a href="javascript:chat_open();">챗봇 채팅하기</a></li>
					<li class="menu02" aria-hidden=""><a href="javascript:chat_open2();">구매 상담사 채팅하기</a></li>
					<li class="menu03" aria-hidden="true" style="display:none;"><a href="/GMQDisplay-master/customer/reservationstore/?ref=floating/ " onclick="chat_open3();">매장 방문 예약하기</a></li>
					<li class="menuGift"><a href="javascript:gift_open();" data-omni="float chat:event gift">선물하기</a></li>
				</ul>
			</div> -->
		</div>
		<button type="button" class="btn-gotop">
			<span>위로</span>
		</button>
	</div>
	<script>
		floatSticky();
		
		function firstRecentGoods(){
			
			$.ajax({
				 url : "/GMQDisplay-master/xhr/goods/getFirstRecentGoods"
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
				html +='<a href="javascript:window.secapp.goToARService(\'\',\'\');">';
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
			location.href = "/GMQDisplay-master/membership/terms/"; 
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
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
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