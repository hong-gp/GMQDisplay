<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="Join GMQDisplay member to get the latest information on sales and promotions, be the first to know about product launches, and receive support and service for your GMQDisplay Products." />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>GMQDisplay 회원 로그인 | GMQDisplay 한국</title>
    <meta property="og:title" content="GMQDisplay" />
    <meta property="og:description" content="" />
    <meta property="og:url" content="" />
    <meta property="og:image" content="" />
    <link rel="apple-touch-icon" href="" />
    <!-- Place favicon.ico in the root directory -->
    <link href="./G5/css/plugInAll.css" rel="stylesheet" type="text/css" />
    <link href="./G5/css/icon_fonts/style.css" rel="stylesheet" type="text/css" />
        <link href="./G5/css/all.css" rel="stylesheet" type="text/css" />

    <link href="./G5/css/loading.css" rel="stylesheet" type="text/css" />
    <link href="./G5/css/select2.css" rel="stylesheet" type="text/css" />
    <link href="./G5/css/b2c-cookieConsent.css" rel="stylesheet" type="text/css" />
    <link href="./G5/css/zowie-cookieConsent.css" rel="stylesheet" type="text/css" />

    <script src="./G5/js/modernizr.js"></script>
    <script src="./G5/js/jquery-3.5.1.min.js"></script>
    <script src="./G5/js/plugInAll.js"></script>
    <!--<![endif]-->
    <script src="./G5/js/all.js"></script>
    <script src="./G5/js/common.js"></script>
    <script src="./G5/js/select2.js"></script>
    <link rel="stylesheet" href="./content/DataTables-1.10.15/media/css/jquery.dataTables.min.css" />
    <script src="./content/DataTables-1.10.15/media/js/jquery.dataTables.js"></script>
    <script src="./content/bootstrap/js/bootstrap.min.js"></script>
    <script src="./G5/js/b2c-cookieConsent.js"></script>
    <script src="https://apis.google.com/js/api:client.js"></script>
    <script src="https://accounts.google.com/gsi/client"></script>
    
    <script src="https://www.google.com/recaptcha/api.js?hl=en"></script>

    <script type="text/javascript">
        //处理Cross-Frame Scripting问题
        if (top.location != self.location) {
            top.location = self.location;
        }

    </script>
</head>
<body class=>


    <!-- header -->
    <header class="component component-header simple_header" data-cookie-url="/ICDS/G5/json/setting.json">

        <div id="topCookie" data-search-url="/ICDS/Views/Shared/TopCookie.html"></div>
        <div id="bottomCookie" data-search-url="/ICDS/Views/Shared/bottomCookie.html"></div>
        <!-- 第二列 -->
        <aside class="line-2">
            <aside class="container">
                <h1 class="logo">
                    <a href="../index.html">
                        <img class="hidden-xs" src="../static/images/login_logo.png" alt="GMQDisplay" />
                    </a>
                    <a href="../index.html">
                        <img class="visible-xs" src="../static/images/login_logo.png" alt="GMQDisplay" />
                    </a>
                </h1>
            </aside>
        </aside>
        <!-- ./第二列 -->
        <input id="cookiedomain" style="display:none" value="GMQDisplay.com" />

    </header>
    <!-- ./header -->

    
<style type="text/css">.btn_google {
        display: inline-block;
        cursor: pointer;
        width: 50%;
        background: #FFFFFF;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.25);
        border-radius: 5px;
        height: 40px;
    }

    .btn_Kakao {
        display: inline-block;
        cursor: pointer;
        width: 50%;
        background: #4267B2;
        border-radius: 5px;
        height: 40px;
    }

    .sub_title {
        margin-top: 10px;
    }

    .icon-btn_Kakao:before {
        content: "\e9cb";
        color: white;
    }

    .icon {
        font-size: 30px;
    }

    .icon-Faster:before {
        color: white;
    }

    .icon-GMQDisplay_Product:before {
        color: white;
    }

    .icon-sales:before {
        color: white;
    }

    .icon-Status:before {
        color: white;
    }

    .icon-GMQDisplay_Newsletter:before {
        color: white;
    }


    .subtitle {
        position: relative;
        font-size: 20px;
        color: #999999;
        height: 45px;
        line-height: 45px;
        text-align: center;
    }

        .subtitle:before {
            content: "";
            position: absolute;
            width: 25%;
            height: 1px;
            top: 50%;
            background-color: #ededed;
            left: 2%;
        }

        .subtitle:after {
            content: "";
            position: absolute;
            width: 25%;
            height: 1px;
            top: 50%;
            background-color: #ededed;
            right: 2%;
        }

    @media screen and (max-width: 1200px) {
        .log_in .log_left .btn_google {
            width: 100%;
            margin-top: 0px;
            margin-bottom: 10px;
        }
    }

    @media screen and (max-width: 1200px) {
        .log_in .log_left .btn_Kakao {
            width: 100%;
            margin-top: 0px;
            margin-bottom: 10px;
        }
    }

    @media screen and (max-width: 1200px) {
        .log_in .log_left .btn_login {
            width: 100%;
        }
    }

    .log_in .log_left .btn_login {
        margin-top: 5px;
        border: 0px;
    }

    .btn_login {
        padding: 15px 25px;
        text-align: center;
        display: inline-block;
        cursor: pointer;
        font-size: 20px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.25);
        border-radius: 5px;
    }

    .google {
        line-height: 28px;
        background-image: url(./G5/img/Google.svg);
        background-repeat: no-repeat;
        background-size: 25px;
        background-position: 15px 17px;
        text-indent: 10px;
        background-color: white;
        color: black;
        width: 280px;
    }

    .Kakao {
        line-height: 28px;
        background-image: url(./G5/img/Kakao-icon-login.svg);
        background-repeat: no-repeat;
        background-size: 45px;
        background-position: 8px 8px;
        text-indent: 10px;
        background-color: #FEE500;
        color: black;
        width: 280px;
    }

    .line {
        width: 200px;
        height: 100px;
        padding: 5px 30px;
        margin: 50px;
        border: 4px solid #e14d43;
    }

    div span.title {
        display: block;
        width: 40px;
        position: relative;
        top: -15px;
        text-align: center;
        background: #ededef;
        font-size: 16px;
        font-weight: bold;
    }

    .sub_line {
        display: flex;
        flex-direction: row;
        color: #999999;
        font-size: 18px;
    }

        .sub_line:before {
            content: "";
            flex: 1 1;
            border-bottom: 1px solid #ededed;
            margin-top: auto;
            margin-bottom: auto;
            margin-left: 0px;
            margin-right: 15px;
        }

        .sub_line:after {
            content: "";
            flex: 1 1;
            border-bottom: 1px solid #ededed;
            margin-top: auto;
            margin-bottom: auto;
            margin-left: 15px;
            margin-right: 0px;
        }
</style>



<!-- login -->
<%
try {
	 request.setCharacterEncoding("euc-kr");
 	 String DB_URL = "jdbc:mysql://localhost:3306/gpqd";
     String DB_ID = "root"; 
     String DB_PASSWORD = "1234";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

                
    String userID = request.getParameter("userID");

	 String jsql = "select  userID  from user where userID = ?"; 
	 PreparedStatement pstmt = con.prepareStatement(jsql);
	 pstmt.setString(1, userID);
	 ResultSet rs = pstmt.executeQuery(); 

if(rs.next()){
	%>
<div class="block log_in">
    <div class="com_container v_align v_align_top">
        <div class="row">
            <div class="col-sm-7 col-xs-12 log_left">
                <div class="top_area">
                    <div class="login_title" style="margin-left:80px;">회원님의 아이디를 찾았습니다!</div>
                    
                        <div class="form_item" style="margin-left:30px;">
						  <h3>* 회원님의 아이디는 <font style="text-decoration:underline;"><%=rs.getString("userID")%></font> 입니다. *</h3>
                        </div>
                        
						

						<span id="msg" style="display: none; color: #F00; font-size: 12px;"></span>
                        <input type="hidden" id="systemid" name="systemid" value="G5" />
                        <input type="hidden" id="returnurl" name="returnurl" value="https://www.GMQDisplay.com/ko-kr/index.login.html" />
                        <input type="hidden" id="response_type" name="response_type" value="" />
                        <input type="hidden" id="lang" name="lang" value="ko-kr" />
                        <input type="hidden" id="lineid" name="lineid" value="" />
                        <input type="hidden" id="function" name="function" value="Login" />

                        <input type="hidden" id="account" name="account" />
                        <input type="hidden" id="socialType" name="socialType" />
                        <input type="hidden" name="hidden_firstname" />
                        <input type="hidden" name="hidden_lastname" />

                        <div id="RemindChgPwd">
                            <div class="pop_wrap">
                                <div class="pop_content_wrap">
                                    <div class="block_title f_black pop_fix_item text-left">계정보안을 위해 다음과 같이 더 강력한 비밀번호로 바꿀 것을 권장합니다.</div>
                                    <div class="pure_text list_rules">
                                        비밀번호는 다음과 같아야합니다
                                        <br>
                                        <ul id="pw_rule">
                                            <li class="rule_1">최소 8자 이상이어야 합니다</li>
                                            <li class="rule_2">1개 이상의 소문자(a-z)와 대문자(A-Z)를 포함해야 합니다.</li>
                                            <li class="rule_3">하나 이상의 숫자 (0-9) 포함</li>
                                        </ul>
                                    </div>
                                    <div class="text-center">
                                        <div class="btn_small" onclick="ResetPwd()">비밀번호 변경</div>
                                        <a href="#" onclick="skipLogin()" class="text_btn">건너뛰기</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                    

                    <div class="form_item" style="margin-top: 30px;">
                        <div class="sub_line">아이디 · 비밀번호 찾기</div>
                    </div>
                    <div class="form_item" style="text-align: center;">
                        <button class="btn_small" style="margin-right:20px;" onclick="location.href='/GMQDisplay-master/login_info/login.html'">로그인</button>
						<button class="btn_small" style="margin-left:20px;" onclick="location.href='/GMQDisplay-master/login_info/SearchPassword.jsp'">비밀번호 찾기</button>
                    </div>

                    <!--<div class="form_item" id="google" style="text-align: center;">
                        <button class="btn_login google">Login with Google</button>
                    </div>
                    <div class="form_item" id="fblogin" style="text-align: center;">
                        <button class="btn_login Kakao">Login with kakao</button>
                    </div>-->
                </div>
            </div>
            <div class="col-sm-5 col-xs-12 log_right">
                <div class="top_area">
                    <div class="title">
                        GMQDisplay 회원 가입
                    </div>
                    <div class="">
                        회원가입하여 제품을 등록하고, GMQDisplay 신제품 출시, 프로모션 및 GMQDisplay 제품에 대한 지원 및 서비스를 가장 먼저 받으세요. 
                    </div>
                    <a href="./Sign.html" class="btn_small">회원가입</a>
                </div>
                <!--<div class="bottom_area">
                    <ul>
                        <li class="icon"><span class="icon-Faster"></span></li>
                        <li>
                            <div class="sub_title">내 계정<br/>프로필 및 비밀번호 수정</div>

                        </li>
                    </ul>
                    <ul>
                        <li class="icon"><span class="icon-Status"></span></li>
                        <li>
                            <div class="sub_title">구매 내역<br/>구매한 GMQDisplay 제품 보기</div>

                        </li>
                    </ul>
                    <ul>
                        <li class="icon"><span class="icon-sales"></span></li>
                        <li>
                            <div class="sub_title">판매 후 지원<br/>제품에 문제가 있는 경우 당사에 문의하십시오.</div>

                        </li>
                    </ul>
                </div>-->
            </div>
        </div>
    </div>
</div>

<%
	} else { 
%>
<div class="block log_in">
    <div class="com_container v_align v_align_top">
        <div class="row">
            <div class="col-sm-7 col-xs-12 log_left">
                <div class="top_area">
                    <div class="login_title" style="text-align:center;">회원님의 아이디가 존재하지 않습니다.</div>

                    <div class="form_item" style="margin-top: 30px;">
                        <div class="sub_line">아이디 · 비밀번호 찾기</div>
                    </div>
                    <div class="form_item" style="text-align: center;">
                        <button class="btn_small" style="margin-right:20px;" onclick="location.href='/GMQDisplay-master/login_info/SearchId.jsp'">아이디 찾기</button>
						<button class="btn_small" style="margin-left:20px;" onclick="location.href='/GMQDisplay-master/login_info/SearchPassword.jsp'">비밀번호 찾기</button>
                    </div>

                    <!--<div class="form_item" id="google" style="text-align: center;">
                        <button class="btn_login google">Login with Google</button>
                    </div>
                    <div class="form_item" id="fblogin" style="text-align: center;">
                        <button class="btn_login Kakao">Login with kakao</button>
                    </div>-->
                </div>
            </div>
            <div class="col-sm-5 col-xs-12 log_right">
                <div class="top_area">
                    <div class="title">
                        GMQDisplay 회원 가입
                    </div>
                    <div class="">
                        회원가입하여 제품을 등록하고, GMQDisplay 신제품 출시, 프로모션 및 GMQDisplay 제품에 대한 지원 및 서비스를 가장 먼저 받으세요. 
                    </div>
                    <a href="./Sign.html" class="btn_small">회원가입</a>
                </div>
               <!--<div class="bottom_area">
                    <ul>
                        <li class="icon"><span class="icon-Faster"></span></li>
                        <li>
                            <div class="sub_title">내 계정<br/>프로필 및 비밀번호 수정</div>

                        </li>
                    </ul>
                    <ul>
                        <li class="icon"><span class="icon-Status"></span></li>
                        <li>
                            <div class="sub_title">구매 내역<br/>구매한 GMQDisplay 제품 보기</div>

                        </li>
                    </ul>
                    <ul>
                        <li class="icon"><span class="icon-sales"></span></li>
                        <li>
                            <div class="sub_title">판매 후 지원<br/>제품에 문제가 있는 경우 당사에 문의하십시오.</div>

                        </li>
                    </ul>
                </div>-->
            </div>
        </div>
    </div>
</div>
}<%

    } 
}
catch (Exception e) {
    out.println(e);
}

%>

<form id="SignBind" name="SignBind" action="./Member/EditAccount.html">
    <div class="pop_wrap">
        <div class="pop_content_wrap">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
            <div class="block_title f_black pop_fix_item" style="text-align: center">GMQDisplay 회원이 되세요.</div>
            <div style="margin-top: 15px; margin-bottom: 15px;">GMQDisplay 회원이 되시면 프로모션 및 이벤트에 대한 정보를 받을 수 있습니다. </div>
            <div class="pop_content">
                <div class="form_wrap">
                    <div class="row">
                        <div class="col-sm-3 col-xs-12">
                            <div class="form_item_wrap" data-required="true" data-validatetype="email">
                                <div class="form_item_text_warn">
                                    계정
                                </div>
                                <div class="form_item_text_default" data-itemtextdefault="">
                                   
                                </div>
                                <input type="text" placeholder="*이메일을 입력하세요" name="GMQDisplayid" class="com_input">
                            </div>
                        </div>
                    </div>

                    <div class="row">

                        <div class="col-sm-3 col-xs-12">
                            <div class="form_item_wrap" data-required="true" data-validatetype="name">
                                <div class="form_item_text_warn">
                                    이름 
                                </div>
                                <div class="form_item_text_default" data-itemtextdefault="">
                                    
                                </div>
                                <input type="text" placeholder="*이름 " name="firstname" class="com_input">
                            </div>
                        </div>
                        <div class="col-sm-3 col-xs-12">
                            <div class="form_item_wrap" data-required="true" data-validatetype="name">
                                <div class="form_item_text_warn">
                                    성
                                </div>
                                <div class="form_item_text_default" data-itemtextdefault="">
                                   
                                </div>
                                <input type="text" placeholder="*성" name="lastname" class="com_input">
                            </div>
                        </div>
                        <div class="col-sm-3 col-xs-12"></div>
                        <div class="col-sm-3 col-xs-12"></div>
                    </div>
                    <div class="row">
                        <div style="margin-top: 15px; margin-bottom: 15px; text-align: Justify;">GMQDisplay는 귀하의 개인 정보를 보호하고 존중하기 위해 최선을 다하고 있으며 국내 개인정보 보호법을 준수하고 있습니다. 당사는 귀하의 개인 정보 및 계정을 관리하고 귀하가 저희에게 요청한 제품과 서비스 제공과 서비스 품질 개선 및 분석을 위해서만 사용할 것입니다. 귀하의 동의하에 당사 제품 및 서비스뿐만 아니라 귀하가 관심을 가질 수 있는 기타 컨텐츠에 대해 연락드릴 수 있으며 원하시는 경우 언제든지 이러한 커뮤니케이션의 구독을 취소할 수 있습니다. 필요한 경우 귀하의 개인 데이터가 제3국의 GMQDisplay 그룹 회사로 공유 될 수 있으며 이는 위의 제품과 서비스, 서비스 품질 개선의 목적으로만 이루어집니다. 이 경우에도 귀하의 개인 정보 보호 및 데이터 보안을 위해 필요한 모든 조치를 시행할 것입니다. 언제든지 개인정보를 조회, 정정 또는 삭제할 수 있습니다. 그렇게 하고 싶거나 개인 정보 보호 권리에 대해 궁금한 점이 있으면 당사에 문의하십시오. 개인 정보 보호 관행에 대한 자세한 내용은 개인 정보 보호 정책을 검토하십시오.</div>
                    </div>
                    <div class="g5_row">
                        <div class="col-sm-12 col-xs-12">


                            <label class="check_area  ">

                                <input type="checkbox" name="chkterms">
                                <div class="checkbox_cover"></div>
                                    <div>개인 정보 보호 정책, 약관을 읽었으며 GMQDisplay가 위의 목적을 위해 개인 정보를 처리할 수 있도록 하는 데 동의합니다.  <a href="https://www.GMQDisplay.com/ko-kr/policy/user-terms.html" target="_blank" class="text_btn text_underline">약관</a> <a href="https://www.GMQDisplay.com/ko-kr/policy/privacy-policy.html" target="_blank" class="text_btn text_underline">개인정보 보호 정책</a></div>
                            </label>

                        </div>
                        <div class="col-sm-12 col-xs-12">
                            <label class="check_area  ">

                                <input type="checkbox" name="chkmemepaper">
                                <div class="checkbox_cover"></div>
                                <div>GMQDisplay로부터 마케팅 제안과 업데이트를 받고 싶습니다.</div>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="com_btn_wrap text-center pop_fix_item">
                <button class="form_btn com_btn bg_purple mobile_full ">GMQDisplay 회원 등록</button>
            </div>
        </div>
    </div>
</form>



<form id="Connect" name="Connect" action="./Member/EditAccount.html">
    <div class="pop_wrap">
        <div class="pop_content_wrap">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
            <div class="block_title f_black pop_fix_item">이 이메일은 GMQDisplay 회원으로 등록되었으며, GMQDisplay 계정에 연결할 수 있습니다.</div>
            <div class="form_wrap">

                <div class="row">
                    

                    <div class="col-sm-3 col-xs-12">
                        <div class="form_item_wrap" data-required="true" data-validatetype="email">
                            <div class="form_item_text_warn">
                                계정
                            </div>
                            <div class="form_item_text_default" data-itemtextdefault="">
                                
                            </div>
                            <input type="text" placeholder="*이메일을 입력하세요" name="mailAddress" class="com_input">
                        </div>
                    </div>

                </div>

                <div class="row">
                    <div class="col-sm-3 col-xs-12">
                        <div class="form_item_wrap" data-required="true" data-validatetype="">
                            <div class="form_item_text_warn">비밀번호</div>
                            <div class="form_item_text_default" data-itemtextdefault="">
                            </div>
                            <input type="password" name="password" placeholder="비밀번호를 입력하세요" class="com_input" style="margin-top: 10px">
                        </div>

                    </div>
                            <a style="padding-left: 10px;padding-top: 25px;" href="" class="text_btn">비밀번호를 잊으셨나요?</a>
                    
                </div>
            </div>
            <div class="com_btn_wrap text-center pop_fix_item">
                <input class=" com_btn bg_purple mobile_full" id="back" type="button" value="뒤로" style="display:none" />
                <button class="form_btn com_btn bg_purple mobile_full">GMQDisplay 계정 통합하기</button>
            </div>

        </div>
    </div>
</form>



<!-- ./login -->

<script type="text/javascript">

    // app.partial.pop_action();

    
    window.addEventListener('message', function (e) {
        console.log(e.data);

        var data = JSON.parse(e.data);
        if (data.code) {
            //data.number = 16;
            //data.age = 89;
            //data.icon = 'sfafdafdafasdf';

           
            //alert(data.code);
            //login(data.code);

            


            //window.parent.postMessage(JSON.stringify(data), 'http://10.73.154.72:8088');
        }
    }, false);

    window.fbAsyncInit = function () {
        FB.init({
            appId: '550493152528441',
            cookie: true,
            xfbml: true,
            version: 'v12.0'
        });

        FB.AppEvents.logPageView();

    };

    (function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//developers.kakao.com/sdk/js/kakao.js";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'kakao-sdk'));


    $("#fblogin").click(function () {
        FB.login(function (response) {
            statusChangeCallback(response);
        }, { scope: 'email' }); 
    });

   

    var statusChangeCallback = function (response) {
        if (response.status === 'connected') {
            var accessToken = response.authResponse.accessToken;
            var userID = response.authResponse.userID;
            var systemid = $("input[name=systemid]").val();
            var returnurl = $("input[name=returnurl]").val();
            var response_type = $("input[name=response_type]").val();
            FB.api('/me?fields=name,first_name,last_name,email', function (response) {
                if (response.email != null) {
                    //alert(response.email);
                    $.ajax({
                        url: "/ICDS/Home/CheckSign",
                        type: "Post",
                        data: {
                            GMQDisplayID: response.email,
                            FirstName: response.first_name,
                            LastName: response.last_name,
                            systemid: systemid,
                            returnurl: returnurl,
                            response_type: response_type,
                            Type: "Kakao",
                            Account: userID,
							lineid: $("input[name=lineid]").val()
                        },
                        dataType: "json",
                        success: function (data) {
                            $("input[name=socialType]").val('Kakao');

                            $("input[name=account]").val(userID);
                            $("input[name=hidden_firstname]").val(response.first_name);
                            $("input[name=hidden_lastname]").val(response.last_name);
                            if (data.type == 0) {

                                $("input[name='GMQDisplayid']").val(response.email);
                                $("input[name='GMQDisplayid']").attr("readonly", true);
                                $("input[name='firstname']").val(response.first_name);
                                $("input[name='lastname']").val(response.last_name);
                                $("#SignBind").find(".pop_wrap").addClass("show");


                            } else if (data.type == 1) {
                                $("input[name='mailAddress']").val(response.email);
                                $("input[name='mailAddress']").attr("readonly", true);
                                $("#Connect").find(".pop_wrap").addClass("show");
                            }
                            else {
                                var url = data.value;
                                if (url.substring(0, 4) == "http") {
                                    Post(data.value);
                                }
                                else {

                                    window.location.href = url;
                                }
                            }
                        },
                        error: function (xhr, ajaxOptions, thrownError) {
                            alert("System Error(" + xhr.status + "):" + xhr.responseText);
                        }
                    });
                } else {

                    $.ajax({
                        url: "/ICDS/Home/CheckSignWithAccount",
                        type: "Post",
                        data: {
                            Account: userID,
                            FirstName: response.first_name,
                            LastName: response.last_name,
                            systemid: systemid,
                            returnurl: returnurl,
                            response_type: response_type,
                            Type: "Kakao",
							lineid: $("input[name=lineid]").val()
                        },
                        dataType: "json",
                        success: function (data) {
                            $("input[name=socialType]").val('Kakao');

                            $("input[name=account]").val(userID);
                            $("input[name=hidden_firstname]").val(response.first_name);
                            $("input[name=hidden_lastname]").val(response.last_name);
                            if (data.type == 0) {

                                //$("input[name='GMQDisplayid']").val(response.email);
                                $("input[name='firstname']").val(response.first_name);
                                $("input[name='lastname']").val(response.last_name);
                                $("#SignBind").find(".pop_wrap").addClass("show");


                            }
                            else {
                                var url = data.value;
                                if (url.substring(0, 4) == "http") {
                                    Post(data.value);
                                }
                                else {

                                    window.location.href = url;
                                }
                            }
                        },
                        error: function (xhr, ajaxOptions, thrownError) {
                            alert("System Error(" + xhr.status + "):" + xhr.responseText);
                        }
                    });
                }
            });
        }
    };

    //google------------------------------------------------------------

    $(document).ready(function () {
        initClient();
    });

    var client;
    function initClient() {
        client = google.accounts.oauth2.initCodeClient({
            client_id: "796270023713-br4u03j9isv0o2naa2nvco2of612kfq6.apps.googleusercontent.com",
            scope: 'profile',
            ux_mode: 'popup',
            callback: (response) => {

                var systemid = $("input[name=systemid]").val();
                var returnurl = $("input[name=returnurl]").val();
                var response_type = $("input[name=response_type]").val();
                $.ajax({
                    url: "/ICDS/Home/CheckGoogleSign",
                    type: "Post",
                    data: {
                        //GMQDisplayID: profile.getEmail(),
                        //FirstName: profile.getGivenName(),
                        //LastName: profile.getFamilyName(),
                        code: response.code,
                        systemid: systemid,
                        returnurl: returnurl,
                        response_type: response_type,
                        Type: "Google",
                        //Account: profile.getId(),
                        lineid: $("input[name=lineid]").val()
                    },
                    dataType: "json",
                    success: function (data) {
                        if (data.type == -1) {
                            $.alertMessage({
                                message: data.message
                            });
                        }
                        else {
                            $("input[name=socialType]").val('Google');

                            $("input[name=account]").val(data.data.id);
                            $("input[name=hidden_firstname]").val(data.data.given_name);
                            $("input[name=hidden_lastname]").val(data.data.family_name);
                            if (data.type == 0) {
                                $("input[name='GMQDisplayid']").val(data.data.email);
                                $("input[name='firstname']").val(data.data.given_name);
                                $("input[name='lastname']").val(data.data.family_name);
                                $("#SignBind").find(".pop_wrap").addClass("show");


                            } else if (data.type == 1) {
                                $("input[name='mailAddress']").val(data.data.email);

                                $("input[name='mailAddress']").attr("readonly", true);
                                $("#Connect").find(".pop_wrap").addClass("show");
                            }
                            else {
                                var url = data.value;
                                if (url.substring(0, 4) == "http") {
                                    Post(data.value);
                                }
                                else {

                                    window.location.href = url;
                                }
                            }
                        }
                       
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert("System Error(" + xhr.status + "):" + xhr.responseText);
                    }
                });
            },
        });
    }
    function getAuthCode() {
        // Request authorization code and obtain user consent
        client.requestCode();
    }

    $("#google").click(function() {
		//startSignIn();
        //$("#googleLogin").attr("disabled",true);
        getAuthCode();
	});
    

    function attachSignin(element) {

        auth2.attachClickHandler(element, {},

        function (googleUser) {
            // document.getElementById('name').innerText = "Signed in: " + googleUser.getBasicProfile().getName();                  <div id="name">显示姓名</div>
            var profile = auth2.currentUser.get().getBasicProfile();
            //console.log('ID: ' + profile.getId());
            //console.log('Full Name: ' + profile.getName());
            //console.log('Given Name: ' + profile.getGivenName());
            //console.log('Family Name: ' + profile.getFamilyName());
            //console.log('Image URL: ' + profile.getImageUrl());
            //console.log('Email: ' + profile.getEmail());

            var systemid = $("input[name=systemid]").val();
            var returnurl = $("input[name=returnurl]").val();
            var response_type = $("input[name=response_type]").val();
            $.ajax({
                url: "/ICDS/Home/CheckSign",
                type: "Post",
                data: {
                    GMQDisplayID: profile.getEmail(),
                    FirstName: profile.getGivenName(),
                    LastName: profile.getFamilyName(),
                    systemid: systemid,
                    returnurl: returnurl,
                    response_type: response_type,
                    Type: "Google",
                    Account: profile.getId(),
					lineid: $("input[name=lineid]").val()
                },
                dataType: "json",
                success: function (data) {

                    $("input[name=socialType]").val('Google');

                    $("input[name=account]").val(profile.getId());
                    $("input[name=hidden_firstname]").val(profile.getGivenName());
                    $("input[name=hidden_lastname]").val(profile.getFamilyName());
                    if (data.type == 0) {
                        $("input[name='GMQDisplayid']").val(profile.getEmail());
                        $("input[name='firstname']").val(profile.getGivenName());
                        $("input[name='lastname']").val(profile.getFamilyName());
                        $("#SignBind").find(".pop_wrap").addClass("show");


                    } else if (data.type == 1) {
                        $("input[name='mailAddress']").val(profile.getEmail());

                        $("input[name='mailAddress']").attr("readonly", true);
                        $("#Connect").find(".pop_wrap").addClass("show");
                    }
                    else {
                        var url = data.value;
                        if (url.substring(0, 4) == "http") {
                            Post(data.value);
                        }
                        else {

                            window.location.href = url;
                        }
                    }
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    alert("System Error(" + xhr.status + "):" + xhr.responseText);
                }
            });
        }, function (error) {

            //console.log(JSON.stringify(error, undefined, 2));

        });

    }

 



    
    function signOut() {

        var auth2 = gapi.auth2.getAuthInstance();

        auth2.signOut().then(function () {

            alert('用户注销成功');

        });

    }


    function Bind() {
        $.ajax({
            url: "/ICDS/Home/Bind",
            type: "Post",
            data: {
                GMQDisplayID: profile.getEmail(),
                FirstName: profile.getGivenName(),
                LastName: profile.getFamilyName(),
                Type: "google"
            },
            dataType: "json",
            success: function (data) {
                if (data.type == 1) {

                    var url = data.value;
                    if (url.substring(0, 4) == "http") {
                        Post(data.value);
                    }
                    else {

                        window.location.href = url;
                    }


                } else {
                    $.alertMessage({
                        message: data.message
                    });

                }

            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert("System Error(" + xhr.status + "):" + xhr.responseText);
            }
        });
    }




    $("#SignBind").submit(function (e) {


        e.preventDefault();
        app.partial.check_form_val();
        var invalid_num = $("#SignBind").find(".form_wrap").find('.form_item_text_warn:visible').length;
        if (invalid_num > 0) {
            return;
        }

        var GMQDisplayid = $("input[name=GMQDisplayid]").val();
        var firstName = $("input[name=firstname]").val();
        var lastName = $("input[name=lastname]").val();

        var systemid = $("input[name=systemid]").val();
        var lang = $("input[name=lang]").val();
        var returnurl = $("input[name=returnurl]").val();

        var chkmemepaper = "on";
        if (!$("input[name=chkmemepaper]")[0].checked) {
            chkmemepaper = "";
        }

        var chkterms = $("input[name=chkterms]").val();
        if (!$("input[name=chkterms]")[0].checked) {
            alert("이용약관에 체크하였는지 확인 바랍니다");
            return;
        }

        var type = $("input[name=socialType]").val();
        var account = $("input[name=account]").val();

        $.ajax({
            url: "/ICDS/Home/SignAndBind",
            type: "Post",
            data: {
                GMQDisplayid: GMQDisplayid,
                firstName: firstName,
                lastName: lastName,
                type: type,
                systemid: systemid,
                lang: lang,
                returnurl: returnurl,
                chkmemepaper: chkmemepaper,
                account: account,
                lineid: $("input[name=lineid]").val()
            },
            dataType: "json",
            success: function (data) {
                if (data.type == 1) {

                    var url = data.value;
                    if (url.substring(0, 4) == "http") {
                        Post(data.value);
                    }
                    else {

                        window.location.href = url;
                    }


                }
                else if (data.type == 3) {
                    
                    //alert('test');
                    $("#SignBind").find(".close").click();
                    $("input[name='mailAddress']").val(GMQDisplayid);
                    $("#Connect").find(".pop_wrap").addClass("show");
                    $("#back").show();
                }
                else {
                    $.alertMessage({
                        message: data.message
                    });

                }

            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert("System Error(" + xhr.status + "):" + xhr.responseText);
            }
        });

    });



    $("#back").on("click", function () {
        //pop_content.slimScroll("destroy");
        //alert('122');
        $("#Connect").find(".close").click();
        $("#SignBind").find(".pop_wrap").addClass("show");
    });

    //function BackTo() {
    //    $("#Connect").find(".close").click();
    //    $("#SignBind").find(".pop_wrap").addClass("show");
    //}


    $("#Connect").submit(function (e) {


        e.preventDefault();
        app.partial.check_form_val();
        var password = $("#Connect").find('input[name=password]').val();
        if (password == "") {
            $("#Connect").find('.form_item_text_warn').eq(1).show();

        }
        var invalid_num = $("#Connect").find('.form_item_text_warn:visible').length;
        if (invalid_num > 0) {
            return;
        }

        var email = $("input[name=mailAddress]").val();
        var firstName = $("input[name=hidden_firstname]").val();
        var lastName = $("input[name=hidden_lastname]").val();

        var systemid = $("input[name=systemid]").val();
        var lang = $("input[name=lang]").val();
        var returnurl = $("input[name=returnurl]").val();
        var response_type = $("input[name=response_type]").val();


        var type = $("input[name=socialType]").val();
        var account = $("input[name=account]").val();



        $.ajax({
            url: "/ICDS/Home/Bind",
            type: "Post",
            data: {
                email: email,
                firstName: firstName,
                lastName: lastName,
                type: type,
                systemid: systemid,
                lang: lang,
                returnurl: returnurl,
                response_type: response_type,
                account: account,
                password: password,
                lineid: $("input[name=lineid]").val()
            },
            dataType: "json",
            success: function (data) {
                if (data.type == 1) {

                    var url = data.value;
                    if (url.substring(0, 4) == "http") {
                        Post(data.value);
                    }
                    else {

                        window.location.href = url;
                    }


                } else {
                    $.alertMessage({
                        message: data.message
                    });

                }

            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert("System Error(" + xhr.status + "):" + xhr.responseText);
            }
        });

    });


    //用戶登陸
    $("#AccountLogin").submit(function (e) {

        //var email = $("input[name='userName']");

        //if (!checkEmail(email[0].value)) {
        //    var email_wrap = email.parent(".form_item");
        //    email_wrap.addClass("invalid");
        //    e.preventDefault();
        //    return;
        //}
        e.preventDefault();
        $('#login').attr("disabled", "disabled"); //设置变灰按钮
        $('#login').css('background-color', '#ccc');

		var id = $("#userName").val();
		var pw = $("#password").val();
			$.ajax({
				type: "POST",
				url: "./loginSuccess.jsp",
				data: {"userName": id, "password": pw},
				dataType: "json",
				success: function(data) {
					if (data.result == "success") {
						location.href = "../index.html";
					} else {
						var password = $("input[name='password']");
						var password_wrap = password.parent(".form_item");
						password_wrap.addClass("invalid");
					}
				},
				error: function(xhr, status, error) {
					alert("에러 발생");
				}
			});

			$('#login').removeAttr("disabled");
			$('#login').removeAttr("style");
    });

    function skipLogin() {
        $.ajax({
            url: "/ICDS/Home/SkipLogin",
            type: "Post",
            data: $("#AccountLogin").serialize(),
            dataType: "json",
            success: function (data) {
                if (data.type == 1) {
                    var url = data.value;
                    if (url.substring(0, 4) == "http") {
                        Post(data.value);
                    }
                    else {
                        window.location.href = url;
                    }
                    //$("#RemindChgPwd").find(".pop_wrap").addClass("show");

                } else {
                    //var password = $("input[name='password']");
                    //var password_wrap = password.parent(".form_item");
                    //password_wrap.addClass("invalid");

                }

            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert("System Error(" + xhr.status + "):" + xhr.responseText);
            }
        });
    }

    function ResetPwd() {
        $.ajax({
            url: "/ICDS/Home/ResetPwd",
            type: "Post",
            data: $("#AccountLogin").serialize(),
            dataType: "json",
            success: function (data) {
                if (data.type == 1) {

                    window.location.href = "./Help/ResetPassword?" + data.value;

                } else {
                    $.alertMessage({
                        message: data.message
                    });

                }

            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert("System Error(" + xhr.status + "):" + xhr.responseText);
            }
        });
    }

    function Post(URL) {
        //创建form表单

        if (URL.indexOf("?") > 0) {
            var purl = URL.substring(0, URL.indexOf("?") + 1);
            var parames = URL.substring(URL.indexOf("?") + 1);
            var name = parames.split("=")[0];
            var value = parames.split("=")[1];

            var temp_form = document.createElement("form");
            
            temp_form.action = purl;
            
            temp_form.target = "_self";
            temp_form.method = "post";
            temp_form.style.display = "none";
            
            //for (var item in PARAMTERS) {
            var opt = document.createElement("textarea");
            opt.name = name;
            opt.value = value;
            temp_form.appendChild(opt);
            //}
            document.body.appendChild(temp_form);
           
            temp_form.submit();
        }
        else {
            var temp_form = document.createElement("form");
            
            temp_form.action = URL;
            
            temp_form.target = "_self";
            temp_form.method = "post";
            temp_form.style.display = "none";

            var opt = document.createElement("textarea");
            opt.name = "clubGMQDisplaytoken";
            opt.value = "";
            temp_form.appendChild(opt);
            document.body.appendChild(temp_form);
            
            temp_form.submit();
        }
    }

    //var CoRuType = System.Web.Configuration.WebConfigurationManager.AppSettings["InvoiceUrl"];
    //var test = window.location.host;
    //var test = window.location.pathname;
    //window.location.
    //alert(CoRuType);

    //var email = $("input[name='userName']");
    //alert(email.value);
    //var email_wrap = email.parent(".form_item");
    //email_wrap.addClass("invalid");


    var url = "";

    if (url != "") {
        var msg = "";
        if (msg != "") {

            //alertMess(msg);
        }

        Post(url);
    }

    function validateComments(input) {
        if (input.id == "password") {
            if (input.value.length < 1) {
                //var email = $("input[name='userName']");
                //var email_wrap = email.parent(".form_item");
                //email_wrap.addClass("invalid");
            }
        }


    }

    $(".close").each(function () {

        var close_btn = $(this);
        close_btn.on("click.popclose", function () {
            //pop_content.slimScroll("destroy");
            $(this).parent().parent('.pop_wrap').removeClass("show");
            $("#back").hide();
        });

    });

    function getAccessToken(authCode) {
  var clientId = '377d591217a34f51476e1596c6830486'; // 앱 등록 시 발급받은 클라이언트 ID
  var clientSecret = '377d591217a34f51476e1596c6830486'; // 앱 등록 시 발급받은 클라이언트 시크릿
  var redirectUri = '377d591217a34f51476e1596c6830486'; // 앱 등록 시 등록한 리다이렉트 URI

  $.ajax({
    type: 'POST',
    url: 'https://kauth.kakao.com/oauth/token',
    headers: {
      'Content-type': 'application/x-www-form-urlencoded;charset=utf-8'
    },
    data: {
      grant_type: 'authorization_code',
      client_id: clientId,
      client_secret: clientSecret,
      redirect_uri: redirectUri,
      code: authCode
    },
    success: function(response) {
      var accessToken = response.access_token;
      console.log('access_token: ' + accessToken);
    },
    error: function(error) {
      console.log(error);
    }
  });
}



    function login(code) {
        alert(code);
        var url = "https://graph.Kakao.com/oauth/access_token?client_id=550493152528441&redirect_uri=&client_secret=&code=" + code;

        $.ajax({
            type: "get",
            url: url,
            async: false,
            dataType: "json",
            success: function (data) {
                //callback(JSON.stringify(data));
                var token = data.access_token;
                //alert(data);

                var infourl = "https://graph.Kakao.com/v6.0/me?access_token=" + token + "&fields=name,first_name,last_name,email";
                $.ajax({
                    type: "get",
                    url: infourl,
                    async: false,
                    dataType: "json",
                    success: function (data) {
                        //callback(JSON.stringify(data));
                        var email = data.email;
                        var first_name = data.first_name;
                        var last_name = data.last_name;
                        var userID = data.id;
                        var systemid = $("input[name=systemid]").val();
                        var returnurl = $("input[name=returnurl]").val();
                        var response_type = $("input[name=response_type]").val();
                        if (email != null) {
                            //alert(response.email);
                            $.ajax({
                                url: "/ICDS/Home/CheckSign",
                                type: "Post",
                                async: false,
                                data: {
                                    GMQDisplayID: email,
                                    FirstName: first_name,
                                    LastName: last_name,
                                    systemid: systemid,
                                    returnurl: returnurl,
                                    response_type: response_type,
                                    Type: "Kakao",
                                    lineid:$("input[name=lineid]").val()
                                },
                                dataType: "json",
                                success: function (data) {
                                    $("input[name=socialType]").val('Kakao');

                                    $("input[name=account]").val(userID);
                                    $("input[name=hidden_firstname]").val(first_name);
                                    $("input[name=hidden_lastname]").val(last_name);
                                    if (data.type == 0) {

                                        $("input[name='GMQDisplayid']").val(email);
                                        $("input[name='firstname']").val(rfirst_name);
                                        $("input[name='lastname']").val(last_name);
                                        $("#SignBind").find(".pop_wrap").addClass("show");


                                    } else if (data.type == 1) {
                                        $("input[name='mailAddress']").val(email);
                                        $("input[name='mailAddress']").attr("readonly", true);
                                        $("#Connect").find(".pop_wrap").addClass("show");
                                    }
                                    else {
                                        var url = data.value;
                                        if (url.substring(0, 4) == "http") {
                                            Post(data.value);
                                        }
                                        else {

                                            window.location.href = url;
                                        }
                                    }
                                },
                                error: function (xhr, ajaxOptions, thrownError) {
                                    alert("System Error(" + xhr.status + "):" + xhr.responseText);
                                }
                            });
                        } else {

                            $.ajax({
                                url: "/ICDS/Home/CheckSignWithAccount",
                                type: "Post",
                                async: false,
                                data: {
                                    Account: userID,
                                    FirstName: first_name,
                                    LastName: last_name,
                                    systemid: systemid,
                                    returnurl: returnurl,
                                    response_type: response_type,
                                    Type: "Kakao",
                                    lineid: $("input[name=lineid]").val()
                                },
                                dataType: "json",
                                success: function (data) {
                                    $("input[name=socialType]").val('Kakao');

                                    $("input[name=account]").val(userID);
                                    $("input[name=hidden_firstname]").val(first_name);
                                    $("input[name=hidden_lastname]").val(last_name);
                                    if (data.type == 0) {
                                        alert($("input[name='userName']").length);


                                        //$("input[name='GMQDisplayid']").val(response.email);
                                        //$("input[name='firstname']").val(first_name);
                                        //$("input[name='lastname']").val(last_name);
                                        $("input[name='userName']").val(first_name);
                                        $("#SignBind").find(".pop_wrap").addClass("show");


                                    }
                                    else {
                                        var url = data.value;
                                        if (url.substring(0, 4) == "http") {
                                            Post(data.value);
                                        }
                                        else {

                                            window.location.href = url;
                                        }
                                    }
                                },
                                error: function (xhr, ajaxOptions, thrownError) {
                                    alert("System Error(" + xhr.status + "):" + xhr.responseText);
                                }
                            });
                        }
                    }

                });


            },
            complete: function (XMLHttpRequest, status) {
                if (status == 'timeout') {
                    //    callback(JSON.stringify(timeOutMsg));
                    //    personShow.request_post.abort();　　　　　　　　
                }
            }
        });



    }

    function tt(code) {

        var url = "https://graph.Kakao.com/oauth/access_token?client_id=550493152528441&redirect_uri=&client_secret=&code=" + code;

        $.ajax({
            type: "get",
            url: url,
            dataType: "json",
            success: function (data) {
                //callback(JSON.stringify(data));
                var token = data.access_token;
                //alert(data);

                var infourl = "https://graph.Kakao.com/v12.0/me?access_token=" + token + "&fields=name,first_name,last_name,email";
                $.ajax({
                    type: "get",
                    url: infourl,
                    dataType: "json",
                    success: function (data) {
                        //callback(JSON.stringify(data));
                        var email = data.email;
                        var first_name = data.first_name;
                        var last_name = data.last_name;
                        var userID = data.id;
                        var systemid = $("input[name=systemid]").val();
                        var returnurl = $("input[name=returnurl]").val();
                        var response_type = $("input[name=response_type]").val();
                        if (email != null) {
                            //alert(response.email);
                            $.ajax({
                                url: "/ICDS/Home/CheckSign",
                                type: "Post",
                                data: {
                                    GMQDisplayID: email,
                                    FirstName: first_name,
                                    LastName: last_name,
                                    systemid: systemid,
                                    returnurl: returnurl,
                                    response_type: response_type,
                                    Type: "Kakao"
                                },
                                dataType: "json",
                                success: function (data) {
                                    $("input[name=socialType]").val('Kakao');

                                    $("input[name=account]").val(userID);
                                    $("input[name=hidden_firstname]").val(first_name);
                                    $("input[name=hidden_lastname]").val(last_name);
                                    if (data.type == 0) {

                                        $("input[name='GMQDisplayid']").val(email);
                                        $("input[name='firstname']").val(rfirst_name);
                                        $("input[name='lastname']").val(last_name);
                                        $("#SignBind").find(".pop_wrap").addClass("show");


                                    } else if (data.type == 1) {
                                        $("input[name='mailAddress']").val(email);
                                        $("input[name='mailAddress']").attr("readonly", true);
                                        $("#Connect").find(".pop_wrap").addClass("show");
                                    }
                                    else {
                                        var url = data.value;
                                        if (url.substring(0, 4) == "http") {
                                            Post(data.value);
                                        }
                                        else {

                                            window.location.href = url;
                                        }
                                    }
                                },
                                error: function (xhr, ajaxOptions, thrownError) {
                                    alert("System Error(" + xhr.status + "):" + xhr.responseText);
                                }
                            });
                        } else {

                            $.ajax({
                                url: "/ICDS/Home/CheckSignWithAccount",
                                type: "Post",
                                data: {
                                    Account: userID,
                                    FirstName: first_name,
                                    LastName: last_name,
                                    systemid: systemid,
                                    returnurl: returnurl,
                                    response_type: response_type,
                                    Type: "Kakao"
                                },
                                dataType: "json",
                                success: function (data) {
                                    $("input[name=socialType]").val('Kakao');

                                    $("input[name=account]").val(userID);
                                    $("input[name=hidden_firstname]").val(first_name);
                                    $("input[name=hidden_lastname]").val(last_name);
                                    if (data.type == 0) {

                                        //$("input[name='GMQDisplayid']").val(response.email);
                                        $("input[name='firstname']").val(first_name);
                                        $("input[name='lastname']").val(last_name);
                                        $("#SignBind").find(".pop_wrap").addClass("show");


                                    }
                                    else {
                                        var url = data.value;
                                        if (url.substring(0, 4) == "http") {
                                            Post(data.value);
                                        }
                                        else {

                                            window.location.href = url;
                                        }
                                    }
                                },
                                error: function (xhr, ajaxOptions, thrownError) {
                                    alert("System Error(" + xhr.status + "):" + xhr.responseText);
                                }
                            });
                        }
                    }

                });


            },
            complete: function (XMLHttpRequest, status) {
                if (status == 'timeout') {
                    //    callback(JSON.stringify(timeOutMsg));
                    //    personShow.request_post.abort();　　　　　　　　
                }
            }
        });



    }

    function GetRequest(urlStr) {
        if (typeof urlStr == "undefined") {
            var url = decodeURI(location.search); //获取url中"?"符后的字符串
        } else {
            var url = "?" + urlStr.split("?")[1];
        }
        var theRequest = new Object();
        var para = "";
        if (url.indexOf("?") != -1) {
            var str = url.substr(1);
            strs = str.split("&");
            for (var i = 0; i < strs.length; i++) {
                //theRequest[strs[i].split("=")[0]] = decodeURI(strs[i].split("=")[1]);
                if (i == strs.length - 1) {
                    para += strs[i].split("=")[0] + "=" + strs[i].split("=")[1];
                }
                else {
                    para += strs[i].split("=")[0] + "=" + strs[i].split("=")[1] + ",";
                }
            }
        }
        //return theRequest;
        return para;
    }

</script>

</body>
</html>
