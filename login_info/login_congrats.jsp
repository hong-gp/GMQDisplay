<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="Join GMQDisplay member to get the latest information on sales and promotions, be the first to know about product launches, and receive support and service for your GMQDisplay Products." />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>Sign | GMQDisplay 한국</title>
    <meta property="og:title" content="GMQDisplay" />
    <meta property="og:description" content="" />
    <meta property="og:url" content="" />
    <meta property="og:image" content="" />
    <link rel="apple-touch-icon" href="" />
    <link rel="shortcut icon" href="/GMQDisplay-master/static/images/favicon.png">
    <link href="./G5/css/plugInAll.css" rel="stylesheet" type="text/css" />
    <link href="./G5/css/icon_fonts/style.css" rel="stylesheet" type="text/css" />
        <link href="./G5/css/all.css" rel="stylesheet" type="text/css" />

    <link href="./G5/css/loading.css" rel="stylesheet" type="text/css" />
    <link href="./G5/css/select2.css" rel="stylesheet" type="text/css" />
    <link href="./G5/css/b2c-cookieConsent.css" rel="stylesheet" type="text/css" />
    <link href="./G5/css/zowie-cookieConsent.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="./login_congrats.css">

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
        <!-- 로고영역 -->
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
        <!-- 로고끝 -->
        <input id="cookiedomain" style="display:none" value="GMQDisplay.com" />

    </header>
    <!-- 헤더의 끝 -->

    <style type="text/css">.visible {
        display: block;
    }

    .sub_line {
        display: flex;
        flex-direction: row;
        color: #e71f19;
        font-size: 18px;
        margin-top: 15px;
        margin-bottom: 15px;
        border-width: 1px;
        border-style: solid;
    }

    .file_input_wrap .btn_upload1 {
        position: absolute;
        top: 50%;
        left: 0;
        -webkit-transform: translateY(-50%);
        transform: translateY(-50%);
        z-index: 5;
        pointer-events: none;
        cursor: pointer;
        color: #eeeeee;
    }
</style>
<%
	request.setCharacterEncoding("utf-8");

	String firstname = request.getParameter("firstname");
	String lastname = request.getParameter("lastname");
	String name = lastname + firstname;

	String email = request.getParameter("email");
	String password = request.getParameter("password");

	try {
		String db_url = "jdbc:mysql://localhost:3306/gpqd";
		String db_id = "root";
		String db_password = "1234";

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(db_url, db_id, db_password);

		String sql = "INSERT INTO user (userID, userPassword, userName, userBirth, userGender, userEmail) VALUE (?,?,?,?,?,?)"; 
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, email);
		pstmt.setString(2, password);
		pstmt.setString(3, name);
		pstmt.setString(4, "");
		pstmt.setString(5, "");
		pstmt.setString(6, "");

		pstmt.executeUpdate();
	} catch (Exception e) {
		out.print(e);
	}
%>
<div class="block log_in ">
	<div class="com_container   v_align_top bg_white log_content">
		<div class="container">
		<h1>회원가입을 축하합니다!</h1>
		<p>회원가입이 완료되었습니다. 환영합니다!</p>
		<a href="/GMQDisplay-master/login_info/login.html" class="homeBtn">로그인하러 가기</a>
    </div>
</div>
 

</div>

<script type="text/javascript">
    var lang = "ko-kr";

    function namechk(from) {
        var form_wrap = from.find(".form_wrap");

        var clear_btn = form_wrap.find(".form_clear_btn");
        var form_item_wrap = form_wrap.find(".form_item_wrap");

        for (var i = 0; i < form_item_wrap.length; i++) {

            var input = form_item_wrap.eq(i).find("input");
            var val = input.val().trim();
            var default_text = form_item_wrap.eq(i).find(".form_item_text_default");
            var warn_text = form_item_wrap.eq(i).find(".form_item_text_warn");

            if (form_item_wrap.eq(i).attr("data-required") == "true" && form_item_wrap.eq(i).get(0).hasAttribute("data-validateType")) {

                var validateType = form_item_wrap.eq(i).attr("data-validateType").trim().toLowerCase();
                var validatePattern;

                if (validateType == 'name') {

                    if (val.length == 0) {
                        do_warn_text(warn_text, default_text, true);
                    }
                    else {
                        do_warn_text(warn_text, default_text, false);
                    }
                }
            }
        }
    }

    function do_warn_text(pWarn_text_item, pdefault_text_item, pJduage) {
        if (pJduage) {
            pdefault_text_item.hide();
            pWarn_text_item.fadeIn(300);
        } else {
            pWarn_text_item.hide();
            pdefault_text_item.fadeIn(300);
        }
    }

    var isCommitted = false;
    function dosubmit() {
        if (isCommitted == false) {
            isCommitted = true;
            return true;
        } else {
            return false;
        }
    }

    $(".form_btn").click(function (e) {

        e.preventDefault();
        //namechk($("#Sign"));

        var styleStr = $("#Sign").find(".form_item_text_warn");
        for (var i = 0; i < styleStr.length ; i++) {
            var css = styleStr[i].style.display;
            if (css == "block" || css == "") {
                return;
            }
        }
		document.Sign.submit();
    });
</script>

</body>
</html>
