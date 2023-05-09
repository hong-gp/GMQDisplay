<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE HTML>
<html lang="ko" xmlns:th="http://www.thymeleaf.org">

<head>

	<title>Gaming Monitor Display</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="canonical" href="index.html">
	<meta name="keywords" content="GMQDisplay 게이밍 모니터, 게이밍 모니터, 오디세이 모니터">
	<meta name="description"
		content="GMQDisplay 게이밍 모니터에 대한 모든 궁금증을 해결하세요. 디자인과 기능, 사용 방법 등을 한눈에 비교하고 확인할 수 있어 제품 선택이 한결 쉬워집니다.">
	<meta name="date" content="">
	<meta name="sitecode" content="sec">

	<meta name="twitter:card" content="Summary">
	<meta name="twitter:site" content="@samsungkorea">
	<meta name="twitter:creator" content="@samsungkorea">
	<meta name="twitter:url" content="https://www.samsung.com/monitors/gaming-monitors/">
	<meta name="twitter:title" content="게이밍 모니터 | GMQDisplay 대한민국">
	<meta name="twitter:description"
		content="GMQDisplay 게이밍 모니터에 대한 모든 궁금증을 해결하세요. 디자인과 기능, 사용 방법 등을 한눈에 비교하고 확인할 수 있어 제품 선택이 한결 쉬워집니다.">
	<meta name="twitter:image" content="/GMQDisplay-master/static/image/gmqd_bg_logo.png" />

	<meta property="og:url" content="/GMQDisplay-master/index">
	<meta property="og:image" content="/GMQDisplay-master/static/image/gmqd_bg_logo.png">
	<meta property="og:type" content="website">
	<meta property="og:site_name" content="GMQDisplay sec">
	<meta property="og:locale" content="ko">
	<meta property="og:title" content="게이밍 모니터 | GMQDisplay 대한민국">
	<meta property="og:description"
		content="GMQDisplay 게이밍 모니터에 대한 모든 궁금증을 해결하세요. 디자인과 기능, 사용 방법 등을 한눈에 비교하고 확인할 수 있어 제품 선택이 한결 쉬워집니다.">
	<meta property="og:country-name" content="sec">

	<meta itemprop="name" content="GMQDisplay sec">
	<meta itemprop="image" content="/GMQDisplay-master/static/image/gmqd_bg_logo.png">
	<meta itemprop="url" content="https://www.GMQDisplay.com/monitors/gaming-monitors/">
	<meta itemprop="description"
		content="GMQDisplay 게이밍 모니터에 대한 모든 궁금증을 해결하세요. 디자인과 기능, 사용 방법 등을 한눈에 비교하고 확인할 수 있어 제품 선택이 한결 쉬워집니다.">
	<meta itemprop="keywords" content="GMQDisplay 게이밍 모니터, 게이밍 모니터, 오디세이 모니터">

	<link rel="dns-prefetch" href="https://images.GMQDisplay.com">
	<link rel="preconnect" href="https://images.GMQDisplay.com">
	<link rel="shortcut icon" href="/GMQDisplay-master/static/images/favicon.png">
	<link rel="apple-touch-icon" href="" sizes="">

	<!-- PUB : style.css import resources -->
	<link rel="stylesheet" href="/GMQDisplay-master/static/css/reset.css">
	<link rel="stylesheet" href="/GMQDisplay-master/static/css/slick.css">
	<link rel="stylesheet" href="/GMQDisplay-master/static/css/common.css">
	<link rel="stylesheet" href="/GMQDisplay-master/static/css/layout.css">
	<link rel="stylesheet" href="/GMQDisplay-master/static/css/pf.css">
	<link rel="stylesheet" href="/GMQDisplay-master/static/css/content_part01.css">
	<link rel="stylesheet" href="/GMQDisplay-master/static/css/content_part02.css">
	<link rel="stylesheet" href="/GMQDisplay-master/static/css/content_part03.css">
	<link rel="stylesheet" href="/GMQDisplay-master/static/css/content_part04.css">
	<link rel="stylesheet" href="/GMQDisplay-master/static/css/content_part05.css">
	<link rel="stylesheet" href="/GMQDisplay-master/static/css/content_part06.css">
	<link rel="stylesheet" href="/GMQDisplay-master/static/css/component.css">

	<!-- 컴포넌트 스타일 -->
	<link rel="stylesheet" href="/GMQDisplay-master/static/css/jquery-ui.min.css">
	<link rel="stylesheet" href="/GMQDisplay-master/static/css/swiper.min.css">
	<script src="/GMQDisplay-master/static/script/jquery-3.3.1.min.js"></script>
	<script src="/GMQDisplay-master/static/script/jquery-ui.min.js"></script>
	<script src="/GMQDisplay-master/static/script/slick.js"></script>
	<script src="/GMQDisplay-master/static/script/slick-init.js"></script>
	<script src="/GMQDisplay-master/static/script/swiper.min.js"></script>

	<script src="/GMQDisplay-master/static/script/jquery.blockUI.js"></script>
	<script src="/GMQDisplay-master/static/script/base.js"></script>
	<script src="/GMQDisplay-master/static/script/layerPop.js"></script>
	<!-- <script type="text/javascript" src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js" charset="utf-8"></script> -->
	<script src="/GMQDisplay-master/static/script/netfunnel.js" charset="UTF-8"></script>
	<script src="/GMQDisplay-master/static/script/netfunnel_skin.js" charset="UTF-8"></script>
	<script src="/GMQDisplay-master/static/script/event/event.js"></script>
	<!--<script src="/GMQDisplay-master/static/script/common.js"></script>-->
	<script src="/GMQDisplay-master/static/script/custom.js"></script>
	<script src="/GMQDisplay-master/static/script/sticky.min.js"></script>
	<script src="/GMQDisplay-master/static/script/jquery.cookie.js"></script>
	<script src="/GMQDisplay-master/static/script/search.js"></script>
	<script src="/GMQDisplay-master/static/script/component.js"></script>
	<script src="/GMQDisplay-master/static/script/clipboard.min.js"></script>
	<script type="text/javascript" src="/GMQDisplay-master/static/script/picturePolyfill.min.js"></script>
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
			if ('0' != 0) {
				resetLoginTimeOut();
				$(document).on('click keypress', 'body', function () {
					resetLoginTimeOut();
				});
			}
		});

		function resetLoginTimeOut() {
			window.clearTimeout(checkActionTimeOut);
			checkActionTimeOut = setTimeout(function () { // 30분 후 로그아웃
				location.href = "/member/logout/";
			}, 24 * 60 * 60 * 1000);
		}
	</script>
	<!-- s : AA 태깅 -->
	<script type="text/javascript">
		var pageURL = window.location.href;
		var siteCode = "sec";

		var digitalData = {
			"page": {
				"pageInfo": {
					"siteCode": siteCode
					, "siteSection": ""
					, "pageName": ""
					, "pageURL": pageURL
					, "pageTrack": "microsite"
					, "version": "KDP"
				}
				, "pathIndicator": {
					"depth_2": ""
					, "depth_3": ""
					, "depth_4": ""
					, "depth_5": ""
				}
			}
			, "user": {
				"loginStatus": ""
			}
			, "product": {
				"category": ""
				, "model_code": ""
				, "model_name": ""
				, "displayName": ""
				, "pvi_type_code": ""
				, "pvi_type_name": ""
				, "pvi_subtype_code": ""
				, "pvi_subtype_name": ""

			}
		}

		// depth Info.
		var depth = window.location.href.split("/").length;
		var depth_last = window.location.href.split("/")[depth - 1];
		if (depth_last == "" || depth_last.charAt(0) == "?") {
			depth -= 1;
		}

		// set site section value
		if ((digitalData.page.pathIndicator.depth_2 != "") || (digitalData.page.pageInfo.pageTrack == "flagship pdp")) {
			if (digitalData.page.pathIndicator.depth_2 == "shop" || digitalData.page.pathIndicator.depth_2 == "my account") {
				digitalData.page.pageInfo.siteSection = siteCode + ":" + digitalData.page.pathIndicator.depth_2;
			} else {
				digitalData.page.pageInfo.siteSection = siteCode + ":consumer"; //product page
			}
		} else if (depth == 4) {
			digitalData.page.pageInfo.siteSection = siteCode + ":home"; //home
		} else {
			digitalData.page.pageInfo.siteSection = siteCode + ":" + window.location.href.split("/")[4];
		}

		// set product category value
		/* 	if(digitalData.page.pathIndicator.depth_3 != ""){
				digitalData.product.category = digitalData.page.pathIndicator.depth_3;
			} */

		// set pathIndicator(not product page)
		if (digitalData.page.pathIndicator.depth_2 == "") {
			if (depth >= 5) digitalData.page.pathIndicator.depth_2 = window.location.href.split("/")[4].toLowerCase();
			if (depth >= 6) digitalData.page.pathIndicator.depth_3 = window.location.href.split("/")[5].toLowerCase();
			if (depth >= 7) digitalData.page.pathIndicator.depth_4 = window.location.href.split("/")[6].toLowerCase();
			if (depth >= 8) digitalData.page.pathIndicator.depth_5 = window.location.href.split("/")[7].toLowerCase();
		}

		// set pageName
		var pageName = siteCode;
		if (digitalData.page.pathIndicator.depth_2 != "")
			pageName += ":" + digitalData.page.pathIndicator.depth_2;
		if (digitalData.page.pathIndicator.depth_3 != "")
			pageName += ":" + digitalData.page.pathIndicator.depth_3;
		if (digitalData.page.pathIndicator.depth_4 != "")
			pageName += ":" + digitalData.page.pathIndicator.depth_4;
		if (digitalData.page.pathIndicator.depth_5 != "")
			pageName += ":" + digitalData.page.pathIndicator.depth_5.replace(/^\s+|\s+$/gm, '');

		// check PD, GPD
		var pageTrackName = digitalData.page.pageInfo.pageTrack;
		if (pageTrackName == "product detail" || pageTrackName == "generic product details") {
			pageName += ":" + digitalData.product.model_code;
			var displayName = "".replace(/(<([^>]+)>)/gi, "");
			digitalData.product.displayName = displayName;
		}
		digitalData.page.pageInfo.pageName = pageName;

	</script>
	<script async src="https://assets.adobedtm.com/c8a575b84bb9/0d8938615268/launch-160c25cdcd93.min.js"></script>
	<!-- e : AA 태깅 -->


	<!-- Google Tag Manager -->
	<script>(function (w, d, s, l, i) {
			w[l] = w[l] || []; w[l].push({
				'gtm.start':
					new Date().getTime(), event: 'gtm.js'
			}); var f = d.getElementsByTagName(s)[0],
				j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
					'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
		})(window, document, 'script', 'dataLayer', 'GTM-NVX3V74');</script>
	<!-- End Google Tag Manager -->

	<!-- s : Global site tag (gtag.js) - Google Ads: 10864240863 -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=AW-10864240863"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() { dataLayer.push(arguments); }
		gtag('js', new Date());
		gtag('config', 'AW-10864240863');
	</script>
	<!-- e : Global site tag (gtag.js) - Google Ads: 10864240863 -->

	<script>
		var stGbCd = '10';

		/* s : 만 나이 구하는 함수 @param birthDate : 생년월일  jiwon0.id 22.05.17 */
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
		/* e : 만 나이 구하는 함수 @param birthDate : 생년월일  jiwon0.id 22.05.17 */


		function chat_open() {
			fcTrack('click', 'floating chat:chat bot');
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

			if (birthDate != 0 && birthDate != null) {
				birthAge = checkAge(birthDate);
			}

			if (birthAge == "" || birthAge == null || birthAge == undefined) {
				agepass = "u";
			} else if (birthAge > 13) {
				agepass = "y";
			} else if (birthAge < 14) {
				agepass = "n";
			}
			window.open('/chatbot/?agepass=' + agepass, 'chatbot', 'status=no, height=750, width=356, left=' + popupX + ', top=' + popupY + ', screenX=' + popupX + ', screenY= ' + popupY);
		}

		function chat_open2() {
			fcTrack('click', 'floating chat:chat online');

			var gType = Math.round(Math.random() * 1) ? 'm' : 'f';

			var popupX = (window.screen.width / 2) - (356 / 2);
			var popupY = (window.screen.height / 2) - (750 / 2);
			window.open('/chatbot/?type=ep&c=' + gType, '_chatbot2', 'status=no, height=750, width=356, left=' + popupX + ', top=' + popupY + ', screenX=' + popupX + ', screenY= ' + popupY);
		}

		function chat_open3() {
			fcTrack('click', 'floating chat:offline store');
		}

		function gift_open() {
			fcTrack('click', 'float chat:event gift');
			window.location.href = '/' + "event/gift/";
		}

		function floating_open() {
			fcTrack('click', 'floating chat');
		}
		logger("prd");
	</script>
	<script src="https://t1.kakaocdn.net/kakao_js_sdk/v1/kakao.min.js"></script>
	<script src="/GMQDisplay-master/static/script/snsShare.js"></script>
	<script type="text/javascript"> shareInit('5880e4317936087f2764a5d340e6bca6', ''); </script>
	<script>(window.BOOMR_mq = window.BOOMR_mq || []).push(["addVar", { "rua.upush": "false", "rua.cpush": "false", "rua.upre": "false", "rua.cpre": "false", "rua.uprl": "false", "rua.cprl": "false", "rua.cprf": "false", "rua.trans": "SJ-a74f0aac-5888-411f-8744-125b1ec005ec", "rua.cook": "true", "rua.ims": "false", "rua.ufprl": "false", "rua.cfprl": "false", "rua.isuxp": "false", "rua.texp": "norulematch" }]);</script>
	<script>!function (a) { var e = "https://s.go-mpulse.net/boomerang/", t = "addEventListener"; if ("False" == "True") a.BOOMR_config = a.BOOMR_config || {}, a.BOOMR_config.PageParams = a.BOOMR_config.PageParams || {}, a.BOOMR_config.PageParams.pci = !0, e = "https://s2.go-mpulse.net/boomerang/"; if (window.BOOMR_API_key = "VRZKC-5BSTD-4EWS3-R2J59-B8GYB", function () { function n(e) { a.BOOMR_onload = e && e.timeStamp || (new Date).getTime() } if (!a.BOOMR || !a.BOOMR.version && !a.BOOMR.snippetExecuted) { a.BOOMR = a.BOOMR || {}, a.BOOMR.snippetExecuted = !0; var i, _, o, r = document.createElement("iframe"); if (a[t]) a[t]("load", n, !1); else if (a.attachEvent) a.attachEvent("onload", n); r.src = "javascript:void(0)", r.title = "", r.role = "presentation", (r.frameElement || r).style.cssText = "width:0;height:0;border:0;display:none;", o = document.getElementsByTagName("script")[0], o.parentNode.insertBefore(r, o); try { _ = r.contentWindow.document } catch (O) { i = document.domain, r.src = "javascript:var d=document.open();d.domain='" + i + "';void(0);", _ = r.contentWindow.document } _.open()._l = function () { var a = this.createElement("script"); if (i) this.domain = i; a.id = "boomr-if-as", a.src = e + "VRZKC-5BSTD-4EWS3-R2J59-B8GYB", BOOMR_lstart = (new Date).getTime(), this.body.appendChild(a) }, _.write("<bo" + 'dy onload="document._l();">'), _.close() } }(), "".length > 0) if (a && "performance" in a && a.performance && "function" == typeof a.performance.setResourceTimingBufferSize) a.performance.setResourceTimingBufferSize(); !function () { if (BOOMR = a.BOOMR || {}, BOOMR.plugins = BOOMR.plugins || {}, !BOOMR.plugins.AK) { var e = "false" == "true" ? 1 : 0, t = "cookiepresent", n = "pf7u3ryxguseazbapkcq-f-107f7835f-clientnsv4-s.akamaihd.net", i = "false" == "true" ? 2 : 1, _ = { "ak.v": "34", "ak.cp": "143520", "ak.ai": parseInt("293013", 10), "ak.ol": "0", "ak.cr": 19, "ak.ipv": 4, "ak.proto": "h2", "ak.rid": "b2d6b78", "ak.r": 37315, "ak.a2": e, "ak.m": "x", "ak.n": "essl", "ak.bpcip": "121.127.77.0", "ak.cport": 49961, "ak.gh": "23.53.32.47", "ak.quicv": "", "ak.tlsv": "tls1.3", "ak.0rtt": "", "ak.csrc": "-", "ak.acc": "", "ak.t": "1679850117", "ak.ak": "hOBiQwZUYzCg5VSAfCLimQ==N44QcC0YWT0dwylyrsIfR3hwfiFvZ2mefvjbTiCwxGK5yLumupvxoOrsmqFzY9tOMSCLKxmpQtqkyE5YP6qDzgLYRvYJEcpVkO6VHaQ3uhbyAqICbaF1/1iP5LgyTqe7N4JJa3FqOHbnfJVwfpNQZKyNKCqcLhMpFhGpJj/qzZ4GxIy7+13JxcYw/iRKgNupUze3ao+3XS0ACKaW6ijogflcPql53L0aLjeH8hi3zb0J73BH5hAKCUUmIpLI29Nlwg+QKJQQ9VcF4AU+iMBfOWda5k4nvaCDUF00W2oP50FQKBbPp5ltUY8spe8TKa7PrePlgGa3nmxZCfjgysY7+wYIvqJhlZ2fdb/5H6QIpwRwzwmx0e70DplUt+CMYlp55rEXpSywVGCZBQloBZwk4o3xdGhJlTeUuMh1GI7hZis=", "ak.pv": "2900", "ak.dpoabenc": "", "ak.tf": i }; if ("" !== t) _["ak.ruds"] = t; var o = { i: !1, av: function (e) { var t = "http.initiator"; if (e && (!e[t] || "spa_hard" === e[t])) _["ak.feo"] = void 0 !== a.aFeoApplied ? 1 : 0, BOOMR.addVar(_) }, rv: function () { var a = ["ak.bpcip", "ak.cport", "ak.cr", "ak.csrc", "ak.gh", "ak.ipv", "ak.m", "ak.n", "ak.ol", "ak.proto", "ak.quicv", "ak.tlsv", "ak.0rtt", "ak.r", "ak.acc", "ak.t", "ak.tf"]; BOOMR.removeVar(a) } }; BOOMR.plugins.AK = { akVars: _, akDNSPreFetchDomain: n, init: function () { if (!o.i) { var a = BOOMR.subscribe; a("before_beacon", o.av, null, null), a("onbeacon", o.rv, null, null), o.i = !0 } return this }, is_complete: function () { return !0 } } } }() }(window);</script>
</head>

<body>
	<!-- Google Tag Manager (noscript) -->
	<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NVX3V74" height="0" width="0"
			style="display:none;visibility:hidden"></iframe>
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
			!function (e, r) {
				if (void 0 !== e && !e.adbrix) {
					var o = {
						queue: []
					},
						t = navigator.userAgent.toLowerCase(),
						c = r.createElement("script"),
						a = "Netscape" === navigator.appName && -1 !== navigator.userAgent.search("Trident") || -1 !== t.indexOf("msie") ? "abx-web-sdk.ie.min.js" : "abx-web-sdk.min.js";
					c.type = "text/javascript", c.async = !0, c.src = "//static.adbrix.io/web-sdk/latest/" + a, c.onLoad = function () {
						e.adbrix.runQueuedFunctions ? e.adbrix.runQueuedFunctions() : console.log("[adbrix] Error: could not load SDK")
					};
					var i = r.getElementsByTagName("script")[0];
					i.parentNode.insertBefore(c, i);
					["init", "onInitialized", "login", "getUserId", "logout", "userProperty.get", "userProperty.getAll", "userProperty.addOrUpdate", "userProperty.remove", "userProperty.removes", "common.signUp", "common.invite", "common.useCredit", "common.purchase", "event.send", "debug.traceListener", "commerceAttr.categories", "commerceAttr.product", "commerce.viewHome", "commerce.categoryView", "commerce.productView", "commerce.addToCart", "commerce.addToWishList", "commerce.reviewOrder", "commerce.refund", "commerce.search", "commerce.share", "commerce.listView", "commerce.cartView", "commerce.paymentInfoAdded", "game.tutorialComplete", "game.characterCreated", "game.stageCleared", "game.levelAchieved"].forEach(function (e) {
						var r = e.split("."),
							t = r.pop();
						r.reduce(function (e, r) {
							return e[r] = e[r] || {}
						}, o)[t] = function () {
							o.queue.push([e, arguments])
						}
					}), e.adbrix = o
				}
			}(window, document);
		</script>
		<!--  e AdBrix Web SDK -->

		<script>
			var __ST_GB_CD = "b2c";
			$(document).ready(function () {
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
			clipboard.on('success', function (e) {
				let alertData = {
					title: ""
					, content: "링크가 복사되었습니다."
					, callback: ""
					, btnText: "확인"
				};
				commonAlert(alertData);
				openLayer('commonAlert');
			});
			clipboard.on('error', function (e) {
				let alertData = {
					title: ""
					, content: "다시 시도하여 주십시오."
					, callback: ""
					, btnText: "확인"
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
					htmlMoLoginBefore += '<a href="" onclick="NetFunnel_Action({action_id:\'b2c_gnb_login\'},\'//GMQDisplay-master/login_info/login.html\');return false;\" data-omni=\'login\'>로그인</a></li>';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '<li class="mob-onlyMenu-join">';
					htmlMoLoginBefore += '<a href="" onclick="NetFunnel_Action({action_id:\'b2c_gnb_login\'},\'/GMQDisplay-master/login_info/Sign.html\');return false;\" data-omni=\"sign up\">회원가입</a></li>';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '<li class="mob-onlyMenu-tracking">';
					htmlMoLoginBefore += '<a href="/mypage/order/indexDeliveryList/" data-omni=\'orders\'>주문/배송 조회</a></li>';
					htmlMoLoginBefore += '<li class="mob-onlyMenu-stoConsult">';
					htmlMoLoginBefore += '<a href="/customer/myDigitalReservationSearch/" data-omni=\'store reservation\'>매장상담예약신청 조회</a></li>';
					htmlMoLoginBefore += '<li class="mob-onlyMenu-cpnZone">';
					htmlMoLoginBefore += '<a href="" onclick="NetFunnel_Action({action_id:\'b2c_gnb_login\'},\'/member/indexLogin/?returnUrl=/mypage/coupon/indexMyCoupon/\');return false;" data-omni=\'login\'>쿠폰존</a></li>';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '<li class="mob-onlyMenu-benefit">';
					htmlMoLoginBefore += '<a href="/eventList/benefitzone/" data-omni=\'event\'>GMQD 회원 혜택</a></li>';
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
					htmlLoginBefore += '<dt><a href="/mypage/order/indexDeliveryList/" data-omni=\'orders\'>주문/배송조회</a></dt>';
					htmlLoginBefore += '<dt><a href="/customer/myDigitalReservationSearch/" data-omni=\'store reservation\'>매장상담 예약 신청 조회</a></dt>';
					htmlLoginBefore += '<dt><a href="" onclick="NetFunnel_Action({action_id:\'b2c_gnb_login\'},\'/member/indexLogin/?returnUrl=/mypage/coupon/indexMyCoupon/\');return false;" data-omni=\'login\'>쿠폰존</a></dt>';
					htmlLoginBefore += '';
					htmlLoginBefore += '<dt><a href="/eventList/benefitzone/" data-omni=\'event\'>GMQD 회원 혜택</a></dt>';
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
					htmlMoLoginAfter += '<a href="/mypage/info/indexMyDeviceList/" data-omni=\'my divice\'>나의 제품 관리</a></li>';
					htmlMoLoginAfter += '<li class="mob-onlyMenu-prdctRvw">';
					htmlMoLoginAfter += '<a href="/mypage/review/indexMyReview/" data-omni=\'my comment\'>상품평 작성 :<span class="cmt-num writableCnt"></span>건</a></li>';
					htmlMoLoginAfter += '<li class="mob-onlyMenu-tracking">';
					htmlMoLoginAfter += '<a href="/mypage/order/indexDeliveryList/" data-omni=\'orders\'>주문/배송 조회</a></li>';
					htmlMoLoginAfter += '<li class="mob-onlyMenu-cpnZone">';
					htmlMoLoginAfter += '<a href="/mypage/coupon/indexMyCoupon/" data-omni=\'coupon zone\'>나의 적립금</a></li>';
					htmlMoLoginAfter += '';
					htmlMoLoginAfter += '<li class="mob-onlyMenu-benefit">';
					htmlMoLoginAfter += '<a href="/eventList/benefitzone/" data-omni=\'event\'>GMQD 회원 혜택</a></li>';
					htmlMoLoginAfter += '';
					htmlMoLoginAfter += '<li class="mob-onlyMenu-logout">';
					htmlMoLoginAfter += '<a href="/GMQDisplay-master/xhr/logout.jsp;" data-omni=\'logout\'>로그아웃</a></li>';
					htmlMoLoginAfter += '</ul>';

					$("#useLogin").after(htmlMoLoginAfter);
				} else {
					//pc
					var htmlLoginAfter = '<div class="gnbSubRound loginAfter"><div>';
					htmlLoginAfter += '<dl>';
					htmlLoginAfter += '<dt><a href="https://account.samsung.com/" target="_blank" title="새창열림"><span class="greet-txt">안녕하세요!</span></a></dt>';
					htmlLoginAfter += '<dd><a href="/GMQDisplay-master/mypage/myinfo.jsp" data-omni=\'my account\'>나의 정보</a></dd>';
					htmlLoginAfter += '<dd><a href="/mypage/info/indexMyDeviceList/" data-omni=\'my divice\'>나의 제품 관리</a></dd>';
					htmlLoginAfter += '<dd><a href="/mypage/review/indexMyReview/" data-omni=\'my comment\'>상품평 작성 : <span class="cmt-num writableCnt"></span> 건</a></dd>';
					htmlLoginAfter += '<dd><a href="/mypage/order/indexDeliveryList/" data-omni=\'orders\'>주문/배송 조회</a></dd>';
					htmlLoginAfter += '<dd><a href="/mypage/coupon/indexMyCoupon/" data-omni=\'coupon zone\'>쿠폰존</a></dd>';
					htmlLoginAfter += '';
					htmlLoginAfter += '<dd><a href="/eventList/benefitzone/" data-omni=\'event\'>GMQD 회원 혜택</a></dd>';
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
				<a href="index.html" class="logo">
					<img type="image/svg+xml" src="/GMQDisplay-master/static/images/common/logo_gmqd_black.png"
						alt="GMQ Display" style="width:130px; height:20px" />
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
															<a href="/GMQDisplay-master/product/G32C4X.jsp"
																class="rec-link" aria-selected="false"
																data-omni="Product:new:GMQD 게이밍 모니터">
																<span class="pic-wrap"
																	style="background: url('/GMQDisplay-master/static/images/explain/G32C4X_1.png') no-repeat top center / cover; background-color: #f6f6f6;">
																	<span class="pc-pic lozad"
																		data-background-image="/GMQDisplay-master/static/images/product/G32C4X_1.png"></span>
																	<span class="mo-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/ba1119ba-5dc4-4b2f-94d5-494e3a51bf95.jpg?$ORIGIN_JPG$"></span>
																</span>
																<span class="txt-grp">
																	<span class="tit theme-blk"
																		style="color: white;">MSI G32C4X 게이밍 200 HDR
																		<br> 아이세이버 무결점 </span>
																	<span class="desc theme-blk"
																		style="color: #ddd;">1500R 커브드 패널 <br>프레임리스
																		디자인</span>
																</span>
															</a>
														</div>
														<div class="sub-prd num-1">
															<a href="/GMQDisplay-master/product/27LGD4IPS.jsp"
																class="rec-link" aria-selected="false"
																data-omni="Product:new:GMQD Book3 Series">
																<span class="pic-wrap"
																	style="background: url('/GMQDisplay-master/static/images/product/27LGD4IPS_1.png') no-repeat top center / contain; background-color: #f6f6f6;">
																	<span class="pc-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/0abb6285-7482-4831-a1d7-36ab892c9c0a.png?$ORIGIN_JPG$"></span>
																	<span class="mo-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/0d774285-1b04-46d3-af5f-6256d7804a2d.png?$ORIGIN_JPG$"></span>
																</span>
																<span class="txt-grp">
																	<span class="tit theme-blk"">
																		<span>크로스오버 QHD DCI-P3 4면 베젤리스 <br>무결점</span>
																	</span>
																	<span class=" desc theme-blk">눈 보호 아이케어 기술<br>게임최적 프리싱크 어댑티브</span>
																</span>
															</a>
														</div>
														<div class="sub-prd num-2">
															<a href="/GMQDisplay-master/product/G2712.jsp"
																class="rec-link" aria-selected="false"
																data-omni="Product:new:Neo QLED">
																<span class="pic-wrap"
																	style="background: url('/GMQDisplay-master/static/images/product/G2712_1.png') no-repeat top center / contain; background-color: #f6f6f6;">
																	<span class="pc-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/48caf28f-2aa0-4d2d-a073-f350e85db6c6.png?$ORIGIN_JPG$"></span>
																	<span class="mo-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/960c690e-f83f-484a-a1ec-28ac9a5f9c94.png?$ORIGIN_JPG$"></span>
																</span>
																<span class="txt-grp">
																	<span class="tit theme-blk">
																		<span>MSI IPS 게이밍 170 아이세이버 <br>무결점</span>
																	</span>
																	<span class="desc theme-blk">170Hz 주사율<br>120Hz 콘솔
																		모드</span>
																</span>
															</a>
														</div>
														<div class="sub-prd num-3">
															<a href="/GMQDisplay-master/product/2460G.jsp"
																class="rec-link" aria-selected="false"
																data-omni="Product:new:bespoke refrigerator">
																<span class="pic-wrap"
																	style="background: url('/GMQDisplay-master/static/images/product/2460G_1.png') no-repeat top center / contain; background-color: #f6f6f6;">
																	<span class="pc-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/b32c2088-6a51-4046-bf87-94d159152d91.png?$ORIGIN_JPG$"></span>
																	<span class="mo-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/03368012-947e-4989-aabd-6407af7f6d5a.png?$ORIGIN_JPG$"></span>
																</span>
																<span class="txt-grp">
																	<span class="tit theme-blk">
																		<span>한성컴퓨터 ULTRON PLUS <br>리얼 144 게이밍</span>
																	</span>
																	<span class="desc theme-blk">10.1mm 얇은 두께<br>3면이 탁
																		트인 제로베젤</span>
																</span>
															</a>
														</div>
														<div class="sub-prd num-4">
															<a href="/GMQDisplay-master/product/27UP850N.jsp"
																class="rec-link" aria-selected="false"
																data-omni="Product:new:2023 NEW bespoke-jet-2023">
																<span class="pic-wrap"
																	style="background: url('/GMQDisplay-master/static/images/product/27UP850N_1.png') no-repeat top center / contain; background-color: #f6f6f6;">
																	<span class="pc-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/39a70a6b-2c4d-40ae-86e9-8ab994400232.png?$ORIGIN_JPG$"></span>
																	<span class="mo-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/35ee9a07-af0b-45c4-9ce5-1cea793ad2e4.png?$ORIGIN_JPG$"></span>
																</span>
																<span class="txt-grp">
																	<span class="tit theme-blk">
																		<span>LG전자 <br>27UP850N</span>
																	</span>
																	<span class="desc theme-blk">선명한 DisplayHDR™
																		400<br>캘리브레이션 기능</span>
																</span>
															</a>
														</div>
														<div class="sub-prd num-5">
															<a href="/GMQDisplay-master/product/28MQ780.jsp"
																class="rec-link" aria-selected="false"
																data-omni="Product:new:bespoke airsolution">
																<span class="pic-wrap"
																	style="background: url('/GMQDisplay-master/static/images/product/28MQ780_1.png') no-repeat top center / contain; background-color: #f6f6f6;">
																	<span class="pc-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/a3a1d985-75e7-4e3e-9528-ab42be51b618.png?$ORIGIN_JPG$"></span>
																	<span class="mo-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/3bce182f-7f0d-42c2-bb54-65326fb480be.png?$ORIGIN_JPG$"></span>
																</span>
																<span class="txt-grp">
																	<span class="tit theme-blk">
																		<span>LG전자 울트라와이드 듀얼업 <br>28MQ780</span>
																	</span>
																	<span class="desc theme-blk">2배의 화면과 2배의
																		조작성<br>멀티태스킹에 최적</span>
																</span>
															</a>
														</div>
														<div class="sub-prd num-6">
															<a href="/GMQDisplay-master/product/27G2SP.jsp"
																class="rec-link" aria-selected="false"
																data-omni="Product:new:samsungcareplus">
																<span class="pic-wrap"
																	style="background: url('/GMQDisplay-master/static/images/product/27G2SP_1.png') no-repeat top center / contain; background-color: #f6f6f6;">
																	<span class="pc-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/b1e3cc88-29df-4d81-87ca-a0622a43716c.png?$ORIGIN_JPG$"></span>
																	<span class="mo-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/66a8cd06-bc37-4827-aa3f-380aaad1e75e.png?$ORIGIN_JPG$"></span>
																</span>
																<span class="txt-grp">
																	<span class="tit theme-blk">
																		<span>알파스캔 AOC 게이밍 165 프리싱크 무결점 </span>
																	</span>
																	<span class="desc theme-blk">Adaptive Sync<br>초슬림 베젤
																		화면</span>
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
													<!-- 2dep banner -->
													<div class="gnbBanner type2">
														<a href="/GMQDisplay-master/gaming-monitor.html">
															<div class="img" style="position: relative;">
																<img src="/GMQDisplay-master/static/images/explain/IP2742_1.png"
																	style="position: absolute; bottom: -50px;"
																	alt="쓰리윈즈 인터픽셀 게이밍 IPS 165 피벗 무결점" class="lozad">
															</div>
															<p class="txt">게임용 모니터의 모든 것</p>
														</a>
														<div class="link-box flex--center">
															<a href="/GMQDisplay-master/gaming-monitor.html"
																onclick="openCtaLink('', '');"
																data-omni="feature image:Product:Apply:learn more"
																class="link">
																<span>더 많은 상품들 보러가기</span>
															</a>
														</div>
													</div>
													<!-- //2dep banner -->
												</div>
											</li>

											<li class="">
												<a href="#" aria-selected="false" data-omni="Product:mobile">전문가용
													모니터</a>
												<div class="gnb3depth ">
													<ul>
														<li class="">
															<a href="/GMQDisplay-master/monitors.html?genre=graphic"
																target="_blank" aria-selected="false"
																data-omni="Product:mobile:Everything about the GMQD">그래픽
																작업용 게이밍 모니터</a>
														</li>
														<li class="">
															<a href="/GMQDisplay-master/monitors.html?genre=work"
																target="_blank" aria-selected="false"
																data-omni="Product:mobile:Everything about the GMQD">사운드
																작업용 게이밍 모니터</a>
														</li>
														<li class="">
															<a href="/GMQDisplay-master/monitors.html?genre=videogame"
																target="_blank" aria-selected="false"
																data-omni="Product:mobile:Everything about the GMQD">비디오/콘솔용
																게이밍 모니터</a>
														</li>
													</ul>
													<!-- 2dep banner -->
													<div class="gnbBanner type2">
														<a href="/GMQDisplay-master/expert-monitor.html">
															<div class="img">
																<img src="https://images.samsung.com/kdp/cms_contents/131599/d0f0bd10-1dab-40a0-ad9a-b4475dfc7827.jpg?$ORIGIN_JPG$"
																	alt="전문가용 모니터의 모든 것" class="lozad">
															</div>
															<p class="txt">전문가용 모니터의 모든 것</p>
														</a>
														<div class="link-box flex--center">
															<a href="/GMQDisplay-master/expert-monitor.html"
																class="link">
																<span>더 많은 상품들 보러가기</span>
															</a>
														</div>
													</div>
													<!-- //2dep banner -->
												</div>
											</li>
										</ul>
									</div>
								</div>
							</li>
							<li class="">
								<a href="#" aria-controls="700027213-menu" aria-selected="false">추천 케어</a>
								<div class="gnb2depth">
									<div class="inner">
										<ul class="list">
											<li class=" direct">
												<a href="/GMQDisplay-master/recommend/index_game.html"
													aria-selected="false">게임용 추천케어</a>
												<div class="gnb3depth ">
													<ul>
													</ul>
													<!-- 2dep banner -->
													<div class="gnbBanner type2">

														<a href="/GMQDisplay-master/recommend/index_game.html"
															data-omni="feature image:e-Food-Mall::learn more">
															<div class="img">
																<img src="/GMQDisplay-master/static/images/explain/recommend.png"
																	alt="게이밍 모니터 추천" class="lozad">
															</div>
															<span>게임용 모니터 추천 케어</span>
														</a>

														<div class="link-box flex--center">
															<a href="/GMQDisplay-master/recommend/index_game.html;"
																data-omni="feature image:e-Food-Mall:Learn more:learn more"
																class="link">
																<span>자세히 보기</span>
															</a>
														</div>
													</div>
												</div>
											</li>

											<li class=" direct">
												<a href="/GMQDisplay-master/recommend/index_game1.html"
													aria-selected="false">전문가용 추천케어</a>
												<div class="gnb3depth ">
													<ul>
													</ul>
													<!-- 2dep banner -->
													<div class="gnbBanner type2">
														<a href="/GMQDisplay-master/recommend/index_game1.html"
															data-omni="feature image:e-Food-Mall::learn more">
															<div class="img">
																<img src="/GMQDisplay-master/static/images/explain/recommend.png"
																	alt="게이밍 모니터 추천" class="lozad">
															</div>
															<span>전문가용 모니터 추천 케어</span>
														</a>

														<div class="link-box flex--center">
															<a href="/GMQDisplay-master/recommend/index_game1.html;"
																data-omni="feature image:e-Food-Mall:Learn more:learn more"
																class="link">
																<span>자세히 보기</span>
															</a>
														</div>
													</div>
													<!-- //2dep banner -->
												</div>
											</li>
									</div>
								</div>
							<li class="">
								<a href="/GMQDisplay-master/AI-Line/bespokestudio test.html" aria-selected="false">모니터
									제작소</a>
								<div class="gnb2depth">
									<div class="inner">
										<ul class="list">
										</ul>
									</div>
								</div>
							</li>
							<li class="">
								<a href="/GMQDisplay-master/event.html" aria-controls="700027213-menu"
									aria-selected="false">이벤트</a>
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
							<!-- 로드인 메뉴 -->
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

		<!--<script>
		$.ajax({
			method: "POST",
			url: "https://kapi.kakao.com/v1/payment/ready",
			data: {
				cid: "TC0ONETIME",
				tid: "tid=T1234567890123456789"
			},
			headers: { Authorization: "KakaoAK b417dde18341e245cf145d50eae7f16f" }
		})
		.done(function (msg) {
			console.log(msg);
		});
		</script>-->
<%
request.setCharacterEncoding("utf-8");

String id = (String)session.getAttribute("sid");

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
} catch (Exception e) {
	out.print(e);
}
%>

		<footer id="footer" class="footer_b2c">
			<input type="hidden" id="goodsAdvCmntStYn" value="Y" />
			<div class="footer-content">
				<nav class="footer-inner sitemap-links">
					<h2 class="hide">페이지 링크</h2>
					<ul>
						<li class="productLine1">
							<h3><a href="javascript:void(0);">게이밍 모니터</a></h3>
							<ul>
								<li><a href="monitors.html?genre=fps/rts" data-omni="product_fps/rts">FPS/RTS</a></li>
								<li><a href="monitors.html?genre=rpg/sports/fighting"
										data-omni="product_RPG/Sports/fights">RPG/Sports/fights</a></li>
								<li><a href="monitors.html?genre=graphic" data-omni="product_graphic">그래픽 작업용</a></li>
								<li><a href="monitors.html?genre=work" data-omni="product_sound">사운드 작업용</a></li>
								<li><a href="monitors.html?genre=videogame" data-omni="product_videogame">비디오/콘솔용</a>
								</li>
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
								<a href="javascript:void(0);">맞춤 서비스</a>
							</h3>
							<ul>
								<li><a href="/GMQDisplay-master/AI-Line/bespokestudio test.html;"
										data-omni="monitors_support">모니터 제작소</a></li>
							</ul>
						</li>
						<li>
							<h3>
								<a href="javascript:void(0);">이벤트</a>
							</h3>
							<ul>
								<li><a href="/GMQDisplay-master/event.html" data-omni="ethics and law_principle"
										class="link-outlink" title="새창으로 열림" target="_blank">이벤트 HOME</a>
								</li>
							</ul>
						</li>
						<li>
							<h3>
								<a href="javascript:void(0);">고객 서비스</a>
							</h3>
							<ul>
								<li><a href="/GMQDisplay-master/faq/FAQ.html" data-omni="ethics and law_principle"
										class="link-outlink" title="새창으로 열림" target="_blank">고객센터</a>'
								</li>
								<li><a href="/GMQDisplay-master/person.html" data-omni="ethics and law_principle"
										class="link-outlink" title="새창으로 열림" target="_blank">개인정보처리방침</a>'
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
								<div id="dropClauseList02" class="wrap-droplist rounded  clause-private">
									<button class="droplist-button" title="서비스별 개인정보처리방침">GMQ Display<span
											class="blind">하위 메뉴 있음</span></button>
									<ul class="droplist" tabindex="-1" aria-labelledby="dropServicePrivateTitle"
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
											<a href="/GMQDisplay-master/faq/notice.html">GMQ Display 공지사항
											</a>
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
		<button id="energyBtn" style="display:none" type="button" data-popup-target="popupEnergy">팝업보기</button>
		<div class="layer-pop layer-normal layer-energy-calculator" id="popupEnergy" tabindex=" 0"
			data-popup-layer="popupEnergy" data-focus="popupEnergy">
		</div>
		<!-- e : 에너지 계산기 -->
		<!-- s : 이메일 무단 수집거부 -->
		<div class="layer-pop layer-normal" id="popupGatherRefuse" tabindex="0" data-popup-layer="popupGatherRefuse"
			data-focus="popupGatherRefuse">
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
			<button type="button" class="pop-close" data-focus-next="popupGatherRefuse">팝업닫기</button>
		</div>
		<!-- e : 이메일 무단 수집거부 -->

		<!-- s : 아이디어 정책 -->
		<div class="layer-pop layer-normal" id="popupIdeaPolicy" tabindex="0" data-popup-layer="popupIdeaPolicy"
			data-focus="popupIdeaPolicy">
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
			<button type="button" class="pop-close" data-focus-next="popupIdeaPolicy">팝업닫기</button>
		</div>
		<!-- e : 아이디어 정책 -->

		<!-- s : 웹접근성 우수사이트 인증서  -->
		<div class="layer-pop layer-default" id="popupWA" tabindex="0" data-popup-layer="popupWA" data-focus="popupWA">
			<div class="layer-content">
				<img class="pc-ver" src="/GMQDisplay-master/static/images/common/WA-2022.jpg" alt="웹접근성 우수사이트 인증서">
				<img class="mo-ver" src="/GMQDisplay-master/static/images/common/WA-2022-mo.jpg" alt="웹접근성 우수사이트 인증서">
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
		src="https://resources.digital-cloud-west.medallia.com/wdcwest/145272/onsite/embed.js" async></script>
</body>

</html>