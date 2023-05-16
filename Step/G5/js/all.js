'use strict';
/*eslint-disable new-cap, no-unused-vars,
	no-use-before-define, no-trailing-spaces, space-infix-ops, comma-spacing,
	no-mixed-spaces-and-tabs, no-multi-spaces, camelcase, no-loop-func,no-empty,
	key-spacing ,curly, no-shadow, no-return-assign, no-redeclare, no-unused-vars,
	eqeqeq, no-extend-native, quotes , no-inner-declarations*/
/*global  $ */

var app = {};
app.partial = {};
'use strict';

//app.partial.detect_browser = function () {
//    $.reject({
//        reject: {
//            all: false,
//            msie: 10
//        },
//        browserInfo: { // Settings for which browsers to display  
//            chrome: {
//                // Text below the icon  
//                text: 'Google Chrome',
//                // URL For icon/text link  
//                url: 'http://www.google.com/chrome/'
//            },
//            firefox: {
//                text: 'Mozilla Firefox',
//                url: 'http://www.mozilla.com/firefox/'
//            },
//            safari: {
//                text: 'Safari',
//                url: 'http://www.apple.com/safari/download/'
//            },
//            opera: {
//                text: 'Opera',
//                url: 'http://www.opera.com/download/'
//            },
//            msie: {
//                text: 'Internet Explorer',
//                url: 'http://www.microsoft.com/windows/Internet-explorer/'
//            }
//        },
//        closeLink: '',
//        imagePath: './images/',
//        overlayBgColor: '#000',
//        overlayOpacity: 0.85,
//        closeURL: '#'
//    });
//};
"use strict";

app.partial.ini_2Level_select = function () {

    var j_com_select_area = $(".com_2Level_select_area");

    j_com_select_area.each(function () {
        var twoLevel_select = $(this);
        var data_url = $(this).attr("data-search-url");

        $.ajax({
            url: data_url,
            dataType: "json",
            type: "GET",
            success: function success(data) {
                do_ini(data, twoLevel_select);
            },
            error: function error(err, status) {
                console.log(err, status);
            }
        });
    });

    function do_ini(pData, ptwoLevel_select_area) {

        var data = pData;
        var first_level = [];

        var first_area = ptwoLevel_select_area.find(".com_select_wrap").eq(0).find(".li_wrap");
        var default_first_select_text = first_area.attr("data-defaultText");
        var second_area = ptwoLevel_select_area.find(".com_select_wrap").eq(1).find(".li_wrap");
        var default_second_select_text = second_area.attr("data-defaultText");

        var first_html = "";
        first_html += '<li data-val="" class="default_text selected">' + default_first_select_text + '</li>';
        for (var j = 0; j < data.length; j++) {
            first_html += '<li data-val="' + data[j].group + '">' + data[j].group + '</li>';
        }

        first_area.html(first_html).promise().done(function () {

            var first_select = ptwoLevel_select_area.find(".com_select_wrap").eq(0).find(".com_select");

            app.partial.do_select(first_select);

            first_select.find("li").each(function () {
                $(this).on("click", function () {

                    var value = $(this).attr("data-val");

                    if (value != "") {

                        for (var m = 0; m < data.length; m++) {

                            if (data[m].group == value) {

                                var html = "";
                                html += '<li data-val="" class="default_text selected">' + default_second_select_text + '</li>';
                                for (var n = 0; n < data[m].items.length; n++) {
                                    html += '<li data-val="' + data[m].items[n] + '">' + data[m].items[n] + '</li>';
                                }

                                second_area.html(html).promise().done(function () {
                                    var second_select = ptwoLevel_select_area.find(".com_select_wrap").eq(1).find(".com_select");
                                    app.partial.do_select(second_select);
                                });
                            }
                        }
                    } else if (value == "") {

                        second_area.html('<li data-val="" class="default_text selected">' + default_second_select_text + '</li>').promise().done(function () {
                            var second_select = ptwoLevel_select_area.find(".com_select_wrap").eq(1).find(".com_select");
                            app.partial.do_select(second_select);
                            second_select.each(function () {
                                $(this).find("li").eq(0).trigger("click");
                            });
                        });
                    }
                });
            });

            if (first_select.find("li").length == 2) {
                first_select.find("li").eq(1).trigger("click");
            } else {
                first_select.find("li").eq(0).trigger("click");
            }
        });
    }
};
"use strict";

app.partial.check_form_val = function () {

    var form_field = $(".form_wrap");

    function check_validatePattern(pvalidateType, pInput, pTestVal, pwarn_text_area, pdefault_text_area) {

        var validatePattern;

        switch (pvalidateType) {

            case 'email':
                validatePattern = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z]+$/;
                var check = validatePattern.test(pTestVal);
                if (pwarn_text_area.get(0).hasAttribute("data-defaultwarn")) {
                    $(pwarn_text_area).html($(pwarn_text_area).attr("data-defaultwarn"));
                }
                do_warn_text(pwarn_text_area, pdefault_text_area, !check);
                break;
            case 'comfirm_email':
                var comfirm_v = $("[data-validateType='email']").find("input").val();
                do_warn_text(pwarn_text_area, pdefault_text_area, !Boolean(pTestVal == comfirm_v));
                break;
            case 'password':
                var check_list = ["len", "az", "num"];
                var pw_rule;
         
                if(pInput.parents('.form_wrap').find(".pw_rule").length==0)
                {
                    pw_rule = $("#pw_rule");
                }
                else{
                    pw_rule=pInput.parents('.form_wrap').find(".pw_rule");
                }
                var len_check_text = pw_rule.find(".rule_1");
                var az_check_text = pw_rule.find(".rule_2");
                var num_check_text = pw_rule.find(".rule_3");

                for (var j = 0; j < check_list.length; j++) {
                    if (check_list[j] == "len") {
                        if (pTestVal.length < 8) {
                            len_check_text.addClass("f_red");
                        } else {
                            len_check_text.removeClass("f_red");
                        }
                    } else if (check_list[j] == "az") {
                        if (!/[A-Z]+/g.test(pTestVal)||!/[a-z]+/g.test(pTestVal)) {
                            az_check_text.addClass("f_red");
                        } else {
                            az_check_text.removeClass("f_red");
                        }
                    } else if (check_list[j] == "num") {
                        if (!/[0-9]+/g.test(pTestVal)) {
                            num_check_text.addClass("f_red");
                        } else {
                            num_check_text.removeClass("f_red");
                        }
                    }
                }

                if (pTestVal.length < 8 || !/[A-Z]+/g.test(pTestVal)||!/[a-z]+/g.test(pTestVal) || !/[0-9]+/g.test(pTestVal)) {
                    pdefault_text_area.hide();
                    pwarn_text_area.fadeIn(300);
                } else {
                    pwarn_text_area.hide();
                    pdefault_text_area.fadeIn(300);
                }

                break;
            case 'comfirm_password':
                var comfirm_v = pInput.parents('.form_wrap').find("[data-validateType='password']").find("input").val();
                do_warn_text(pwarn_text_area, pdefault_text_area, !Boolean(pTestVal == comfirm_v));
                break;
            case 'uploadfile':
                var val = pInput.get(0).files;
                var fileNum = val.length;

                if (Boolean(fileNum == 0)) {
                    pdefault_text_area.hide();
                    pwarn_text_area.css({
                        "display": "inline-block"
                    });
                } else {
                    pwarn_text_area.hide();
                    pdefault_text_area.fadeIn(300);
                }
                break;
            case 'edituploadfile':
                //var val = pInput.get(0).files;
                var fileNum = form_field.eq(0).find('.uploaded_file_area').find('.file_box').length;

                if (Boolean(fileNum == 0)) {
                    pdefault_text_area.hide();
                    pwarn_text_area.css({
                        "display": "inline-block"
                    });
                } else {
                    pwarn_text_area.hide();
                    pdefault_text_area.fadeIn(300);
                }
                break;
            case 'haveprecheck':

                var j_preCheck_val = form_item_wrap.eq(i).attr("data-preCheckVal");

                if (j_preCheck_val == 'false') {
                    do_warn_text(pwarn_text_area, pdefault_text_area, true);
                } else if (j_preCheck_val == 'true') {
                    do_warn_text(pwarn_text_area, pdefault_text_area, false);
                }

                break;
            default:
                do_warn_text(pwarn_text_area, pdefault_text_area, Boolean(pTestVal == ""));
                break;
        }
    }

    form_field.each(function () {

        var form_wrap = $(this);
        var btn = form_wrap.find(".form_btn");
        var clear_btn = form_wrap.find(".form_clear_btn");
        var form_item_wrap = form_wrap.find(".form_item_wrap");
        var loading = form_wrap.find(".loading_pic_area");
        var form_item_wrap_with_chooseOne = form_wrap.find(".form_item_wrap[data-chooseOne]");

        form_item_wrap.each(function () {

            var item = $(this);
            // var item_input = item.find("input:not('.extra_info'):not('.datePicker'):not([type='file'])");
            var item_input = item.find("input").not('.extra_info, .datePicker, [type="file"]');
            if (item_input.get(0) != undefined && item_input.get(0).hasAttribute("placeholder")) {
                var placeholder = item_input.attr("placeholder");
            }
            var default_text_area = $(this).find(".form_item_text_default");
            var warn_text_area = $(this).find(".form_item_text_warn");
            var default_text = default_text_area.attr("data-itemTextDefault");
            var select_cover = $(this).find(".tab_cover");

            if (item_input.val() != "") {
                default_text_area.html(placeholder || "");
            } else {
                default_text_area.html(default_text);
            }

            if (item.get(0).hasAttribute("data-validateType")) {
                item_input.on("keyup.form_keyup_email", function () {
                    if ($(this).val().trim() == "") {
                        default_text_area.html(default_text || "");
                    } else {
                        default_text_area.html(placeholder || "");
                    }
                    check_validatePattern(item.attr("data-validateType"), $(this), $(this).val(), warn_text_area, default_text_area);
                });
            } else {
                item_input.on("keyup.form_keyup", function () {
                    if ($(this).val().trim() == "") {
                        default_text_area.html(default_text || "").fadeIn();
                        warn_text_area.hide();
                    } else {
                        default_text_area.html(placeholder || "").fadeIn();
                        warn_text_area.hide();
                    }
                });
            }
        });

        btn.on("click", function () {

            for (var _i = 0; _i < form_item_wrap.length; _i++) {

                var input = form_item_wrap.eq(_i).find("input");

                if (!form_item_wrap.eq(_i).get(0).hasAttribute("data-chooseOne") && input.length > 0) {

                    var val = input.val().trim();
                    var default_text = form_item_wrap.eq(_i).find(".form_item_text_default");
                    var warn_text = form_item_wrap.eq(_i).find(".form_item_text_warn");

                    if (form_item_wrap.eq(_i).attr("data-required") == "true" && form_item_wrap.eq(_i).get(0).hasAttribute("data-validateType")) {

                        var validateType = form_item_wrap.eq(_i).attr("data-validateType").trim().toLowerCase();
                        check_validatePattern(validateType, input, val, warn_text, default_text);
                    } else if (form_item_wrap.eq(_i).attr("data-required") == "true" && !form_item_wrap.eq(_i).get(0).hasAttribute("data-validateType")) {

                        do_warn_text(warn_text, default_text, Boolean(val == ""));
                    }
                } else if (form_item_wrap.eq(_i).attr("data-validateType") && form_item_wrap.eq(_i).attr("data-validateType") == "recaptcha") {

                    var val = grecaptcha.getResponse();
                    var default_text = form_item_wrap.eq(_i).find(".form_item_text_default");
                    var warn_text = form_item_wrap.eq(_i).find(".form_item_text_warn");
                    if (val.length == 0) {
                        do_warn_text(warn_text, default_text, true);
                    } else if (val.length > 0) {
                        do_warn_text(warn_text, default_text, false);
                    }
                }
            }

            var chooseOne_vals = [];

            for (var j = 0; j < form_item_wrap_with_chooseOne.length; j++) {
                var input_chooseOne = form_item_wrap_with_chooseOne.eq(j).find("input");
                chooseOne_vals.push(input_chooseOne.val());
            }

            var check_chooseOne_val_num = chooseOne_vals.filter(function (el) {
                return el != "" || undefined;
            });

            if (check_chooseOne_val_num.length == 0) {
                form_item_wrap_with_chooseOne.each(function () {
                    var warnText = $(this).find(".form_item_text_warn").attr("data-chooseOneWarn");
                    $(this).find(".form_item_text_warn").html(warnText).fadeIn();
                });
            } else {
                form_item_wrap_with_chooseOne.each(function () {
                    if (!$(this).get(0).hasAttribute("data-validateType")) {
                        var warnText = $(this).find(".form_item_text_warn").attr("data-chooseOneWarn");
                        $(this).find(".form_item_text_warn").hide();
                    }
                });
            }

            var invalid_num = form_wrap.find('.form_item_text_warn:visible').length;
            if ($(this).hasClass('pop_btn')) {
                if (invalid_num == 0) {
                    $(this).trigger("click.popup", true);
                    if (loading.length > 0) {
                        loading.removeClass("hide");
                    }
                } else {}
            }

            if (invalid_num == 0 && loading.length > 0) {
                loading.removeClass("hide");
            } else {
                loading.addClass("hide");
            }
        });

        clear_btn.on('click', function () {

            for (var _i2 = 0; _i2 < form_item_wrap.length; _i2++) {
                var input = form_item_wrap.eq(_i2).find("input").not("[type='file']");
                var file_input = form_item_wrap.eq(_i2).find("input[type='file']");
                var select = form_item_wrap.eq(_i2).find(".com_select");
                var default_text = form_item_wrap.eq(_i2).find(".form_item_text_default");
                var warn_text = form_item_wrap.eq(_i2).find(".form_item_text_warn");
                var j_uploaded_file_area = form_item_wrap.eq(_i2).find('.uploaded_file_area');
                input.val("");
                file_input.val("");
                $("#pw_rule").find("li").each(function () {
                    $(this).removeClass("f_red");
                });
                // file_input.replaceWith(file_input.val('').clone(true));
                j_uploaded_file_area.html("");
                file_input.attr("data-fileNum", "0");
                warn_text.hide();
                default_text.fadeIn(300);
                if (select.length > 0) {
                    if (select.find("li").length == 2) {
                        select.find("li").eq(1).trigger("click");
                    } else {
                        select.find("li").eq(0).trigger("click");
                    }
                }
            }
        });
    });

    function do_warn_text(pWarn_text_item, pdefault_text_item, pJduage) {
        if (pJduage) {
            pdefault_text_item.hide();
            pWarn_text_item.fadeIn(300);
        } else {
            pWarn_text_item.hide();
            pdefault_text_item.fadeIn(300);
        }
    }

    (function check_footer_email() {
        $(".component-container-footer-search-form").each(function () {
            var wrap = $(this);
            var input = wrap.find("input");
            var btn = wrap.find("button");
            var warn_text = wrap.prev(".form_item_text_warn");
            var validatePattern = /[a-zA-Z0-9]{1,}\@{1}[a-zA-Z0-9]{1,}\.{1}[a-zA-Z]{1,}/;

            btn.on("click", function (e) {

                var val = input.val();

                if (validatePattern.test(val)) {
                    warn_text.fadeOut();
                } else {
                    warn_text.fadeIn();
                }
            });
        });
    })();
};
'use strict';
/*eslint-disable new-cap, no-unused-vars,
    no-use-before-define, no-trailing-spaces, space-infix-ops, comma-spacing,
    no-mixed-spaces-and-tabs, no-multi-spaces, camelcase, no-loop-func,no-empty,
    key-spacing ,curly, no-shadow, no-return-assign, no-redeclare, no-unused-vars,
    eqeqeq, no-extend-native, quotes , no-inner-declarations*/
/*global app, $ */

app.partial.content3 = function () {
    $(function () {

        $(".container-content-3-hideCont").hide();

        $(".text_on_img").each(function () {
            var botton_position;
            var more_btn = $(this).find('.content-3-collapseBtn');
            var more_btn_text = $(this).find('.content-3-collapseBtn-p');
            var more_btn_img = $(this).find('.content-3-collapseBtn-img');
            var more_area = $(this).next('.container-content-3-hideCont');

            more_btn.on('click', function () {

                if ($(window).width() <= 800 && $(this).parents(".text_on_img").hasClass("content_seperate") || $(this).parents(".text_on_img").hasClass("no_bg_img")) {
                    botton_position = "60px";
                } else {
                    botton_position = "-80px";
                }

                if (more_area.is(':visible')) {
                    more_area.hide("slow").removeClass("pt_80");
                    more_btn.animate({
                        bottom: "60px"
                    }, 500);
                    more_btn_text.show();
                    // more_btn_img.attr("src", "/etc/designs/b2c/clientlib-site/img/content-3/rectangle-18-copy.png");
                    more_btn_img.removeClass("open");
                } else {
                    more_area.addClass("pt_80").show("slow");
                    more_btn.animate({
                        bottom: botton_position
                    }, 500);
                    more_btn_text.hide();
                    // more_btn_img.attr("src", "/etc/designs/b2c/clientlib-site/img/content-3/rectangle-18-copy-2.png");
                    more_btn_img.addClass("open");
                }
            });
        });

        // $('.content-3-collapseBtn').on('click', function() {

        //     if ($(window).width() <= 800 && $(this).parents(".text_on_img").hasClass("content_seperate") || $(this).parents(".text_on_img").hasClass("no_bg_img")) {
        //         botton_position = "60px";
        //     } else {
        //         botton_position = "-80px";
        //     }

        //     if ($('.container-content-3-hideCont').is(':visible')) {
        //         $(".container-content-3-hideCont").hide("slow");
        //         $(".content-3-collapseBtn").animate({
        //             bottom: "60px"
        //         }, 500);
        //         $(".content-3-collapseBtn-p").show();
        //         $(".content-3-collapseBtn-img").removeClass("open");
        //     } else {
        //         $(".container-content-3-hideCont").show("slow");
        //         $(".content-3-collapseBtn").animate({
        //             bottom: botton_position
        //         }, 500);
        //         $(".content-3-collapseBtn-p").hide();
        //         $(".content-3-collapseBtn-img").addClass("open");
        //     }
        // });
    });
};
'use strict';
/*eslint-disable new-cap, no-unused-vars,
	no-use-before-define, no-trailing-spaces, space-infix-ops, comma-spacing,
	no-mixed-spaces-and-tabs, no-multi-spaces, camelcase, no-loop-func,no-empty,
	key-spacing ,curly, no-shadow, no-return-assign, no-redeclare, no-unused-vars,
	eqeqeq, no-extend-native, quotes , no-inner-declarations*/
/*global app, $ */

app.partial.content7 = function () {
	var content7_clickable = true;
	var content7_openable = true;

	var row = $('.component-content-7-other-product-list');
	row.hide();
	$('.component-content-7-add-button').bind('click', function () {
		if (content7_clickable == true) {
			content7_clickable = false;
			if (content7_openable == true) {
				row.fadeIn(400, function () {
					content7_openable = false;
					$('.component-content-7-add-button').attr('src', '/etc/designs/b2c/clientlib-site/img/filter/bg-2.png');
				});
			} else {
				row.fadeOut(400, function () {
					content7_openable = true;
					$('.component-content-7-add-button').attr('src', '/etc/designs/b2c/clientlib-site/img/filter/bg-1.png');
				});
			}
			content7_clickable = true;
		}
	});
};
"use strict";

app.partial.ini_only_country_select = function () {

    var j_com_select_wrap = $(".com_select_wrap");

    j_com_select_wrap.each(function () {

        if ($(this).attr("data-selectType") && $(this).attr("data-selectType").match(/(country)/i)) {

            var select_wrap = $(this);
            var data_url = $(this).attr("data-sourceUrl");
            if (data_url == "" || data_url == undefined || data_url.match(/\s+/)) {
                app.partial.do_select(select_wrap.find(".com_select"));
            } else {
                $.ajax({
                    url: data_url,
                    dataType: "json",
                    type: "GET",
                    success: function success(data) {
                        do_country_ini(data, select_wrap);
                    },
                    error: function error(err, status) {
                        console.log(err, status);
                    }
                });
            }
        }

        function do_country_ini(pData, pTarget_select) {

            var data = pData;
            var select = pTarget_select;
            var select_default_text = select.find(".li_wrap").attr("data-defaultText");

            var html = "";
            html += '<li data-val="" class="default_text selected">' + select_default_text + '</li>';

            for (var i = 0; i < data.length; i++) {
                html += '<li data-val="' + data[i].country + '">' + data[i].country + '</li>';
            }

            select.find(".li_wrap").html(html).promise().done(function () {
                app.partial.do_select(select.find(".com_select"));
            });
        }
    });
};
"use strict";

app.partial.datepicker_ini = function () {
    var j_datePicker = $(".datePicker");
    j_datePicker.each(function () {
        var year_start = new Date().setFullYear(new Date().getFullYear() - 10);
        var year_start_val = new Date(year_start).getFullYear();
        $(this).datepicker({
            maxDate: new Date(),
            dateFormat: 'mm / dd / yy',
            yearRange: year_start_val + ':' + new Date().getFullYear(),
            changeMonth: true,
            changeYear: true,
            beforeShow: function beforeShow() {
                setTimeout(function () {
                    $('.ui-datepicker').css('z-index', 1050);
                }, 0);
            }
        });
    });
};
'use strict';
/*eslint-disable new-cap, no-unused-vars,
    no-use-before-define, no-trailing-spaces, space-infix-ops, comma-spacing,
    no-mixed-spaces-and-tabs, no-multi-spaces, camelcase, no-loop-func,no-empty,
    key-spacing ,curly, no-shadow, no-return-assign, no-redeclare, no-unused-vars,
    eqeqeq, no-extend-native, quotes , no-inner-declarations*/
/*global app, $ */

app.partial.filter = function () {
    var filter1_clickable = true;
    var filter1_openable = true;

    var filterMobile_clickable = true;
    var filterMobile_openable = true;
    // var row3 = $('.component-filter-other-product-list');

    var rowMobile = $('.component-container-filter-mobile');

    var filterCompare_clickable = true;
    // row3.hide();
    // $('.component-filter-add-button').bind('click', function() {
    //     if (filter1_clickable == true) {
    //         filter1_clickable = false;
    //         if (filter1_openable == true) {
    //             row3.fadeIn(400, function() {
    //                 filter1_openable = false;
    //                 $('.component-filter-add-button').attr('src', '/etc/designs/b2c/clientlib-site/img/list-1/bg-2.png');
    //             });
    //         } else {
    //             row3.fadeOut(400, function() {
    //                 filter1_openable = true;
    //                 $('.component-filter-add-button').attr('src', '/etc/designs/b2c/clientlib-site/img/list-1/bg-1.png');
    //             });
    //         }
    //         filter1_clickable = true;
    //     }
    // });
    //filter mobile fun
    $('.component-filter-mobile-filterBtn').bind('click', function () {
        if (filterMobile_clickable == true) {
            filterMobile_clickable = false;
            if (filterMobile_openable == true) {
                rowMobile.fadeIn(400, function () {
                    filterMobile_openable = false;
                });
            } else {
                rowMobile.fadeOut(400, function () {
                    filterMobile_openable = true;
                });
            }
            filterMobile_clickable = true;
        }
    });

    $('.component-filter-compare-showhide').bind('click', function () {
        if (filterCompare_clickable == true) {
            filterCompare_clickable = false;
            $('.component-filter-compare-con').fadeOut(400, function () {
                $('.component-filter-compare-shower').fadeIn(400);
            });
            filterCompare_clickable = true;
        }
    });

    $('.component-filter-compare-shower-arrowCon').bind('click', function () {
        if (filterCompare_clickable == true) {
            filterCompare_clickable = false;
            $('.component-filter-compare-shower').fadeOut(400, function () {
                $('.component-filter-compare-con').fadeIn(400);
            });
            filterCompare_clickable = true;
        }
    });
};

app.partial.filter_select = function (pWrap, pFilter) {

    var filter_name_part = pFilter;

    $(pWrap).each(function () {
        var wrap = $(this);
        var box = wrap.find(".component_filter_item");
        var checked_box = $(".component-filter-compare-con");
        var checked_box_text = checked_box.find(".component-filter-compare-title span");
        var checked_box_open_btn = checked_box.find(".component-filter-compare-showhide");
        var checked_box_close_btn = $(".component-filter-compare-shower-arrowCon");
        var checked_box_item_area = checked_box.find(".selected_item_area");

        box.each(function () {
            var this_b = $(this);
            var check = $(this).find("input[type='checkbox']");
            check.change(function () {
                var checked_num = wrap.find("input[type='checkbox']:checked").length;
                var unchecked = wrap.find("input[type='checkbox']").not(":checked");
                var item_html = "";
                var title = this_b.find(".component-" + filter_name_part + "-product-info-title").text();

                if (check.is(":checked")) {
                    // check.prop("disabled", true);
                    var price = this_b.find(".component-" + filter_name_part + "-product-info-price").html();
                    var img_url = this_b.find(".component-" + filter_name_part + "-product-info-title").prev("img").attr("src");
                    check.parents(".component_filter_item").addClass("selected").removeClass("disabled");
                    item_html += '<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 selected_item" data-modelName="' + title + '"><div class="component-filter-compare-product"><div class="component-filter-compare-product-close"></div><img src="' + img_url + '"><h4 class="component-filter-compare-product-h4">' + title + '</h4>';
                    if (price != undefined) {
                        item_html += '<p class="component-filter-compare-product-p small">' + price + '</p>';
                    }
                    item_html += '</div></div>';
                    $(item_html).hide().appendTo(".selected_item_area").fadeIn(1000).find(".component-filter-compare-product-close").on("click", function () {
                        check.prop("disabled", true).prop("checked", false).trigger("change");
                        $(this).parents(".selected_item").remove();
                    });
                    checked_box.parent(".component-filter-compare-fixed").show();
                    checked_box_open_btn.trigger("click");
                } else if (!check.is(":checked")) {
                    check.parents(".component_filter_item").removeClass("selected");
                    $(".selected_item[data-modelName='" + title + "']").remove();
                }

                if (checked_num == 0) {
                    if (checked_box.is(":hidden")) {
                        checked_box_close_btn.trigger("click");
                        checked_box.parent(".component-filter-compare-fixed").fadeOut();
                    } else if (!checked_box.is(":hidden")) {
                        checked_box.parent(".component-filter-compare-fixed").fadeOut();
                    }
                } else if (checked_num >= 3) {
                    unchecked.each(function () {
                        $(this).prop("disabled", true);
                        $(this).parents(".component_filter_item").addClass("disabled");
                    });
                    checked_box_text.html(0);
                } else {
                    wrap.find(".disabled").removeClass("disabled");
                    unchecked.prop("disabled", false);
                    checked_box_text.html(3 - checked_num);
                }
            });
        });
    });
};

app.partial.filter_select(".component-filter-content", "filter");
app.partial.filter_select(".component-filter2-content-mobilePadding", "filter2");
"use strict";

app.partial.fold_filter = function () {
    var result_content = $(".result_content");
    result_content.each(function () {
        $(this).find(".fold_fiter").each(function () {
            var fold = $(this);
            var window_w = $(window).width();
            var content = fold.find(".fold");
            fold.find(".fold_box").each(function () {
                var f_box = $(this);
                f_box.find(".fold_box_title").on("click", function () {
                    fold.find("ul").not($(this)).slideUp();
                    fold.find(".fold_box").removeClass("open");
                    var ul = f_box.find("ul");
                    if (!ul.is(":visible")) {
                        ul.slideDown();
                        f_box.addClass("open");
                    } else {
                        ul.slideUp();
                        f_box.removeClass("open");
                    }
                });

                var btn_filter_more = f_box.find(".btn_filter_more");
                var li_num = f_box.find("li").length;
                var LI_INI_NUM = 10;
                var li_more_action;
                if (li_num <= LI_INI_NUM) {
                    btn_filter_more.hide();
                } else {
                    f_box.find("li:gt(" + (LI_INI_NUM - 1) + ")").hide();
                    btn_filter_more.show();
                }

                btn_filter_more.on("click", function () {
                    if (!li_more_action) {
                        $(this).addClass("open");
                        f_box.find("li:gt(" + (LI_INI_NUM - 1) + ")").fadeIn();
                    } else {
                        $(this).removeClass("open");
                        f_box.find("li:gt(" + (LI_INI_NUM - 1) + ")").fadeOut();
                    }

                    li_more_action = !li_more_action;
                });
                f_box.find("li").each(function () {
                    $(this).on("click", function () {
                        fold.find("li").removeClass("selected");
                        var li = $(this);
                        li.addClass("selected");

                        function do_filter() {
                            var def = $.Deferred();
                            var catalog = li.parent("ul").prev(".fold_box_title").text().trim().toLowerCase();
                            // console.log("catalog", catalog);
                            var filter_value = li.text().trim().toLowerCase();
                            // console.log("filter_value", filter_value);
                            var result_box = $(".result_box");
                            result_box.addClass("hide").removeClass("cansee");
                            result_box.each(function () {
                                var filter_catalog = $(this).attr("data-catalog") ? $(this).attr("data-catalog").trim().toLowerCase() : "";
                                var filter_feature = $(this).attr("data-filter").split(",");
                                filter_feature = filter_feature.map(function (item) {
                                    return item.toLowerCase().trim();
                                });
                                // console.log("filter_feature", filter_feature);
                                if (catalog == filter_catalog && filter_feature.indexOf(filter_value) >= 0) {
                                    $(this).addClass("cansee").removeClass("hide").fadeIn(1000);
                                }
                            });

                            def.resolve();
                            return def.promise();
                        };

                        do_filter().done(function () {
                            if ($(".result_box.cansee").length == 0) {
                                $(".no_result").fadeIn();
                            } else {
                                $(".no_result").hide();
                            }
                            more_result();
                        });

                        if (window_w <= 800) {
                            content.slideUp();
                        }
                    });
                });
            });

            if (window_w <= 800) {
                content.hide();
                fold.find(".title").off("click.fold_down");
                fold.find(".title").on("click.fold_down", function () {
                    if (!content.is(":visible")) {
                        content.slideDown();
                    } else {
                        content.slideUp();
                    }
                });
            } else if (window_w > 800) {
                fold.find(".title").off("click.fold_down");
                content.show();
            }

            $(window).on("resize", function () {
                window_w = $(window).width();
                if (window_w <= 800) {
                    content.hide();
                    fold.find(".title").off("click.fold_down");
                    fold.find(".title").on("click.fold_down", function () {
                        if (!content.is(":visible")) {
                            content.slideDown();
                        } else {
                            content.slideUp();
                        }
                    });
                } else if (window_w > 800) {
                    fold.find(".title").off("click.fold_down");
                    content.show();
                }
            });
        });
    });
};
"use strict";

app.partial.folder_action = function () {
    var j_folder = $(".folder");
    j_folder.each(function () {
        var ul = $(this).find("ul");
        ul.each(function () {
            var folder_box = $(this);
            var title = $(this).find(".folder_title");
            var text = $(this).find(".folder_text");
            text.hide();
            title.on("click", function () {
                if (!text.is(":visible")) {
                    ul.find(".folder_title").not($(this)).removeClass("open").next(".folder_text").slideUp();
                    title.addClass("open");
                    text.slideDown();
                } else {
                    title.removeClass("open");
                    text.slideUp();
                }
            });
        });
        if (ul.eq(0)) {
            ul.eq(0).find(".folder_title").trigger("click");
        }
    });
};
'use strict';
/*eslint-disable new-cap, no-unused-vars,
	no-use-before-define, no-trailing-spaces, space-infix-ops, comma-spacing,
	no-mixed-spaces-and-tabs, no-multi-spaces, camelcase, no-loop-func,no-empty,
	key-spacing ,curly, no-shadow, no-return-assign, no-redeclare, no-unused-vars,
	eqeqeq, no-extend-native, quotes , no-inner-declarations*/
/*global app, $ */

app.partial.footer = function () {
    $('.component-footer .grid h5').on('click', function () {
        $(this).parent().toggleClass('on');
    });
    $(".footer_folder_nav").find(".small-sm").each(function () {
        if ($(this).find("a").length == 0) {
            $(this).prev().find("img").each(function () {
                $(this).addClass("hide");
            });
        } else {
            $(this).prev().find("img").each(function () {
                $(this).removeClass("hide");
            });
        }
    });
};
'use strict';

app.partial.goTop = function () {
    var btn = $("#goTop");

    btn.click(function () {
        $("html, body").animate({
            scrollTop: 0
        }, 600);
    });
    $(window).scroll(function () {
        if ($(this).scrollTop() > 300) {
            btn.fadeIn("fast");
        } else {
            btn.stop().fadeOut("fast");
        }
    });
};
'use strict';
/*eslint-disable new-cap, no-unused-vars,
    no-use-before-define, no-trailing-spaces, space-infix-ops, comma-spacing,
    no-mixed-spaces-and-tabs, no-multi-spaces, camelcase, no-loop-func,no-empty,
    key-spacing ,curly, no-shadow, no-return-assign, no-redeclare, no-unused-vars,
    eqeqeq, no-extend-native, quotes , no-inner-declarations*/
/*global app, $, Bloodhound */

app.partial.header = function () {

    $('.component-header .menu').on('click', function () {
        $(this).toggleClass('on');
    });

    // mega_menu_group_a.on('click', function() {
    //     $(this).parent().toggleClass('on');
    // });

    if ($("html").hasClass("mobile") || $("html").hasClass("tablet")) {

        var cart = $('.shopping-cart');
        var cart_btn = $('.component-header .sub-menu .cart');
        var item_content = $(".shopping-cart-items ul");
        cart_btn.on("mousedown", function () {
            var item_num = cart_btn.find("span").text().trim();
            if (item_num != "" && item_num != 0) {
                item_content.slimScroll({ destroy: true });
                cart.toggleClass("show");
            } else if (item_num == 0) {
                cart.removeClass("show");
            }
        });
    } else if ($("html").hasClass("desktop")) {

        var cart = $('.shopping-cart');
        var cart_btn = $('.component-header .sub-menu .cart');
        var item_content = $(".shopping-cart-items ul");
        cart_btn.on("mouseover", function () {
            var item_num = cart_btn.find("span").text().trim();
            if (item_num != "" && item_num != 0) {
                cart_btn.addClass("show_content");
                item_content.slimScroll({
                    height: "auto",
                    alwaysVisible: true,
                    size: '5px',
                    touchScrollStep: 10,
                    wheelStep: 5
                });
            }
        }).on("mouseleave", function () {
            cart_btn.removeClass("show_content");
            cart.on("mouseover", function () {
                cart_btn.addClass("show_content");
            }).on("mouseleave", function () {
                cart_btn.removeClass("show_content");
                item_content.slimScroll({ destroy: true });
            });
        });
    }
};

app.partial.do_mega_menu_group_a_action = function () {
    var mega_menu_group_a = $('.component-header .mega-menu-group >a');
    mega_menu_group_a.each(function (event) {
        var mega_manu = $(this).next(".mega-menu");
        if ($(window).width() <= 800) {
            $(this).off('click.toggle_sub').on('click.toggle_sub', function (e) {
                if (mega_manu.find("li").length != 0) {
                    e.preventDefault();
                    $(this).parent().toggleClass('on');
                }
            });
        } else {
            $(this).off('click.toggle_sub').on('click.toggle_sub', function () {
                if (mega_manu.find("li").length != 0) {
                    $(this).parent().toggleClass('on');
                }
            });
        }
    });
};
'use strict';
/*eslint-disable new-cap, no-unused-vars,
	no-use-before-define, no-trailing-spaces, space-infix-ops, comma-spacing,
	no-mixed-spaces-and-tabs, no-multi-spaces, camelcase, no-loop-func,no-empty,
	key-spacing ,curly, no-shadow, no-return-assign, no-redeclare, no-unused-vars,
	eqeqeq, no-extend-native, quotes , no-inner-declarations*/
/*global app, $ */

app.partial.heroCarousel = function () {
	var slick = $('.component-hero-carousel .carousel-container').slick({
		infinite: true,
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: true,
		fade: true,
		autoplay: true,
		autoplaySpeed: 5000

	}).on('component-resize', function (e) {
		$(this).slick('resize');
	}).on('afterChange', function () {
		$('.component-hero-carousel .progressing-bar').addClass('progressing');
	}).on('beforeChange', function () {
		$('.component-hero-carousel .progressing-bar').removeClass('progressing');
	}).trigger('afterChange');

	$(window).on('resize', function (e) {
		$(slick).trigger('component-resize', e);
	});
};
'use strict';
/*eslint-disable new-cap, no-unused-vars,
	no-use-before-define, no-trailing-spaces, space-infix-ops, comma-spacing,
	no-mixed-spaces-and-tabs, no-multi-spaces, camelcase, no-loop-func,no-empty,
	key-spacing ,curly, no-shadow, no-return-assign, no-redeclare, no-unused-vars,
	eqeqeq, no-extend-native, quotes , no-inner-declarations*/
/*global app, $ */

app.partial.list1 = function () {
    $(".component-list-1").each(function () {
        var list1_clickable = true;
        var list1_openable = true;
        var row1 = $(this).find('.component-list-1-row-first');
        // var row2 = $('.component-list-1-row-other');
        var row3 = $(this).find('.component-list-1-row-other');
        // row2.hide();
        var btn = $(this).find('.component-list-1-add-button');
        row3.hide();
        btn.on('click', function () {
            if (list1_clickable == true) {
                list1_clickable = false;
                if (list1_openable == true) {
                    // row2.fadeIn(400);
                    row3.fadeIn(400, function () {
                        list1_openable = false;
                        btn.attr('src', '/etc/designs/b2c/clientlib-site/img/list-1/bg-2.png');
                    });
                } else {
                    // row2.fadeOut(400);
                    row3.fadeOut(400, function () {
                        list1_openable = true;
                        btn.attr('src', '/etc/designs/b2c/clientlib-site/img/list-1/bg-1.png');
                    });
                }
                list1_clickable = true;
            }
        });
    });
};
'use strict';
/*eslint-disable new-cap, no-unused-vars,
    no-use-before-define, no-trailing-spaces, space-infix-ops, comma-spacing,
    no-mixed-spaces-and-tabs, no-multi-spaces, camelcase, no-loop-func,no-empty,
    key-spacing ,curly, no-shadow, no-return-assign, no-redeclare, no-unused-vars,
    eqeqeq, no-extend-native, quotes , no-inner-declarations*/
/*global app, $ */

app.partial.list2 = function () {

    $('html').find('.responsive').slick({
        prevArrow: "<img class='component-list-2-prevArrow prev slick-prev' src='/etc/designs/b2c/clientlib-site/img/list-2/rectangleLeft.png'>",
        nextArrow: "<img class='component-list-2-nextArrow next slick-next' src='/etc/designs/b2c/clientlib-site/img/list-2/rectangleRight.png'>",
        dots: false,
        arrows: true,
        infinite: true,
        speed: 400,
        slidesToShow: 4,
        slidesToScroll: 1,
        centerMode: false,
        responsive: [{
            breakpoint: 1200,
            settings: {
                arrows: true,
                slidesToShow: 3,
                slidesToScroll: 1,
                infinite: true
            }
        }, {
            breakpoint: 801,
            settings: {
                arrows: true,
                slidesToShow: 1,
                slidesToScroll: 1,
                infinite: true
            }
        }, {
            breakpoint: 760,
            settings: {
                arrows: true,
                slidesToShow: 1,
                slidesToScroll: 1,
                infinite: true
            }
        }
        // You can unslick at a given breakpoint now by adding:
        // settings: "unslick"
        // instead of a settings object
        ]
    });
};

app.partial.slideTextLimit = function () {

    function doSlideTextLimit(pWrap, pTarget, pWordNum) {
        pWrap.each(function () {
            var item = $(this).find(pTarget);
            var ori_text = item.text();
            var adj_text;
            if (ori_text.length > pWordNum) {
                adj_text = ori_text.substr(0, pWordNum - 3) + "...";
                item.text(adj_text);
            }
        });
    }

    doSlideTextLimit($(".component-list-2-thumbnail-noimg"), ".component-list-2-noimg-h4", 25);
    doSlideTextLimit($(".component-list-2-thumbnail-noimg"), ".component-list-2-noimg-p", 65);
};
'use strict';
/*eslint-disable new-cap, no-unused-vars,
	no-use-before-define, no-trailing-spaces, space-infix-ops, comma-spacing,
	no-mixed-spaces-and-tabs, no-multi-spaces, camelcase, no-loop-func,no-empty,
	key-spacing ,curly, no-shadow, no-return-assign, no-redeclare, no-unused-vars,
	eqeqeq, no-extend-native, quotes , no-inner-declarations*/
/*global app, $ */

app.partial.list5 = function () {

	$('.responsive-list-5').slick({
		prevArrow: "<img class='component-list-5-prevArrow prev slick-prev' src='/etc/designs/b2c/clientlib-site/img/list-5/rectangleLeft.png'>",
		nextArrow: "<img class='component-list-5-nextArrow next slick-next' src='/etc/designs/b2c/clientlib-site/img/list-5/rectangleRight.png'>",
		dots: false,
		arrows: true,
		infinite: true,
		speed: 400,
		slidesToShow: 4,
		slidesToScroll: 1,
		responsive: [{
			breakpoint: 1000,
			settings: {
				arrows: true,
				slidesToShow: 4,
				slidesToScroll: 1,
				infinite: true
			}
		}, {
			breakpoint: 800,
			settings: {
				arrows: true,
				slidesToShow: 1,
				slidesToScroll: 1,
				infinite: true
			}
		}, {
			breakpoint: 760,
			settings: {
				arrows: true,
				slidesToShow: 1,
				slidesToScroll: 1,
				infinite: true
			}
		}
		// You can unslick at a given breakpoint now by adding:
		// settings: "unslick"
		// instead of a settings object
		]
	});
};
'use strict';
/*eslint-disable new-cap, no-unused-vars,
	no-use-before-define, no-trailing-spaces, space-infix-ops, comma-spacing,
	no-mixed-spaces-and-tabs, no-multi-spaces, camelcase, no-loop-func,no-empty,
	key-spacing ,curly, no-shadow, no-return-assign, no-redeclare, no-unused-vars,
	eqeqeq, no-extend-native, quotes , no-inner-declarations*/
/*global app, $ */

app.partial.list6 = function () {

	$('.responsive-list-6').slick({
		prevArrow: "<img class='component-list-6-prevArrow prev slick-prev' src='/etc/designs/b2c/clientlib-site/img/list-2/rectangleLeft.png'>",
		nextArrow: "<img class='component-list-6-nextArrow next slick-next' src='/etc/designs/b2c/clientlib-site/img/list-2/rectangleRight.png'>",
		dots: false,
		arrows: true,
		infinite: true,
		speed: 400,
		slidesToShow: 4,
		slidesToScroll: 1,
		responsive: [{
			breakpoint: 1000,
			settings: {
				arrows: true,
				slidesToShow: 4,
				slidesToScroll: 1,
				infinite: true
			}
		}, {
			breakpoint: 800,
			settings: {
				arrows: true,
				slidesToShow: 1,
				slidesToScroll: 1,
				infinite: true
			}
		}, {
			breakpoint: 760,
			settings: {
				arrows: true,
				slidesToShow: 1,
				slidesToScroll: 1,
				infinite: true
			}
		}
		// You can unslick at a given breakpoint now by adding:
		// settings: "unslick"
		// instead of a settings object
		]
	});
};
"use strict";

app.partial.list7_for_ie11 = function () {
    if ($("html").hasClass("ie11")) {
        var set_height = function set_height() {
            var j_content_list_7 = $(".content_list_7");
            j_content_list_7.each(function () {
                var wrap = $(this);
                if ($(window).width() > 800) {

                    var big = wrap.find(".box_lg");
                    var sm = wrap.find(".box_sm");
                    var h_val;

                    setTimeout(function () {
                        // console.log("height", big.height());
                        h_val = ~~((big.height() - 20) / 2);
                        // console.log("bb", h_val);
                        sm.each(function () {
                            $(this).height(h_val + "px");
                        });
                        sm.eq(1).css({
                            "top": h_val + 20 + "px"
                        });
                    }, 500);
                } else {
                    var sm = wrap.find(".box_sm");
                    sm.each(function () {
                        $(this).css({
                            "height": "auto"
                        });
                    });
                }
            });
        };

        set_height();
        $(window).on("resize", function () {
            set_height();
        });
    }
};
"use strict";

app.partial.log = function () {
    var email = $("input[name='email']");
    var email_wrap = email.parent(".form_item");
    var email_test = /[a-zA-Z0-9]{1,}\@{1}[a-zA-Z0-9]{1,}\.{1}[a-zA-Z]{1,}/;
    email.on("blur keyup change", function () {
        if ($(this).val().trim() == "") {
            email_wrap.addClass("invalid");
        } else if (!email_test.test($(this).val())) {
            email_wrap.addClass("invalid");
        } else if ($(this).val().trim() != "" && email_test.test($(this).val())) {
            email_wrap.removeClass("invalid");
        }
    });
};
"use strict";

var more_result = function more_result() {

    var result = $(".result_content_wrap");

    result.each(function () {

        var r_content = $(this);

        $(this).find(".result_box").removeClass("fadeIn").removeClass("animated");

        var r_box = $(this).find(".result_box").not(".hide");
        r_box.removeClass("mt0");
        r_box.eq(0).addClass("mt0");
        var r_box_n = r_box.length;
        var new_step_num, STEP_NUM;

        var btn = $(this).find(".more_btn_wrap");

        if (btn.length > 0) {
            r_content.css({
                "padding-bottom": "60px"
            });
            btn.css({
                "bottom": "0px"
            });
        }

        if (r_content[0].hasAttribute("data-stepNum") && r_content.attr("data-stepNum") != "") {
            if (r_content.attr("data-stepNum").match(/(Infinity)/ig)) {
                new_step_num = Infinity;
            } else {
                new_step_num = parseFloat(r_content.attr("data-stepNum"), 10);
            }
            STEP_NUM = new_step_num ? new_step_num : 8;
        } else {
            STEP_NUM = 8;
        }

        var click_count = 1;

        if (r_box_n < STEP_NUM) {
            count_num();
            btn.hide();
        } else if (r_box_n > STEP_NUM) {
            count_num();
            btn.show();
            btn.off("click").on("click", function (e) {
                e.stopPropagation();
                var num_before = click_count - 1 < 0 ? 0 : (click_count - 1) * STEP_NUM - 1;
                r_content.find(".result_box.cansee:gt(" + num_before + ")").removeClass("hide").addClass("fadeIn").addClass("animated");
                var num = click_count * STEP_NUM - 1;
                if (num < r_box_n) {
                    r_content.find(".result_box.cansee:gt(" + num + ")").addClass("hide");
                } else {
                    btn.hide();
                }
                click_count += 1;
            }).click();
        } else if (r_box_n = STEP_NUM) {
            count_num();
            btn.hide();
        }

        function count_num() {
            var result_count = r_content.parent(".row").prev(".result_top").find(".result_count");
            var mobile_result_count = $(".mobile_result_count");
            var count_zero = r_content.parent(".row").prev(".result_top").find(".count_zero");
            var num = r_content.find(".result_box").length;
            result_count.find("div:not(.extra_info_area) > span").html(num);
            mobile_result_count.find("span").html(num);
            // console.log("num", num);
            if (num == 0) {
                r_content.parent(".row").prev(".result_top").find(".result_sort_wrap").hide();
                count_zero.show();
            } else {
                r_content.parent(".row").prev(".result_top").find(".result_sort_wrap").show();
                count_zero.hide();
            }
        }
    });
};

var more_result_adj = function more_result_adj(pWrap, pItem, pBtnMore) {
    $(function () {

        var result = $(pWrap);

        result.each(function () {

            var r_content = $(this);

            $(this).find(pItem).removeClass("fadeIn").removeClass("animated");
            var r_box = $(this).find(pItem).not(".hide");
            var r_box_n = r_box.length;
            var new_step_num, STEP_NUM;

            var btn = $(this).find(".more_btn_wrap").length > 0 ? $(this).find(".more_btn_wrap") : $(this).find(pBtnMore);

            if (r_content[0].hasAttribute("data-stepNum") && r_content.attr("data-stepNum") != "") {
                if (r_content.attr("data-stepNum").match(/(Infinity)/ig)) {
                    new_step_num = Infinity;
                } else {
                    new_step_num = parseFloat(r_content.attr("data-stepNum"), 10);
                }
                STEP_NUM = new_step_num ? new_step_num : 8;
            } else {
                STEP_NUM = 8;
            }

            var click_count = 1;
            if (r_box_n < STEP_NUM) {
                btn.hide();
            } else if (r_box_n > STEP_NUM) {
                btn.show();
                btn.off("click").on("click", function (e) {
                    e.stopPropagation();
                    var num_before = click_count - 1 < 0 ? 0 : (click_count - 1) * STEP_NUM - 1;
                    r_content.find(pItem + ":gt(" + num_before + ")").removeClass("hide").addClass("fadeIn").addClass("animated");
                    var num = click_count * STEP_NUM - 1;
                    if (num < r_box_n) {
                        r_content.find(pItem + ":gt(" + num + ")").addClass("hide");
                    } else {
                        btn.hide();
                    }
                    click_count += 1;
                }).click();
            } else if (r_box_n = STEP_NUM) {
                btn.hide();
            }
        });
    });
};

more_result_adj(".order_status_table", ".order_status_table_row");

app.partial.result_img_view = function () {
    var result_img = $(".result_box_wrap .img_area").not(".with_video");
    var href = window.location.href;
    result_img.each(function () {
        if ($(this).css("background-image") == "url(\"" + href + "\")" || $(this).css("background-image") == "url(\"\")") {
            $(this).css({
                "height": "0px",
                "padding-top": "0px",
                "width": "0px"
            });
            $(this).parent(".right").prev(".left").css({
                "width": "100%"
            });
            if ($(window).width() <= 800) {
                $(this).parent(".right").prev(".left").css({
                    "margin-bottom": "-20px"
                });
            } else {
                $(this).parent(".right").prev(".left").css({
                    "margin-bottom": "auto"
                });
            }
            if ($(this).find(".video_pop").length > 0) {
                $(this).find(".video_pop").css({ "display": "none" });
            }
        }
        $(window).on("resize", function () {
            if ($(window).width() <= 800) {
                $(this).parent(".right").prev(".left").css({
                    "margin-bottom": "-20px"
                });
            } else {
                $(this).parent(".right").prev(".left").css({
                    "margin-bottom": "auto"
                });
            }
        });
    });
};
"use strict";

app.partial.ini_product_pLine_and_model_select = function () {

    var j_com_product_select_area = $(".com_product_select_area");

    j_com_product_select_area.each(function () {
        var product_select = $(this);
        var data_url = $(this).attr("data-search-url");

        $.ajax({
            url: data_url,
            dataType: "json",
            type: "GET",
            success: function success(data) {
                do_ini(data, product_select);
            },
            error: function error(err, status) {
                console.log(err, status);
            }
        });
    });

    function do_ini(pData, pProduct_select_area) {

        var data = pData;
        var pLines = [];
        var products = [];

        function do_pLine() {
            var def = $.Deferred();
            for (var i = 0; i < data.length; i++) {
                if (pLines.indexOf(data[i].group) < 0) {
                    products.push({ "pLine": data[i].group });
                    pLines.push(data[i].group);
                }
            }
            def.resolve();
            return def.promise();
        }

        do_pLine().done(function () {
            pLines.forEach(function (element) {
                var pLine = element;
                var models = [];
                var extra_infos = [];
                var index = pLines.indexOf(pLine);
                for (var i = 0; i < data.length; i++) {
                    if (pLine == data[i].group) {
                        models.push(data[i].product);
                        extra_infos.push(data[i].extra_info ? data[i].extra_info : {});
                    }
                }
                products[index].models = models;
                products[index].extra_infos = extra_infos;
            });

            var pLine_area = pProduct_select_area.find(".com_select_wrap").eq(0).find(".li_wrap");
            var default_pLine_select_text = pLine_area.attr("data-defaultText");
            var pModel_area = pProduct_select_area.find(".com_select_wrap").eq(1).find(".li_wrap");
            var default_model_select_text = pModel_area.attr("data-defaultText");

            var pLine_html = "";
            pLine_html += '<li data-val="" class="default_text selected">' + default_pLine_select_text + '</li>';
            for (var j = 0; j < pLines.length; j++) {
                pLine_html += '<li data-val="' + pLines[j] + '">' + pLines[j] + '</li>';
            }

            pLine_area.html(pLine_html).promise().done(function () {

                var wrap = pProduct_select_area.parents(".com_product_select_area_wrap");
                var btn = wrap.find(".btn_check_model");
                var warn_text = wrap.find(".com_product_select_area_text_warn");

                var this_pLine = pProduct_select_area.find(".com_select_wrap").eq(0).find(".com_select");

                app.partial.do_select(this_pLine);

                this_pLine.find("li").each(function () {
                    $(this).on("click", function () {

                        var value = $(this).attr("data-val");

                        if (value != "") {
                            for (var m = 0; m < products.length; m++) {
                                if (products[m].pLine == value) {

                                    var html = "";
                                    html += '<li data-val="" class="default_text selected">' + default_model_select_text + '</li>';
                                    for (var n = 0; n < products[m].models.length; n++) {
                                        var extra_info_data = "";
                                        for (var key in products[m].extra_infos[n]) {
                                            extra_info_data += "data-" + key + "='" + products[m].extra_infos[n][key] + "'";
                                        }
                                        html += '<li data-val="' + products[m].models[n] + '"' + extra_info_data + '>' + products[m].models[n] + '</li>';
                                    }

                                    pModel_area.html(html).promise().done(function () {
                                        var this_model = pProduct_select_area.find(".com_select_wrap").eq(1).find(".com_select");
                                        app.partial.do_select(this_model);
                                        btn.off("click.product_select_check_model").on("click.product_select_check_model", function () {
                                            var model_selected_text = pModel_area.find("li.selected").text();
                                            if (model_selected_text == default_model_select_text) {
                                                warn_text.fadeIn();
                                            } else {
                                                warn_text.fadeOut();
                                            }
                                        });
                                    });
                                }
                            }
                        } else if (value == "") {

                            pModel_area.html('<li data-val="" class="default_text selected">' + default_model_select_text + '</li>').promise().done(function () {
                                var this_model = pProduct_select_area.find(".com_select_wrap").eq(1).find(".com_select");
                                app.partial.do_select(this_model);
                                this_model.each(function () {
                                    $(this).find("li").eq(0).trigger("click");
                                });
                            });

                            warn_text.fadeOut();
                            btn.off("click.product_select_check_model");
                        }
                    });
                });

                if (this_pLine.find("li").length == 2) {
                    this_pLine.find("li").eq(1).trigger("click");
                } else {
                    this_pLine.find("li").eq(0).trigger("click");
                }
            });
        });
    }
};
'use strict';
/*eslint-disable new-cap, no-unused-vars,
no-use-before-define, no-trailing-spaces, space-infix-ops, comma-spacing,
no-mixed-spaces-and-tabs, no-multi-spaces, camelcase, no-loop-func,no-empty,
key-spacing ,curly, no-shadow, no-return-assign, no-redeclare, no-unused-vars,
eqeqeq, no-extend-native, quotes , no-inner-declarations*/
/*global app, $ */

app.partial.productsTab = function () {

    if ($('.component-products-tab').length > 0) {
        var tabMobile_clickable = true;
        var tabMobile_openable = true;
        var tabMobile = $('.products-tab-mobile-dropdown-menu');

        $('.products-tab-mobile-arrow').bind('click', function () {
            if (tabMobile_clickable == true) {
                tabMobile_clickable = false;
                if (tabMobile_openable == true) {
                    tabMobile.fadeIn(400, function () {
                        tabMobile_openable = false;
                    });
                } else {
                    tabMobile.fadeOut(400, function () {
                        tabMobile_openable = true;
                    });
                }
                tabMobile_clickable = true;
            }
        });

        $(document).ready(function () {
            var stickyNavTop = $('.component-products-tab').offset().top;
            var stickyNav = function stickyNav() {
                var scrollTop = $(window).scrollTop();
                if (scrollTop > stickyNavTop) {
                    $('.component-products-tab').addClass('component-sticky');
                } else {
                    $('.component-products-tab').removeClass('component-sticky');
                }
            };
            stickyNav();
            $(window).scroll(function () {
                stickyNav();
            });
        });
    }
};
'use strict';
/*eslint-disable new-cap, no-unused-vars,
	no-use-before-define, no-trailing-spaces, space-infix-ops, comma-spacing,
	no-mixed-spaces-and-tabs, no-multi-spaces, camelcase, no-loop-func,no-empty,
	key-spacing ,curly, no-shadow, no-return-assign, no-redeclare, no-unused-vars,
	eqeqeq, no-extend-native, quotes , no-inner-declarations*/
/*global app, $ */

app.partial.products = function () {

    $('.component-products-carousel-single-item').slick({
        prevArrow: "<img class='component-products-prevArrow prev slick-prev' src='/etc/designs/b2c/clientlib-site/img/list-2/rectangleLeft.png'>",
        nextArrow: "<img class='component-products-nextArrow next slick-next' src='/etc/designs/b2c/clientlib-site/img/list-2/rectangleRight.png'>",
        arrows: true,
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        draggable: false,
        // asNavFor: '.component-products-lightbox-single-item',
        asNavFor: '.slider_bind',
        //custom dots
        // customPaging: function customPaging(slider, i) {
        //     console.log(slider);
        //     console.log(i);
        //     var thumb = $(slider.$slides[i]).data('thumb');
        //     console.log(thumb);
        //     return '<a><img src="' + thumb + '"></a>';
        // },
        responsive: [{
            breakpoint: 1200,
            settings: {
                draggable: false,
                dots: false
            }
        }, {
            breakpoint: 801,
            settings: {
                draggable: true,
                dots: true
            }
        }]
    });

    $('.component-products-lightbox-con_pc_nav').slick({
        prevArrow: "<img class='component-products-prevArrow prev slick-prev' src='/etc/designs/b2c/clientlib-site/img/list-2/rectangleLeft.png'>",
        nextArrow: "<img class='component-products-nextArrow next slick-next' src='/etc/designs/b2c/clientlib-site/img/list-2/rectangleRight.png'>",
        infinite: true,
        slidesToShow: 5,
        slidesToScroll: 1,
        dots: false,
        draggable: false,
        asNavFor: '.slider_bind',
        centerMode: true,
        focusOnSelect: true,
        arrows: false,
        responsive: [{
            breakpoint: 1200,
            settings: {
                draggable: false
            }
        }, {
            breakpoint: 800,
            settings: {
                draggable: true
            }
        }]
    });

    $('.component-products-carousel').click(function () {
        var carousel_eee = $(this).prevAll().length;
        // console.log('component: ' + carousel_eee);
        openLightbox(carousel_eee);
    });
    $('.component-products-carousel-single-item .slick-dots li').click(function () {
        var eee = $(this).prevAll().length;
        // console.log(eee);
        // changeBorder(eee);
    });

    function openLightbox(obj) {
        if ($(window).width() > 800) {
            $('.component-products-lightbox-modal').modal('show');
            $('.component-products-lightbox-single-item').css('display', 'block');
            $('.component-products-lightbox-con_pc_nav2').css({ 'opacity': 0 });

            // $('.component-products-lightbox-single-item').get(0).slick.setPosition();
            // $('.component-products-lightbox-single-item').slick('setPosition');

            //needs times
            setTimeout(function () {

                $('.component-products-lightbox-con_pc_nav2').slick('setPosition');
                $('.component-products-lightbox-single-item').slick('setPosition');
                $('.component-products-lightbox-con_pc_nav2').css({ 'opacity': 1 });

                var currentSlide = $('.component-products-lightbox-con_pc_nav2').slick('slickCurrentSlide');
                $('.component-products-lightbox-con_pc_nav2 .slick-slide[data-slick-index="' + currentSlide + '"]').trigger("click", function () {});
            }, 800);
        }
    }

    // function changeBorder(obj) {

    //     $('.component-products-carousel-single-item .slick-dots li:eq(' + obj + ')').siblings().removeClass('slick-dots-change');
    //     $('.component-products-carousel-single-item .slick-dots li:eq(' + obj + ')').addClass('slick-dots-change');
    // }
    //remove active class from all thumbnail slides
    // $('.component-products-carousel-single-item .slick-dots li').removeClass('slick-dots-change');

    //set active class to first thumbnail slides
    // $('.component-products-carousel-single-item .slick-dots li').eq(0).addClass('slick-dots-change');
    // On before slide change match active thumbnail to current slide
    // $('.component-products-carousel-single-item').on('beforeChange', function(event, slick, currentSlide, nextSlide) {
    //     var mySlideNumber = nextSlide;
    // console.log(mySlideNumber);
    //     $('.component-products-carousel-single-item .slick-dots li').removeClass('slick-dots-change');
    //     $('.component-products-carousel-single-item .slick-dots li').eq(mySlideNumber).addClass('slick-dots-change');
    // });
};
'use strict';
/*eslint-disable new-cap, no-unused-vars,
	no-use-before-define, no-trailing-spaces, space-infix-ops, comma-spacing,
	no-mixed-spaces-and-tabs, no-multi-spaces, camelcase, no-loop-func,no-empty,
	key-spacing ,curly, no-shadow, no-return-assign, no-redeclare, no-unused-vars,
	eqeqeq, no-extend-native, quotes , no-inner-declarations*/
/*global app, $ */

app.partial.productslightbox = function () {

    $('.component-products-lightbox-single-item').slick({
        prevArrow: "<img class='component-products-prevArrow prev slick-prev' src='/etc/designs/b2c/clientlib-site/img/list-2/rectangleLeft.png'>",
        nextArrow: "<img class='component-products-nextArrow next slick-next' src='/etc/designs/b2c/clientlib-site/img/list-2/rectangleRight.png'>",
        arrows: true,
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        draggable: false,
        // asNavFor: '.component-products-carousel-single-item',
        asNavFor: '.slider_bind',
        //custom dots
        // customPaging: function customPaging(slider, i) {
        //     console.log(slider);
        //     console.log(i);
        //     var thumb = $(slider.$slides[i]).data('thumb');
        //     console.log(thumb);
        //     return '<a><img src="' + thumb + '"></a>';
        // },
        responsive: [{
            breakpoint: 1200,
            settings: {
                draggable: false,
                dots: false
            }
        }, {
            breakpoint: 800,
            settings: {
                draggable: true,
                dots: true
            }
        }]
    });

    $('.component-products-lightbox-con_pc_nav2').slick({
        prevArrow: "<img class='component-products-prevArrow prev slick-prev' src='/etc/designs/b2c/clientlib-site/img/list-2/rectangleLeft.png'>",
        nextArrow: "<img class='component-products-nextArrow next slick-next' src='/etc/designs/b2c/clientlib-site/img/list-2/rectangleRight.png'>",
        infinite: true,
        slidesToShow: 5,
        slidesToScroll: 1,
        dots: false,
        draggable: false,
        asNavFor: '.slider_bind',
        centerMode: true,
        focusOnSelect: true,
        arrows: false,
        responsive: [{
            breakpoint: 1200,
            settings: {
                draggable: false
            }
        }, {
            breakpoint: 800,
            settings: {
                draggable: true
            }
        }]

    });

    // $('.component-products-lightbox-single-item .slick-dots li').click(function() {
    //     var eee = $(this).prevAll().length;
    //     console.log(eee);
    //     changeBorder(eee);
    // });

    // function changeBorder(obj) {

    //     $('.component-products-lightbox-single-item .slick-dots li:eq(' + obj + ')').siblings().removeClass('slick-dots-change');
    //     $('.component-products-lightbox-single-item .slick-dots li:eq(' + obj + ')').addClass('slick-dots-change');
    // }
    //remove active class from all thumbnail slides
    // $('.component-products-lightbox-single-item .slick-dots li').removeClass('slick-dots-change');

    //set active class to first thumbnail slides
    // $('.component-products-lightbox-single-item .slick-dots li').eq(0).addClass('slick-dots-change');
    // On before slide change match active thumbnail to current slide
    // $('.component-products-lightbox-single-item').on('beforeChange', function(event, slick, currentSlide, nextSlide) {
    //     var mySlideNumber = nextSlide;
    // console.log(mySlideNumber);
    //     $('.component-products-lightbox-single-item .slick-dots li').removeClass('slick-dots-change');
    //     $('.component-products-lightbox-single-item .slick-dots li').eq(mySlideNumber).addClass('slick-dots-change');
    // });
};
"use strict";

app.partial.resultSearch = function () {

    doResultSearch($(".result_search_wrap"), $(".result_box_wrap"));

    function doResultSearch(pSearchBarWrap, pResultContent) {

        var input = pSearchBarWrap.find(".search_input");
        var btn = pSearchBarWrap.find(".search_btn");

        btn.on("click", function () {
            var searchterm = input.val().replace(/(\s)+/g, "+").split("+").filter(function (item) {
                return item != "";
            });

            var search_pattern = new RegExp(searchterm.join("|"), 'gi');
            var content_item = pResultContent.find(".result_box");

            content_item.removeClass("hide").addClass("cansee");

            if (searchterm.length > 0) {

                // $(".result_sort_wrap").find(".li_wrap").find("li").eq(0).trigger("click");

                var do_match = function do_match() {
                    var def = $.Deferred();
                    for (var j = 0; j < content_item.length; j++) {
                        if (!content_item.eq(j).find("a").text().match(search_pattern)) {
                            content_item.eq(j).removeClass("cansee").addClass("hide");
                        }
                    }

                    def.resolve();
                    return def.promise();
                };

                do_match().then(function () {
                    if ($(".result_box.cansee").length == 0) {
                        $(".no_result").fadeIn();
                    } else {
                        $(".no_result").hide();
                    }

                    content_item.each(function () {
                        var result_text = $(this).find("a").text();
                        for (var i = 0; i < searchterm.length; i++) {
                            result_text = result_text.replace(new RegExp("(" + searchterm[i] + ")", "ig"), "<span>$1</span>");
                        }
                        $(this).find("a").html(result_text);
                    });

                    input.val("");
                    more_result();
                });
            }
        });
    }
};
'use strict';
/*eslint-disable new-cap, no-unused-vars,
    no-use-before-define, no-trailing-spaces, space-infix-ops, comma-spacing,
    no-mixed-spaces-and-tabs, no-multi-spaces, camelcase, no-loop-func,no-empty,
    key-spacing ,curly, no-shadow, no-return-assign, no-redeclare, no-unused-vars,
    eqeqeq, no-extend-native, quotes , no-inner-declarations*/
/*global app, $ */

app.partial.review = function () {
    $(function () {
        $(".component-review").each(function () {

            var j_contentHide = $(this).find(".review-contentHide");
            var btn = $(this).find(".review-content-add-btn");
            var img = btn.find('img');

            j_contentHide.hide();

            btn.on('click', function () {
                if (j_contentHide.is(':visible')) {
                    j_contentHide.fadeOut(400, function () {
                        img.attr('src', '/etc/designs/b2c/clientlib-site/img/review/bg-1.png');
                    });
                } else {
                    j_contentHide.fadeIn(400, function () {
                        img.attr('src', '/etc/designs/b2c/clientlib-site/img/review/bg-2.png');
                    });
                }
            });
        });
    });
};
"use strict";

app.partial.search = function () {

    if (window.location.pathname.indexOf("search-result") > -1) {
        $(".search-toggle").prop("checked", false).trigger("click");
        $(".search-toggle-label").hide();
    }

    var search_items = window.location.search.substr(1).split("&").filter(function (item) {
        return item.match(/^(q=)/);
    });

    if (search_items && search_items.length > 0) {
        var search_item = search_items[0].substr(2).split("+").filter(function (item) {
            return item != "";
        });
    }

    if (search_item && search_item.length > 0) {
        var j_result_box_wrap = $(".result_box_wrap");
        var result = j_result_box_wrap.find(".result_box .text");

        result.each(function () {
            var result_text = $(this).html();
            for (var i = 0; i < search_item.length; i++) {
                result_text = result_text.replace(new RegExp("(" + search_item[i] + ")", "ig"), "<span>$1</span>");
            }
            $(this).html(result_text);
        });
    }

    var j_search_form = $(".search-form");
    j_search_form.each(function () {
        var form = $(this);
        var input = $(this).find("input");
        var btn = $(this).find("button");
        var data_url = input.attr("data-search-url");
        form.attr("autocomplete", "off");

        function ajax_data(pUrl, psuccessCB, pData) {
            $.ajax({
                url: pUrl,
                dataType: "json",
                type: "GET",
                data: pData || {},
                success: function success(data) {
                    psuccessCB(data);
                    // console.table(data);
                },
                error: function error(err, status) {
                    console.log(err, status);
                }
            });
        }
        ajax_data(data_url, search_autocomplete);

        function search_autocomplete(pData) {
            var data = pData;
            var group_name = [];
            data.map(function (item) {
                if (group_name.indexOf(item.group) < 0) {
                    group_name.push(item.group);
                }
            });
            // console.log("group_name", group_name);
            var html = "";
            if (group_name.length > 0) {
                var do_search_dropdown = function do_search_dropdown() {
                    var def = $.Deferred();
                    $(html).appendTo(form);
                    def.resolve();
                    return def.promise();
                };

                html += "<div class=\"search_dropdown\"><div class=\"search_dropdown_content\">";
                group_name.forEach(function (g_name) {
                    html += "<ul><div class=\"group_name\">" + g_name + "</div>";
                    data.forEach(function (item) {
                        if (item.group == g_name) {
                            html += "<li>" + item.product + "</li>";
                        }
                    });
                    html += "</ul>";
                });
                html += "</div></div>";

                ;
                do_search_dropdown().done(function () {
                    form.find(".search_dropdown").hide();
                    input.on("keyup", function () {
                        var search_value = $(this).val().trim().toLowerCase();
                        form.find(".search_dropdown").find("ul").each(function () {
                            var ul = $(this);
                            $(this).addClass("hide").find("li").each(function () {
                                if ($(this).text().trim().toLowerCase().indexOf(search_value) < 0) {
                                    $(this).addClass("hide");
                                } else {
                                    $(this).removeClass("hide");
                                    ul.removeClass("hide");
                                }
                            });
                        }).parents(".search_dropdown_content").slimScroll({
                            alwaysVisible: true,
                            size: '3px',
                            height: 'auto',
                            'max-height': "300px"
                        }).parents(".search_dropdown").fadeIn();
                        form.find(".search_dropdown").find("li").on("click", function () {
                            input.val($(this).html());
                            form.find(".search_dropdown_content").slimScroll({ destroy: true }).parents(".search_dropdown").fadeOut();
                        });
                    });
                    if (form.find(".slimScrollDiv").length > 0) {
                        $(document).not(form).on("click", function () {
                            form.find(".search_dropdown_content").slimScroll({ destroy: true }).parents(".search_dropdown").fadeOut();
                        });
                    }
                });
            }
        }
    });
};
"use strict";

app.partial.do_select = function (pTab_wrap) {
    if (pTab_wrap) {
        var wrap = pTab_wrap;
        wrap.each(function () {
            var cover = $(this).find(".tab_cover");
            var ul = $(this).find("ul");
            var input = $(this).find("input:not(.extra_info)");
            var url_input = $(this).find("input[data-infotype='url']");
            var li_wrap = $(this).find(".li_wrap");
            var li = li_wrap.find("li");
            var cover_f_class;
            var other_wrap = $(".com_select").not($(this));
            var scroll_height;
            if ($(window).width() > 1000) {
                scroll_height = "308px";
            } else {
                scroll_height = "calc( 44vw + 168px )";
            }
            if (li.length > 1) {
                cover.removeClass("bg_w").removeClass("bg_g").addClass("bg_w");
            } else {
                cover.removeClass("bg_w").removeClass("bg_g").addClass("bg_g");
            }
            cover.off("click").on("click", function () {
                if (li.length > 1) {
                    ul.addClass("open");
                    cover.hide();
                    if (li_wrap.find("li").length > 6) {
                        li_wrap.slimScroll({
                            height: scroll_height,
                            alwaysVisible: true,
                            size: '5px',
                            touchScrollStep: 10,
                            wheelStep: 3
                        });
                    }
                    other_wrap.each(function () {
                        if ($(this).find("ul").hasClass("open")) {
                            $(this).find("li.selected").trigger("click");
                        }
                    });
                    if ($(this).parents(".form_item_wrap")) {
                        input.trigger("keyup.form_keyup");
                    }
                } else {}
            });
            ul.find("li").each(function () {
                $(this).off("click").on("click", function () {
                    ul.find("li").removeClass("selected");
                    var text = $(this).text();
                    if ($(this).attr("data-val").trim() == "") {
                        cover_f_class = "f_gray";
                    } else {
                        cover_f_class = "f_black";
                    }
                    $(this).addClass("selected");
                    input.val($(this).attr("data-val").trim().toLowerCase());
                    if (url_input && $(this).attr("data-url")) {
                        url_input.val($(this).attr("data-url").trim());
                    } else if (url_input) {
                        url_input.val("");
                    }
                    // console.log(input.val());
                    if (li_wrap.find("li").length > 6) {
                        li_wrap.slimScroll({ destroy: true });
                    }
                    li_wrap.css({
                        "height": "100%"
                    });
                    ul.removeClass("open");
                    cover.removeClass("f_gray").removeClass("f_black").addClass(cover_f_class).html(text).show();
                    if ($(this).parents(".form_item_wrap")) {
                        input.trigger("keyup.form_keyup");
                    }
                });
            });

            if (li.length == 2) {
                li.eq(1).trigger("click");
            } else {
                li.eq(0).trigger("click");
            }
        });
    }
};
"use strict";

app.partial.select_tab = function (pTab_wrap) {

    if (pTab_wrap) {
        var tap_wrap = $(pTab_wrap);
        tap_wrap.each(function () {

            var cover = $(this).find(".tab_cover");
            var btn = $(this).find("li").not(".sub_menu li");
            var sub_btn = $(this).find(".sub_menu li");

            btn.each(function () {
                var t = $(this);
                if (t.hasClass("with_sub_menu")) {
                    t.find(">a").attr("href", "javascript:;");
                }
            });

            if ($(window).width() <= 1025) {
                if (cover.parent("ul").hasClass("open")) {
                    // return;
                } else {
                    if (btn.hasClass("selected")) {
                        btn.not(".selected").addClass("hide");
                    } else {
                        btn.addClass("hide").eq(0).removeClass("hide").addClass("selected");
                    }
                }
                cover.on("click.coverclick", function () {
                    $(".btn_select_table_toggle").remove();
                    btn.removeClass("hide");
                    cover.parent("ul").addClass("open").prepend("<div class='btn_select_table_toggle'></div>");
                    $(".btn_select_table_toggle").on("click", function () {
                        $(".btn_select_table_toggle").remove();
                        cover.parent("ul").removeClass("open");
                        btn.not(".selected").addClass("hide");
                        $(".with_sub_menu").removeClass("open_sub");
                    });
                });
                btn.each(function () {
                    var first_t = $(this);
                    first_t.off("click.pc_first_tab_click").off("click.m_first_tab_click").on("click.m_first_tab_click", function () {
                        if (first_t.hasClass("with_sub_menu")) {
                            var sub_menu = first_t.find(".sub_menu");
                            $(".with_sub_menu").not($(this)).removeClass("open_sub");
                            if (!sub_menu.is(":visible")) {
                                first_t.addClass("open_sub");
                            } else {
                                first_t.removeClass("open_sub");
                            }
                        } else {
                            first_t.addClass("selected").siblings("li").removeClass("selected").addClass("hide");
                            $(".with_sub_menu").removeClass("open_sub");
                            cover.parent("ul").removeClass("open");
                        }
                    });
                });
                sub_btn.each(function () {
                    $(this).off("click.pc_first_tab_click").off("click.m_sub_tab_click").on("click.m_sub_tab_click", function (event) {
                        event.stopPropagation();
                        $(this).parent().parent(".with_sub_menu").addClass("selected").siblings("li").removeClass("selected").addClass("hide");
                        $(".with_sub_menu").removeClass("open_sub");
                        cover.parent("ul").removeClass("open");
                    });
                });
            } else {
                cover.parent("ul").removeClass("open").find(">li").removeClass("hide");
                btn.each(function () {
                    $(this).off("click.m_first_tab_click").off("click.pc_first_tab_click").on("click.pc_first_tab_click", function () {
                        $(this).addClass("selected").siblings("li").removeClass("selected");
                    });
                });
                sub_btn.each(function () {
                    $(this).off("click.m_sub_tab_click").off("click.pc_sub_tab_click").on("click.pc_sub_tab_click", function (event) {
                        event.stopPropagation();
                        $(this).parent().parent(".with_sub_menu").addClass("selected").siblings("li").removeClass("selected");
                    });
                });
            }
        });
    }
};

app.partial.sort_tab = function (pTab_wrap) {
    if (pTab_wrap) {
        var wrap = $(pTab_wrap);
        wrap.each(function () {
            var cover = $(this).find(".tab_cover");
            var ul = $(this).find("ul");
            var input = $(this).find("input");
            var li_wrap = $(this).find(".li_wrap");
            cover.off("click").on("click", function () {
                ul.addClass("open");
                cover.hide();
                li_wrap.slimScroll({
                    alwaysVisible: true,
                    size: '3px',
                    touchScrollStep: 10
                });
            });
            ul.find("li").each(function () {
                $(this).off("click").on("click", function () {
                    ul.find("li").removeClass("selected");
                    $(this).addClass("selected");
                    input.val($(this).text().trim().toLowerCase());

                    var filter_property;
                    if ($(this).attr("data-filterValue")) {
                        filter_property = $(this).attr("data-filterValue").trim().toLowerCase();
                    }
                    var filter_value = filter_property || $(this).text().trim().toLowerCase();

                    app.partial.search_result_filter(filter_value);
                    li_wrap.slimScroll({ destroy: true });
                    li_wrap.css({
                        "height": "100%"
                    });
                    ul.removeClass("open");
                    cover.show();
                });
            });
        });
    }
};

app.partial.search_result_filter = function (pValue) {
    if (pValue) {
        var filter = pValue;
        var j_result_box_wrap = $(".result_box_wrap");
        j_result_box_wrap.each(function () {
            var wrap = $(this);

            function set_result_filter() {
                var def = $.Deferred();
                var result_box = wrap.find(".result_box");
                result_box.each(function () {
                    if ($(this).find(".faq_title").length > 0) {
                        $(this).find(".faq_title").html($(this).find(".faq_title").text());
                    }
                    var feature = $(this).attr("data-filter");
                    feature = feature.split(",").map(function (item) {
                        return item.trim().toLowerCase();
                    });
                    // console.log("feature", feature);
                    if (filter.match(/(all)/i)) {
                        result_box.addClass("cansee").removeClass("hide");
                    } else if (feature.indexOf(filter) < 0) {
                        $(this).removeClass("cansee").addClass("hide");
                    } else {
                        $(this).addClass("cansee").removeClass("hide");
                    }
                });
                def.resolve();
                return def.promise();
            };
            set_result_filter().done(function () {
                if ($(".count_zero").length > 0) {
                    if ($(".count_zero").is(":visible")) {
                        $(".no_result").hide();
                        more_result();
                    } else {
                        if ($(".result_box.cansee").length == 0) {
                            $(".no_result").fadeIn();
                            more_result();
                        } else {
                            $(".no_result").hide();
                            more_result();
                        }
                    }
                } else {
                    if ($(".result_box.cansee").length == 0) {
                        $(".no_result").fadeIn();
                        more_result();
                    } else {
                        $(".no_result").hide();
                        more_result();
                    }
                }
            });
        });
    }
};

app.partial.select_tab(".knowledge_tab");

app.partial.sort_tab(".sort_select");
$(".sort_select").each(function () {
    $(this).find("li").eq(0).trigger("click");
});
'use strict';

app.partial.temp_for_minisite = function () {

    var url = window.location.href;

    if (url.indexOf("wit-jp") >= 0) {
        $("body").addClass("jp");
    }
};
"use strict";

app.partial.text_on_image_adjust = function (pItem) {
   $(".expandablecontentblock").each(function () {
      var content_wrap = $(this).find(".com_container");
      var contents = $(this).find(".com_container > div");
      var total_content_h = 0;
      contents.each(function () {
         var content_h = $(this).outerHeight(true);
         total_content_h += content_h;
      });
      $(this).css({
         "min-height": total_content_h + "px"
      });
   });
};
'use strict';

app.partial.text_limit = function (pItem) {
    var dot_setting = {
        /*  The text to add as ellipsis. */
        ellipsis: '... ',

        /*  How to cut off the text/html: 'word'/'letter'/'children' */
        wrap: 'word',

        /*  Wrap-option fallback to 'letter' for long words */
        fallbackToLetter: true,

        /*  jQuery-selector for the element to keep and put after the ellipsis. */
        after: null,

        /*  Whether to update the ellipsis: true/'window' */
        watch: true,

        /*  Optionally set a max-height, can be a number or function.
            If null, the height will be measured. */
        // height: null,

        /*  Deviation for the height-option. */
        tolerance: 0,

        /*  Callback function that is fired after the ellipsis is added,
            receives two parameters: isTruncated(boolean), orgContent(string). */
        callback: function callback(isTruncated, orgContent) {},

        lastCharacter: {

            /*  Remove these characters from the end of the truncated text. */
            remove: [' ', ',', ';', '.', '!', '?'],

            /*  Don't add an ellipsis if this array contains 
                the last character of the truncated text. */
            noEllipsis: []
        }
    };

    // $("body").not(".zh-tw").find(".text_limit").dotdotdot(dot_setting);

    $("body").not(".zh-tw").not(".jp").find(".text_limit").each(function () {
        if ($(this).hasClass('text-wrap-component-list-1-p') && $(this).find("p").text().length == 0) {
            $(this).css({
                "height": "0px",
                "margin-bottom": "0px"
            });
        } else if ($(this).hasClass('text-wrap-component-list-8-p') && $(this).find("p").text().length == 0) {
            $(this).css({
                "height": "0px",
                "margin-bottom": "0px"
            });
        } else {
            $(this).dotdotdot(dot_setting);
        }
    });

    $("body.zh-tw, body.jp").find(".text_limit").each(function () {
        if ($(this).hasClass('text-wrap-component-list-1-p') && $(this).find("p").text().length == 0) {
            $(this).css({
                "height": "0px",
                "margin-bottom": "0px"
            });
        } else if ($(this).hasClass('text-wrap-component-list-8-p') && $(this).find("p").text().length == 0) {
            $(this).css({
                "height": "0px",
                "margin-bottom": "0px"
            });
        } else {
            if ($(this).find("p").height() <= $(this).height()) {
                return;
            } else {
                var clamp_setting = {
                    clamp: "auto",
                    useNativeClamp: false
                };
                clamp_setting.clamp = $(this).height() + "px";
                $clamp($(this).find("p").get(0), clamp_setting);
            }
        }
    });
};

app.partial.products_tab_btn_show = function () {
    var p_tab = $(".component-products-tab");
    if (p_tab.length > 0) {
        var btn = p_tab.find(".nav-buynow");
        $(window).scroll(function () {
            if (p_tab.hasClass("component-sticky")) {
                btn.show();
            } else if (!p_tab.hasClass("component-sticky")) {
                btn.hide();
            }
        });
    }
};

app.partial.cookie_action = function () {
    function set_cookie(cName, cValue, exdays) {
        var d = new Date();
        d.setTime(d.getTime() + exdays * 24 * 60 * 60 * 1000);
        var expires = "expires=" + d.toUTCString();
        document.cookie = cName + "=" + cValue + ";" + expires + ";path=/";
    }

    function get_cookie(cName) {
        var name = cName;
        var cArray = document.cookie.split(";");
        for (var i = 0, j = cArray.length; i < j; i++) {
            var c = cArray[i];
            while (c.charAt(0) == ' ') {
                c = c.substring(1);
            }
            if (c.indexOf(name) == 0) {
                return c.substring(name.length + 1, c.length);
            }
        }
        return "";
    }
    var cookies_line = $(".line_cookies");
    var btn = cookies_line.find(".btn_close");
    btn.on("click", function () {
        cookies_line.hide();
        set_cookie("agree_cookies", "true", 7);
    });
    var if_agree_cookie = get_cookie("agree_cookies");
    if (if_agree_cookie == "true") {
        cookies_line.hide();
    } else {
        cookies_line.show();
    }
};

// MOVIE PLAY
app.partial.movie_play = function () {
    var j_movieplay = $(".movieplay");
    var autoplayCode_word = "?rel=0&autoplay=1&origin=http://example.com&enablejsapi=1";
    var embed_text = "https://www.youtube.com/embed/";

    function domovie_play_image_area(pTarget, pHtml) {
        var def = $.Deferred();
        pTarget.prepend(pHtml);
        def.resolve(pTarget);
        return def.promise();
    }

    $(".movievideo").css({ "opacity": 0 });
    j_movieplay.each(function (index, el) {
        var movieSrc = $(this).find('.movievideo iframe').attr("data-src");
        var img = $(this).find("img");
        var file_id = movieSrc.substr(movieSrc.indexOf("=") + 1);
        var img_src;
        var youtube_img_src;
        var movievideo = $(this);

        var html = "";

        if (img.length == 0) {

            var img_1920 = "http://img.youtube.com/vi/" + file_id + "/maxresdefault.jpg";
            var img_640 = "http://img.youtube.com/vi/" + file_id + "/sddefault.jpg";
            var img_480 = "http://img.youtube.com/vi/" + file_id + "/hqdefault.jpg";

            if (img_1920) {
                youtube_img_src = img_1920;
            } else if (img_640) {
                youtube_img_src = img_640;
            } else if (img_480) {
                youtube_img_src = img_480;
            }

            html += '<div class="movieplay_image"> <div class="movieplay_button"></div> <img src="' + youtube_img_src + '"> </div>';
            domovie_play_image_area($(this), html).done(function (pTarget) {
                if ($(window).width() > 800) {
                    var movie_h = movievideo.height();
                    var adj_fs = ~~(movie_h / 3) > 105 ? 350 : ~~(movie_h / 3) > 40 ? movie_h : 120;
                    movievideo.find(".movieplay_button").css({
                        "font-size": adj_fs + "px"
                    });
                }
            });
        } else {
            if ($(window).width() > 800) {
                var movie_h = movievideo.height();
                var adj_fs = ~~(movie_h / 3) > 105 ? 350 : ~~(movie_h / 3) > 40 ? movie_h : 120;
                movievideo.find(".movieplay_button").css({
                    "font-size": adj_fs + "px"
                });
            }
        }

        $(this).on("mousedown", function (event) {
            var movieplay_image = $(this).find('.movieplay_image');
            var movievideo = $(this).find('.movievideo');

            var movieEmbedSrc = movieSrc.substr(movieSrc.indexOf("watch?v=") + 8);
            $(this).find('.movievideo iframe').attr("src", embed_text + movieEmbedSrc + autoplayCode_word);
            movievideo.css({ "opacity": 1 });
            movievideo.fadeIn(300);
            setTimeout(function () {
                movieplay_image.fadeOut(800);
            }, 300);
        });
    });
};

app.partial.movie_pop = function () {

    $(document).ready(function () {

        var j_video_pop = $(".video_pop");
        var autoplayCode_word = "?autoplay=1";

        if (j_video_pop.length > 0) {
            j_video_pop.each(function (index, el) {

                var ori_url = $(this).attr("data-url");
                var file_id = ori_url.substr(ori_url.indexOf("=") + 1);

                var img_1920 = "http://img.youtube.com/vi/" + file_id + "/maxresdefault.jpg";
                var img_640 = "http://img.youtube.com/vi/" + file_id + "/sddefault.jpg";
                var img_480 = "http://img.youtube.com/vi/" + file_id + "/hqdefault.jpg";

                // deal with faq video_pop img
                var image_area = $(this).find(".img_area.with_video");
                image_area.removeClass("no_img");

                if (image_area) {
                    if (image_area.css("background-image")) {
                        var img_url = image_area.css("background-image").replace('url("', "").replace('")', "");
                        if (!/.(?:png|jpg)/ig.test(img_url)) {

                            if (img_1920) {
                                image_area.css({
                                    "background-image": "url('" + img_1920 + "')"
                                });
                            } else if (img_640) {
                                image_area.css({
                                    "background-image": "url('" + img_640 + "')"
                                });
                            } else if (img_480) {
                                image_area.css({
                                    "background-image": "url('" + img_480 + "')"
                                });
                            } else {
                                image_area.addClass("no_img");
                            }
                        }
                    }
                }

                var url = $(this).attr("data-url") + autoplayCode_word;
                $(this).attr("href", url).fancybox({
                    fitToView: true,
                    autoSize: true,
                    closeClick: true,
                    buttons: ['close'],
                    clickOutside: 'close'
                });
            });
        }
    });
};

app.partial.social_share = function () {
    var share_area = $(".social_share_area");
    share_area.each(function () {
        var share = $(this);
        var share_type = share.attr("data-shareType");
        share_type = share_type.split(",");
        share.jsSocials({
            shareIn: "popup",
            showLabel: false,
            showCount: false,
            shares: share_type
        });
    });
};

app.partial.compare_table = function () {

    $('.row_mobile_compare').not(":nth-of-type(2)").slick({
        prevArrow: "<img class='component-products-prevArrow prev slick-prev' src='/etc/designs/b2c/clientlib-site/img/list-2/rectangleLeft.png'>",
        nextArrow: "<img class='component-products-nextArrow next slick-next' src='/etc/designs/b2c/clientlib-site/img/list-2/rectangleRight.png'>",
        arrows: false,
        infinite: true,
        slidesToShow: 2,
        slidesToScroll: 1,
        draggable: true,
        dots: false,
        asNavFor: '.row_mobile_compare'
    });

    $('.compare2 .row_mobile_compare').not(":nth-of-type(2)").slick('unslick');

    $('.row_mobile_compare:nth-of-type(2)').slick({
        prevArrow: "<img class='component-products-prevArrow prev slick-prev' src='/etc/designs/b2c/clientlib-site/img/list-2/rectangleLeft.png'>",
        nextArrow: "<img class='component-products-nextArrow next slick-next' src='/etc/designs/b2c/clientlib-site/img/list-2/rectangleRight.png'>",
        arrows: true,
        infinite: true,
        slidesToShow: 2,
        slidesToScroll: 1,
        draggable: true,
        dots: false,
        asNavFor: '.row_mobile_compare'
    });

    $('.compare2 .row_mobile_compare:nth-of-type(2)').slick('unslick');
};

app.partial.pop_action = function () {
    var j_pop_btn = $(".pop_btn");
    j_pop_btn.each(function () {
        var btn = $(this);
        var pop = btn.attr("data-pop");
        var pop_content = $(pop).find(".pop_content");

        btn.on("click.popup", function () {

            var if_pop_check;
            if_pop_check = arguments.length > 1 ? arguments[1] : false;

            var j_pop_fix_item = $(pop).find(".pop_wrap").find(".pop_fix_item");
            var h = 0;
            var h_set = 0;
            if (j_pop_fix_item.length > 0) {
                for (var i = 0; i < j_pop_fix_item.length; i++) {
                    h += j_pop_fix_item.eq(i).outerHeight(true);
                }

                if ($(window).width() > 800) {
                    h_set = $(pop).find(".pop_content_wrap").innerHeight() - 150 - h;
                } else {
                    h_set = $(pop).find(".pop_content_wrap").innerHeight() - 100 - h;
                }
            }

            if (h_set == 0) {
                h_set = 'auto';
            } else {
                h_set = h_set + 'px';
            }

            if (btn.hasClass('form_btn') && if_pop_check) {
                if ($(window).width() > 1050) {
                    $(pop).find(".pop_wrap").addClass("show").find(".pop_content").slimScroll({
                        // alwaysVisible: true,
                        size: '3px',
                        touchScrollStep: 1,
                        height: h_set,
                        wheelStep: 3
                    });
                } else {
                    $(pop).find(".pop_wrap").addClass("show");
                }
            } else if (!btn.hasClass('form_btn')) {
                if ($(window).width() > 1050) {
                    $(pop).find(".pop_wrap").addClass("show").find(".pop_content").slimScroll({
                        // alwaysVisible: true,
                        size: '3px',
                        touchScrollStep: 1,
                        height: h_set,
                        wheelStep: 3
                    });
                } else {
                    $(pop).find(".pop_wrap").addClass("show");
                }
            }
        });
        var close_btn = $(pop).find(".close");
        close_btn.on("click.popclose", function () {
            pop_content.slimScroll("destroy");
            $(pop).find(".pop_wrap").removeClass("show");
        });
        $(pop).find(".info_pop_wrap, .pop_content_wrap").on("click", function (event) {
            event.stopPropagation();
        });
        $(pop).find(".pop_wrap").on("click", function () {
            close_btn.trigger("click");
        });
    });
};

app.partial.adj_text_img_top_bottom = function () {
    // $('.lazy').Lazy();

    function cal_img_h(pTarget) {
        var def = $.Deferred();
        pTarget.each(function () {
            var target = $(this);
            var img_ori_w = parseInt($(this).find("img").attr("width"));
            var img_ori_h = parseInt($(this).find("img").attr("height"));
            var img_ratio = img_ori_h / img_ori_w;
            var content_w = $(this).width();
            var img_adj_h;
            if ($(this).find("img").hasClass("hundred")) {
                img_adj_h = ~~(content_w * img_ratio);
            } else {
                img_adj_h = img_ori_h;
            }
            img_adj_h += 20;

            target.css({
                "min-height": img_adj_h + "px"
            }).attr("data-minh", img_adj_h);
        });
        def.resolve();
        return def.promise();
    }

    function do_adj() {
        // var t = $("html").not(".chrome").find(".do_top_bottom");
        var t = $(".do_top_bottom");
        t.each(function () {
            var wrap_inner = $(this).find(".col_content_wrap_inner");
            if ($(window).width() > 780) {
                var wrap_inner_h_array = [];

                wrap_inner.each(function () {
                    // wrap_inner_h_array.push($(this).height());

                    var img_component = $(this).find(".aemimage");
                    var wrap = $(this);
                    var total_children_h = 0;
                    cal_img_h(img_component).done(function () {

                        var div = wrap.find("> div");
                        for (var j = 0; j < div.length; j++) {
                            if (div.eq(j).hasClass("aemimage")) {
                                if (div.eq(j).get(0).hasAttribute("data-minh")) {
                                    total_children_h += parseInt(div.eq(j).attr("data-minh"));
                                } else {
                                    total_children_h += div.eq(j).outerHeight();
                                }
                            } else {
                                total_children_h += div.eq(j).outerHeight();
                            }
                        }
                        wrap_inner_h_array.push(total_children_h);
                    });
                });

                var wrap_inner_h = ~~Math.max.apply(null, wrap_inner_h_array);
                wrap_inner.each(function () {
                    $(this).height(wrap_inner_h + "px");
                });
            } else {
                wrap_inner.each(function () {
                    $(this).height("100%");
                });
            }
        });
    }
    var set_do_adj;
    $(window).on("resize", function () {
        clearTimeout("set_do_adj");
        set_do_adj = setTimeout(function () {
            do_adj();
        }, 250);
    });
};

app.partial.row_info_mobile_action = function () {
    var j_row_info_mobile = $(".row_info_mobile");
    j_row_info_mobile.each(function () {
        var icon = $(this).find(".support_index_icon_info");
        var text = $(this).find(".info_mobile_text");
        if (text.text().trim() == "") {
            icon.hide();
        }
        icon.on("click", function () {
            text.get(0).classList.toggle("hide");
        });
    });
};

//adjust 4col and 6col arrange under 800px width
app.partial.adjMultiColumLine = function () {

    if ($(window).width() <= 800) {
        $('.column-control').find(">.row").each(function () {
            var col4 = $(this).find('>.col-sm-3.col-xs-6.col_content_wrap');
            if (col4.length == 4) {
                var col_pre2_html = "<div class='col-sm-3 col-xs-6 col_content_wrap'>" + col4.eq(0).html() + "</div><div class='col-sm-3 col-xs-6 col_content_wrap'>" + col4.eq(1).html() + "</div>";
                var col_last2_html = "<div class='col-sm-3 col-xs-6 col_content_wrap'>" + col4.eq(2).html() + "</div><div class='col-sm-3 col-xs-6 col_content_wrap'>" + col4.eq(3).html() + "</div>";
                var adj_html = "<div class='multiColWrap'>" + col_pre2_html + "</div><div class='multiColWrap'>" + col_last2_html + "</div>";
                $(this).html(adj_html);
            }
        });
    }
};

app.partial.order_status_table_action = function () {
    var row = $(".order_status_table_row");
    if ($(window).width() <= 800) {
        row.each(function () {
            var li = $(this).find("li").eq(0);
            li.off("click.open_after").on("click.open_after", function () {
                $(this).toggleClass("open_after");
            });
        });
    } else {
        row.each(function () {
            var li = $(this).find("li").eq(0);
            $(this).find("li").removeClass("open_after");
            li.off("click.open_after");
        });
    }
};

app.partial.change_index_title_color = function () {
    if (window.location.href.indexOf("index.html") >= 0) {
        $(".parbase.generic-list").each(function () {
            $(this).find(".block_title").removeClass("f_black").addClass("f_purple");
        });
    }
};

var do_after_win_resize;
$(window).on("resize", function () {
    clearTimeout("do_after_win_resize");
    do_after_win_resize = setTimeout(function () {
        app.partial.order_status_table_action();
        app.partial.text_limit();
        if ($(window).width() > 800) {
            $(".info_mobile_text").removeClass("hide").addClass("hide");
        }
    }, 500);
});
'use strict';

$(function () {

    // 定義每個component
    $.each(app.partial, function (name, init) {
        init();
    });

    app.imageReload.callback = function () {
        // $('html').addClass('loading-done');
    };
    app.imageReload.init();

    var do_after_window_resize;
    $(window).on("resize", function () {
        clearTimeout("do_after_window_resize");
        do_after_window_resize = setTimeout(function () {
            if (app.partial.select_tab) {
                app.partial.select_tab(".knowledge_tab");
            }
            if (app.partial.adjMultiColumLine) {
                app.partial.adjMultiColumLine();
            }
            app.partial.do_mega_menu_group_a_action();
            if (app.partial.photos_component) {
                app.partial.photos_component();
            }
            if (app.partial.movie_play) {
                app.partial.movie_play();
            }
        }, 500);
    });

    $('html').addClass('loading-done');
});

'use strict';

app.partial.preload = function () {

    app.dementions = {
        mobile: false,
        desktop: false
    };

    function imageReload(callback) {

        var imagePreload = {},
            elements = [];

        var main = $('img[data-src]:visible, figure[data-src]:visible').not('[src],[style]');
        main.each(function (idx, ele) {
            if ($(ele).attr('data-src')) {
                imagePreload[$(ele).attr('data-src')] = false;
                elements.push(ele);
            }
        });

        $.each(imagePreload, function (src, stat) {
            if (/\.svg$/.test(src)) {

                $.get(src, function (svg) {
                    var ret = $(elements).filter(function () {
                        return src == $(this).attr('data-src');
                    }).each(function (i, ele) {

                        if (ele.tagName.toLowerCase() === 'img') {
                            $('svg', svg).clone().insertAfter(ele);
                            $(ele).remove();
                        } else {
                            $(ele).removeAttr('data-src').html($('svg', svg).clone());
                        }
                    });
                    checkAll(src);
                });
            } else {
                var img = new Image();
                img.onload = function () {
                    var ret = $(elements).filter(function () {
                        return src == $(this).attr('data-src');
                    }).each(function (i, ele) {
                        if (ele.tagName.toLowerCase() === 'img') {
                            $(ele).attr('src', $(ele).attr('data-src'));
                        } else {
                            $(ele).css('background-image', 'url(' + $(ele).attr('data-src') + ')');
                        }
                    });
                    checkAll(src);
                };
                // img.src = src;
            }
        });

        function checkAll(src) {

            imagePreload[src] = true;
            var alldone = true;
            $.each(imagePreload, function ($s, $done) {
                alldone = $done && alldone;
            });
            if (alldone) {
                //全部圖片下載完成
                imageLoaded();
            }
        }

        function imageLoaded() {
            if (typeof app.imageReload.callback == 'function') {
                app.imageReload.callback();
            }
        }
    }

    app.imageReload = {
        init: function init() {
            $(window).on('resize', function () {
                if ($('img[data-src]:visible, figure[data-src]:visible').not('[src],[style]').length && $(window).width() <= 768) {
                    imageReload(function () {
                        app.dementions.mobile = true;
                    });
                } else if ($('img[data-src]:visible, figure[data-src]:visible').not('[src],[style]').length && $(window).width() > 768) {
                    imageReload(function () {
                        app.dementions.desktop = true;
                    });
                } else {
                    app.imageReload.callback();
                }
                // if( $('html.ios').length && window.innerHeight ){
                //  $('html, body').height(window.innerHeight);
                // }
            }).trigger('resize');
        },
        refresh: function refresh() {
            $(window).trigger('resize');
        },
        callback: function callback() {}
    };
};