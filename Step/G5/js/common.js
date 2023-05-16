/// <reference path="../../Scripts/jquery-1.5.1.js" />
$.extend({
    alertMessage: function (opts) {
        //参数,合并参数
        opts = $.extend({
            'herfUrl': "",
            'message': "",
            'callback': function () {
            } //执行完毕，执行操作
        }, opts || {});
        if (opts.message != "") {
            alert(opts.message);
        }

        if (opts.herfUrl != "") {
            //跳转地址不为空,则跳转
            window.location.href = opts.herfUrl;
        }
    }
});


function alertMess(opts) {
    if (opts != "") {
        //1.首先动态创建一个容器标签元素，如DIV
        var temp = document.createElement("div");
        //2.然后将要转换的字符串设置为这个元素的innerHTML(ie，火狐，google都支持)
        temp.innerHTML = opts
        //3.最后返回这个元素的innerText(ie支持)或者textContent(火狐，google支持)，即得到经过HTML解码的字符串了。
        var output = temp.innerText || temp.textContent;
        temp = null;
        alert(output);
    }
}

function checkPhone(val) {
    var tel = /^[1][3-8]\d{9}$|^([6|9])\d{7}$|^[0][9]\d{8}$|^[6]([8|6])\d{5}$/;
    if (tel.test(val) == false) {
        return false;
    } else {
        return true;
    }
}

function checkEmail(val) {
    var email = /^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/;
    if (email.test(val) == false) {
        return false;
    } else {
        return true;
    }
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
        //如需打开新窗口，form的target属性要设置为'_blank'
        temp_form.target = "_self";
        temp_form.method = "post";
        temp_form.style.display = "none";
        //添加参数
        //for (var item in PARAMTERS) {
        var opt = document.createElement("textarea");
        opt.name = name;
        opt.value = value;
        temp_form.appendChild(opt);
        //}
        document.body.appendChild(temp_form);
        //提交数据
        temp_form.submit();
    }
    else {
        var temp_form = document.createElement("form");
        temp_form.action = URL;
        //如需打开新窗口，form的target属性要设置为'_blank'
        temp_form.target = "_self";
        temp_form.method = "post";
        temp_form.style.display = "none";
        document.body.appendChild(temp_form);
        //提交数据
        temp_form.submit();
    }
}

$(document).ready(function () {

    var oTable = $('#example').dataTable({
        "bLengthChange": false, //改变每页显示数据数量
        "bFilter": false, //过滤功能
        "bSort": false, //排序功能
        "bServerSide": true,
        "sAjaxSource": "AjaxHandler",
        "bProcessing": false,
        "aoColumns": [
                        {
                            "sName": "Order no",
                            "bSearchable": false,
                            "bSortable": false

                        },
                        { "sName": "Amount" },
                        { "sName": "Order_date" },
                        { "sName": "Items" },
                        { "sName": "Order_status" },
                        { "sName": "Action" }
        ],
        "aoColumnDefs": [

                    {
                        "aTargets": [5], "mRender": function (data, type, full) {

                            var data = data.split("|");

                            if (data[0] == 'canceled' || data[0] == 'holded' || data[0] == 'under_review' || data[0] == 'pending' || data[0] == 'approve_order') {
                                return '<a data-toggle=\"modal\" href=\"#ModalCancel\">Cancel</a>';
                                //return '<span style=\"font-size:14px;color: red\" ><a href="">回到最顶端</a></span>';
                            } else if (data[0] == 'packaging' || data[0] == 'shipped' || data[0] == 'delivered') {
                                return '<a data-toggle=\"modal\" href=\"#ModalReturn\">Return</a>';
                            }
                            else if (data[0] == 'complete') {
                                return '<a data-toggle=\"modal\" href=\"' + data[1] + '\">Invoice</a>';
                            }
                            else {
                                return '<a data-toggle=\"modal\" href=\"#\"></a>';
                            }
                        }
                    }

        ]
    });
});


//app.partial.ini_2Level_selectNew = function () {

//    var j_com_select_areaNew = $(".com_2Level_select_areaNew");
//    j_com_select_areaNew.each(function () {
//        var twoLevel_select = $(this);
//        var data_url = $(this).attr("data-search-url");
//        var myDate = new Date();
//        console.log(myDate.toLocaleTimeString() + " " + myDate.getMilliseconds());
//        $.ajax({
//            url: data_url,
//            dataType: "json",
//            type: "GET",
//            success: function success(data) {
//                var myDate = new Date();
//                console.log(myDate.toLocaleTimeString() + " " + myDate.getMilliseconds());
//                do_iniNew(data, twoLevel_select);
//            },
//            error: function error(err, status) {
//                console.log(err, status);
//            }
//        });
//    });

//    function do_iniNew(pData, ptwoLevel_select_area) {

//        var data = pData;
//        var first_level = [];

//        var first_area = ptwoLevel_select_area.find(".com_select_wrap").eq(0).find(".li_wrap");
//        var default_first_select_text = first_area.attr("data-defaultText");
//        var second_area = ptwoLevel_select_area.find(".com_select_wrap").eq(1).find(".li_wrap");
//        var default_second_select_text = second_area.attr("data-defaultText");

//        var first_html = "";
//        first_html += '<li data-val="" class="default_text selected">' + default_first_select_text + '</li>';
//        for (var j = 0; j < data.length; j++) {
//            first_html += '<li data-val="' + data[j].Region + '">' + data[j].RegionName + '</li>';
//        }

//        first_area.html(first_html).promise().done(function () {

//            var first_select = ptwoLevel_select_area.find(".com_select_wrap").eq(0).find(".com_select");

//            app.partial.do_select(first_select);

//            first_select.find("li").each(function () {
//                $(this).on("click", function () {

//                    var value = $(this).attr("data-val");

//                    if (value != "") {

//                        for (var m = 0; m < data.length; m++) {

//                            if (data[m].Region == value) {

//                                var html = "";
//                                html += '<li data-val="" class="default_text selected">' + default_second_select_text + '</li>';
//                                for (var n = 0; n < data[m].items.length; n++) {
//                                    html += '<li data-val="' + data[m].itemsId[n] + '">' + data[m].items[n] + '</li>';
//                                }

//                                second_area.html(html).promise().done(function () {
//                                    var second_select = ptwoLevel_select_area.find(".com_select_wrap").eq(1).find(".com_select");
//                                    app.partial.do_select(second_select);
//                                });
//                            }
//                        }
//                    } else if (value == "") {

//                        second_area.html('<li data-val="" class="default_text selected">' + default_second_select_text + '</li>').promise().done(function () {
//                            var second_select = ptwoLevel_select_area.find(".com_select_wrap").eq(1).find(".com_select");
//                            app.partial.do_select(second_select);
//                            second_select.each(function () {
//                                $(this).find("li").eq(0).trigger("click");
//                            });
//                        });
//                    }
//                });
//            });

//            if (first_select.find("li").length == 2) {
//                first_select.find("li").eq(1).trigger("click");
//            } else {
//                first_select.find("li").eq(0).trigger("click");
//            }
//        });
//    }
//}

var final_files_array = [];


'use strict';
app.partial.file_upload = function () {

    var input = document.querySelector("#upload_file_input");
    if (input) {
        input.addEventListener("change", handleFiles, false);
    }


    //final files need to be uploaded
    
    function handleFiles() {

        var $file = $("#upload_file_input");
        var fileObj = $file[0];
        var windowURL = window.URL || window.webkitURL;
        var dataURL;
        if (fileObj && fileObj.files && fileObj.files[0]) {
            dataURL = windowURL.createObjectURL(fileObj.files[0]);
        } else {
            dataURL = $file.val();
        }

        var url = $("#upload_file_input").val();

        var fileList = this.files;

        var show_fileNum = this.getAttribute("data-fileNum");

        var show_fileType = this.getAttribute("data-type");

        var uploaded_file_area = $(this).parents(".form_item_wrap").find('.uploaded_file_area');

        var file_box_html = '<div class="file_box"><a href="javascript" class="btn_file_delete"></a><div class="file_img"></div><div class="file_name" ></div><input class="file_url" name="FilePath" style="display:none !important"></input><input class="FileData" name="FileData" type="hidden" style="display:none !important"></input><input class="FileName" name="FileName" style="display:none !important"></input><input class="FileSize" name="FileSize" style="display:none !important"></input></div>';

        var file_boxs_html = "";

        var doc_html = '<span class="icon-doc"><span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span><span class="path7"></span><span class="path8"></span><span class="path9"></span><span class="path10"></span><span class="path11"></span><span class="path12"></span></span>';

        //var pdf_html = '<span class="icon-pdf"><span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span><span class="path7"></span><span class="path8"></span><span class="path9"></span><span class="path10"></span><span class="path11"></span><span class="path12"></span><span class="path13"></span><span class="path14"></span><span class="path15"></span></span>';
        var pdf_html = '<span class="icon-pdf_easyiconnet"></span>';
        var file_boxs = uploaded_file_area.find(".file_box");
        var file_box_num = file_boxs.length;
        var error_area = $(this).parents(".form_item_wrap").find(".form_item_text_warn");
        var j_not_null = error_area.find(".not_null");
        var j_upload_failed = error_area.find(".upload_failed");
        var j_format_err = error_area.find(".format_err");

        if (file_boxs && file_box_num < 5) {
            var append_file_box = function append_file_box() {

                var def = $.Deferred();
                var add_num;

                if (show_fileType != null && show_fileType != "") {
                  
                    if (fileList[0].name.match(/(pdf)/i)) {

                            if (fileList.length > 5 - file_box_num) {
                                add_num = 5 - file_box_num;
                            } else if (fileList.length <= 5 - file_box_num) {
                                add_num = fileList.length;
                            }

                            for (var i = 0; i < add_num; i++) {
                                file_boxs_html += file_box_html;
                                final_files_array.push(fileList[i]);
                            }

                            error_area.find("div").addClass('hide');
                            j_not_null.removeClass('hide');
                            error_area.hide();

                            uploaded_file_area.append(file_boxs_html);
                        } else {
                            error_area.find("div").addClass('hide');
                            j_format_err.removeClass('hide');
                            error_area.css({
                                "display": "inline-block"
                            });
                        }
                  
                }
                else {
                    
                    if (/\.(docx?|pdf|jpe?g|png|gif)$/i.test(fileList[0].name)) {

                        if (fileList.length > 5 - file_box_num) {
                            add_num = 5 - file_box_num;
                        } else if (fileList.length <= 5 - file_box_num) {
                            add_num = fileList.length;
                        }

                        for (var i = 0; i < add_num; i++) {
                            file_boxs_html += file_box_html;
                            final_files_array.push(fileList[i]);
                        }

                        error_area.find("div").addClass('hide');
                        j_not_null.removeClass('hide');
                        error_area.hide();

                        uploaded_file_area.append(file_boxs_html);
                    } else {
                        error_area.find("div").addClass('hide');
                        j_format_err.removeClass('hide');
                        error_area.css({
                            "display": "inline-block"
                        });
                    }

                }
                   

                

                def.resolve();
                return def.promise();
            };

            append_file_box().done(function () {

                var file_size_total = 0;

                for (var j = 0; j < final_files_array.length; j++) {
                    file_size_total += final_files_array[j].size;
                }

                var _loop = function _loop(i) {
                    file_name = fileList[i].name;
                    file_size = fileList[i].size;
                    file_type = fileList[i].type;
                    box = uploaded_file_area.find(".file_box").eq(file_box_num + i);
                    bg_img = "";
                    img_html = "";


                    if (box && fileList[i]) {

                        show_fileNum = show_fileNum / 1 + 1;
                        box.find(".file_name").html(file_name);
                        box.find(".FileName").val(file_name);
                        box.find(".file_url").val(url);
                        if (/\.(jpe?g|png|gif)$/i.test(fileList[i].name)) {
                            // console.log("img");
                            reader = new FileReader();

                            reader.addEventListener("load", function () {
                                var img_url = reader.result;
                                //box.find(".FileData").val(img_url);
                                box.find(".FileData").get(0).setAttribute("value", img_url);
                                box.find(".file_img").get(0).setAttribute("style", "background-image: url('" + img_url + "')");
                                box.find(".FileSize").get(0).setAttribute("value", file_size);
                            }, false);
                            reader.readAsDataURL(fileList[i]);
                        } else if (/\.(docx?)$/i.test(fileList[i].name)) {
                            // console.log("doc");

                            reader = new FileReader();
                            reader.addEventListener("load", function () {
                                var doc = reader.result;
                                //box.find(".FileData").val(doc);
                                box.find(".FileData").get(0).setAttribute("value", doc);
                                box.find(".FileSize").get(0).setAttribute("value", file_size);
                            }, false);
                            reader.readAsDataURL(fileList[i]);

                            bg_img = "";
                            img_html = doc_html;
                            box.find(".file_img").html(img_html);
                        } else if (/\.(pdf)$/i.test(fileList[i].name)) {
                            // console.log("pdf");


                            reader = new FileReader();
                            reader.addEventListener("load", function () {
                                var pdf = reader.result;
                                //box.find(".FileData").val(pdf);
                                box.find(".FileData").get(0).setAttribute("value", pdf);

                                box.find(".FileSize").get(0).setAttribute("value", file_size);
                            }, false);
                            reader.readAsDataURL(fileList[i]);

                            bg_img = "";
                            img_html = pdf_html;
                            box.find(".file_img").html(img_html);
                        }

                        box.find(".btn_file_delete").on("click", function (e) {
                            e.stopPropagation();
                            e.preventDefault();
                            box.remove();
                            final_files_array.splice(final_files_array.indexOf(fileList[i]), 1);
                            show_fileNum = show_fileNum / 1 - 1;
                            if (final_files_array.length == 0) {
                                $(input).val("");
                                error_area.find("div").addClass('hide');
                                j_not_null.removeClass('hide');
                                error_area.css({
                                    "display": "inline-block"
                                });
                            }
                        });
                    }
                };

                for (var i = 0; i < fileList.length; i++) {
                    var file_name;
                    var file_size;
                    var file_type;
                    var box;
                    var bg_img, img_html;
                    var reader;

                    _loop(i);
                }
            });
        }
    }
}

//app.partial.loadinfo = function () {

//    var com_2Level_select_areaCountry = $(".com_2Level_select_areaCountry");
//    com_2Level_select_areaCountry.each(function () {
//        var twoLevel_select = $(this);
//        var data_url = $(this).attr("data-search-url");
//        var Mcountry = $("#hiddenMcountry").val();
//        var StateProvince = $("#hiddenStateProvince").val();
//        var Mcity = $("#hiddenMcity").val();
//        $.ajax({
//            url: data_url,
//            dataType: "json",
//            type: "GET",
//            success: function success(data) {

//                var first_area = $("#CountrySetting").find(".li_wrap");
//                var default_first_select_text = first_area.attr("data-defaultText");

//                var first_html = "";
//                first_html += '<li data-val="" class="default_text selected">' + default_first_select_text + '</li>';
//                for (var j = 0; j < data.length; j++) {
//                    first_html += '<li data-val="' + data[j].CountryID + '">' + data[j].DisplayName + '</li>';
//                }

//                first_area.html(first_html).promise().done(function () {
//                    var first_area = $("#CountrySetting");
//                    do_select(first_area);


//                    first_area.find("li").each(function () {
//                        $(this).on("click", function () {
//                            var value = $(this).attr("data-val");
//                            if (value != "") {

//                                for (var m = 0; m < data.length; m++) {
//                                    if (data[m].CountryID == value) {

//                                        var cityID = data[m].CityID;
//                                        var cityDisplayName = data[m].CityDisplayName;
//                                        if (cityID.length > 0 && cityID[0] != "") {

//                                            $("#inputCity").addClass("hide");
//                                            $("#selectCity").removeClass("hide");
//                                            $("#inpCityTown").val("");

//                                            var second_area = $("#CitySetting").find(".li_wrap");
//                                            var default_second_select_text = second_area.attr("data-defaultText");

//                                            var html = "";
//                                            html += '<li data-val="" class="default_text selected">' + default_second_select_text + '</li>';
//                                            for (var j = 0; j < cityID.length; j++) {
//                                                html += '<li data-val="' + cityID[j] + '">' + cityDisplayName[j] + '</li>';
//                                            }
//                                            second_area.html(html).promise().done(function () {
//                                                var second_area = $("#CitySetting");
//                                                do_select(second_area);

//                                            });



//                                        }
//                                        else {
//                                            $("#inputCity").removeClass("hide");

//                                            $("#selectCity").addClass("hide");
//                                            $("#selCityTown").val("");
//                                        }

//                                        var stateProvinceID = data[m].StateProvinceID;
//                                        var stateProvinceDisplayName = data[m].StateProvinceDisplayName;
//                                        if (stateProvinceID.length > 0 && stateProvinceID[0] != "") {
//                                            $("#selectState").removeClass("hide");


//                                            var second_area = $("#StateSetting").find(".li_wrap");
//                                            var default_second_text = second_area.attr("data-defaultText");

//                                            var html = "";
//                                            html += '<li data-val="" class="default_text selected">' + default_second_text + '</li>';
//                                            for (var j = 0; j < stateProvinceID.length; j++) {
//                                                html += '<li data-val="' + stateProvinceID[j] + '">' + stateProvinceDisplayName[j] + '</li>';
//                                            }
//                                            second_area.html(html).promise().done(function () {
//                                                var second_area = $("#StateSetting");
//                                                do_select(second_area);

//                                            });
//                                        }
//                                        else {
//                                            $("#selectState").addClass("hide");
//                                            $("#StateProvince").val("");
//                                        }
//                                    }
//                                }
//                            }
//                        });
//                    });
//                });
//                var first_area = $("#CountrySetting");
//                var li_wrap = first_area.find(".li_wrap");
//                var liCountry = li_wrap.find("li");
//                var cnt = 1;
//                for (var i = 0; i < liCountry.length; i++) {
//                    if (liCountry.eq(i).attr("data-val") == Mcountry) {
//                        cnt = i;
//                    }
//                }
//                liCountry.eq(cnt).trigger("click");

//                var second_area = $("#StateSetting");
//                var li_wrap = second_area.find(".li_wrap");
//                var liState = li_wrap.find("li");
//                var cnt = 0;
//                for (var i = 0; i < liState.length; i++) {
//                    if (liState.eq(i).attr("data-val").trim() == StateProvince) {
//                        cnt = i;
//                    }
//                }
//                liState.eq(cnt).trigger("click");

//                var second_area = $("#CitySetting");
//                var li_wrap = second_area.find(".li_wrap");
//                var liCity = li_wrap.find("li");
//                var cnt = 0;
//                for (var i = 0; i < liCity.length; i++) {
//                    if (liCity.eq(i).attr("data-val").trim() == Mcity) {
//                        cnt = i;
//                    }
//                }
//                liCity.eq(cnt).trigger("click");

//                if (!$("#inputCity").hasClass("hide")) {
//                    $("#inpCityTown").val(Mcity);
//                }

//            },
//            error: function error(err, status) {
//                console.log(err, status);
//            }
//        });
//    });
//}

function do_select(pTab_wrap) {
    if (pTab_wrap) {
        var wrap = pTab_wrap;
        wrap.each(function () {
            var cover = $(this).find(".tab_cover");
            var ul = $(this).find("ul");
            var input = $(this).find("input:not(.extra_info)");
            var url_input = $(this).find("input[data-infotype='url']");
            var li_wrap = $(this).find(".li_wrap");
            var li = li_wrap.find("li");
            var cover_bg_class;
            var other_wrap = $(".com_select").not($(this));
            cover.off("click").on("click", function () {
                ul.addClass("open");
                cover.hide();
                if (li_wrap.find("li").length > 6) {
                    li_wrap.slimScroll({
                        height: "308px",
                        alwaysVisible: true,
                        size: '5px',
                        touchScrollStep: 10
                    });
                }
                other_wrap.each(function () {
                    if ($(this).find("ul").hasClass("open")) {
                        $(this).find("li.selected").trigger("click");
                    }
                });
            });
            ul.find("li").each(function () {
                $(this).off("click").on("click", function () {
                    ul.find("li").removeClass("selected");
                    var text = $(this).text();
                    if ($(this).attr("data-val").trim() == "") {
                        cover_bg_class = "bg_g";
                    } else {
                        cover_bg_class = "bg_w";
                    }
                    $(this).addClass("selected");
                    input.val($(this).attr("data-val").trim());
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
                    cover.removeClass("bg_w").removeClass("bg_g").addClass(cover_bg_class).html(text).show();
                });
            });
            if (li.length == 2) {
                li.eq(1).trigger("click");
            } else {
                li.eq(0).trigger("click");
            }
        });
    }
}

$(document).scroll(function (event) {
    if ($('cookies-tip').css('display') != 'none' && $(document).scrollTop() > 90) {
        $('nav.top-bar').addClass('gostick');
        $('body').addClass('gostick-body');
    } else if ($('cookies-tip').css('display') != 'none' && $(document).scrollTop() > 1) {
        $('nav.top-bar').addClass('gostick');
        $('body').addClass('gostick-body');
    } else {
        $('nav.top-bar').removeClass('gostick');
        $('body').removeClass('gostick-body');
    }
    proMenuCheck()
});

function proMenuCheck() {
    if ($('section.menu-esport').hasClass('pro-inside')) {
        inesport = 1;
    }
}

function do_selectNew(pTab_wrap) {

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
                } else { }
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

                    input.val($(this).attr("data-val").trim());


                    if ($(this).attr("data-val").trim() == "Taiwan") {
                        $("#Taiwan").removeClass("hide");
                        $("#Europe").addClass("hide");
                    }
                    else {
                        $("#Taiwan").addClass("hide");
                        $("#Europe").removeClass("hide");
                    }


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

            li.eq(1).trigger("click");


        });
    }
}

app.partial.ini_only_country_select = function () {

    var j_com_select_wrap = $(".com_select_wrap");

    j_com_select_wrap.each(function () {

        if ($(this).attr("data-selectType") && $(this).attr("data-selectType").match(/(country)/i)) {

            var select_wrap = $(this);
            var data_url = $(this).attr("data-sourceUrl");
            if (data_url == "" || data_url == undefined || data_url.match(/\s+/)) {
                do_selectNew(select_wrap.find(".com_select"));
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

//js获取url参数值
function getQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]); return "";
}

