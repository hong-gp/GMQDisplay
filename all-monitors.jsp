<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<!DOCTYPE HTML>
<html lang="ko">

<head>

	<title>게이밍 모니터 | GMQD 상세검색</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="canonical" href="index.html">
	<meta name="keywords" content="커브드 모니터, TV모니터, 일반모니터, 무선충전 모니터, 삼성 M5">
	<meta name="description" content="삼성 모니터에 대한 모든 궁금증을 해결하세요. 디자인과 기능, 사용 방법 등을 한눈에 비교하고 확인할 수 있어 제품 선택이 한결 쉬워집니다.">
	<meta name="date" content="">
	<meta name="sitecode" content="sec">
	<meta name="twitter:card" content="Summary">
	<meta name="twitter:site" content="@samsungkorea">
	<meta name="twitter:creator" content="@samsungkorea">
	<meta name="twitter:url" content="https://www.samsung.com/sec/monitors/all-monitors/">
	<meta name="twitter:title" content="모니터 | Samsung 대한민국">
	<meta name="twitter:description"
		content="삼성 모니터에 대한 모든 궁금증을 해결하세요. 디자인과 기능, 사용 방법 등을 한눈에 비교하고 확인할 수 있어 제품 선택이 한결 쉬워집니다.">
	<meta name="twitter:image" content="https://images.samsung.com/kdp/st/1/17875ef3-e132-4a7e-abfb-2622dd6c8a9c.jpg">

	<!-- s: 2022.03.15 VAC 광고 세팅 중 웹사이트 확인을 위한 tag -->
	<meta name="google-site-verification" content="Y5FXtKRkwrMXPsNBUlQe-3vZp4mtp_PZRy1jmEyp6wM" />
	<!-- e: 2022.03.15 VAC 광고 세팅 중 웹사이트 확인을 위한 tag -->

	<meta property="og:url" content="https://www.samsung.com/sec/monitors/all-monitors/">
	<meta property="og:image" content="https://images.samsung.com/kdp/st/1/17875ef3-e132-4a7e-abfb-2622dd6c8a9c.jpg">
	<meta property="og:type" content="website">
	<meta property="og:site_name" content="Samsung sec">
	<meta property="og:locale" content="ko">
	<meta property="og:title" content="모니터 | Samsung 대한민국">
	<meta property="og:description"
		content="삼성 모니터에 대한 모든 궁금증을 해결하세요. 디자인과 기능, 사용 방법 등을 한눈에 비교하고 확인할 수 있어 제품 선택이 한결 쉬워집니다.">
	<meta property="og:country-name" content="sec">

	<meta itemprop="name" content="Samsung sec">
	<meta itemprop="image" content="https://images.samsung.com/kdp/st/1/17875ef3-e132-4a7e-abfb-2622dd6c8a9c.jpg">
	<meta itemprop="url" content="https://www.samsung.com/sec/monitors/all-monitors/">
	<meta itemprop="description"
		content="삼성 모니터에 대한 모든 궁금증을 해결하세요. 디자인과 기능, 사용 방법 등을 한눈에 비교하고 확인할 수 있어 제품 선택이 한결 쉬워집니다.">
	<meta itemprop="keywords" content="커브드 모니터, TV모니터, 일반모니터, 무선충전 모니터, 삼성 M5">

	<link rel="dns-prefetch" href="https://images.samsung.com">
	<link rel="preconnect" href="https://images.samsung.com">
	<link rel="shortcut icon" href="./static/images/favicon.ico">
	<link rel="apple-touch-icon" href="" sizes="">

	<link rel="stylesheet" href="./static/css/reset.css">
	<link rel="stylesheet" href="./static/css/slick.css">
	<link rel="stylesheet" href="./static/css/common.css">
	<link rel="stylesheet" href="./static/css/layout.css">
	<link rel="stylesheet" href="./static/css/pf.css">
	<link rel="stylesheet" href="./static/css/content_part01.css">
	<link rel="stylesheet" href="./static/css/content_part02.css">
	<link rel="stylesheet" href="./static/css/content_part03.css">
	<link rel="stylesheet" href="./static/css/content_part04.css">
	<link rel="stylesheet" href="./static/css/content_part05.css">
	<link rel="stylesheet" href="./static/css/content_part06.css">
	<link rel="stylesheet" href="./static/css/order.css">
	<link rel="stylesheet" href="./static/css/cart.css">
	<link rel="stylesheet" href="./static/css/component.css">
	<link rel="stylesheet" href="./static/css/app.css">
	<link rel="stylesheet" href="./static/css/jquery-ui.min.css">
	<link rel="stylesheet" href="./static/css/swiper.min.css">
	<link rel="stylesheet" href="./static/css/homefitness.css">

	<script src="./static/script/jquery-3.3.1.min.js"></script>
	<script src="./static/script/jquery-ui.min.js"></script>
	<script src="./static/script/slick.js"></script>
	<script src="./static/script/slick-init.js"></script>
	<script src="./static/script/swiper.min.js"></script>
	<script src="./static/script/masonry.min.js"></script>

	<!-- masonry js -->
	<script src="./static/script/jquery.blockUI.js"></script>
	<script src="./static/script/base.js"></script>
	<script src="./static/script/layerPop.js"></script>
	<script type="text/javascript" src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"
		charset="utf-8"></script>
	<script src="./static/script/netfunnel.js" charset="UTF-8"></script>
	<script src="./static/script/netfunnel_skin.js" charset="UTF-8"></script>
	<!-- <script src="./static/script/common.js"></script> -->
	<script src="./static/script/custom.js"></script>
	<script src="./static/script/sticky.min.js"></script>
	<script src="./static/script/jquery.cookie.js"></script>
	<script src="./static/script/search.js"></script>
	<script src="./static/script/component.js"></script>
	<script src="./static/script/jquery.ui.touch-punch.min.js"></script>
	<script src="./static/script/event/event.js"></script>
	<script src="./static/script/clipboard.min.js"></script>
	<script src="./static/script/buynow.js"></script>
	<script src="./static/script/orderQooker.js"></script>
	<script type="text/javascript" src="./static/script/order/orderAdbrix.js"></script>
	<script type="text/javascript" src="./static/script/picturePolyfill.min.js"></script>
	<script type="text/javascript">
		var checkActionTimeOut;
		$(document).ready(function () {
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
				location.href = "/sec/member/logout/";
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
					, "pageTrack": "product finder"
					, "version": "KDP"
				}
				, "pathIndicator": {
					"depth_2": "pc"
					, "depth_3": "monitors"
					, "depth_4": "all"
					, "depth_5": "finder"
				}
			}
			, "user": {
				"loginStatus": ""
			}
			, "product": {
				"category": "pc"
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
			window.open('/sec/chatbot/?agepass=' + agepass, 'chatbot', 'status=no, height=750, width=356, left=' + popupX + ', top=' + popupY + ', screenX=' + popupX + ', screenY= ' + popupY);
		}

		function chat_open2() {
			fcTrack('click', 'floating chat:chat online');

			var gType = Math.round(Math.random() * 1) ? 'm' : 'f';

			var popupX = (window.screen.width / 2) - (356 / 2);
			var popupY = (window.screen.height / 2) - (750 / 2);
			window.open('/sec/chatbot/?type=ep&c=' + gType, '_chatbot2', 'status=no, height=750, width=356, left=' + popupX + ', top=' + popupY + ', screenX=' + popupX + ', screenY= ' + popupY);
		}

		function chat_open3() {
			fcTrack('click', 'floating chat:offline store');
		}

		function gift_open() {
			fcTrack('click', 'float chat:event gift');
			window.location.href = '/sec/' + "event/gift/";
		}

		function floating_open() {
			fcTrack('click', 'floating chat');
		}
		logger("prd");
	</script>

	<!-- <script src="/sec/static/script/clipboard.min.js"></script> -->
	<script src="https://t1.kakaocdn.net/kakao_js_sdk/v1/kakao.min.js"></script>
	<script src="./static/script/jsrender.min.js"></script>
	<script src="./static/script/jquery.form.min.js"></script>
	<!-- <script src="/sec/static/script/swiper.min.js"></script> -->
	<script type="text/javascript">

		// JS Render Helpers 재 정의
		$.views.helpers({
			fn_equals: function (A, B) {
				return A == B
			},
			fn_lt: function (A, B) {
				return A < B
			},
			fn_gt: function (A, B) {
				return A > B
			},
			fn_ne: function (A, B) {
				return A != B
			},
			// 값 유무 체크
			fn_notEmpty: function (A) {
				if (typeof A == 'undefined') {
					return false;
				}
				if (A == null) {
					return false;
				}
				if (A.length < 1) {
					return false;
				}
				return true;
			},
			// 천단위 콤마
			fn_comma: function (value) {
				var v = (value + ''); var reg = /(^[+-]?\d+)(\d{3})/; var n = v.split(",").join("").replace(/^\s*|\s*$/g, ''); while (reg.test(n)) { n = n.replace(reg, '$1' + ',' + '$2'); }
				return n;
			},
			fn_length: function (obj) {
				if (typeof obj == 'object') {
					if (Array.isArray(obj)) {
						return obj.length;
					} else {
						return Object.keys(compareData).length;
					}
				} else {
					return (obj + '').length;
				}
			},
			fn_first: function (obj) {
				if (Array.isArray(obj)) {
					return obj[0];
				} else {
					var keys = Object.keys(compareData);
					return obj[(keys[0])];
				}
			},
			fn_last: function (obj) {
				if (Array.isArray(obj)) {
					return obj[obj.length - 1];
				} else {
					var keys = Object.keys(compareData);
					return obj[(keys[keys.length - 1])];
				}
			},
			fn_default: function (val, v) {
				if (typeof val == 'undefined') {
					return v;
				} else if (val == null) {
					return v;
				} else if (val == '') {
					return v;
				}
				return val;
			}
		});

		// JS Render Tag 재 정의
		$.views.tags('script', {   // 스크립트
			init: function (tagCtx) {
				switch (tagCtx.props.mode) {
					case 'include':
						this.template = '<' + 'script type="text/javascript" src="{{:}}"></' + 'script>';
						break;
					case 'open':
						this.template = '<' + 'script type="text/javascript">';
						break;
					case 'close':
						this.template = '</' + 'script>';
						break;
					default:
						this.template = '{{:}}';
						break;
				}
			}
		});


	</script>
	<script src="./static/script/snsShare.js"></script>
	<script src="./static/script/jquery.mCustomScrollbar.js"></script>
	<script>

		if ('80' == '10' && '1' == '122') {
			viewportChange = function () {

				var pcView = "width=802,maximum-scale=1.0";
				var normalView = "width=device-width,initial-scale=1.0";
				var viewPort = document.querySelector('[name="viewport"]');

				var widthChk = function () {

					var winW = window.outerWidth;

					if (['iphone', 'ipad', 'android'].find(it => device.agent.includes(it))) {

						if (540 < winW && winW < 1100)
							viewPort.setAttribute("content", pcView);
						else
							viewPort.setAttribute("content", normalView)
					}
				}

				widthChk();

				window.addEventListener("resize", function () {
					if (viewPort.getAttribute("content") == pcView || viewPort.getAttribute("content") == normalView)
						widthChk();
					else
						return false
				});
			};

		}
		viewportChange();
	</script>
	<script>
		document.addEventListener("DOMContentLoaded", function () {
			var hash = location.hash;
			var hashArr = hash.split('_');
			if (hashArr[0] == '#compare' && hashArr[1] != null) {
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
		$(window).resize(function () {
			var windowWidth = window.innerWidth;
			if (windowWidth > 800) {
				$(".ranking li button").attr("tabindex", "0");
				$(".ranking li a").attr("tabindex", "0");
			} else {
				$(".ranking li button").attr("tabindex", "-1");
				$(".ranking li a").attr("tabindex", "-1");
				$(".slick-active a").attr("tabindex", "0");
				$(".slick-active button").attr("tabindex", "0");
			}
			//floatingStickyComparePosition(); // 230119
		});
	</script>
	<!-- e : 220624 수정 : 스크립트 추가 -->
	<script>(window.BOOMR_mq = window.BOOMR_mq || []).push(["addVar", { "rua.upush": "false", "rua.cpush": "false", "rua.upre": "false", "rua.cpre": "false", "rua.uprl": "false", "rua.cprl": "false", "rua.cprf": "false", "rua.trans": "SJ-a74f0aac-5888-411f-8744-125b1ec005ec", "rua.cook": "true", "rua.ims": "false", "rua.ufprl": "false", "rua.cfprl": "false", "rua.isuxp": "false", "rua.texp": "norulematch" }]);</script>
	<script>!function (a) { var e = "https://s.go-mpulse.net/boomerang/", t = "addEventListener"; if ("False" == "True") a.BOOMR_config = a.BOOMR_config || {}, a.BOOMR_config.PageParams = a.BOOMR_config.PageParams || {}, a.BOOMR_config.PageParams.pci = !0, e = "https://s2.go-mpulse.net/boomerang/"; if (window.BOOMR_API_key = "VRZKC-5BSTD-4EWS3-R2J59-B8GYB", function () { function n(e) { a.BOOMR_onload = e && e.timeStamp || (new Date).getTime() } if (!a.BOOMR || !a.BOOMR.version && !a.BOOMR.snippetExecuted) { a.BOOMR = a.BOOMR || {}, a.BOOMR.snippetExecuted = !0; var i, _, o, r = document.createElement("iframe"); if (a[t]) a[t]("load", n, !1); else if (a.attachEvent) a.attachEvent("onload", n); r.src = "javascript:void(0)", r.title = "", r.role = "presentation", (r.frameElement || r).style.cssText = "width:0;height:0;border:0;display:none;", o = document.getElementsByTagName("script")[0], o.parentNode.insertBefore(r, o); try { _ = r.contentWindow.document } catch (O) { i = document.domain, r.src = "javascript:var d=document.open();d.domain='" + i + "';void(0);", _ = r.contentWindow.document } _.open()._l = function () { var a = this.createElement("script"); if (i) this.domain = i; a.id = "boomr-if-as", a.src = e + "VRZKC-5BSTD-4EWS3-R2J59-B8GYB", BOOMR_lstart = (new Date).getTime(), this.body.appendChild(a) }, _.write("<bo" + 'dy onload="document._l();">'), _.close() } }(), "".length > 0) if (a && "performance" in a && a.performance && "function" == typeof a.performance.setResourceTimingBufferSize) a.performance.setResourceTimingBufferSize(); !function () { if (BOOMR = a.BOOMR || {}, BOOMR.plugins = BOOMR.plugins || {}, !BOOMR.plugins.AK) { var e = "false" == "true" ? 1 : 0, t = "cookiepresent", n = "pf7u3ryxguseazbapk7a-f-3a0f51663-clientnsv4-s.akamaihd.net", i = "false" == "true" ? 2 : 1, _ = { "ak.v": "34", "ak.cp": "143520", "ak.ai": parseInt("293013", 10), "ak.ol": "0", "ak.cr": 20, "ak.ipv": 4, "ak.proto": "h2", "ak.rid": "b2e01fd", "ak.r": 37315, "ak.a2": e, "ak.m": "x", "ak.n": "essl", "ak.bpcip": "121.127.77.0", "ak.cport": 49958, "ak.gh": "23.53.32.47", "ak.quicv": "", "ak.tlsv": "tls1.3", "ak.0rtt": "", "ak.csrc": "-", "ak.acc": "", "ak.t": "1679850174", "ak.ak": "hOBiQwZUYzCg5VSAfCLimQ==xlnweuNw02InGBTu0ZqBSetSdiqQDskNbECtwyQLNqlYArkFZJefULFV6E6esNVKoRgYTP74AFBSybFP1vbNehrT2fU2KiQYJ6ZeDKosg5hw51NXbUWOIERMN7aordFj+keyxpd5PREATxx7sfbfBoQDzazgPqUaJCf2AFWWbeibQD+gXpGfpVkB8scUgZOxxYHkkHUbGtaoNQBrx3eoLl8HyurPvacRXwEsOXhs7H/AKiv51EwJPmWBtxCMaMyXVFQFAMhjl1N0m7CBNTRy8VfLO864bdeL62C5WrXBhJV5sUB3qdAMCyR6aK86nbiyoa9Ygqv22XxTHtc/ZG/+pHWDxE5ipaqisQCHDiSuUnlLhJVcZCoW63q0vWa8E4mid86bUQyofu0TmeF1LBLxqfBIzCvsamfHsvcz71qDFkw=", "ak.pv": "2900", "ak.dpoabenc": "", "ak.tf": i }; if ("" !== t) _["ak.ruds"] = t; var o = { i: !1, av: function (e) { var t = "http.initiator"; if (e && (!e[t] || "spa_hard" === e[t])) _["ak.feo"] = void 0 !== a.aFeoApplied ? 1 : 0, BOOMR.addVar(_) }, rv: function () { var a = ["ak.bpcip", "ak.cport", "ak.cr", "ak.csrc", "ak.gh", "ak.ipv", "ak.m", "ak.n", "ak.ol", "ak.proto", "ak.quicv", "ak.tlsv", "ak.0rtt", "ak.r", "ak.acc", "ak.t", "ak.tf"]; BOOMR.removeVar(a) } }; BOOMR.plugins.AK = { akVars: _, akDNSPreFetchDomain: n, init: function () { if (!o.i) { var a = BOOMR.subscribe; a("before_beacon", o.av, null, null), a("onbeacon", o.rv, null, null), o.i = !0 } return this }, is_complete: function () { return !0 } } } }() }(window);</script>
</head>

<body>
	<!-- Google Tag Manager (noscript) -->
	<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NVX3V74" height="0" width="0"
			style="display:none;visibility:hidden"></iframe></noscript>
	<!-- End Google Tag Manager (noscript) -->

	<!-- s : 스킵 -->
	<div id="skip_content">
		<a href="#pd-container" class="">본문 바로가기</a>
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
					url: '/sec/xhr/order/gnbCartList',
					dataType: "html",
					done: function (data) {
						$(".gnb-cartList").html(data);
					}
				}
				ajax.call(options);
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
					url: "/sec/xhr/member/getSession"
					, type: "POST"
					, success: function (result) {
						result = JSON.parse(result);
						if (result.mbrNo == "0") {
							$("input[name=useLogin]").val("N");
							$(".link-login i").addClass("ico-people");
							$(".loginAfter").remove();
							$(".loginBefore").remove();

							setLogoutGnbMenu();

						} else {
							$("input[name=useLogin]").val("Y");
							$(".link-login i").addClass("ico-people-logged");
							$(".loginBefore").remove();
							$(".loginAfter").remove();

							// session.mbrNm 세팅
							//$(".sessionInfoMbrNm").text(result.mbrNm);

							setLoginGnbMenu();

							var htmlMo = "<a href=\"https://account.samsung.com/\" target=\"_blank\" title=\"새창열림\">안녕하세요!</a>";
							var htmlPc = "안녕하세요!";
							$(".loginAfter .welcomeMsg").html(htmlMo);
							$(".loginAfter .greet-txt").html(htmlPc);
						}
					}
				});
			}

			function appLogin(token, userId) {
				$.ajax({
					url: "/sec/xhr/member/loginSucces"
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
					htmlMoLoginBefore += '<a href="" onclick="NetFunnel_Action({action_id:\'b2c_gnb_login\'},\'/sec/member/indexLogin/?returnUrl=/sec/monitors/all-monitors/\');return false;\" data-omni=\'login\'>로그인</a></li>';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '<li class="mob-onlyMenu-join">';
					htmlMoLoginBefore += '<a href="" onclick="NetFunnel_Action({action_id:\'b2c_gnb_login\'},\'/sec/member/signUp/?returnUrl=/sec/monitors/all-monitors/\');return false;\" data-omni=\"sign up\">회원가입</a></li>';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '<li class="mob-onlyMenu-tracking">';
					htmlMoLoginBefore += '<a href="/sec/mypage/order/indexDeliveryList/" data-omni=\'orders\'>주문/배송 조회</a></li>';
					htmlMoLoginBefore += '<li class="mob-onlyMenu-stoConsult">';
					htmlMoLoginBefore += '<a href="/sec/customer/myDigitalReservationSearch/" data-omni=\'store reservation\'>매장상담예약신청 조회</a></li>';
					htmlMoLoginBefore += '<li class="mob-onlyMenu-cpnZone">';
					htmlMoLoginBefore += '<a href="" onclick="NetFunnel_Action({action_id:\'b2c_gnb_login\'},\'/sec/member/indexLogin/?returnUrl=/sec/mypage/coupon/indexMyCoupon/\');return false;" data-omni=\'login\'>쿠폰존</a></li>';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '<li class="mob-onlyMenu-benefit">';
					htmlMoLoginBefore += '<a href="/sec/eventList/benefitzone/" data-omni=\'event\'>삼성닷컴 회원 혜택</a></li>';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '</ul>';

					$("#useLogin").after(htmlMoLoginBefore);
				} else {
					//pc
					var htmlLoginBefore = '<div class="gnbSubRound loginBefore"><div>';
					htmlLoginBefore += '<dl>';
					htmlLoginBefore += '<dt><a href="" onclick="NetFunnel_Action({action_id:\'b2c_gnb_login\'},\'/sec/member/indexLogin/?returnUrl=/sec/monitors/all-monitors/\');return false;\" data-omni=\'login\'>로그인</a></dt>';
					htmlLoginBefore += '';
					htmlLoginBefore += '<dt><a href="" onclick="NetFunnel_Action({action_id:\'b2c_gnb_login\'},\'/sec/member/signUp/?returnUrl=/sec/monitors/all-monitors/\');return false;\" data-omni=\'sign up\'>회원가입</a></dt>';
					htmlLoginBefore += '';
					htmlLoginBefore += '<dt><a href="/sec/mypage/order/indexDeliveryList/" data-omni=\'orders\'>주문/배송조회</a></dt>';
					htmlLoginBefore += '<dt><a href="/sec/customer/myDigitalReservationSearch/" data-omni=\'store reservation\'>매장상담 예약 신청 조회</a></dt>';
					htmlLoginBefore += '<dt><a href="" onclick="NetFunnel_Action({action_id:\'b2c_gnb_login\'},\'/sec/member/indexLogin/?returnUrl=/sec/mypage/coupon/indexMyCoupon/\');return false;" data-omni=\'login\'>쿠폰존</a></dt>';
					htmlLoginBefore += '';
					htmlLoginBefore += '<dt><a href="/sec/eventList/benefitzone/" data-omni=\'event\'>삼성닷컴 회원 혜택</a></dt>';
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
					htmlMoLoginAfter += '<a href="/sec/membership/point/" data-omni=\'my account\'>나의 정보</a></li>';
					htmlMoLoginAfter += '<li class="mob-onlyMenu-myDeviceList">';
					htmlMoLoginAfter += '<a href="/sec/mypage/info/indexMyDeviceList/" data-omni=\'my divice\'>나의 제품 관리</a></li>';
					htmlMoLoginAfter += '<li class="mob-onlyMenu-prdctRvw">';
					htmlMoLoginAfter += '<a href="/sec/mypage/review/indexMyReview/" data-omni=\'my comment\'>상품평 작성 :<span class="cmt-num writableCnt"></span>건</a></li>';
					htmlMoLoginAfter += '<li class="mob-onlyMenu-tracking">';
					htmlMoLoginAfter += '<a href="/sec/mypage/order/indexDeliveryList/" data-omni=\'orders\'>주문/배송 조회</a></li>';
					htmlMoLoginAfter += '<li class="mob-onlyMenu-cpnZone">';
					htmlMoLoginAfter += '<a href="/sec/mypage/coupon/indexMyCoupon/" data-omni=\'coupon zone\'>쿠폰존</a></li>';
					htmlMoLoginAfter += '';
					htmlMoLoginAfter += '<li class="mob-onlyMenu-benefit">';
					htmlMoLoginAfter += '<a href="/sec/eventList/benefitzone/" data-omni=\'event\'>삼성닷컴 회원 혜택</a></li>';
					htmlMoLoginAfter += '';
					htmlMoLoginAfter += '<li class="mob-onlyMenu-logout">';
					htmlMoLoginAfter += '<a href="javascript:doLogout();" data-omni=\'logout\'>로그아웃</a></li>';
					htmlMoLoginAfter += '</ul>';

					$("#useLogin").after(htmlMoLoginAfter);
				} else {
					//pc
					var htmlLoginAfter = '<div class="gnbSubRound loginAfter"><div>';
					htmlLoginAfter += '<dl>';
					htmlLoginAfter += '<dt><a href="https://account.samsung.com/" target="_blank" title="새창열림"><span class="greet-txt">안녕하세요!</span></a></dt>';
					htmlLoginAfter += '<dd><a href="/sec/membership/point/" data-omni=\'my account\'>나의 정보</a></dd>';
					htmlLoginAfter += '<dd><a href="/sec/mypage/info/indexMyDeviceList/" data-omni=\'my divice\'>나의 제품 관리</a></dd>';
					htmlLoginAfter += '<dd><a href="/sec/mypage/review/indexMyReview/" data-omni=\'my comment\'>상품평 작성 : <span class="cmt-num writableCnt"></span> 건</a></dd>';
					htmlLoginAfter += '<dd><a href="/sec/mypage/order/indexDeliveryList/" data-omni=\'orders\'>주문/배송 조회</a></dd>';
					htmlLoginAfter += '<dd><a href="/sec/mypage/coupon/indexMyCoupon/" data-omni=\'coupon zone\'>쿠폰존</a></dd>';
					htmlLoginAfter += '';
					htmlLoginAfter += '<dd><a href="/sec/eventList/benefitzone/" data-omni=\'event\'>삼성닷컴 회원 혜택</a></dd>';
					htmlLoginAfter += '';
					htmlLoginAfter += '<dd><a href="javascript:doLogout();" data-omni=\'logout\'>로그아웃</a></dd>';
					htmlLoginAfter += '</dl>';
					htmlLoginAfter += '</div></div>';

					$("#login-menu").html(htmlLoginAfter);
				}
			}


			function getCartCnt() {
				$.ajax({
					url: "/sec/xhr/order/gnbCartCount"
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
					url: "/sec/xhr/member/getMemberShipNo"
					, type: "POST"
					, data: { mbrNo: sessionInfo.mbrNo, loginId: sessionInfo.loginId }
					, success: function (result) {
						apiFlag = result.updateCnt;
					}
				});
			}

			function getWritableMyComment() {
				$.ajax({
					url: "/sec/xhr/review/loadWritableMyCommentListCount"
					, type: "POST"
					, dataType: "json"
					, contentType: "application/json; charset=utf-8"
					, success: function (result) {
						$('.writableCnt').text(result.cmntCnt);
					}
					, error: function (request, status, error) {

						// TODO : exception message 처리
						//alert("나의 작성 가능 상품평 수량 조회 Code : " + request.status);
						// alert("Code : "+ request.status + "\n" + "message : " + request.responseText);
						// 공백
						// alert("Error : " + error);
					}
				});
			}
		</script>
		<input type="hidden" id="loginYn" value="" />
<header id="header">
	<div class="s-inner">
		<a href="index.html" class="logo">
					<img type="image/svg+xml" src="./static/images/common/logo_gmqd_black.png" alt="GMQD 엄선" />
				</a>
			<div class="new-gnb">
            <button type="button" class="gnb-back" data-omni="gnb:back">이전 메뉴 보기</button>
            <button type="button" class="gnb-close" data-omni="gnb:close">GNB 닫기</button>
			<nav class="gnb">
				<ul class="gnb1depth">
					<li class="">
								<a href="#" aria-controls="700033426-menu" aria-selected="false" data-omni="Product" >게이밍 모니터</a>
								<div class="gnb2depth">
									<div class="inner">
										<ul class="list">
											<li class="">
													<a href="#" aria-selected="false" data-omni="Product:new" >신제품<span class="flag-new">NEW</span></a>
													<div class="gnb3depth new-prd-list">
														<div class="prd-list-wrap">
																<div class="main-prd">
																			<a href="javascript:void(0);" onclick="openCtaLink('', '');" class="rec-link" aria-selected="false" data-omni="Product:new:GMQD 게이밍 모니터">
																					<span class="pic-wrap">
																						<img src="./static/images/gmqd_bg_logo.png" alt="">
																				<span class="pc-pic lozad" data-background-image="/s"></span>
																					<span class="mo-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/ba1119ba-5dc4-4b2f-94d5-494e3a51bf95.jpg?$ORIGIN_JPG$"></span>
																				</span>
																			<span class="txt-grp">
																				<span class="tit theme-blk">게이밍 모니터 울트라 4K <br> 최초 런칭 딜타임 </span>
																				<span class="desc theme-blk">즉시 할인 8% + <br>카드사별 6만원 결제일할인</span>
																			</span>
																			</a>
																		</div>
																	<div class="sub-prd num-1">
																			<a href="javascript:void(0);" onclick="openCtaLink('', '');" class="rec-link" aria-selected="false" data-omni="Product:new:GMQD Book3 Series">
																					<span class="pic-wrap">
																				<span class="pc-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/0abb6285-7482-4831-a1d7-36ab892c9c0a.png?$ORIGIN_JPG$"></span>
																					<span class="mo-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/0d774285-1b04-46d3-af5f-6256d7804a2d.png?$ORIGIN_JPG$"></span>
																				</span>
																			<span class="txt-grp">
																				<span class="tit theme-blk">
																					<span>GMQD Book3 Series<br>런칭</span>
																				</span>
																				<span class="desc theme-blk">강력한 성능의 GMQD 북3<br>카드사별 최대 19만원 결제일할인!  </span>
																			</span>
																			</a>
																		</div>
																	<div class="sub-prd num-2">
																			<a href="javascript:void(0);" onclick="openCtaLink('', '');" class="rec-link" aria-selected="false" data-omni="Product:new:Neo QLED">
																					<span class="pic-wrap">
																				<span class="pc-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/48caf28f-2aa0-4d2d-a073-f350e85db6c6.png?$ORIGIN_JPG$"></span>
																					<span class="mo-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/960c690e-f83f-484a-a1ec-28ac9a5f9c94.png?$ORIGIN_JPG$"></span>
																				</span>
																			<span class="txt-grp">
																				<span class="tit theme-blk">
																					<span>Neo QLED I OLED<br>런칭</span>
																				</span>
																				<span class="desc theme-blk">초고화질·초대형 TV의 기준<br>런칭 기념 특별한 혜택!</span>
																			</span>
																			</a>
																		</div>
																	<div class="sub-prd num-3">
																			<a href="javascript:void(0);" onclick="openCtaLink('', '');" class="rec-link" aria-selected="false" data-omni="Product:new:bespoke refrigerator">
																					<span class="pic-wrap">
																				<span class="pc-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/b32c2088-6a51-4046-bf87-94d159152d91.png?$ORIGIN_JPG$"></span>
																					<span class="mo-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/03368012-947e-4989-aabd-6407af7f6d5a.png?$ORIGIN_JPG$"></span>
																				</span>
																			<span class="txt-grp">
																				<span class="tit theme-blk">
																					<span>게이밍 모니터<br>신제품 체험단 모집</span>
																				</span>
																				<span class="desc theme-blk">최대 41% 할인 쿠폰 포함<br>최대 243만원 상당 혜택</span>
																			</span>
																			</a>
																		</div>
																	<div class="sub-prd num-4">
																			<a href="javascript:void(0);" onclick="openCtaLink('', '');" class="rec-link" aria-selected="false" data-omni="Product:new:2023 NEW bespoke-jet-2023">
																					<span class="pic-wrap">
																				<span class="pc-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/39a70a6b-2c4d-40ae-86e9-8ab994400232.png?$ORIGIN_JPG$"></span>
																					<span class="mo-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/35ee9a07-af0b-45c4-9ce5-1cea793ad2e4.png?$ORIGIN_JPG$"></span>
																				</span>
																			<span class="txt-grp">
																				<span class="tit theme-blk">
																					<span>맞춤형 AI<br>런칭 체험단</span>
																				</span>
																				<span class="desc theme-blk">지금 체험단 참여하면<br>최대 67만원 상당의 혜택이!</span>
																			</span>
																			</a>
																		</div>
																	<div class="sub-prd num-5">
																			<a href="javascript:void(0);" onclick="openCtaLink('', '');" class="rec-link" aria-selected="false" data-omni="Product:new:bespoke airsolution">
																					<span class="pic-wrap">
																				<span class="pc-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/a3a1d985-75e7-4e3e-9528-ab42be51b618.png?$ORIGIN_JPG$"></span>
																					<span class="mo-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/3bce182f-7f0d-42c2-bb54-65326fb480be.png?$ORIGIN_JPG$"></span>
																				</span>
																			<span class="txt-grp">
																				<span class="tit theme-blk">
																					<span>게이밍 모니터 <br>갤러리 런칭 체험단</span>
																				</span>
																				<span class="desc theme-blk">지금 체험단 참여하면<br>최대 35% 할인 혜택을!</span>
																			</span>
																			</a>
																		</div>
																	<div class="sub-prd num-6">
																			<a href="javascript:void(0);" onclick="openCtaLink('', '');" class="rec-link" aria-selected="false" data-omni="Product:new:samsungcareplus">
																					<span class="pic-wrap">
																				<span class="pc-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/b1e3cc88-29df-4d81-87ca-a0622a43716c.png?$ORIGIN_JPG$"></span>
																					<span class="mo-pic lozad" data-background-image="//images.samsung.com/kdp/display/gnb/66a8cd06-bc37-4827-aa3f-380aaad1e75e.png?$ORIGIN_JPG$"></span>
																				</span>
																			<span class="txt-grp">
																				<span class="tit theme-blk">
																					<span>GMQD 엄선케어플러스</span>
																				</span>
																				<span class="desc theme-blk">가전제품 전문세척 | 이전설치 + <br>가전케어 패키지 매월 6천원대</span>
																			</span>
																			</a>
																		</div>
																	</div>
														<!-- 2dep banner -->
														<!-- //2dep banner -->
													</div>
												</li>
											<li class="">
													<a href="#" aria-selected="false" data-omni="Product:mobile" >게임용 모니터</a>
													<div class="gnb3depth ">
														<ul>
																	<li class="">
																			<a href="#" aria-selected="false" data-omni="Product:mobile:smartphones">FPS/RTS</a>
																			<div class="gnb4depth">
																					<ul>
																						<li class="">
																								<a href="javascript:void(0);" onclick="openCtaLink('', '');" aria-selected="false" data-omni="Product:mobile:smartphones:smartphones recommendation" >인기 상품</a>
																							</li>
																						<li class="">
																								<a href="javascript:void(0);" onclick="openCtaLink('', '');" aria-selected="false" data-omni="Product:mobile:smartphones:all-smartphones" >전체 상품</a>
																							</li>
																						<li class="">
																								<a href="javascript:void(0);" onclick="openCtaLink('', '');" aria-selected="false" data-omni="Product:mobile:smartphones:mobile accessories" >추천 상품</a>
																							</li>
																						</ul>
																				</div>
																			</li>
																	<li class="">
																			<a href="#" aria-selected="false" data-omni="Product:mobile:GMQD Book">RPG/Sports/fights</a>
																			<div class="gnb4depth">
																					<ul>
																						<li class="">
																								<a href="javascript:void(0);" onclick="openCtaLink('', '');" aria-selected="false" data-omni="Product:mobile:GMQD Book:Recommended GMQD Book" >인기 상품</a>
																							</li>
																						<li class="">
																								<a href="javascript:void(0);" onclick="openCtaLink('', '');" aria-selected="false" data-omni="Product:mobile:GMQD Book:All GMQD Book" >전체 상품</a>
																							</li>
																						<li class="">
																								<a href="javascript:void(0);" onclick="openCtaLink('', '');" aria-selected="false" data-omni="Product:mobile:GMQD Book:galaxybook-ultra" >추천 상품</a>
																							</li>
																				</div>
																			</li>
																	<li class="">
																			<a href="#" aria-selected="false" data-omni="Product:mobile:buds" >
																					</a>
																			</li>
																	</ul>
														<!-- 2dep banner -->
														<div class="gnbBanner type2">
																<a href="javascript:void(0);" onclick="openCtaLink('', '');" data-omni="feature image:Product::learn more">
																<div class="img">
																	<img src="/static/images/menu/menu01.jpg" alt="2023 Neo QLED I OLED 사전판매 체험단" class="lozad">
																	</div>
																<p class="txt">2023 Neo QLED I OLED 런칭</p>
																</a>
																<div class="link-box flex--center">
																	<a href="javascript:void(0);" onclick="openCtaLink('', '');" data-omni="feature image:Product:Apply:learn more" class="link">
																		<span>구매 혜택 보기</span>
																		</a>
																	</div>
															</div>
														<!-- //2dep banner -->
													</div>
												</li>

												<li class="">
													<a href="#" aria-selected="false" data-omni="Product:mobile" >전문가용 모니터</a>
													<div class="gnb3depth ">
														<ul>
																<li class="">
																	<a href="javascript:void(0);" onclick="openCtaLink('', '');" aria-selected="false" data-omni="Product:mobile:Everything about the GMQD" >그래픽 작업용 게이밍 모니터</a>
																</li>
																<li class="">
																	<a href="javascript:void(0);" onclick="openCtaLink('', '');" aria-selected="false" data-omni="Product:mobile:Everything about the GMQD" >사운드 작업용 게이밍 모니터</a>
																</li>
																<li class="">
																	<a href="javascript:void(0);" onclick="openCtaLink('', '');" aria-selected="false" data-omni="Product:mobile:Everything about the GMQD" >비디오/콘솔용 게이밍 모니터</a>
																</li>
															</ul>
														<!-- 2dep banner -->
														<div class="gnbBanner type2">
																<a href="javascript:void(0);" onclick="openCtaLink('', '');" data-omni="feature image:Product::learn more">
																<div class="img">
																	<img src="/static/images/menu/menu01.jpg" alt="2023 Neo QLED I OLED 사전판매 체험단" class="lozad">
																	</div>
																<p class="txt">전문가용 모니터의 모든것</p>
																</a>
																<div class="link-box flex--center">
																	<a href="javascript:void(0);" onclick="openCtaLink('', '');" data-omni="feature image:Product:Apply:learn more" class="link">
																		<span>더 많은 상품들 보러가기</span>
																		</a>
																	</div>
															</div>
														<!-- //2dep banner -->
													</div>
												</li>
											<li class="">
												<a href="#" aria-selected="false" data-omni="Product:new" >맞춤형 주변기기</a>
													<div class="gnb3depth ">

														<!-- 2dep banner -->
														<div class="gnbBanner type2">
																<a href="javascript:void(0);" onclick="openCtaLink('', '');" data-omni="feature image:Product::learn more">
																<div class="img">
																	<img src="/static/images/menu/menu01.jpg" alt="GMQD Book3 Series 런칭" class="lozad">
																	</div>
																<p class="txt">GMQD Book3 Series 런칭</p>
																</a>
																<div class="link-box flex--center">
																	<a href="javascript:void(0);" onclick="openCtaLink('', '');" data-omni="feature image:Product:Buying benefit:learn more" class="link">
																		<span>구매 혜택 보기</span>
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
								<a href="./recommend/index_game.html" aria-selected="false">추천·맞춤케어</a>
										<div class="gnb2depth">
									<div class="inner">
										<ul class="list">
											</ul>
									</div>
								</div>
							</li>
						<li class="">
								<a href="#" aria-controls="700027213-menu" aria-selected="false" >이벤트</a>
								<div class="gnb2depth">
									<div class="inner">
										<ul class="list">
											<li class=" direct">
													<a href="javascript:void(0);" onclick="openCtaLink('https://www.samsung.com/bespokeshop/', '');" aria-selected="false" data-omni="e-Food-Mall:e-food hall HOME" >
																	이벤트 HOME</a>
															<div class="gnb3depth ">
														<ul>
																</ul>
														<!-- 2dep banner -->
														<div class="gnbBanner type2">
																<a href="javascript:void(0);" onclick="openCtaLink();" data-omni="feature image:e-Food-Mall::learn more">
																<div class="img">
																	<img data-src="https://images.samsung.com/kdp/display/gnb/29d6faf0-26aa-4bf6-8605-cc4ace3dbade.jpg?$ORIGIN_JPG$" alt="셀럽 푸드 티켓팅 X 게이밍 모니터 큐커_자세히 보기" class="lozad">
																	</div>
																<p class="txt">셰프 푸드 티켓팅 X 게이밍 모니터 큐커</p>
																</a>
																<div class="link-box flex--center">
																	<a href="javascript:void(0);" onclick="openCtaLink();" data-omni="feature image:e-Food-Mall:Learn more:learn more" class="link">
																		<span>자세히 보기</span>
																		</a>
																	</div>
															</div>
														<!-- //2dep banner -->
													</div>
												</li>
											<li class=" direct">
													<a href="javascript:void(0);" onclick="openCtaLink('', '');" aria-selected="false" data-omni="e-Food-Mall:subscription" >
																	GMQD 멤버십 플랜</a>
															<div class="gnb3depth ">
														<ul>
																</ul>
														<!-- 2dep banner -->
														<div class="gnbBanner type2">
																<a href="javascript:void(0);" onclick="openCtaLink('', '');" data-omni="feature image:e-Food-Mall:Start My Plan Membership:learn more">
																<div class="img">
																	<img data-src="https://images.samsung.com/kdp/display/gnb/a75403ff-7df6-4af3-82f4-298f99472c68.jpg?$ORIGIN_JPG$" alt="산성전자 멤버십 PLAN 최대 72만 미식혜택 (2만원 X 36개월) 이벤트 영수증 구매 금액 65,000원 결제수단 제휴사신용카드 월 혜택 금액 20,000원(청구할인,캐시백 등 카드사별 상이)" class="lozad">
																	</div>
																<p class="txt">GMQD 제품 오너들의 <br> 평소처럼 쓰면서 카드값 아끼는 방법!</p>
																</a>
																<div class="link-box flex--center">
																	<a href="javascript:void(0);" onclick="openCtaLink('', '');" data-omni="feature image:e-Food-Mall:Learn more:learn more" class="link">
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
								<a href="#" onclick="openCtaLink('', '');" aria-controls="700000115-menu" aria-selected="false" data-omni="support" >고객서비스</a>
								<div class="gnb2depth">
									<div class="inner">
										<ul class="list">
											<li class="">
													<a href="#" aria-selected="false" data-omni="support:support" >무엇을 도와드릴까요?</a>
													<div class="gnb3depth">
														<ul>
																<li class="">
																			<a href="javascript:void(0);" onclick="openCtaLink('/support/', '');" aria-selected="false" data-omni="support:support:support-learn-more" >
																							무엇을 도와드릴까요?</a>
																					</li>
																	<li class="">
																			<a href="javascript:void(0);" class="outlink " title="새창으로 열림" onclick="openCtaLink('https://www.samsungsvc.co.kr/solution', '_blank');" aria-selected="false" data-omni="support:support:self-solve">
																							스스로 해결</a>
																					</li>
																	</ul>
														<!-- 2dep banner -->
														<div class="gnbBanner type2">
																<a href="javascript:void(0);" onclick="openCtaLink('/support/', '');" data-omni="feature image:support:How can I help you?:learn more">
																<div class="img">
																	<img data-src="https://images.samsung.com/kdp/display/gnb/3823f581-fdc7-4936-8d3c-00cb35ada470.jpg?$ORIGIN_JPG$" alt="무엇을 도와드릴까요? 더 알아보기" class="lozad">
																	</div>
																<p class="txt">무엇을 도와드릴까요?</p>
																</a>
																<div class="link-box flex--center">
																	<a href="javascript:void(0);" onclick="openCtaLink('/support/', '');" data-omni="feature image:support:Learn more:learn more" class="link">
																		<span>더 알아보기</span>
																		</a>
																	</div>
															</div>
														<!-- //2dep banner -->
													</div>
												</li>
											<li class="">
													<a href="#" aria-selected="false" data-omni="support:selfserve" >
															제품 지원</a>
													<div class="gnb3depth ">
														<ul>
																<li class="">
																			<a href="javascript:void(0);" onclick="openCtaLink('/support/', '');" aria-selected="false" data-omni="support:selfserve:Manual-download" >
																							매뉴얼 & 다운로드</a>
																					</li>
																	<li class="">
																			<a href="javascript:void(0);" class="outlink " title="새창으로 열림" onclick="openCtaLink('https://www.samsungsvc.co.kr/video', '_blank');" aria-selected="false" data-omni="support:selfserve:video guide">
																							동영상 가이드</a>
																					</li>
																	<li class="">
																			<a href="javascript:void(0);" class="outlink " title="새창으로 열림" onclick="openCtaLink('https://www.samsungsvc.co.kr/consult/remote', '_blank');" aria-selected="false" data-omni="support:selfserve:remote_service">
																							원격 상담</a>
																					</li>
																	<li class="">
																			<a href="javascript:void(0);" class="outlink " title="새창으로 열림" onclick="openCtaLink('https://www.samsungsvc.co.kr/consult/call', '_blank');" aria-selected="false" data-omni="support:selfserve:rescounselview">
																							전화 상담 예약</a>
																					</li>
																	<li class="">
																			<a href="javascript:void(0);" class="outlink " title="새창으로 열림" onclick="openCtaLink('http://www.g-sis.co.kr/', '_blank');" aria-selected="false" data-omni="support:selfserve:computeronline">
																							컴퓨터 온라인 상담</a>
																					</li>
																	</ul>
														<!-- 2dep banner -->
														<!-- //2dep banner -->
													</div>
												</li>
											<li class="">
													<a href="#" aria-selected="false" data-omni="support:information" >
															추천 부가정보</a>
													<div class="gnb3depth ">
														<ul>
																<li class="">
																			<a href="javascript:void(0);" onclick="openCtaLink('/support/newsalert/', '');" aria-selected="false" data-omni="support:information:newsalert" >
																							고객서비스 알림</a>
																					</li>
																	<li class="">
																			<a href="javascript:void(0);" onclick="openCtaLink('/support/warranty/', '');" aria-selected="false" data-omni="support:information:warranty" >
																							워런티</a>
																					</li>
																	<li class="">
																			<a href="javascript:void(0);" onclick="openCtaLink('/faq/', '');" aria-selected="false" data-omni="support:information:GMQDisplay-faq" >
																							GamingMonitorDisplay FAQ</a>
																					</li>
																	<li class="">
																			<a href="javascript:void(0);" class="outlink " title="새창으로 열림" onclick="openCtaLink('https://r1.community.samsung.com/t5/Korea/ct-p/kr', '_blank');" aria-selected="false" data-omni="support:information:community">
																							GMQD 엄선멤버스 커뮤니티</a>
																					</li>
																	<li class="">
																			<a href="javascript:void(0);" onclick="openCtaLink('/support/galaxy-battery/', '');" aria-selected="false" data-omni="support:information:galaxy-battery" >
																							GMQD 배터리</a>
																					</li>
																	<li class="">
																			<a href="javascript:void(0);" onclick="openCtaLink('https://www.samsung.com/maintenance-mode', '');" aria-selected="false" data-omni="support:information:maintenance-mode" >
																							GMQD 수리모드</a>
																					</li>
																	</ul>
														<!-- 2dep banner -->
														<!-- //2dep banner -->
													</div>
												</li>
											<li class="">
													<a href="#" aria-selected="false" data-omni="support:Service center" >
															서비스 센터</a>
													<div class="gnb3depth ">
														<ul>
																<li class="">
																			<a href="javascript:void(0);" onclick="openCtaLink('/digitalplaza/centerMain/', '');" aria-selected="false" data-omni="support:Service center:Service-center_plaza" >
																							서비스센터 찾기</a>
																					</li>
																	<li class="">
																			<a href="javascript:void(0);" class="outlink " title="새창으로 열림" onclick="openCtaLink('', '_blank');" aria-selected="false" data-omni="support:Service center:U service reservation">
																							출장 서비스 예약</a>
																					</li>
																	<li class="">
																			<a href="javascript:void(0);" class="outlink " title="새창으로 열림" onclick="openCtaLink('', '_blank');" aria-selected="false" data-omni="support:Service center:Product Inquiry">
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
					<a href="javascript:void(0);" id="link-search" class="link-search" data-omni="search" role="button">
						<i class="icon ico-large ico-zoom">검색</i>
					</a>
				</li>

				<li>
					<a href="javascript:void(0);" onclick="getCartList()" aria-controls="cart-menu" aria-selected="false" class="link-cart" data-omni="cart" role="button">
						<i class="icon ico-large ico-cart">장바구니</i>
						<span class="cart-inner-count"></span>
					</a>
					<div class="s-gnbSubWrap textSubWrap cartMenu" id="cart-menu">
						<div class="gnbSubRound">
							<div>
								<ul class="gnb-cartList">
								</ul>
								<div class="btn-box">
									<button type="button" class="btn btn-d btn-type2" onclick="NetFunnel_Action({action_id :'b2c_cart_view'},function(ev, ret){location.href='/cart/';});" data-omni="cart">장바구니 보기</button>
								</div>
							</div>
						</div>
					</div>
				</li>
				<li>
					<input type="hidden" name="useLogin" id="useLogin" value="로그인" />
					<a href="javascript:void(0);" aria-controls="login-menu" aria-selected="false" class="link-login" data-omni="login">
						<i class="icon ico-large ico-people">로그인</i>
					</a>
					<div class="s-gnbSubWrap textSubWrap loginMenu" id="login-menu" style="display: none;">
					<div class="gnbSubRound loginBefore"><div>
						<dl><dt>
							<a href="#" onclick="NetFunnel_Action({action_id:'b2c_gnb_login'},'/member/indexLogin/?returnUrl=/monitors/gaming-monitors/');return false;" data-omni="login" aria-selected="false">로그인</a></dt><dt><a href="" onclick="NetFunnel_Action({action_id:'b2c_gnb_login'},'/member/signUp/?returnUrl=/monitors/gaming-monitors/');return false;" data-omni="sign up" aria-selected="false">회원가입</a></dt><dt><a href="/mypage/order/indexDeliveryList/" data-omni="orders" aria-selected="false">주문/배송조회</a></dt><dt><a href="/customer/myDigitalReservationSearch/" data-omni="store reservation" aria-selected="false">매장상담 예약 신청 조회</a></dt><dt><a href="" onclick="NetFunnel_Action({action_id:'b2c_gnb_login'},'/member/indexLogin/?returnUrl=/mypage/coupon/indexMyCoupon/');return false;" data-omni="login" aria-selected="false">쿠폰존</a></dt>
							<dt>
								<a href="#" data-omni="event" aria-selected="false">GMQD 회원 혜택</a></dt>
						</dl>
					</div>
				</div>
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
		<!-- s : 221118 앱 설치 유도 팝업 -->
		<div class="toast-pop induce-ss-app toast-parent" data-toast-name="toastInduce" data-focus="toastInduce"
			data-toast-index="0">
			<div class="inner">
				<img src="https://images.samsung.com/kdp/common/img-induce-benefit.svg" alt="">
				<p>앱 다운받고,<br>삼성닷컴만의 특별한 혜택을 만나보세요!</p>
				<button type="button" class="btn btn-d btn-type2" data-omni="appinstall_popup_movetoapp"
					onclick="appOpen(); appToastPopupTag(this);">편하게 앱으로 보기</button>
				<a href="javascript:void(0);" class="btn-underline btn-underline-disable toast-close"
					data-omni="appinstall_popup_stayonline" onclick="appToastIClose(); appToastPopupTag(this);">모바일 웹으로
					볼게요</a>
			</div>
			<div class="stop-view-wrap">
				<div class="chk-form">
					<input id="chk-not-see-appP" type="checkbox" required="" title="" class=""
						data-omni="appinstall_popup_closeforweek" onclick="appToastPopupTag(this);">
					<label for="chk-not-see-appP" class="">일주일 그만보기</label>
				</div>
				<button type="button" class="btn-underline toast-close" data-focus-next="toastInduce"
					data-omni="appinstall_popup_close" onclick="appToastIClose(); appToastPopupTag(this);">닫기</button>
			</div>
		</div>

		<div class="toast-pop child-pops-form" data-toast-name="toastChild01" data-focus="toastChild01"
			data-toast-index="1">
			<div class="inner">
				<img src="https://images.samsung.com/kdp/common/icon-app-coupon.svg" alt="">
				<div class="text-wrap">
					<p>삼성닷컴 앱 전용 할인 쿠폰이 기다리고 있어요!</p>
					<a href="javascript:void(0);" class="btn-underline" data-omni="appinstall_banner_movetoapp"
						onclick="appOpen(); appToastPopupTag(this);">앱 다운받고 혜택 받기 &gt;</a>
				</div>
				<button type="button" class="pop-close toast-close" data-focus-next="toastChild01"
					onclick="appToastCClose(); appToastPopupTag(this);"
					data-omni="appinstall_banner_close">팝업닫기</button>
			</div>
		</div>

		<div class="toast-pop child-pops-form" data-toast-name="toastChild02" data-focus="toastChild02"
			data-toast-index="1">
			<div class="inner">
				<img src="https://images.samsung.com/kdp/common/icon-induce-benefit.svg" alt="">
				<div class="text-wrap">
					<p>앱 다운받고, 특별한 혜택을 만나보세요!</p>
					<a href="javascript:void(0);" class="btn-underline" data-omni="appinstall_banner_movetoapp"
						onclick="appOpen(); appToastPopupTag(this);">편하게 앱으로 보기 &gt;</a>
				</div>
				<button type="button" class="pop-close toast-close" data-focus-next="toastChild02"
					onclick="appToastCClose(); appToastPopupTag(this);"
					data-omni="appinstall_banner_close">팝업닫기</button>
			</div>
		</div>
		<!-- e : 221118 앱 설치 유도 팝업 -->
		<!-- s : 상품평 작성 유도 팝업 -->
		<div class="layer-pop layer-default layer-induce-review " id="popupInduceReview" tabindex="0"
			data-popup-layer="popupInduceReview" data-focus="popupInduceReview">
			<div class='layer-wrap'>
				<div class="layer-header">
					<h2>이 상품 어떠셨나요?</h2>
				</div>

				<div class="layer-content">
					<!-- s : slick slide -->
					<div class="review-product-list">
					</div>
					<!-- e : slick slide -->
					<p class="review-info-text">당신의 평점은?</p>
					<div class="btn-box">
						<a href="javascript:void(0);writableCommentM();" class="btn btn-d btn-type3">상품평 쓰기</a>
					</div>
					<div class="box-close">
						<div class="chk-form al">
							<input id="chknotsee" type="checkbox">
							<label for="chknotsee">일주일 그만 보기</label>
						</div>
						<button type="button" class="btn-close" onclick="writableCommentSetC()">닫기</button>
					</div>
				</div>
				<button type='button' class='pop-btn-close' onclick="writableCommentSetC()">팝업닫기</button>
			</div>
		</div>
		<!-- e : 상품평 작성 유도 팝업 -->
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

			//.toast-parent 앱설치 유도
			function appToast() {
				var toastI = $('.toast-parent');
				var toastC = $('.child-pops-form');
				var appSetYN = getCookieA("appSetYN");
				var toastCYN = getCookieA("toastCYN");
				var commentPC = getCookieA("commentPC");

				var appUrl = window.location.href;

				let mask = `<div id="mask" style="z-index: 299;"></div>`;
				if (device.agent.indexOf("mobi") >= 0) {
					if (appUrl.indexOf('sec/order') < 0 && appUrl.indexOf('sec/cart') < 0 && appUrl.indexOf('sec/present') < 0) {
						if (device.os == "android") {
							if (device.agent.indexOf('secapp') < 0 && device.agent.indexOf('sectest') < 0) {
								if (window.secapp == undefined && window.secapppopup == undefined) {
									if (appSetYN != "N" && commentPC != "N") {
										$('body').append(mask);
										$("#mask").fadeIn();
										$(toastI).addClass("active");
									} else {
										if (toastCYN != "N") {
											$(toastC[1]).addClass("active");
										}
									}
								}
							}
						}
					}
				}

			};


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

			// 앱설치 유도 토스트 팝업 닫기
			function appToastIClose() {
				$("#mask").fadeIn('fast').remove();
				$('.toast-parent').removeClass("active");

				var atpc = $("#chk-not-see-appP").is(":checked");
				setCookieA("appSetYN", "N", atpc ? 7 : 1);
			}
			//앱설치 유도 띠배너 닫기
			function appToastCClose() {
				$('.child-pops-form').each(function (i, e) {
					$(this).removeClass("active");
				});
				setCookieA("toastCYN", "N", 7);
			}
			//현재 페이지 앱 열기
			function appOpen() {
				var locationUrl = window.location.href;
				var appUrl = ('https://secandroidprd.page.link/?link=' + locationUrl + '&apn=com.samsung.sec.android.prd&afl=https://apps.samsung.com/appquery/appDetail.as?appId=com.samsung.sec.android.prd');
				appToastIClose();
				window.open(appUrl);
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
				location.href = "/sec/member/logout/";
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

			function writableComment() {
				var commentPopYN = getCookieA("commentPopYN");
				var locationUrl = window.location.href;

				$.ajax({
					url: "/sec/xhr/review/loadWritableMyCommentList"
					, type: "POST"
					, success: function (data) {
						$(".review-produck-list").find("div").remove();
						$("#floatingSticky").find(".menu05").remove();
						var CpCondition = (commentPopYN != "N" && "N" == "N"
							&& (locationUrl == "https://dev-www.samsung.com/sec/" || locationUrl == "https://stg-www.samsung.com/sec/" || locationUrl == "https://www.samsung.com/sec/"));

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
		<div id="container" class=''>

			<!-- s : 페이지 로케이션 영역 -->
			<script type="text/javascript">
				getDispPathByUrl();

				function getDispPathByUrl() {

					let stId = "1";
					let reqUri = "/sec/monitors/all-monitors/";
					reqUri = reqUri.replace("/sec/", "");
					if (reqUri.length == 0) return;

					let tmp = "";

					if ("" === "Y") return;

					if (reqUri.indexOf('homefitness') > -1) {
						return;
					}

					$.ajax({
						url: "/sec/xhr/display/getGnbByUrl"
						, type: "POST"
						, data: { stId: stId, linkUrl: reqUri }
						, success: function (data) {
							list = data.list;
							if (list == null) return;

							$.each(list, function (idx, obj) {
								if (obj.linkUrl.length > 0) {
									tmp += '<a href="/sec/' + obj.linkUrl + '">' + obj.dispClsfNm + '</a>';
								} else if (obj.dispClsfNm != obj.upDispClsfNm) {	//동일명칭 Depth Skip 2020.09.14 YJU
									tmp += "<span>" + obj.dispClsfNm + "</span>";
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
				<button type='button' class='pop-close' onclick="closePop(latestItemLayer)"
					data-focus-next="latestItemLayer"><span class='blind'>최근 본 제품 닫기</span></button>
				<div class="LatestItm-result">
					<p class="result-tit">
						<span>검색 결과</span><strong class="num">0</strong> 개
					</p>
					<button type="button" class="btn btn-d btn-allListClear" onclick="deleteRecentGoods('Y')"
						data-st-path="/sec/" data-focus-next="latestItemLayer">전체삭제</button>
				</div>
				<div class="caution-note">※ 최근 본 제품은 7일간 보관됩니다.</div>
			</div><!-- e : 최근 본 제품 -->

			<!-- s : 본문 영역 -->
			<div id="container" class="type-visual">
				<input type="hidden" id="page" value="1">
				<input type="hidden" id="rows" value="15">
				<input type="hidden" id="presentPrdCount" value="0">
				<input type="hidden" id="totalCount" value="0">
				<input type="hidden" id="useCompareYn" value="Y">

				<!-- s : page title -->
				<div class="pf-tit-area">
					<h2 class="pf-tit pc-ver" style="color:#ffffff;">게이밍 모니터</h2>
					<!-- 2020.12.08 모바일 카테고리명 br체크 추가 -->
					<h2 class="pf-tit mo-ver" style="color:#ffffff;">게이밍 모니터</h2>
					<div class="slider-pf-visual">
						<!-- KDP-21609 [FO][B2B] 모바일 웹접근성_p51 LMJ START -->
						<div class="visual"
							style="background:url(https://images.samsung.com/kdp/display/pc/39030000/3a3906be-40df-479b-9842-45f0a3864dce.jpg) center center no-repeat; background-size:cover;"
							role="img" aria-label="모니터."></div>
						<!-- 200716 모바일 추가 -->
						<div class="visual m"
							style="background:url(https://images.samsung.com/kdp/display/mobile/39030000/c90339d1-8029-4fc8-b361-d30bbdc21a4c.jpg) center center no-repeat; background-size:cover;"
							role="img" aria-label="모니터."></div>
						<!-- KDP-21609 [FO][B2B] 모바일 웹접근성_p51 LMJ END -->

					</div>
				</div> <!-- e : page title -->
				<div class="pf-top-cta">
					<div class="pf-top-cta-inner">
						<div class="cover">
							<a href="../gaming-monitors/index.html" class="top-cta spacing-default" title="모니터 더 알아보기">
								<span class="line">모니터 더 알아보기</span>
							</a>
							<!-- s:소상공인몰인 경우 해당 필터 카테고리를 클릭했을 경우에만 아이콘 노출 -->

							<a href="javascript:;" class="top-cta tv-type" data-popup-target="PfLayerTvRuler"
								title="TV 크기 쉽게 알아보기" id="a_tvRulerLayer" style="display:none;">
								<i class="icon ico-ruler">사이즈 선택</i>
								<span class="line">TV 크기 쉽게 알아보기</span>
							</a>
							<!-- s: 22-04-12 태블릿 크기 쉽게 알아보기 -->
							<a href="javascript:;" class="top-cta tab-type" data-popup-target="PfLayerTabletSize"
								title="태블릿크기 쉽게 알아보기" id="a_tabletSize" data-focus="PfLayerTabletSize"
								style="display:none;">
								<i class="icon ico-ruler">밀리미터를 인치로 변환</i>
								<span class="line">크기 쉽게 알아보기</span>
							</a>
							<!-- e: 22-04-12 태블릿 크기 쉽게 알아보기 -->
							<a href="javascript:;" class="top-cta tv-type btn-pdfDown"
								data-popup-target="PfLayerPdfView" title="에어컨 추가 설치비" id="a_airconPDF"
								style="display:none;">
								<i class="icon ico-pdf">에어컨 추가 설치비 보기</i>
								<span class="line">에어컨 추가 설치비</span>
							</a>
							<!-- s: 플립2 구매 안내 -->
							<a href="javascript:;" class="top-cta flip-buy" data-popup-target="popupFilp2"
								title="플립2 구매 안내" id="a_filp2Buy" style="display:none;">
								<i class="icon ico">플립 구매 안내</i>
								<span class="line">플립2 구매 안내</span>
							</a>
							<!-- e: 플립2 구매 안내 -->

							<!-- e: 소상공인몰인 경우 해당 필터 카테고리를 클릭했을 경우에만 아이콘 노출 ( TV 크기 쉽게 알아보기 , 에어컨 추가 설치비 , 플립2 구매 안내 )-->

						</div>
					</div>
				</div>
				<!-- BESPOKE 정수기 쉽게 알아보기 CTA -->
				<!-- s : 상세검색 -->
				<div class="top-opt-detail-area">
					<div class="opt-detail-inner">
						<div class="box-result">
							<p class="search pc-ver">상세검색</p><!-- 2021-01-07 접근성 : pc 텍스트 추가 -->
							<button type="button" class="search mo-ver"
								id="srchDetailFilter">상세검색</button><!-- 모바일시에만 버튼 작용 -->
							<!-- 2021-01-07 접근성 : 'mo-ver' class 추가 -->
							<span class="result"></span>
						</div>
						<div class="box-option">
							<button class="btn btn-s btn-type1" type="button" style="display:none"
								onClick="removeAllItem()">초기화</button><!-- 200702 -->
							<div class="opt-area">
								<!--  
						<span class="txt">셰프컬렉션<button type="button">삭제</button></span>
						<span class="txt">셰프컬렉션<button type="button">삭제</button></span>
						<span class="txt">셰프컬렉션<button type="button">삭제</button></span>
						<span class="txt">셰프컬렉션<button type="button">삭제</button></span>
						-->
								<!-- MORE/LESS 삭제 200706-->
							</div>
						</div>
						<div class="box-droplist">
							<div id="odrDeliveryCycle" class="wrap-droplist sort-droplist">
								<button title="리스트 정렬 순서" type="button" class="droplist-button" aria-haspopup="listbox"
									aria-labelledby="odrDeliveryCycleTitle odrDeliveryCycleBtn"
									id="odrDeliveryCycleBtn">추천순<span class="blind">하위메뉴있음</span></button>
								<ul class="droplist" tabindex="-1" data-roll="listbox"
									aria-labelledby="odrDeliveryCycleTitle" aria-activedescendant="optDeliveryCycle20">
									<!--aria-activedescendant에 선택된 li의 id 삽입-->
									<li id="optDeliveryCycle10" data-roll="option" class="droplist-item focused"
										aria-selected="true" data-sort-type="10" data-omni="recommended"><button
											type='button'>추천순</button></li>
									<li id="optDeliveryCycle20" data-roll="option" class="droplist-item"
										data-sort-type="20" data-omni="newest"><button type='button'>최신순</button></li>
									<li id="optDeliveryCycle30" data-roll="option" class="droplist-item"
										data-sort-type="30" data-omni="mostclicked"><button type='button'>인기순</button>
									</li>
									<li id="optDeliveryCycle40" data-roll="option" class="droplist-item"
										data-sort-type="40" data-omni="pricedecending"><button type='button'>높은
											가격순</button></li>
									<li id="optDeliveryCycle50" data-roll="option" class="droplist-item"
										data-sort-type="50" data-omni="priceascending"><button type='button'>낮은
											가격순</button></li>
									<li id="optDeliveryCycle60" data-roll="option" class="droplist-item" tabindex="-1"
										data-sort-type="60" data-omni="rating"><button type='button'>상품평 높은순</button>
									</li>
									<li id="optDeliveryCycle90" data-roll="option" class="droplist-item"
										data-sort-type="90" data-omni="type"><button type='button'>제품 유형순</button></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- e : 상세검색 -->

				<!-- s : PF Contents -->
				<div class="pf-container t1">

					<!-- s : 품목 필터 영역 : 냉장고 -->
					<div class="pf-prd-filter-area" id="pfFilterArea" aria-hidden="false">
						<div class="filter-header">
							<div class="box-result">
								<span class="result">검색 결과<em></em>건</span>
								<button type="button" class="close"><span class="blind">필터 닫기</span></button>
							</div>
						</div>
						<ul class="list-filter">
							<li>
								<a href="javascript:;" class="btn-filter" data-omni="reference-model"
									data-filter-nm="GMQD 추천 모델">
									GMQD 추천 모델</a>
								<div class="list-box chk-form">
									<ul>
										<li>
											<input id="itm-99-210" type="checkbox" data-search-filter="reference-model"
												data-filter-item-nm="추천모델" data-multi-sel-yn="Y"
												onClick="clickItem(this, true);" data-omni="reference-model">
											<label for="itm-99-210">
												추천모델</label>
										</li>
									</ul>
								</div>
								<!-- s: 22-04-12 태블릿 크기 쉽게 알아보기 -->
								<!-- e: 22-04-12 태블릿 크기 쉽게 알아보기 -->
							</li>
							<li>
								<a href="javascript:;" class="btn-filter" data-omni="Type" data-filter-nm="유형">
									유형</a>
								<div class="list-box chk-form">
									<ul>
										<li>
											<input id="itm-5-1163" type="checkbox" data-search-filter="New_Odyssey_Ark"
												data-filter-item-nm="오디세이 Ark" data-multi-sel-yn="Y"
												onClick="clickItem(this, true);" data-omni="New_Odyssey_Ark">
											<label for="itm-5-1163">
												오디세이 Ark</label>
										</li>
										<li>
											<input id="itm-5-211" type="checkbox" data-search-filter="smart-monitor"
												data-filter-item-nm="스마트 모니터" data-multi-sel-yn="Y"
												onClick="clickItem(this, true);" data-omni="smart-monitor">
											<label for="itm-5-211">
												스마트 모니터</label>
										</li>
										<li>
											<input id="itm-5-1" type="checkbox"
												data-search-filter="high-resolution-monitors"
												data-filter-item-nm="고해상도 모니터" data-multi-sel-yn="Y"
												onClick="clickItem(this, true);" data-omni="high-resolution-monitors">
											<label for="itm-5-1">
												고해상도 모니터</label>
										</li>
										<li>
											<input id="itm-5-2" type="checkbox" data-search-filter="gaming-monitors"
												data-filter-item-nm="게이밍 모니터" data-multi-sel-yn="Y"
												onClick="clickItem(this, true);" data-omni="gaming-monitors">
											<label for="itm-5-2">
												게이밍 모니터</label>
										</li>
										<li>
											<input id="itm-5-4" type="checkbox" data-search-filter="led-monitors"
												data-filter-item-nm="일반 모니터" data-multi-sel-yn="Y"
												onClick="clickItem(this, true);" data-omni="led-monitors">
											<label for="itm-5-4">
												일반 모니터</label>
										</li>
									</ul>
								</div>
								<!-- s: 22-04-12 태블릿 크기 쉽게 알아보기 -->
								<!-- e: 22-04-12 태블릿 크기 쉽게 알아보기 -->
							</li>
							<li>
								<a href="javascript:;" class="btn-filter" data-omni="size" data-filter-nm="화면크기">
									화면크기</a>
								<div class="list-box chk-form">
									<ul>
										<li>
											<input id="itm-2-13" type="checkbox"
												data-search-filter="111 cm Greater Than" data-filter-item-nm="111 cm 이상"
												data-multi-sel-yn="N" onClick="clickItem(this, true);"
												data-omni="111 cm Greater Than">
											<label for="itm-2-13">
												111 cm 이상</label>
										</li>
										<li>
											<input id="itm-2-14" type="checkbox"
												data-search-filter="80 cm Greater Than 110 cm Less Than"
												data-filter-item-nm="80 cm ~ 110 cm" data-multi-sel-yn="N"
												onClick="clickItem(this, true);"
												data-omni="80 cm Greater Than 110 cm Less Than">
											<label for="itm-2-14">
												80 cm ~ 110 cm</label>
										</li>
										<li>
											<input id="itm-2-1314" type="checkbox"
												data-search-filter="68 cm Greater Than 79 cm Less Than"
												data-filter-item-nm="68 cm ~ 79 cm" data-multi-sel-yn="N"
												onClick="clickItem(this, true);"
												data-omni="68 cm Greater Than 79 cm Less Than">
											<label for="itm-2-1314">
												68 cm ~ 79 cm</label>
										</li>
										<li>
											<input id="itm-2-1315" type="checkbox" data-search-filter="68 cm Under"
												data-filter-item-nm="68 cm 미만" data-multi-sel-yn="N"
												onClick="clickItem(this, true);" data-omni="68 cm Under">
											<label for="itm-2-1315">
												68 cm 미만</label>
										</li>
									</ul>
								</div>
								<!-- s: 22-04-12 태블릿 크기 쉽게 알아보기 -->
								<!-- e: 22-04-12 태블릿 크기 쉽게 알아보기 -->
							</li>
							<li>
								<a href="javascript:;" class="btn-filter" data-omni="resolution" data-filter-nm="해상도">
									해상도</a>
								<div class="list-box chk-form">
									<ul>
										<li>
											<input id="itm-3-8" type="checkbox" data-search-filter="5120 x 1440 DQHD"
												data-filter-item-nm="5120 x 1440 (DQHD)" data-multi-sel-yn="N"
												onClick="clickItem(this, true);" data-omni="5120 x 1440 DQHD">
											<label for="itm-3-8">
												5120 x 1440 (DQHD)</label>
										</li>
										<li>
											<input id="itm-3-9" type="checkbox" data-search-filter="3840 x 2160 UHD"
												data-filter-item-nm="3840 x 2160 (UHD)" data-multi-sel-yn="N"
												onClick="clickItem(this, true);" data-omni="3840 x 2160 UHD">
											<label for="itm-3-9">
												3840 x 2160 (UHD)</label>
										</li>
										<li>
											<input id="itm-3-2" type="checkbox" data-search-filter="3440 x 1440 (WQHD)"
												data-filter-item-nm="3440 x 1440 (WQHD)" data-multi-sel-yn="N"
												onClick="clickItem(this, true);" data-omni="3440 x 1440 (WQHD)">
											<label for="itm-3-2">
												3440 x 1440 (WQHD)</label>
										</li>
										<li>
											<input id="itm-3-3" type="checkbox" data-search-filter="2560 x 1440 (WQHD)"
												data-filter-item-nm="2560 x 1440 (WQHD)" data-multi-sel-yn="N"
												onClick="clickItem(this, true);" data-omni="2560 x 1440 (WQHD)">
											<label for="itm-3-3">
												2560 x 1440 (WQHD)</label>
										</li>
										<li>
											<input id="itm-3-4" type="checkbox"
												data-search-filter="1920 x 1080 (Full HD)"
												data-filter-item-nm="1920 x 1080 (Full HD)" data-multi-sel-yn="N"
												onClick="clickItem(this, true);" data-omni="1920 x 1080 (Full HD)">
											<label for="itm-3-4">
												1920 x 1080 (Full HD)</label>
										</li>
									</ul>
								</div>
								<!-- s: 22-04-12 태블릿 크기 쉽게 알아보기 -->
								<!-- e: 22-04-12 태블릿 크기 쉽게 알아보기 -->
							</li>
							<li>
								<a href="javascript:;" class="btn-filter" data-omni="response-speed"
									data-filter-nm="화면비율">
									화면비율</a>
								<div class="list-box chk-form">
									<ul>
										<li>
											<input id="itm-4-1" type="checkbox" data-search-filter="32_9"
												data-filter-item-nm="32 : 9" data-multi-sel-yn="N"
												onClick="clickItem(this, true);" data-omni="32_9">
											<label for="itm-4-1">
												32 : 9</label>
										</li>
										<li>
											<input id="itm-4-2" type="checkbox" data-search-filter="21_9"
												data-filter-item-nm="21 : 9" data-multi-sel-yn="N"
												onClick="clickItem(this, true);" data-omni="21_9">
											<label for="itm-4-2">
												21 : 9</label>
										</li>
										<li>
											<input id="itm-4-3" type="checkbox" data-search-filter="16_9"
												data-filter-item-nm="16 : 9" data-multi-sel-yn="N"
												onClick="clickItem(this, true);" data-omni="16_9">
											<label for="itm-4-3">
												16 : 9</label>
										</li>
									</ul>
								</div>
								<!-- s: 22-04-12 태블릿 크기 쉽게 알아보기 -->
								<!-- e: 22-04-12 태블릿 크기 쉽게 알아보기 -->
							</li>
							<li>
								<a href="javascript:;" class="btn-filter" data-omni="Hz" data-filter-nm="주사율">
									주사율</a>
								<div class="list-box chk-form">
									<ul>
										<li>
											<input id="itm-6-1316" type="checkbox" data-search-filter="80 Hz Under"
												data-filter-item-nm="80 Hz 미만" data-multi-sel-yn="N"
												onClick="clickItem(this, true);" data-omni="80 Hz Under">
											<label for="itm-6-1316">
												80 Hz 미만</label>
										</li>
										<li>
											<input id="itm-6-1317" type="checkbox"
												data-search-filter="80 Hz Greater Than 144 Hz  Less Than"
												data-filter-item-nm="80 Hz  ~ 144 Hz " data-multi-sel-yn="N"
												onClick="clickItem(this, true);"
												data-omni="80 Hz Greater Than 144 Hz  Less Than">
											<label for="itm-6-1317">
												80 Hz ~ 144 Hz </label>
										</li>
										<li>
											<input id="itm-6-1318" type="checkbox"
												data-search-filter="165 Greater Than 174 Hz Less Than"
												data-filter-item-nm="165 Hz ~ 174 Hz" data-multi-sel-yn="N"
												onClick="clickItem(this, true);"
												data-omni="165 Greater Than 174 Hz Less Than">
											<label for="itm-6-1318">
												165 Hz ~ 174 Hz</label>
										</li>
										<li>
											<input id="itm-6-1319" type="checkbox"
												data-search-filter="175 Hz Greater Than" data-filter-item-nm="175 Hz 이상"
												data-multi-sel-yn="N" onClick="clickItem(this, true);"
												data-omni="175 Hz Greater Than">
											<label for="itm-6-1319">
												175 Hz 이상</label>
										</li>
									</ul>
								</div>
								<!-- s: 22-04-12 태블릿 크기 쉽게 알아보기 -->
								<!-- e: 22-04-12 태블릿 크기 쉽게 알아보기 -->
							</li>
							<li>
								<a href="javascript:;" class="btn-filter" data-omni="Curved-surface"
									data-filter-nm="곡면 여부">
									곡면 여부</a>
								<div class="list-box chk-form">
									<ul>
										<li>
											<input id="itm-368-1320" type="checkbox" data-search-filter="Flat"
												data-filter-item-nm="평면" data-multi-sel-yn="N"
												onClick="clickItem(this, true);" data-omni="Flat">
											<label for="itm-368-1320">
												평면</label>
										</li>
										<li>
											<input id="itm-368-1323" type="checkbox" data-search-filter="1000 R"
												data-filter-item-nm="1000 R" data-multi-sel-yn="N"
												onClick="clickItem(this, true);" data-omni="1000 R">
											<label for="itm-368-1323">
												1000 R</label>
										</li>
										<li>
											<input id="itm-368-1322" type="checkbox" data-search-filter="1500 R"
												data-filter-item-nm="1500 R" data-multi-sel-yn="N"
												onClick="clickItem(this, true);" data-omni="1500 R">
											<label for="itm-368-1322">
												1500 R</label>
										</li>
										<li>
											<input id="itm-368-1321" type="checkbox" data-search-filter="1800 R"
												data-filter-item-nm="1800 R" data-multi-sel-yn="N"
												onClick="clickItem(this, true);" data-omni="1800 R">
											<label for="itm-368-1321">
												1800 R</label>
										</li>
									</ul>
								</div>
								<!-- s: 22-04-12 태블릿 크기 쉽게 알아보기 -->
								<!-- e: 22-04-12 태블릿 크기 쉽게 알아보기 -->
							</li>
							<li>
								<a href="javascript:;" class="btn-filter" data-omni="Typical" data-filter-nm="밝기">
									밝기</a>
								<div class="list-box chk-form">
									<ul>
										<li>
											<input id="itm-369-1324" type="checkbox"
												data-search-filter="250 Greater Than 350 cd/㎡ cm Less Than"
												data-filter-item-nm="250 ~ 350 cd/㎡" data-multi-sel-yn="N"
												onClick="clickItem(this, true);"
												data-omni="250 Greater Than 350 cd/㎡ cm Less Than">
											<label for="itm-369-1324">
												250 ~ 350 cd/㎡</label>
										</li>
										<li>
											<input id="itm-369-1325" type="checkbox"
												data-search-filter="351 Greater Than 600 cd/㎡ Less Than"
												data-filter-item-nm="351 ~ 600 cd/㎡" data-multi-sel-yn="N"
												onClick="clickItem(this, true);"
												data-omni="351 Greater Than 600 cd/㎡ Less Than">
											<label for="itm-369-1325">
												351 ~ 600 cd/㎡</label>
										</li>
									</ul>
								</div>
								<!-- s: 22-04-12 태블릿 크기 쉽게 알아보기 -->
								<!-- e: 22-04-12 태블릿 크기 쉽게 알아보기 -->
							</li>
							<!-- KDP-21609 [FO][B2B] 모바일 웹접근성_p59 LMJ START -->
							<li style="display:none;"><a href="javascript:;" class="btn-filter" data-filter-nm="가격대"
									data-omni="price"></a>
								<!-- KDP-21609 [FO][B2B] 모바일 웹접근성_p59 LMJ START -->
								<div class="list-box price">
									<div class="range-box">
										<div class="slider-wrapper">
											<div id="slider-range-pf"></div>
										</div>
										<div class="range-price" id="rangePrice" data-max-prc="340" data-min-prc="17">
											<span class="min-range" aria-labelledby="leftRangeBtn"></span>
											<!-- 모바일접근성 221124-31p -->
											<span class="max-range" aria-labelledby="rightRangeBtn"></span>
											<!-- 모바일접근성 221124-31p -->
										</div>
									</div>
								</div>
							</li>


						</ul>
						<br>
						<div class="filter-footer"><!-- 200630 -->
							<div class="list-option" id="">
							</div>
							<button class="btn btn-s btn-type1" type="button"
								onClick="removeAllItem()">초기화</button><!-- 200703 -->
						</div>
					</div>
					<!-- e : 품목 필터 영역 : 냉장고 -->

					<script>
						pfFilter();
					</script>

					<!-- s : Product Card-->
					<div class="pf-prd-cardlist" id="pd-container">

						<!-- e : Best seller -->

						<!-- s : product-seller -->
						<div class="list-product">
							<ul class="list list-type">
<%
	request.setCharacterEncoding("utf-8");

	try {
		String db_url = "jdbc:mysql://localhost:3306/gpqd";
		String db_id = "root";
		String db_password = "1234";

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(db_url, db_id, db_password);

		String sql = "SELECT * FROM product"; 
		PreparedStatement pstmt = con.prepareStatement(sql);

		ResultSet rs = pstmt.executeQuery();
		int num = 0;
		DecimalFormat df = new DecimalFormat("###,###");
		while(rs.next()) {
			num++;
%>
								<li class="item" id="li-prd-<%=rs.getString("Mno")%>">
									<div class="item-inner" data-omni="<%=rs.getString("Mno")%>|<%=rs.getString("Mno")%>">
										<div class="ins-badge-area-c1228"><span style="float:right"></span></div>
										<div class="ins-badge-area-c1236"><span style="float:right"></span></div>
										<div class="card-flag" style="height: 23px;"> <span><%=rs.getString("Mgenre")%></span> <button title=""
												type="button" class="btn-good" data-goods-id="<%=rs.getString("Mno")%>"><i
													class="icon ico-large ico-goods">좋아요 미선택</i></button>
											<div class="bookmarkTooltip flashTooltip bookmarkOn">
												<div>
													<p><span>찜</span>이 되었습니다.</p><a href="javascript:void(0);"
														class="btn-underline">전체보기</a>
												</div>
											</div>
											<div class="bookmarkTooltip flashTooltip bookmarkOff">
												<div>
													<p><span>찜</span>이 취소되었습니다.</p>
												</div>
											</div>
										</div> <!-- 마우스 오버시 이미지 순차교체  --><a
											href="/sec/monitors/package-smart-ls27bm502ek-sp-dc2/LS27BM502EK-SP/"
											onclick="netFunnel_Action_PF('/sec/monitors/package-smart-ls27bm502ek-sp-dc2/LS27BM502EK-SP/');return false;"
											class="card-img"
											data-image-src="['//images.samsung.com/kdp/goods/2023/02/03/e2186039-ca36-4b0a-be72-97709b57a64a.png?$PF_PRD_PNG$', '//images.samsung.com/kdp/goods/2023/02/03/4b7e8b36-5ddb-4328-9693-9387d4fe6aa1.png?$PF_PRD_PNG$', '//images.samsung.com/kdp/goods/2023/02/03/420e46ce-c182-4e7f-9f29-0b3045c3ab5b.png?$PF_PRD_PNG$']"
											style="height: 224px;"> <img
												src="./static/images/product/<%=rs.getString("Mno")%>_1.png"
												alt="<%=rs.getString("Mname")%>"></a>
										<div class="card-opt" style="height: 13px;">
											<div class="pf-color-sel">
												<div class="option-slick">
													<ol class="itm-color-list swiper-wrapper">
														<li class="swiper-slide"> <input type="radio"
																id="itm-color-1001-G000291183"
																name="itm-color-LS27BM502EK-SP" checked="checked"
																onclick="fnGetPfPrd('G000291183', 'li-prd-G000291183', 'itm-color-1001-G000291183')">
															<label for="itm-color-1001-G000291183"><span
																	class="itm-color-object opt-checked"
																	style="background-color:#000000;"
																	data-omni="color_BLACK|LS27BM502EK-SP|LS27BM502EK-SP">블랙</span></label>
														</li>
													</ol>
													<div class="slide-nav"> <button type="button"
															class="btn-prev">이전</button> <button type="button"
															class="btn-next">다음</button> </div>
												</div>
											</div>
										</div>
										<div class="card-option" style="height: 10px;"></div>
										<div class="card-detail" style="height: 68px;"> <span class="prd-name"
												title="The Freestyle + 스마트 모니터 68.6 cm 패키지"><%=rs.getString("Mname")%></span> <span class="prd-num"><%=rs.getString("Mno")%></span> </div>
										<div class="card-price" style="height: 61px;">
											<div class="list-price"> <span>기준가</span> <em><%=df.format(Integer.parseInt(rs.getString("Mprice")))%> 원</em> </div>
											<div class="price-detail"> <span class="coupon">혜택가</span>
												<div class="pic"> <em><%=df.format(Integer.parseInt(rs.getString("Msale")))%></em><span class="unit">원</span> <button
														type="button" class="btn-downtool" aria-hidden="true"><span
															class="blind">툴팁보기(레이어열림)</span></button> <!-- s : 툴팁 -->
													<div class="box-tip" aria-hidden="true">
														<ul>
															<li><span class="tit">기준가</span><span
																	class="price"><%=df.format(Integer.parseInt(rs.getString("Mprice")))%>원</span></li>
															<li class="total">
																<div class="coupon-price"><span
																		class="tit">혜택가</span><span
																		class="price"><%=df.format(Integer.parseInt(rs.getString("Msale")))%>원</span></div>
															</li>
														</ul>
													</div> <!-- e : 툴팁 -->
												</div>
											</div>
											<div class="point-detail"> <span class="expect">적립 예정 포인트</span> <span
													class="point"><%=(Integer.parseInt(rs.getString("Msale")))/100%>P</span> </div>
										</div>
										<div class="card-btn" style="height: 44px;"> <!-- 200723 href 속성 삭제 --><button
												type="button" class="btn btn-d btn-type2"
												onclick="netFunnel_Action_PF('/sec/monitors/package-smart-ls27bm502ek-sp-dc2/LS27BM502EK-SP/');return false;"
												data-omni="LS27BM502EK-SP|LS27BM502EK-SP">구매하기</button> </div>
										<div class="card-purchase" style="height: 110px;">
											<ul class="message-list">
												<li class="message-list-item"><%=rs.getString("Mfeatures1")%></li>
												<li class="message-list-item"><%=rs.getString("Mfeatures2")%></li>
												<li class="message-list-item"><%=rs.getString("Mfeatures3")%></li>
											</ul>
											<div class="compare"> <a href="javascript:void(0);" class="link-compare-i"
													onclick="readyCompare(this)" data-goods-id="G000291183"
													data-mdl-code="LS27BM502EK-SP" data-disp-clsf-no="39030000"
													data-comp-disp-clsf-en-nm="monitors"
													data-omni="LS27BM502EK-SP|LS27BM502EK-SP">비교하기</a> <a
													class="link-review"
													href="/sec/monitors/package-smart-ls27bm502ek-sp-dc2/LS27BM502EK-SP/?focus=review"
													title="상품평점">5 (1)</a> </div>
										</div>
									</div>
								</li>
<%
		}
	} catch (Exception e) {
		out.print(e);
	}
%>
							</ul>
						</div>

						<!-- 200723 버튼 추가 -->
						<div class="pf-btn-box">
							<button id="morePrd" type="button" class="btn btn-type1 btn-d" style="display:none;"
								onclick="morePrd()">더보기</button>
						</div>


					</div>
					<!-- e : Product Card-->
				</div>
				<!-- e : PF Contents -->

				<script>
					pfListFunc();
				</script>

				<!-- s : 비교하기 b2c, fnet, fnet 디플(고도화) -->
				<!-- <script src="/sec/static/script/goods/goods-detail-view.js"></script> -->

				<!-- s : 비교하기 카드 -->
				<div class="pfpd-compare if2item" style="display:none">
					<div class="compare-innerWrap">
						<div class="toggle-toast">
							<a href="javascript:;" class="arrow-i" onclick="openCloseArrow()"><span class="blind">비교하기
									펼치기</span></a>
						</div>
						<input type="hidden" id="compDispClsfEnNm" value="monitors">
						<input type="hidden" id="compDispClsfNm" value="">
						<div class="compare-inner flex-box">
							<div class="compare-catagory">
								<div class="box-droplist" id="compareDiv">

								</div>
							</div>

							<div class="compare-contentGroup">
								<div class="compare-content">
									<div class="slider-prd-compare" tabindex="-1">
										<div id="pfpdSlideCompare" class="">

										</div>
									</div>
								</div>

								<div class="compare-btns">
									<ul>
										<li class="reset-i"><button class="btn-underline btn-reset"
												onclick="btnReset(this)" data-omni="compare:reset" value="">비우기</button>
										</li>
										<li><button class="btn btn-d btn-type2 btn-compare" id="compareBtn"
												data-popup-target="popupPrdCompare" value=""
												onclick="openCompareWindow(this)"
												data-omni="compare:pop-up">비교하기</button></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- e : 비교하기 카드 -->

				<!-- s : 제품을 선택하세요(alert) -->
				<div class="layer-pop layer-default alert" id="choicePrdAlert" data-popup-layer="choicePrdAlert"
					data-focus="choicePrdAlert">
					<div class="layer-header blind">
						<h2> 제품을 선택하세요.</h2>
					</div>
					<div class="layer-content">
						<p>제품을 선택하세요.</p>
						<div class="btn-box">
							<a href="javascript:void(0)" class="btn btn-d btn-type2">확인</a>
						</div>
					</div>
				</div>
				<!-- e : 제품을 선택하세요(alert) -->

				<!-- s : 제품 추가 팝업 -->
				<div class="layer-pop layer-normal chooseComparePrd" id="chooseComparePrd" tabindex="0"
					data-popup-layer="chooseComparePrd" data-focus="chooseComparePrd" aria-hidden="false"
					data-zindex="300" style="z-index: 300;">
					<div class="layer-header-compare">
						<span>비교할 제품을 선택하세요</span>
					</div>
					<div class="layer-content-compare">
						<section class="box-content-rounded product" id="selectProductList">

						</section>
					</div>
					<div class="btn-box">
						<button type="button" class="btn btn-d btn-type1" onclick="compareSelect()">비교하기</button>
						<!-- 제품 selected 되면 btn-type2 -->
					</div>
					<button type="button" class="pop-close" data-focus-next="chooseComparePrd">팝업닫기</button>
				</div>
				<!-- e : 제품 추가 팝업 -->

				<!-- s : 비교하기 팝업 -->
				<div class="layer-pop layer-normal popupPrdCompare" id="popupPrdCompare"
					data-popup-layer="popupPrdCompare" data-focus="popupPrdCompare">
					<div class="layer-header-compare">
						<span>비교하기</span>
						<div class="selectBox-right">
							<div class="box-droplist" id="compareDiv">

							</div>
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
						<div class="layer-content-compare">
							<section class="box-content-rounded products">
								<div class="part1">

								</div>
							</section>
							<section class="box-content-rounded specDetails">
								<div class="part2">

								</div>
							</section>
						</div>
					</div>
					<button type="button" class="pop-close" data-focus-next="popupPrdCompare">팝업닫기</button>
				</div>
				<!-- e : 비교하기 팝업-->

				<!-- s : 비교하기 mobile > select 221110 -->
				<div class="layer-pop moSelectPop" id="popupMobileSelect" data-popup-layer="popupMobileSelect"
					data-focus="popupMobileSelect">
					<div class="layer-header blind">
						<h2>다른 카테고리 비교하기 선택</h2>
					</div>
					<section>
						<ul id="moPopUp">
							<!-- <li class="select-title">다른 카테고리 제품 비교하기</li> -->
						</ul>
					</section>
					<button type="button" class="pop-close" data-focus-next="popupMobileSelect">팝업닫기</button>
				</div>
				<!-- e : 비교하기 mobile > select 221110 -->

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
					var expireDateDataStorage = '/sec/' + 'compare/expireDate';
					var expireDateData = JSON.parse(localStorage.getItem(expireDateDataStorage)) == null ? {} : JSON.parse(localStorage.getItem(expireDateDataStorage));

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

					if ('1' == '1') {
						/* 비교하기 스토리지 생성 */
						compareDataStorage = '/sec/' + 'compare/' + $("#compDispClsfEnNm").val();
						compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorage));

						/* 카테고리 스토리지 생성 */
						categoryDataStorage = '/sec/' + 'compare/category';
						categoryData = JSON.parse(localStorage.getItem(categoryDataStorage)) == null ? {} : JSON.parse(localStorage.getItem(categoryDataStorage));

						/* total goodsId 스토리지 생성 */
						goodsIdDataStorage = '/sec/' + 'compare/goodsId';
						goodsIdData = JSON.parse(localStorage.getItem(goodsIdDataStorage)) == null ? {} : JSON.parse(localStorage.getItem(goodsIdDataStorage));

						/* 마지막 담은 상품 스토리지 생성 */
						lastCompDataStorage = '/sec/' + 'compare/lastComp';
						lastCompData = JSON.parse(localStorage.getItem(lastCompDataStorage)) == null ? {} : JSON.parse(localStorage.getItem(lastCompDataStorage));

					} else if ('1' == '2') {
						/* 비교하기 스토리지 생성 */
						compareDataStorageFNET = '/sec/' + 'fnet/compare/' + $("#compDispClsfEnNm").val();
						compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageFNET));

						/* 카테고리 스토리지 생성 */
						categoryDataStorageFNET = '/sec/' + 'fnet/compare/category';
						categoryDataFNET = JSON.parse(localStorage.getItem(categoryDataStorageFNET)) == null ? {} : JSON.parse(localStorage.getItem(categoryDataStorageFNET));

						/* total goodsId 스토리지 생성 */
						goodsIdDataStorageFNET = '/sec/' + 'fnet/compare/goodsId';
						goodsIdDataFNET = JSON.parse(localStorage.getItem(goodsIdDataStorageFNET)) == null ? {} : JSON.parse(localStorage.getItem(goodsIdDataStorageFNET));

						/* 마지막 담은 상품 스토리지 생성 */
						lastCompDataStorageFNET = '/sec/' + 'fnet/compare/lastComp';
						lastCompDataFNET = JSON.parse(localStorage.getItem(lastCompDataStorageFNET)) == null ? {} : JSON.parse(localStorage.getItem(lastCompDataStorageFNET));

					} else if ('1' == '3') {
						/* 비교하기 스토리지 생성 */
						compareDataStorageFNET_SOL = '/sec/' + 'fnet_sol/compare/' + $("#compDispClsfEnNm").val();
						compareDataFNET_SOL = JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL));

						/* 카테고리 스토리지 생성 */
						categoryDataStorageFNET_SOL = '/sec/' + 'fnet_sol/compare/category';
						categoryDataFNET_SOL = JSON.parse(localStorage.getItem(categoryDataStorageFNET_SOL)) == null ? {} : JSON.parse(localStorage.getItem(categoryDataStorageFNET_SOL));

						/* total goodsId 스토리지 생성 */
						goodsIdDataStorageFNET_SOL = '/sec/' + 'fnet_sol/compare/goodsId';
						goodsIdDataFNET_SOL = JSON.parse(localStorage.getItem(goodsIdDataStorageFNET_SOL)) == null ? {} : JSON.parse(localStorage.getItem(goodsIdDataStorageFNET_SOL));

						/* 마지막 담은 상품 스토리지 생성 */
						lastCompDataStorageFNET_SOL = '/sec/' + 'fnet_sol/compare/lastComp';
						lastCompDataFNET_SOL = JSON.parse(localStorage.getItem(lastCompDataStorageFNET_SOL)) == null ? {} : JSON.parse(localStorage.getItem(lastCompDataStorageFNET_SOL));

					}

					/* 비교하기 팝업 버튼 이벤트(필요) */
					function openCompareWindow(self) {
						console.log("비교하기 팝업 버튼 이벤트(필요)");

						/* 차이점 비활성화 */
						if ($('.popupPrdCompare .layer-difference-compare .toggleCheck .labeltxt.off').attr('aria-hidden') == 'true') {
							var compDispClsfEnNm = '';
							if ($('#compareBtn').val() == '') { $('#compareBtn').val($('.prd').attr('value')); $('.btn-reset').val($('.prd').attr('value')); }
							compDispClsfEnNm = $('#compareBtn').val();

							/* 비교하기 팝업 정보 세팅 스토리지(차이점 비활성화)(필요) */
							setCompInfoStrg(compDispClsfEnNm, false, true);
						} else {/* 차이점 활성화 */

							/* 비교하기 팝업 정보 세팅 DB(차이점 활성화)(필요) */
							setCompInfoDb();
						}
					}

					/* 비교하기 제품 삭제(필요) */
					function deleteCompare(self) {
						console.log("비교하기 제품 삭제");
						var val = $(self).val(); var lan;
						var compDispClsfEnNm = '';
						if ($('.btn-reset').val() == '') { $('#compareBtn').val($('.prd').attr('value')); $('.btn-reset').val($('.prd').attr('value')); }
						compDispClsfEnNm = $('.btn-reset').val();

						if ('1' == '1') {
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
							if (Object.keys(goodsIdData).length == 0) { $(".pfpd-compare").css("display", "none"); }

							if (lan == 1 && Object.keys(goodsIdData).length != 0) {
								compareDataStorage = '/sec/' + 'compare/' + Object.values(goodsIdData)[0];
								compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorage));
								localStorage.setItem(compareDataStorage, JSON.stringify(compareData));

								$('.btn-reset').val(Object.values(goodsIdData)[0]);
								$('#compareBtn').val(Object.values(goodsIdData)[0]);

								setCompInfoStrg(Object.values(goodsIdData)[0], true, true);
								addSelectedBtn(Object.values(compareData).length);
							} else {
								setCompInfoStrg(compDispClsfEnNm, true, true);
								addSelectedBtn(Object.values(compareData).length);
							}
						} else if ('1' == '2') {
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
							if (Object.keys(goodsIdDataFNET).length == 0) { $(".pfpd-compare").css("display", "none"); }

							if (lan == 1 && Object.keys(goodsIdDataFNET).length != 0) {
								compareDataStorageFNET = '/sec/' + 'fnet/compare/' + Object.values(goodsIdDataFNET)[0];
								compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageFNET));
								localStorage.setItem(compareDataStorageFNET, JSON.stringify(compareDataFNET));

								$('.btn-reset').val(Object.values(goodsIdDataFNET)[0]);
								$('#compareBtn').val(Object.values(goodsIdDataFNET)[0]);

								setCompInfoStrg(Object.values(goodsIdDataFNET)[0], true, true);
								addSelectedBtn(Object.values(compareDataFNET).length);
							} else {
								setCompInfoStrg(compDispClsfEnNm, true, true);
								addSelectedBtn(Object.values(compareDataFNET).length);
							}
						} else if ('1' == '3') {
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
							if (Object.keys(goodsIdDataFNET_SOL).length == 0) { $(".pfpd-compare").css("display", "none"); }

							if (lan == 1 && Object.keys(goodsIdDataFNET_SOL).length != 0) {
								compareDataStorageFNET_SOL = '/sec/' + 'fnet_sol/compare/' + Object.values(goodsIdDataFNET_SOL)[0];
								compareDataFNET_SOL = JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL));
								localStorage.setItem(compareDataStorageFNET_SOL, JSON.stringify(compareDataFNET_SOL));

								$('.btn-reset').val(Object.values(goodsIdDataFNET_SOL)[0]);
								$('#compareBtn').val(Object.values(goodsIdDataFNET_SOL)[0]);

								setCompInfoStrg(Object.values(goodsIdDataFNET_SOL)[0], true, true);
								addSelectedBtn(Object.values(compareDataFNET_SOL).length);
							} else {
								setCompInfoStrg(compDispClsfEnNm, true, true);
								addSelectedBtn(Object.values(compareDataFNET_SOL).length);
							}
						}

						categoryBtn();
						disabledCompareButton();

						if ($('.popupPrdCompare .layer-difference-compare .toggleCheck .labeltxt.off').attr('aria-hidden') == 'true') {
						} else {
							setCompInfoDb();
						}
					}

					/* 비교하기 대상or비대상 +비교하기 버튼 처리(PF)(필요) */
					function disabledCompareButton() {
						console.log("비교하기 대상or비대상 +비교하기 버튼 처리(PF)(필요)");
						$('.link-compare-i').each(function (i) {
							if ($(this).is('.disabled')) {
								if (!isCompareDataStorageGoods($(this).data('goodsId'))) { $(this).removeClass('disabled'); }
							} else { if (isCompareDataStorageGoods($(this).data('goodsId'))) { $(this).addClass('disabled'); } }
						});
					}

					/* 비교 대상이 로컬스토리지에 있는지 여부 확인(필요) *//* 비교하기 대상or비대상 +비교하기 버튼 처리(PF) */
					function isCompareDataStorageGoods(goodsId) {
						console.log("비교 대상이 로컬스토리지에 있는지 여부 확인(필요)");
						var result = false; var keys;

						if ('1' == '1') {
							keys = Object.keys(goodsIdData);
						} else if ('1' == '2') {
							keys = Object.keys(goodsIdDataFNET);
						} else if ('1' == '3') { keys = Object.keys(goodsIdDataFNET_SOL); }

						if (keys.length > 0) {
							for (var i = 0; i < keys.length; i++) {
								if (keys[i] == goodsId) { result = true; }
							}
						}
						return result;
					}

					/* 제품 선택 팝업창 확인 버튼(필요) */
					function compareSelect() {
						console.log("제품 선택 팝업창 확인 버튼(필요)");
						var self = $("#chooseComparePrd .prd.active").find('input[name="PrdSelect"]');
						var compareDataBef;
						if ($("#chooseComparePrd").find("button.btn.btn-d").hasClass("btn-type2") && $("#chooseComparePrd").find(".prd").hasClass("active")) {
							ajax.call({
								data: self.data()
								, async: false
								, url: "/sec/xhr/goods/incGoodsCompare"
								, type: 'POST'
								, dataType: 'json'
								, done: function (data) {
									if ('1' == '1') {
										/* 비교하기 데이터 추가 */
										compareDataStorage = '/sec/' + 'compare/' + data.summary.compDispClsfEnNm;
										compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorage));
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
									} else if ('1' == '2') {
										/* 비교하기 데이터 추가 */
										compareDataStorageFNET = '/sec/' + 'fnet/compare/' + data.summary.compDispClsfEnNm;
										compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageFNET));
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
									} else if ('1' == '3') {
										/* 비교하기 데이터 추가 */
										compareDataStorageFNET_SOL = '/sec/' + 'fnet_sol/compare/' + data.summary.compDispClsfEnNm;
										compareDataFNET_SOL = JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL));
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
										index: (Object.keys(compareDataBef).length + 1),
										mdlInfo: data.pfGoods.mdlNm
									});

									$('#chooseComparePrd').find('.pop-close').click();
									//$('#popupPrdCompare').find('.pop-close').click();

								}
								, fail: function (data) {
									if (!isCompareDataStorageGoods($(this).data('goodsId'))) { $(this).removeClass('disabled'); }
								}
								, error: function (error) {
									if (!isCompareDataStorageGoods($(this).data('goodsId'))) { $(this).removeClass('disabled'); }
								}
							});
							categoryBtn();/* 카테고리 select box */
							disabledCompareButton();

							if ($('.popupPrdCompare .layer-difference-compare .toggleCheck .labeltxt.off').attr('aria-hidden') == 'true') {
							} else {
								setCompInfoDb();
							}

							if ($('.pfpd-compare').hasClass("close") || (!$('.pfpd-compare').hasClass("close") && !$('.pfpd-compare').hasClass("open"))) {
								$('.pfpd-compare').addClass("close");
								openCloseArrow();
							}
						} else {
							commonAlert({ content: "제품을 선택 하세요." });
							openLayer('commonAlert');
						}
					}

					//비교하기 제품 추가(Pf에서 쓰임)(필요)
					function readyCompare(self) {
						console.log("비교하기 제품 추가(Pf에서 쓰임)(필요)");
						self = $(self); self.parent().toggleClass('active');
						var filter = "win16|win32|win64|mac|macintel";

						if ($(self).hasClass('link-compare-i disabled')) {
							commonAlert({ content: "이미 담은 제품 입니다." });
							openLayer('commonAlert');
							return false;
						}

						var compDispClsfEnNm = '';
						if ($('#compareBtn').val() == '') { $('#compareBtn').val($('.prd').attr('value')); $('.btn-reset').val($('.prd').attr('value')); }
						compDispClsfEnNm = $('#compareBtn').val();

						var compareDataStorageNew, compareDataNew;
						var compareDataStorageBef, compareDataBef;
						if ('1' == '1') {
							compareDataStorageNew = '/sec/' + 'compare/' + self.data('comp-disp-clsf-en-nm');
							compareDataNew = JSON.parse(localStorage.getItem(compareDataStorageNew)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageNew));
							compareDataStorageBef = '/sec/' + 'compare/' + compDispClsfEnNm;
							compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageBef));
						} else if ('1' == '2') {
							compareDataStorageNew = '/sec/' + 'fnet/compare/' + self.data('comp-disp-clsf-en-nm');
							compareDataNew = JSON.parse(localStorage.getItem(compareDataStorageNew)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageNew));
							compareDataStorageBef = '/sec/' + 'fnet/compare/' + compDispClsfEnNm;
							compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageBef));
						} else if ('1' == '3') {
							compareDataStorageNew = '/sec/' + 'fnet_sol/compare/' + self.data('comp-disp-clsf-en-nm');
							compareDataNew = JSON.parse(localStorage.getItem(compareDataStorageNew)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageNew));
							compareDataStorageBef = '/sec/' + 'fnet_sol/compare/' + compDispClsfEnNm;
							compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageBef));
						}

						if (compareDataStorageNew == compareDataStorageBef) { /* 선택된 카테고리와 동일한 카테고리 상품 담을 때 */
							if (!(filter.indexOf(navigator.platform.toLowerCase()) < 0)) { /* pc 4개 */
								if (Object.keys(compareDataBef).length == 4) {
									commonAlert({ content: "최대 4개까지 담을 수 있습니다." }); self.parent().toggleClass('active'); openLayer('commonAlert');
									return false;
								}
							} else { /* mo 4개 */
								if (Object.keys(compareDataBef).length == 4) {
									commonAlert({ content: "최대 4개까지 담을 수 있습니다." }); self.parent().toggleClass('active'); openLayer('commonAlert');
									return false;
								}
							}
						} else { /* 선택된 카테고리와 다른 카테고리 상품 담을 때 */
							var len = '';
							if (compareDataNew == null) { len = 0; } else { len = Object.keys(compareDataNew).length; }
							if (!(filter.indexOf(navigator.platform.toLowerCase()) < 0)) { /* pc 4개 */
								if (len == 4) {
									commonAlert({ content: "최대 4개까지 담을 수 있습니다." }); self.parent().toggleClass('active'); openLayer('commonAlert');
									return false;
								}
							} else { /* mo 4개 */
								if (len == 4) {
									commonAlert({ content: "최대 4개까지 담을 수 있습니다." }); self.parent().toggleClass('active'); openLayer('commonAlert');
									return false;
								}
							}
						}

						if (Object.keys(compareDataBef).length == 0) { $('#pfpdSlideCompare').empty(); }

						ajax.call({
							data: $(self).data()
							, url: "/sec/xhr/goods/incGoodsCompare"
							, type: 'POST'
							, dataType: 'json'
							, done: function (data) {
								$('#compDispClsfEnNm').val(data.summary.compDispClsfEnNm);
								$('#compDispClsfNm').val(data.summary.compDispClsfNm);
								$('.btn-reset').val(data.summary.compDispClsfEnNm);
								$('#compareBtn').val(data.summary.compDispClsfEnNm);

								if ('1' == '1') {
									/* 비교하기 데이터 추가 */
									compareDataStorage = '/sec/' + 'compare/' + data.summary.compDispClsfEnNm;
									compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorage));
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
									for (var i = 0; i < localStorage.length; i++) {
										array[i] = localStorage.key(i);
										if (array[i].includes('/sec/compare/')) {
											var index = array[i].lastIndexOf("/") + 1;
											if (array[i].substring(index) == data.summary.compDispClsfEnNm && categoryData[array[i].substring(index)] != $("#compareDropList").text()) {
												categoryData[array[i].substring(index)] = data.summary.compDispClsfNm;
												localStorage.setItem(categoryDataStorage, JSON.stringify(categoryData));
											}
										}
									}

									addSelectedBtn(Object.values(compareData).length);
								} else if ('1' == '2') {
									/* 비교하기 데이터 추가 */
									compareDataStorageFNET = '/sec/' + 'fnet/compare/' + data.summary.compDispClsfEnNm;
									compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageFNET));
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
									for (var i = 0; i < localStorage.length; i++) {
										array[i] = localStorage.key(i);
										if (array[i].includes('/fnet/compare/')) {
											var index = array[i].lastIndexOf("/") + 1;
											if (array[i].substring(index) == data.summary.compDispClsfEnNm && categoryDataFNET[array[i].substring(index)] != $("#compareDropList").text()) {
												categoryDataFNET[array[i].substring(index)] = data.summary.compDispClsfNm;
												localStorage.setItem(categoryDataStorageFNET, JSON.stringify(categoryDataFNET));
											}
										}
									}

									addSelectedBtn(Object.values(compareDataFNET).length);
								} else if ('1' == '3') {
									/* 비교하기 데이터 추가 */
									compareDataStorageFNET_SOL = '/sec/' + 'fnet_sol/compare/' + data.summary.compDispClsfEnNm;
									compareDataFNET_SOL = JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL));
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
									for (var i = 0; i < localStorage.length; i++) {
										array[i] = localStorage.key(i);
										if (array[i].includes('/fnet_sol/compare/')) {
											var index = array[i].lastIndexOf("/") + 1;
											if (array[i].substring(index) == data.summary.compDispClsfEnNm && categoryDataFNET_SOL[array[i].substring(index)] != $("#compareDropList").text()) {
												categoryDataFNET_SOL[array[i].substring(index)] = data.summary.compDispClsfNm;
												localStorage.setItem(categoryDataStorageFNET_SOL, JSON.stringify(categoryDataFNET_SOL));
											}
										}
									}

									addSelectedBtn(Object.values(compareDataFNET_SOL).length);
								}


								//마지막 담은 상품의 날짜/시간/분 저장
								expireDateData = {};
								expireDateData['date'] = new Date();
								localStorage.setItem(expireDateDataStorage, JSON.stringify(expireDateData));

								$('#pfpdSlideCompare').empty();

								setCompInfoStrg(data.summary.compDispClsfEnNm, true, false);

								categoryBtn();/* 카테고리 select box */
								disabledCompareButton();

								if ($('.pfpd-compare').hasClass("close") || (!$('.pfpd-compare').hasClass("close") && !$('.pfpd-compare').hasClass("open"))) {
									$('.pfpd-compare').addClass("close");
									openCloseArrow();
								}

								// Adobe Rule 호출
								_satellite.track("pd compare", {
									index: (Object.keys(compareDataBef).length + 1),
									mdlInfo: data.pfGoods.mdlNm
								});

								$(".list-product li").find(".link-compare-i").removeAttr("data-compare-target");/* 웹접근성 포커싱 처리를 위한 attribute */
								$(self).attr("data-compare-target", "true");/* 웹접근성 포커싱 처리를 위한 attribute */
								$(".pfpd-compare").css("display", "");
							}
							, fail: function (data) {
								if (!isCompareDataStorageGoods($(this).data('goodsId'))) { $(this).removeClass('disabled'); }
							}
							, error: function (error) {
								if (!isCompareDataStorageGoods($(this).data('goodsId'))) { $(this).removeClass('disabled'); }
							}
						});
					}

					/* 카테고리 select box(필요) */
					function categoryBtn() {
						console.log("카테고리 select box(필요)");
						var categoryDataBefLen; var categoryDataBef;
						if ('1' == '1') {
							categoryDataBefLen = Object.values(categoryData).length; categoryDataBef = categoryData;
						} else if ('1' == '2') {
							categoryDataBefLen = Object.values(categoryDataFNET).length; categoryDataBef = categoryDataFNET;
						} else if ('1' == '3') { categoryDataBefLen = Object.values(categoryDataFNET_SOL).length; categoryDataBef = categoryDataFNET_SOL; }

						if (categoryDataBefLen > 0) {
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
								for (var [key, value] of Object.entries(categoryDataBef)) {
									var length = '';
									if (Object.keys(categoryDataBef)[i] == key) {
										if ('1' == '1') {
											compareDataStorage = '/sec/' + 'compare/' + key;
											compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorage));
											length = Object.keys(compareData).length;
											i++;
										} else if ('1' == '2') {
											compareDataStorageFNET = '/sec/' + 'fnet/compare/' + key;
											compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageFNET));
											length = Object.keys(compareDataFNET).length;
											i++;
										} else if ('1' == '3') {
											compareDataStorageFNET_SOL = '/sec/' + 'fnet_sol/compare/' + key;
											compareDataFNET_SOL = JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL));
											length = Object.keys(compareDataFNET_SOL).length;
											i++;
										}

									}
									moHtml2 += "<li><a href='javascript:void(0);' data-comp-disp-clsf-en-nm='" + key + "' data-comp-disp-clsf-nm='" + value + "' onClick='selectBtn(this)'>" + value + " (" + length + "/" + max + ")</a></li>"
									var html2 = "<li id='compareDropList' data-roll='option' class='droplist-item' data-comp-disp-clsf-en-nm='" + key + "' data-comp-disp-clsf-nm='" + value + "' onClick='selectBtn(this)'><button type='button' id='dropListBtn'>" + value + " (" + length + "/" + max + ")</button></li>";
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
								for (var [key, value] of Object.entries(categoryDataBef)) {
									var length = '';
									if (Object.keys(categoryDataBef)[i] == key) {
										if ('1' == '1') {
											compareDataStorage = '/sec/' + 'compare/' + key;
											compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorage));
											length = Object.keys(compareData).length;
											i++;
										} else if ('1' == '2') {
											compareDataStorageFNET = '/sec/' + 'fnet/compare/' + key;
											compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageFNET));
											length = Object.keys(compareDataFNET).length;
											i++;
										} else if ('1' == '3') {
											compareDataStorageFNET_SOL = '/sec/' + 'fnet_sol/compare/' + key;
											compareDataFNET_SOL = JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL));
											length = Object.keys(compareDataFNET_SOL).length;
											i++;
										}
									}
									var html2 = "<li id='compareDropList' data-roll='option' class='droplist-item' data-comp-disp-clsf-en-nm='" + key + "' data-comp-disp-clsf-nm='" + value + "' onClick='selectBtn(this)'><button type='button' id='dropListBtn'>" + value + " (" + length + "/" + max + ")</button></li>";
									$(".compare-catagory .box-droplist #compareDropList .droplist").append(html2);
									$(".selectBox-right .box-droplist #compareDropList .droplist").append(html2);
								}
							}

							if ('1' == '1') {
								compareDataStorage = '/sec/' + 'compare/' + $("#compDispClsfEnNm").val();
								compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorage));
							} else if ('1' == '2') {
								compareDataStorageFNET = '/sec/' + 'fnet/compare/' + $("#compDispClsfEnNm").val();
								compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageFNET));
							} else if ('1' == '3') {
								compareDataStorageFNET_SOL = '/sec/' + 'fnet_sol/compare/' + $("#compDispClsfEnNm").val();
								compareDataFNET_SOL = JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL));
							}
						}
					}

					/* 비교하기 버튼 UI 수정(필요) */
					function addSelectedBtn(length) {
						console.log("비교하기 버튼 UI 수정(필요)");
						var filter = "win16|win32|win64|mac|macintel";
						var max = 0;
						if (!(filter.indexOf(navigator.platform.toLowerCase()) < 0)) { max = '4';/* pc */ } else { max = '4';/* mo */ }

						var compLenMax = "비교하기 (" + length + "/" + max + ")";
						if (length == 0) { compLenMax = "비교하기"; }

						$("#compareBtn").text(compLenMax);
						$("#compareDropListBtnSelect").addClass('selected');
						$("#compareDropListPfBtnSelect").addClass('selected');
					}

					/* 카테고리 선택(필요) */
					function selectBtn(self) {
						console.log("카테고리 선택(필요) ");
						var compareEnNm = $(self).data().compDispClsfEnNm; var compareNm = $(self).data().compDispClsfNm;
						var compareDataBefLen;
						if ('1' == '1') {
							compareDataStorage = '/sec/' + 'compare/' + compareEnNm;
							compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorage));
							compareDataBefLen = Object.keys(compareData).length;
							addSelectedBtn(Object.values(compareData).length);
						} else if ('1' == '2') {
							compareDataStorageFNET = '/sec/' + 'fnet/compare/' + compareEnNm;
							compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageFNET));
							compareDataBefLen = Object.keys(compareDataFNET).length;
							addSelectedBtn(Object.values(compareDataFNET).length);
						} else if ('1' == '3') {
							compareDataStorageFNET_SOL = '/sec/' + 'fnet_sol/compare/' + compareEnNm;
							compareDataFNET_SOL = JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL));
							compareDataBefLen = Object.keys(compareDataFNET_SOL).length;
							addSelectedBtn(Object.values(compareDataFNET_SOL).length);
						}

						$('#compDispClsfEnNm').val(compareEnNm);
						$('#compDispClsfNm').val(compareNm);
						$('.btn-reset').val(compareEnNm);
						$('#compareBtn').val(compareEnNm);
						if ($('.pfpd-compare').hasClass("close")) { openCloseArrow(); }

						if (compareDataBefLen > 0) {
							setCompInfoStrg(compareEnNm, true, true);
							categoryBtn();/* 카테고리 select box */
						}

						if ($('.popupPrdCompare .layer-difference-compare .toggleCheck .labeltxt.off').attr('aria-hidden') == 'true') {
						} else {
							setCompInfoDb();
						}
						$('#popupMobileSelect').find('.pop-close').click();
					}

					/* 제품선택 팝업(필요) */
					function selectProductList(data) {
						console.log("제품선택 팝업(필요)");
						var goodsAdvCmntStYn = 'Y';//$('#goodsAdvCmntStYn').val()

						$('#selectProductList').empty();
						var compareEnNm = data;
						var compareDataStorageBef, compareDataBef, compareDataBefLen;
						if ('1' == '1') {
							compareDataStorageBef = '/sec/' + 'compare/' + compareEnNm;
							compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageBef)); // 비교하기 담기 스토리지
							compareDataBefLen = Object.keys(compareDataBef).length;
						} else if ('1' == '2') {
							compareDataStorageBef = '/sec/' + 'fnet/compare/' + compareEnNm;
							compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageBef)); // 비교하기 담기 스토리지
							compareDataBefLen = Object.keys(compareDataBef).length;
						} else if ('1' == '3') {
							compareDataStorageBef = '/sec/' + 'fnet_sol/compare/' + compareEnNm;
							compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageBef)); // 비교하기 담기 스토리지
							compareDataBefLen = Object.keys(compareDataBef).length;
						}

						/* 이미 추가된 비교하기 데이터 */
						var stGoodsIds = [];
						if (compareDataBefLen > 0) {
							Object.keys(compareDataBef).forEach(function (v, i) {
								stGoodsIds[i] = v;
							});
						}

						ajax.call({
							data: { filterEnNm: compareEnNm }
							, url: "/sec/xhr/pf/compGoodsList"
							, type: 'POST'
							, dataType: 'json'
							, done: function (data) {
								for (var i = 0; i < data.products.length; i++) {
									var html = '';
									if (data.products[i].imgPath1 != null && data.products[i].imgPath1[data.products[i].imgPath1.length - 1] != '$') {
										if (data.products[i].imgPresetYn1 == 'Y') {
											data.products[i].imgPath1 += '?$PF_PRD_KDP_PNG$';
										} else { data.products[i].imgPath1 += '?$PF_PRD_PNG$'; }
									}

									data.products[i].goodsNm = data.products[i].goodsNm.replace(/(<([^>]+)>)/ig, '').replace(/'/ig, '').replace(/"/ig, '');

									if (data.products[i].compareExcptYn == '' || data.products[i].compareExcptYn == 'N' || data.products[i].compareExcptYn == null) {
										for (var j = 0; j < stGoodsIds.length; j++) {
											if (data.products[i].goodsId == stGoodsIds[j]) {
												html += "<button type='button' class='prd' id=' ' disabled>";
												html += "	<div class='box disabled'>";
												html += "		<div class='prd-img'><img src='" + data.products[i].imgPath1 + "' alt='" + data.products[i].goodsNm + "'></div>";
												if (goodsAdvCmntStYn == 'Y') {
													html += "		<div class='prd-review'>";
													html += "			<span class='link-review' title='상품평점'>" + data.products[i].reviewGrade + " (" + data.products[i].reviewCount + ")</span>";
													html += "		</div>";
												} else {
													html += "		<div class='prd-review'>";
													html += "			<span class='' title='상품평점'>&nbsp;</span>";
													html += "		</div>";
												}
												break;
											}
										}
										if (html == '') {
											html += "<button type='button' class='prd' id=' ' onclick='befAddCompCard(this)'>";
											html += "	<div class='box'>";
											html += "		<div class='prd-img'><img src='" + data.products[i].imgPath1 + "' alt='" + data.products[i].goodsNm + "'></div>";
											if (goodsAdvCmntStYn == 'Y') {
												html += "		<div class='prd-review'>";
												html += "			<span class='link-review' title='상품평점'>" + data.products[i].reviewGrade + " (" + data.products[i].reviewCount + ")</span>";
												html += "		</div>";
											} else {
												html += "		<div class='prd-review'>";
												html += "			<span class='' title='상품평점'>&nbsp;</span>";
												html += "		</div>";
											}
										}
										html += "		<div class='prd-info'>";
										html += "			<div class='name-box'>";
										html += "				<strong class='name'>" + data.products[i].goodsNm + "</strong>";
										html += "			</div>";
										html += "			<span class='serial'>" + data.products[i].mdlCode + "</span>";
										html += _htmlProductPrice(data.products[i]);
										html += "		</div>";
										html += "	</div>";
										html += "	<input type='hidden' name='PrdSelect' value='" + data.products[i].goodsId + "' data-goods-id='" + data.products[i].goodsId + "' data-mdl-code='" + data.products[i].mdlCode + "'>";
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
					function btnReset(self) {
						console.log("초기화 버튼(필요)");
						toastCtl(this);

						var compDispClsfEnNm = '';
						if ($('.btn-reset').val() == '') { $('#compareBtn').val($('.prd').attr('value')); $('.btn-reset').val($('.prd').attr('value')); }
						compDispClsfEnNm = $('.btn-reset').val();

						if ('1' == '1') {
							compareDataStorage = '/sec/' + 'compare/' + compDispClsfEnNm;
							compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorage));
							localStorage.setItem(compareDataStorage, JSON.stringify(compareData));

							/* goodsId 스토리지 데이터 삭제 */
							Object.keys(goodsIdData).forEach(function (v) {
								if (compareData.hasOwnProperty(v)) {
									delete goodsIdData[v]; localStorage.setItem(goodsIdDataStorage, JSON.stringify(goodsIdData));
								}
							});

							compareData = {}; localStorage.setItem(compareDataStorage, JSON.stringify(compareData));
							delete categoryData[compDispClsfEnNm]; localStorage.setItem(categoryDataStorage, JSON.stringify(categoryData));
							lastCompData = {}; localStorage.setItem(lastCompDataStorage, JSON.stringify(lastCompData));

							/* 남은 비교하기 제품 없는 경우 */
							if (Object.keys(goodsIdData).length == 0) {
								$(".pfpd-compare").css("display", "none");
							} else {/* 남은 비교하기 제품 있는 경우 */
								compareDataStorage = '/sec/' + 'compare/' + Object.values(goodsIdData)[0];
								compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorage));
								localStorage.setItem(compareDataStorage, JSON.stringify(compareData));

								$('.btn-reset').val(Object.values(goodsIdData)[0]);
								$('#compareBtn').val(Object.values(goodsIdData)[0]);
								setCompInfoStrg(Object.values(goodsIdData)[0], true, false);
								addSelectedBtn(Object.values(compareData).length);
							}

						} else if ('1' == '2') {
							compareDataStorageFNET = '/sec/' + 'fnet/compare/' + compDispClsfEnNm;
							compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageFNET));
							localStorage.setItem(compareDataStorageFNET, JSON.stringify(compareDataFNET));

							/* goodsId storage 데이터 삭제 */
							Object.keys(goodsIdDataFNET).forEach(function (v) {
								if (compareDataFNET.hasOwnProperty(v)) {
									delete goodsIdDataFNET[v]; localStorage.setItem(goodsIdDataStorageFNET, JSON.stringify(goodsIdDataFNET));
								}
							});

							compareDataFNET = {}; localStorage.setItem(compareDataStorageFNET, JSON.stringify(compareDataFNET));
							delete categoryDataFNET[compDispClsfEnNm]; localStorage.setItem(categoryDataStorageFNET, JSON.stringify(categoryDataFNET));
							lastCompDataFNET = {}; localStorage.setItem(lastCompDataStorageFNET, JSON.stringify(lastCompDataFNET));

							/* 남은 비교하기 제품 없는 경우 */
							if (Object.keys(goodsIdDataFNET).length == 0) {
								$(".pfpd-compare").css("display", "none");
							} else {/* 남은 비교하기 제품 있는 경우 */
								compareDataStorageFNET = '/sec/' + 'fnet/compare/' + Object.values(goodsIdDataFNET)[0];
								compareDataFNET = JSON.parse(localStorage.getItem(compareDataStorageFNET)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageFNET));
								localStorage.setItem(compareDataStorageFNET, JSON.stringify(compareDataFNET));

								$('.btn-reset').val(Object.values(goodsIdDataFNET)[0]);
								$('#compareBtn').val(Object.values(goodsIdDataFNET)[0]);
								setCompInfoStrg(Object.values(goodsIdDataFNET)[0], true, false);
								addSelectedBtn(Object.values(compareDataFNET).length);
							}
						} else if ('1' == '3') {
							compareDataStorageFNET_SOL = '/sec/' + 'fnet_sol/compare/' + compDispClsfEnNm;
							compareDataFNET_SOL = JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL));
							localStorage.setItem(compareDataStorageFNET_SOL, JSON.stringify(compareDataFNET_SOL));

							/* goodsId storage 데이터 삭제 */
							Object.keys(goodsIdDataFNET_SOL).forEach(function (v) {
								if (compareDataFNET_SOL.hasOwnProperty(v)) {
									delete goodsIdDataFNET_SOL[v]; localStorage.setItem(goodsIdDataStorageFNET_SOL, JSON.stringify(goodsIdDataFNET_SOL));
								}
							});

							compareDataFNET_SOL = {}; localStorage.setItem(compareDataStorageFNET_SOL, JSON.stringify(compareDataFNET_SOL));
							delete categoryDataFNET_SOL[compDispClsfEnNm]; localStorage.setItem(categoryDataStorageFNET_SOL, JSON.stringify(categoryDataFNET_SOL));
							lastCompDataFNET_SOL = {}; localStorage.setItem(lastCompDataStorageFNET_SOL, JSON.stringify(lastCompDataFNET_SOL));

							/* 남은 비교하기 제품 없는 경우 */
							if (Object.keys(goodsIdDataFNET_SOL).length == 0) {
								$(".pfpd-compare").css("display", "none");
							} else {/* 남은 비교하기 제품 있는 경우 */
								compareDataStorageFNET_SOL = '/sec/' + 'fnet_sol/compare/' + Object.values(goodsIdDataFNET_SOL)[0];
								compareDataFNET_SOL = JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageFNET_SOL));
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
					function openCloseArrow() {
						console.log("비교하기 카드(펼치기 숨기기)(필요)");
						if ($('.pfpd-compare').hasClass("only-pdCompare")) { goodsMain.fnShowOrderMenu($('.itm-total-bottom', goodsMain.vGoodsWrapId)); }
						toastCtl(this);
					}

					/* 제품선택 팝업 열기(필요) */
					function openCompareAddPop(self) {
						console.log("비교하기 팝업창 열기(필요)");

						var compDispClsfEnNm = '';
						if ($('#compareBtn').val() == '') { $('#compareBtn').val($('.prd').attr('value')); $('.btn-reset').val($('.prd').attr('value')); }
						compDispClsfEnNm = $('#compareBtn').val();

						selectProductList(compDispClsfEnNm);
					}

					/* 비교하기 레이아웃 초기 세팅(필요) */
					function sliderCompareBox() {
						console.log("비교하기 레이아웃 초기 세팅(필요)");
						var compareDataStorageBef, compareDataBef, compareDataBefLen;
						var goodsIdDataBefLen;
						var categoryDataBefLen;
						var lastCompDataBefLen;

						if ('1' == '1') {
							compareDataStorageBef = '/sec/' + 'compare/' + $("#compDispClsfEnNm").val();
							compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageBef));
							compareDataBefLen = Object.keys(compareDataBef).length;

							goodsIdDataBefLen = Object.keys(goodsIdData).length;
							categoryDataBefLen = Object.keys(categoryData).length;
							lastCompDataBefLen = Object.keys(lastCompData).length;
						} else if ('1' == '2') {
							compareDataStorageBef = '/sec/' + 'fnet/compare/' + $("#compDispClsfEnNm").val();
							compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageBef));
							compareDataBefLen = Object.keys(compareDataBef).length;

							goodsIdDataBefLen = Object.keys(goodsIdDataFNET).length;
							categoryDataBefLen = Object.keys(categoryDataFNET).length;
							lastCompDataBefLen = Object.keys(lastCompDataFNET).length;
						} else if ('1' == '3') {
							compareDataStorageBef = '/sec/' + 'fnet_sol/compare/' + $("#compDispClsfEnNm").val();
							compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageBef));
							compareDataBefLen = Object.keys(compareDataBef).length;

							goodsIdDataBefLen = Object.keys(goodsIdDataFNET_SOL).length;
							categoryDataBefLen = Object.keys(categoryDataFNET_SOL).length;
							lastCompDataBefLen = Object.keys(lastCompDataFNET_SOL).length;
						}

						/* 남은 비교하기 데이터가 하나도 없는 경우 slider 숨김 처리 */
						if (goodsIdDataBefLen == 0 && categoryDataBefLen == 0) {
							$(".pfpd-compare").css("display", "none");
							return false;
						} else { $(".pfpd-compare").css("display", ""); }

						/* 선택된 카테고리의 비교하기 상품이 있는 경우 */
						if (compareDataBefLen > 0) {
							setCompInfoStrg($("#compDispClsfEnNm").val(), true, false);
							addSelectedBtn(compareDataBefLen);
						}

						categoryBtn();
						disabledCompareButton();

						/* 선택된 카테고리의 비교하기 상품이 없는 경우(or pd,pf가 아닌 경우) */
						if (compareDataBefLen == 0) {

							/* 마지막으로 담은 상품이 있고 goodsId 정보 있는 경우 */
							if (lastCompDataBefLen != 0 && goodsIdDataBefLen != 0) {
								if ('1' == '1') {
									compareDataStorageBef = '/sec/' + 'compare/' + Object.values(lastCompData)[0];
									$('.btn-reset').val(Object.values(lastCompData)[0]);
									$('#compareBtn').val(Object.values(lastCompData)[0]);
									setCompInfoStrg(Object.values(lastCompData)[0], true, false);
								} else if ('1' == '2') {
									compareDataStorageBef = '/sec/' + 'fnet/compare/' + Object.values(lastCompDataFNET)[0];
									$('.btn-reset').val(Object.values(lastCompDataFNET)[0]);
									$('#compareBtn').val(Object.values(lastCompDataFNET)[0]);
									setCompInfoStrg(Object.values(lastCompDataFNET)[0], true, false);
								} else if ('1' == '3') {
									compareDataStorageBef = '/sec/' + 'fnet_sol/compare/' + Object.values(lastCompDataFNET_SOL)[0];
									$('.btn-reset').val(Object.values(lastCompDataFNET_SOL)[0]);
									$('#compareBtn').val(Object.values(lastCompDataFNET_SOL)[0]);
									setCompInfoStrg(Object.values(lastCompDataFNET_SOL)[0], true, false);
								}
								compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageBef));
								addSelectedBtn(Object.values(compareDataBef).length);

							} else if (goodsIdDataBefLen != 0) {/* goodsId 정보 있는 경우 */
								if ('1' == '1') {
									compareDataStorageBef = '/sec/' + 'compare/' + Object.values(goodsIdData)[0];
									$('.btn-reset').val(Object.values(goodsIdData)[0]);
									$('#compareBtn').val(Object.values(goodsIdData)[0]);
									setCompInfoStrg(Object.values(goodsIdData)[0], true, false);
								} else if ('1' == '2') {
									compareDataStorageBef = '/sec/' + 'fnet/compare/' + Object.values(goodsIdDataFNET)[0];
									$('.btn-reset').val(Object.values(goodsIdDataFNET)[0]);
									$('#compareBtn').val(Object.values(goodsIdDataFNET)[0]);
									setCompInfoStrg(Object.values(goodsIdDataFNET)[0], true, false);
								} else if ('1' == '3') {
									compareDataStorageBef = '/sec/' + 'fnet_sol/compare/' + Object.values(goodsIdDataFNET_SOL)[0];
									$('.btn-reset').val(Object.values(goodsIdDataFNET_SOL)[0]);
									$('#compareBtn').val(Object.values(goodsIdDataFNET_SOL)[0]);
									setCompInfoStrg(Object.values(goodsIdDataFNET_SOL)[0], true, false);
								}
								compareDataBef = JSON.parse(localStorage.getItem(compareDataStorageBef)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorageBef));
								addSelectedBtn(Object.values(compareDataBef).length);
							}
						}

						/* 모바일 pd페이지 접속시 class추가 */
						var filter = "win16|win32|win64|mac|macintel";
						if ($("#pdYn").val() == 'Y') {
							if ((filter.indexOf(navigator.platform.toLowerCase()) < 0)) { /* mo */ $(".pfpd-compare").addClass("only-pdCompare"); $('.itm-total-bottom').addClass("hasCompare");
							} else { /* pc */ $('.pfpd-compare').css('bottom', 0); }
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
						if (prd.priceStr == null || price[2] == '0' || (prd.saleStatCd != '12' && prd.saleStatCd != '13' && prd.saleStatCd != '14')) { return ''; }

						var stGbCd = '10';
						var isLogin; if (typeof isLoginCheck !== "undefined") { isLogin = isLoginCheck; }
						var contextPath = "/sec/";
						var stId = '1';

						var titPrice1 = '기준가'; var titPrice2 = '회원가'; var titPrice3 = "혜택가"; var titPrice4 = "아울렛 특가";
						var titPrice5 = "쿠폰 적용 예상가"; var titPrice6 = "앱 쿠폰 적용 시"; var titPrice7 = "청구할인 예상가";
						var titPrice8 = '출고가'; var titPrice9 = '기준판매가'; var titPrice10 = '특별판매가'; var titPrice11 = '회사 지원금';
						var titPrice12 = '임직원가'; var titPrice13 = '임직원가';

						var html = '';

						if (stGbCd === '10') {/* B2C */

			/* 기준가 *//* if ((price[1] === '00' && price[2] !== price[3]) || price[1] !== '00') { html += '<span class="price">'+titPrice1+'<em class="num">' + fnComma(price[2]) + ' 원</em></span><br>';} */
			/* 회원가 *//* if ((price[1] !== '00' || price[1] === '00')) { html += '<span class="price">'+titPrice2+'<em class="num">' + fnComma(price[3]) + ' 원</em></span><br>';} */
			/* 혜택가 */if (price[1] !== '00' && prd.outletFlgYn !== 'Y') { html += '<span class="price">' + titPrice3 + '<em class="num">' + fnComma(price[4]) + ' 원</em></span><br>'; }
			/* 아울렛 특가 */else if (price[1] !== '00' && prd.outletFlgYn === 'Y') { html += '<span class="price">' + titPrice4 + '<em class="num">' + fnComma(price[4]) + ' 원</em></span><br>'; }

							/* 쿠폰 적용 예상가 *//* if(prd.cpUseYn === "Y"){
								html += '<span class="price">'+titPrice5+'<em class="num">' + fnComma(price[price.length-1]) + ' 원</em></span><br>';
								if('false' === 'false' ){//앱 쿠폰 적용 시
									html += '            <span class="price">'+titPrice6+'<span class="price">50,000원 추가 할인</span></span><br>';
								}
							} */
						} else if (stId === '2') {/* 패넷 */
			/* 출고가 *//* html += '<span class="price">'+titPrice8+'<em class="num">' + fnComma(price[2]) + ' 원</em></span><br>'; */
			/* 기준판매가 *//* html += '<span class="price">'+titPrice9+'<em class="num">' + fnComma(price[3]) + ' 원</em></span><br>'; */
			/* 특별판매가 */if (price[4] !== '' && price[3] !== price[4]) { html += '<span class="price">' + titPrice10 + '<em class="num">' + fnComma(price[4]) + ' 원</em></span><br>'; }
							/* 회사 지원금 *//* if(stGbCd === '30'){ html += '<span class="price">'+titPrice11+'<em class="num">' + fnComma(price[5]) + ' 원</em></span><br>'; } */
							/* 임직원가 *//* html += '<span class="price">'+titPrice12+'<em class="num">' + fnComma(price[6]) + ' 원</em></span><br>'; */
						} else if (stId === '3') {/* 패넷_디플 */
			/* 출고가 *//* html += '<span class="price">'+titPrice8+'<em class="num">' + fnComma(price[2]) + ' 원</em></span><br>'; */
			/* 기준판매가 *//* html += '<span class="price">'+titPrice9+'<em class="num">' + fnComma(price[3]) + ' 원</em></span><br>'; */
			/* 특별판매가 */if (price[4] !== '' && price[3] !== price[4]) { html += '<span class="price">' + titPrice10 + '<em class="num">' + fnComma(price[4]) + ' 원</em></span><br>'; }
							/* 회사 지원금 *//* if(stGbCd === '30'){ html += '<span class="price">'+titPrice11+'<em class="num">' + fnComma(price[5]) + ' 원</em></span><br>'; } */
							/* 임직원가 *//* html += '<span class="price">'+titPrice13+'<em class="num">' + fnComma(price[6]) + ' 원</em></span><br>'; */
						}

						if (html === '') {
							html += '<span class="price"> <em class="num"> </em></span>';
						}

						return html;
					}

					/* 제품 선택 팝업에서 제품 선택 시(필요) */
					function befAddCompCard(prd) {
						console.log("제품 선택 팝업에서 제품 선택 시(필요)");
						if ($(prd).hasClass("active")) {
							$("#chooseComparePrd").find(".prd.active").removeClass("active");
							$(prd).removeClass("active");
							$("#chooseComparePrd").find("button.btn.btn-d").removeClass("btn-type2");
							$("#chooseComparePrd").find("button.btn.btn-d").addClass("btn-type1");
						} else {
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
					function setCompInfoStrg(compDispClsfEnNm, compCard, compPopup) {
						console.log("비교하기 팝업 정보 세팅 스토리지(차이점 비활성화)(필요)");
						var goodsAdvCmntStYn = 'Y';//$('#goodsAdvCmntStYn').val()

						var resultDate = false;
						if (Object.keys(expireDateData).length != 0) {
							var options = {
								url: "/sec/xhr/goods/getCompareExpireDate"
								, type: 'POST'
								, async: false
								, done: function (data) {
									// Date type
									var compExpDt = new Date(data.compExpDt);
									if (expireDateData['date'] <= compExpDt) {
										resultDate = true;
									}

								}
							}
							ajax.call(options);
						}

						// expireDateData에 시간 셋팅X || 비교하기 만료일자 지나면 기존 스토리지 데이터 삭제 
						if (Object.keys(expireDateData).length == 0 || resultDate == true) {
							for (var i = 0; i < localStorage.length; i++) {
								//비교하기 로컬 스토리지 삭제
								if (localStorage.key(i).indexOf('compare') > -1) {
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

							$(".pfpd-compare").css("display", "none");
							$('.link-compare-i').removeClass('disabled');

						}

						var compareDataStorage; var compareData;
						if ('1' == '1') {
							compareDataStorage = '/sec/' + 'compare/' + compDispClsfEnNm;
						} else if ('1' == '2') {
							compareDataStorage = '/sec/' + 'fnet/compare/' + compDispClsfEnNm;
						} else if ('1' == '3') { compareDataStorage = '/sec/' + 'fnet_sol/compare/' + compDispClsfEnNm; }
						compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorage));

						if (compCard) {/* 비교하기 카드 - s */
							if (Object.keys(compareData).length > 0) {
								$('#pfpdSlideCompare').empty();

								if (Object.keys(compareData).length >= 2 && $('.pfpd-compare').hasClass('if2item')) {
									$('.pfpd-compare').removeClass('if2item');
								} else if (Object.keys(compareData).length < 2 && !$('.pfpd-compare').hasClass('if2item')) { $('.pfpd-compare').addClass('if2item'); }

								var cnt = 0;
								Object.keys(compareData).forEach(function (v, i) {
									compareData[v]["pfGoods"]["goodsAdvCmntStYn"] = goodsAdvCmntStYn;
									var tempPriceNm = compareData[v]["summary"]["priceNm"];
									var tempStId = compareData[v]["pfGoods"]["stId"];
									if (tempStId == '3' && tempPriceNm.replaceAll(' ', '') == '임직원부담금') {
										compareData[v]["summary"]["priceNm"] = '임직원가';
									}

									$('#pfpdSlideCompare').append($('#compareSummaryTempl').render(compareData[v]));
									cnt++;
								});

								for (var i = cnt; i < 4; i++) {/* 비교하기 카드 빈카드 세팅 */
									$('#pfpdSlideCompare').append($('#compareSummaryEmptyTempl').render());
								}
							}
							$('#pfpdSlideCompare').removeClass();
						}/* 비교하기 카드 - e */

						if (compPopup) {/* 비교하기 팝업 - s*/
							var cnt = 0;
							var totalMShipPtShowYn = false;
							if (Object.keys(compareData).length > 0) {
								$('.part1').slick('unslick'); $('.part2').slick('unslick');
								$('.part1').empty(); $('.part2').empty();

								Object.keys(compareData).forEach(function (v, i) {
									/* .part1 */
									var bspkParam = '';/* 패넷 */
									if (compareData[v]["pfGoods"]["goodsAddTpCd"] === '50') {
										bspkParam = '&pannelYn=Y';/* 패넷 */
									} else { bspkParam = '&selModel=' + compareData[v]["pfGoods"]["mdlCode"]; }/* 패넷 */
									compareData[v]["pfGoods"]["bspkParam"] = bspkParam;/* 패넷 */
									compareData[v]["pfGoods"]["stCd"] = 'b2c';/* 패넷 */
									compareData[v]["pfGoods"]["secApp"] = 'false';
									compareData[v]["pfGoods"]["stGbCd"] = '10';
									if (typeof isLoginCheck !== "undefined") { compareData[v]["pfGoods"]["isLogin"] = isLoginCheck;/* B2C,패넷 */ }
									compareData[v]["pfGoods"]["stContextPath"] = "/sec/";
									compareData[v]["pfGoods"]["stGrp"] = "b2c";
									compareData[v]["pfGoods"]["goodsAdvCmntStYn"] = goodsAdvCmntStYn;

									//적립포인트 - s 
									var mShipPtShowYn = false;
									if (!mShipPtShowYn) {
										var stId = compareData[v]["pfGoods"]["stId"];
										if (stId == '1') {
											var mdlCode = compareData[v]["pfGoods"]["mdlCode"];
											var envmtGbCd = 'prd';
											var environmentGbLocal = 'local';
											var environmentGbDev = 'dev';
											var environmentGbStg = 'stg';
											var stGbCd = '10';
											var membershipUseExcptYn = compareData[v]["pfGoods"]["membershipUseExcptYn"];
											var carePlusType = compareData[v]["pfGoods"]["carePlusType"];
											var thirdPartyYn = compareData[v]["pfGoods"]["thirdPartyYn"];
											var isLogin = false; if (typeof isLoginCheck !== "undefined") { isLogin = isLoginCheck;/* B2C,패넷 */ }
											var membershipYn = compareData[v]["pfGoods"]["membershipYn"];

											mShipPtShowYn = mShipPtShowYnB2C(stId, mdlCode, envmtGbCd, environmentGbLocal, environmentGbDev, environmentGbStg, stGbCd, membershipUseExcptYn, carePlusType, thirdPartyYn, isLogin, membershipYn);//B2C

										} else if (stId == '2' || stId == '3') {
											var stGbCd = '10';
											var stCd = 'b2c';/* 패넷 */
											var isLogin = false; if (typeof isLoginCheck !== "undefined") { isLogin = isLoginCheck;/* B2C,패넷 */ }
											var membershipYn = compareData[v]["pfGoods"]["membershipYn"];

											mShipPtShowYn = mShipPtShowYnFNET(stId, stGbCd, stCd, isLogin, membershipYn);
										}
									}
									if (mShipPtShowYn) {
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
										dataGoodsCompareSpec.sort(function (a, b) { var a = a.dispNm.toString(); var b = b.dispNm.toString(); return a.localeCompare(b); });

										dataGoodsCompareSpec.forEach(function (v, j) {

											/* 소분류 문자열 정렬(한, 영, 순자 순서) 내림차순 */
											var dataGoodsCompareSpecDepth2 = v.depth2;
											dataGoodsCompareSpecDepth2.sort(function (a, b) { var a = a.DISP_NM.toString(); var b = b.DISP_NM.toString(); return b.localeCompare(a); });

											v['specIdx'] = j;
											$('.part2').find('.spec').eq(i).find('.box-spec-detail').append($('#compareItemSpecDetailTempl').render(v));
										});
									}
									cnt++;
								});
								for (var i = cnt; i < 4; i++) {/* 비교하기 팝업 빈카드 세팅 */
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
								if ('1' == '1') {
								} else if ('1' == '2') {
									$('.prdBox .prd.prdDetail').addClass('cnt-4-li_list-price');
									$('.prdBox .prd .box.compare-emptyBox').parent().addClass('cnt-4-li_list-price');
								} else if ('1' == '3') {
									$('.prdBox .prd.prdDetail').addClass('cnt-5-li_list-price');
									$('.prdBox .prd .box.compare-emptyBox').parent().addClass('cnt-5-li_list-price');
								}
								if (totalMShipPtShowYn) {
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
					function setCompInfoDb() {
						console.log("비교하기 팝업 정보 세팅 DB(차이점 활성화)(필요)");
						var goodsAdvCmntStYn = 'Y';//$('#goodsAdvCmntStYn').val()

						var compDispClsfEnNm = '';
						if ($('#compareBtn').val() == '') { $('#compareBtn').val($('.prd').attr('value')); $('.btn-reset').val($('.prd').attr('value')); }
						compDispClsfEnNm = $('#compareBtn').val();

						var compareDataStorage; var compareData;
						if ('1' == '1') {
							compareDataStorage = '/sec/' + 'compare/' + compDispClsfEnNm;
						} else if ('1' == '2') {
							compareDataStorage = '/sec/' + 'fnet/compare/' + compDispClsfEnNm;
						} else if ('1' == '3') { compareDataStorage = '/sec/' + 'fnet_sol/compare/' + compDispClsfEnNm; }
						compareData = JSON.parse(localStorage.getItem(compareDataStorage)) == null ? {} : JSON.parse(localStorage.getItem(compareDataStorage));

						var cnt = 0;
						var totalMShipPtShowYn = false;
						if (Object.keys(compareData).length > 0) {
							/* 비교하기 팝업 제품 카드 */
							$('.part1').slick('unslick'); $('.part2').slick('unslick');
							$('.part1').empty(); $('.part2').empty();

							Object.keys(compareData).forEach(function (v, i) {
								/* .part1 */
								var bspkParam = '';/* 패넷 */
								if (compareData[v]["pfGoods"]["goodsAddTpCd"] === '50') {
									bspkParam = '&pannelYn=Y';/* 패넷 */
								} else { bspkParam = '&selModel=' + compareData[v]["pfGoods"]["mdlCode"]; }/* 패넷 */
								compareData[v]["pfGoods"]["bspkParam"] = bspkParam;/* 패넷 */
								compareData[v]["pfGoods"]["stCd"] = 'b2c';/* 패넷 */
								compareData[v]["pfGoods"]["secApp"] = 'false';
								compareData[v]["pfGoods"]["stGbCd"] = '10';
								if (typeof isLoginCheck !== "undefined") { compareData[v]["pfGoods"]["isLogin"] = isLoginCheck;/* B2C,패넷 */ }
								compareData[v]["pfGoods"]["stContextPath"] = "/sec/";
								compareData[v]["pfGoods"]["stGrp"] = "b2c";
								compareData[v]["pfGoods"]["goodsAdvCmntStYn"] = goodsAdvCmntStYn;

								//적립포인트 - s 
								var mShipPtShowYn = false;
								if (!mShipPtShowYn) {
									var stId = compareData[v]["pfGoods"]["stId"];
									if (stId == '1') {
										var mdlCode = compareData[v]["pfGoods"]["mdlCode"];
										var envmtGbCd = 'prd';
										var environmentGbLocal = 'local';
										var environmentGbDev = 'dev';
										var environmentGbStg = 'stg';
										var stGbCd = '10';
										var membershipUseExcptYn = compareData[v]["pfGoods"]["membershipUseExcptYn"];
										var carePlusType = compareData[v]["pfGoods"]["carePlusType"];
										var thirdPartyYn = compareData[v]["pfGoods"]["thirdPartyYn"];
										var isLogin = false; if (typeof isLoginCheck !== "undefined") { isLogin = isLoginCheck;/* B2C,패넷 */ }
										var membershipYn = compareData[v]["pfGoods"]["membershipYn"];

										mShipPtShowYn = mShipPtShowYnB2C(stId, mdlCode, envmtGbCd, environmentGbLocal, environmentGbDev, environmentGbStg, stGbCd, membershipUseExcptYn, carePlusType, thirdPartyYn, isLogin, membershipYn);//B2C

									} else if (stId == '2' || stId == '3') {
										var stGbCd = '10';
										var stCd = 'b2c';/* 패넷 */
										var isLogin = false; if (typeof isLoginCheck !== "undefined") { isLogin = isLoginCheck;/* B2C,패넷 */ }
										var membershipYn = compareData[v]["pfGoods"]["membershipYn"];

										mShipPtShowYn = mShipPtShowYnFNET(stId, stGbCd, stCd, isLogin, membershipYn);
									}
								}
								if (mShipPtShowYn) {
									totalMShipPtShowYn = true;
								}
								compareData[v]["pfGoods"]["mShipPtShowYn"] = mShipPtShowYn;
								//적립포인트 - e

								$('.part1').append($('#compareItemTempl').render(compareData[v]));

								cnt++;
							});
							for (var i = cnt; i < 4; i++) {/* 비교하기 팝업 빈카드 세팅 */
								$('.part1').append($('#compareItemEmptyTempl').render());
							}

							/* 비교하기 팝업 상세 스펙 */
							var goodsIds = new Array();
							var compareDataLen = Object.keys(compareData).length;
							ajax.call({
								data: { goodsIds: Object.keys(compareData) }
								, async: false
								, url: "/sec/xhr/pf/compGoodsSpecList"
								, type: 'POST'
								, dataType: 'json'
								, done: function (data) {
									$('.part2').empty();
									var cnt = 0;
									var productsSpec = data.productsSpec;
									var pSpecLen = data.productsSpec.length;
									if (data.productsSpec.length > 0) {
										for (var i = 0; i < compareDataLen; i++) {
											var html = '';
											var dispNm1 = '';
											var tmpDispNm1 = '';
											var setCount = 0;
											var setDepth1Cnt = 0;
											dispNm1 = productsSpec[0].dispNm1;
											html += '<div class="prdBox">';
											html += '	<div class="spec">';
											html += '		<div class="box-spec-detail">';
											html += '			<div class="set specAnchor' + setDepth1Cnt + '">';
											html += '				<h3>' + dispNm1 + '</h3>';
											for (var j = 0; j < pSpecLen; j++) {
												tmpDispNm1 = productsSpec[j].dispNm1;
												if (tmpDispNm1 == dispNm1) {
													html += '			<dl>';
													html += '				<dt>' + productsSpec[j].dispNm + '</dt>';
													if (i == 0) {
														html += '				<dd><span>' + productsSpec[j].specValue1 + '</span></dd>';
													} else if (i == 1) {
														html += '				<dd><span>' + productsSpec[j].specValue2 + '</span></dd>';
													} else if (i == 2) {
														html += '				<dd><span>' + productsSpec[j].specValue3 + '</span></dd>';
													} else if (i == 3) {
														html += '				<dd><span>' + productsSpec[j].specValue4 + '</span></dd>';
													}
													html += '			</dl>';
													setCount++;
												} else {
													setDepth1Cnt++;
													dispNm1 = productsSpec[setCount].dispNm1;
													j--;
													html += '		</div>';
													html += '		<div class="set specAnchor' + setDepth1Cnt + '">';
													html += '			<h3>' + dispNm1 + '</h3>';
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
									for (var i = cnt; i < 4; i++) {
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
							if ('1' == '1') {
							} else if ('1' == '2') {
								$('.prdBox .prd.prdDetail').addClass('cnt-4-li_list-price');
								$('.prdBox .prd .box.compare-emptyBox').parent().addClass('cnt-4-li_list-price');
							} else if ('1' == '3') {
								$('.prdBox .prd.prdDetail').addClass('cnt-5-li_list-price');
								$('.prdBox .prd .box.compare-emptyBox').parent().addClass('cnt-5-li_list-price');
							}
							if (totalMShipPtShowYn) {
								$('.prdBox .prd.prdDetail').addClass('addpoint');
								$('.prdBox .prd .box.compare-emptyBox').parent().addClass('addpoint');
							}

							/* 비교하기 팝업 슬릭 적용 */
							comparePopupSlickpart1($('.part1'));
							comparePopupSlickpart2($('.part2'));
						}
					}

					/* 비교하기 팝업 정보 세팅 스토리지 이후1(차이점 비활성화)(필요) */
					function afterSetCompInfoStrg1() {
						console.log("비교하기 팝업 정보 세팅 스토리지 이후1(차이점 비활성화)(필요)");
						//1. 팝업 정보 비교(동일한 정보로 세팅)
						var part1Len = $(".part1 .prdBox .prd.prdDetail").length;//part1 길이
						if (part1Len > 1) {

							//왼쪽 -> 오른쪽
							for (var i = 0; i < part1Len; i++) {

								var part2SetLen1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').length;//비교기준 스펙 대분류 갯수
								for (var j = 0; j < part2SetLen1; j++) {
									var part2SetNm1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('h3').text();//part2 대분류 set명
									var copyPart2Set1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).clone();//part2 대분류 set div 복사
									copyPart2Set1.find('span').text('-');
									var part2SetDlLen1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').length;//비교기준 스펙 대분류의 소분류 갯수

									for (var k = (i + 1); k < part1Len; k++) {//다른 스펙 비교
										var isPart2SetNm = '';
										if (typeof $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function () { return $.trim($(this).text().trim()) === part2SetNm1; })[0] != "undefined") {
											isPart2SetNm = $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function () { return $.trim($(this).text().trim()) === part2SetNm1; })[0].innerHTML.trim();//다른 part2 대분류 set 찾기
										}
										if (part2SetNm1 != isPart2SetNm) {//동일한 대분류 없으면, 세팅
											if (($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').length == 0) && (j == 0)) {
												var html = '';
												html += '<div class="set dummy" id=""></div>';
												$('.part2').find('.prdBox').eq(k).find('.spec').find('.box-spec-detail').append(html);
											}

											if ($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').eq(j).length == 1) {
												copyPart2Set1.insertBefore($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').eq(j));
											} else {
												copyPart2Set1.insertAfter($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').eq(j - 1));
											}

											$('.part2').find('.prdBox').find('.spec').find('.set.dummy').remove();
										} else {//동일한 대분류 있으면, 소분류 비교
											for (var l = 0; l < part2SetDlLen1; l++) {
												var part2SetDtNm1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').eq(l).find('dt').text().trim();
												var copyPart2SetDl1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').eq(l).clone();//part2 대분류 set div 복사
												copyPart2SetDl1.find('span').text('-');
												var isPart2SetDtNm = '';
												if (typeof $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function () { return $(this).text().trim() === part2SetNm1; }).parent().find('dt').filter(function () { return $(this).text().trim() === part2SetDtNm1; })[0] != "undefined") {
													isPart2SetDtNm = $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function () { return $(this).text().trim() === part2SetNm1; }).parent().find('dt').filter(function () { return $(this).text().trim() === part2SetDtNm1; })[0].innerHTML.trim();
												}
												if (part2SetDtNm1 != isPart2SetDtNm) {//동일한 소분류 없으면, 세팅
													if ($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function () { return $(this).text().trim() === part2SetNm1; }).parent().find('dl').eq(l).length == 1) {
														copyPart2SetDl1.insertBefore($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function () { return $(this).text().trim() === part2SetNm1; }).parent().find('dl').eq(l));
													} else {
														copyPart2SetDl1.insertAfter($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function () { return $(this).text().trim() === part2SetNm1; }).parent().find('dl').eq(l - 1));
													}
												}
											}
										}
									}
								}
							}

							//오른쪽 -> 왼쪽
							for (var i = (part1Len - 1); i >= 0; i--) {

								var part2SetLen1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').length;//비교기준 스펙 대분류 갯수
								for (var j = 0; j < part2SetLen1; j++) {
									var part2SetNm1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('h3').text().trim();//part2 대분류 set명
									var copyPart2Set1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).clone();//part2 대분류 set div 복사
									copyPart2Set1.find('span').text('-');
									var part2SetDlLen1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').length;//비교기준 스펙 대분류의 소분류 갯수

									for (var k = (part1Len - 2); k >= 0; k--) {//다른 스펙 비교
										var isPart2SetNm = '';
										if (typeof $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function () { return $.trim($(this).text().trim()) === part2SetNm1; })[0] != "undefined") {
											isPart2SetNm = $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function () { return $.trim($(this).text().trim()) === part2SetNm1; })[0].innerHTML.trim();//다른 part2 대분류 set 찾기
										}
										if (part2SetNm1 != isPart2SetNm) {//동일한 대분류 없으면, 세팅
											if (($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').length == 0) && (j == 0)) {
												var html = '';
												html += '<div class="set dummy" id=""></div>';
												$('.part2').find('.prdBox').eq(k).find('.spec').find('.box-spec-detail').append(html);
											}

											if ($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').eq(j).length == 1) {
												copyPart2Set1.insertBefore($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').eq(j));
											} else {
												copyPart2Set1.insertAfter($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').eq(j - 1));
											}

											$('.part2').find('.prdBox').find('.spec').find('.set.dummy').remove();
										} else {//동일한 대분류 있으면, 소분류 비교
											for (var l = 0; l < part2SetDlLen1; l++) {
												var part2SetDtNm1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').eq(l).find('dt').text().trim();
												var copyPart2SetDl1 = $('.part2').find('.prdBox').eq(i).find('.spec').find('.set').eq(j).find('dl').eq(l).clone();//part2 대분류 set div 복사
												copyPart2SetDl1.find('span').text('-');
												var isPart2SetDtNm = '';
												if (typeof $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function () { return $(this).text().trim() === part2SetNm1; }).parent().find('dt').filter(function () { return $(this).text().trim() === part2SetDtNm1; })[0] != "undefined") {
													isPart2SetDtNm = $('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function () { return $(this).text().trim() === part2SetNm1; }).parent().find('dt').filter(function () { return $(this).text().trim() === part2SetDtNm1; })[0].innerHTML.trim();
												}
												if (part2SetDtNm1 != isPart2SetDtNm) {//동일한 소분류 없으면, 세팅
													if ($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function () { return $(this).text().trim() === part2SetNm1; }).parent().find('dl').eq(l).length == 1) {
														copyPart2SetDl1.insertBefore($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function () { return $(this).text().trim() === part2SetNm1; }).parent().find('dl').eq(l));
													} else {
														copyPart2SetDl1.insertAfter($('.part2').find('.prdBox').eq(k).find('.spec').find('.set').find('h3').filter(function () { return $(this).text().trim() === part2SetNm1; }).parent().find('dl').eq(l - 1));
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
					function afterSetCompInfoStrg2() {
						console.log("비교하기 팝업 정보 세팅 스토리지 이후2(차이점 비활성화)(필요)");
						var part1Len = $(".part1 .prdBox .prd.prdDetail").length;/* part1 길이 */
						if (part1Len > 1) {
							/* 비교 상품 box-spec-detail set 의 모든 dl span 값이 모두 - 이면, 해당 set 전체 displayNoneF(비교하기 팝업 로딩 될 때 공통으로 처리) */
							/* 비교 상품 dl span 값이 모두 - 이면, 해당 row 전체 displayNoneF(비교하기 팝업 로딩 될 때 공통으로 처리) */
							/* 비교 상품 dl span 값이 다르면 text에 하이라트 처리 */
							var part2SpecSpanLen = 0;
							part2SpecSpanLen = $('.part2').find('.spec').eq(0).find('.box-spec-detail').find('span').length;
							for (var i = 0; i < part2SpecSpanLen; i++) {
								var spanText0 = "1"; var spanText1 = "1"; var spanText2 = "1"; var spanText3 = "1";
								for (var j = 0; j < part1Len; j++) {
									var tempText = $('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).text().trim();
									if ((j == 0) && tempText != "-" && tempText != "") { spanText0 = tempText; } else if ((j == 1) && tempText != "-" && tempText != "") { spanText1 = tempText; } else if ((j == 2) && tempText != "-" && tempText != "") { spanText2 = tempText; } else if ((j == 3) && tempText != "-" && tempText != "") { spanText3 = tempText; }
								}
								switch (part1Len) {
									case 1:
										for (var j = 0; j < part1Len; j++) {
											$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).removeClass('highlight');
										}
										break;
									case 2:
										if (((spanText0 == spanText1) ? true : false)) {
											if ((spanText0 == '1') && (spanText1 == '1')) {
												for (var j = 0; j < part1Len; j++) {
													$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('dl').eq(i).css('display', 'none');
												}
											} else {
												for (var j = 0; j < part1Len; j++) {
													$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).removeClass('highlight');
												}
											}
										} else {
											for (var j = 0; j < part1Len; j++) {
												$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).addClass('highlight');
											}
										}
										break;
									case 3:
										if (((spanText0 == spanText1) ? ((spanText1 == spanText2) ? true : false) : false)) {
											if ((spanText0 == '1') && (spanText1 == '1') && (spanText2 == '1')) {
												for (var j = 0; j < part1Len; j++) {
													$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('dl').eq(i).css('display', 'none');
												}
											} else {
												for (var j = 0; j < part1Len; j++) {
													$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).removeClass('highlight');
												}
											}
										} else {
											for (var j = 0; j < part1Len; j++) {
												$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).addClass('highlight');
											}
										}
										break;
									case 4:
										if (((spanText0 == spanText1) ? ((spanText1 == spanText2) ? ((spanText2 == spanText3) ? true : false) : false) : false)) {
											if ((spanText0 == '1') && (spanText1 == '1') && (spanText2 == '1') && (spanText3 == '1')) {
												for (var j = 0; j < part1Len; j++) {
													$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('dl').eq(i).css('display', 'none');
												}
											} else {
												for (var j = 0; j < part1Len; j++) {
													$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).removeClass('highlight');
												}
											}
										} else {
											for (var j = 0; j < part1Len; j++) {
												$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).addClass('highlight');
											}
										}
										break;
								}
							}

							/* 비교하기 팝업 상품 스펙 set의 모든 dl의 display 값이 none이면 안보이게 */
							for (var i = 0; i < part1Len; i++) {
								var part2BoxSpecDetailLen = $('.part2').find('.spec').eq(i).find('.box-spec-detail').children().length;
								var dispNoneRowTF = false;
								for (var j = 0; j < part2BoxSpecDetailLen; j++) {
									var part2BoxSpecDetailDlLen = $('.part2').find('.spec').eq(i).find('.box-spec-detail').children().eq(j).find('dl').length;
									dispNoneRowTF = false;
									for (var k = 0; k < part2BoxSpecDetailDlLen; k++) {
										var dLdisp = $('.part2').find('.spec').eq(i).find('.box-spec-detail').children().eq(j).find('dl').eq(k).css('display');
										if (dLdisp == 'none') {
											dispNoneRowTF = true;
										} else if (dLdisp == 'block') {
											dispNoneRowTF = false;
											break;
										}
									}
									if (dispNoneRowTF) {
										$('.part2').find('.spec').eq(i).find('.box-spec-detail').children().eq(j).css('display', 'none');
									}
								}
							}
						} else {
							/* 비교 상품 dl span 값 모든 text에 하이라이트 처리 */
							//$('.part2 .prdBox .box-spec-detail').find('.set').find('span').addClass('highlight');
						}
					}

					/* 비교하기 팝업 정보 세팅 DB 이후1(차이점 활성화)(필요) */
					function afterSetCompInfoDb1() {
						console.log("비교하기 팝업 정보 세팅 DB 이후1(차이점 활성화)(필요)");
						var part1Len = $(".part1 .prdBox .prd.prdDetail").length;/* part1 길이 */
						if (part1Len > 1) {
							/* 비교 상품 box-spec-detail set 의 모든 dl span 값이 모두 - 이면, 해당 set 전체 displayNoneF(비교하기 팝업 로딩 될 때 공통으로 처리) */
							/* 비교 상품 dl span 값이 모두 - 이면, 해당 row 전체 displayNoneF(비교하기 팝업 로딩 될 때 공통으로 처리) */
							/* 비교 상품 dl span 값이 다르면 text에 하이라트 처리 */
							var part2SpecSpanLen = 0;
							part2SpecSpanLen = $('.part2').find('.spec').eq(0).find('.box-spec-detail').find('span').length;
							for (var i = 0; i < part2SpecSpanLen; i++) {
								var spanText0 = "1"; var spanText1 = "1"; var spanText2 = "1"; var spanText3 = "1";
								for (var j = 0; j < part1Len; j++) {
									var tempText = $('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).text().trim();
									if ((j == 0) && tempText != "-" && tempText != "") { spanText0 = tempText; } else if ((j == 1) && tempText != "-" && tempText != "") { spanText1 = tempText; } else if ((j == 2) && tempText != "-" && tempText != "") { spanText2 = tempText; } else if ((j == 3) && tempText != "-" && tempText != "") { spanText3 = tempText; }
								}
								switch (part1Len) {
									case 1:
										for (var j = 0; j < part1Len; j++) {
											$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).addClass('highlight');
										}
										break;
									case 2:
										if (((spanText0 == spanText1) ? true : false)) {
											for (var j = 0; j < part1Len; j++) {
												$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('dl').eq(i).css('display', 'none');
											}
										} else {
											for (var j = 0; j < part1Len; j++) {
												$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).addClass('highlight');
											}
										}
										break;
									case 3:
										if (((spanText0 == spanText1) ? ((spanText1 == spanText2) ? true : false) : false)) {
											for (var j = 0; j < part1Len; j++) {
												$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('dl').eq(i).css('display', 'none');
											}
										} else {
											for (var j = 0; j < part1Len; j++) {
												$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).addClass('highlight');
											}
										}
										break;
									case 4:
										if (((spanText0 == spanText1) ? ((spanText1 == spanText2) ? ((spanText2 == spanText3) ? true : false) : false) : false)) {
											for (var j = 0; j < part1Len; j++) {
												$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('dl').eq(i).css('display', 'none');
											}
										} else {
											for (var j = 0; j < part1Len; j++) {
												$('.part2').find('.spec').eq(j).find('.box-spec-detail').find('span').eq(i).addClass('highlight');
											}
										}
										break;
								}
							}

							/* 비교하기 팝업 상품 스펙 set의 모든 dl의 display 값이 none이면 안보이게 */
							for (var i = 0; i < part1Len; i++) {
								var part2BoxSpecDetailLen = $('.part2').find('.spec').eq(i).find('.box-spec-detail').children().length;
								var dispNoneRowTF = false;
								for (var j = 0; j < part2BoxSpecDetailLen; j++) {
									var part2BoxSpecDetailDlLen = $('.part2').find('.spec').eq(i).find('.box-spec-detail').children().eq(j).find('dl').length;
									dispNoneRowTF = false;
									for (var k = 0; k < part2BoxSpecDetailDlLen; k++) {
										var dLdisp = $('.part2').find('.spec').eq(i).find('.box-spec-detail').children().eq(j).find('dl').eq(k).css('display');
										if (dLdisp == 'none') {
											dispNoneRowTF = true;
										} else if (dLdisp == 'block') {
											dispNoneRowTF = false;
											break;
										}
									}
									if (dispNoneRowTF) {
										$('.part2').find('.spec').eq(i).find('.box-spec-detail').children().eq(j).css('display', 'none');
									}
								}
							}
						} else {
							/* 비교 상품 dl span 값 모든 text에 하이라이트 처리 */
							$('.part2 .prdBox .box-spec-detail').find('.set').find('span').addClass('highlight');
						}
					}

					/* 비교하기 팝업 정보 세팅 이후 공통(앵커 버튼 생성)(필요) */
					function afterSetCompInfoComm() {
						console.log("비교하기 팝업 정보 세팅 이후 공통(앵커 버튼 생성)(필요)");
						var part1Len = $(".part1 .prdBox .prd.prdDetail").length;/* part1 길이 */

						/* 대분류 필터 세팅(앵커) */
						var anchorTmpArr = [];
						var lfcTmpArr = [];
						if (part1Len > 0) {
							var part2SpecSet0Len = 0;
							var part2SpecSet0Len = $('.part2').find('.spec').eq(0).find('.box-spec-detail').find('.set').length;
							for (var i = 0; i < part2SpecSet0Len; i++) {
								var setDisp = $('.part2').find('.spec').eq(0).find('.box-spec-detail').find('.set').eq(i).css('display');
								var setText = $('.part2').find('.spec').eq(0).find('.box-spec-detail').find('.set').eq(i).find('h3').text();
								var setAncorClass = $('.part2').find('.spec').eq(0).find('.box-spec-detail').find('.set').eq(i).attr('class').split('set ')[1];
								if (setDisp != 'none' && setText != "" && setAncorClass != "") {
									lfcTmpArr[i] = setText;
									anchorTmpArr[i] = setAncorClass;
								}
							}
							lfcTmpArr = lfcTmpArr.filter(function (item) { return item !== null && item !== undefined && item !== ''; });
							anchorTmpArr = anchorTmpArr.filter(function (item) { return item !== null && item !== undefined && item !== ''; });
							var lfcBtnSet = new Set(lfcTmpArr);
							var lfcBtnArr = [...lfcBtnSet];

							var ancCassNmSet = new Set(anchorTmpArr);
							var ancCassNmArr = [...ancCassNmSet];

							$('.layer-filter-compare').empty();
							var html = '';
							for (var i = 0; i < lfcBtnArr.length; i++) {
								/* 활성화 : btn-type2, 비활성화 :  btn-type6 */
								if (i == 0) {
									html += '<a href="#' + ancCassNmArr[i] + '" onClick="specAnchor(this)"><button type="button"  value="' + i + '" class="btn btn-s btn-type2">' + lfcBtnArr[i] + '</button></a>';
								} else {
									html += '<a href="#' + ancCassNmArr[i] + '" onClick="specAnchor(this)"><button type="button"  value="' + i + '" class="btn btn-s btn-type6">' + lfcBtnArr[i] + '</button></a>';
								}
							}
							$('.layer-filter-compare').append(html);
						}
					}

					/* 비교하기 팝업 앵커 세팅(필요)(다 되고 0 컬럼만 id) */
					function setSpecAnchor() {
						console.log("비교하기 팝업 앵커 세팅(필요)(다 되고 0 컬럼만 id)");
						var part2SpecSet0Len = $('.part2').find('.spec').eq(0).find('.box-spec-detail').find('.set').length;
						for (var i = 0; i < part2SpecSet0Len; i++) {
							var set0ClassNm = $('.part2').find('.spec').eq(0).find('.box-spec-detail').find('.set').eq(i).attr('class').split('set ')[1];
							$('.part2').find('.spec').eq(0).find('.box-spec-detail').find('.set').eq(i).attr('id', set0ClassNm);
						}
					}

					/* 비교하기 팝업 스펙 카테고리 앵커(필요) */
					function specAnchor(self) {
						console.log("비교하기 팝업 스펙 카테고리 앵커(필요)");
						$('.btn.btn-s.btn-type2').removeClass('active');
						$('.btn.btn-s.btn-type2').removeClass('btn-type2');
						$('.btn.btn-s').removeClass('btn-type6');
						$('.btn.btn-s').addClass('btn-type6');
						if ($(self).find('button').hasClass('btn-type6')) {
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
						} else {/* 비교하기 팝업 스크롤 맨 위 */
							//1440 이하는 target의 포지션값은 유지된채, vw로 화면이 작아져서 값들이 변하기 때문에
							// 앵커다운이 pc(1920)처럼 작동을 안함. 그래서 화면을 보면서 높이을 설정할 수 있는 요소들의 값을 얻어 빼주는 방식으로 작업 함.
							// 화면이 바뀔 경우.. 일일히 확인해야함...

							var get_width = $(window).width();

							if (get_width <= 800) {
								position = target.position().top + headerH;
							} else if (get_width <= 810) {
								// fold 펼친화면
								position = target.position().top + (headerH * 3.5);
							} else if (get_width <= 1440) {
								var filterMB = parseInt($('.layer-pop.popupPrdCompare .layer-filter-compare').css('margin-bottom'));
								position = target.position().top + nofixedSpecDetailsMT + headerH + differenceM + filterMB;
							} else {
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
						, isLogin, membershipYn) {
							console.log("멤버십 적립포인트 보이기 여부(B2C)(필요)");

						//적립 예정 포인트 or 삼성전자 멤버십 가입하기
						//(한달살기) 특정 SKU 멤버십 포인트 미노출 처리
						if (!(
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
						) {
							if (stGbCd !== '80' && membershipUseExcptYn === 'N' && (carePlusType === null || typeof carePlusType === "undefined" || carePlusType === 'N' || carePlusType === 'CP')) {
								if (thirdPartyYn === 'N') {
									if ((isLogin && membershipYn !== 'Y')) {
										return false;
									} else {
										return true;
									}
								}
							}
						}
					}

					/* 멤버십 적립포인트 보이기 여부(패넷)(필요) */
					function mShipPtShowYnFNET(stId, stGbCd, stCd, isLogin, membershipYn) {
						console.log("멤버십 적립포인트 보이기 여부(패넷)(필요)");

						if ((stGbCd !== '80')) {
							if ((stCd !== 'epp')) {
								if ((isLogin && membershipYn !== 'Y')) {
									return false;
								} else {
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
					function _btnCompCart(self) {
						console.log("장바구니 시작(B2C, 패넷)(필요)");
						var goodsIds_ = $(self).attr('data-goods-ids');
						var nowBuyYn_ = $(self).attr('data-now-buy-yn');
						var buyQtys_ = $(self).attr('data-buy-qtys');
						var stGbCd_ = $(self).attr('data-st-gb-cd');
						var stId_ = $(self).attr('data-st-id');
						var orderType_ = $(self).attr('data-order-type');

						$("#compGoodsCartForm").remove();
						var compGoodsCartFormHTML = "";
						compGoodsCartFormHTML += "<form id='compGoodsCartForm' name='compGoodsCartForm' method='post'>";
						compGoodsCartFormHTML += "<input type='hidden' name='goodsIds' id='goodsIds' value='" + goodsIds_ + "' />";
						compGoodsCartFormHTML += "<input type='hidden' name='stGbCd' value='" + stGbCd_ + "' />";
						compGoodsCartFormHTML += "<input type='hidden' name='stId' value='" + stId_ + "' />";
						compGoodsCartFormHTML += "<input type='hidden' name='nowBuyYn' value='" + nowBuyYn_ + "' />";
						compGoodsCartFormHTML += "<input type='hidden' name='buyQtys' class='count-prd' value='" + buyQtys_ + "' />";
						compGoodsCartFormHTML += "<input type='hidden' name='orderType' value='" + orderType_ + "'>";
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

						if (stGbCd === '20' || stGbCd === '30') {// 패밀리넷
							if (stGbCd == '20' || stId == '7' || stId == '900') {
								if ($('#fnMultiPurchaseGuidance').hasClass('btnDirectClicked')) {
									$('#fnMultiPurchaseGuidance').removeClass('btnDirectClicked');
								}
								if ($('#fnOverpurchaseApplyGuidance').hasClass('btnDirectClicked')) {
									$('#fnOverpurchaseApplyGuidance').removeClass('btnDirectClicked');
								}

								$('#fnMultiPurchaseGuidance').addClass('btnCartClicked');
								$('#fnOverpurchaseApplyGuidance').addClass('btnDirectClicked');

								_fnFamliyNetCountLimit(reqData);
							} else {
								_fnFamliyNetCountLimit(reqData);
							}
						} else if (stGbCd === '10') {//B2C

						}
					}

					/* 장바구니 확인(패밀리넷인 경우 수량제한)(필요) */
					function _fnFamliyNetCountLimit(reqData) {
						console.log("장바구니 확인(패밀리넷인 경우 수량제한)(필요)");
						//$('#fnetOrderAgree').val('N');
						var options = {
							url: '/sec/xhr/order/check/limitcount'
							, data: reqData
							, done: function (data) {
								var listBuyInfo = data.listOrderBuyLimitVO
									, baseCount = data.baseCount
									, buyQty = parseInt(reqData.buyQtys[0]);

								myMarriageMoveBuyYn = (data.myMarriageMoveBuyYn == undefined || data.myMarriageMoveBuyYn == null) ? false : data.myMarriageMoveBuyYn;	// 혼수이사가능여부
								myMarriageMoveStat = (data.myMarriageMoveStat == undefined || data.myMarriageMoveStat == null) ? {} : data.myMarriageMoveStat;					// 혼수이사 상태
								myMarriageMoveCartCnt = (data.myMarriageMoveCartCnt == undefined || data.myMarriageMoveCartCnt == null) ? 0 : data.myMarriageMoveCartCnt;	// 혼수이사상품품목 장바구니 수량

								spcExhbnYn = (data.spcExhbnYn == undefined || data.spcExhbnYn == null) ? false : data.spcExhbnYn; 	 						 							// 특별기획전가능여부
								spcExhbnGoodsStat = (data.spcExhbnGoodsStat == undefined || data.spcExhbnGoodsStat == null) ? {} : data.spcExhbnGoodsStat; 			 			// 특별기획전 상품 특별기획전구매 상태

								orderGoodsQtyRestrictYn = data.orderGoodsQtyRestrictYn;
								orderGoodsQtyRestrictQty = data.orderGoodsQtyRestrictQty;

								if (Array.isArray(data.dispRestricts)) {
									$('#compDispRestrictsForm').remove();
									var formHtml = '';
									formHtml += '<form action="" id="compDispRestrictsForm"  name="compDispRestrictsForm" method="post" >';
									for (var j = 0; j < data.dispRestricts.length; j++) {
										formHtml += '<input name="dispClsfNo" value="' + data.dispRestricts[j].dispClsfNo + '">';
										formHtml += '<input name="qty_' + data.dispRestricts[j].dispClsfNo + '" value="' + data.dispRestricts[j].buyQty + '" >';
									}
									formHtml += '</form>';
									$('body').append(formHtml);
								}

								if (orderGoodsQtyRestrictYn != null) {
									if (orderGoodsQtyRestrictYn == "Y") {
										// 패밀리넷 품목별 초과 구매 관련 신청 안내
										openLayer('fnOverpurchaseApplyGuidance');
										return;
									} else if (orderGoodsQtyRestrictYn == "N") {
										// 패밀리넷 동일 품목 다량 구매 관련 안내
										openLayer('fnMultiPurchaseGuidance');
										return;
									}
								}

								if (buyQty >= baseCount) {
									$('#popupFmailyAgree').find('#baseCount').text(baseCount);
									openLayer('popupFmailyAgree');
									return false;
								}

								for (var i = 0; i < listBuyInfo.length; i++) {
									// var goodsId = listBuyInfo[i].goodsId
									var orderCount = parseInt(listBuyInfo[i].count);

									if (orderCount >= baseCount || (orderCount + buyQty) >= baseCount) {
										$('#popupFmailyAgree').find('#baseCount').text(baseCount);
										openLayer('popupFmailyAgree');
										return false;
									}
								}

								//$('#fnetOrderAgree').val('Y');

								if (spcExhbnYn) { // 패넷특별기획전가능
									reqData.spcExhbnYn = spcExhbnYn;
									if (reqData.nowBuyYn == 'N') {
										_fnFamilyNetSpcExhbnCart(reqData);
										return false;
									}
								} else if (myMarriageMoveBuyYn) { // 혼수이사가능
									reqData.myMarriageMoveBuyYn = myMarriageMoveBuyYn;
									if (reqData.nowBuyYn == 'N') {
										_fnFamilyNetMyMarriageMoveCart(reqData, myMarriageMoveCartCnt);
										return false;
									}
								}

								if (reqData.nowBuyYn == 'N') { _fnShowCartMessage(reqData); }
								return true;
							}
						};
						ajax.call(options);
					}

					/* 패밀리넷 특별기획전 상품 장바구니에 담기(FNET)(필요) */
					function _fnFamilyNetSpcExhbnCart(reqData) {
						console.log("패밀리넷 특별기획전 상품 장바구니에 담기(FNET)(필요)");
						let stGbCd = reqData.stGbCd;
						let spcExhbnGoodsStatLocal = spcExhbnGoodsStat[reqData.goodsIds[0]];

						if (spcExhbnGoodsStatLocal == undefined || spcExhbnGoodsStatLocal == null || spcExhbnGoodsStatLocal == "") {
							let confirmData = { content: "특별기획전 구매 중 오류가 발생하였습니다. 관리자에게 문의 바랍니다." };
							commonConfirm(confirmData);
							openLayer('commonConfirm');
						} else if (spcExhbnGoodsStatLocal == "lmtOver" && stGbCd == '30') {//디플인 경우, 잔여한도가 임직원가보다 높은경우
							reqData.spcExhbnYn = false;
							_fnInsertCart(reqData);
						} else if (spcExhbnGoodsStatLocal == "cartFull") {// 장바구니에 이미 담겨있거나 더 담을수 없는경우
							let confirmData = { content: "이미 특별기획전으로 구매하려는 상품의 카테고리에 해당되는 상품이 장바구니에 담겨 있습니다.<br>특별기획전 장바구니에서 제품삭제 후 추가 가능합니다." };
							commonConfirm(confirmData);
							openLayer('commonConfirm');
						} else if (spcExhbnGoodsStatLocal == "ordQtyOver") {// 기준구매수량보다 구매희망수량이 많은경우
							let confirmData = { content: "특별기획전 기준구매수량을 초과하였습니다.<br> 수량을 조정해 주세요." };
							commonConfirm(confirmData);
							openLayer('commonConfirm');
						} else {// 특별기획전 장바구니담기 가능
							_fnInsertCart(reqData);
						}
					}

					/* 패밀리넷 혼수이사 상품 장바구니에 담기(FNET)(필요) */
					function _fnFamilyNetMyMarriageMoveCart(reqData, myMarriageMoveCartCnt) {
						console.log("패밀리넷 혼수이사 상품 장바구니에 담기(FNET)(필요)");
						let stId = reqData.stId;
						if (myMarriageMoveStat.accCteGoods != undefined && myMarriageMoveStat.accCteGoods != "" && myMarriageMoveStat.accCteGoods == "accCteGoods") {
							let confirmData = { content: "액세서리 상품으로 일반장바구니로 이동됩니다.", okBtnText: "확인", cancelBtnText: "취소" };
							commonConfirm(confirmData);
							openLayer('commonConfirm');
							$("#closeCommonConfirmBtn").hide();
							reqData.myMarriageMoveBuyYn = false;
						} else if (myMarriageMoveStat.ordered != undefined && myMarriageMoveStat.ordered != "" && myMarriageMoveStat.ordered == "ordered") { //이미 카테고리에 해당되는 상품을 구매했을경우
							let confirmData = { content: "혼수/이사 혜택을 받은 구매이력이 확인되어 일반장바구니로 이동됩니다.", okBtnText: "확인", cancelBtnText: "취소" };
							commonConfirm(confirmData);
							openLayer('commonConfirm');
							$("#closeCommonConfirmBtn").hide();
							reqData.myMarriageMoveBuyYn = false;
						} else if (myMarriageMoveCartCnt > 0) {// 이미 카테고리에 해당되는 상품이 혼수이사 장바구니에 담겨있는 경우
							reqData.myMarriageMoveBuyYn = false;
						} else if (myMarriageMoveStat.lmtOver != undefined && myMarriageMoveStat.lmtOver != "" && myMarriageMoveStat.lmtOver == "lmtOver" && stGbCd == '30' && stId != '7' && stId != '600' && stId != '900') { // 패넷디플일경우 잔여한도보다 임직원가가 높을경우
							let confirmData = { content: "임직원가보다 잔여한도가 높으므로 일반장바구니로 이동됩니다.", okBtnText: "확인", cancelBtnText: "취소" };
							commonConfirm(confirmData);
							openLayer('commonConfirm');
							$("#closeCommonConfirmBtn").hide();
							reqData.myMarriageMoveBuyYn = false;
						} else {
							_fnInsertCart(reqData);
						}

						$("#commonConfirmOkBtn").on('click', function () {
							_fnInsertCart(reqData);
							return false;
						});

						$("#commonConfirmCancelBtn").on('click', function () {// 웹 접근성 수정
							$("[data-focus-target=true]").focus();
							$("[data-focus-target=true]").removeAttr("data-focus-target");
							return false;
						});
					}

					/* 장바구니 확인(B2C, FNET)(필요) */
					function _fnShowCartMessage(reqData) {
						console.log("장바구니 확인(B2C, FNET)(필요)");
						var options = {
							url: '/sec/xhr/order/goodscnt'
							, data: reqData
							, done: function (data) {
								var cartCnt = data.goodsCnt;
								$("#btnCompCart").attr("data-focus-target", "true");

								if (cartCnt > 0) {
									let confirmData = { content: "이미 동일한 상품이 장바구니에 있습니다.</br>추가하시겠습니까?", okBtnText: "확인", cancelBtnText: "취소" };
									commonConfirm(confirmData);
									openLayer('commonConfirm');
									$("#closeCommonConfirmBtn").hide();
								} else {
									let confirmData = { content: "장바구니에 추가하시겠습니까?", okBtnText: "확인", cancelBtnText: "취소" };
									commonConfirm(confirmData);
									openLayer('commonConfirm');
									$("#closeCommonConfirmBtn").hide();
								}

								$("#commonConfirmOkBtn").on('click', function () {
									_fnInsertCart(reqData);
									return false;
								});

								$("#commonConfirmCancelBtn").on('click', function () {// 웹 접근성 수정
									$("[data-focus-target=true]").focus();
									$("[data-focus-target=true]").removeAttr("data-focus-target");
									return false;
								});

							}
						};
						ajax.call(options);
					}

					/* 장바구니 담기(B2C, FNET)(필요) */
					function _fnInsertCart(reqData) {
						console.log("장바구니 담기(B2C, FNET)(필요)");
						var stGbCd = reqData.stGbCd;
						var options = {
							url: '/sec/xhr/order/insertCart'
							, data: reqData
							, done: function (data) {
								if (reqData.myMarriageMoveBuyYn && reqData.buyQtys.length > 1) {// 혼수이사장바구니와 일반장바구니에 동시에 담았을 경우
									let confirmData = { content: "해당 제품이 혼수/이사 제품에 해당되어<br> 혼수/이사로 장바구니로 이동됩니다.<br>(1개의 제품은 일반장바구니를 확인하세요)" };
									commonConfirm(confirmData);
									openLayer('commonConfirm');
								}

								if (data.cartCnt !== 0) {
									$(".cart-inner-count").css("display", "block"); $(".cart-inner-count").html(data.cartCnt);
								} else { $(".cart-inner-count").css("display", "none"); }

								_satellite.track('add to cart');
							}
						};

						if (stGbCd == '10') { options = $.extend({}, options, { netFunnelId: 'b2c_add_cart' }); }// NetFunnel_Action B2C만 적용 (20200902)

						ajax.call(options);
					}
					/* ===================================================================== */
					/* 구매하기 시작(B2C, FNET)(필요) */
					function _netFunnel_Action_PF(stGrp, goodsPath) {
						console.log("구매하기 시작(B2C, FNET)(필요)");
						NetFunnel_Action({ action_id: stGrp + '_pd_view' }, function (ev, ret) {
							location.href = goodsPath;
						});
					}

					/* 구매하기 시작(FNET)(필요) */
					function _bespoke_Action_PF(stGrp, goodsPath) {
						console.log("구매하기 시작(FNET)(필요)");
						location.href = goodsPath;
					}

					/* 구매하기 시작(B2C, FNET)(필요) */
					function _wine_Action_PF(isLogin, stGrp, goodsPath) {
						console.log("구매하기 시작(B2C, FNET)(필요)");
						if (!isLogin) {
							location.href = '/sec/' + "member/indexLogin/?returnUrl=" + location.pathname;
							return;
						} else {
							_fnGetCerificationCheck(goodsPath);
						}
					}

					/* 구매하기_와인(필요) */
					function _fnGetCerificationCheck(goodsPath) {
						console.log("구매하기_와인(필요)");
						var options = {
							url: "/sec/xhr/pf/cerificationCheck/"
							, type: 'POST'
							, done: function (data) {
								if (data.adultCerification == "F") { //계정 성인체크 여부가 없을때
									let alertData = { title: "alert", content: "로그인이 필요합니다." };
									commonAlert(alertData);
									openLayer('commonAlert');
									return;
								} else if (data.adultCerification == "N") { // 계정 성인체크 여부가 N일때 (미성년)
									let alertData = { title: "본인인증 시 19세 미만자", content: "만 19세 이상만 구매할 수 있습니다." };
									commonAlert(alertData);
									openLayer('commonAlert');
									return;
								} else if (data.kcbAdultCerification == "F") {// KCB 본인 인증 안했을때 인증 팝업 콜
									_kcb(goodsPath);
									return;
								} else if (data.kcbAdultCerification == "N") {// KCB 본인 인증 했으나 미성년일때
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
					function _kcb(goodsPath) {
						console.log("KCB 본인 인증 안했을때 인증 팝업 콜");
						var options = {
							url: "/sec/xhr/join/kcbPersonalAuthCheck/"
							, data: { url: goodsPath, kcbGb: "W" }
							, type: 'GET'
							, async: false
							, dataType: "html"
							, done: function (data) {
								$('#index_kcb').html(data);
								if (!$("#index_kcb").hasClass('active')) { openLayer('index_kcb'); }
							}
						};
						ajax.call(options);
					}

					/* ===================================================================== */
					$(window).resize(function () {
						setPopupHeight(); // 윈도우 세로 값에 따라 스크롤 되는 영역 세로값 설정하기
						floatingStickyComparePosition(); // 230119 
						setPopupPart1Fixed($('.popupPrdCompare .layer-content-compare'));// 221230 비교하기 팝업 스크롤내리면 제품이미지 고정

					}).resize();

					$(document).ready(function () {
						sliderCompareBox('itmInfoDetail');

						/* 비교하기 팝업_차이점 토글 세팅 */
						$("label[for = 'toggle-check-on']").click(function () {
							/* 차이점 활성화 */
							if ($('.popupPrdCompare .layer-difference-compare .toggleCheck .labeltxt.off').attr('aria-hidden') == 'true') {
								$('.popupPrdCompare .layer-difference-compare .toggleCheck .labeltxt.off').attr('aria-hidden', 'false');
								$('.popupPrdCompare .layer-difference-compare .toggleCheck .labeltxt.on').attr('aria-hidden', 'true');

								/* 가격 높이 클래스 */
								$('.prdBox .prd.prdDetail').removeClass('addpoint');
								$('.prdBox .prd .box.compare-emptyBox').parent().removeClass('addpoint');
								if ('1' == '1') {
								} else if ('1' == '2') {
									$('.prdBox .prd.prdDetail').removeClass('cnt-4-li_list-price');
									$('.prdBox .prd .box.compare-emptyBox').parent().removeClass('cnt-4-li_list-price');
								} else if ('1' == '3') {
									$('.prdBox .prd.prdDetail').removeClass('cnt-5-li_list-price');
									$('.prdBox .prd .box.compare-emptyBox').parent().removeClass('cnt-5-li_list-price');
								}

								/* 비교하기 팝업 정보 세팅 DB(차이점 활성화)(필요) */
								setCompInfoDb();

							} else {/* 차이점 비활성화 */
								$('.popupPrdCompare .layer-difference-compare .toggleCheck .labeltxt.off').attr('aria-hidden', 'true');
								$('.popupPrdCompare .layer-difference-compare .toggleCheck .labeltxt.on').attr('aria-hidden', 'false');
								var compDispClsfEnNm = '';
								if ($('#compareBtn').val() == '') { $('#compareBtn').val($('.prd').attr('value')); $('.btn-reset').val($('.prd').attr('value')); }
								compDispClsfEnNm = $('#compareBtn').val();

								/* 가격 높이 클래스 */
								$('.prdBox .prd.prdDetail').removeClass('addpoint');
								$('.prdBox .prd .box.compare-emptyBox').parent().removeClass('addpoint');
								if ('1' == '1') {
								} else if ('1' == '2') {
									$('.prdBox .prd.prdDetail').removeClass('cnt-4-li_list-price');
									$('.prdBox .prd .box.compare-emptyBox').parent().removeClass('cnt-4-li_list-price');
								} else if ('1' == '3') {
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

				<!-- s : disclaimer -->
				<div class="pf-disclaimer">
					<div class="wrap-disc">
						<픽셀 하자 보증><br>
							패널(모니터 화면)에 제조사가 정한 기준(하단 참고) 이상의 불량 화소(픽셀)가 발생한 경우 패널 교체가 가능합니다.
							불량 화소 발견 시, 서비스센터를 통해 전문상담원의 판정을 거친 후 패널 교체를 받으시기 바랍니다.<br>
							(불량 화소의 경우, 모니터 전체가 교환되지는 않으며 패널부 교체만 가능합니다.)<br><br>
							* 픽셀 하자 보증 기준 [구매일 ~ 6개월 이내]
							- 광점 무결점 / 흑점 5개 초과<br>
							* 패널 교체를 위한 제조사 운영 기준은 변동될 수 있으므로 구매 전 관련 기준을 서비스센터의 전문 상담원을 통해 반드시 확인하시기 바랍니다.<br>
							* 에너지 소비효율 기준 변경이나 성능 개선에 따라 에너지 소비효율 등급은 변경될 수도 있습니다.<br>
							* 소비자의 이해를 돕기 위해 연출된 장면으로 실사용 환경에 따라 다를 수 있습니다.<br>
							<br>
					</div>
				</div>
				<!-- e : disclaimer -->
			</div>
			<!-- e : 본문 영역 -->

			<script type="text/javascript">
				var goodsPf = {
					fnAjaxUrl: function (vUrl, vAjaxUrl) {
						var ajaxUrl = "xhr/goods/";
						if (vAjaxUrl !== undefined) {
							ajaxUrl = vAjaxUrl;
						}
						return '/sec/' + ajaxUrl + vUrl;
					},
					fnLoginCheck: function (callback) {
						var options = {
							url: goodsPf.fnAjaxUrl("loginCheck")
							, type: 'POST'
							, done: function (data) {
								if (callback) {
									callback(data.isLogin);
								}
							}
						};
						ajax.call(options);
					},

					fnisLoginCheck: function (callback) {
						var options = {
							url: goodsPf.fnAjaxUrl("loginCheck")
							, type: 'POST'
							, async: false
							, done: function (data) {
								if (callback) {
									callback(data.isLogin);
								}
							}
						};
						ajax.call(options);
					}

				}
				function clickItem(obj, access) {
					if ($(obj).prop('checked')) {
						// 추가
						var span = '<span class="txt" data-search-filter="' + $(obj).data('search-filter') + '">' + $(obj).data('filter-item-nm') + '<button type="button" onClick="removeItem(\'' + $(obj).data('search-filter') + '\')">삭제</button></span>';
						$('.opt-area').append(span);

						var div = '<div class="item">';
						div += '<span class="txt" data-search-filter="' + $(obj).data('search-filter') + '">' + $(obj).data('filter-item-nm') + '<button type="button" class="btn-delete" onClick="removeItem(\'' + $(obj).data('search-filter') + '\')">삭제</button></span>';
						div += '</div>';
						$('.filter-footer > .list-option').append(div);
						itemInit();
					} else {
						removeItem($(obj).data('search-filter'), access);
					}
				}

				function goSohoLogin() {
					location.href = '/sec/' + "member/indexLogin/?returnUrl=" + location.pathname;
				}

				function removeAllItem() {
					// 필터 영역 uncheck
					$('.list-filter').find('input:checkbox').each(function (idx, item) {
						$(item).prop('checked', false);
					});

					// pc 필터 사이드바 제거
					$('.opt-area > span').each(function (idx, item) {
						$(item).remove();
					});

					// 모바일 필터 사이드바 제거
					$('.filter-footer').find('.item > span').each(function (idx, item) {
						$(item).parent().remove();
					});

					itemInit();
				}

				function removeItem(searchFilter, access) {

					// 필터 영역 uncheck    		    		    	
					$('.list-filter').find('input:checkbox').each(function (idx, item) {
						if (searchFilter === $(item).data('search-filter')) {
							$(item).prop('checked', false);
						}
					});

					// pc 필터 사이드바 제거
					$('.opt-area > span').each(function (idx, item) {
						if (searchFilter === $(item).data('search-filter')) {
							if (access) {

							} else {
								if ($(this).next().find("button").length > 0) {
									$(this).next().find("button").focus();
								} else {
									$(this).parent().parent().next().find("button").focus();
								}
							}
							$(item).remove();
						}

					});

					// 모바일 필터 사이드바 제거
					$('.filter-footer').find('.item > span').each(function (idx, item) {
						if (searchFilter === $(item).data('search-filter')) {
							$(item).parent().remove();
						}
					});


					itemInit();
				}

				function netFunnel_Action_PF(goodsPath) {
					var top = $(window).scrollTop();
					var page = $("#page").val();
					sessionStorage.setItem('pageScroll', top + '|||' + page + '|||' + '39030000');

					NetFunnel_Action({ action_id: 'b2c_pd_view' }, function (ev, ret) {

						location.href = goodsPath;

					});

				}

				function bespoke_Action_PF(goodsPath) {
					location.href = '/sec/' + goodsPath;
				}

				function wine_Action_PF(goodsPath) {
					goodsPf.fnLoginCheck(function (isLogin) {
						if (!isLogin) {
							location.href = '/sec/' + "member/indexLogin/?returnUrl=" + location.pathname;
							return;
						} else {
							fnGetCerificationCheck(goodsPath);
						}
					});
				}

				function fnGetCerificationCheck(goodsPath) {
					var options = {
						url: "/sec/xhr/pf/cerificationCheck/"
						, type: 'POST'
						, done: function (data) {
							if (data.adultCerification == "F") { //계정 성인체크 여부가 없을때
								let alertData = {
									title: "alert",
									content: "로그인이 필요합니다."
								};
								commonAlert(alertData);
								openLayer('commonAlert');
								return;
							} else if (data.adultCerification == "N") { // 계정 성인체크 여부가 N일때 (미성년)
								popupAdultUnder();
								return;
							} else if (data.kcbAdultCerification == "F") {// KCB 본인 인증 안했을때 인증 팝업 콜
								kcb(goodsPath);
								return;
							} else if (data.kcbAdultCerification == "N") {// KCB 본인 인증 했으나 미성년일때
								popupAdultUnder();
								return;
							} else {
								netFunnel_Action_PF(goodsPath);
							}
						}
					};
					ajax.call(options);
				}

				function kcb(goodsPath) {
					var options = {
						url: "/sec/xhr/join/kcbPersonalAuthCheck/",
						data: { url: goodsPath, kcbGb: "W" },
						type: 'GET',
						async: false,
						dataType: "html",
						done: function (data) {
							$('#index_kcb').html(data);
							if (!$("#index_kcb").hasClass('active')) {
								openLayer('index_kcb');
							}
						}
					};
					ajax.call(options);
				}

				function popupAdultUnder() {
					let alertData = {
						title: "본인인증 시 19세 미만자",
						content: "만 19세 이상만 구매할 수 있습니다."
					};
					commonAlert(alertData);
					openLayer('commonAlert');
				}

				function getPrdOptList(goodsOptStr, goodsId) {
					if (goodsOptStr == null) {
						return null;
					}

					var goodsItemPaths = new Array();
					var maxSeq = 0;
					$.each(goodsOptStr.split('\n'), function (idx, optStr) {
						var optTemp = optStr.split('|');
						$.each(optTemp[9].split(','), function (gIdx, g) {
							if (goodsItemPaths[g] == undefined) {
								goodsItemPaths[g] = new Array();
							}
							goodsItemPaths[g][optTemp[0]] = optTemp[2];
							if (parseInt(optTemp[0]) > maxSeq) {
								maxSeq = optTemp[0];
							}
						});
					});

					//console.log(goodsItemPaths);

					var goodsOpts = new Array();
					var itemNos = new Array();
					//var itemNo = '';
					$.each(goodsOptStr.split('\n'), function (idx, optStr) {
						var opt = optStr.split('|');
						if (opt[2] === opt[3]) {
							if (opt[9] === goodsId) {
								itemNos.push(opt[2]);
							}
						} else {
							if (itemNos.indexOf(opt[3]) > -1) {
								itemNos.push(opt[2]);
							} else {
								opt[8] = '';
								opt[9] = '';
							}
						}

						goodsOpts.push(opt);
					});

					var optList = new Array();
					var opt = {};
					var optItemList;
					var optSeq = "";

					$.each(goodsOpts, function (idx, goodsOpt) {
						var itemEnNm;

						if (optSeq != goodsOpt[0]) {
							if (optSeq != '') {
								opt.items = optItemList;
								optList.push(opt);
							}

							opt = {};
							opt.nm = goodsOpt[4];
							opt.no = goodsOpt[1];
							opt.seq = goodsOpt[0];
							opt.useColor = goodsOpt[7];

							if (goodsOpt.length > 10)
								opt.enNm = goodsOpt[10] ? goodsOpt[10] : goodsOpt[4];
							else
								opt.enNm = goodsOpt[4];

							optItemList = new Array();
						}

						if (goodsOpt.length > 11) {
							itemEnNm = goodsOpt[10] ? goodsOpt[11] : goodsOpt[5];
						} else {
							itemEnNm = goodsOpt[5];
						}

						optItemList.push({
							itemNo: goodsOpt[3],
							itemNm: goodsOpt[5],
							itemEnNm: itemEnNm,
							itemDfn: goodsOpt[6],
							mdlCd: goodsOpt[8],
							goodsId: getLiveGoodsId(
								goodsOpt[9],
								parseInt(goodsOpt[0]),
								maxSeq,
								goodsId,
								goodsItemPaths),
							itemImgPath: goodsOpt[12]
						});
						optSeq = goodsOpt[0];
					});

					if (goodsOpts != null && goodsOpts.length > 0) {
						opt.items = optItemList;
						optList.push(opt);
					}

					//console.log(optList);

					return optList;
				}

				function getLiveGoodsId(goodsOpt, currSeq, maxSeq, goodsId, goodsItemPaths) {
					if (goodsOpt.indexOf(goodsId) > -1) {
						return goodsId;
					}

					var currPnt = 0;
					var selGoodsId = '';

					$.each(goodsOpt.split(','), function (idx, g) {
						var isTopOk = true;
						if (currSeq >= 2) {
							for (var i = 1; i < currSeq; i++) {
								if (goodsItemPaths[goodsId] != undefined && goodsItemPaths[g][i] != goodsItemPaths[goodsId][i]) {
									isTopOk = false;
									break;
								}
							}
						}

						if (isTopOk == true) {
							if (selGoodsId === '') {
								selGoodsId = g;
							}

							var sumPnt = 0;
							for (var i = currSeq; i <= maxSeq; i++) {
								if (goodsItemPaths[goodsId] != undefined && goodsItemPaths[g][i] === goodsItemPaths[goodsId][i]) {
									sumPnt += maxSeq - currSeq + 1;
								}
							}

							if (sumPnt > currPnt) {
								currPnt = sumPnt;
								selGoodsId = g;
								//console.log('goodsId:' + g + ',currSeq:' + currSeq+ ',sumPnt:' + sumPnt);
							}
						}
					});

					return selGoodsId;
				}

				function htmlProductCard(prd, idx) {
					var contextPath = "/sec/";
					var prdLink = '/sec/' + prd.goodsDetailUrl;
					var stGbCd = '10';
					//stGbCd = '30';

					var price = prd.priceStr.split('|');
					var isLogin = isLoginCheck;


					var liItem = '';

					liItem += '<div class="item-inner" data-omni="';
					liItem += prd.mdlNm;
					liItem += '|';
					liItem += prd.mdlCode;
					liItem += '">';
					liItem += '  <div class="card-flag">';

					if (prd.saleStatCd == '13' && prd.useStkCd != '90') {
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

							for (var i = 0; i <= goodsOrdTpCdFlags.length; i++) {

								if (goodsOrdTpCdFlags[i] == '01') {
									if ('10' == prd.tradeInTypeCd || '20' == prd.tradeInTypeCd || '30' == prd.tradeInTypeCd || '40' == prd.tradeInTypeCd || '210' == prd.tradeInTypeCd) {
										liItem += '    <span>트레이드인</span>';
									} else {
										liItem += '    <span>중고 추가보상</span>';
									}

								} else {

								}
							}
						}
						if (prd.galaxyClubYn != null && prd.galaxyClubYn == 'Y') {
							liItem += '    <span>My 갤럭시 클럽</span>';
						}

						if (prd.customGoodsYn != null && prd.customGoodsYn == 'Y' || prd.customGoodsYn != null && prd.customGoodsYn == 'D') {
							liItem += '    <span>Customize</span>';
						}

						if (prd.outletFlgYn != null && prd.outletFlgYn == 'Y') {
							liItem += '    <span>아울렛</span>';
						}

						if (prd.carePlusType == "CP") {
							liItem += '    <span> 삼성케어플러스 </span>';
						}

						// 상품 플래그 명
						if (prd.colVal1 != null) {
							liItem += '    <span>' + prd.colVal1 + '</span>';
						}

						/* 22.03.23_kjh_KDP-10791 */
						/* if(prd.discountRateYn != null && prd.discountRateYn == 'Y'){
							//할인율 계산 (공식은 htmlProductPrice부분 참조) price[2]판매가
							//40 등외급 몰은 할인이 없음
							//50은 로그인 해야 보여줌
							//70,80 임직원 몰은 할인이 없음
							
							var discountRate = "";
							if(stGbCd == '10'){
								if(price[1] == '00'){
									discountRate = Math.floor((price[2]-price[3])/price[2]*100);
								}else{
									discountRate = Math.floor((price[2]-price[4])/price[2]*100);
								}
							} else if (stGbCd == '20' || stGbCd == '30'){
								discountRate = Math.floor((price[2]-price[6])/price[2]*100);
							} else if (stGbCd == '50' && isLogin) {
								if(price[1] == '00'){
									discountRate = Math.floor((price[2]-price[3])/price[2]*100);
								}else{
									discountRate = Math.floor((price[2]-price[4])/price[2]*100);
								}
							}else if (stGbCd == '60') {
								discountRate = Math.floor((price[2]-price[3])/price[2]*100);
							}
							
							
							if(discountRate){
								liItem +=  '    <span>'+discountRate+'% Off</span>';
							}
						} */


					}


					if (stGbCd != '40' && stGbCd != '90' &&
						// 임직원몰(기획전몰)_체험단말 미노출 추가 2020-12-03
						!(stGbCd == '80' && (contextPath.indexOf("23_ma") > -1 ||
							contextPath.indexOf("23_pa") > -1 ||
							contextPath.indexOf("23_im") > -1 ||
							contextPath.indexOf("23_fan") > -1)
						)
						&& prd.isHomefitnessGoodsYn != 'Y'
					) {
						if (prd.hideBtnWishYn == 'Y') {
							liItem += '    <button style="display:none;" title="' + (prd.wishYn === 'Y' ? '선택됨' : '') + '" type="button" class="btn-good' + (prd.wishYn === 'Y' ? ' on' : '') + '" data-goods-id="' + prd.goodsId + '"><i class="icon ico-large ico-goods">좋아요!! ' + (prd.wishYn === 'Y' ? '선택' : '미선택') + '</i></button>';
						} else {
							liItem += '    <button title="' + (prd.wishYn === 'Y' ? '선택됨' : '') + '" type="button" class="btn-good' + (prd.wishYn === 'Y' ? ' on' : '') + '" data-goods-id="' + prd.goodsId + '"><i class="icon ico-large ico-goods">좋아요 ' + (prd.wishYn === 'Y' ? '선택' : '미선택') + '</i></button>';
						}

						liItem += '		<div class="bookmarkTooltip flashTooltip bookmarkOn"><div><p><span>찜</span>이 되었습니다.</p><a href="javascript:void(0);" class="btn-underline">전체보기</a></div></div><div class="bookmarkTooltip flashTooltip bookmarkOff"><div><p><span>찜</span>이 취소되었습니다.</p></div></div>';
					}

					liItem += '  </div>';
					liItem += '  <!-- 마우스 오버시 이미지 순차교체  -->';
					if (stGbCd == '10' && prd.winePickupGoodsYn != null && prd.winePickupGoodsYn == 'Y' && prd.winePickupGoodsYn != '') {
						liItem += '<a href="" onclick="wine_Action_PF(\'' + prdLink + '\');return false;" class="card-img" data-image-src="[';
					} else if ((stGbCd == '20' || stGbCd == '30') && (prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30' || prd.goodsAddTpCd === '50')) {
						// 패널 상품일 경우 자동 선택 - 2022.09.06
						var bspkParam = '';
						if ('50' == prd.goodsAddTpCd) {
							bspkParam = '&pannelYn=Y';
						} else {
							bspkParam = '&selModel=' + prd.mdlCode;
						}

						liItem += '<a href="" onclick="bespoke_Action_PF(\'bespoke/buy/fam/?id=bespoke-make' + bspkParam + '\');return false;" class="card-img" data-image-src="[';
					} else {
						liItem += '<a href="' + prdLink + '" onclick="netFunnel_Action_PF(\'' + prdLink + '\');return false;" class="card-img" data-image-src="[';
					}

					if (prd.imgPath1 != null && prd.imgPath1[prd.imgPath1.length - 1] != '$') {
						if (prd.imgPresetYn1 == 'Y') {
							prd.imgPath1 += '?$PF_PRD_KDP_PNG$';
						} else {
							prd.imgPath1 += '?$PF_PRD_PNG$';
						}
					}

					if (prd.imgPath2 != null && prd.imgPath2[prd.imgPath2.length - 1] != '$') {
						if (prd.imgPresetYn2 == 'Y') {
							prd.imgPath2 += '?$PF_PRD_KDP_PNG$';
						} else {
							prd.imgPath2 += '?$PF_PRD_PNG$';
						}
					}

					if (prd.imgPath3 != null && prd.imgPath3[prd.imgPath3.length - 1] != '$') {
						if (prd.imgPresetYn3 == 'Y') {
							prd.imgPath3 += '?$PF_PRD_KDP_PNG$';
						} else {
							prd.imgPath3 += '?$PF_PRD_PNG$';
						}
					}

					if (prd.imgPath4 != null && prd.imgPath4[prd.imgPath4.length - 1] != '$') {
						if (prd.imgPresetYn4 == 'Y') {
							prd.imgPath4 += '?$PF_PRD_KDP_PNG$';
						} else {
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

					liItem += '    <img src="' + prd.imgPath1 + '" alt="' + prd.goodsNm.replace(/(<([^>]+)>)/ig, '').replace(/'/ig, '').replace(/"/ig, '') + '">';

					if (stGbCd == '10' && prd.winePickupGoodsYn != null && prd.winePickupGoodsYn == 'Y' && prd.winePickupGoodsYn != '') {
						liItem += '<div class="adult19-mark"> ';
						liItem += '<span><em class="blind">19</em></span> ';
						liItem += '<p class="desc">만 19세 이상만<br>구매 하실 수 있어요.</p> ';
						liItem += '</div> ';
					}
					liItem += '</a>';

					liItem += htmlProductOpt(prd);

					liItem += '  <div class="card-detail">';
					liItem += '    <span class="prd-name" title="' + prd.goodsNm.replace(/(<([^>]+)>)/ig, '').replace(/'/ig, '').replace(/"/ig, '') + '">' + prd.goodsNm.replace(/\n/g, '<br>') + '</span>';
					liItem += '    <span class="prd-num">' + prd.mdlCode + '</span>';
					liItem += '  </div>';

					// 가격 && 멤버십
					liItem += htmlProductPrice(prd);

					liItem += htmlProductBtn(prd);

					liItem += '  <div class="card-purchase">';
					liItem += '<ul class="message-list">';
					if ((prd.itdcMsg1 != null && prd.itdcMsg1 != '') && (prd.uspDescList != null && prd.uspDescList.length != 0)) {
						liItem += '<li class="message-list-item">';
						liItem += prd.itdcMsg1;
						liItem += '</li>';
						for (var i = 0; i < prd.uspDescList.length; i++) {
							liItem += '<li class="message-list-item">';
							liItem += prd.uspDescList[i];
							liItem += '</li>';
							if (i == 1) {
								break;
							}
						}
					} else if ((prd.itdcMsg1 == null || prd.itdcMsg1 == '') && (prd.uspDescList != null && prd.uspDescList.length != 0)) {
						for (var i = 0; i < prd.uspDescList.length; i++) {
							liItem += '<li class="message-list-item">';
							liItem += prd.uspDescList[i];
							liItem += '</li>';
							if (i == 2) {
								break;
							}
						}
					} else if ((prd.itdcMsg1 != null && prd.itdcMsg1 != '') && (prd.uspDescList == null || prd.uspDescList.length == 0)) {
						liItem += '<li class="message-list-item">';
						liItem += prd.itdcMsg1;
						liItem += '</li>';
					}

					var useCompareYn = $('#useCompareYn').val();

					liItem += '</ul>';
					//liItem += '    <div class="spec">';
					//liItem += '      <ul>';
					//liItem += '        <li><span class="icon"><img src="http://10.112.182.125/sec/static/images/icon_dps/[icon_area]01.svg" alt="변치 않는 신선함 아이콘"></span><span class="txt">변치 않는<br>신선함</span></li>';
					//liItem += '        <li><span class="icon"><img src="http://10.112.182.125/sec/static/images/icon_dps/[icon_area]02.svg" alt="변치 않는 품격 아이콘"></span><span class="txt">변치 않는<br>품격</span></li>';
					//liItem += '        <li><span class="icon"><img src="http://10.112.182.125/sec/static/images/icon_dps/[icon_area]03.svg" alt="변치 않는 전문성 아이콘"></span><span class="txt">변치 않는<br>전문성</span></li>';
					//liItem += '      </ul>';
					//liItem += '    </div>';
					liItem += '    <div class="compare">';

					if (useCompareYn == 'Y') {
						/* liItem += '      <a href="#none" class="link-compare'+( isCompareDataStorageGoods(prd.goodsId)?' disabled':''  )+'" onClick="readyCompare(this)" data-goods-id="'+prd.goodsId+'" data-mdl-code="'+prd.mdlCode+'"  data-disp-clsf-no="39030000" data-omni="'+prd.mdlNm+'|'+prd.mdlCode+'" >비교하기</a>'; */
						if (prd.compareExcptYn == null || prd.compareExcptYn == 'N') {
							liItem += productCompareView(prd);
						}
					}

					// 패넷은 상품평 노출 제외
					// 임직원몰(기획전몰)_체험단말 노출 제외 추가 2020-12-03
					// 임직원몰(기획전몰)_갤럭시캠퍼스 노출 제외 추가 2020-12-29
					//2022.05.30 갤캠스 노출 제외 삭제
					var isCommentGrade = false;
					if (('Y' == 'Y' || stGbCd == '70' ||
						stGbCd == '80' && !(contextPath.indexOf("23_ma") > -1 ||
							contextPath.indexOf("23_pa") > -1 ||
							contextPath.indexOf("23_im") > -1 ||
							contextPath.indexOf("23_fan") > -1)
					) && prd.isHomefitnessGoodsYn != 'Y'
					) {
						isCommentGrade = true;
					}
					// B2B  소상공인몰만 상품평 별점 노출
					if ('monitors' == 'soho') {
						isCommentGrade = true;
					}
					if (isCommentGrade) {
						liItem += '      <a class="link-review" href="' + prdLink + '?focus=review"   title="상품평점">' + prd.reviewGrade + ' (' + prd.reviewCount + ')</a>';
					}
					liItem += '    </div>';
					liItem += '  </div>';
					liItem += '</div>';

					return liItem;
				}


				function htmlProductOpt(prd) {
					// 옵션 영역
					//prd.goodsOptStr='1|1001|1320|1320|색상|쉐브론 멀티 글리터|#777777|Y|SM-T865NZANKOO|G100167678,G100167677|color|GRAY\n1|1001|1479|1479|색상|코랄블루|#9bbedc|Y|SM-T865NZBNKOO|G100167680,G100167679|color|CORALBLUE\n1|1001|1421|1421|색상|블러쉬 핑크|#ceabbf|Y|SM-T865NZNDKOO|G100167681,G100167682|color|BLUSHPINK\n2|1002|1082|1082|구분|언락태블릿|언락태블릿|N|SM-T865NZNDKOO|G100167681,G100167682,G100167679,G100167680,G100167677,G100167678|classify|언락태블릿\n3|1003|1092|1092|메모리|256 GB|256 GB|N|SM-T865NZNNKOO|G100167682,G100167680,G100167678|device-memory|256 GB\n3|1003|1044|1044|메모리|128 GB|128 GB|N|SM-T865NZBDKOO|G100167679,G100167677,G100167681|device-memory|128 GB\n4|1005|1061|1061|약정/무약정|무약정|무약정|N|SM-T865NZBNKOO|G100167680,G100167677,G100167678,G100167681,G100167682,G100167679|contract|무약정';
					var opts = getPrdOptList(prd.goodsOptStr, prd.goodsId);
					// console.log(JSON.stringify(opts));
					if (opts == null || opts.length == 0) {
						return '<div class="card-opt"></div><div class="card-option"></div>';
					}

					var html = "";

					if (opts.length <= 2) {
						html += '<div class="card-opt">';
						$.each(opts, function (idx, opt) {
							// 컬러칩
							if (opt.useColor == 'Y') {
								html += '<div class="pf-color-sel">';
								html += '	<div class="option-slick">';
								html += '		<ol class="itm-color-list swiper-wrapper">';

								$.each(opt.items, function (idx, item) {
									html += '		<li class="swiper-slide">';

									var tagId = "itm-color-" + item.itemNo + "-" + item.goodsId;
									var classOptChecked = "";

									if (prd.goodsId == item.goodsId) {
										if (item.goodsId == null || item.goodsId == '') {
											//   									html += '	<input type="radio" id="itm-color-' + item.itemNo + '-' + item.goodsId + '" name="itm-color-' + item.itemNo + '-' + item.goodsId + '" checked="checked" disabled="disabled" tabindex="-1">';
											html += '	<input type="radio" id="' + tagId + '" name="itm-color-' + prd.mdlCode + '" checked="checked" disabled="disabled">';
										} else {
											//   								html += '		<input type="radio" id="itm-color-' + item.itemNo + '-' + item.goodsId + '" name="itm-color-' + item.itemNo + '-' + item.goodsId + '" checked="checked" onclick="fnGetPfPrd(\'' + item.goodsId + '\', \'li-prd-' + prd.goodsId + '\')" tabindex="-1">';
											html += '		<input type="radio" id="' + tagId + '" name="itm-color-' + prd.mdlCode + '" checked="checked" onclick="fnGetPfPrd(\'' + item.goodsId + '\', \'li-prd-' + prd.goodsId + '\', \'' + tagId + '\')">';
										}
										classOptChecked = "opt-checked";
									} else {
										if (item.goodsId == null || item.goodsId == '') {
											//   									html += '	<input type="radio" id="itm-color-' + item.itemNo + '-' + item.goodsId + '" name="itm-color-' + item.itemNo + '-' + item.goodsId + '" disabled="disabled" tabindex="-1">';
											html += '	<input type="radio" id="' + tagId + '" name="itm-color-' + prd.mdlCode + '" disabled="disabled">';
										} else {
											//   									html += '	<input type="radio" id="itm-color-' + item.itemNo + '-' + item.goodsId + '" name="itm-color-' + item.itemNo + '-' + item.goodsId + '" onclick="fnGetPfPrd(\'' + item.goodsId + '\', \'li-prd-' + prd.goodsId + '\')" tabindex="-1">';
											html += '	<input type="radio" id="' + tagId + '" name="itm-color-' + prd.mdlCode + '" onclick="fnGetPfPrd(\'' + item.goodsId + '\', \'li-prd-' + prd.goodsId + '\', \'' + tagId + '\')">';
										}
									}

									if (item.itemImgPath == null || item.itemImgPath == '') {
										html += '			<label for="' + tagId + '"><span class="itm-color-object ' + classOptChecked + '" style="background-color:' + item.itemDfn + ';" data-omni="' + opt.enNm + '_' + item.itemEnNm + '|' + prd.mdlNm + '|' + prd.mdlCode + '" >' + item.itemNm + '</span></label>';
									} else {
										html += '			<label for="' + tagId + '"><span class="itm-color-object img-chip ' + classOptChecked + '" style="background-image:url(https://images.samsung.com/kdp' + item.itemImgPath + ')" data-omni="' + opt.enNm + '_' + item.itemEnNm + '|' + prd.mdlNm + '|' + prd.mdlCode + '" >' + item.itemNm + '</span></label>';
									}

									//html += '			<label for="' + tagId + '"><span class="itm-color-object '+classOptChecked+'" style="background-color:' + item.itemDfn + ';" data-omni="' +opt.enNm + '_' +item.itemEnNm + '|' +prd.mdlNm+ '|' +prd.mdlCode+'" >' + item.itemNm + '</span></label>';   							
									html += '		</li>';
								});

								html += '		</ol>';
								html += '		<div class="slide-nav">';
								html += '			<button type="button" class="btn-prev">이전</button>';
								html += '			<button type="button" class="btn-next">다음</button>';
								html += '		</div>';
								html += '	</div>';
								html += '</div>';

							} else {
								html += '  <div class="pf-opt-sel">';
								html += '    <div class="filter-slick">';
								html += '      <ul class="swiper-wrapper">';

								$.each(opt.items, function (idx, item) {

									var tagId = "itm-contract-" + item.itemNo + "-" + item.goodsId;
									var classOptChecked = "";

									if (item.goodsId == null || item.goodsId == '') {
										html += '        <li class="swiper-slide disabled">';
									} else {
										html += '        <li class="swiper-slide">';
									}

									if (prd.goodsId == item.goodsId) {
										if (item.goodsId == null || item.goodsId == '') {
											//			            			html += '  <input type="radio" id="itm-contract-' + item.itemNo + '-' + item.goodsId + '" name="itm-contract-' + item.itemNo + '-' + item.goodsId + '" class="btn-filter" checked="checked" disabled="disabled" tabindex="-1">';
											html += '  <input type="radio" id="' + tagId + '" name="itm-contract-' + prd.mdlCode + '" class="btn-filter" checked="checked" disabled="disabled">';
										} else {
											//			            			html += '  <input type="radio" id="itm-contract-' + item.itemNo + '-' + item.goodsId + '" name="itm-contract-' + item.itemNo + '-' + item.goodsId + '" class="btn-filter" checked="checked" onclick="fnGetPfPrd(\'' + item.goodsId + '\', \'li-prd-' + prd.goodsId + '\')" tabindex="-1">';
											html += '  <input type="radio" id="' + tagId + '" name="itm-contract-' + prd.mdlCode + '" class="btn-filter" checked="checked" onclick="fnGetPfPrd(\'' + item.goodsId + '\', \'li-prd-' + prd.goodsId + '\', \'' + tagId + '\')">';
										}
										classOptChecked = "opt-checked";
									} else {
										if (item.goodsId == null || item.goodsId == '') {
											//			            			html += '  <input type="radio" id="itm-contract-' + item.itemNo + '-' + item.goodsId + '" name="itm-contract-' + item.itemNo + '-' + item.goodsId + '" class="btn-filter" disabled="disabled" tabindex="-1">';
											html += '  <input type="radio" id="' + tagId + '" name="itm-contract-' + prd.mdlCode + '" class="btn-filter" disabled="disabled">';
										} else {
											//			            			html += '  <input type="radio" id="itm-contract-' + item.itemNo + '-' + item.goodsId + '" name="itm-contract-' + item.itemNo + '-' + item.goodsId + '" class="btn-filter" onclick="fnGetPfPrd(\'' + item.goodsId + '\', \'li-prd-' + prd.goodsId + '\')" tabindex="-1">';
											html += '  <input type="radio" id="' + tagId + '" name="itm-contract-' + prd.mdlCode + '" class="btn-filter" onclick="fnGetPfPrd(\'' + item.goodsId + '\', \'li-prd-' + prd.goodsId + '\', \'' + tagId + '\')">';
										}
									}

									html += '  <label for="' + tagId + '"><span class="' + classOptChecked + '" data-omni="' + opt.enNm + '_' + item.itemEnNm + '|' + prd.mdlNm + '|' + prd.mdlCode + '" >' + item.itemNm + '</span></label>';
									html += '        </li>';
								});

								html += '      </ul>';
								html += '      <div class="slide-nav">';
								html += '        <button type="button" class="btn-prev">이전</button>';
								html += '        <button type="button" class="btn-next">다음</button>';
								html += '      </div>';
								html += '    </div>';
								html += '  </div>';
							}
						});

						html += '</div>';
						html += '<div class="card-option"></div>';
					} else {
						var lastIdx = opts.length - 1;
						var isExistColor = false;
						$.each(opts, function (idx, opt) {
							if (opt.useColor == 'Y') {
								isExistColor = true;
							}
						});

						if (isExistColor == false) {
							html += '<div class="card-opt"></div>';
						}

						$.each(opts, function (idx, opt) {
							if (idx === 0 && opt.useColor != 'Y') {
								html += '<div class="card-option">';
							}

							// 컬러칩
							if (opt.useColor == 'Y') {
								if (idx != 0) {
									html += '</div>';
								}
								html += '<div class="card-opt" ' + idx + '>';
								html += '	<div class="pf-color-sel">';
								html += '		<div class="option-slick">';
								html += '    		<ol class="itm-color-list swiper-wrapper">';

								$.each(opt.items, function (idx, item) {
									html += '			<li class="swiper-slide">';

									var tagId = "itm-color-" + item.itemNo + "-" + item.goodsId;
									var classOptChecked = "";

									if (prd.goodsId == item.goodsId) {
										if (item.goodsId == null || item.goodsId == '') {
											html += '		<input type="radio" id="' + tagId + '" name="itm-color-' + item.itemNo + '-' + item.goodsId + '" checked="checked" disabled="disabled" tabindex="-1">';
										} else {
											html += '		<input type="radio" id="' + tagId + '" name="itm-color-' + item.itemNo + '-' + item.goodsId + '" checked="checked" onclick="fnGetPfPrd(\'' + item.goodsId + '\', \'li-prd-' + prd.goodsId + '\', \'' + tagId + '\')" tabindex="-1">';
										}
										classOptChecked = "opt-checked";
									} else {
										if (item.goodsId == null || item.goodsId == '') {
											html += '		<input type="radio" id="' + tagId + '" name="itm-color-' + item.itemNo + '-' + item.goodsId + '" disabled="disabled" tabindex="-1">';
										} else {
											html += '		<input type="radio" id="' + tagId + '" name="itm-color-' + item.itemNo + '-' + item.goodsId + '" onclick="fnGetPfPrd(\'' + item.goodsId + '\', \'li-prd-' + prd.goodsId + '\', \'' + tagId + '\')" tabindex="-1">';
										}
									}

									if (item.itemImgPath == null || item.itemImgPath == '') {
										html += '				<label for="' + tagId + '"><span class="itm-color-object ' + classOptChecked + '" style="background-color:' + item.itemDfn + ';" data-omni="' + opt.enNm + '_' + item.itemEnNm + '|' + prd.mdlNm + '|' + prd.mdlCode + '" >' + item.itemNm + '</span></label>';
									} else {
										html += '				<label for="' + tagId + '"><span class="itm-color-object ' + classOptChecked + ' img-chip" style="background-image:url(https://images.samsung.com/kdp' + item.itemImgPath + ')" data-omni="' + opt.enNm + '_' + item.itemEnNm + '|' + prd.mdlNm + '|' + prd.mdlCode + '" >' + item.itemNm + '</span></label>';
									}
									html += '			</li>';
								});

								html += '			</ol>';
								html += '			<div class="slide-nav">';
								html += '				<button type="button" class="btn-prev">이전</button>';
								html += '				<button type="button" class="btn-next">다음</button>';
								html += '			</div>';
								html += '		</div>';
								html += '	</div>';
								html += '</div>';

								if (lastIdx != idx) {
									html += '<div class="card-option">';
								}
							} else {
								html += '  <div class="set-opt">';
								html += '    <span class="opt-tit" id="c-optio-option-' + opt.no + '-' + prd.goodsId + '">' + opt.nm + '</span>';
								html += '    <div id="cOptionList-' + opt.no + '-' + prd.goodsId + '" class="wrap-droplist">';
								html += '      <button class="droplist-button" aria-haspopup="listbox" aria-labelledby="cOption-droplist" id="cOption-droplist" title="' + opt.nm + ' 선택박스">';
								$.each(opt.items, function (subidx, item) {
									if (prd.goodsId === item.goodsId) {
										html += item.itemNm;
									}
								});
								html += '</button>';

								html += '        <ul class="droplist" tabindex="-1" role="listbox" aria-labelledby="c-option01" aria-activedescendant="c-option-' + prd.goodsId + '-' + idx + '">';

								$.each(opt.items, function (subidx, item) {
									html += '          <li id="c-option-' + prd.goodsId + '-' + idx + '-' + subidx + '" role="option"';
									if (prd.goodsId === item.goodsId) {
										html += ' class="droplist-item focused" aria-selected="true"';
									} else if (item.goodsId == null || item.goodsId == '') {
										html += ' class="droplist-item disabled"';
									} else {
										html += ' class="droplist-item"';
									}

									if (item.goodsId == null || item.goodsId == '') {
										//html += ' disabled="disabled"';  // TODO: disabled 처리 필요(css 변경)
									} else {
										var tagId = "cOptionList-" + opt.no + "-" + item.goodsId + " > .droplist-button";
										html += ' onclick="fnGetPfPrd(\'' + item.goodsId + '\', \'li-prd-' + prd.goodsId + '\', \'' + tagId + '\')"';
									}

									html += 'tabindex="-1" data-omni="' + opt.enNm + '_' + item.itemEnNm + '|' + prd.mdlNm + '|' + prd.mdlCode + '" >';
									html += item.itemNm;
									html += '          </li>';
								});

								html += '        </ul>';
								html += '    </div>';
								html += '  </div>';
							}

							if (lastIdx === idx) {
								html += '</div>';
							}
						});
					}

					//console.log(html);
					return html;
				}

				function htmlProductPrice
					(prd) {
					var stGbCd = '10';
					var isLogin = isLoginCheck;
					var contextPath = "/sec/";
					var stId = '1';
					var titPrice = "혜택가";
					if (prd.outletFlgYn != null && prd.outletFlgYn == 'Y') {
						titPrice = "아울렛 특가";
					}

					// test - start
					//stGbCd = '20';
					//prd.priceStr = '111|00|1200000|1100000||250000|750000';  // 패넷

					//stGbCd = '40';
					//prd.priceStr = '111|00|1200000|25000';  // 등외급몰

					//stGbCd = '50';
					//prd.priceStr = '111|10|1200000|1100000|1000000';  // 판매가/회원가/혜택가
					//prd.priceStr = '111|30|1200000|1100000|1000000|900000|13|99';  // 판매가/회원가/혜택가1/헤택가2/혜택가1범위/혜택가2범위
					//isLogin = true;

					// test - end



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
					if (prd.saleStatCd != '12' && prd.saleStatCd != '13' && prd.saleStatCd != '14') {
						return '  <div class="card-price"></div>';
					}

					// 셰프컬렉션 or BESPOKE 상품이고 B2C,패밀리넷(로그인),등외급몰(로그인),복지몰(로그인),기획전몰(로그인),비즈니스 스토어,회원사 기획전몰(로그인) 경우 가격 미노출
					if ((prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30') && (stGbCd == 10)) {
						//비스포크 최저가 
						if (prd.bespokeMinimumPrice != null && prd.bespokeMinimumPrice != 0) {

							var bspkMinPrice;

							if (price[1] == '00') {
								bspkMinPrice = parseInt(price[3]) + parseInt(prd.bespokeMinimumPrice);
							} else {
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

							if (stGbCd !== '80' && prd.membershipUseExcptYn == 'N' && (prd.carePlusType == null || typeof prd.carePlusType == "undefined" || prd.carePlusType == "N" || prd.carePlusType == "CP")) {
								if (prd.thirdPartyYn == 'N') {
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


						} else {

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
					else if ((prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30') && (
						(stGbCd == 20 && isLogin) ||
						(stGbCd == 30 && isLogin)
					)) {

						//비스포크 최저가 
						if (prd.bespokeMinimumPrice != null && prd.bespokeMinimumPrice != 0) {


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

							if (stGbCd !== '80') {
								if ('b2c' != 'epp') {
									if (isLogin && prd.membershipYn != 'Y') {
										html += '      <button type="button" class="btn-underline" onclick="goMembershipJoin()" data-omni="membership sign up">삼성전자 멤버십 연동하기</button>';
									} else {
										html += '      <span class="expect">적립 예정 포인트</span>';
										html += '      <span class="point">' + fnComma(prd.membershipPoint) + 'P ~</span>';
									}
								}
							}
							html += '    </div>';

							html += '  </div>';

						} else {

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
					else if ((prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30') && (
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
					} else if (stGbCd === '10') {
						html += '  <div class="card-price">';
						html += '    <div class="list-price">';
						if (prd.cpUseYn != "Y") {
							if (price[1] === '00' && price[2] != price[3] || price[1] != '00') {
								html += '      <span>기준가</span>';
								html += '      <em>' + fnComma(price[2]) + ' 원</em>';
							} else {
								if (price[1] == '00') {
									html += '		</div>';
									html += '      <div class="price-detail">';
									html += '        <span class="coupon">회원가</span>';
									html += '      	<div class="pic">';
									html += '      <em>' + fnComma(price[3]) + ' </em><span class="unit">원</span>';
									html += '      </div>';
								} else {
									html += '		</div>';
									html += '      <div class="price-detail">';
									html += '       <span class="coupon">' + titPrice + '</span>';
									html += '      	<div class="pic">';
									html += '      <em>' + fnComma(price[4]) + ' </em><span class="unit">원</span>';
									html += '      </div>';
								}
							}
						} else {
							if (price[1] === '00' && price[2] != price[3] || price[1] != '00') {
								html += '      <span>기준가</span>';
								html += '      <em>' + fnComma(price[2]) + '원</em>';
							} else {
								if (price[1] == '00') {
									html += '      <span>회원가</span>';
									html += '      <em>' + fnComma(price[3]) + '원</em>';
								} else {
									html += '      <span>' + titPrice + '</span>';
									html += '      <em>' + fnComma(price[4]) + '원</em>';
								}
							}
						}

						if (prd.cpUseYn == "Y") {
							html += '		</div>';
							html += '      <div class="price-detail">';
							html += '      <span class="coupon">쿠폰 적용 예상가</span>';
							html += '      	<div class="pic">';
							if ('false' == 'false') {
								html += '        		<em>' + fnComma((price[price.length - 1] - prd.goodsDetailVo.webCpAllDcAmt)) + '</em><span class="unit">원</span>';
							} else {
								html += '        		<em>' + fnComma((price[price.length - 1] - prd.goodsDetailVo.cpAllDcAmt)) + '</em><span class="unit">원</span>';
							}
							html += '        <button type="button" class="btn-downtool" aria-hidden="true"><span class="blind">툴팁보기(레이어열림)</span></button>';
						} else if (prd.cpUseYn != "Y" && price[1] != '00') {
							html += '		</div>';
							html += '      <div class="price-detail">';
							html += '      <span class="coupon">' + titPrice + '</span>';
							html += '      	<div class="pic">';
							html += '        		<em>' + fnComma(price[4]) + '</em><span class="unit">원</span>';
							html += '        <button type="button" class="btn-downtool" aria-hidden="true"><span class="blind">툴팁보기(레이어열림)</span></button>';
						} else if (prd.cpUseYn != "Y" && price[1] == '00' && price[1] === '00' && price[2] != price[3] || price[1] != '00') {
							html += '		</div>';
							html += '      <div class="price-detail">';
							html += '      <span class="coupon">회원가</span>';
							html += '      	<div class="pic">';
							html += '        		<em>' + fnComma(price[3]) + '</em><span class="unit">원</span>';
							html += '        <button type="button" class="btn-downtool" aria-hidden="true"><span class="blind">툴팁보기(레이어열림)</span></button>';
						}
						html += '        <!-- s : 툴팁 -->';
						html += '        <div class="box-tip" aria-hidden="true">';
						html += '          <ul>';
						if (prd.cpUseYn != 'Y') {
							html += '            <li><span class="tit">기준가</span><span class="price">' + fnComma(price[2]) + '원</span></li>';
							if (price[1] == '00') {
								html += '            <li class="total"><div class="coupon-price"><span class="tit">회원가</span><span class="price">' + fnComma(price[3]) + '원</span></div></li>';
							} else {
								if (prd.outletFlgYn != 'Y') {
									html += '            <li class="total"><div class="coupon-price"><span class="tit">' + titPrice + '</span><span class="price">' + fnComma(price[4]) + '원</span></div></li>';
								} else {
									html += '            <li class="total"><div class="coupon-price"><span class="tit">' + titPrice + '</span><span class="price">' + fnComma(price[4]) + '원</span></div></li>';
								}
							}
						} else {
							html += '            <li><span class="tit">기준가</span><span class="price">' + fnComma(price[2]) + '원</span></li>';
							if (price[1] == '00') {
								html += '            <li class="tit"><span class="tit">회원가</span><span class="price">' + fnComma(price[3]) + '원</span></li>';
							} else {
								if (prd.outletFlgYn != 'Y' && price[1] != '00' && price[2] != price[3]) {
									html += '            <li class="tit"><span class="tit">' + titPrice + '</span><span class="price">' + fnComma(price[4]) + '원</span></li>';
								} else if (prd.outletFlgYn == 'Y') {
									html += '            <li class="tit"><span class="tit">' + titPrice + '</span><span class="price">' + fnComma(price[4]) + '원</span></li>';
								}
							}
							html += '				<li class="total">';
							if ('false' == 'false') {
								html += '		<div class="coupon-price"><span class="tit">쿠폰 적용 예상가</span><span class="price">' + fnComma((price[price.length - 1] - prd.goodsDetailVo.webCpAllDcAmt)) + '원</span></div>';
								if (prd.goodsDetailVo.totCompVal > 0) {
									html += '		<div class="app-price"><span class="tit">앱 쿠폰 적용 시</span><span class="price">' + fnComma(prd.goodsDetailVo.totCompVal) + '원 추가 할인</span></div>';
								}
							} else {
								html += '		<div class="coupon-price"><span class="tit">쿠폰 적용 예상가</span><span class="price">' + fnComma((price[price.length - 1] - prd.goodsDetailVo.cpAllDcAmt)) + '원</span></div>';
							}
							html += '				</li>';
						}

						html += '          </ul>';
						html += '        </div>';
						html += '        <!-- e : 툴팁 -->';
						if (prd.cpUseYn == "Y" || (prd.cpUseYn != "Y" && price[1] == '00' && price[1] === '00' && price[2] != price[3] || price[1] != '00')
							|| prd.cpUseYn != "Y" && price[1] != '00') {
							html += '      </div>';
						}
						html += '    </div>';

						//(한달살기) 특정 SKU 멤버십 포인트 미노출 처리
						if (!((prd.mdlCode === 'NT950QDB-KC58T' || prd.mdlCode === 'NT950QDB-KC58F' || prd.mdlCode === 'NT950XDB-KC58O' || prd.mdlCode === 'NT950XDB-KC58F' ||
							prd.mdlCode === 'NT930XDB-KC58O' || prd.mdlCode === 'NT930XDB-KC58F' || prd.mdlCode === 'NT930QDB-KC58O' || prd.mdlCode === 'NT930QDB-KC58F' ||
							prd.mdlCode === 'NT950QDB-KD71T' || prd.mdlCode === 'NT950QDB-KD71U' || prd.mdlCode === 'NT950QDB-KD71V' || prd.mdlCode === 'NT950XDC-XD71R' ||
							prd.mdlCode === 'NT950XDC-XD71T' || prd.mdlCode === 'NT950XDB-KD71T' || prd.mdlCode === 'NT950XDB-KD71U' || prd.mdlCode === 'NT950XDB-KD71V' ||
							prd.mdlCode === 'NT950QDB-KC58O' || prd.mdlCode === 'NT930QDB-KC58T' || prd.mdlCode === 'NT950XDC-XL51O' || prd.mdlCode === 'SM-F926NZUYKOO' ||
							prd.mdlCode === 'SM-F711NZUYKOO' || prd.mdlCode === 'SM-F721NAWZKOO')
							|| (prd.mdlCode === 'SM-F700NZKAKOO' && ('prd' === 'local'
								|| 'prd' === 'dev'
								|| 'prd' === 'stg')))) {
							html += '    <div class="point-detail">';


							if (stGbCd !== '80' && prd.membershipUseExcptYn == 'N' && (prd.carePlusType == null || typeof prd.carePlusType == "undefined" || prd.carePlusType == "N" || prd.carePlusType == "CP")) {
								if (prd.thirdPartyYn == 'N') {
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

						if (stGbCd !== '80') {
							if ('b2c' != 'epp') {
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
						html += '        <em>' + fnComma(prc1 + prc2) + '</em><span class="unit">원</span>';
						html += '      </div>';
						html += '    </div>';

						html += '  </div>';
					} else if (stGbCd === '50') {
						html += '  <div class="card-price">';
						html += '    <div class="price-detail">';

						if (!isLogin) {
							html += '      <span class="sale">' + fnComma(price[2]) + ' 원</span>';
							html += '      <div class="pic">';
							if ('monitors' == 'soho' && 'monitors' != '') {
								html += '        <div class="pic soho-pic"><a href="javascript:void();" class="only" onclick="goSohoLogin()"><span>회원가 보기</span></a>';
							} else {
								html += '        <strong class="only"><span>Members Only</span></strong>';
							}
							html += '        <button type="button" class="btn-downtool"><span class="blind">툴팁보기(레이어열림)</span></button>';
							html += '        <!-- s : 툴팁 -->';
							html += '        <div class="box-tip" aria-hidden="true" style="display: none;">';
							html += '          <ul>';
							html += '            <li><span>최종 판매가는 로그인을 하셔야 확인 가능합니다.</span></li>';
							html += '          </ul>';
							html += '        </div>';
							html += '        <!-- e : 툴팁 -->';
							html += '      </div>';
						} else {
							if (price[1] === '00' && price[2] != price[3] || price[1] != '00') {
								html += '      <span class="sale">' + fnComma(price[2]) + ' 원</span>';
							}
							html += '      <div class="pic">';

							if (price[1] === '00') {
								html += '        <em>' + fnComma(price[3]) + '</em><span class="unit">원</span>';
							} else {
								html += '        <em>' + fnComma(price[4]) + '</em><span class="unit">원</span>';
							}

							//html += '        <em>' + fnComma(price[3]) + '</em><span class="unit">원</span>';

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
								html += '            <li class="total"><span class="tit">' + titPrice + '</span><span class="price">' + fnComma(price[4]) + ' 원</span></li>';
							}
							//	    			html += '            <li class="total"><span class="tit">회원가</span><span class="price">' + fnComma(price[3]) + ' 원</span></li>';

							html += '          </ul>';
							html += '        </div>';
							html += '        <!-- e : 툴팁 -->';
							html += '      </div>';

							// 상품 구간 별 구매 가격
							if (prd.goodsPriceRangeInfoList != null) {
								/* html += '<div class="set-count">';
								html += '	<strong class="tit">구매수량별 회원가</strong>';
								html += '	<ul>';
								for(var i = 0; i < prd.goodsPriceRangeInfoList.length; i++){
									if(prd.goodsPriceRangeInfoList[i].rangeEndQty == 1) {
										continue;
									}
									html += '		<li><span class="count">' + prd.goodsPriceRangeInfoList[i].rangeStrtQty + '~' + prd.goodsPriceRangeInfoList[i].rangeEndQty + '개</span><strong class="price">' + fnComma(prd.goodsPriceRangeInfoList[i].salePrc2) + '원</strong></li>';	
								}
								html += '	</ul>';
								html += '</div>';	 */
							}
						}

						html += '    </div>';

						html += '  </div>';

					} else if (stGbCd === '60') {	// 
						html += '  <div class="card-price">';
						html += '    <div class="price-detail">';
						html += '      <span class="sale">' + fnComma(price[2]) + ' 원</span>';
						html += '      <div class="pic">';
						html += '        <em>' + fnComma(price[3]) + '</em><span class="unit">원</span>';
						html += '        <!-- s : 툴팁 -->';
						html += '        <div class="box-tip" aria-hidden="true">';
						html += '          <ul>';
						html += '            <li><span class="tit">판매가</span><del class="price">' + fnComma(price[2]) + ' 원</del></li>';
						html += '            <li class="total"><span class="tit">회원가</span><span class="price">' + fnComma(price[3]) + ' 원</span></li>';
						html += '          </ul>';
						html += '        </div>';
						html += '        <!-- e : 툴팁 -->';
						html += '      </div>';
						html += '    </div>';

						html += '  </div>';
					} else if (stGbCd === '70' || stGbCd === '80') {
						// 임직원몰(기획전몰)_체험단말
						if (
							contextPath.indexOf("23_ma") > -1 ||
							contextPath.indexOf("23_pa") > -1 ||
							contextPath.indexOf("23_im") > -1 ||
							contextPath.indexOf("23_fan") > -1
						) {
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
						else if (stGbCd === '70' && 'N' == 'Y') {
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
						else if (stGbCd === '70' && 'N' == 'Y') {
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
								html += '            <li class="total"><span class="tit">임직원가</span><span class="price">' + fnComma(price[3]) + ' 원</span></li>';
							} else {
								html += '            <li><span class="tit">임직원가</span><del class="price">' + fnComma(price[3]) + ' 원</del></li>';
								html += '            <li class="total"><span class="tit">' + titPrice + '</span><span class="price">' + fnComma(price[4]) + ' 원</span></li>';
							}
							html += '          </ul>';
							html += '        </div>';
							html += '        <!-- e : 툴팁 -->';
							html += '      </div>';
							html += '    </div>';
							html += '    <div class="point-detail">';
						}
						//2022.06.13 갤캠스 추가
						else if ((stGbCd == '80') && (stId == '122')) {
							html += '  <div class="card-price">';
							html += '  <div class="price-detail bott-fix">';
							html += '  <div class="pic-tag has_strike">';
							html += '   <span>기준가</span>'
							if (price[1] === '00' && price[2] != price[3] || price[1] != '00') {
								html += '      <em>' + fnComma(price[2]) + ' 원</em>';
							}
							html += '     </div>';

							html += '  <div class="pic-mem">';
							html += '   <span>교육할인가</span>'
							if (price[1] === '00') {
								html += '        <em>' + fnComma(price[3]) + '원</em>';
							} else {
								html += '        <em>' + fnComma(price[4]) + '원</em>';
							}
							html += '     </div>';
							html += '    </div>';
							html += '    <div class="point-detail">';
						}
						// 그외
						else {
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
								html += '            <li class="total"><span class="tit">' + titPrice + '</span><span class="price">' + fnComma(price[4]) + ' 원</span></li>';
							}
							html += '          </ul>';
							html += '        </div>';
							html += '        <!-- e : 툴팁 -->';
							html += '      </div>';
							html += '    </div>';
							html += '    <div class="point-detail">';
						}

						var svmnUseYn = '';

						if (stGbCd !== '80' && svmnUseYn != 'N') {
							if (stId == '266' || stId == '206') { // 210416 복지몰 이지만 ST_ID값이 266 인 사이트는 멤버십 관련 항목 안보게 함 정재동   -->  B2B2C에서 포인트 노출  
								if (isLogin && prd.membershipYn != 'Y') {
									html += '      <button type="button" class="btn-underline" onclick="goMembershipJoin()" data-omni="membership sign up">삼성전자 멤버십 연동하기</button>';
								} else {
									html += '      <span class="expect">적립 예정 포인트</span>';
									html += '      <span class="point">' + fnComma(prd.membershipPoint) + 'P</span>';
								}
							}

						}
						if ((stId == '200') && svmnUseYn != 'N') {
							if (isLogin && prd.membershipYn != 'Y') {
								html += '      <button type="button" class="btn-underline" onclick="goMembershipJoin()" data-omni="membership sign up">삼성전자 멤버십 연동하기</button>';
							} else {
								html += '      <span class="expect">적립 예정 포인트</span>';
								html += '      <span class="point">' + fnComma(prd.membershipPoint) + 'P</span>';
								html += '    <div class="point-detail">';

							}
						}
						//2022.05.23 갤캠스 ST_ID값 추가
						if ((stGbCd == '80') && (stId == '122') && svmnUseYn != 'N') {
							//console.log("❤❤❤❤❤❤❤❤", prd.membershipPoint);
							if (isLogin && prd.membershipYn != 'Y') {
								html += '      <button type="button" class="btn-underline" onclick="goMembershipJoin()" data-omni="membership sign up">삼성전자 멤버십 연동하기</button>';
							} else {
								html += '      <span class="expect">적립 예정 포인트</span>';
								html += '      <span class="point">' + fnComma(prd.membershipPoint) + 'P</span>';
								html += '    <div class="point-detail">';

							}
						}

						html += '    </div>';

						html += '  </div>';
					} else if (stGbCd === '90' && stId === '193') {	// 210407  임직원몰(e카달로그), ST_ID값이 193인 사이트 정재동
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
						html += '            <li class="total"><span class="tit">' + titPrice + '</span><span class="price">' + fnComma(price[3]) + ' 원</span></li>';
						html += '          </ul>';
						html += '        </div>';
						html += '        <!-- e : 툴팁 -->';
						html += '      </div>';
						html += '    </div>';

						html += '  </div>';
					}

					return html;
				}



				function htmlProductBtn(prd) {
					var contextPath = "/sec/";
					var prdLink = '/sec/' + prd.goodsDetailUrl;
					var loginLink = '/sec/' + 'member/indexLogin/';
					var stGbCd = '10';
					var isLogin = isLoginCheck;

					var html = '';
					var btnCd = ''; // 10: 구매하기(주문/결제), 11: 조합하여 구매하기, 12:디자인하기(상품속성 커스텀 상품 여부Y) ,20: 재입고 알림(상세), 21: 재입고 알림(로그인), 30: 자세히 보기, 00: 판매종료(임직원몰(기획전몰)_체험단말용)


					var stId = '1';
					// 구매하기

					if (stGbCd === '10') {
						if (prd.saleStatCd === '12') {
							if (prd.customGoodsYn === 'Y' || prd.customGoodsYn === 'D') {
								btnCd = '12';
							} else {
								if (prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30') {
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

						if (prd.mdlCode == 'SM-F926NZUYKOO' || prd.mdlCode == 'SM-F711NZUYKOO' || prd.mdlCode == 'SM-F916NZKAKOO' || prd.mdlCode == 'SM-F721NAWZKOO') {
							btnCd = '30';
						}
					} else if (['20', '30'].indexOf(stGbCd) > -1) {
						if (prd.saleStatCd === '12') {
							if (prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30') {
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
							if (prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30') {
								btnCd = '11';
							} else {
								btnCd = '10';
							}
						} else if (prd.saleStatCd === '17') {
							btnCd = '30';	// 미판매 자세히 보기 추가(10/05)
						}
					} else if (['70', '80'].indexOf(stGbCd) > -1) {
						// 임직원몰(기획전몰)_체험단말
						if (
							contextPath.indexOf("23_ma") > -1 ||
							contextPath.indexOf("23_pa") > -1 ||
							contextPath.indexOf("23_im") > -1 ||
							contextPath.indexOf("23_fan") > -1
						) {
							if (prd.saleStatCd === '12') {
								if (prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30') {
									btnCd = '11';
								} else {
									btnCd = '10';
								}
							} else {
								btnCd = '00';
							}
						}
						// 그외
						else {
							if (prd.saleStatCd === '12') {
								if (prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30') {
									btnCd = '11';
								} else {
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
							if (prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30') {
								btnCd = '11';
							} else {
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
							if (prd.bspkGoodsYn === 'Y' || prd.goodsAddTpCd === '30') {
								btnCd = '11';
							} else {
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
						if (stGbCd == '10' && prd.winePickupGoodsYn != null && prd.winePickupGoodsYn == 'Y' && prd.winePickupGoodsYn != '') {
							html += '    <!-- 200723 href 속성 삭제 --><button type="button" class="btn btn-d btn-type2" onclick="wine_Action_PF(\'' + prdLink + '\');return false;" data-omni=\"' + prd.mdlNm + '|' + prd.mdlCode + '\">구매하기</button>';
						} else {
							html += '    <!-- 200723 href 속성 삭제 --><button type="button" class="btn btn-d btn-type2" onclick="netFunnel_Action_PF(\'' + prdLink + '\');return false;" data-omni=\"' + prd.mdlNm + '|' + prd.mdlCode + '\">구매하기</button>';
						}
					} else if (btnCd === '11') {
						if (stGbCd == '20' || stGbCd == '30') {
							// 패널 상품일 경우 자동 선택 - 2022.09.06
							var bspkParam = '';
							if ('50' == prd.goodsAddTpCd) {
								bspkParam = '&pannelYn=Y';
							} else {
								bspkParam = '&selModel=' + prd.mdlCode;
							}
							html += '    <!-- 200723 href 속성 삭제 --><button type="button" class="btn btn-d btn-type2" onclick="bespoke_Action_PF(\'bespoke/buy/fam/?id=bespoke-make' + bspkParam + '\');return false;" data-omni=\"' + prd.mdlNm + '|' + prd.mdlCode + '\">조합하여 구매하기</button>';
						}
						else {
							html += '    <!-- 200723 href 속성 삭제 --><button type="button" class="btn btn-d btn-type2" onclick="netFunnel_Action_PF(\'' + prdLink + '\');return false;" data-omni=\"' + prd.mdlNm + '|' + prd.mdlCode + '\">조합하여 구매하기</button>';
						}
					} else if (btnCd === '20') {
						html += '    <!-- 200723 href 속성 삭제 --><button type="button" class="btn btn-d btn-type5" onclick="netFunnel_Action_PF(\'' + prdLink + '?stock-notice=Y\');" data-omni=\"' + prd.mdlNm + '|' + prd.mdlCode + '\">재입고 알림</button>';
					} else if (btnCd === '21') {
						html += '    <!-- 200723 href 속성 삭제 --><button type="button" class="btn btn-d btn-type5" onclick="netFunnel_Action_PF(\'' + loginLink + '?returnUrl=' + prdLink + '\');return false;" data-omni=\"' + prd.mdlNm + '|' + prd.mdlCode + '\">재입고 알림</button>';
					} else if (btnCd === '30') {
						if (stGbCd == '10' && prd.winePickupGoodsYn != null && prd.winePickupGoodsYn == 'Y' && prd.winePickupGoodsYn != '') {
							html += '    <!-- 200723 href 속성 삭제 --><button type="button" class="btn btn-d btn-type1" onclick="wine_Action_PF(\'' + prdLink + '\');return false;" data-omni=\"' + prd.mdlNm + '|' + prd.mdlCode + '\">자세히 보기</button>';
						} else {
							if (stGbCd == '20' || stGbCd == '30') {
								html += '    <!-- 200723 href 속성 삭제 --><button type="button" class="btn btn-d btn-type1" onclick="netFunnel_Action_PF(\'' + prdLink + '\');return false;" data-omni=\"' + prd.mdlNm + '|' + prd.mdlCode + '\">재입고 알림 신청</button>';
							} else if ((stGbCd == '50' || stGbCd == '60') && prd.flagStr == '매장픽업' && prd.useStkCd == '90') {
								html += '    <!-- 200723 href 속성 삭제 --><button type="button" class="btn btn-d btn-type2" onclick="netFunnel_Action_PF(\'' + prdLink + '\');return false;" data-omni=\"' + prd.mdlNm + '|' + prd.mdlCode + '\">매장 픽업</button>';
							}
							else {
								html += '    <!-- 200723 href 속성 삭제 --><button type="button" class="btn btn-d btn-type1" onclick="netFunnel_Action_PF(\'' + prdLink + '\');return false;" data-omni=\"' + prd.mdlNm + '|' + prd.mdlCode + '\">자세히 보기</button>';
							}

						}
					} else if (btnCd === '00') {	// 임직원몰(기획전몰)_체험단말
						html += '    <!-- 200723 href 속성 삭제 --><button type="button" class="btn btn-d btn-type1" onclick="saleEndAlert();">판매종료</button>';
					} else if (btnCd === '12') { //상품속성 커스텀 상품 일때 
						html += '    <!-- 200723 href 속성 삭제 --><button type="button" class="btn btn-d btn-type2" onclick="netFunnel_Action_PF(\'' + prdLink + '\');return false;" data-omni=\"' + prd.mdlNm + '|' + prd.mdlCode + '\">디자인하기</button>';
					}

					html += '  </div>';

					return html;
				}

				/*
				* @ 판매종료 alert: 임직원몰(기획전몰)_체험단말
				*/
				function saleEndAlert() {
					let alertData = {
						title: "alert",
						content: "판매가 종료되었습니다."
					};
					commonAlert(alertData);
					openLayer('commonAlert');
				}

				function appenPfPrdCardAdvAndGetStartIdx(index) {

					var page = $('#page').val();
					var liClass = '';
					if (page !== '1') {
						return index;
					}

					if (pfPrdCardAdv == undefined) {
						return index;
					}

					if (pfPrdCardAdv.cardTpCd === '10' && index == 0) { //대형 카드 배너     			
						liClass = 'visual visual-col2';
					} else if (pfPrdCardAdv.cardTpCd === '20') {  //소형 카드 배너     			
						liClass = 'visual';
					}
					var prdLink = '';
					if (pfPrdCardAdv.linkUrl != null && pfPrdCardAdv.linkUrl != '') {
						prdLink = pfPrdCardAdv.linkUrl;
					} else {
						prdLink = '/sec/' + pfPrdCardAdv.goodsPath;
					}

					var html = '';

					if (pfPrdCardAdv.cardTpCd === '10' && index == 0) {
						html += '<li class="' + liClass + '" onclick="netFunnel_Action_PF(\'' + prdLink + '\');" style="cursor: pointer;">';
						html += '	<div class="visual-inner">';
						html += '		<div class="img">';
						html += '			<img src="' + pfPrdCardAdv.bnrImgPath + '" alt="' + pfPrdCardAdv.bnrText + '" class="pc"><!-- desktop image -->';
						html += '			<img src="' + pfPrdCardAdv.bnrMobileImgPath + '" alt="' + pfPrdCardAdv.bnrText + '" class="mo"><!-- mobile image -->';
						html += '		</div>';
						html += '		<div class="visual-detail">';
						html += '			<div class="info">';
						//html += '				<p class="ware">2020 New 셰프컬렉션 패밀리허브</p>';
						html += '				<p class="name">' + pfPrdCardAdv.bnrText + '</p>';
						//html += '				<p class="data">2020-04-24 ~ 2020-05-31</p>';
						html += '			</div>';
						html += '			<div class="btns">';
						html += '				<ul>';
						//html += '					<li><button type="button" class="btn btn-d btn-type1"  data-omni="product card_learn more |' +pfPrdCardAdv.mdlNm+ '|' +pfPrdCardAdv.mdlCode+'" >자세히 보기</button></li>';
						//html += '					<li><a href="javascript:;" class="link-compare type-wht" title="비교하기(새창열림)">비교하기</a></li>';
						html += '				</ul>';
						html += '			</div>';
						html += '		</div>';
						html += '	</div>';
						html += '</li>';
						$('.list-product > .list ').append(html);
						index = 2;
					} else if (pfPrdCardAdv.cardTpCd === '20' && index == (pfPrdCardAdv.showPstCd - 1)) {
						html += '<li class="' + liClass + '">';
						html += '	<div class="banner-inner">';
						html += '		<a href="javascript:netFunnel_Action_PF(\'' + prdLink + '\');" >';
						html += '			<img src="' + pfPrdCardAdv.bnrImgPath + '" alt="' + pfPrdCardAdv.bnrText + '" class="pc"><!-- desktop image -->';
						html += '			<img src="' + pfPrdCardAdv.bnrMobileImgPath + '" alt="' + pfPrdCardAdv.bnrText + '" class="mo"><!-- mobile image -->';
						html += '		</a>';
						html += '	</div>';
						html += '</li>';
						$('.list-product > .list ').append(html);
						index++;
					}
					return index;
				}

				function appendProductCard(products, sortBtn, wishGoods) {

					var ctgPath = 'monitors';

					// pfPrdCardAdv 추가
					var startIdx = 0;
					var productCnt = 0;
					if (wishGoods != null && wishGoods.length > 0) {
						for (var i = 0; i < products.length; i++) {
							if (wishGoods.indexOf(products[i].goodsId) > -1) {
								products[i].wishYn = "Y";
							}
						}
					}


					var index = 0;

					$.each(products, function (idx, prd) {

						appendPfBannerAdv(index);
						index = appenPfPrdCardAdvAndGetStartIdx(index);
						var html = '';
						if (prd.outletFlgYn != null && prd.outletFlgYn == 'Y') {
							html += '<li class="item outlet" id="li-prd-' + prd.goodsId + '">';
						} else {
							html += '<li class="item" id="li-prd-' + prd.goodsId + '">';
						}

						html += htmlProductCard(prd, idx);
						html += '</li>';

						$('.list-product > .list ').append(html);
						productCnt++;
						index++;
					});

					// 웹접근성 포커싱 처리 
					$(".list-product li .item-inner").find('.card-img[data-focus-target="true"]').focus();

					$(".list-product li .item-inner").find('.card-img[data-focus-target="true"]').removeAttr("data-focus-target");

					index = 0;

					/* PF 목록 높이 조절  */
					pfListHeight();

					/* PF 이미지 변경 */
					pfImgChange();

					var totalCount = $('#totalCount').val();
					var page = $('#page').val();
					var rows = $('#rows').val();

					var presentPrdCount = $('#presentPrdCount').val();
					// 정렬순
					if (sortBtn == "sort") {
						var totalPresentCount = parseInt(productCnt);
					} else {
						// 더보기
						var totalPresentCount = parseInt(presentPrdCount) + parseInt(productCnt);
					}

					if (parseInt(totalPresentCount) < parseInt(totalCount)) {
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

				function appendNoList() {
					var html = '';
					html += '<li class="empty-box" style="width:100%">';
					html += '<div class="empty-line">';
					html += '<span class="no-content">판매 가능한 상품이 없습니다.</span>';
					html += '</div>';
					html += '</li>';
					$('.list-product > .list ').append(html);
				}

				function initBtnGoods() {
					$('.btn-good').off().on('click', function (e) {
						e.preventDefault();
						var btnclass = $(this);
						goodsPf.fnLoginCheck(function (isLogin) {
							if (!isLogin) {
								location.href = '/sec/' + "member/indexLogin/?returnUrl=" + location.pathname;
								return;
							} else {
								var goodsId = $(e.target).closest('button').data('goods-id');

								if (btnclass.hasClass('on')) {
									var url = '/sec/' + 'xhr/goods/user/deleteWish';
								} else {
									var url = '/sec/' + 'xhr/goods/user/insertWish';
								}

								ajax.call({
									url: url
									, data: { goodsId: goodsId }
									, done: function (data) {
										$('.btn-good[data-goods-id="' + goodsId + '"]').each(function (index, btn) {
											if (data.actGubun === 'add') {
												// 찜하기 추가
												$(btn).addClass("on");
												$(btn).children('i').text('좋아요 선택');
												$(btn).attr("title", "선택됨");
												$('.btn-good[data-goods-id="' + goodsId + '"]').next().show();
												$('.btn-good[data-goods-id="' + goodsId + '"]').next().next().hide();
												$('.bookmarkOn').find('a').off().on('click', function () {
													// 전체보기
													location.href = '/sec/' + "mypage/interest/indexMyHotList/";
												});

												// 애드브릭스 닷컴 앱 적용_230112, 웹 적용_230202
												if ('1' == '1') {

													let adbrixId = '#li-prd-' + goodsId;

													let fromData = $(e.target).parents(adbrixId);

													let adbrixSalePrice = 0;
													let adbrixTotalPrice = 0;

													if (fromData.length == 0) {
														fromData = $(e.target).closest('li');

														adbrixSalePrice = parseInt(fromData.find('.prd-price').children('#curPrice').val());
														adbrixTotalPrice = parseInt(fromData.find('.prd-price').children('#salePrice').val());
													} else {
														adbrixSalePrice = parseInt(fromData.find('.price-detail .box-tip').find('li del').first().text().slice(0, -2).replace(/,/g, ''));
														adbrixTotalPrice = parseInt(fromData.find('.total').children('.price').text().slice(0, -2).replace(/,/g, ''));
													}

													let adbrixProductId = fromData.find('.prd-num').text();
													let adbrixProductName = fromData.find('.prd-name').text();
													let adbrixProductPrice = adbrixSalePrice;
													let adbrixProductDiscount = adbrixSalePrice - adbrixTotalPrice;
													let adbrixProductQuantity = 1;
													let adbrixProductCategory = 'PC/프린터';
													let adbrixProductCategorySub = '모니터';


													if ('false' == 'true') {

														let adbrixEventParam = {};
														let adbrixProduct = {};
														let adbrixProductList = [];

														adbrixProduct.productId = adbrixProductId;
														adbrixProduct.productName = adbrixProductName;
														adbrixProduct.price = adbrixProductPrice;
														adbrixProduct.discount = adbrixProductDiscount;
														adbrixProduct.quantity = adbrixProductQuantity;
														adbrixProduct.category = adbrixProductCategory;
														adbrixProduct.categorySub = adbrixProductCategorySub;

														adbrixProductList.push(adbrixProduct);

														adbrixEventParam.productList = adbrixProductList;

														let adbrixEventParamJsonStr = JSON.stringify(adbrixEventParam);

														//Adbrix Native call
														window.secapp.addToWishList(adbrixEventParamJsonStr);

													} else {

														adbrix.onInitialized(function adbrixInitialized() {

															var product = adbrix.commerceAttr.product(
																adbrixProductId
																, adbrixProductName
																, adbrixProductPrice
																, adbrixProductQuantity
																, adbrixProductDiscount
																, 'KRW'
																, adbrix.commerceAttr.categories(adbrixProductCategory, adbrixProductCategorySub)
															);

															adbrix.commerce.addToWishList(product);
														});
													}
												}

											} else if (data.actGubun === 'remove') {
												// 찜하기 삭제
												$(btn).removeClass("on");
												$(btn).children('i').text('좋아요 미선택');
												$(btn).removeAttr('title');
												$('.btn-good[data-goods-id="' + goodsId + '"]').next().next().show();
												$('.btn-good[data-goods-id="' + goodsId + '"]').next().hide();
											} else if (data.actGubun === 'MYPAGE0001') {
												let alertData = {
													title: ""
													, content: "찜하기는 100개까지만 가능합니다."
													, btnText: "확인"
												};
												commonAlert(alertData);
												openLayer('commonAlert');
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
										});
									}

								});
							}
						});
					});
				}

				function fnGetPfPrd(goodsId, targetId, focusId) {

					ajax.call({
						data: {
							goodsId: goodsId, targetId: targetId
						}
						, url: "/sec/xhr/pf/goods"
						, type: 'POST'
						, dataType: 'json'
						, done: function (data) {
							$('#' + data.targetId).html(htmlProductCard(data.product));
							$('#' + data.targetId).attr('id', 'li-prd-' + data.product.goodsId);

							//웹접근성 - 포커스 유지. 2021.01.14
							if (focusId !== null && focusId !== undefined && $.trim(focusId).length > 0) {
								$("#" + focusId).focus();
							}
							//$('.filter-slick').filter(':not(.slick-initialized)').slick(fliterSlickPfOpt);

							// 관심상품 초기화
							initBtnGoods();

							filterSel(); /* 옵션 좌우 스크롤 버튼 추가 */

							/* PF 이미지 변경 */
							pfImgChange();

							/* PF 목록 높이 조절  */
							pfListHeight();

						}
					});
				}

				var morePrdWorking = true;
				var isLoginCheck = false;
				function morePrd() {
					if (morePrdWorking) {
						morePrdWorking = false;
						$('#morePrd').prop('disabled', true);

						var page = $('#page').val();
						page++;
						$('#page').val(page);

						var queryString = '';
						$('.opt-area > span').each(function (index, item) {
							queryString += (queryString === '' ? '' : '+') + $(item).data('search-filter');
						});


						$('#rows').val(15);

						ajax.call({
							data: {
								searchFilter: queryString
								, dispClsfNo: 39030000
								, sortType: $('#odrDeliveryCycleBtn').parent().find('.focused').data('sort-type')
								, page: page
								, offset: $('#presentPrdCount').val()
								, rows: $('#rows').val()
							}
							, url: "/sec/xhr/pf/goodsListMore"
							, type: 'POST'
							, dataType: 'json'
							, done: function (data) {
								appendProductCard(data.products, '', data.wishGoods);
								morePrdWorking = true;
							}
						});
					}
				}

				$(window).scroll(function () {
					if ($(window).scrollTop() >= $("#morePrd").offset().top - $(window).height()) {
						if ($('#morePrd').is(':visible')) {
							var stGbCd = '10';
							if (morePrdWorking && (stGbCd == '20' || stGbCd == '30')) {
								$("#morePrd").trigger('click');
							}
						}
					}
				});

				$(window).on('popstate', function (event) {
					//itemInit($('#odrDeliveryCycleBtn').parent().find('.focused').data('sort-type'));
					window.location = document.location.href;
				});


				function buyNow(goodsId) {
					var reqData = {
						goodsIds: goodsId,
						stGbCd: "10",
						stId: "1",
						mbrNo: "0",
						nowBuyYn: "Y",
						buyQtys: 1,
						orderType: "ONCE",
					};

					var nowBuyOptions = {
						url: "/sec/xhr/order/insertCart"
						, data: reqData
						, done: function (data) {
							var form = document.createElement('form');

							form.setAttribute('action', "/sec/order/");
							form.setAttribute('target', "_self");
							form.setAttribute('method', 'post');

							document.body.appendChild(form);
							form.submit();
						}
					};
					ajax.call(nowBuyOptions);

				}

				function appendPfBannerAdv(currentIdx) {
					//console.log(currentIdx + ", " + currentIdx / 3);

					var page = $('#page').val();
					var startIdx = 0;
					var liClass = '';
					if (page !== '1') {
						return;
					}

					if (pfBannerAdv == undefined) {
						return;
					}

					if (currentIdx === (parseInt(pfBannerAdv.showPstCd) - 1) * 3) {
						var prdLink = '';
						if (pfBannerAdv.linkUrl != null && pfBannerAdv.linkUrl != '') {
							prdLink = pfBannerAdv.linkUrl;
						} else {
							prdLink = '/sec/' + pfBannerAdv.goodsPath;
						}
						liClass += '<li class="banner">';
						liClass += '	<button type="button"  class="banner-inner" onclick="netFunnel_Action_PF(\'' + prdLink + '\');" style="cursor: pointer;">';
						liClass += '		<img src="' + pfBannerAdv.bnrImgPath + '" alt="' + pfBannerAdv.bnrText + '" class="pc"><!-- desktop image -->';
						liClass += '		<img src="' + pfBannerAdv.bnrMobileImgPath + '" alt="' + pfBannerAdv.bnrText + '" class="mo"><!-- mobile image -->';
						liClass += '		<div class="banner-info">';
						liClass += '			<div class="banner-info-inner">';
						//liClass += '				<p class="sub">다품목 동시 구매 혜택부터, 내 맘대로 골라 받는 사은품까지!</p>';
						//liClass += '				<strong class="tit">' + pfBannerAdv.bnrText + '</strong>';
						//liClass += '				<p class="date">2020-04-24 ~ 2020-05-31</p>';
						//liClass += '				<button type="button" class="btn btn-d btn-type1" data-omni="product promotion_learn more |' +pfBannerAdv.mdlNm+ '|' +pfBannerAdv.mdlCode+'" >자세히 보기</button>';
						liClass += '			</div>';
						liClass += '		</div>';
						liClass += '	</button>';
						liClass += '</li>';

						$('.list-product > .list ').append(liClass);
					};
				}


				function productCompareView(prd) {

					var html = '';
					var dispClsfNo = '39030000'
					var mdlCode = prd.mdlCode;
					var compDispClsfEnNm = prd.compDispClsfEnNm;

					var lastStr = '';
					var last2Str = '';

					lastStr = mdlCode.substr(mdlCode.length - 1, 1)
					last2Str = mdlCode.substr(mdlCode.length - 2, 1)
					//console.log(dispClsfNo+" ::: "+prd.goodsTpCd+'모델 이름 ==> '+mdlCode+' :: lastStr '+lastStr+' :: last2Str '+last2Str+' isNaN '+isNaN(last2Str))

					//b2c, fnet, fnet_디플 비교하기
					if ('1' == '1' || '1' == '2' || '1' == '3') {

						// 건조기 && 세탁기 && 에어컨 && 테블릿	
						if (dispClsfNo != '37080000' && dispClsfNo != '37020000' && dispClsfNo != '37010000' && dispClsfNo != '44010000' && dispClsfNo != '33020000' && prd.goodsTpCd != '20') {
							html += '      <a href="javascript:void(0);" class="link-compare-i' + (isCompareDataStorageGoods(prd.goodsId) ? ' disabled' : '') + '" onClick="readyCompare(this)" data-goods-id="' + prd.goodsId + '" data-mdl-code="' + prd.mdlCode + '"  data-disp-clsf-no="' + dispClsfNo + '" data-comp-disp-clsf-en-nm="' + compDispClsfEnNm + '" data-omni="' + prd.mdlNm + '|' + prd.mdlCode + '" >비교하기</a>';
						} else if (dispClsfNo == '37080000' && prd.goodsTpCd == '10') {
							html += '      <a href="javascript:void(0);" class="link-compare-i' + (isCompareDataStorageGoods(prd.goodsId) ? ' disabled' : '') + '" onClick="readyCompare(this)" data-goods-id="' + prd.goodsId + '" data-mdl-code="' + prd.mdlCode + '"  data-disp-clsf-no="' + dispClsfNo + '" data-comp-disp-clsf-en-nm="' + compDispClsfEnNm + '" data-omni="' + prd.mdlNm + '|' + prd.mdlCode + '" >비교하기</a>';
						} else if (dispClsfNo == '37020000' && prd.goodsTpCd == '10') {
							html += '      <a href="javascript:void(0);" class="link-compare-i' + (isCompareDataStorageGoods(prd.goodsId) ? ' disabled' : '') + '" onClick="readyCompare(this)" data-goods-id="' + prd.goodsId + '" data-mdl-code="' + prd.mdlCode + '"  data-disp-clsf-no="' + dispClsfNo + '" data-comp-disp-clsf-en-nm="' + compDispClsfEnNm + '" data-omni="' + prd.mdlNm + '|' + prd.mdlCode + '" >비교하기</a>';
						} else if (dispClsfNo == '44010000' && prd.goodsTpCd == '10') {
							html += '      <a href="javascript:void(0);" class="link-compare-i' + (isCompareDataStorageGoods(prd.goodsId) ? ' disabled' : '') + '" onClick="readyCompare(this)" data-goods-id="' + prd.goodsId + '" data-mdl-code="' + prd.mdlCode + '"  data-disp-clsf-no="' + dispClsfNo + '" data-comp-disp-clsf-en-nm="' + compDispClsfEnNm + '" data-omni="' + prd.mdlNm + '|' + prd.mdlCode + '" >비교하기</a>';
						} else if (dispClsfNo == '33020000' && prd.goodsTpCd == '10') {
							html += '      <a href="javascript:void(0);" class="link-compare-i' + (isCompareDataStorageGoods(prd.goodsId) ? ' disabled' : '') + '" onClick="readyCompare(this)" data-goods-id="' + prd.goodsId + '" data-mdl-code="' + prd.mdlCode + '"  data-disp-clsf-no="' + dispClsfNo + '" data-comp-disp-clsf-en-nm="' + compDispClsfEnNm + '" data-omni="' + prd.mdlNm + '|' + prd.mdlCode + '" >비교하기</a>';
						} else if (dispClsfNo == '37010000' && prd.goodsTpCd != '20') { //에어컨 -> 홈멀티 에어컨 && 무풍멀티에어컨
							if (lastStr != 'R' && last2Str != 'R' && last2Str != '2' && last2Str != '3') {

								html += '      <a href="javascript:void(0);" class="link-compare-i' + (isCompareDataStorageGoods(prd.goodsId) ? ' disabled' : '') + '" onClick="readyCompare(this)" data-goods-id="' + prd.goodsId + '" data-mdl-code="' + prd.mdlCode + '"  data-disp-clsf-no="' + dispClsfNo + '" data-comp-disp-clsf-en-nm="' + compDispClsfEnNm + '" data-omni="' + prd.mdlNm + '|' + prd.mdlCode + '" >비교하기</a>';
							}
						}
						//b2c, fnet, fnet_디플 제외 비교하기
					} else {
						// 건조기 && 세탁기 && 에어컨 && 테블릿	
						if (dispClsfNo != '37080000' && dispClsfNo != '37020000' && dispClsfNo != '37010000' && dispClsfNo != '44010000' && dispClsfNo != '33020000') {
							html += '      <a href="#none" class="link-compare' + (isCompareDataStorageGoods(prd.goodsId) ? ' disabled' : '') + '" onClick="readyCompare(this)" data-goods-id="' + prd.goodsId + '" data-mdl-code="' + prd.mdlCode + '"  data-disp-clsf-no="' + dispClsfNo + '" data-omni="' + prd.mdlNm + '|' + prd.mdlCode + '" >비교하기</a>';
						} else if (dispClsfNo == '37080000' && prd.goodsTpCd == '10') {
							html += '      <a href="#none" class="link-compare' + (isCompareDataStorageGoods(prd.goodsId) ? ' disabled' : '') + '" onClick="readyCompare(this)" data-goods-id="' + prd.goodsId + '" data-mdl-code="' + prd.mdlCode + '"  data-disp-clsf-no="' + dispClsfNo + '" data-omni="' + prd.mdlNm + '|' + prd.mdlCode + '" >비교하기</a>';
						} else if (dispClsfNo == '37020000' && prd.goodsTpCd == '10') {
							html += '      <a href="#none" class="link-compare' + (isCompareDataStorageGoods(prd.goodsId) ? ' disabled' : '') + '" onClick="readyCompare(this)" data-goods-id="' + prd.goodsId + '" data-mdl-code="' + prd.mdlCode + '"  data-disp-clsf-no="' + dispClsfNo + '" data-omni="' + prd.mdlNm + '|' + prd.mdlCode + '" >비교하기</a>';
						} else if (dispClsfNo == '44010000' && prd.goodsTpCd == '10') {
							html += '      <a href="#none" class="link-compare' + (isCompareDataStorageGoods(prd.goodsId) ? ' disabled' : '') + '" onClick="readyCompare(this)" data-goods-id="' + prd.goodsId + '" data-mdl-code="' + prd.mdlCode + '"  data-disp-clsf-no="' + dispClsfNo + '" data-omni="' + prd.mdlNm + '|' + prd.mdlCode + '" >비교하기</a>';
						} else if (dispClsfNo == '33020000' && prd.goodsTpCd == '10') {
							html += '      <a href="#none" class="link-compare' + (isCompareDataStorageGoods(prd.goodsId) ? ' disabled' : '') + '" onClick="readyCompare(this)" data-goods-id="' + prd.goodsId + '" data-mdl-code="' + prd.mdlCode + '"  data-disp-clsf-no="' + dispClsfNo + '" data-omni="' + prd.mdlNm + '|' + prd.mdlCode + '" >비교하기</a>';
						} else if (dispClsfNo == '37010000') { //에어컨 -> 홈멀티 에어컨 && 무풍멀티에어컨
							if (lastStr != 'R' && last2Str != 'R' && last2Str != '2' && last2Str != '3') {

								html += '      <a href="#none" class="link-compare' + (isCompareDataStorageGoods(prd.goodsId) ? ' disabled' : '') + '" onClick="readyCompare(this)" data-goods-id="' + prd.goodsId + '" data-mdl-code="' + prd.mdlCode + '"  data-disp-clsf-no="' + dispClsfNo + '" data-omni="' + prd.mdlNm + '|' + prd.mdlCode + '" >비교하기</a>';
							}
						}
					}
					return html
				}

				function isGcsLogin() {
					var options = {
						url: "/sec/xhr/member/getSession",
						type: "POST",
						done: function (returnUrl) {
							if ("0" == JSON.parse(returnUrl).mbrNo) {
								window.location.href = "/sec/member/introPage/?returnUrl=" + window.location.pathname;
							}
							else if ("0" == JSON.parse(returnUrl).gcsMbrNo) {
								window.location.href = "/sec/member/loginDocumentEmailCheck";
							}
						}
					};
					ajax.call(options);
				}

				$(document).ready(function () {

					goodsPf.fnisLoginCheck(function (isLogin) {
						if (isLogin) {
							$('.login-failB2B').remove();
						} else {
							$('.login-sucB2B').remove();
						}
						isLoginCheck = isLogin;
					});

					if ('80' == '10' && '1' == '122') {
						isGcsLogin();
					}

					// 모바일접근성 221123-27p
					const dataFocusNext = document.querySelectorAll("[data-focus-next]");
					[].forEach.call(dataFocusNext, function (elem) {
						elem.addEventListener('click', function (e) {
							const target = e.target.dataset.focusNext;
							document.querySelector(`[data-focus=` + target + `]`).focus();
						})
					});

					/* 정렬순서 변경 */
					$('#odrDeliveryCycleBtn').parent().find('li').on('click', function (e) {
						itemInit($(this).data('sort-type'));
					});
					var sFilters = new Array();
					''

					$.each(sFilters, function (idx, filter) {
						$('.list-filter').find('input:checkbox').each(function (idx, item) {
							if (filter == $(item).data('search-filter')) {
								// 추가
								var span = '<span class="txt" data-search-filter="' + $(item).data('search-filter') + '">' + $(item).data('filter-item-nm') + '<button type="button" onClick="removeItem(\'' + $(item).data('search-filter') + '\')">삭제</button></span>';
								$('.opt-area').append(span);

								var div = '<div class="item">';
								div += '<span class="txt" data-search-filter="' + $(item).data('search-filter') + '">' + $(item).data('filter-item-nm') + '<button type="button" class="btn-delete" onClick="removeItem(\'' + $(item).data('search-filter') + '\')">삭제</button></span>';
								div += '</div>';
								$('.filter-footer > .list-option').append(div);
							}
						});
					});

					itemInit();
				});

				$(document).ready(function () {

					$(function () {
						// 가격 range slider
						$('#slider-range-pf').slider({
							range: true,
							min: 17,
							max: 340,
							step: 1,
							values: [17, 340],
							slide: function (event, ui) {
								$("#rangePrice").find(".min-range").text(fnComma(ui.values[0]) + "만원");
								$("#rangePrice").find(".max-range").text(fnComma(ui.values[1]) + "만원");

								//모바일접근성 221124-31p : aria-valuemin / aria-valuemax 값부여 
								$('#slider-range-pf .ui-slider-handle:nth-of-type(1)').attr("aria-valuemin", fnComma(ui.values[0]));
								$('#slider-range-pf .ui-slider-handle:nth-of-type(2)').attr("aria-valuemax", fnComma(ui.values[1]));
							},
							change: function (event, ui) {
								$("#slider-range-pf").attr("data-omni", $("#slider-range-pf").slider("values", 0) + "-" + $("#slider-range-pf").slider("values", 1));
								itemInit();
							}
						});
						$("#rangePrice").find(".min-range").text(fnComma($("#slider-range-pf").slider("values", 0)) + "만원");
						$("#rangePrice").find(".max-range").text(fnComma($("#slider-range-pf").slider("values", 1)) + "만원");

						//모바일접근성 221124-31p : 버튼역할,텍스트 부여
						$('#slider-range-pf .ui-slider-handle').attr("aria-role", "buttom");
						$('#slider-range-pf .ui-slider-handle').attr("aria-label", "buttom");

						//모바일접근성 221124-31p : aria-label과 연결을 위해 id 부여
						$('#slider-range-pf .ui-slider-handle:nth-of-type(1)').attr("id", "leftRangeBtn");
						$('#slider-range-pf .ui-slider-handle:nth-of-type(2)').attr("id", "rightRangeBtn");

						//모바일접근성 221124-31p : 버튼 움직이기 전에 aria-valuemin
						$('#leftRangeBtn').attr("aria-valuemin", 17);
						$('#rightRangeBtn').attr("aria-valuemax", 340);

						// 할인율 range slider
						$('#slider-discount-pf').slider({
							range: true,
							min: 0,
							max: 100,
							step: 1,
							values: [0, 100],
							slide: function (event, ui) {
								$("#rangeDiscount").find(".min-range").text(fnComma(ui.values[0]) + "%");
								$("#rangeDiscount").find(".max-range").text(fnComma(ui.values[1]) + "%");
							},
							change: function (event, ui) {
								$("#slider-discount-pf").attr("data-omni", $("#slider-discount-pf").slider("values", 0) + "-" + $("#slider-discount-pf").slider("values", 1));
								itemInit();
							}
						});
						$("#rangeDiscount").find(".min-range").text(fnComma($("#slider-discount-pf").slider("values", 0)) + "%");
						$("#rangeDiscount").find(".max-range").text(fnComma($("#slider-discount-pf").slider("values", 1)) + "%");
					});

					$('#slider-range-pf .ui-slider-handle').draggable();
					$('#slider-discount-pf .ui-slider-handle').draggable();

					''
				});

				function itemInit(sortType) {
					$('#morePrd').prop('disabled', true);
					$('#morePrd').hide();

					// 초기화 처리
					if ($('.opt-area > span').length > 1) {
						$('.box-option > :button').show();
						$('.filter-footer > :button').show();
					} else {
						$('.box-option > :button').hide();
						$('.filter-footer > :button').hide();
					}

					// 주소 재정리
					var queryString = '';
					var isTvSel = "N";
					var isAirconSel = "N";
					var isFlipSel = "N";

					$('.opt-area > span').each(function (index, item) {
						queryString += (queryString === '' ? '' : '+') + $(item).data('search-filter');

						if ($(item).data('search-filter') == 'tv') {
							isTvSel = "Y";
						}
						// system-air-conditioner    bespoke-air-conditioners
						if ($(item).data('search-filter') == 'system-air-conditioner' || $(item).data('search-filter') == 'bespoke-air-conditioners') {
							isAirconSel = "Y";
						}

						if ($(item).data('search-filter') == 'Signage/monitor') {
							isFlipSel = "Y";
						}
					});

					// 제목 정리
					$('a.btn-filter').each(function (index, item) {
						var cnt = $(item).parent().find('input:checkbox:checked').length;
						var addTxt = cnt > 0 ? '(' + cnt + ')' : '';
						$(item).html($(item).data('filter-nm') + addTxt);
						cnt > 0 ? $(item).addClass("selected-itm") : $(item).removeClass("selected-itm");
					});

					if (queryString != '') {
						if (location.href.indexOf('&') > -1) {
							if (queryString.indexOf('+') > -1) {
								history.replaceState(null, null, '?' + queryString);
							} else {

							}

						} else {
							history.replaceState(null, null, '?' + queryString);
						}
					} else {
						history.replaceState(null, null, location.href.substring(0, location.href.indexOf('?')));
					}

					if (isTvSel == "N" && $('.opt-area > span').length == 0) {
						$("#pfFilterArea .list-box>ul").find("li").each(function (index, item) {
							if ($(item).find("input").data("search-filter") == "tv") {
								isTvSel = "Y";
							}
							if ($(item).find("input").data("search-filter") == "system-air-conditioner" || $(item).find("input").data("search-filter") == "bespoke-air-conditioners") {
								isAirconSel = "Y";
							}
							if ($(item).find("input").data("search-filter") == "Signage/monitor") {
								isFlipSel = "Y";
							}
						})
					}


					if ('monitors' == 'soho') {
						/*  소상공인몰 PF페이지 TV크게 알아보기 아이콘 */
						if (isTvSel == "Y") {
							if (!$(".pf-top-cta").is(":visible")) {
								$(".pf-top-cta").show();
							}
							if ($("input:checkbox[data-search-filter='tv']").prop("checked")) {
								$("#a_tvRulerLayer").show();
							} else {
								$("#a_tvRulerLayer").hide();
							}
						} else {
							if ($(".pf-top-cta .pf-top-cta-inner .cover>a").length == 2 && !$("#a_airconPDF").is(":visible")) {
								$(".pf-top-cta").hide();
							}
							$("#a_tvRulerLayer").hide();
						}

						/* 소상공인몰 PF페이지 에어컨 추가 설치비 아이콘 */
						if (isAirconSel == "Y") {
							if (!$(".pf-top-cta").is(":visible")) {
								$(".pf-top-cta").show();
							}
							if ($("input:checkbox[data-search-filter='system-air-conditioner']").prop("checked") || $("input:checkbox[data-search-filter='bespoke-air-conditioners']").prop("checked")) {
								$("#a_airconPDF").show();
							} else {
								$("#a_airconPDF").hide();
							}
						} else {
							if ($(".pf-top-cta .pf-top-cta-inner .cover>a").length == 2 && !$("#a_tvRulerLayer").is(":visible")) {
								$(".pf-top-cta").hide();
							}
							$("#a_airconPDF").hide();
						}

						/* 소상공인몰 PF페이지 플립2 구매 안내 아이콘 */
						if (isFlipSel == "Y") {
							if (!$(".pf-top-cta").is(":visible")) {
								$(".pf-top-cta").show();
							}
							if ($("input:checkbox[data-search-filter='Signage/monitor']").prop("checked")) {
								$("#a_filp2Buy").show();
							} else {
								$("#a_filp2Buy").hide();
							}
						} else {
							if ($(".pf-top-cta .pf-top-cta-inner .cover>a").length == 2 && !$("#a_filp2Buy").is(":visible")) {
								$(".pf-top-cta").hide();
							}
							$("#a_filp2Buy").hide();
						}
					}

					// 가격범위 추가
					var minRangePrc = $('#rangePrice .min-range').html().replace(/만원/g, '').replace(/,/g, '').toString();
					var minPrc = $('#rangePrice').data('min-prc');

					if (!isNaN(minRangePrc) && minRangePrc != minPrc && minRangePrc != '') {
						queryString += (queryString === '' ? '' : '+') + 'min:' + minRangePrc;
					}

					var maxRangePrc = $('#rangePrice .max-range').html().replace(/만원/g, '').replace(/,/g, '');
					var maxPrc = $('#rangePrice').data('max-prc');
					if (!isNaN(maxRangePrc) && maxRangePrc != maxPrc && maxRangePrc != '') {
						queryString += (queryString === '' ? '' : '+') + 'max:' + maxRangePrc;
					}

					//할인율범위 추가
					var minRangeDiscountPrc = $('#rangeDiscount .min-range').html();
					var maxRangeDiscountPrc = $('#rangeDiscount .max-range').html();
					console.log("minRangeDiscountPrc : ", minRangeDiscountPrc)
					if (typeof minRangeDiscountPrc != "undefined" && typeof maxRangeDiscountPrc != "undefined") {
						minRangeDiscountPrc = minRangeDiscountPrc.replace(/%/g, '').replace(/,/g, '').toString();
						maxRangeDiscountPrc = maxRangeDiscountPrc.replace(/%/g, '').replace(/,/g, '').toString();

						var minDiscountPrc = $('#rangeDiscount').data('min-prc');
						var maxDiscountPrc = $('#rangeDiscount').data('max-prc');

						if (!isNaN(minRangeDiscountPrc) && minRangeDiscountPrc != minDiscountPrc && minRangeDiscountPrc != '') {
							queryString += (queryString === '' ? '' : '+') + 'minDc:' + minRangeDiscountPrc;
						}

						if (!isNaN(maxRangeDiscountPrc) && maxRangeDiscountPrc != maxDiscountPrc && maxRangeDiscountPrc != '') {
							queryString += (queryString === '' ? '' : '+') + 'maxDc:' + maxRangeDiscountPrc;
						}
					}


					// 상품 정보 조희(ajax)
					$('#page').val('1');

					// 화면 상품 갯수 계산
					var calc_rows = 15;
					var scroll = 0;
					var cookiePage = 0;
					var pageScroll = sessionStorage.getItem('pageScroll');
					if (pageScroll != undefined && pageScroll != '') {
						var categoryNO = pageScroll.split('|||')[2];
						if (categoryNO == '39030000' && (window.performance && window.performance.navigation.type == 2)) {
							cookiePage = pageScroll.split('|||')[1];
							calc_rows = calc_rows * cookiePage;
							scroll = pageScroll.split('|||')[0];
						}
						sessionStorage.removeItem('pageScroll');
					}

					if (pfPrdCardAdv != null) {
						if (pfPrdCardAdv.cardTpCd == '10') {
							calc_rows = calc_rows - 2;
						} else if (pfPrdCardAdv.cardTpCd == '20') {
							calc_rows = calc_rows - 1;
						}
					}
					$('#rows').val(calc_rows);

					if (sortType == undefined || sortType === '') {
						sortType = $('#odrDeliveryCycleBtn').parent().find('.focused').data('sort-type');
					}


					ajax.call({
						data: {
							searchFilter: queryString
							, dispClsfNo: 39030000
							, sortType: sortType
							, page: $('#page').val()
							, rows: $('#rows').val()
						}
						, url: "/sec/xhr/pf/goodsList"
						, type: 'POST'
						, dataType: 'json'
						, done: function (data) {
							// @상세검색 조건 (BEST SELLER 부분 노출을 위해 추가 - @Jinam.id_2020-11-02)
							if (data.searchFiter.length > 0) {
								$(".ranking-area").hide();
							} else {
								$(".ranking-area").show();
								$('.ranking > li').each(function (idx, item) {
									var goodsId = $(item).children('input[name=goodsId]').val();
									if (data.wishGoods != 'undefined' && data.wishGoods != null && data.wishGoods.length > 0) {
										var btn = $(item).children('.btn-good');
										for (var i = 0; i < data.wishGoods.length; i++) {
											if (data.wishGoods[i] == goodsId) {
												btn.addClass("on");
												btn.attr("title", "선택됨");
												btn.find('i').text('좋아요 선택');
											} else {
												btn.removeClass("on");
												btn.find('i').text('좋아요 미선택');
											}
										}
									}
								});
							}

							$('.list-filter').find('input:checkbox').each(function (idx, item) {
								if ($(item).data('multi-sel-yn') === 'Y') {
									$(item).prop('disabled', false);
								} else {
									if (data.filters == null) {
										$(item).prop('disabled', false);
									} else {
										var isExists = false;
										$.each(data.filters, function (idx, filter) {
											if ($(item).data('search-filter') === filter) {
												isExists = true;
											}
										});
									}

									$(item).prop('disabled', !isExists);
								}
							});

							$('.top-opt-detail-area > .opt-detail-inner > .box-result > span, .pf-prd-filter-area > .filter-header > .box-result > span').html('검색 결과<em>' + fnComma(data.count) + '</em>개');
							$('#totalCount').val(data.count);

							// product card 제거
							$('.list-product > .list > li').remove();

							if (data.products != null && data.products.length > 0) {
								var sortBtn = "sort";
								appendProductCard(data.products, sortBtn, data.wishGoods);
							} else {
								appendNoList();
							}
							if (sortType != undefined || sortType != '') {
								$('li[data-sort-type=' + sortType + ' ]').attr('aria-selected', true);
							}

							if (data.pfPopupInfo != undefined && data.pfPopupInfo != '' && data.pfPopupInfo != null) {
								var html = '';
								html += '<div id="fnetPfLayer-bnrHtml">';
								html += data.pfPopupInfo.bnrHtml;
								html += '</div>';
								$("#fnetPfLayer-bnrHtml").remove();
								$("#fnetPfLayerPopup").prepend(html);
								fnetPfLayerPopOpen();
							}

							if (scroll > 0) {
								$(window).scrollTop(scroll);
								$("#page").val(cookiePage);
							}
						}
					});
				}

				function goMembershipJoin() {
					// window.open('https://membership.samsung.com/sec/lnc/KoFamNRegister?CiTokn=4b7db13b3c654b80a5f2d412d782993026fc134823312481657e4c36f0bf6330&Fnm=8241445b72beeb8d2e330bc198a4896a0953dff4dd28ced398bcce6c4205a9de', '_blank', "width=630,height=720");
					var stGbCd = '10';
					var stId = '1';

					//닷컴과 패넷 멤버십 가입 URL 분기 처리
					if (stGbCd == '10') {
						location.href = '/sec/' + "membership/membershipJoin/";
					} else if (stGbCd == '70') {
						location.href = '/sec/' + "membership/";
					} else if (stGbCd == '80' && stId == 122) {
						location.href = '/sec/' + "mypage/info/mySAMembership/";
					} else {
						window.open('', '', 'width=640, height=508, scrollbars=yes');
					}
				}

				var pfPrdCardAdv;
				var pfBannerAdv;
				''

				function fnetPfLayerPopOpen() {
					var fnetPfLayerPopCookie = $.cookie('fnetPfLayerPop139030000');
					if (fnetPfLayerPopCookie != 'true') {
						$("#fnetPopupButton").trigger('click');
						/* KDP-21609 [FO][B2B] 모바일 웹접근성_p54 LMJ START */
						$("#fnetPfLayerPopup").focus();
						/* KDP-21609 [FO][B2B] 모바일 웹접근성_p54 LMJ END */
					}
				}

				function notToSee() {
					var chkNotSee = $("#chk-not-see").prop("checked");
					if (chkNotSee) {
						$.cookie('fnetPfLayerPop139030000', "true", { expires: 1, path: '/' });
					}
					$("#fnetPfLayerPopupCloseBtn").trigger('click');
				}

			</script>

			<button id="fnetPopupButton" style="display:none" type="button"
				data-popup-target="fnetPfLayerPopup">팝업보기</button>

			<!-- s : 패밀리넷 PF 팝업 - 핸드폰 구매 시 유의사항 (자급제폰, 픽업 서비스 일시 중단 포함) -->
			<div class="layer-pop layer-normal layer-famailyPF  btn-check" id="fnetPfLayerPopup" tabindex="0"
				data-popup-layer="fnetPfLayerPopup" data-focus="fnetPfLayerPopup">
				<div id="fnetPfLayer-bnrHtml"></div>
				<div class="btn-box">
					<a href="javascript:void(0)" class="btn btn-d btn-type2" data-focus-next="fnetPfLayerPopupClose"
						onclick="notToSee();">확인</a>
				</div>
				<div class="chk-form al">
					<input id="chk-not-see" type="checkbox" required="" title="" class="">
					<label for="chk-not-see">오늘 하루 다시 보지 않기</label>
				</div>
				<button type="button" id="fnetPfLayerPopupCloseBtn" class="pop-close"
					data-focus-next="fnetPfLayerPopup">팝업닫기</button>
			</div>
			<style>
				/* 2021-10-27 KDP-7239 팝업 예외 추가 */
				#fnetPfLayer-bnrHtml {
					max-height: calc(100vh - 336px);
					display: flex;
					flex-direction: column;
					overflow-y: auto;
				}

				#fnetPfLayer-bnrHtml .layer-content {
					max-height: none;
					flex: 1 1 auto;
				}

				@media screen and (max-width: 767px) {
					#fnetPfLayer-bnrHtml {
						max-height: calc(100% - 86px);
						height: 100%;
					}

					#fnetPfLayer-bnrHtml .layer-content {
						max-height: none;
						flex: 1 1 auto;
					}

					.btn-check.layer-normal .layer-content {
						max-height: calc(100% - 136px)
					}

					.btn-check.layer-normal .btn-box {
						padding-top: 10px
					}
				}
			</style>

			<!-- s : 2021-04-06 패밀리넷 PF 팝업 - 정수기 쉽게 알아보기 -->
			<div class="layer-pop layer-normal layer-login-nonmember" id="index_kcb" tabindex="0"
				data-popup-layer="index_kcb" data-focus="index_kcb" aria-hidden="false" data-zindex="300"
				style="z-index: 300;">
			</div>
			<!-- 레이어 팝업 모음 -------------------------------------------------------------------------------------------------------------------------------------------------------------------->
			<!-- s : 공통 팝업(alert)  -->
			<div class="layer-pop layer-default alert" id="commonAlert" tabindex="0" data-popup-layer="commonAlert"
				data-focus="commonAlert">
				<div class="layer-header blind">
					<h2></h2>
				</div>
				<div class="layer-content">
					<p style="word-break:keep-all;"></p>
					<div class="btn-box">
						<a href="javascript:void(0)" onclick="" class="btn btn-d btn-type2">확인</a>
					</div>
				</div>
			</div>
			<!-- e : 공통 팝업(alert)  -->
			<!-- s : 공통 팝업(confirm)  -->
			<div class="layer-pop layer-default" id="commonConfirm" tabindex="0" data-popup-layer="commonConfirm"
				data-focus="commonConfirm">
				<div class="layer-header blind">
					<h2></h2>
				</div>
				<div class="layer-content">
					<p></p>
					<div class="btn-box double">
						<!-- 버튼 두개시 클래스 double 추가 -->
						<a href="javascript:void(0)" class="btn btn-d btn-type1 accessibility-pop-close"
							id="commonConfirmCancelBtn" onclick="closeLayer('commonConfirm');">취소</a>
						<a href="javascript:void(0)" class="btn btn-d btn-type2" id="commonConfirmOkBtn">확인</a>
					</div>
				</div>
				<button type="button" class="pop-close accessibility-pop-close" id="closeCommonConfirmBtn"
					name="closeCommonConfirmBtn" data-focus-next="commonConfirm">팝업닫기</button>
			</div>
			<!-- e : 공통 팝업(confirm)  -->
			<!-- s : 공통 팝업(confirm2)  -->
			<div class="layer-pop layer-default" id="commonConfirm2" tabindex="0" data-popup-layer="commonConfirm2"
				data-focus="commonConfirm2">
				<div class="layer-header blind">
					<h2></h2>
				</div>
				<div class="layer-content">
					<p></p>
					<div class="btn-box double">
						<!-- 버튼 두개시 클래스 double 추가 -->
						<a href="javascript:void(0)" class="btn btn-d btn-type1 accessibility-pop-close"
							id="commonConfirmCancelBtn2" onclick="closeLayer('commonConfirm2');">취소</a>
						<a href="javascript:void(0)" class="btn btn-d btn-type2" id="commonConfirmOkBtn2">확인</a>
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
			<div class="menu-list">
				<div class="inner">
					<a href="#" class="btn-floating" onclick="floating_open();"><span>메뉴 보기</span></a>
					<ul>
						<li class="menu01" aria-hidden=""><a href="javascript:chat_open();">챗봇 채팅하기</a></li>
						<li class="menu02" aria-hidden=""><a href="javascript:chat_open2();">구매 상담사 채팅하기</a></li>
						<li class="menu03" aria-hidden="true" style="display:none;"><a
								href="./customer/reservationstore/index%EF%B9%96ref=floating%EA%A4%B7.html"
								onclick="chat_open3();">매장 방문 예약하기</a></li>
						<li class="menuGift"><a href="javascript:gift_open();"
								data-omni="float chat:event gift">선물하기</a></li>
					</ul>
				</div>
			</div>
			<button type="button" class="btn-gotop">
				<span>위로</span>
			</button>
		</div>
		<script>
			floatSticky();

			function firstRecentGoods() {

				$.ajax({
					url: "/sec/xhr/goods/getFirstRecentGoods"
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
		<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
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
						<li><a href="./electric-range/bespoke-induction/index.html" data-omni="product_smartphones">기획전 모두보기</a></li>
						<li><a href="./cooking-appliances/bespoke-oven/index.html" data-omni="product_cooking appliances">GMQD 단독</a></li>
						<li><a href="./qooker/bespoke-qooker/index.html" data-omni="product_qooker">GMQD Live</a></li>
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
						<li><a href="#" data-omni="faq_service-locator">서비스센터 찾기</a></li>
						<li><a href="./GMQDisplay-Care-Plus/CE/index.html" data-omni="faq_samsung care plus CE">GMQDisplay Care+</a></li>
					</ul>
				</li>
				<li>
					<h3>
						<a href="javascript:void(0);">윤리&준법경영</a>
					</h3>
					<ul>
						<li><a href="https://sec-audit.com/common/businessPrinciple/viewBusinessPrincMain.do?_menuId=AVyA0fTVACzV4mS0&amp;_menuF=true&amp;s_gbn=PA100001" data-omni="ethics and law_principle" class="link-outlink" title="새창으로 열림" target="_blank">경영원칙</a></li>
						<li><a href="https://sec-audit.com/common/wrongReport/init.do?_menuId=AVyAoCSlAADV4mQ3&amp;_menuF=true&amp;s_gbn=PA100002" data-omni="ethics and law_wrong report" class="link-outlink" title="새창으로 열림" target="_blank">부정제보</a></li>
						<li><a href="https://sec-compliance.net/gcc/gcc.do?method=gccReport&amp;langCd=ko_KR" data-omni="ethics and law_GCC" class="link-outlink" title="새창으로 열림" target="_blank">법위반제보</a></li>
					</ul>
				</li>
				<!-- e : 221025 -->
				<!-- s : 220929 -->
				<li class="row2">
					<ul>
						<li>
							<h3><a href="javascript:void(0);">사이트소개</a></h3>
							<ul>
								<li><a href="./about-us/company-info/index.html" data-omni="about-us_company-info">사이트 정보</a></li>
								<li><a href="./about-us/business-area/index.html" data-omni="about-us_business-area">사이트 개요</a></li>
								<li><a href="./about-us/brand-identity/index.html" data-omni="about-us_brand-identity">아이덴티티</a></li>
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
								<li><a href="./about-us/company-info/index.html" data-omni="about-us_company-info">기업정보</a></li>
								<li><a href="./about-us/business-area/index.html" data-omni="about-us_business-area">사업정보</a></li>
								<li><a href="./about-us/brand-identity/index.html" data-omni="about-us_brand-identity">브랜드 아이덴티티</a></li>
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
					<span class="comp-wrap"><a href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=1248100998&amp;apv_perm_no=" class="comp" title="새창 열림" target="_blank">사업자 정보확인</a></span>
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
						<p>개별 판매자 판매 상품의 경우 GMQDisplay(주)는 통신판매중개업자로서 통신판매의 당사자가 아니므로, 개별 판매자가 등록한 상품, 거래정보 및 거래 등에 대해 책임을 지지 않습니다.</p>
						<a href="./dispute-resolution/index.html" class="comp" title="새창 열림" target="_blank">소비자분쟁해결기준</a>
					</div>
					<!-- e : 22-12-21 소비자분쟁해결기준 CTA -->
				<p>본 사이트의 컨텐츠는 저작권법의 보호를 받는 바  무단 전재, 복사, 배포 등을 금합니다.</p>
			</div>
		</div>
	</div>
	<div class="footer-content">
		<div class="footer-inner copyrightGroup">
			<div class="copyrightBox">
				<p class="copyright">Copyright &copy; 2023 GMQDisplay. All Rights Reserved.</p>
				<div class="mark-box">
					<a href="javascript/index.html" title="웹접근성 우수사이트 인증서 : 새창으로 열기" class="btn-mark btn-wa" data-popup-target="popupWA" data-omni="local logo_wa" >
						<img class="pc-ver" src="./static/images/common/icon-footer-wa.svg" alt="웹접근성 우수사이트">
						<img class="mo-ver" src="./static/images/common/icon-footer-wa-mo.jpg" alt="웹접근성 우수사이트">
							웹접근성 우수사이트
					</a>
					<a href="javascript:openPrivacy();" 
						title="개인정보 보호 우수사이트 인증서 : 새창으로 열기" class="btn-mark btn-eprivacy" data-omni="local logo_eprivacy">
						<img src="./static/images/common/icon-footer-eprivacy.svg" alt="개인정보보호 우수사이트">개인정보보호 우수사이트
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="footer-content">
		<div class="footer-inner btnBottomGroup">
			<div class="cs-btn">
				<ul class="korean">
					<li><a href="./function/ipredirection/ipredirectionLocalList/index.html">한국/한국어 </a></li><!-- 200918 추가 -->
				</ul>
				<ul>
					<li><a href="javascript:void(0);" title="이메일 무단 수집거부" data-popup-target="popupGatherRefuse" data-omni="footer:bottom_email_security">이메일 무단 수집거부</a></li>
					<li><a href="javascript:void(0);" title="아이디어 정책" data-popup-target="popupIdeaPolicy" data-omni="footer:bottom_idea security">아이디어 정책</a></li>
					<li><a href="./info/sitemap/index.html" data-omni="footer:bottom_sitemap">사이트맵</a></li>
				</ul>
			</div>
			<div class="clause-links">
				<!-- s : Accessible Dropdown -->
				<div id="dropClauseList01" class="wrap-droplist rounded clause-use">
					<button class="droplist-button" aria-haspopup="listbox" aria-labelledby="dropServiceClauseTitle dropServiceClauseBtn" id="dropServiceClauseBtn" title="서비스별 이용약관">이용약관<span class="blind">하위 메뉴 있음</span></button>
					<ul class="droplist" tabindex="-1" aria-labelledby="dropServiceClauseTitle" aria-activedescendant="optServiceClause01">
						<!--aria-activedescendant에 선택된 li의 id 삽입 -->
						<li id="optServiceClause02" class="droplist-item" data-omni="footer:terms_legal"><a href="https://account.samsung.com/membership/etc/specialTC.do?fileName=samsungkorea.html" target="_blank" title="새 창으로 열림">GMQDisplay 대표사이트 이용약관</a></li>
						<li id="optServiceClause03" class="droplist-item" data-omni="footer:terms_conditions"><a href="./membership/terms/index.html">GMQDisplay멤버십 이용약관</a></li>
						<li id="optServiceClause04" class="droplist-item" data-omni="footer:terms_contents"><a href="https://account.samsung.com/membership/policy/terms" target="_blank" title="새 창으로 열림">GMQDisplay 서비스 이용약관</a></li>
					</ul>
				</div>
				<!-- s : Accessible Dropdown -->
				<div id="dropClauseList02" class="wrap-droplist rounded  clause-private">
					<button class="droplist-button" title="서비스별 개인정보처리방침">개인정보처리방침<span class="blind">하위 메뉴 있음</span></button>
					<ul class="droplist" tabindex="-1" aria-labelledby="dropServicePrivateTitle" aria-activedescendant="optServicePrivate01">
						<!--aria-activedescendant에 선택된 li의 id 삽입-->
						<li id="optServicePrivate02" class="droplist-item"><a href="./info/privacy/01/index.html">GMQD 개인정보처리방침</a></li>
						<li id="optServicePrivate03" class="droplist-item"><a href="./info/privacy/02/index.html">GMQD 이벤트 개인정보처리방침</a></li>
						<li id="optServicePrivate04" class="droplist-item"><a href="./info/privacy/03/index.html">GMQDisplay멤버십 개인정보처리방침</a></li>
						<li id="optServicePrivate05" class="droplist-item"><a href="./info/privacy/04/index.html">멤버십블루 개인정보처리방침</a></li>
						<li id="optServicePrivate06" class="droplist-item"><a href="./info/privacy/05/index.html">경력채용 개인정보처리방침</a></li>
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
<div class="layer-pop layer-normal layer-energy-calculator" id="popupEnergy" tabindex=" 0"  data-popup-layer="popupEnergy" data-focus="popupEnergy">
</div>
<!-- e : 에너지 계산기 -->	
<!-- s : 이메일 무단 수집거부 -->
<div class="layer-pop layer-normal" id="popupGatherRefuse" tabindex="0" data-popup-layer="popupGatherRefuse" data-focus="popupGatherRefuse">
	<div class="layer-header">
		<h2>이메일 무단 수집거부</h2>
	</div>
	<div class="layer-content">
		<div class="etc-divWrap">
			<p>본 웹사이트는 게시된 이메일 주소가 전자우편 수집 프로그램이나 그 밖의 기술적 장치를 이용하여 무단 수집되는 것을 거부합니다.<br> 
			이를 위반 시 『정보통신망 이용 촉진 및 정보보호 등에 관한 법률』등에 의해 처벌받을 수 있습니다.</p>
		</div>
	</div>
	<button type="button" class="pop-close" data-focus-next="popupGatherRefuse">팝업닫기</button>
</div>
<!-- e : 이메일 무단 수집거부 -->

<!-- s : 아이디어 정책 -->
<div class="layer-pop layer-normal" id="popupIdeaPolicy" tabindex="0" data-popup-layer="popupIdeaPolicy" data-focus="popupIdeaPolicy">
	<div class="layer-header">
		<h2>아이디어 제안에 대한 정책</h2>
	</div>
	<div class="layer-content">
		<div class="etc-divWrap">
			<p>GMQDisplay 및 GMQDisplay 임직원은 당사가 공식적으로 요청하지 않았음에도 불구하고 여러분께서 일방적으로 당사에 제출하는 아이디어나 제안 등을 수령하거나 검토하지 않습니다.</p>
			<p>이는 제출하신 내용이 당사 내부적으로 개발한 제품, 기술, 서비스와 유사할 경우 발생할 수 있는 오해와 분쟁을 방지하고 나아가 여러분의 창의적인 아이디어를 적극 보호하기 위함입니다.</p>
			<p>이러한 취지를 이해하여 주시고 구체화되지 않은 아이디어나 콘셉트(Concept) 단계의 제안이 당사에 제출되지 않도록 하여 주시기 바랍니다.</p>
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
<!— e : 바닥글 영역 - b2c —>
	</div>

	<input type="hidden" id="viewStContextPath" value="/"/>

	<script src="./static/script/masonry.min.js" async></script>
	
	<!— masonry js —>
	<script src="./static/script/buynow.js" async></script>
	<script type="text/javascript" src="https://resources.digital-cloud-west.medallia.com/wdcwest/145272/onsite/embed.js" async></script>
</body>

	</html>