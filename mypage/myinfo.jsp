<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<!DOCTYPE HTML>
<html lang="ko">

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
	<meta name="twitter:image" content="./static/image/gmqd_bg_logo.png" />

	<meta property="og:url" content="./index">
	<meta property="og:image" content="./static/image/gmqd_bg_logo.png">
	<meta property="og:type" content="website">
	<meta property="og:site_name" content="GMQDisplay sec">
	<meta property="og:locale" content="ko">
	<meta property="og:title" content="게이밍 모니터 | GMQDisplay 대한민국">
	<meta property="og:description"
		content="GMQDisplay 게이밍 모니터에 대한 모든 궁금증을 해결하세요. 디자인과 기능, 사용 방법 등을 한눈에 비교하고 확인할 수 있어 제품 선택이 한결 쉬워집니다.">
	<meta property="og:country-name" content="sec">

	<meta itemprop="name" content="GMQDisplay sec">
	<meta itemprop="image" content="./static/image/gmqd_bg_logo.png">
	<meta itemprop="url" content="https://www.GMQDisplay.com/monitors/gaming-monitors/">
	<meta itemprop="description"
		content="GMQDisplay 게이밍 모니터에 대한 모든 궁금증을 해결하세요. 디자인과 기능, 사용 방법 등을 한눈에 비교하고 확인할 수 있어 제품 선택이 한결 쉬워집니다.">
	<meta itemprop="keywords" content="GMQDisplay 게이밍 모니터, 게이밍 모니터, 오디세이 모니터">

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
	<!-- <script src="./static/script/common.js"></script> -->
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
	<script src="./static/script/snsShare.js"></script>
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
					htmlMoLoginBefore += '<a href="" onclick="NetFunnel_Action({action_id:\'b2c_gnb_login\'},\'/../login_info/login.html\');return false;\" data-omni=\'login\'>로그인</a></li>';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '<li class="mob-onlyMenu-join">';
					htmlMoLoginBefore += '<a href="" onclick="NetFunnel_Action({action_id:\'b2c_gnb_login\'},\'../login_info/Sign.html\');return false;\" data-omni=\"sign up\">회원가입</a></li>';
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
					htmlLoginBefore += '<dt><a href="" onclick="NetFunnel_Action({action_id:\'b2c_gnb_login\'},\'../login_info/login.html\');return false;\" data-omni=\'login\'>로그인</a></dt>';
					htmlLoginBefore += '';
					htmlLoginBefore += '<dt><a href="" onclick="NetFunnel_Action({action_id:\'b2c_gnb_login\'},\'../login_info/Sign.html\');return false;\" data-omni=\'sign up\'>회원가입</a></dt>';
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
					htmlMoLoginAfter += '<a href="../mypage/myinfo.jsp" data-omni=\'my account\'>나의 정보</a></li>';
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
					htmlMoLoginAfter += '<a href="../xhr/logout.jsp;" data-omni=\'logout\'>로그아웃</a></li>';
					htmlMoLoginAfter += '</ul>';

					$("#useLogin").after(htmlMoLoginAfter);
				} else {
					//pc
					var htmlLoginAfter = '<div class="gnbSubRound loginAfter"><div>';
					htmlLoginAfter += '<dl>';
					htmlLoginAfter += '<dt><a href="https://account.samsung.com/" target="_blank" title="새창열림"><span class="greet-txt">안녕하세요!</span></a></dt>';
					htmlLoginAfter += '<dd><a href="../mypage/myinfo.jsp" data-omni=\'my account\'>나의 정보</a></dd>';
					htmlLoginAfter += '<dd><a href="/mypage/info/indexMyDeviceList/" data-omni=\'my divice\'>나의 제품 관리</a></dd>';
					htmlLoginAfter += '<dd><a href="/mypage/review/indexMyReview/" data-omni=\'my comment\'>상품평 작성 : <span class="cmt-num writableCnt"></span> 건</a></dd>';
					htmlLoginAfter += '<dd><a href="/mypage/order/indexDeliveryList/" data-omni=\'orders\'>주문/배송 조회</a></dd>';
					htmlLoginAfter += '<dd><a href="/mypage/coupon/indexMyCoupon/" data-omni=\'coupon zone\'>쿠폰존</a></dd>';
					htmlLoginAfter += '';
					htmlLoginAfter += '<dd><a href="/eventList/benefitzone/" data-omni=\'event\'>GMQD 회원 혜택</a></dd>';
					htmlLoginAfter += '';
					htmlLoginAfter += '<dd><a href="../xhr/logout.jsp;" data-omni=\'logout\'>로그아웃</a></dd>';
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
				<a href="../index.html" class="logo">
					<img type="image/svg+xml" src="../static/images/common/logo_gmqd_black.png" alt="GMQD 엄선" />
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
															<a href="../product/G32C4X.jsp" class="rec-link" aria-selected="false"
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
															<a href="../product/27LGD4IPS.jsp"
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
															<a href="../product/G2712.jsp"
																class="rec-link" aria-selected="false"
																data-omni="Product:new:Neo QLED">
																<span class="pic-wrap" style="background: url('../static/images/product/G2712_1.png') no-repeat top center / contain; background-color: #f6f6f6;">
																	<span class="pc-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/48caf28f-2aa0-4d2d-a073-f350e85db6c6.png?$ORIGIN_JPG$"></span>
																	<span class="mo-pic lozad"
																		data-background-image="//images.samsung.com/kdp/display/gnb/960c690e-f83f-484a-a1ec-28ac9a5f9c94.png?$ORIGIN_JPG$"></span>
																</span>
																<span class="txt-grp">
																	<span class="tit theme-blk">
																		<span>MSI IPS 게이밍 170 아이세이버 <br>무결점</span>
																	</span>
																	<span class="desc theme-blk">170Hz 주사율<br>120Hz 콘솔 모드</span>
																</span>
															</a>
														</div>
														<div class="sub-prd num-3">
															<a href="../product/2460G.jsp"
																class="rec-link" aria-selected="false"
																data-omni="Product:new:bespoke refrigerator">
																<span class="pic-wrap" style="background: url('../static/images/product/2460G_1.png') no-repeat top center / contain; background-color: #f6f6f6;">
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
															<a href="../product/27UP850N.jsp"
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
															<a href="../product/28MQ780.jsp"
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
															<a href="../product/27G2SP.jsp"
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
																		<a href="../monitors.html?sort=popularity&genre=fps/rts"
																			target="_blank">인기 상품</a>
																	</li>
																	<li class="">
																		<a href="../monitors.html?genre=fps/rts"
																			target="_blank" aria-selected="false">전체
																			상품</a>
																	</li>
																	<li class="">
																		<a href="../monitors.html?recom=recom&genre=fps/rts"
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
																		<a href="../monitors.html?sort=popularity&genre=rpg/sports/fighting"
																			aria-selected="false">인기 상품</a>
																	</li>
																	<li class="">
																		<a href="../monitors.html?genre=rpg/sports/fighting"
																			target="_blank" aria-selected="false">전체
																			상품</a>
																	</li>
																	<li class="">
																		<a href="../monitors.html?recom=recom&genre=rpg/sports/fighting"
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
														<a href="../gaming-monitor.html">
															<div class="img" style="position: relative;">
																<img src="../static/images/explain/IP2742_1.png" style="position: absolute; bottom: -50px;" alt="쓰리윈즈 인터픽셀 게이밍 IPS 165 피벗 무결점" class="lozad">
															</div>
															<p class="txt">게임용 모니터의 모든 것</p>
														</a>
														<div class="link-box flex--center">
															<a href="../gaming-monitor.html" onclick="openCtaLink('', '');"
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
															<a href="../monitors.html?genre=graphic" target="_blank"
																aria-selected="false"
																data-omni="Product:mobile:Everything about the GMQD">그래픽
																작업용 게이밍 모니터</a>
														</li>
														<li class="">
															<a href="../monitors.html?genre=work" target="_blank"
																aria-selected="false"
																data-omni="Product:mobile:Everything about the GMQD">사운드
																작업용 게이밍 모니터</a>
														</li>
														<li class="">
															<a href="../monitors.html?genre=videogame" target="_blank"
																aria-selected="false"
																data-omni="Product:mobile:Everything about the GMQD">비디오/콘솔용
																게이밍 모니터</a>
														</li>
													</ul>
													<!-- 2dep banner -->
													<div class="gnbBanner type2">
														<a href="../expert-monitor.html">
															<div class="img">
																<img src="https://images.samsung.com/kdp/cms_contents/131599/d0f0bd10-1dab-40a0-ad9a-b4475dfc7827.jpg?$ORIGIN_JPG$"
																	alt="전문가용 모니터의 모든 것" class="lozad">
															</div>
															<p class="txt">전문가용 모니터의 모든 것</p>
														</a>
														<div class="link-box flex--center">
															<a href="../expert-monitor.html" class="link">
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
								<a href="../recommend/index_game.html" aria-selected="false">추천케어</a>
								<div class="gnb2depth">
									<div class="inner">
										<ul class="list">
										</ul>
									</div>
								</div>
							</li>
							<li class="">
								<a href="../AI-Line/bespokestudio test.html" aria-selected="false">모니터 제작소</a>
								<div class="gnb2depth">
									<div class="inner">
										<ul class="list">
										</ul>
									</div>
								</div>
							</li>
							<li class="">
								<a href="#" aria-controls="700027213-menu" aria-selected="false">이벤트</a>
								<div class="gnb2depth">
									<div class="inner">
										<ul class="list">
											<li class=" direct">
												<a href="javascript:void(0);"
													onclick="openCtaLink('https://www.samsung.com/bespokeshop/', '');"
													aria-selected="false" data-omni="e-Food-Mall:e-food hall HOME">
													이벤트 HOME</a>
												<div class="gnb3depth ">
													<ul>
													</ul>
													<!-- 2dep banner -->
													<div class="gnbBanner type2">
														<a href="javascript:void(0);" onclick="openCtaLink();"
															data-omni="feature image:e-Food-Mall::learn more">
															<div class="img">
																<img data-src="https://images.samsung.com/kdp/display/gnb/29d6faf0-26aa-4bf6-8605-cc4ace3dbade.jpg?$ORIGIN_JPG$"
																	alt="셀럽 푸드 티켓팅 X 게이밍 모니터 큐커_자세히 보기" class="lozad">
															</div>
															<p class="txt">셰프 푸드 티켓팅 X 게이밍 모니터 큐커</p>
														</a>
														<div class="link-box flex--center">
															<a href="javascript:void(0);" onclick="openCtaLink();"
																data-omni="feature image:e-Food-Mall:Learn more:learn more"
																class="link">
																<span>자세히 보기</span>
															</a>
														</div>
													</div>
													<!-- //2dep banner -->
												</div>
											</li>
											<li class=" direct">
												<a href="javascript:void(0);" onclick="openCtaLink('', '');"
													aria-selected="false" data-omni="e-Food-Mall:subscription">
													GMQD 멤버십 플랜</a>
												<div class="gnb3depth ">
													<ul>
													</ul>
													<!-- 2dep banner -->
													<div class="gnbBanner type2">
														<a href="javascript:void(0);" onclick="openCtaLink('', '');"
															data-omni="feature image:e-Food-Mall:Start My Plan Membership:learn more">
															<div class="img">
																<img data-src="https://images.samsung.com/kdp/display/gnb/a75403ff-7df6-4af3-82f4-298f99472c68.jpg?$ORIGIN_JPG$"
																	alt="산성전자 멤버십 PLAN 최대 72만 미식혜택 (2만원 X 36개월) 이벤트 영수증 구매 금액 65,000원 결제수단 제휴사신용카드 월 혜택 금액 20,000원(청구할인,캐시백 등 카드사별 상이)"
																	class="lozad">
															</div>
															<p class="txt">GMQD 제품 오너들의 <br> 평소처럼 쓰면서 카드값 아끼는 방법!</p>
														</a>
														<div class="link-box flex--center">
															<a href="javascript:void(0);" onclick="openCtaLink('', '');"
																data-omni="feature image:e-Food-Mall:Learn more:learn more"
																class="link">
																<span>GMQD 멤버십 플랜 시작하기</span>
															</a>
														</div>
													</div>
													<!-- //2dep banner -->
												</div>
											</li>
									</div>
								</div>
							</li>
							<li class="">
								<a href="#" onclick="openCtaLink('', '');" aria-controls="700000115-menu"
									aria-selected="false" data-omni="support">고객서비스</a>
								<div class="gnb2depth">
									<div class="inner">
										<ul class="list">
											<li class="">
												<a href="#" aria-selected="false" data-omni="support:support">무엇을
													도와드릴까요?</a>
												<div class="gnb3depth">
													<ul>
														<li class="">
															<a href="javascript:void(0);"
																onclick="openCtaLink('/support/', '');"
																aria-selected="false"
																data-omni="support:support:support-learn-more">
																무엇을 도와드릴까요?</a>
														</li>
														<li class="">
															<a href="javascript:void(0);" class="outlink "
																title="새창으로 열림"
																onclick="openCtaLink('https://www.samsungsvc.co.kr/solution', '_blank');"
																aria-selected="false"
																data-omni="support:support:self-solve">
																스스로 해결</a>
														</li>
													</ul>
													<!-- 2dep banner -->
													<div class="gnbBanner type2">
														<a href="javascript:void(0);"
															onclick="openCtaLink('/support/', '');"
															data-omni="feature image:support:How can I help you?:learn more">
															<div class="img">
																<img data-src="https://images.samsung.com/kdp/display/gnb/3823f581-fdc7-4936-8d3c-00cb35ada470.jpg?$ORIGIN_JPG$"
																	alt="무엇을 도와드릴까요? 더 알아보기" class="lozad">
															</div>
															<p class="txt">무엇을 도와드릴까요?</p>
														</a>
														<div class="link-box flex--center">
															<a href="javascript:void(0);"
																onclick="openCtaLink('/support/', '');"
																data-omni="feature image:support:Learn more:learn more"
																class="link">
																<span>더 알아보기</span>
															</a>
														</div>
													</div>
													<!-- //2dep banner -->
												</div>
											</li>
											<li class="">
												<a href="#" aria-selected="false" data-omni="support:selfserve">
													제품 지원</a>
												<div class="gnb3depth ">
													<ul>
														<li class="">
															<a href="javascript:void(0);"
																onclick="openCtaLink('/support/', '');"
																aria-selected="false"
																data-omni="support:selfserve:Manual-download">
																매뉴얼 & 다운로드</a>
														</li>
														<li class="">
															<a href="javascript:void(0);" class="outlink "
																title="새창으로 열림"
																onclick="openCtaLink('https://www.samsungsvc.co.kr/video', '_blank');"
																aria-selected="false"
																data-omni="support:selfserve:video guide">
																동영상 가이드</a>
														</li>
														<li class="">
															<a href="javascript:void(0);" class="outlink "
																title="새창으로 열림"
																onclick="openCtaLink('https://www.samsungsvc.co.kr/consult/remote', '_blank');"
																aria-selected="false"
																data-omni="support:selfserve:remote_service">
																원격 상담</a>
														</li>
														<li class="">
															<a href="javascript:void(0);" class="outlink "
																title="새창으로 열림"
																onclick="openCtaLink('https://www.samsungsvc.co.kr/consult/call', '_blank');"
																aria-selected="false"
																data-omni="support:selfserve:rescounselview">
																전화 상담 예약</a>
														</li>
														<li class="">
															<a href="javascript:void(0);" class="outlink "
																title="새창으로 열림"
																onclick="openCtaLink('http://www.g-sis.co.kr/', '_blank');"
																aria-selected="false"
																data-omni="support:selfserve:computeronline">
																컴퓨터 온라인 상담</a>
														</li>
													</ul>
													<!-- 2dep banner -->
													<!-- //2dep banner -->
												</div>
											</li>
											<li class="">
												<a href="#" aria-selected="false" data-omni="support:information">
													추천 부가정보</a>
												<div class="gnb3depth ">
													<ul>
														<li class="">
															<a href="javascript:void(0);"
																onclick="openCtaLink('/support/newsalert/', '');"
																aria-selected="false"
																data-omni="support:information:newsalert">
																고객서비스 알림</a>
														</li>
														<li class="">
															<a href="javascript:void(0);"
																onclick="openCtaLink('/support/warranty/', '');"
																aria-selected="false"
																data-omni="support:information:warranty">
																워런티</a>
														</li>
														<li class="">
															<a href="javascript:void(0);"
																onclick="openCtaLink('/faq/', '');"
																aria-selected="false"
																data-omni="support:information:GMQDisplay-faq">
																GamingMonitorDisplay FAQ</a>
														</li>
														<li class="">
															<a href="javascript:void(0);" class="outlink "
																title="새창으로 열림"
																onclick="openCtaLink('https://r1.community.samsung.com/t5/Korea/ct-p/kr', '_blank');"
																aria-selected="false"
																data-omni="support:information:community">
																GMQD 엄선멤버스 커뮤니티</a>
														</li>
														<li class="">
															<a href="javascript:void(0);"
																onclick="openCtaLink('/support/galaxy-battery/', '');"
																aria-selected="false"
																data-omni="support:information:galaxy-battery">
																GMQD 배터리</a>
														</li>
														<li class="">
															<a href="javascript:void(0);"
																onclick="openCtaLink('https://www.samsung.com/maintenance-mode', '');"
																aria-selected="false"
																data-omni="support:information:maintenance-mode">
																GMQD 수리모드</a>
														</li>
													</ul>
													<!-- 2dep banner -->
													<!-- //2dep banner -->
												</div>
											</li>
											<li class="">
												<a href="#" aria-selected="false" data-omni="support:Service center">
													서비스 센터</a>
												<div class="gnb3depth ">
													<ul>
														<li class="">
															<a href="javascript:void(0);"
																onclick="openCtaLink('/digitalplaza/centerMain/', '');"
																aria-selected="false"
																data-omni="support:Service center:Service-center_plaza">
																서비스센터 찾기</a>
														</li>
														<li class="">
															<a href="javascript:void(0);" class="outlink "
																title="새창으로 열림" onclick="openCtaLink('', '_blank');"
																aria-selected="false"
																data-omni="support:Service center:U service reservation">
																출장 서비스 예약</a>
														</li>
														<li class="">
															<a href="javascript:void(0);" class="outlink "
																title="새창으로 열림" onclick="openCtaLink('', '_blank');"
																aria-selected="false"
																data-omni="support:Service center:Product Inquiry">
																제품 문의</a>
														</li>
													</ul>
													<!-- 2dep banner -->
													<!-- //2dep banner -->
												</div>
											</li>
									</div>
								</div>
							</li>
							<li class="blank">
								<a aria-selected="false"></a>
								<div class="gnb2depth">
									<div class="inner">
										<ul class="list">
										</ul>
									</div>
								</div>
							</li>
							<!-- s: markup 추가 0713  모바일용 메뉴 추가 -->
							<input type="hidden" name="useLogin" id="useLogin" value="" />
							<!-- e: markup 추가 0713  모바일용 메뉴 추가 -->
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
		<script>
			var userAgent = navigator.userAgent.toUpperCase();
			if (userAgent.indexOf("SECAPP") > -1 || userAgent.indexOf("SECTEST") > -1) {
				$("#header").hide();
				$(".string-banner-wrap").hide();
			}

			function writableCommentM() {
				writableCommentSetC();
				location.href = '/sec/mypage/review/indexMyReview/';

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
					var commentStr = "<li class='menu05' aria-hidden=''><a href='/sec/mypage/review/indexMyReview/'>상품평 쓰기</a></li>";
					$("#floatingSticky").find(".menuGift").after(commentStr);
				} else {
					$("#floatingSticky").find(".menu05").remove();
				}
			}

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
							url: '/sec/xhr/search/recommendkeyword/',
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
					//$('#unifiedInputSearch').attr('placeholder', that.recommendKeyword); // 20200917 삭제
					$('.inp-placeholder').text(that.recommendKeyword); // 20200917 추가
				},

				getPopularKeyword: function () {
					var that = searchInputManager;
					that.callAjax(
						{
							url: '/sec/xhr/search/popword/',
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
							url: '/sec/xhr/search/autocom/',
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
											//chat_open4($(e.target).attr('text'));
										} else {
											that.getSearchResult($(e.target).parent().attr('text'));
											//chat_open4($(e.target).parent().attr('text'));
										}
									});

									$('.unified-search-layer.type-keyword').hide();
									$('.unified-search-layer.type-auto').show();

								} else {
									$('.unified-search-layer.type-auto').hide();
									if (keyword == '') {
										//$('#unifiedInputSearch').attr('placeholder', searchInputManager.recommendKeyword); // 20200917 삭제
										$('.inp-placeholder').text(that.recommendKeyword); // 20200917 추가
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
					keyword = filterAcc(keyword); // 에어컨액세서리

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
						url: '/sec/xhr/search/keywordRedirect?keyword=' + encodeURIComponent(keyword),
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
				if ((keyword.indexOf("에어컨") > -1 || keyword.indexOf("무풍에어컨") > -1) && (keyword.indexOf("액세서리") > -1 || keyword.indexOf("악세서리") > -1 || keyword.indexOf("엑세서리") > -1)) {
					keyword = "에어컨액세서리";
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

			/* s : 20200917 수정 */
			var searchLinkforApp = once(function () {
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

						window.open('/sec/chatbot/?keyword=' + keyword + '&agepass=' + agepass, '_chatbot4', 'status=no, height=750, width=356, left=' + popupX + ', top=' + popupY + ', screenX=' + popupX + ', screenY= ' + popupY);
					}
				}
			}
			/* e : 닷컴 웹 검색시 챗봇 검색 연계 구현  jiwon0.id 22.04.26 */

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

			/* s : 만 나이별로 agepass 구분값 설정 함수 @param birthAge : 만나이   14세 이상 : 'y'   로그인하지 않을경우 : 'u'   jiwon0.id 22.06.09 */
			function checkAgepass(birthAge) {
				var agepass = null;

				if (birthAge == 0 || birthAge == null) {
					agepass = "u";
				} else if (birthAge >= 14) {
					agepass = "y";
				}

				return agepass
			}
			/* e : 만 나이별로 agepass 구분값 설정 함수  jiwon0.id 22.06.09 */

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

				$('#unifiedInputSearch').on('click', function () { //20210324 추가
					$('.inp-placeholder').hide();
				});

				/* s : 닷컴 웹 검색시 챗봇 검색 연계 구현  jiwon0.id 22.04.26 */
				/* $('.chatbot-search').off('click').on('click', function() { 
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
				}); */
				/* e : 닷컴 웹 검색시 챗봇 검색 연계 구현  jiwon0.id 22.04.26 */

			});


		</script>
		<!-- s : 통합검색 -->
		<div class="unified-search-input-wrap">
			<div class="unified-search-input-inner">
				<div class="search-box">
					<label for="unifiedInputSearch" class="blind">통합 검색</label><!-- 20200622 for 값 변경 -->
					<input type="text" id="unifiedInputSearch" class="inp"
						onfocus="headerSearch.eventListener.uinifiedSearchInp()"
						onkeydown="headerSearch.eventListener.uinifiedSearchChange()">
					<span class="inp-placeholder"></span><!-- 20200917 추천검색어 추가 -->
					<button type="button" class="btn-inp-clear" title="삭제"><span
							class="blind">삭제</span></button><!-- 20200616 삭제 버튼 추가-->
					<button type="button" class="btn-search" title="검색" id="unifiedSearchButton"
						onclick="javascript:searchInputManager.getSearchResult($('#unifiedInputSearch').val(), '#unifiedInputSearch')"><span
							class="blind">검색</span></button>
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
				</div><!-- 20200618 감싸는 태그 unified-search-layer-inner의 닫는 태그 추가 -->
				<button type="button" class="btn-close-search"><span class="blind">검색 레이어
						닫기</span></button><!-- 20200618 닫는 태그 추가--><!-- 20200622 button type 변경-->
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
				<button type="button" class="btn-close-search"><span class="blind">검색 레이어
						닫기</span></button><!-- 20200618 닫는 태그 추가--><!-- 20200622 button type 변경-->
			</div>
			<!-- e : 검색레이어 : 자동 완성-->

			<button type="button" class="btn-close-search"><span class="blind">검색 레이어
					닫기</span></button><!-- 20200622 button type 변경-->
		</div>
		<!-- e : 통합검색 --><!-- e : 통합검색 -->

		<!-- s : 본문 영역 -->
		<div id="container" class='member-bg type-menu'>

			<div class="content board-content">
<%
	String id = (String)session.getAttribute("sid");
	String name = "";

	try {
		String db_url = "jdbc:mysql://localhost:3306/gpqd";
		String db_id = "root";
		String db_password = "1234";

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(db_url, db_id, db_password);

		// 상품 조회
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
				<!-- s : lnb -->
				<nav class="nav-lnb-rounded">
					<div class="nav-lnb-inner">
						<div class="intro">
							<span class="txt">안녕하세요. <strong class="name"><%=name%> 고객님</strong></span>
						</div>
						<div class="list-menu">
							<ul class="list">
								<li class="menu active" id="lnb1">
									<a href="./myinfo.jsp" onClick="location.href='./myinfo.jsp';">나의 정보</a>
								</li>
								<li class="menu" id="lnb3">
									<a href="./mywishlist.jsp" onClick="location.href='./mywishlist.jsp';">찜 목록</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="bg"></div>
				</nav>
				<!-- e : lnb --><!-- e : lnb 영역 -->

				<section class="conbox my-membership-conbox my-membership-info" id="my-membership-info">
					<!-- 컨텐츠 헤더 -->
					<header class="con-header-basic">
						<h1 class="con-tit">나의 정보</h1>
					</header>
					<!-- //컨텐츠 헤더 -->
					<form id="membershipMemberInfo" name="membershipMemberInfo">
						<input type="hidden" id="ivzzcustci" name="ivzzcustci"> <input type="hidden" id="ivzzidtp"
							name="ivzzidtp"> <input type="hidden" id="ivcustname" name="ivcustname"> <input
							type="hidden" id="ivzzgendcd" name="ivzzgendcd"> <input type="hidden" id="ivzzrhhp"
							name="ivzzrhhp"> <input type="hidden" id="ivzzbirthdt" name="ivzzbirthdt">
					</form>

					<!-- s : 나의 정보 -->
					<!-- 아이핀 가상주민번호 서비스 팝업 호출 form -->
					<form name="form_ipin" method="post">
						<!-- 요청모드 (필수 데이터) -->
						<input type="hidden" name="m" value="pubmain">
						<!-- 인증요청 암호화 데이터 -->
						<input type="hidden" name="enc_data" value="">
					</form>

					<!-- 아이핀 가상주민번호 서비스 팝업 인증결과 전달 form -->
					<form name="vnoform" method="post">
						<!-- 인증결과 암호화 데이터 -->
						<input type="hidden" name="enc_data">
					</form>

					<!--  휴대폰 본인인증 -->
					<form name="form_chk" method="post" action="/checkplus_main.jsp">
						<input type="hidden" name="m" value="checkplusService"> <!-- 필수 데이타로, 누락하시면 안됩니다. -->
						<input type="hidden" name="EncodeData" value=""> <!-- 위에서 업체정보를 암호화 한 데이타입니다. -->
					</form>

					<form name="form_kcbIpin" method="post">
						<!-- 인증 요청 정보 -->
						<!--// 필수 항목 -->
						<input type="hidden" name="tc" value="kcb.tis.ti.cmd.LoginRPCert3Cmd">
						<input type="hidden" name="cpCd" value="V54380000004"> <input type="hidden" name="mdlTkn"
							value="3cf06010d0ae4412bc1e89b96e2fc38f"> <!-- 필수 항목 //-->
					</form>

					<form name="form_kcbPhone" method="post">
						<!-- 인증 요청 정보 -->
						<!--// 필수 항목 -->
						<input type="hidden" name="tc" value="kcb.oknm.online.safehscert.popup.cmd.P931_CertChoiceCmd">
						<input type="hidden" name="cp_cd" value="V54380000004"> <input type="hidden" name="mdl_tkn"
							value="7af93601237d4316b1c1baf24d2d0a16"> <!-- 필수 항목 //-->
					</form>

					<div class="box-mymem-state">
						<!-- e : 멤버십 가입 후 -->
						<div class="my-info-manage">
							<div class="member info">
								<a href="" target="" class="link-arrow lrg" data-omni="info:profile view more">회원 정보</a>
								<ul>
									<li>
										<span class="tit">Email ID</span>
										<span class="cont"><%=id%></span>
									</li>
								</ul>
							</div>
							<div class="member ship">
								<a href="" class="link-arrow lrg" data-omni="info:my delivery view more">배송지 관리</a>
								<ul>
									<li><span class="tit"></span><span class="cont">등록된 배송지가 없습니다.</span></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- e : 나의 정보 -->

					<!-- s : 주문 내역 -->
					<div class="box-mymem-order">
						<header class="con-header-basic type01">
							<h2 class="con-tit">주문 조회</h2>
						</header>
					</div>
					<!-- e : 주문 내역 -->

					<div class="my-boardListWrap" id="my-boardListWrap">
						<div class="listHeader">
							<div class="head-area">
								<h3 class="tit" style="font-size: 1.5em; margin-bottom: 10px;">주문 내역 조회</h3>
							</div>
						</div>

						<div class="listBody myBoardList-style" style="border-top: 2px solid #000;">
							<!--<div class="order-head-info empty-line">
								<span class="no-content">주문/배송 내역이 없습니다.</span>
							</div>-->
							<ul>
								<li>
									<!-- case 판매중이 아닌 경우 stopSale class 추가 -->
									<div class=" boardlist-area" data-omni="SM-A346N|SM-A346NLGBKOO"
										data-omni-price="449400">
										<div style="display:none;" name="share-area">
											<form id="share-form-G000292151">
												<input type="hidden" name="title" value="갤럭시 A34 5G 자급제">
												<input type="hidden" name="description" value="SM-A346NLGBKOO">
												<input type="hidden" name="image_url"
													value="//images.samsung.com/kdp/goods/2023/02/27/78c841a4-b57f-49e8-9292-8a7826a6849a.png">
												<input type="hidden" name="image_width" value="200">
												<input type="hidden" name="image_height" value="200">
											</form>
											<form id="buyNowForm" name="buyNowForm" method="post">
												<input type="hidden" name="goodsIds" value="">
												<input type="hidden" name="stGbCd" value="10">
												<input type="hidden" name="stId" value="1">
												<input type="hidden" name="buyQtys" class="count-prd" value="1">
												<input type="hidden" name="orderType" value="ONCE">
												<input type="hidden" name="nowBuyYn" value="Y">
												<input type="hidden" name="frbInfo">
											</form>

											<input type="hidden" name="link_G000292151"
												value="/sec/smartphones/galaxy-a34-5g-a346/SM-A346NLGBKOO/">
										</div>
										<div class="my-boardlist">
											<div class="boardlist-image">
												<div class="photo">
													<a href="/sec/smartphones/galaxy-a34-5g-a346/SM-A346NLGBKOO/">
														<!-- KDP-21609 [FO][B2B] 모바일 웹접근성_p83 LMJ START -->
														<img src="/GMQDisplay-master/static/images/product/EX2710S_1.png"
															alt="BenQ 모비우스">
														<!-- KDP-21609 [FO][B2B] 모바일 웹접근성_p83 LMJ END -->
													</a>
												</div>
											</div>
											<div class="boardlist-spec">
												<p class="type">
												</p>
												<!-- 상품 명 -->
												<p class="title">
													<a href="/GMQDisplay-master/product/EX2710S.jsp">BenQ 모비우스</a>
												</p>
												<!-- 모델코드 -->
												<p class="label">EX2710S</p>
												<p class="option">2023-04-24</p>
											</div>
											<div class="boardlist-delete">
												<span>1 개</span>
											</div>
											<div class="boardlist-price">
												<!-- 최종 상품 가격(현재 판매가) -->
												<!-- KDP-21609 [FO][B2B] 모바일 웹접근성_p81 LMJ START -->
												<span class="price-small"><span class="sr-only">정가</span>341,500원</span>
												<span class="price-big"><span class="sr-only">할인된
														금액</span>320,000원</span>
												<!-- KDP-21609 [FO][B2B] 모바일 웹접근성_p81 LMJ END -->
											</div>

											<div class="boardlist-cart" id="boardlist-cart" data-ctpath="/" value="12">
												<!-- 판매중지에서는 장바구니 담기 없어짐 -->
												<!--<button type="button" class="btn-cart" name="btn-cart"
													value="G000292151" data-content="장바구니에 추가되었습니다." data-yes="확인">
													<span>주문상세</span>
												</button>-->
											</div>
										</div>
									</div>
								</li>
							</ul>
						</div>
				</section>
				<!-- e : conbox 영역 --><!-- 레이어 팝업 모음 -->
			</div>
		</div>
		<!-- e : 본문 영역 -->

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
					location.href = "/sec/membership/terms/";
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
		<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
		<script type="text/javascript">
			if (!wcs_add) var wcs_add = {};
			wcs_add["wa"] = "13bc3440ce4191";
			if (window.wcs) {
				wcs_do();
			}
		</script>
		<!-- s : 220929 class명 바뀜 -->
		<footer id="footer" class="footer_b2c">
			<input type="hidden" id="goodsAdvCmntStYn" value="Y" />
			<!-- e : 220929  -->
			<div class="footer-content">
				<nav class="footer-inner sitemap-links">
					<h2 class="hide">페이지 링크</h2>
					<ul>
						<!-- s : 221025  -->
						<li class="productLine1">
							<h3>
								<a href="javascript:void(0);">게이밍 모니터</a>
							</h3>
							<ul>
								<li><a href="#" data-omni="product_smartphones">FPS</a></li>
								<li><a href="#" data-omni="product_smartphones">RTS</a></li>
								<li><a href="#" data-omni="product_tablets">RPG</a></li>
								<li><a href="#" data-omni="product_watches">Sports</a></li>
								<li><a href="#" data-omni="product_buds">fights</a></li>
							</ul>
						</li>
						<li class="productLine2">
							<h3>이벤트</h3>
							<ul>
								<li><a href="./electric-range/bespoke-induction/index.html"
										data-omni="product_smartphones">기획전 모두보기</a></li>
								<li><a href="./cooking-appliances/bespoke-oven/index.html"
										data-omni="product_cooking appliances">GMQD 단독</a></li>
								<li><a href="./qooker/bespoke-qooker/index.html" data-omni="product_qooker">GMQD
										Live</a></li>
							</ul>
						</li>
						<li>
							<h3>
								<a href="javascript:void(0);">고객서비스</a>
							</h3>
							<ul>
								<li><a href="#" data-omni="faq_support">매뉴얼 & 다운로드</a></li>
								<li><a href="#" data-omni="faq_faq">GMQD FAQ</a></li>
								<li><a href="#" data-omni="faq_shop locator">매장 찾기</a></li>
								<li><a href="#" data-omni="faq_service-locator">서비스센터 찾기</a>
								</li>
								<li><a href="./GMQDisplay-Care-Plus/CE/index.html"
										data-omni="faq_samsung care plus CE">GMQDisplay
										Care+</a></li>
							</ul>
						</li>
						<li>
							<h3>
								<a href="javascript:void(0);">윤리&준법경영</a>
							</h3>
							<ul>
								<li><a href="https://sec-audit.com/common/businessPrinciple/viewBusinessPrincMain.do?_menuId=AVyA0fTVACzV4mS0&amp;_menuF=true&amp;s_gbn=PA100001"
										data-omni="ethics and law_principle" class="link-outlink" title="새창으로 열림"
										target="_blank">경영원칙</a></li>
								<li><a href="https://sec-audit.com/common/wrongReport/init.do?_menuId=AVyAoCSlAADV4mQ3&amp;_menuF=true&amp;s_gbn=PA100002"
										data-omni="ethics and law_wrong report" class="link-outlink" title="새창으로 열림"
										target="_blank">부정제보</a></li>
								<li><a href="https://sec-compliance.net/gcc/gcc.do?method=gccReport&amp;langCd=ko_KR"
										data-omni="ethics and law_GCC" class="link-outlink" title="새창으로 열림"
										target="_blank">법위반제보</a></li>
							</ul>
						</li>
						<!-- e : 221025 -->
						<!-- s : 220929 -->
						<li class="row2">
							<ul>
								<li>
									<h3><a href="javascript:void(0);">사이트소개</a></h3>
									<ul>
										<li><a href="./about-us/company-info/index.html"
												data-omni="about-us_company-info">사이트 정보</a>
										</li>
										<li><a href="./about-us/business-area/index.html"
												data-omni="about-us_business-area">사이트 개요</a>
										</li>
										<li><a href="./about-us/brand-identity/index.html"
												data-omni="about-us_brand-identity">아이덴티티</a>
										</li>
									</ul>
								</li>
							</ul>
						</li>
						<li class="row2">
							<!-- e : 220929 -->
							<ul>
								<li>
									<h3><a href="javascript:void(0);">회사소개</a></h3>
									<ul>
										<li><a href="./about-us/company-info/index.html"
												data-omni="about-us_company-info">기업정보</a></li>
										<li><a href="./about-us/business-area/index.html"
												data-omni="about-us_business-area">사업정보</a></li>
										<li><a href="./about-us/brand-identity/index.html"
												data-omni="about-us_brand-identity">브랜드
												아이덴티티</a></li>
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
							<span class="comp-wrap"><a
									href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=1248100998&amp;apv_perm_no="
									class="comp" title="새창 열림" target="_blank">사업자
									정보확인</a></span>
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
							<a href="./dispute-resolution/index.html" class="comp" title="새창 열림"
								target="_blank">소비자분쟁해결기준</a>
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
							<a href="javascript/index.html" title="웹접근성 우수사이트 인증서 : 새창으로 열기" class="btn-mark btn-wa"
								data-popup-target="popupWA" data-omni="local logo_wa">
								<img class="pc-ver" src="./static/images/common/icon-footer-wa.svg" alt="웹접근성 우수사이트">
								<img class="mo-ver" src="./static/images/common/icon-footer-wa-mo.jpg" alt="웹접근성 우수사이트">
								웹접근성 우수사이트
							</a>
							<a href="javascript:openPrivacy();" title="개인정보 보호 우수사이트 인증서 : 새창으로 열기"
								class="btn-mark btn-eprivacy" data-omni="local logo_eprivacy">
								<img src="./static/images/common/icon-footer-eprivacy.svg" alt="개인정보보호 우수사이트">개인정보보호
								우수사이트
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-content">
				<div class="footer-inner btnBottomGroup">
					<div class="cs-btn">
						<ul class="korean">
							<li><a href="./function/ipredirection/ipredirectionLocalList/index.html">한국/한국어
								</a></li><!-- 200918 추가 -->
						</ul>
						<ul>
							<li><a href="javascript:void(0);" title="이메일 무단 수집거부" data-popup-target="popupGatherRefuse"
									data-omni="footer:bottom_email_security">이메일 무단 수집거부</a>
							</li>
							<li><a href="javascript:void(0);" title="아이디어 정책" data-popup-target="popupIdeaPolicy"
									data-omni="footer:bottom_idea security">아이디어 정책</a></li>
							<li><a href="./info/sitemap/index.html" data-omni="footer:bottom_sitemap">사이트맵</a></li>
						</ul>
					</div>
					<div class="clause-links">
						<!-- s : Accessible Dropdown -->
						<div id="dropClauseList01" class="wrap-droplist rounded clause-use">
							<button class="droplist-button" aria-haspopup="listbox"
								aria-labelledby="dropServiceClauseTitle dropServiceClauseBtn" id="dropServiceClauseBtn"
								title="서비스별 이용약관">이용약관<span class="blind">하위 메뉴 있음</span></button>
							<ul class="droplist" tabindex="-1" aria-labelledby="dropServiceClauseTitle"
								aria-activedescendant="optServiceClause01">
								<!--aria-activedescendant에 선택된 li의 id 삽입 -->
								<li id="optServiceClause02" class="droplist-item" data-omni="footer:terms_legal"><a
										href="https://account.samsung.com/membership/etc/specialTC.do?fileName=samsungkorea.html"
										target="_blank" title="새 창으로 열림">GMQDisplay 대표사이트
										이용약관</a></li>
								<li id="optServiceClause03" class="droplist-item" data-omni="footer:terms_conditions"><a
										href="./membership/terms/index.html">GMQDisplay멤버십
										이용약관</a></li>
								<li id="optServiceClause04" class="droplist-item" data-omni="footer:terms_contents"><a
										href="https://account.samsung.com/membership/policy/terms" target="_blank"
										title="새 창으로 열림">GMQDisplay 서비스 이용약관</a>
								</li>
							</ul>
						</div>
						<!-- s : Accessible Dropdown -->
						<div id="dropClauseList02" class="wrap-droplist rounded  clause-private">
							<button class="droplist-button" title="서비스별 개인정보처리방침">개인정보처리방침<span class="blind">하위 메뉴
									있음</span></button>
							<ul class="droplist" tabindex="-1" aria-labelledby="dropServicePrivateTitle"
								aria-activedescendant="optServicePrivate01">
								<!--aria-activedescendant에 선택된 li의 id 삽입-->
								<li id="optServicePrivate02" class="droplist-item"><a
										href="./info/privacy/01/index.html">GMQD 개인정보처리방침</a>
								</li>
								<li id="optServicePrivate03" class="droplist-item"><a
										href="./info/privacy/02/index.html">GMQD 이벤트
										개인정보처리방침</a></li>
								<li id="optServicePrivate04" class="droplist-item"><a
										href="./info/privacy/03/index.html">GMQDisplay멤버십
										개인정보처리방침</a></li>
								<li id="optServicePrivate05" class="droplist-item"><a
										href="./info/privacy/04/index.html">멤버십블루 개인정보처리방침</a>
								</li>
								<li id="optServicePrivate06" class="droplist-item"><a
										href="./info/privacy/05/index.html">경력채용 개인정보처리방침</a>
								</li>
							</ul>
						</div>
						<!-- e : Accessible Dropdown -->
					</div>
					<div class="link-box">
						<div class="sns-btn">
							<div class="wrap-sns">
								<span class="tit">GMQDisplay의 다양한 소식을 만나보세요!</span>
								<ul>
									<li><a href="#" class="btn-fb" title="새창 열림" target="_blank">
											<span class="blind">facebook</span></a></li>
									<li><a href="#" class="btn-yt" title="새창 열림" target="_blank">
											<span class="blind">youtube</span></a></li>
									<li><a href="#" class="btn-ig" title="새창 열림" target="_blank">
											<span class="blind">instagram</span></a></li>
									<li><a href="#" class="btn-pf" title="새창 열림" target="_blank">
											<span class="blind">카카오톡 플러스친구</span></a></li>
									<li><a href="#" class="btn-tw" title="새창 열림" target="_blank">
											<span class="blind">트위터</span></a></li>
								</ul>
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
				<img class="pc-ver" src="./static/images/common/WA-2022.jpg" alt="웹접근성 우수사이트 인증서">
				<img class="mo-ver" src="./static/images/common/WA-2022-mo.jpg" alt="웹접근성 우수사이트 인증서">
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
		src="https://resources.digital-cloud-west.medallia.com/wdcwest/145272/onsite/embed.js" async></script>
</body>

</html>