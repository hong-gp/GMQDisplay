var cookiebar = {
    rendertype: "",
    memberRadius: "",
    agree_cookie_name: "",
    agree_cookie: "",

    cookie_domain: "",
};


var customcode = {};

cookiebar.getSetting = function () {
    var lang = getUrlParam('lang').toLowerCase();
    var jsonname = 'setting.' + lang + '.json';
    var data_url = $("header").attr("data-cookie-url");
    data_url = data_url.replace("setting.json", jsonname)
    $.ajax({
        url: data_url,
        dataType: "json",
        type: "GET",
        async: false,
        success: function success(data) {
            cookiebar.rendertype = data.type;

            if (cookiebar.rendertype == 'show above') {
                var data_url = $("#topCookie").attr("data-search-url");
                $.ajax({

                    url: data_url, //这里是静态页的地址

                    type: "GET", //静态页用get方法，否则服务器会抛出405错误
                    async: false,
                    success: function (data) {

                        $("#topCookie").html(data);

                    }

                });
            }
            else {
                var data_url = $("#bottomCookie").attr("data-search-url");
                $.ajax({

                    url: data_url, //这里是静态页的地址

                    type: "GET", //静态页用get方法，否则服务器会抛出405错误
                    async: false,
                    success: function (data) {

                        $("#bottomCookie").html(data);

                    }

                });

            }
            //cookiebar.cookie_domain = data.domain;
            cookiebar.cookie_domain = $("#cookiedomain").val();
            cookiebar.memberRadius = data.membercenter;
            $(".text").html(data.cookietext);
            $(".close1").text(data.closetext);
            $(".cookiebtn_close").text(data.closetext);
            $(".settinglink").text(data.cookiesettinglabel);
            $(".findmorelink").text(data.findmorelabel);
            $(".cookiesettinglink").text(data.cookiesettinglabel);

            $(".findmorelink").attr("href", data.findmorelink);
            $(".settinglink").attr("href", data.cookiesettinglink);
            $(".cookiesettinglink").attr("href", data.cookiesettinglink);
        },
        error: function error(err, status) {
            console.log(err, status);
        }
    });
};

cookiebar.init = function () {
    //console.log("cookiebar.init");
    cookiebar.setAgreeCookieName();

    if (cookiebar.rendertype == 'show above') { // show cookiebar on top
        cookiebar.agree_cookie = cookiebar.getCookie(this.agree_cookie_name);

        cookiebar.renderTopLine(cookiebar.agree_cookie);
        //if (cookiebar.agree_cookie == "") {
        //	if(cookiebar.cookie_settings_benefit == "true" && cookiebar.memberRadius == "Non-EU"){
        //        cookiebar.agree_cookie = "true";
        //    } else {
        //        cookiebar.agree_cookie = "basic";
        //    }          
        //}





    } else { //  show cookie notice with popup
        cookiebar.agree_cookie = cookiebar.getCookie(this.agree_cookie_name);
        cookiebar.renderPopout(cookiebar.agree_cookie);
        //if (cookiebar.agree_cookie == "") { // all turn on
        //    if (cookiebar.memberRadius == "EU") {
        //        cookiebar.agree_cookie = "basic";
        //    } else {
        //        cookiebar.agree_cookie = "true";
        //    }
        //}

    }

    //var agreeCookieEU = cookiebar.getCookie("zowie_agree_cookie_eu") || "";    
    //if(cookiebar.memberRadius == "EU"){
    //    if(!agreeCookieEU || agreeCookieEU == "" || agreeCookieEU == "basic" || agreeCookieEU == "analyze") {
    //        cookiebar.deleteCookie('CookiePolicyStatus', "zowie.benq.com", "/");
    //    }
    //}
};



cookiebar.setAgreeCookieName = function () {
    if (cookiebar.memberRadius == "EU") {
        this.agree_cookie_name = "agree_cookie_eu";
    } else {
        this.agree_cookie_name = "agree_cookie";
    }
};

cookiebar.renderPopout = function (agree_cookie) {
    //var cookies_line = $("#cookieBar");
    var cookies_line = $(".cookie_conset");
    if (agree_cookie == "") {
        cookies_line.show();
    }
    else {
        cookies_line.hide();
    }

    $(".close1,.findmorelink,.settinglink,.cookiesettinglink,.cookiebtn_close").on("click", function () {
        if (cookiebar.getCookie(cookiebar.agree_cookie_name) == "") {

            cookiebar.createCookie(cookiebar.agree_cookie_name, "true", "", cookiebar.cookie_domain);
        }
        $("#cookieBar").hide();

    });

};

cookiebar.renderTopLine = function (agree_cookie) {
    //var cookies_line = $("#cookies-tip");
    //var btn = cookies_line.find(".close1");
    var cookies_line = $(".cookie_conset");

    if (agree_cookie == "") {
        cookies_line.show();
    } else {
        cookies_line.hide();
    }

    $(".close1,.findmorelink,.settinglink,.cookiesettinglink,.cookiebtn_close").on("click", function () {
        if (cookiebar.getCookie(cookiebar.agree_cookie_name) == "") {
            cookiebar.createCookie(cookiebar.agree_cookie_name, "true", "", cookiebar.cookie_domain);
        }
        cookies_line.hide();
    });
};



cookiebar.deleteCookie = function (cname, domain, path) {
    document.cookie = cname + "=" +
    ((path) ? ";path=" + path : "") +
    ((domain) ? ";domain=" + domain : "") +
    ";expires=Thu, 01 Jan 1970 00:00:01 GMT";
};





cookiebar.createCookie = function (name, value, days, domain) {
    var expires = "", specificDomain = ".benq.com";
    if (days) {
        var date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        expires = "; expires=" + date.toUTCString();
    } else {
        expires = "; expires=Wed, 31 Dec 2200 23:59:59 GMT"
    }
    //if (domain) {
    //    specificDomain = domain;
    //}
    specificDomain = domain;
    document.cookie = name + "=" + value + expires + "; domain=" + specificDomain + "; path=/";
};

cookiebar.getCookie = function (name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ')
            c = c.substring(1, c.length);
        if (c.indexOf(nameEQ) == 0)
            return c.substring(nameEQ.length, c.length);
    }
    return "";
};




$(document).ready(function () {
    cookiebar.getSetting();
    cookiebar.init();
});




//获取url中的参数
function getUrlParam(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
    var r = window.location.search.substr(1).match(reg);  //匹配目标参数
    if (r != null) return unescape(r[2]); return null; //返回参数值
}
