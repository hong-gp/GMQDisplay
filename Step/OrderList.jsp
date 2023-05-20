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
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '';
					htmlMoLoginBefore += '<li class="mob-onlyMenu-benefit">';
					htmlMoLoginBefore += '<a href="" onclick="NetFunnel_Action({action_id:\'b2c_gnb_login\'},\'/GMQDisplay-master/Step/StepLogin.html\');return false;\" data-omni=\'step\'>관리자 모드</a></li>';
					htmlMoLoginBefore += '</ul>';

					$("#useLogin").after(htmlMoLoginBefore);
				} else {
					//pc
					var htmlLoginBefore = '<div class="gnbSubRound loginBefore"><div>';
					htmlLoginBefore += '<dl>';
					htmlLoginBefore += '';
					htmlLoginBefore += '';
					htmlLoginBefore += '';
					htmlLoginBefore += '';
					htmlLoginBefore += '';
					htmlLoginBefore += '';
					htmlLoginBefore += '';
					htmlLoginBefore += '';
					htmlLoginBefore += '';
					htmlLoginBefore += '<dt><a href="" onclick="NetFunnel_Action({action_id:\'b2c_gnb_login\'},\'/GMQDisplay-master/Step/StepLogin.html\');return false;\" data-omni=\'step\'>관리자 모드</a></dt>';
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
					htmlMoLoginAfter += '<a href="#" target="_blank" title="새창열림">안녕하세요!</a></li>';
					htmlMoLoginAfter += '<li class="mob-onlyMenu-myinfo">';
					htmlMoLoginAfter += '<a href="/GMQDisplay-master/Step/MemberList.jsp" data-omni=\'my account\'>회원 통합 목록</a></li>';
					htmlMoLoginAfter += '<li class="mob-onlyMenu-myDeviceList">';
					htmlMoLoginAfter += '<a href="/GMQDisplay-master/Step/ProductList.jsp" data-omni=\'my divice\'>상품 통합 목록</a></li>';
					htmlMoLoginAfter += '<li class="mob-onlyMenu-prdctRvw">';
					htmlMoLoginAfter += '<a href="/GMQDisplay-master/Step/OrderList.jsp" data-omni=\'my comment\'>주문 통합 목록</a></li>';
					htmlMoLoginAfter += '<li class="mob-onlyMenu-tracking">';
					htmlMoLoginAfter += '<a href="/GMQDisplay-master/Step/ReviewList.jsp" data-omni=\'orders\'>상품평 통합 목록</a></li>';
					htmlMoLoginAfter += '<li class="mob-onlyMenu-cpnZone">';
					htmlMoLoginAfter += '<a href="/GMQDisplay-master/Step/ReportList.jsp" data-omni=\'FAQ\'>1 : 1 문의 목록</a></li>';
					htmlMoLoginAfter += '';
					htmlMoLoginAfter += '';
					htmlMoLoginAfter += '';
					htmlMoLoginAfter += '';
					htmlMoLoginAfter += '<li class="mob-onlyMenu-logout">';
					htmlMoLoginAfter += '<a href="/GMQDisplay-master/xhr/logout.jsp;" data-omni=\'logout\'>로그아웃</a></li>';
					htmlMoLoginAfter += '</ul>';

					$("#useLogin").after(htmlMoLoginAfter);
				} else {
					//pc
					var htmlLoginAfter = '<div class="gnbSubRound loginAfter"><div>';
					htmlLoginAfter += '<dl>';
					htmlLoginAfter += '<dt><a href="#"><span class="greet-txt">안녕하세요!</span></a></dt>';
					htmlLoginAfter += '<dd><a href="/GMQDisplay-master/Step/MemberList.jsp" data-omni=\'my account\'>회원 통합 목록</a></dd>';
					htmlLoginAfter += '<dd><a href="/GMQDisplay-master/Step/ProductList.jsp" data-omni=\'my divice\'>상품 통합 목록</a></dd>';
					htmlLoginAfter += '<dd><a href="/GMQDisplay-master/Step/OrderList.jsp" data-omni=\'my comment\'>주문 통합 목록</a></dd>';
					htmlLoginAfter += '<dd><a href="/GMQDisplay-master/Step/ReviewList.jsp" data-omni=\'orders\'>상품평 통합 목록</a></dd>';
					htmlLoginAfter += '<dd><a href="/GMQDisplay-master/Step/ReportList.jsp" data-omni=\'FAQ\'>1 : 1 문의 목록</a></dd>';
					htmlLoginAfter += '';
					htmlLoginAfter += '';
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
				<a href="/GMQDisplay-master/StepIndex.html" class="logo">
					<img type="image/svg+xml" src="/GMQDisplay-master/static/images/common/logo_gmqd_black.png" alt="GMQ Display" style="width:130px; height:20px"/>
				</a>
				<div class="new-gnb">
					<button type="button" class="gnb-back" data-omni="gnb:back">이전 메뉴 보기</button>
					<button type="button" class="gnb-close" data-omni="gnb:close">GNB 닫기</button>
					<nav class="gnb">
						<ul class="gnb1depth">
					</nav>
				</div>

				<div class="header-right gnbMenu">
					<ul>
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
	DecimalFormat df = new DecimalFormat("###,###");

	String db_url = "jdbc:mysql://localhost:3306/gpqd";
	String db_id = "root";
	String db_password = "1234";

	Class.forName("com.mysql.jdbc.Driver");
	Connection con1 = DriverManager.getConnection(db_url, db_id, db_password);

	try {
		String sql = "SELECT * FROM Step WHERE StepID=?"; 
		PreparedStatement pstmt = con1.prepareStatement(sql);
		pstmt.setString(1, id);

		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			name = rs.getString("StepName");
		} 
	} catch (Exception e) {
		out.print(e);
	}
%>
                <!-- s : lnb -->
                <nav class="nav-lnb-rounded">
                    <div class="nav-lnb-inner">
                        <div class="intro">
                            <span class="txt">안녕하세요. <strong class="name"><%=name%> 관리자님</strong></span>
                        </div>
                        <div class="list-menu">
                            <ul class="list">
                                <li class="menu " id="lnb1">
									<a href="/GMQDisplay-master/Step/MemberList.jsp" onClick="location.href='/GMQDisplay-master/Step/MemberList.jsp';">회원 통합 목록</a>
								</li>
								<li class="menu " id="lnb2">
									<a href="/GMQDisplay-master/Step/ProductList.jsp" onClick="location.href='/GMQDisplay-master/Step/ProductList.jsp';">상품 통합 목록</a>
								</li>
								<li class="menu active" id="lnb3">
                                    <a href="/GMQDisplay-master/Step/OrderList.jsp" onClick="location.href='/GMQDisplay-master/Step/OrderList.jsp';">주문 통합 목록</a>
                                </li>
								<li class="menu" id="lnb4">
									<a href="/GMQDisplay-master/Step/ReviewList.jsp" onClick="location.href='/GMQDisplay-master/Step/ReviewList.jsp';">상품평 통합 목록</a>
								</li>
								<li class="menu" id="lnb5">
									<a href="/GMQDisplay-master/Step/ReportList.jsp" onClick="location.href='/GMQDisplay-master/Step/ReportList.jsp';">1 : 1 문의 목록</a>
								</li>
                            </ul>
                        </div>
                    </div>
                    <div class="bg"></div>
                </nav>
                <!-- e : lnb --><!-- e : lnb 영역 -->
                <div class="conbox customer-center-conbox" id="my-hot-list">
                    <!-- 컨텐츠 헤더 -->
                    <header class="con-header-basic">
                        <h1 class="con-tit">주문 통합 목록</h1>
                    </header>
                    <!-- //컨텐츠 헤더 -->

                    <!-- s : 게시판 -->
                    <div class="my-boardListWrap" id="my-boardListWrap" data-kakaokey="5880e4317936087f2764a5d340e6bca6"
                        data-facebookid="">
                        <script type="text/javascript">
                            $(document).ready(function () {

                                //mobile
                                /* if(navigator.platform){
                                    if(false){
                                        $("button[name=moreList]").parent(".mob-moreViewList").hide();
                                    }
                                } */
                                console.log(false);
                                /* 모바일 더보기 버튼  button[name=moreList]*/
                                $(".mob-moreViewList").on('click', 'button', function () {
                                    listSearch.page = parseInt(listSearch.page) + 1;
                                    var options = {
                                        data: listSearch
                                        , url: "/sec/xhr/mypage/interest/loadHotListList"
                                        , type: 'POST'
                                        , dataType: "html"
                                        , done: function (data) {
                                            $(".myBoardList-style ul").append(data);
                                        }
                                    }
                                    ajax.call(options);
                                    if (listSearch.page >= (listSearch.totalCount) / 10) {
                                        $(this).hide();
                                        return false;
                                    }
                                });

                                /* 조르기 */
                                $(".opt-btnbox", hotList.vWrapId).on('click', 'button[name=pickingGift]', function () {
                                    var selectGoods = $("input[name=goodsIds]:checked");
                                    /* 선택 x */
                                    if (selectGoods.length == 0) {
                                        $("button[name=ask-no-select]").trigger('click');
                                        return;
                                    }
                                    /* 1개 이상 선택 시 */
                                    if (selectGoods.length > 1) {
                                        $("button[name=ask-over-select]").trigger('click');
                                        return;
                                    }

                                    if (selectGoods.length == 1) {
                                        var goodsId = $(selectGoods[0]).val();
                                        var contentForm = $("#share-form-" + goodsId).serializeJson();

                                        snsShare.kakaoTalkBuyMe(
                                            window.origin + $("input[name=link_" + goodsId + "]").val()
                                            , window.location.protocol + contentForm.image_url
                                            , contentForm.title
                                            , contentForm.description
                                        );
                                    }
                                });


                                /* 카카오톡 공유 */
                                $(".opt-btnbox", hotList.vWrapId).on('click', 'button[name=share-kakao]', function () {
                                    var selectGoods = $("input[name=goodsIds]:checked");
                                    /* 선택 x */
                                    if (selectGoods.length == 0) {
                                        $("button[name=no-select]").trigger('click');
                                        return;
                                    }
                                    /* 3개 이상 선택 시 */
                                    if (selectGoods.length > 3) {
                                        $("button[name=over-select]").trigger('click');
                                        return;
                                    }

                                    if (selectGoods.length == 1) {
                                        var goodsId = $(selectGoods[0]).val();
                                        var contentForm = $("#share-form-" + goodsId).serializeJson();

                                        snsShare.kakaoTalk(
                                            window.origin + $("input[name=link_" + goodsId + "]").val()
                                            , contentForm.title
                                            , window.location.protocol + contentForm.image_url
                                            , contentForm.description
                                        );
                                    } else {
                                        var contents = new Array();
                                        for (var i = 0; i < selectGoods.length; i++) {
                                            var goodsId = $(selectGoods[i]).val();

                                            var contentForm = $("#share-form-" + goodsId).serializeJson();

                                            var content = {
                                                title: contentForm.title
                                                , description: contentForm.description
                                                , imageUrl: window.location.protocol + contentForm.image_url
                                                , link: {
                                                    webUrl: window.origin + $("input[name=link_" + goodsId + "]").val()
                                                    , mobileWebUrl: window.origin + $("input[name=link_" + goodsId + "]").val()
                                                }
                                            }
                                            contents.push(content);
                                        }

                                        var data = {
                                            objectType: "list"
                                            , header: "나의 찜목록"
                                            , shopUrl: window.origin + "/sec/"
                                            , content: contents
                                        }
                                        KakaoShare(data);
                                    }
                                });

                                /* 바로구매 */
                                $(".boardlist-cart", hotList.vWrapId).on('click', 'button[name=buy-now]', function () {
                                    var reqData = fnReqData();

                                    reqData.goodsIds = $(this).val();
                                    var options = {
                                        url: "/sec/xhr/order/insertCart"
                                        , data: reqData
                                        , done: function (data) {
                                            if (reqData.stGbCd == '30') {
                                                location.href = $('#boardlist-cart').data("ctpath") + "solpopmall/order/";
                                            } else {
                                                location.href = $('#boardlist-cart').data("ctpath") + "order/";
                                            }

                                        }
                                    };
                                    ajax.call(options);
                                });

                                /* 장바구니 */
                                $(".boardlist-cart", hotList.vWrapId).on('click', 'button[name=btn-cart]', function () {
                                    cartData.goodsIds = $(this).val();

                                    $("div[name=btnAddArea]>button").remove();
                                    var html = "";
                                    html += '<button type="button" id="btnCart" value="' + cartData.goodsIds + '"'
                                    html += 'data-content="장바구니에 추가되었습니다." data-yes="확인" data-yescls="reload-true">'
                                    html += '</button>'
                                    $("div[name=btnAddArea]").append(html);

                                    var mdlDataOmni = $(this).parents(".boardlist-area").attr("data-omni") + "|" + $(this).parents(".boardlist-area").attr("data-omni-price");

                                    var options = {
                                        url: "/sec/xhr/order/insertCart"
                                        , data: cartData
                                        , done: function (data) {
                                            var options = {
                                                data: {
                                                    goodsId: cartData.goodsIds
                                                }
                                                , url: '/sec/xhr/mypage/interest/deleteHotList'
                                                , done: function (data) {
                                                }
                                            }
                                            ajax.call(options);

                                            var $msgData = {};
                                            $.extend($msgData, $("#btnCart").data());
                                            $msgData.content = $msgData.content.replace("$cnt$", data.cartCnt);
                                            hotList.fnMsgPop($msgData);
                                            $(".cart-inner-count").html(data.cartCnt)

                                            _satellite.track("add to cart", { mdlInfo: mdlDataOmni });
                                        }
                                    };
                                    ajax.call(options);
                                });

                                /* 전체 선택 */
                                $("[data-allchk-name=allCheck]").click(function () {
                                    var children = $(this).attr("data-children-name");
                                    if ($(this).prop("checked")) {
                                        allCheckFunc.check(children);
                                    } else {
                                        allCheckFunc.uncheck(children);
                                    }
                                });
                                /* s : 20200813 선택삭제 버튼 활성화 제어 */
                                $(":checkbox:not(:disabled)").each(function () {
                                    $(this).click(function () {
                                        /* var checked = 0;
                                        $("[data-chkgrp-name]").each(function(){
                                            {
                                                if($(this).prop("checked")){
                                                    checked++;
                                                }
                                            }
                                        }); */
                                        if ($("[data-chkgrp-name]:checked").length == 1) {
                                            $(".opt-btnbox .btn-delete").prop("disabled", false);
                                            $("button[name=pickingGift]").prop("disabled", false);
                                            $("button[name=pickingGift]").removeClass("btn-type1-disable");

                                            $("button[name=pointSimulator]").prop("disabled", false);
                                            $("button[name=pointSimulator]").removeClass("btn-type2-disable").addClass("btn-type2")

                                        } else if ($("[data-chkgrp-name]:checked").length > 0) {
                                            $(".opt-btnbox .btn-delete").prop("disabled", false);
                                            $("button[name=pickingGift]").prop("disabled", true);
                                            $("button[name=pickingGift]").addClass("btn-type1-disable");

                                            $("button[name=pointSimulator]").prop("disabled", false);
                                            $("button[name=pointSimulator]").removeClass("btn-type2-disable").addClass("btn-type2")

                                        } else {
                                            $(".opt-btnbox .btn-delete").prop("disabled", true);
                                            $("button[name=pickingGift]").prop("disabled", true);
                                            $("button[name=pickingGift]").addClass("btn-type1-disable");

                                            $("button[name=pointSimulator]").prop("disabled", true);
                                            $("button[name=pointSimulator]").removeClass("btn-type2").addClass("btn-type2-disable")

                                        }
                                    });
                                });
                                /* e : 20200813 선택삭제 버튼 활성화 제어 */
                            });

                            function fnReqData() {
                                var reqData = $("#buyNowForm").serializeJson();
                                return reqData;
                            };

                            /* 찜목록 리스트 삭제 */
                            function selectDeleteList() {
                                var selectGoods = $("input[name=goodsIds]:checked");
                                if (selectGoods.length == 0) {
                                    $("button[name=no-select]").trigger('click');
                                    return;
                                }
                                var goodsIds = new Array();
                                for (var i = 0; i < selectGoods.length; i++) {
                                    goodsIds.push($(selectGoods[i]).val());
                                }
                                data = {
                                    goodsIds: goodsIds
                                }
                                deleteList(data);
                            };

                            function deleteList(data) {
                                var options = {
                                    data: data
                                    , url: '/sec/xhr/mypage/interest/deleteHotList'
                                    , done: function (data) {
                                        location.reload(true);
                                    }
                                }
                                ajax.call(options);
                            }


                            // 포인트 시뮬레이터 호출
                            function fnPointSimulator() {
                                let goodsInfos = [];
                                // 상품 아이디, 단가, 수량
                                $("input[name=goodsIds]:checked").each(function () {
                                    let goodsInfo = {
                                        goodsId: $(this).val(),
                                        mdlCode: $(this).data().mdlCode,
                                        goodsNm: $(this).data().goodsNm,
                                        saleQty: 1, //수량
                                        salePrice: $(this).data().saleAmt, //단가
                                        orgSalePrice: $(this).data().orgSaleAmt,
                                    }
                                    goodsInfos.push(goodsInfo);
                                });

                                if (goodsInfos.length > 0) {
                                    let data = {
                                        goodsList: goodsInfos
                                    };
                                    showPointSimulator(data);
                                } else {
                                    makeAlert('시뮬레이션 대상 상품을 선택해 주세요.');
                                }

                            }
                        </script>

                        <div class="listBody myBoardList-style">
                            <h2 class="blind">상품 통합 목록</h2>
                            <ul>

								<%
								
								try {
									 String DB_URL="jdbc:mysql://localhost:3306/gpqd"; 
									String DB_ID="root";
									String DB_PASSWORD="1234"; 
								 
									Class.forName("org.gjt.mm.mysql.Driver");  
									Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
									String date = "";
									String sql3 = "SELECT * FROM orderItem WHERE userID=?";
									PreparedStatement pstmt3 = con.prepareStatement(sql3);
									pstmt3.setString(1, id);

									ResultSet rs3 = pstmt3.executeQuery();
									if (!rs3.next()) {
									%>
										<div class="order-head-info empty-line">
											<span class="no-content">주문/배송 내역이 없습니다.</span>
										</div>
									<%
									} else {
										String sql5 = "SELECT * FROM orderInfo WHERE order_id=?";
										PreparedStatement pstmt5 = con.prepareStatement(sql5);
										pstmt5.setInt(1, rs3.getInt("order_id"));
										ResultSet rs5 = pstmt5.executeQuery();
										if(rs5.next()) {
											date = rs5.getString("order_date");
											String userID = rs5.getString("userID");
											String order_user_name = rs5.getString("order_user_name");
											String order_user_phone = rs5.getString("order_user_phone");
											String order_delivery_name = rs5.getString("order_delivery_name");
											String order_delivery_phone = rs5.getString("order_delivery_phone");
											String order_delivery_address = rs5.getString("order_delivery_address");
											String order_delivery_comment = rs5.getString("order_delivery_comment");
										}
										do {
											String Mno = rs3.getString("Mno");

											String sql4 = "SELECT * FROM product WHERE Mno=?";
											PreparedStatement pstmt4 = con.prepareStatement(sql4);
											pstmt4.setString(1, Mno);
											ResultSet rs4 = pstmt4.executeQuery();

											if (rs4.next()) {
												String Mname = rs4.getString("Mname");
												
												int Mprice = rs4.getInt("Mprice");
												int Msale = rs4.getInt("Msale");
								%>
                                <li>
                                    <!-- case 판매중이 아닌 경우 stopSale class 추가 -->
                                    <div class="boardlist-area" data-omni="SM-A346N|SM-A346NLGBKOO"
                                        data-omni-price="449400">
                                        
                                        <div class="my-boardlist">
                                            <div class="boardlist-image">
                                                <div class="photo">
                                                    <a href="/GMQDisplay-master/product/<%=Mno%>.jsp">
                                                        <!-- KDP-21609 [FO][B2B] 모바일 웹접근성_p83 LMJ START -->
                                                        <img src="/GMQDisplay-master/static/images/product/<%=Mno%>_1.png"
                                                            alt="<%=Mno%>">
                                                        <!-- KDP-21609 [FO][B2B] 모바일 웹접근성_p83 LMJ END -->
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="boardlist-spec">
                                                <p class="type">
													<%=rs5.getString("order_user_name")%> (<%=rs5.getString("userID")%>)
                                                </p>
                                                <!-- 상품 명 -->
                                                <p class="title"><a href="/GMQDisplay-master/product/<%=Mno%>.jsp"><%=Mno%></a></p>
                                                <!-- 모델코드 -->
                                                <p class="label"><%=rs5.getString("order_user_name")%> (<%=rs5.getString("order_user_phone")%>)</p>
                                                
												<p class="option">
													<font style="text-decoration:underline;">받는사람</font> : <%=rs5.getString("order_delivery_name")%><br>
													<font style="text-decoration:underline;">전화번호</font> : <%=rs5.getString("order_delivery_phone")%><br>
													<font style="text-decoration:underline;">주소</font> : <%=rs5.getString("order_delivery_address")%><br>
													<font style="text-decoration:underline;">배송 시 요청사항</font> : <%=rs5.getString("order_delivery_comment")%><br>
												</p>
                                            </div>
                                            <div class="boardlist-price">
                                                <!-- 최종 상품 가격(현재 판매가) -->
                                                <!-- KDP-21609 [FO][B2B] 모바일 웹접근성_p81 LMJ START -->
                                                
                                                <span class="price-big"><span class="sr-only">구매 수량</span><%=rs3.getString("item_count")%> 개</span>
                                                <!-- KDP-21609 [FO][B2B] 모바일 웹접근성_p81 LMJ END -->
                                            </div>

                                            <div class="boardlist-cart" id="boardlist-cart" data-ctpath="/" value="12">
                                                <!-- 판매중지에서는 장바구니 담기 없어짐 -->
                                                <!--<button type="button" class="btn-cart" name="btn-cart" data-mno="<%=Mno%>" data-content="장바구니에 추가되었습니다." data-yes="확인">
                                                    <span>장바구니</span>
                                                </button>-->
                                            </div>
                                            <div class="boardlist-delete">
                                                <!-- 삭제버튼 -->
                                                <button type="button" class="btn-delete" name="deleteHotList" data-mno="<%=rs3.getInt("order_id")%>">
													<%=Mno%> 삭제
												</button>
                                            </div>
                                        </div>
                                    </div>
                                </li>
							<%
											}
										} while(rs3.next());
									}
								} catch (Exception e) {
									out.print(e);
								}
								%>
                            </ul>
<script>
	$(document).on('click', '.btn-delete', function() {
		var mno = $(this).attr('data-mno');
		$.ajax({
			type: 'POST',
			url: '/GMQDisplay-master/Step/DeleteOrder.jsp',
			data: { mno: mno },
			success: function(response) {
				location.reload(true);
			},
			error: function(xhr, status, error) {
				console.error(xhr.responseText);
			}
		});
	});

	$(document).on('click', '.btn-cart', function() {
		var mno = $(this).attr('data-mno');
		$.ajax({
			type: 'POST',
			url: '/GMQDisplay-master/xhr/addCart.jsp',
			data: { Mno: mno, countPrd: "1" },
			success: function(response) {
				location.reload(true);
			},
			error: function(xhr, status, error) {
				console.error(xhr.responseText);
			}
		});
	});
</script>
                        </div>
                        
                    </div>
                    <!-- e : 게시판 -->
                </div>
                <!-- e : conbox 영역 --><!-- 레이어 팝업 모음 -------------------------------------------------------------------------------------------------------------------------------------------------------------------->
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
                <!-- s : 공통 팝업(alert)  -->
                <div class="layer-pop layer-default alert" id="commonAlert2" tabindex="0"
                    data-popup-layer="commonAlert2" data-focus="commonAlert2">
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