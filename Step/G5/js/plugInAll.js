!function(t){"use strict";"function"==typeof define&&define.amd?define(["jquery"],t):"undefined"!=typeof exports?module.exports=t(require("jquery")):t(jQuery)}(function(t){"use strict";var e=window.Slick||{};e=function(){function e(e,n){var s,o=this;o.defaults={accessibility:!0,adaptiveHeight:!1,appendArrows:t(e),appendDots:t(e),arrows:!0,asNavFor:null,prevArrow:'<button type="button" data-role="none" class="slick-prev" aria-label="Previous" tabindex="0" role="button">Previous</button>',nextArrow:'<button type="button" data-role="none" class="slick-next" aria-label="Next" tabindex="0" role="button">Next</button>',autoplay:!1,autoplaySpeed:3e3,centerMode:!1,centerPadding:"50px",cssEase:"ease",customPaging:function(e,i){return t('<button type="button" data-role="none" role="button" tabindex="0" />').text(i+1)},dots:!1,dotsClass:"slick-dots",draggable:!0,easing:"linear",edgeFriction:.35,fade:!1,focusOnSelect:!1,infinite:!0,initialSlide:0,lazyLoad:"ondemand",mobileFirst:!1,pauseOnHover:!0,pauseOnFocus:!0,pauseOnDotsHover:!1,respondTo:"window",responsive:null,rows:1,rtl:!1,slide:"",slidesPerRow:1,slidesToShow:1,slidesToScroll:1,speed:500,swipe:!0,swipeToSlide:!1,touchMove:!0,touchThreshold:5,useCSS:!0,useTransform:!0,variableWidth:!1,vertical:!1,verticalSwiping:!1,waitForAnimate:!0,zIndex:1e3},o.initials={animating:!1,dragging:!1,autoPlayTimer:null,currentDirection:0,currentLeft:null,currentSlide:0,direction:1,$dots:null,listWidth:null,listHeight:null,loadIndex:0,$nextArrow:null,$prevArrow:null,slideCount:null,slideWidth:null,$slideTrack:null,$slides:null,sliding:!1,slideOffset:0,swipeLeft:null,$list:null,touchObject:{},transformsEnabled:!1,unslicked:!1},t.extend(o,o.initials),o.activeBreakpoint=null,o.animType=null,o.animProp=null,o.breakpoints=[],o.breakpointSettings=[],o.cssTransitions=!1,o.focussed=!1,o.interrupted=!1,o.hidden="hidden",o.paused=!0,o.positionProp=null,o.respondTo=null,o.rowCount=1,o.shouldClick=!0,o.$slider=t(e),o.$slidesCache=null,o.transformType=null,o.transitionType=null,o.visibilityChange="visibilitychange",o.windowWidth=0,o.windowTimer=null,s=t(e).data("slick")||{},o.options=t.extend({},o.defaults,n,s),o.currentSlide=o.options.initialSlide,o.originalSettings=o.options,void 0!==document.mozHidden?(o.hidden="mozHidden",o.visibilityChange="mozvisibilitychange"):void 0!==document.webkitHidden&&(o.hidden="webkitHidden",o.visibilityChange="webkitvisibilitychange"),o.autoPlay=t.proxy(o.autoPlay,o),o.autoPlayClear=t.proxy(o.autoPlayClear,o),o.autoPlayIterator=t.proxy(o.autoPlayIterator,o),o.changeSlide=t.proxy(o.changeSlide,o),o.clickHandler=t.proxy(o.clickHandler,o),o.selectHandler=t.proxy(o.selectHandler,o),o.setPosition=t.proxy(o.setPosition,o),o.swipeHandler=t.proxy(o.swipeHandler,o),o.dragHandler=t.proxy(o.dragHandler,o),o.keyHandler=t.proxy(o.keyHandler,o),o.instanceUid=i++,o.htmlExpr=/^(?:\s*(<[\w\W]+>)[^>]*)$/,o.registerBreakpoints(),o.init(!0)}var i=0;return e}(),e.prototype.activateADA=function(){this.$slideTrack.find(".slick-active").attr({"aria-hidden":"false"}).find("a, input, button, select").attr({tabindex:"0"})},e.prototype.addSlide=e.prototype.slickAdd=function(e,i,n){var s=this;if("boolean"==typeof i)n=i,i=null;else if(i<0||i>=s.slideCount)return!1;s.unload(),"number"==typeof i?0===i&&0===s.$slides.length?t(e).appendTo(s.$slideTrack):n?t(e).insertBefore(s.$slides.eq(i)):t(e).insertAfter(s.$slides.eq(i)):!0===n?t(e).prependTo(s.$slideTrack):t(e).appendTo(s.$slideTrack),s.$slides=s.$slideTrack.children(this.options.slide),s.$slideTrack.children(this.options.slide).detach(),s.$slideTrack.append(s.$slides),s.$slides.each(function(e,i){t(i).attr("data-slick-index",e)}),s.$slidesCache=s.$slides,s.reinit()},e.prototype.animateHeight=function(){var t=this;if(1===t.options.slidesToShow&&!0===t.options.adaptiveHeight&&!1===t.options.vertical){var e=t.$slides.eq(t.currentSlide).outerHeight(!0);t.$list.animate({height:e},t.options.speed)}},e.prototype.animateSlide=function(e,i){var n={},s=this;s.animateHeight(),!0===s.options.rtl&&!1===s.options.vertical&&(e=-e),!1===s.transformsEnabled?!1===s.options.vertical?s.$slideTrack.animate({left:e},s.options.speed,s.options.easing,i):s.$slideTrack.animate({top:e},s.options.speed,s.options.easing,i):!1===s.cssTransitions?(!0===s.options.rtl&&(s.currentLeft=-s.currentLeft),t({animStart:s.currentLeft}).animate({animStart:e},{duration:s.options.speed,easing:s.options.easing,step:function(t){t=Math.ceil(t),!1===s.options.vertical?(n[s.animType]="translate("+t+"px, 0px)",s.$slideTrack.css(n)):(n[s.animType]="translate(0px,"+t+"px)",s.$slideTrack.css(n))},complete:function(){i&&i.call()}})):(s.applyTransition(),e=Math.ceil(e),!1===s.options.vertical?n[s.animType]="translate3d("+e+"px, 0px, 0px)":n[s.animType]="translate3d(0px,"+e+"px, 0px)",s.$slideTrack.css(n),i&&setTimeout(function(){s.disableTransition(),i.call()},s.options.speed))},e.prototype.getNavTarget=function(){var e=this,i=e.options.asNavFor;return i&&null!==i&&(i=t(i).not(e.$slider)),i},e.prototype.asNavFor=function(e){var i=this,n=i.getNavTarget();null!==n&&"object"==typeof n&&n.each(function(){var i=t(this).slick("getSlick");i.unslicked||i.slideHandler(e,!0)})},e.prototype.applyTransition=function(t){var e=this,i={};!1===e.options.fade?i[e.transitionType]=e.transformType+" "+e.options.speed+"ms "+e.options.cssEase:i[e.transitionType]="opacity "+e.options.speed+"ms "+e.options.cssEase,!1===e.options.fade?e.$slideTrack.css(i):e.$slides.eq(t).css(i)},e.prototype.autoPlay=function(){var t=this;t.autoPlayClear(),t.slideCount>t.options.slidesToShow&&(t.autoPlayTimer=setInterval(t.autoPlayIterator,t.options.autoplaySpeed))},e.prototype.autoPlayClear=function(){var t=this;t.autoPlayTimer&&clearInterval(t.autoPlayTimer)},e.prototype.autoPlayIterator=function(){var t=this,e=t.currentSlide+t.options.slidesToScroll;t.paused||t.interrupted||t.focussed||(!1===t.options.infinite&&(1===t.direction&&t.currentSlide+1===t.slideCount-1?t.direction=0:0===t.direction&&(e=t.currentSlide-t.options.slidesToScroll,t.currentSlide-1==0&&(t.direction=1))),t.slideHandler(e))},e.prototype.buildArrows=function(){var e=this;!0===e.options.arrows&&(e.$prevArrow=t(e.options.prevArrow).addClass("slick-arrow"),e.$nextArrow=t(e.options.nextArrow).addClass("slick-arrow"),e.slideCount>e.options.slidesToShow?(e.$prevArrow.removeClass("slick-hidden").removeAttr("aria-hidden tabindex"),e.$nextArrow.removeClass("slick-hidden").removeAttr("aria-hidden tabindex"),e.htmlExpr.test(e.options.prevArrow)&&e.$prevArrow.prependTo(e.options.appendArrows),e.htmlExpr.test(e.options.nextArrow)&&e.$nextArrow.appendTo(e.options.appendArrows),!0!==e.options.infinite&&e.$prevArrow.addClass("slick-disabled").attr("aria-disabled","true")):e.$prevArrow.add(e.$nextArrow).addClass("slick-hidden").attr({"aria-disabled":"true",tabindex:"-1"}))},e.prototype.buildDots=function(){var e,i,n=this;if(!0===n.options.dots&&n.slideCount>n.options.slidesToShow){for(n.$slider.addClass("slick-dotted"),i=t("<ul />").addClass(n.options.dotsClass),e=0;e<=n.getDotCount();e+=1)i.append(t("<li />").append(n.options.customPaging.call(this,n,e)));n.$dots=i.appendTo(n.options.appendDots),n.$dots.find("li").first().addClass("slick-active").attr("aria-hidden","false")}},e.prototype.buildOut=function(){var e=this;e.$slides=e.$slider.children(e.options.slide+":not(.slick-cloned)").addClass("slick-slide"),e.slideCount=e.$slides.length,e.$slides.each(function(e,i){t(i).attr("data-slick-index",e).data("originalStyling",t(i).attr("style")||"")}),e.$slider.addClass("slick-slider"),e.$slideTrack=0===e.slideCount?t('<div class="slick-track"/>').appendTo(e.$slider):e.$slides.wrapAll('<div class="slick-track"/>').parent(),e.$list=e.$slideTrack.wrap('<div aria-live="polite" class="slick-list"/>').parent(),e.$slideTrack.css("opacity",0),!0!==e.options.centerMode&&!0!==e.options.swipeToSlide||(e.options.slidesToScroll=1),t("img[data-lazy]",e.$slider).not("[src]").addClass("slick-loading"),e.setupInfinite(),e.buildArrows(),e.buildDots(),e.updateDots(),e.setSlideClasses("number"==typeof e.currentSlide?e.currentSlide:0),!0===e.options.draggable&&e.$list.addClass("draggable")},e.prototype.buildRows=function(){var t,e,i,n,s,o,r,a=this;if(n=document.createDocumentFragment(),o=a.$slider.children(),a.options.rows>1){for(r=a.options.slidesPerRow*a.options.rows,s=Math.ceil(o.length/r),t=0;t<s;t++){var l=document.createElement("div");for(e=0;e<a.options.rows;e++){var c=document.createElement("div");for(i=0;i<a.options.slidesPerRow;i++){var d=t*r+(e*a.options.slidesPerRow+i);o.get(d)&&c.appendChild(o.get(d))}l.appendChild(c)}n.appendChild(l)}a.$slider.empty().append(n),a.$slider.children().children().children().css({width:100/a.options.slidesPerRow+"%",display:"inline-block"})}},e.prototype.checkResponsive=function(e,i){var n,s,o,r=this,a=!1,l=r.$slider.width(),c=window.innerWidth||t(window).width();if("window"===r.respondTo?o=c:"slider"===r.respondTo?o=l:"min"===r.respondTo&&(o=Math.min(c,l)),r.options.responsive&&r.options.responsive.length&&null!==r.options.responsive){s=null;for(n in r.breakpoints)r.breakpoints.hasOwnProperty(n)&&(!1===r.originalSettings.mobileFirst?o<r.breakpoints[n]&&(s=r.breakpoints[n]):o>r.breakpoints[n]&&(s=r.breakpoints[n]));null!==s?null!==r.activeBreakpoint?(s!==r.activeBreakpoint||i)&&(r.activeBreakpoint=s,"unslick"===r.breakpointSettings[s]?r.unslick(s):(r.options=t.extend({},r.originalSettings,r.breakpointSettings[s]),!0===e&&(r.currentSlide=r.options.initialSlide),r.refresh(e)),a=s):(r.activeBreakpoint=s,"unslick"===r.breakpointSettings[s]?r.unslick(s):(r.options=t.extend({},r.originalSettings,r.breakpointSettings[s]),!0===e&&(r.currentSlide=r.options.initialSlide),r.refresh(e)),a=s):null!==r.activeBreakpoint&&(r.activeBreakpoint=null,r.options=r.originalSettings,!0===e&&(r.currentSlide=r.options.initialSlide),r.refresh(e),a=s),e||!1===a||r.$slider.trigger("breakpoint",[r,a])}},e.prototype.changeSlide=function(e,i){var n,s,o,r=this,a=t(e.currentTarget);switch(a.is("a")&&e.preventDefault(),a.is("li")||(a=a.closest("li")),o=r.slideCount%r.options.slidesToScroll!=0,n=o?0:(r.slideCount-r.currentSlide)%r.options.slidesToScroll,e.data.message){case"previous":s=0===n?r.options.slidesToScroll:r.options.slidesToShow-n,r.slideCount>r.options.slidesToShow&&r.slideHandler(r.currentSlide-s,!1,i);break;case"next":s=0===n?r.options.slidesToScroll:n,r.slideCount>r.options.slidesToShow&&r.slideHandler(r.currentSlide+s,!1,i);break;case"index":var l=0===e.data.index?0:e.data.index||a.index()*r.options.slidesToScroll;r.slideHandler(r.checkNavigable(l),!1,i),a.children().trigger("focus");break;default:return}},e.prototype.checkNavigable=function(t){var e,i,n=this;if(e=n.getNavigableIndexes(),i=0,t>e[e.length-1])t=e[e.length-1];else for(var s in e){if(t<e[s]){t=i;break}i=e[s]}return t},e.prototype.cleanUpEvents=function(){var e=this;e.options.dots&&null!==e.$dots&&t("li",e.$dots).off("click.slick",e.changeSlide).off("mouseenter.slick",t.proxy(e.interrupt,e,!0)).off("mouseleave.slick",t.proxy(e.interrupt,e,!1)),e.$slider.off("focus.slick blur.slick"),!0===e.options.arrows&&e.slideCount>e.options.slidesToShow&&(e.$prevArrow&&e.$prevArrow.off("click.slick",e.changeSlide),e.$nextArrow&&e.$nextArrow.off("click.slick",e.changeSlide)),e.$list.off("touchstart.slick mousedown.slick",e.swipeHandler),e.$list.off("touchmove.slick mousemove.slick",e.swipeHandler),e.$list.off("touchend.slick mouseup.slick",e.swipeHandler),e.$list.off("touchcancel.slick mouseleave.slick",e.swipeHandler),e.$list.off("click.slick",e.clickHandler),t(document).off(e.visibilityChange,e.visibility),e.cleanUpSlideEvents(),!0===e.options.accessibility&&e.$list.off("keydown.slick",e.keyHandler),!0===e.options.focusOnSelect&&t(e.$slideTrack).children().off("click.slick",e.selectHandler),t(window).off("orientationchange.slick.slick-"+e.instanceUid,e.orientationChange),t(window).off("resize.slick.slick-"+e.instanceUid,e.resize),t("[draggable!=true]",e.$slideTrack).off("dragstart",e.preventDefault),t(window).off("load.slick.slick-"+e.instanceUid,e.setPosition),t(document).off("ready.slick.slick-"+e.instanceUid,e.setPosition)},e.prototype.cleanUpSlideEvents=function(){var e=this;e.$list.off("mouseenter.slick",t.proxy(e.interrupt,e,!0)),e.$list.off("mouseleave.slick",t.proxy(e.interrupt,e,!1))},e.prototype.cleanUpRows=function(){var t,e=this;e.options.rows>1&&(t=e.$slides.children().children(),t.removeAttr("style"),e.$slider.empty().append(t))},e.prototype.clickHandler=function(t){!1===this.shouldClick&&(t.stopImmediatePropagation(),t.stopPropagation(),t.preventDefault())},e.prototype.destroy=function(e){var i=this;i.autoPlayClear(),i.touchObject={},i.cleanUpEvents(),t(".slick-cloned",i.$slider).detach(),i.$dots&&i.$dots.remove(),i.$prevArrow&&i.$prevArrow.length&&(i.$prevArrow.removeClass("slick-disabled slick-arrow slick-hidden").removeAttr("aria-hidden aria-disabled tabindex").css("display",""),i.htmlExpr.test(i.options.prevArrow)&&i.$prevArrow.remove()),i.$nextArrow&&i.$nextArrow.length&&(i.$nextArrow.removeClass("slick-disabled slick-arrow slick-hidden").removeAttr("aria-hidden aria-disabled tabindex").css("display",""),i.htmlExpr.test(i.options.nextArrow)&&i.$nextArrow.remove()),i.$slides&&(i.$slides.removeClass("slick-slide slick-active slick-center slick-visible slick-current").removeAttr("aria-hidden").removeAttr("data-slick-index").each(function(){t(this).attr("style",t(this).data("originalStyling"))}),i.$slideTrack.children(this.options.slide).detach(),i.$slideTrack.detach(),i.$list.detach(),i.$slider.append(i.$slides)),i.cleanUpRows(),i.$slider.removeClass("slick-slider"),i.$slider.removeClass("slick-initialized"),i.$slider.removeClass("slick-dotted"),i.unslicked=!0,e||i.$slider.trigger("destroy",[i])},e.prototype.disableTransition=function(t){var e=this,i={};i[e.transitionType]="",!1===e.options.fade?e.$slideTrack.css(i):e.$slides.eq(t).css(i)},e.prototype.fadeSlide=function(t,e){var i=this;!1===i.cssTransitions?(i.$slides.eq(t).css({zIndex:i.options.zIndex}),i.$slides.eq(t).animate({opacity:1},i.options.speed,i.options.easing,e)):(i.applyTransition(t),i.$slides.eq(t).css({opacity:1,zIndex:i.options.zIndex}),e&&setTimeout(function(){i.disableTransition(t),e.call()},i.options.speed))},e.prototype.fadeSlideOut=function(t){var e=this;!1===e.cssTransitions?e.$slides.eq(t).animate({opacity:0,zIndex:e.options.zIndex-2},e.options.speed,e.options.easing):(e.applyTransition(t),e.$slides.eq(t).css({opacity:0,zIndex:e.options.zIndex-2}))},e.prototype.filterSlides=e.prototype.slickFilter=function(t){var e=this;null!==t&&(e.$slidesCache=e.$slides,e.unload(),e.$slideTrack.children(this.options.slide).detach(),e.$slidesCache.filter(t).appendTo(e.$slideTrack),e.reinit())},e.prototype.focusHandler=function(){var e=this;e.$slider.off("focus.slick blur.slick").on("focus.slick blur.slick","*:not(.slick-arrow)",function(i){i.stopImmediatePropagation();var n=t(this);setTimeout(function(){e.options.pauseOnFocus&&(e.focussed=n.is(":focus"),e.autoPlay())},0)})},e.prototype.getCurrent=e.prototype.slickCurrentSlide=function(){return this.currentSlide},e.prototype.getDotCount=function(){var t=this,e=0,i=0,n=0;if(!0===t.options.infinite)for(;e<t.slideCount;)++n,e=i+t.options.slidesToScroll,i+=t.options.slidesToScroll<=t.options.slidesToShow?t.options.slidesToScroll:t.options.slidesToShow;else if(!0===t.options.centerMode)n=t.slideCount;else if(t.options.asNavFor)for(;e<t.slideCount;)++n,e=i+t.options.slidesToScroll,i+=t.options.slidesToScroll<=t.options.slidesToShow?t.options.slidesToScroll:t.options.slidesToShow;else n=1+Math.ceil((t.slideCount-t.options.slidesToShow)/t.options.slidesToScroll);return n-1},e.prototype.getLeft=function(t){var e,i,n,s=this,o=0;return s.slideOffset=0,i=s.$slides.first().outerHeight(!0),!0===s.options.infinite?(s.slideCount>s.options.slidesToShow&&(s.slideOffset=s.slideWidth*s.options.slidesToShow*-1,o=i*s.options.slidesToShow*-1),s.slideCount%s.options.slidesToScroll!=0&&t+s.options.slidesToScroll>s.slideCount&&s.slideCount>s.options.slidesToShow&&(t>s.slideCount?(s.slideOffset=(s.options.slidesToShow-(t-s.slideCount))*s.slideWidth*-1,o=(s.options.slidesToShow-(t-s.slideCount))*i*-1):(s.slideOffset=s.slideCount%s.options.slidesToScroll*s.slideWidth*-1,o=s.slideCount%s.options.slidesToScroll*i*-1))):t+s.options.slidesToShow>s.slideCount&&(s.slideOffset=(t+s.options.slidesToShow-s.slideCount)*s.slideWidth,o=(t+s.options.slidesToShow-s.slideCount)*i),s.slideCount<=s.options.slidesToShow&&(s.slideOffset=0,o=0),!0===s.options.centerMode&&!0===s.options.infinite?s.slideOffset+=s.slideWidth*Math.floor(s.options.slidesToShow/2)-s.slideWidth:!0===s.options.centerMode&&(s.slideOffset=0,s.slideOffset+=s.slideWidth*Math.floor(s.options.slidesToShow/2)),e=!1===s.options.vertical?t*s.slideWidth*-1+s.slideOffset:t*i*-1+o,!0===s.options.variableWidth&&(n=s.slideCount<=s.options.slidesToShow||!1===s.options.infinite?s.$slideTrack.children(".slick-slide").eq(t):s.$slideTrack.children(".slick-slide").eq(t+s.options.slidesToShow),e=!0===s.options.rtl?n[0]?-1*(s.$slideTrack.width()-n[0].offsetLeft-n.width()):0:n[0]?-1*n[0].offsetLeft:0,!0===s.options.centerMode&&(n=s.slideCount<=s.options.slidesToShow||!1===s.options.infinite?s.$slideTrack.children(".slick-slide").eq(t):s.$slideTrack.children(".slick-slide").eq(t+s.options.slidesToShow+1),e=!0===s.options.rtl?n[0]?-1*(s.$slideTrack.width()-n[0].offsetLeft-n.width()):0:n[0]?-1*n[0].offsetLeft:0,e+=(s.$list.width()-n.outerWidth())/2)),e},e.prototype.getOption=e.prototype.slickGetOption=function(t){return this.options[t]},e.prototype.getNavigableIndexes=function(){var t,e=this,i=0,n=0,s=[];for(!1===e.options.infinite?t=e.slideCount:(i=-1*e.options.slidesToScroll,n=-1*e.options.slidesToScroll,t=2*e.slideCount);i<t;)s.push(i),i=n+e.options.slidesToScroll,n+=e.options.slidesToScroll<=e.options.slidesToShow?e.options.slidesToScroll:e.options.slidesToShow;return s},e.prototype.getSlick=function(){return this},e.prototype.getSlideCount=function(){var e,i,n=this;return i=!0===n.options.centerMode?n.slideWidth*Math.floor(n.options.slidesToShow/2):0,!0===n.options.swipeToSlide?(n.$slideTrack.find(".slick-slide").each(function(s,o){if(o.offsetLeft-i+t(o).outerWidth()/2>-1*n.swipeLeft)return e=o,!1}),Math.abs(t(e).attr("data-slick-index")-n.currentSlide)||1):n.options.slidesToScroll},e.prototype.goTo=e.prototype.slickGoTo=function(t,e){this.changeSlide({data:{message:"index",index:parseInt(t)}},e)},e.prototype.init=function(e){var i=this;t(i.$slider).hasClass("slick-initialized")||(t(i.$slider).addClass("slick-initialized"),i.buildRows(),i.buildOut(),i.setProps(),i.startLoad(),i.loadSlider(),i.initializeEvents(),i.updateArrows(),i.updateDots(),i.checkResponsive(!0),i.focusHandler()),e&&i.$slider.trigger("init",[i]),!0===i.options.accessibility&&i.initADA(),i.options.autoplay&&(i.paused=!1,i.autoPlay())},e.prototype.initADA=function(){var e=this;e.$slides.add(e.$slideTrack.find(".slick-cloned")).attr({"aria-hidden":"true",tabindex:"-1"}).find("a, input, button, select").attr({tabindex:"-1"}),e.$slideTrack.attr("role","listbox"),e.$slides.not(e.$slideTrack.find(".slick-cloned")).each(function(i){t(this).attr({role:"option","aria-describedby":"slick-slide"+e.instanceUid+i})}),null!==e.$dots&&e.$dots.attr("role","tablist").find("li").each(function(i){t(this).attr({role:"presentation","aria-selected":"false","aria-controls":"navigation"+e.instanceUid+i,id:"slick-slide"+e.instanceUid+i})}).first().attr("aria-selected","true").end().find("button").attr("role","button").end().closest("div").attr("role","toolbar"),e.activateADA()},e.prototype.initArrowEvents=function(){var t=this;!0===t.options.arrows&&t.slideCount>t.options.slidesToShow&&(t.$prevArrow.off("click.slick").on("click.slick",{message:"previous"},t.changeSlide),t.$nextArrow.off("click.slick").on("click.slick",{message:"next"},t.changeSlide))},e.prototype.initDotEvents=function(){var e=this;!0===e.options.dots&&e.slideCount>e.options.slidesToShow&&t("li",e.$dots).on("click.slick",{message:"index"},e.changeSlide),!0===e.options.dots&&!0===e.options.pauseOnDotsHover&&t("li",e.$dots).on("mouseenter.slick",t.proxy(e.interrupt,e,!0)).on("mouseleave.slick",t.proxy(e.interrupt,e,!1))},e.prototype.initSlideEvents=function(){var e=this;e.options.pauseOnHover&&(e.$list.on("mouseenter.slick",t.proxy(e.interrupt,e,!0)),e.$list.on("mouseleave.slick",t.proxy(e.interrupt,e,!1)))},e.prototype.initializeEvents=function(){var e=this;e.initArrowEvents(),e.initDotEvents(),e.initSlideEvents(),e.$list.on("touchstart.slick mousedown.slick",{action:"start"},e.swipeHandler),e.$list.on("touchmove.slick mousemove.slick",{action:"move"},e.swipeHandler),e.$list.on("touchend.slick mouseup.slick",{action:"end"},e.swipeHandler),e.$list.on("touchcancel.slick mouseleave.slick",{action:"end"},e.swipeHandler),e.$list.on("click.slick",e.clickHandler),t(document).on(e.visibilityChange,t.proxy(e.visibility,e)),!0===e.options.accessibility&&e.$list.on("keydown.slick",e.keyHandler),!0===e.options.focusOnSelect&&t(e.$slideTrack).children().on("click.slick",e.selectHandler),t(window).on("orientationchange.slick.slick-"+e.instanceUid,t.proxy(e.orientationChange,e)),t(window).on("resize.slick.slick-"+e.instanceUid,t.proxy(e.resize,e)),t("[draggable!=true]",e.$slideTrack).on("dragstart",e.preventDefault),t(window).on("load.slick.slick-"+e.instanceUid,e.setPosition),t(document).on("ready.slick.slick-"+e.instanceUid,e.setPosition)},e.prototype.initUI=function(){var t=this;!0===t.options.arrows&&t.slideCount>t.options.slidesToShow&&(t.$prevArrow.show(),t.$nextArrow.show()),!0===t.options.dots&&t.slideCount>t.options.slidesToShow&&t.$dots.show()},e.prototype.keyHandler=function(t){var e=this;t.target.tagName.match("TEXTAREA|INPUT|SELECT")||(37===t.keyCode&&!0===e.options.accessibility?e.changeSlide({data:{message:!0===e.options.rtl?"next":"previous"}}):39===t.keyCode&&!0===e.options.accessibility&&e.changeSlide({data:{message:!0===e.options.rtl?"previous":"next"}}))},e.prototype.lazyLoad=function(){function e(e){t("img[data-lazy]",e).each(function(){var e=t(this),i=t(this).attr("data-lazy"),n=document.createElement("img");n.onload=function(){e.animate({opacity:0},100,function(){e.attr("src",i).animate({opacity:1},200,function(){e.removeAttr("data-lazy").removeClass("slick-loading")}),r.$slider.trigger("lazyLoaded",[r,e,i])})},n.onerror=function(){e.removeAttr("data-lazy").removeClass("slick-loading").addClass("slick-lazyload-error"),r.$slider.trigger("lazyLoadError",[r,e,i])},n.src=i})}var i,n,s,o,r=this;!0===r.options.centerMode?!0===r.options.infinite?(s=r.currentSlide+(r.options.slidesToShow/2+1),o=s+r.options.slidesToShow+2):(s=Math.max(0,r.currentSlide-(r.options.slidesToShow/2+1)),o=r.options.slidesToShow/2+1+2+r.currentSlide):(s=r.options.infinite?r.options.slidesToShow+r.currentSlide:r.currentSlide,o=Math.ceil(s+r.options.slidesToShow),!0===r.options.fade&&(s>0&&s--,o<=r.slideCount&&o++)),i=r.$slider.find(".slick-slide").slice(s,o),e(i),r.slideCount<=r.options.slidesToShow?(n=r.$slider.find(".slick-slide"),e(n)):r.currentSlide>=r.slideCount-r.options.slidesToShow?(n=r.$slider.find(".slick-cloned").slice(0,r.options.slidesToShow),e(n)):0===r.currentSlide&&(n=r.$slider.find(".slick-cloned").slice(-1*r.options.slidesToShow),e(n))},e.prototype.loadSlider=function(){var t=this;t.setPosition(),t.$slideTrack.css({opacity:1}),t.$slider.removeClass("slick-loading"),t.initUI(),"progressive"===t.options.lazyLoad&&t.progressiveLazyLoad()},e.prototype.next=e.prototype.slickNext=function(){this.changeSlide({data:{message:"next"}})},e.prototype.orientationChange=function(){var t=this;t.checkResponsive(),t.setPosition()},e.prototype.pause=e.prototype.slickPause=function(){var t=this;t.autoPlayClear(),t.paused=!0},e.prototype.play=e.prototype.slickPlay=function(){var t=this;t.autoPlay(),t.options.autoplay=!0,t.paused=!1,t.focussed=!1,t.interrupted=!1},e.prototype.postSlide=function(t){var e=this;e.unslicked||(e.$slider.trigger("afterChange",[e,t]),e.animating=!1,e.setPosition(),e.swipeLeft=null,e.options.autoplay&&e.autoPlay(),!0===e.options.accessibility&&e.initADA())},e.prototype.prev=e.prototype.slickPrev=function(){this.changeSlide({data:{message:"previous"}})},e.prototype.preventDefault=function(t){t.preventDefault()},e.prototype.progressiveLazyLoad=function(e){e=e||1;var i,n,s,o=this,r=t("img[data-lazy]",o.$slider);r.length?(i=r.first(),n=i.attr("data-lazy"),s=document.createElement("img"),s.onload=function(){i.attr("src",n).removeAttr("data-lazy").removeClass("slick-loading"),!0===o.options.adaptiveHeight&&o.setPosition(),o.$slider.trigger("lazyLoaded",[o,i,n]),o.progressiveLazyLoad()},s.onerror=function(){e<3?setTimeout(function(){o.progressiveLazyLoad(e+1)},500):(i.removeAttr("data-lazy").removeClass("slick-loading").addClass("slick-lazyload-error"),o.$slider.trigger("lazyLoadError",[o,i,n]),o.progressiveLazyLoad())},s.src=n):o.$slider.trigger("allImagesLoaded",[o])},e.prototype.refresh=function(e){var i,n,s=this;n=s.slideCount-s.options.slidesToShow,!s.options.infinite&&s.currentSlide>n&&(s.currentSlide=n),s.slideCount<=s.options.slidesToShow&&(s.currentSlide=0),i=s.currentSlide,s.destroy(!0),t.extend(s,s.initials,{currentSlide:i}),s.init(),e||s.changeSlide({data:{message:"index",index:i}},!1)},e.prototype.registerBreakpoints=function(){var e,i,n,s=this,o=s.options.responsive||null;if("array"===t.type(o)&&o.length){s.respondTo=s.options.respondTo||"window";for(e in o)if(n=s.breakpoints.length-1,i=o[e].breakpoint,o.hasOwnProperty(e)){for(;n>=0;)s.breakpoints[n]&&s.breakpoints[n]===i&&s.breakpoints.splice(n,1),n--;s.breakpoints.push(i),s.breakpointSettings[i]=o[e].settings}s.breakpoints.sort(function(t,e){return s.options.mobileFirst?t-e:e-t})}},e.prototype.reinit=function(){var e=this;e.$slides=e.$slideTrack.children(e.options.slide).addClass("slick-slide"),e.slideCount=e.$slides.length,e.currentSlide>=e.slideCount&&0!==e.currentSlide&&(e.currentSlide=e.currentSlide-e.options.slidesToScroll),e.slideCount<=e.options.slidesToShow&&(e.currentSlide=0),e.registerBreakpoints(),e.setProps(),e.setupInfinite(),e.buildArrows(),e.updateArrows(),e.initArrowEvents(),e.buildDots(),e.updateDots(),e.initDotEvents(),e.cleanUpSlideEvents(),e.initSlideEvents(),e.checkResponsive(!1,!0),!0===e.options.focusOnSelect&&t(e.$slideTrack).children().on("click.slick",e.selectHandler),e.setSlideClasses("number"==typeof e.currentSlide?e.currentSlide:0),e.setPosition(),e.focusHandler(),e.paused=!e.options.autoplay,e.autoPlay(),e.$slider.trigger("reInit",[e])},e.prototype.resize=function(){var e=this;t(window).width()!==e.windowWidth&&(clearTimeout(e.windowDelay),e.windowDelay=window.setTimeout(function(){e.windowWidth=t(window).width(),e.checkResponsive(),e.unslicked||e.setPosition()},50))},e.prototype.removeSlide=e.prototype.slickRemove=function(t,e,i){var n=this;if("boolean"==typeof t?(e=t,t=!0===e?0:n.slideCount-1):t=!0===e?--t:t,n.slideCount<1||t<0||t>n.slideCount-1)return!1;n.unload(),!0===i?n.$slideTrack.children().remove():n.$slideTrack.children(this.options.slide).eq(t).remove(),n.$slides=n.$slideTrack.children(this.options.slide),n.$slideTrack.children(this.options.slide).detach(),n.$slideTrack.append(n.$slides),n.$slidesCache=n.$slides,n.reinit()},e.prototype.setCSS=function(t){var e,i,n=this,s={};!0===n.options.rtl&&(t=-t),e="left"==n.positionProp?Math.ceil(t)+"px":"0px",i="top"==n.positionProp?Math.ceil(t)+"px":"0px",s[n.positionProp]=t,!1===n.transformsEnabled?n.$slideTrack.css(s):(s={},!1===n.cssTransitions?(s[n.animType]="translate("+e+", "+i+")",n.$slideTrack.css(s)):(s[n.animType]="translate3d("+e+", "+i+", 0px)",n.$slideTrack.css(s)))},e.prototype.setDimensions=function(){var t=this;!1===t.options.vertical?!0===t.options.centerMode&&t.$list.css({padding:"0px "+t.options.centerPadding}):(t.$list.height(t.$slides.first().outerHeight(!0)*t.options.slidesToShow),!0===t.options.centerMode&&t.$list.css({padding:t.options.centerPadding+" 0px"})),t.listWidth=t.$list.width(),t.listHeight=t.$list.height(),!1===t.options.vertical&&!1===t.options.variableWidth?(t.slideWidth=Math.ceil(t.listWidth/t.options.slidesToShow),t.$slideTrack.width(Math.ceil(t.slideWidth*t.$slideTrack.children(".slick-slide").length))):!0===t.options.variableWidth?t.$slideTrack.width(5e3*t.slideCount):(t.slideWidth=Math.ceil(t.listWidth),t.$slideTrack.height(Math.ceil(t.$slides.first().outerHeight(!0)*t.$slideTrack.children(".slick-slide").length)));var e=t.$slides.first().outerWidth(!0)-t.$slides.first().width();!1===t.options.variableWidth&&t.$slideTrack.children(".slick-slide").width(t.slideWidth-e)},e.prototype.setFade=function(){var e,i=this;i.$slides.each(function(n,s){e=i.slideWidth*n*-1,!0===i.options.rtl?t(s).css({position:"relative",right:e,top:0,zIndex:i.options.zIndex-2,opacity:0}):t(s).css({position:"relative",left:e,top:0,zIndex:i.options.zIndex-2,opacity:0})}),i.$slides.eq(i.currentSlide).css({zIndex:i.options.zIndex-1,opacity:1})},e.prototype.setHeight=function(){var t=this;if(1===t.options.slidesToShow&&!0===t.options.adaptiveHeight&&!1===t.options.vertical){var e=t.$slides.eq(t.currentSlide).outerHeight(!0);t.$list.css("height",e)}},e.prototype.setOption=e.prototype.slickSetOption=function(){var e,i,n,s,o,r=this,a=!1;if("object"===t.type(arguments[0])?(n=arguments[0],a=arguments[1],o="multiple"):"string"===t.type(arguments[0])&&(n=arguments[0],s=arguments[1],a=arguments[2],"responsive"===arguments[0]&&"array"===t.type(arguments[1])?o="responsive":void 0!==arguments[1]&&(o="single")),"single"===o)r.options[n]=s;else if("multiple"===o)t.each(n,function(t,e){r.options[t]=e});else if("responsive"===o)for(i in s)if("array"!==t.type(r.options.responsive))r.options.responsive=[s[i]];else{for(e=r.options.responsive.length-1;e>=0;)r.options.responsive[e].breakpoint===s[i].breakpoint&&r.options.responsive.splice(e,1),e--;r.options.responsive.push(s[i])}a&&(r.unload(),r.reinit())},e.prototype.setPosition=function(){var t=this;t.setDimensions(),t.setHeight(),!1===t.options.fade?t.setCSS(t.getLeft(t.currentSlide)):t.setFade(),t.$slider.trigger("setPosition",[t])},e.prototype.setProps=function(){var t=this,e=document.body.style;t.positionProp=!0===t.options.vertical?"top":"left","top"===t.positionProp?t.$slider.addClass("slick-vertical"):t.$slider.removeClass("slick-vertical"),void 0===e.WebkitTransition&&void 0===e.MozTransition&&void 0===e.msTransition||!0===t.options.useCSS&&(t.cssTransitions=!0),t.options.fade&&("number"==typeof t.options.zIndex?t.options.zIndex<3&&(t.options.zIndex=3):t.options.zIndex=t.defaults.zIndex),void 0!==e.OTransform&&(t.animType="OTransform",t.transformType="-o-transform",t.transitionType="OTransition",void 0===e.perspectiveProperty&&void 0===e.webkitPerspective&&(t.animType=!1)),void 0!==e.MozTransform&&(t.animType="MozTransform",t.transformType="-moz-transform",t.transitionType="MozTransition",void 0===e.perspectiveProperty&&void 0===e.MozPerspective&&(t.animType=!1)),void 0!==e.webkitTransform&&(t.animType="webkitTransform",t.transformType="-webkit-transform",t.transitionType="webkitTransition",void 0===e.perspectiveProperty&&void 0===e.webkitPerspective&&(t.animType=!1)),void 0!==e.msTransform&&(t.animType="msTransform",t.transformType="-ms-transform",t.transitionType="msTransition",void 0===e.msTransform&&(t.animType=!1)),void 0!==e.transform&&!1!==t.animType&&(t.animType="transform",t.transformType="transform",t.transitionType="transition"),t.transformsEnabled=t.options.useTransform&&null!==t.animType&&!1!==t.animType},e.prototype.setSlideClasses=function(t){var e,i,n,s,o=this;i=o.$slider.find(".slick-slide").removeClass("slick-active slick-center slick-current").attr("aria-hidden","true"),o.$slides.eq(t).addClass("slick-current"),!0===o.options.centerMode?(e=Math.floor(o.options.slidesToShow/2),!0===o.options.infinite&&(t>=e&&t<=o.slideCount-1-e?o.$slides.slice(t-e,t+e+1).addClass("slick-active").attr("aria-hidden","false"):(n=o.options.slidesToShow+t,
i.slice(n-e+1,n+e+2).addClass("slick-active").attr("aria-hidden","false")),0===t?i.eq(i.length-1-o.options.slidesToShow).addClass("slick-center"):t===o.slideCount-1&&i.eq(o.options.slidesToShow).addClass("slick-center")),o.$slides.eq(t).addClass("slick-center")):t>=0&&t<=o.slideCount-o.options.slidesToShow?o.$slides.slice(t,t+o.options.slidesToShow).addClass("slick-active").attr("aria-hidden","false"):i.length<=o.options.slidesToShow?i.addClass("slick-active").attr("aria-hidden","false"):(s=o.slideCount%o.options.slidesToShow,n=!0===o.options.infinite?o.options.slidesToShow+t:t,o.options.slidesToShow==o.options.slidesToScroll&&o.slideCount-t<o.options.slidesToShow?i.slice(n-(o.options.slidesToShow-s),n+s).addClass("slick-active").attr("aria-hidden","false"):i.slice(n,n+o.options.slidesToShow).addClass("slick-active").attr("aria-hidden","false")),"ondemand"===o.options.lazyLoad&&o.lazyLoad()},e.prototype.setupInfinite=function(){var e,i,n,s=this;if(!0===s.options.fade&&(s.options.centerMode=!1),!0===s.options.infinite&&!1===s.options.fade&&(i=null,s.slideCount>s.options.slidesToShow)){for(n=!0===s.options.centerMode?s.options.slidesToShow+1:s.options.slidesToShow,e=s.slideCount;e>s.slideCount-n;e-=1)i=e-1,t(s.$slides[i]).clone(!0).attr("id","").attr("data-slick-index",i-s.slideCount).prependTo(s.$slideTrack).addClass("slick-cloned");for(e=0;e<n;e+=1)i=e,t(s.$slides[i]).clone(!0).attr("id","").attr("data-slick-index",i+s.slideCount).appendTo(s.$slideTrack).addClass("slick-cloned");s.$slideTrack.find(".slick-cloned").find("[id]").each(function(){t(this).attr("id","")})}},e.prototype.interrupt=function(t){var e=this;t||e.autoPlay(),e.interrupted=t},e.prototype.selectHandler=function(e){var i=this,n=t(e.target).is(".slick-slide")?t(e.target):t(e.target).parents(".slick-slide"),s=parseInt(n.attr("data-slick-index"));if(s||(s=0),i.slideCount<=i.options.slidesToShow)return i.setSlideClasses(s),void i.asNavFor(s);i.slideHandler(s)},e.prototype.slideHandler=function(t,e,i){var n,s,o,r,a,l=null,c=this;if(e=e||!1,(!0!==c.animating||!0!==c.options.waitForAnimate)&&!(!0===c.options.fade&&c.currentSlide===t||c.slideCount<=c.options.slidesToShow)){if(!1===e&&c.asNavFor(t),n=t,l=c.getLeft(n),r=c.getLeft(c.currentSlide),c.currentLeft=null===c.swipeLeft?r:c.swipeLeft,!1===c.options.infinite&&!1===c.options.centerMode&&(t<0||t>c.getDotCount()*c.options.slidesToScroll))return void(!1===c.options.fade&&(n=c.currentSlide,!0!==i?c.animateSlide(r,function(){c.postSlide(n)}):c.postSlide(n)));if(!1===c.options.infinite&&!0===c.options.centerMode&&(t<0||t>c.slideCount-c.options.slidesToScroll))return void(!1===c.options.fade&&(n=c.currentSlide,!0!==i?c.animateSlide(r,function(){c.postSlide(n)}):c.postSlide(n)));if(c.options.autoplay&&clearInterval(c.autoPlayTimer),s=n<0?c.slideCount%c.options.slidesToScroll!=0?c.slideCount-c.slideCount%c.options.slidesToScroll:c.slideCount+n:n>=c.slideCount?c.slideCount%c.options.slidesToScroll!=0?0:n-c.slideCount:n,c.animating=!0,c.$slider.trigger("beforeChange",[c,c.currentSlide,s]),o=c.currentSlide,c.currentSlide=s,c.setSlideClasses(c.currentSlide),c.options.asNavFor&&(a=c.getNavTarget(),a=a.slick("getSlick"),a.slideCount<=a.options.slidesToShow&&a.setSlideClasses(c.currentSlide)),c.updateDots(),c.updateArrows(),!0===c.options.fade)return!0!==i?(c.fadeSlideOut(o),c.fadeSlide(s,function(){c.postSlide(s)})):c.postSlide(s),void c.animateHeight();!0!==i?c.animateSlide(l,function(){c.postSlide(s)}):c.postSlide(s)}},e.prototype.startLoad=function(){var t=this;!0===t.options.arrows&&t.slideCount>t.options.slidesToShow&&(t.$prevArrow.hide(),t.$nextArrow.hide()),!0===t.options.dots&&t.slideCount>t.options.slidesToShow&&t.$dots.hide(),t.$slider.addClass("slick-loading")},e.prototype.swipeDirection=function(){var t,e,i,n,s=this;return t=s.touchObject.startX-s.touchObject.curX,e=s.touchObject.startY-s.touchObject.curY,i=Math.atan2(e,t),n=Math.round(180*i/Math.PI),n<0&&(n=360-Math.abs(n)),n<=45&&n>=0?!1===s.options.rtl?"left":"right":n<=360&&n>=315?!1===s.options.rtl?"left":"right":n>=135&&n<=225?!1===s.options.rtl?"right":"left":!0===s.options.verticalSwiping?n>=35&&n<=135?"down":"up":"vertical"},e.prototype.swipeEnd=function(t){var e,i,n=this;if(n.dragging=!1,n.interrupted=!1,n.shouldClick=!(n.touchObject.swipeLength>10),void 0===n.touchObject.curX)return!1;if(!0===n.touchObject.edgeHit&&n.$slider.trigger("edge",[n,n.swipeDirection()]),n.touchObject.swipeLength>=n.touchObject.minSwipe){switch(i=n.swipeDirection()){case"left":case"down":e=n.options.swipeToSlide?n.checkNavigable(n.currentSlide+n.getSlideCount()):n.currentSlide+n.getSlideCount(),n.currentDirection=0;break;case"right":case"up":e=n.options.swipeToSlide?n.checkNavigable(n.currentSlide-n.getSlideCount()):n.currentSlide-n.getSlideCount(),n.currentDirection=1}"vertical"!=i&&(n.slideHandler(e),n.touchObject={},n.$slider.trigger("swipe",[n,i]))}else n.touchObject.startX!==n.touchObject.curX&&(n.slideHandler(n.currentSlide),n.touchObject={})},e.prototype.swipeHandler=function(t){var e=this;if(!(!1===e.options.swipe||"ontouchend"in document&&!1===e.options.swipe||!1===e.options.draggable&&-1!==t.type.indexOf("mouse")))switch(e.touchObject.fingerCount=t.originalEvent&&void 0!==t.originalEvent.touches?t.originalEvent.touches.length:1,e.touchObject.minSwipe=e.listWidth/e.options.touchThreshold,!0===e.options.verticalSwiping&&(e.touchObject.minSwipe=e.listHeight/e.options.touchThreshold),t.data.action){case"start":e.swipeStart(t);break;case"move":e.swipeMove(t);break;case"end":e.swipeEnd(t)}},e.prototype.swipeMove=function(t){var e,i,n,s,o,r=this;return o=void 0!==t.originalEvent?t.originalEvent.touches:null,!(!r.dragging||o&&1!==o.length)&&(e=r.getLeft(r.currentSlide),r.touchObject.curX=void 0!==o?o[0].pageX:t.clientX,r.touchObject.curY=void 0!==o?o[0].pageY:t.clientY,r.touchObject.swipeLength=Math.round(Math.sqrt(Math.pow(r.touchObject.curX-r.touchObject.startX,2))),!0===r.options.verticalSwiping&&(r.touchObject.swipeLength=Math.round(Math.sqrt(Math.pow(r.touchObject.curY-r.touchObject.startY,2)))),"vertical"!==(i=r.swipeDirection())?(void 0!==t.originalEvent&&r.touchObject.swipeLength>4&&t.preventDefault(),s=(!1===r.options.rtl?1:-1)*(r.touchObject.curX>r.touchObject.startX?1:-1),!0===r.options.verticalSwiping&&(s=r.touchObject.curY>r.touchObject.startY?1:-1),n=r.touchObject.swipeLength,r.touchObject.edgeHit=!1,!1===r.options.infinite&&(0===r.currentSlide&&"right"===i||r.currentSlide>=r.getDotCount()&&"left"===i)&&(n=r.touchObject.swipeLength*r.options.edgeFriction,r.touchObject.edgeHit=!0),!1===r.options.vertical?r.swipeLeft=e+n*s:r.swipeLeft=e+n*(r.$list.height()/r.listWidth)*s,!0===r.options.verticalSwiping&&(r.swipeLeft=e+n*s),!0!==r.options.fade&&!1!==r.options.touchMove&&(!0===r.animating?(r.swipeLeft=null,!1):void r.setCSS(r.swipeLeft))):void 0)},e.prototype.swipeStart=function(t){var e,i=this;if(i.interrupted=!0,1!==i.touchObject.fingerCount||i.slideCount<=i.options.slidesToShow)return i.touchObject={},!1;void 0!==t.originalEvent&&void 0!==t.originalEvent.touches&&(e=t.originalEvent.touches[0]),i.touchObject.startX=i.touchObject.curX=void 0!==e?e.pageX:t.clientX,i.touchObject.startY=i.touchObject.curY=void 0!==e?e.pageY:t.clientY,i.dragging=!0},e.prototype.unfilterSlides=e.prototype.slickUnfilter=function(){var t=this;null!==t.$slidesCache&&(t.unload(),t.$slideTrack.children(this.options.slide).detach(),t.$slidesCache.appendTo(t.$slideTrack),t.reinit())},e.prototype.unload=function(){var e=this;t(".slick-cloned",e.$slider).remove(),e.$dots&&e.$dots.remove(),e.$prevArrow&&e.htmlExpr.test(e.options.prevArrow)&&e.$prevArrow.remove(),e.$nextArrow&&e.htmlExpr.test(e.options.nextArrow)&&e.$nextArrow.remove(),e.$slides.removeClass("slick-slide slick-active slick-visible slick-current").attr("aria-hidden","true").css("width","")},e.prototype.unslick=function(t){var e=this;e.$slider.trigger("unslick",[e,t]),e.destroy()},e.prototype.updateArrows=function(){var t=this;Math.floor(t.options.slidesToShow/2),!0===t.options.arrows&&t.slideCount>t.options.slidesToShow&&!t.options.infinite&&(t.$prevArrow.removeClass("slick-disabled").attr("aria-disabled","false"),t.$nextArrow.removeClass("slick-disabled").attr("aria-disabled","false"),0===t.currentSlide?(t.$prevArrow.addClass("slick-disabled").attr("aria-disabled","true"),t.$nextArrow.removeClass("slick-disabled").attr("aria-disabled","false")):t.currentSlide>=t.slideCount-t.options.slidesToShow&&!1===t.options.centerMode?(t.$nextArrow.addClass("slick-disabled").attr("aria-disabled","true"),t.$prevArrow.removeClass("slick-disabled").attr("aria-disabled","false")):t.currentSlide>=t.slideCount-1&&!0===t.options.centerMode&&(t.$nextArrow.addClass("slick-disabled").attr("aria-disabled","true"),t.$prevArrow.removeClass("slick-disabled").attr("aria-disabled","false")))},e.prototype.updateDots=function(){var t=this;null!==t.$dots&&(t.$dots.find("li").removeClass("slick-active").attr("aria-hidden","true"),t.$dots.find("li").eq(Math.floor(t.currentSlide/t.options.slidesToScroll)).addClass("slick-active").attr("aria-hidden","false"))},e.prototype.visibility=function(){var t=this;t.options.autoplay&&(document[t.hidden]?t.interrupted=!0:t.interrupted=!1)},t.fn.slick=function(){var t,i,n=this,s=arguments[0],o=Array.prototype.slice.call(arguments,1),r=n.length;for(t=0;t<r;t++)if("object"==typeof s||void 0===s?n[t].slick=new e(n[t],s):i=n[t].slick[s].apply(n[t].slick,o),void 0!==i)return i;return n}}),function(t,e){"function"==typeof define&&define.amd?define("bloodhound",["jquery"],function(i){return t.Bloodhound=e(i)}):"object"==typeof exports?module.exports=e(require("jquery")):t.Bloodhound=e(jQuery)}(this,function(t){var e=function(){"use strict";return{isMsie:function(){return!!/(msie|trident)/i.test(navigator.userAgent)&&navigator.userAgent.match(/(msie |rv:)(\d+(.\d+)?)/i)[2]},isBlankString:function(t){return!t||/^\s*$/.test(t)},escapeRegExChars:function(t){return t.replace(/[\-\[\]\/\{\}\(\)\*\+\?\.\\\^\$\|]/g,"\\$&")},isString:function(t){return"string"==typeof t},isNumber:function(t){return"number"==typeof t},isArray:t.isArray,isFunction:t.isFunction,isObject:t.isPlainObject,isUndefined:function(t){return void 0===t},isElement:function(t){return!(!t||1!==t.nodeType)},isJQuery:function(e){return e instanceof t},toStr:function(t){return e.isUndefined(t)||null===t?"":t+""},bind:t.proxy,each:function(e,i){function n(t,e){return i(e,t)}t.each(e,n)},map:t.map,filter:t.grep,every:function(e,i){var n=!0;return e?(t.each(e,function(t,s){if(!(n=i.call(null,s,t,e)))return!1}),!!n):n},some:function(e,i){var n=!1;return e?(t.each(e,function(t,s){if(n=i.call(null,s,t,e))return!1}),!!n):n},mixin:t.extend,identity:function(t){return t},clone:function(e){return t.extend(!0,{},e)},getIdGenerator:function(){var t=0;return function(){return t++}},templatify:function(e){function i(){return String(e)}return t.isFunction(e)?e:i},defer:function(t){setTimeout(t,0)},debounce:function(t,e,i){var n,s;return function(){var o,r,a=this,l=arguments;return o=function(){n=null,i||(s=t.apply(a,l))},r=i&&!n,clearTimeout(n),n=setTimeout(o,e),r&&(s=t.apply(a,l)),s}},throttle:function(t,e){var i,n,s,o,r,a;return r=0,a=function(){r=new Date,s=null,o=t.apply(i,n)},function(){var l=new Date,c=e-(l-r);return i=this,n=arguments,c<=0?(clearTimeout(s),s=null,r=l,o=t.apply(i,n)):s||(s=setTimeout(a,c)),o}},stringify:function(t){return e.isString(t)?t:JSON.stringify(t)},noop:function(){}}}(),i="0.11.1",n=function(){"use strict";function t(t){return t=e.toStr(t),t?t.split(/\s+/):[]}function i(t){return t=e.toStr(t),t?t.split(/\W+/):[]}function n(t){return function(i){return i=e.isArray(i)?i:[].slice.call(arguments,0),function(n){var s=[];return e.each(i,function(i){s=s.concat(t(e.toStr(n[i])))}),s}}}return{nonword:i,whitespace:t,obj:{nonword:n(i),whitespace:n(t)}}}(),s=function(){"use strict";function i(i){this.maxSize=e.isNumber(i)?i:100,this.reset(),this.maxSize<=0&&(this.set=this.get=t.noop)}function n(){this.head=this.tail=null}function s(t,e){this.key=t,this.val=e,this.prev=this.next=null}return e.mixin(i.prototype,{set:function(t,e){var i,n=this.list.tail;this.size>=this.maxSize&&(this.list.remove(n),delete this.hash[n.key],this.size--),(i=this.hash[t])?(i.val=e,this.list.moveToFront(i)):(i=new s(t,e),this.list.add(i),this.hash[t]=i,this.size++)},get:function(t){var e=this.hash[t];if(e)return this.list.moveToFront(e),e.val},reset:function(){this.size=0,this.hash={},this.list=new n}}),e.mixin(n.prototype,{add:function(t){this.head&&(t.next=this.head,this.head.prev=t),this.head=t,this.tail=this.tail||t},remove:function(t){t.prev?t.prev.next=t.next:this.head=t.next,t.next?t.next.prev=t.prev:this.tail=t.prev},moveToFront:function(t){this.remove(t),this.add(t)}}),i}(),o=function(){"use strict";function i(t,i){this.prefix=["__",t,"__"].join(""),this.ttlKey="__ttl__",this.keyMatcher=new RegExp("^"+e.escapeRegExChars(this.prefix)),this.ls=i||a,!this.ls&&this._noop()}function n(){return(new Date).getTime()}function s(t){return JSON.stringify(e.isUndefined(t)?null:t)}function o(e){return t.parseJSON(e)}function r(t){var e,i,n=[],s=a.length;for(e=0;e<s;e++)(i=a.key(e)).match(t)&&n.push(i.replace(t,""));return n}var a;try{a=window.localStorage,a.setItem("~~~","!"),a.removeItem("~~~")}catch(t){a=null}return e.mixin(i.prototype,{_prefix:function(t){return this.prefix+t},_ttlKey:function(t){return this._prefix(t)+this.ttlKey},_noop:function(){this.get=this.set=this.remove=this.clear=this.isExpired=e.noop},_safeSet:function(t,e){try{this.ls.setItem(t,e)}catch(t){"QuotaExceededError"===t.name&&(this.clear(),this._noop())}},get:function(t){return this.isExpired(t)&&this.remove(t),o(this.ls.getItem(this._prefix(t)))},set:function(t,i,o){return e.isNumber(o)?this._safeSet(this._ttlKey(t),s(n()+o)):this.ls.removeItem(this._ttlKey(t)),this._safeSet(this._prefix(t),s(i))},remove:function(t){return this.ls.removeItem(this._ttlKey(t)),this.ls.removeItem(this._prefix(t)),this},clear:function(){var t,e=r(this.keyMatcher);for(t=e.length;t--;)this.remove(e[t]);return this},isExpired:function(t){var i=o(this.ls.getItem(this._ttlKey(t)));return!!(e.isNumber(i)&&n()>i)}}),i}(),r=function(){"use strict";function i(t){t=t||{},this.cancelled=!1,this.lastReq=null,this._send=t.transport,this._get=t.limiter?t.limiter(this._get):this._get,this._cache=!1===t.cache?new s(0):a}var n=0,o={},r=6,a=new s(10);return i.setMaxPendingRequests=function(t){r=t},i.resetCache=function(){a.reset()},e.mixin(i.prototype,{_fingerprint:function(e){return e=e||{},e.url+e.type+t.param(e.data||{})},_get:function(t,e){function i(t){e(null,t),d._cache.set(l,t)}function s(){e(!0)}function a(){n--,delete o[l],d.onDeckRequestArgs&&(d._get.apply(d,d.onDeckRequestArgs),d.onDeckRequestArgs=null)}var l,c,d=this;l=this._fingerprint(t),this.cancelled||l!==this.lastReq||((c=o[l])?c.done(i).fail(s):n<r?(n++,o[l]=this._send(t).done(i).fail(s).always(a)):this.onDeckRequestArgs=[].slice.call(arguments,0))},get:function(i,n){var s,o;n=n||t.noop,i=e.isString(i)?{url:i}:i||{},o=this._fingerprint(i),this.cancelled=!1,this.lastReq=o,(s=this._cache.get(o))?n(null,s):this._get(i,n)},cancel:function(){this.cancelled=!0}}),i}(),a=window.SearchIndex=function(){"use strict";function i(i){i=i||{},i.datumTokenizer&&i.queryTokenizer||t.error("datumTokenizer and queryTokenizer are both required"),this.identify=i.identify||e.stringify,this.datumTokenizer=i.datumTokenizer,this.queryTokenizer=i.queryTokenizer,this.reset()}function n(t){return t=e.filter(t,function(t){return!!t}),t=e.map(t,function(t){return t.toLowerCase()})}function s(){var t={};return t[l]=[],t[a]={},t}function o(t){for(var e={},i=[],n=0,s=t.length;n<s;n++)e[t[n]]||(e[t[n]]=!0,i.push(t[n]));return i}function r(t,e){var i=0,n=0,s=[];t=t.sort(),e=e.sort();for(var o=t.length,r=e.length;i<o&&n<r;)t[i]<e[n]?i++:t[i]>e[n]?n++:(s.push(t[i]),i++,n++);return s}var a="c",l="i";return e.mixin(i.prototype,{bootstrap:function(t){this.datums=t.datums,this.trie=t.trie},add:function(t){var i=this;t=e.isArray(t)?t:[t],e.each(t,function(t){var o,r;i.datums[o=i.identify(t)]=t,r=n(i.datumTokenizer(t)),e.each(r,function(t){var e,n,r;for(e=i.trie,n=t.split("");r=n.shift();)e=e[a][r]||(e[a][r]=s()),e[l].push(o)})})},get:function(t){var i=this;return e.map(t,function(t){return i.datums[t]})},search:function(t){var i,s,c=this;return i=n(this.queryTokenizer(t)),e.each(i,function(t){var e,i,n,o;if(s&&0===s.length)return!1;for(e=c.trie,i=t.split("");e&&(n=i.shift());)e=e[a][n];if(!e||0!==i.length)return s=[],!1;o=e[l].slice(0),s=s?r(s,o):o}),s?e.map(o(s),function(t){return c.datums[t]}):[]},all:function(){var t=[];for(var e in this.datums)t.push(this.datums[e]);return t},reset:function(){this.datums={},this.trie=s()},serialize:function(){return{datums:this.datums,trie:this.trie}}}),i}(),l=function(){"use strict";function t(t){this.url=t.url,this.ttl=t.ttl,this.cache=t.cache,this.prepare=t.prepare,this.transform=t.transform,this.transport=t.transport,this.thumbprint=t.thumbprint,this.storage=new o(t.cacheKey)}var i;return i={data:"data",protocol:"protocol",thumbprint:"thumbprint"},e.mixin(t.prototype,{_settings:function(){return{url:this.url,type:"GET",dataType:"json"}},store:function(t){this.cache&&(this.storage.set(i.data,t,this.ttl),this.storage.set(i.protocol,location.protocol,this.ttl),this.storage.set(i.thumbprint,this.thumbprint,this.ttl))},fromCache:function(){var t,e={};return this.cache?(e.data=this.storage.get(i.data),e.protocol=this.storage.get(i.protocol),e.thumbprint=this.storage.get(i.thumbprint),t=e.thumbprint!==this.thumbprint||e.protocol!==location.protocol,e.data&&!t?e.data:null):null},fromNetwork:function(t){function e(){t(!0)}function i(e){t(null,s.transform(e))}var n,s=this;t&&(n=this.prepare(this._settings()),this.transport(n).fail(e).done(i))},clear:function(){return this.storage.clear(),this}}),t}(),c=function(){"use strict";function t(t){this.url=t.url,this.prepare=t.prepare,this.transform=t.transform,this.transport=new r({cache:t.cache,limiter:t.limiter,transport:t.transport})}return e.mixin(t.prototype,{_settings:function(){return{url:this.url,type:"GET",dataType:"json"}},get:function(t,e){function i(t,i){e(t?[]:s.transform(i))}var n,s=this;if(e)return t=t||"",n=this.prepare(t,this._settings()),this.transport.get(n,i)},cancelLastRequest:function(){this.transport.cancel()}}),t}(),d=function(){"use strict";function n(n){var s;return n?(s={url:null,ttl:864e5,cache:!0,cacheKey:null,thumbprint:"",prepare:e.identity,transform:e.identity,transport:null},n=e.isString(n)?{url:n}:n,n=e.mixin(s,n),!n.url&&t.error("prefetch requires url to be set"),n.transform=n.filter||n.transform,n.cacheKey=n.cacheKey||n.url,n.thumbprint=i+n.thumbprint,n.transport=n.transport?a(n.transport):t.ajax,n):null}function s(i){var n;if(i)return n={url:null,cache:!0,prepare:null,replace:null,wildcard:null,limiter:null,rateLimitBy:"debounce",rateLimitWait:300,transform:e.identity,transport:null},i=e.isString(i)?{url:i}:i,i=e.mixin(n,i),!i.url&&t.error("remote requires url to be set"),i.transform=i.filter||i.transform,i.prepare=o(i),i.limiter=r(i),i.transport=i.transport?a(i.transport):t.ajax,delete i.replace,delete i.wildcard,delete i.rateLimitBy,delete i.rateLimitWait,i}function o(t){function e(t,e){return e.url=o(e.url,t),e}function i(t,e){return e.url=e.url.replace(r,encodeURIComponent(t)),e}function n(t,e){return e}var s,o,r;return s=t.prepare,o=t.replace,r=t.wildcard,s||(s=o?e:t.wildcard?i:n)}function r(t){var i,n,s;return i=t.limiter,n=t.rateLimitBy,s=t.rateLimitWait,i||(i=/^throttle$/i.test(n)?function(t){return function(i){return e.throttle(i,t)}}(s):function(t){return function(i){return e.debounce(i,t)}}(s)),i}function a(i){return function(n){function s(t){e.defer(function(){r.resolve(t)})}function o(t){e.defer(function(){r.reject(t)})}var r=t.Deferred();return i(n,s,o),r}}return function(i){var o,r;return o={initialize:!0,identify:e.stringify,datumTokenizer:null,queryTokenizer:null,sufficient:5,sorter:null,local:[],prefetch:null,remote:null},i=e.mixin(o,i||{}),!i.datumTokenizer&&t.error("datumTokenizer is required"),!i.queryTokenizer&&t.error("queryTokenizer is required"),r=i.sorter,i.sorter=r?function(t){return t.sort(r)}:e.identity,i.local=e.isFunction(i.local)?i.local():i.local,i.prefetch=n(i.prefetch),i.remote=s(i.remote),i}}();return function(){"use strict";function i(t){t=d(t),this.sorter=t.sorter,this.identify=t.identify,this.sufficient=t.sufficient,this.local=t.local,this.remote=t.remote?new c(t.remote):null,this.prefetch=t.prefetch?new l(t.prefetch):null,this.index=new a({identify:this.identify,datumTokenizer:t.datumTokenizer,queryTokenizer:t.queryTokenizer}),!1!==t.initialize&&this.initialize()}var s;return s=window&&window.Bloodhound,i.noConflict=function(){return window&&(window.Bloodhound=s),i},i.tokenizers=n,e.mixin(i.prototype,{__ttAdapter:function(){function t(t,e,n){return i.search(t,e,n)}function e(t,e){return i.search(t,e)}var i=this;return this.remote?t:e},_loadPrefetch:function(){function e(t,e){if(t)return i.reject();s.add(e),s.prefetch.store(s.index.serialize()),i.resolve()}var i,n,s=this;return i=t.Deferred(),this.prefetch?(n=this.prefetch.fromCache())?(this.index.bootstrap(n),i.resolve()):this.prefetch.fromNetwork(e):i.resolve(),i.promise()},_initialize:function(){function t(){e.add(e.local)}var e=this;return this.clear(),(this.initPromise=this._loadPrefetch()).done(t),this.initPromise},initialize:function(t){return!this.initPromise||t?this._initialize():this.initPromise},add:function(t){return this.index.add(t),this},get:function(t){return t=e.isArray(t)?t:[].slice.call(arguments),this.index.get(t)},search:function(t,i,n){function s(t){var i=[];e.each(t,function(t){!e.some(o,function(e){return r.identify(t)===r.identify(e)})&&i.push(t)}),n&&n(i)}var o,r=this;return o=this.sorter(this.index.search(t)),i(this.remote?o.slice():o),this.remote&&o.length<this.sufficient?this.remote.get(t,s):this.remote&&this.remote.cancelLastRequest(),this},all:function(){return this.index.all()},clear:function(){return this.index.reset(),this},clearPrefetchCache:function(){return this.prefetch&&this.prefetch.clear(),this},clearRemoteCache:function(){return r.resetCache(),this},ttAdapter:function(){return this.__ttAdapter()}}),i}()}),function(t,e){"function"==typeof define&&define.amd?define("typeahead.js",["jquery"],function(t){return e(t)}):"object"==typeof exports?module.exports=e(require("jquery")):e(jQuery)}(0,function(t){var e=function(){"use strict";return{isMsie:function(){return!!/(msie|trident)/i.test(navigator.userAgent)&&navigator.userAgent.match(/(msie |rv:)(\d+(.\d+)?)/i)[2]},isBlankString:function(t){return!t||/^\s*$/.test(t)},escapeRegExChars:function(t){return t.replace(/[\-\[\]\/\{\}\(\)\*\+\?\.\\\^\$\|]/g,"\\$&")},isString:function(t){return"string"==typeof t},isNumber:function(t){return"number"==typeof t},isArray:t.isArray,isFunction:t.isFunction,isObject:t.isPlainObject,isUndefined:function(t){return void 0===t},isElement:function(t){return!(!t||1!==t.nodeType)},isJQuery:function(e){return e instanceof t},toStr:function(t){return e.isUndefined(t)||null===t?"":t+""},bind:t.proxy,each:function(e,i){function n(t,e){return i(e,t)}t.each(e,n)},map:t.map,filter:t.grep,every:function(e,i){var n=!0;return e?(t.each(e,function(t,s){if(!(n=i.call(null,s,t,e)))return!1}),!!n):n},some:function(e,i){var n=!1;return e?(t.each(e,function(t,s){if(n=i.call(null,s,t,e))return!1}),!!n):n},mixin:t.extend,identity:function(t){return t},clone:function(e){return t.extend(!0,{},e)},getIdGenerator:function(){var t=0;return function(){return t++}},templatify:function(e){function i(){return String(e)}return t.isFunction(e)?e:i},defer:function(t){setTimeout(t,0)},debounce:function(t,e,i){var n,s;return function(){var o,r,a=this,l=arguments;return o=function(){n=null,i||(s=t.apply(a,l))},r=i&&!n,clearTimeout(n),n=setTimeout(o,e),r&&(s=t.apply(a,l)),s}},throttle:function(t,e){var i,n,s,o,r,a;return r=0,a=function(){r=new Date,s=null,o=t.apply(i,n)},function(){var l=new Date,c=e-(l-r);return i=this,n=arguments,c<=0?(clearTimeout(s),s=null,r=l,o=t.apply(i,n)):s||(s=setTimeout(a,c)),o}},stringify:function(t){return e.isString(t)?t:JSON.stringify(t)},noop:function(){}}}(),i=function(){"use strict";function t(t){var r,a;return a=e.mixin({},o,t),r={css:s(),classes:a,html:i(a),selectors:n(a)},{css:r.css,html:r.html,classes:r.classes,selectors:r.selectors,mixin:function(t){e.mixin(t,r)}}}function i(t){return{wrapper:'<span class="'+t.wrapper+'"></span>',menu:'<div class="'+t.menu+'"></div>'}}function n(t){var i={};return e.each(t,function(t,e){i[e]="."+t}),i}function s(){var t={wrapper:{position:"relative",display:"inline-block"},hint:{position:"absolute",top:"0",left:"0",borderColor:"transparent",boxShadow:"none",opacity:"1"},input:{position:"relative",verticalAlign:"top",backgroundColor:"transparent"},inputWithNoHint:{position:"relative",verticalAlign:"top"},menu:{position:"absolute",top:"100%",left:"0",zIndex:"100",display:"none"},ltr:{left:"0",right:"auto"},rtl:{left:"auto",right:" 0"}};return e.isMsie()&&e.mixin(t.input,{backgroundImage:"url(data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7)"}),t}var o={wrapper:"twitter-typeahead",input:"tt-input",hint:"tt-hint",menu:"tt-menu",dataset:"tt-dataset",suggestion:"tt-suggestion",selectable:"tt-selectable",empty:"tt-empty",open:"tt-open",cursor:"tt-cursor",highlight:"tt-highlight"};return t}(),n=function(){"use strict";function i(e){e&&e.el||t.error("EventBus initialized without el"),this.$el=t(e.el)}var n,s;return n="typeahead:",s={render:"rendered",cursorchange:"cursorchanged",select:"selected",autocomplete:"autocompleted"},e.mixin(i.prototype,{_trigger:function(e,i){var s;return s=t.Event(n+e),(i=i||[]).unshift(s),this.$el.trigger.apply(this.$el,i),s},before:function(t){var e,i;return e=[].slice.call(arguments,1),i=this._trigger("before"+t,e),i.isDefaultPrevented()},trigger:function(t){var e;this._trigger(t,[].slice.call(arguments,1)),(e=s[t])&&this._trigger(e,[].slice.call(arguments,1))}}),i}(),s=function(){"use strict";function t(t,e,i,n){var s;if(!i)return this;for(e=e.split(a),i=n?r(i,n):i,this._callbacks=this._callbacks||{};s=e.shift();)this._callbacks[s]=this._callbacks[s]||{sync:[],async:[]},this._callbacks[s][t].push(i);return this}function e(e,i,n){return t.call(this,"async",e,i,n)}function i(e,i,n){return t.call(this,"sync",e,i,n)}function n(t){var e;if(!this._callbacks)return this;for(t=t.split(a);e=t.shift();)delete this._callbacks[e];return this}function s(t){var e,i,n,s,r;if(!this._callbacks)return this;for(t=t.split(a),n=[].slice.call(arguments,1);(e=t.shift())&&(i=this._callbacks[e]);)s=o(i.sync,this,[e].concat(n)),r=o(i.async,this,[e].concat(n)),s()&&l(r);return this}function o(t,e,i){function n(){for(var n,s=0,o=t.length;!n&&s<o;s+=1)n=!1===t[s].apply(e,i);return!n}return n}function r(t,e){return t.bind?t.bind(e):function(){t.apply(e,[].slice.call(arguments,0))}}var a=/\s+/,l=function(){return window.setImmediate?function(t){setImmediate(function(){t()})}:function(t){setTimeout(function(){t()},0)}}();return{onSync:i,onAsync:e,off:n,trigger:s}}(),o=function(t){"use strict";function i(t,i,n){for(var s,o=[],r=0,a=t.length;r<a;r++)o.push(e.escapeRegExChars(t[r]));return s=n?"\\b("+o.join("|")+")\\b":"("+o.join("|")+")",i?new RegExp(s):new RegExp(s,"i")}var n={node:null,pattern:null,tagName:"strong",className:null,wordsOnly:!1,caseSensitive:!1};return function(s){function o(e){var i,n,o;return(i=a.exec(e.data))&&(o=t.createElement(s.tagName),s.className&&(o.className=s.className),n=e.splitText(i.index),n.splitText(i[0].length),o.appendChild(n.cloneNode(!0)),e.parentNode.replaceChild(o,n)),!!i}function r(t,e){for(var i,n=0;n<t.childNodes.length;n++)i=t.childNodes[n],3===i.nodeType?n+=e(i)?1:0:r(i,e)}var a;s=e.mixin({},n,s),s.node&&s.pattern&&(s.pattern=e.isArray(s.pattern)?s.pattern:[s.pattern],a=i(s.pattern,s.caseSensitive,s.wordsOnly),r(s.node,o))}}(window.document),r=function(){"use strict";function i(i,s){i=i||{},i.input||t.error("input is missing"),s.mixin(this),this.$hint=t(i.hint),this.$input=t(i.input),this.query=this.$input.val(),this.queryWhenFocused=this.hasFocus()?this.query:null,this.$overflowHelper=n(this.$input),this._checkLanguageDirection(),0===this.$hint.length&&(this.setHint=this.getHint=this.clearHint=this.clearHintIfInvalid=e.noop)}function n(e){return t('<pre aria-hidden="true"></pre>').css({position:"absolute",visibility:"hidden",whiteSpace:"pre",fontFamily:e.css("font-family"),fontSize:e.css("font-size"),fontStyle:e.css("font-style"),fontVariant:e.css("font-variant"),fontWeight:e.css("font-weight"),wordSpacing:e.css("word-spacing"),letterSpacing:e.css("letter-spacing"),textIndent:e.css("text-indent"),textRendering:e.css("text-rendering"),textTransform:e.css("text-transform")}).insertAfter(e)}function o(t,e){return i.normalizeQuery(t)===i.normalizeQuery(e)}function r(t){return t.altKey||t.ctrlKey||t.metaKey||t.shiftKey}var a;return a={9:"tab",27:"esc",37:"left",39:"right",13:"enter",38:"up",40:"down"},i.normalizeQuery=function(t){return e.toStr(t).replace(/^\s*/g,"").replace(/\s{2,}/g," ")},e.mixin(i.prototype,s,{_onBlur:function(){this.resetInputValue(),this.trigger("blurred")},_onFocus:function(){this.queryWhenFocused=this.query,this.trigger("focused")},_onKeydown:function(t){var e=a[t.which||t.keyCode];this._managePreventDefault(e,t),e&&this._shouldTrigger(e,t)&&this.trigger(e+"Keyed",t)},_onInput:function(){this._setQuery(this.getInputValue()),this.clearHintIfInvalid(),this._checkLanguageDirection()},_managePreventDefault:function(t,e){var i;switch(t){case"up":case"down":i=!r(e);break;default:i=!1}i&&e.preventDefault()},_shouldTrigger:function(t,e){var i;switch(t){case"tab":i=!r(e);break;default:i=!0}return i},_checkLanguageDirection:function(){var t=(this.$input.css("direction")||"ltr").toLowerCase();this.dir!==t&&(this.dir=t,this.$hint.attr("dir",t),this.trigger("langDirChanged",t))},_setQuery:function(t,e){var i,n;i=o(t,this.query),n=!!i&&this.query.length!==t.length,this.query=t,e||i?!e&&n&&this.trigger("whitespaceChanged",this.query):this.trigger("queryChanged",this.query)},bind:function(){var t,i,n,s,o=this;return t=e.bind(this._onBlur,this),i=e.bind(this._onFocus,this),n=e.bind(this._onKeydown,this),s=e.bind(this._onInput,this),this.$input.on("blur.tt",t).on("focus.tt",i).on("keydown.tt",n),!e.isMsie()||e.isMsie()>9?this.$input.on("input.tt",s):this.$input.on("keydown.tt keypress.tt cut.tt paste.tt",function(t){a[t.which||t.keyCode]||e.defer(e.bind(o._onInput,o,t))}),this},focus:function(){this.$input.focus()},blur:function(){this.$input.blur()},getLangDir:function(){return this.dir},getQuery:function(){return this.query||""},setQuery:function(t,e){this.setInputValue(t),this._setQuery(t,e)},hasQueryChangedSinceLastFocus:function(){return this.query!==this.queryWhenFocused},getInputValue:function(){return this.$input.val()},setInputValue:function(t){this.$input.val(t),this.clearHintIfInvalid(),this._checkLanguageDirection()},resetInputValue:function(){this.setInputValue(this.query)},getHint:function(){return this.$hint.val()},setHint:function(t){this.$hint.val(t)},clearHint:function(){this.setHint("")},clearHintIfInvalid:function(){var t,e,i,n;t=this.getInputValue(),e=this.getHint(),i=t!==e&&0===e.indexOf(t),!(n=""!==t&&i&&!this.hasOverflow())&&this.clearHint()},hasFocus:function(){return this.$input.is(":focus")},hasOverflow:function(){var t=this.$input.width()-2;return this.$overflowHelper.text(this.getInputValue()),this.$overflowHelper.width()>=t},isCursorAtEnd:function(){var t,i,n;return t=this.$input.val().length,i=this.$input[0].selectionStart,e.isNumber(i)?i===t:!document.selection||(n=document.selection.createRange(),n.moveStart("character",-t),t===n.text.length)},destroy:function(){this.$hint.off(".tt"),this.$input.off(".tt"),this.$overflowHelper.remove(),this.$hint=this.$input=this.$overflowHelper=t("<div>")}}),i}(),a=function(){"use strict";function i(i,s){i=i||{},
i.templates=i.templates||{},i.templates.notFound=i.templates.notFound||i.templates.empty,i.source||t.error("missing source"),i.node||t.error("missing node"),i.name&&!a(i.name)&&t.error("invalid dataset name: "+i.name),s.mixin(this),this.highlight=!!i.highlight,this.name=i.name||c(),this.limit=i.limit||5,this.displayFn=n(i.display||i.displayKey),this.templates=r(i.templates,this.displayFn),this.source=i.source.__ttAdapter?i.source.__ttAdapter():i.source,this.async=e.isUndefined(i.async)?this.source.length>2:!!i.async,this._resetLastSuggestion(),this.$el=t(i.node).addClass(this.classes.dataset).addClass(this.classes.dataset+"-"+this.name)}function n(t){function i(e){return e[t]}return t=t||e.stringify,e.isFunction(t)?t:i}function r(i,n){function s(e){return t("<div>").text(n(e))}return{notFound:i.notFound&&e.templatify(i.notFound),pending:i.pending&&e.templatify(i.pending),header:i.header&&e.templatify(i.header),footer:i.footer&&e.templatify(i.footer),suggestion:i.suggestion||s}}function a(t){return/^[_a-zA-Z0-9-]+$/.test(t)}var l,c;return l={val:"tt-selectable-display",obj:"tt-selectable-object"},c=e.getIdGenerator(),i.extractData=function(e){var i=t(e);return i.data(l.obj)?{val:i.data(l.val)||"",obj:i.data(l.obj)||null}:null},e.mixin(i.prototype,s,{_overwrite:function(t,e){e=e||[],e.length?this._renderSuggestions(t,e):this.async&&this.templates.pending?this._renderPending(t):!this.async&&this.templates.notFound?this._renderNotFound(t):this._empty(),this.trigger("rendered",this.name,e,!1)},_append:function(t,e){e=e||[],e.length&&this.$lastSuggestion.length?this._appendSuggestions(t,e):e.length?this._renderSuggestions(t,e):!this.$lastSuggestion.length&&this.templates.notFound&&this._renderNotFound(t),this.trigger("rendered",this.name,e,!0)},_renderSuggestions:function(t,e){var i;i=this._getSuggestionsFragment(t,e),this.$lastSuggestion=i.children().last(),this.$el.html(i).prepend(this._getHeader(t,e)).append(this._getFooter(t,e))},_appendSuggestions:function(t,e){var i,n;i=this._getSuggestionsFragment(t,e),n=i.children().last(),this.$lastSuggestion.after(i),this.$lastSuggestion=n},_renderPending:function(t){var e=this.templates.pending;this._resetLastSuggestion(),e&&this.$el.html(e({query:t,dataset:this.name}))},_renderNotFound:function(t){var e=this.templates.notFound;this._resetLastSuggestion(),e&&this.$el.html(e({query:t,dataset:this.name}))},_empty:function(){this.$el.empty(),this._resetLastSuggestion()},_getSuggestionsFragment:function(i,n){var s,r=this;return s=document.createDocumentFragment(),e.each(n,function(e){var n,o;o=r._injectQuery(i,e),n=t(r.templates.suggestion(o)).data(l.obj,e).data(l.val,r.displayFn(e)).addClass(r.classes.suggestion+" "+r.classes.selectable),s.appendChild(n[0])}),this.highlight&&o({className:this.classes.highlight,node:s,pattern:i}),t(s)},_getFooter:function(t,e){return this.templates.footer?this.templates.footer({query:t,suggestions:e,dataset:this.name}):null},_getHeader:function(t,e){return this.templates.header?this.templates.header({query:t,suggestions:e,dataset:this.name}):null},_resetLastSuggestion:function(){this.$lastSuggestion=t()},_injectQuery:function(t,i){return e.isObject(i)?e.mixin({_query:t},i):i},update:function(e){function i(t){r||(r=!0,t=(t||[]).slice(0,s.limit),a=t.length,s._overwrite(e,t),a<s.limit&&s.async&&s.trigger("asyncRequested",e))}function n(i){i=i||[],!o&&a<s.limit&&(s.cancel=t.noop,a+=i.length,s._append(e,i.slice(0,s.limit-a)),s.async&&s.trigger("asyncReceived",e))}var s=this,o=!1,r=!1,a=0;this.cancel(),this.cancel=function(){o=!0,s.cancel=t.noop,s.async&&s.trigger("asyncCanceled",e)},this.source(e,i,n),!r&&i([])},cancel:t.noop,clear:function(){this._empty(),this.cancel(),this.trigger("cleared")},isEmpty:function(){return this.$el.is(":empty")},destroy:function(){this.$el=t("<div>")}}),i}(),l=function(){"use strict";function i(i,n){function s(e){var i=o.$node.find(e.node).first();return e.node=i.length?i:t("<div>").appendTo(o.$node),new a(e,n)}var o=this;i=i||{},i.node||t.error("node is required"),n.mixin(this),this.$node=t(i.node),this.query=null,this.datasets=e.map(i.datasets,s)}return e.mixin(i.prototype,s,{_onSelectableClick:function(e){this.trigger("selectableClicked",t(e.currentTarget))},_onRendered:function(t,e,i,n){this.$node.toggleClass(this.classes.empty,this._allDatasetsEmpty()),this.trigger("datasetRendered",e,i,n)},_onCleared:function(){this.$node.toggleClass(this.classes.empty,this._allDatasetsEmpty()),this.trigger("datasetCleared")},_propagate:function(){this.trigger.apply(this,arguments)},_allDatasetsEmpty:function(){function t(t){return t.isEmpty()}return e.every(this.datasets,t)},_getSelectables:function(){return this.$node.find(this.selectors.selectable)},_removeCursor:function(){var t=this.getActiveSelectable();t&&t.removeClass(this.classes.cursor)},_ensureVisible:function(t){var e,i,n,s;e=t.position().top,i=e+t.outerHeight(!0),n=this.$node.scrollTop(),s=this.$node.height()+parseInt(this.$node.css("paddingTop"),10)+parseInt(this.$node.css("paddingBottom"),10),e<0?this.$node.scrollTop(n+e):s<i&&this.$node.scrollTop(n+(i-s))},bind:function(){var t,i=this;return t=e.bind(this._onSelectableClick,this),this.$node.on("click.tt",this.selectors.selectable,t),e.each(this.datasets,function(t){t.onSync("asyncRequested",i._propagate,i).onSync("asyncCanceled",i._propagate,i).onSync("asyncReceived",i._propagate,i).onSync("rendered",i._onRendered,i).onSync("cleared",i._onCleared,i)}),this},isOpen:function(){return this.$node.hasClass(this.classes.open)},open:function(){this.$node.addClass(this.classes.open)},close:function(){this.$node.removeClass(this.classes.open),this._removeCursor()},setLanguageDirection:function(t){this.$node.attr("dir",t)},selectableRelativeToCursor:function(t){var e,i,n,s;return i=this.getActiveSelectable(),e=this._getSelectables(),n=i?e.index(i):-1,s=n+t,s=(s+1)%(e.length+1)-1,s=s<-1?e.length-1:s,-1===s?null:e.eq(s)},setCursor:function(t){this._removeCursor(),(t=t&&t.first())&&(t.addClass(this.classes.cursor),this._ensureVisible(t))},getSelectableData:function(t){return t&&t.length?a.extractData(t):null},getActiveSelectable:function(){var t=this._getSelectables().filter(this.selectors.cursor).first();return t.length?t:null},getTopSelectable:function(){var t=this._getSelectables().first();return t.length?t:null},update:function(t){function i(e){e.update(t)}var n=t!==this.query;return n&&(this.query=t,e.each(this.datasets,i)),n},empty:function(){function t(t){t.clear()}e.each(this.datasets,t),this.query=null,this.$node.addClass(this.classes.empty)},destroy:function(){function i(t){t.destroy()}this.$node.off(".tt"),this.$node=t("<div>"),e.each(this.datasets,i)}}),i}(),c=function(){"use strict";function t(){l.apply(this,[].slice.call(arguments,0))}var i=l.prototype;return e.mixin(t.prototype,l.prototype,{open:function(){return!this._allDatasetsEmpty()&&this._show(),i.open.apply(this,[].slice.call(arguments,0))},close:function(){return this._hide(),i.close.apply(this,[].slice.call(arguments,0))},_onRendered:function(){return this._allDatasetsEmpty()?this._hide():this.isOpen()&&this._show(),i._onRendered.apply(this,[].slice.call(arguments,0))},_onCleared:function(){return this._allDatasetsEmpty()?this._hide():this.isOpen()&&this._show(),i._onCleared.apply(this,[].slice.call(arguments,0))},setLanguageDirection:function(t){return this.$node.css("ltr"===t?this.css.ltr:this.css.rtl),i.setLanguageDirection.apply(this,[].slice.call(arguments,0))},_hide:function(){this.$node.hide()},_show:function(){this.$node.css("display","block")}}),t}(),d=function(){"use strict";function i(i,s){var o,r,a,l,c,d,u,p,h,f,g;i=i||{},i.input||t.error("missing input"),i.menu||t.error("missing menu"),i.eventBus||t.error("missing event bus"),s.mixin(this),this.eventBus=i.eventBus,this.minLength=e.isNumber(i.minLength)?i.minLength:1,this.input=i.input,this.menu=i.menu,this.enabled=!0,this.active=!1,this.input.hasFocus()&&this.activate(),this.dir=this.input.getLangDir(),this._hacks(),this.menu.bind().onSync("selectableClicked",this._onSelectableClicked,this).onSync("asyncRequested",this._onAsyncRequested,this).onSync("asyncCanceled",this._onAsyncCanceled,this).onSync("asyncReceived",this._onAsyncReceived,this).onSync("datasetRendered",this._onDatasetRendered,this).onSync("datasetCleared",this._onDatasetCleared,this),o=n(this,"activate","open","_onFocused"),r=n(this,"deactivate","_onBlurred"),a=n(this,"isActive","isOpen","_onEnterKeyed"),l=n(this,"isActive","isOpen","_onTabKeyed"),c=n(this,"isActive","_onEscKeyed"),d=n(this,"isActive","open","_onUpKeyed"),u=n(this,"isActive","open","_onDownKeyed"),p=n(this,"isActive","isOpen","_onLeftKeyed"),h=n(this,"isActive","isOpen","_onRightKeyed"),f=n(this,"_openIfActive","_onQueryChanged"),g=n(this,"_openIfActive","_onWhitespaceChanged"),this.input.bind().onSync("focused",o,this).onSync("blurred",r,this).onSync("enterKeyed",a,this).onSync("tabKeyed",l,this).onSync("escKeyed",c,this).onSync("upKeyed",d,this).onSync("downKeyed",u,this).onSync("leftKeyed",p,this).onSync("rightKeyed",h,this).onSync("queryChanged",f,this).onSync("whitespaceChanged",g,this).onSync("langDirChanged",this._onLangDirChanged,this)}function n(t){var i=[].slice.call(arguments,1);return function(){var n=[].slice.call(arguments);e.each(i,function(e){return t[e].apply(t,n)})}}return e.mixin(i.prototype,{_hacks:function(){var i,n;i=this.input.$input||t("<div>"),n=this.menu.$node||t("<div>"),i.on("blur.tt",function(t){var s,o,r;s=document.activeElement,o=n.is(s),r=n.has(s).length>0,e.isMsie()&&(o||r)&&(t.preventDefault(),t.stopImmediatePropagation(),e.defer(function(){i.focus()}))}),n.on("mousedown.tt",function(t){t.preventDefault()})},_onSelectableClicked:function(t,e){this.select(e)},_onDatasetCleared:function(){this._updateHint()},_onDatasetRendered:function(t,e,i,n){this._updateHint(),this.eventBus.trigger("render",i,n,e)},_onAsyncRequested:function(t,e,i){this.eventBus.trigger("asyncrequest",i,e)},_onAsyncCanceled:function(t,e,i){this.eventBus.trigger("asynccancel",i,e)},_onAsyncReceived:function(t,e,i){this.eventBus.trigger("asyncreceive",i,e)},_onFocused:function(){this._minLengthMet()&&this.menu.update(this.input.getQuery())},_onBlurred:function(){this.input.hasQueryChangedSinceLastFocus()&&this.eventBus.trigger("change",this.input.getQuery())},_onEnterKeyed:function(t,e){var i;(i=this.menu.getActiveSelectable())&&this.select(i)&&e.preventDefault()},_onTabKeyed:function(t,e){var i;(i=this.menu.getActiveSelectable())?this.select(i)&&e.preventDefault():(i=this.menu.getTopSelectable())&&this.autocomplete(i)&&e.preventDefault()},_onEscKeyed:function(){this.close()},_onUpKeyed:function(){this.moveCursor(-1)},_onDownKeyed:function(){this.moveCursor(1)},_onLeftKeyed:function(){"rtl"===this.dir&&this.input.isCursorAtEnd()&&this.autocomplete(this.menu.getTopSelectable())},_onRightKeyed:function(){"ltr"===this.dir&&this.input.isCursorAtEnd()&&this.autocomplete(this.menu.getTopSelectable())},_onQueryChanged:function(t,e){this._minLengthMet(e)?this.menu.update(e):this.menu.empty()},_onWhitespaceChanged:function(){this._updateHint()},_onLangDirChanged:function(t,e){this.dir!==e&&(this.dir=e,this.menu.setLanguageDirection(e))},_openIfActive:function(){this.isActive()&&this.open()},_minLengthMet:function(t){return t=e.isString(t)?t:this.input.getQuery()||"",t.length>=this.minLength},_updateHint:function(){var t,i,n,s,o,a,l;t=this.menu.getTopSelectable(),i=this.menu.getSelectableData(t),n=this.input.getInputValue(),!i||e.isBlankString(n)||this.input.hasOverflow()?this.input.clearHint():(s=r.normalizeQuery(n),o=e.escapeRegExChars(s),a=new RegExp("^(?:"+o+")(.+$)","i"),(l=a.exec(i.val))&&this.input.setHint(n+l[1]))},isEnabled:function(){return this.enabled},enable:function(){this.enabled=!0},disable:function(){this.enabled=!1},isActive:function(){return this.active},activate:function(){return!!this.isActive()||!(!this.isEnabled()||this.eventBus.before("active"))&&(this.active=!0,this.eventBus.trigger("active"),!0)},deactivate:function(){return!this.isActive()||!this.eventBus.before("idle")&&(this.active=!1,this.close(),this.eventBus.trigger("idle"),!0)},isOpen:function(){return this.menu.isOpen()},open:function(){return this.isOpen()||this.eventBus.before("open")||(this.menu.open(),this._updateHint(),this.eventBus.trigger("open")),this.isOpen()},close:function(){return this.isOpen()&&!this.eventBus.before("close")&&(this.menu.close(),this.input.clearHint(),this.input.resetInputValue(),this.eventBus.trigger("close")),!this.isOpen()},setVal:function(t){this.input.setQuery(e.toStr(t))},getVal:function(){return this.input.getQuery()},select:function(t){var e=this.menu.getSelectableData(t);return!(!e||this.eventBus.before("select",e.obj))&&(this.input.setQuery(e.val,!0),this.eventBus.trigger("select",e.obj),this.close(),!0)},autocomplete:function(t){var e,i;return e=this.input.getQuery(),i=this.menu.getSelectableData(t),!(!(i&&e!==i.val)||this.eventBus.before("autocomplete",i.obj))&&(this.input.setQuery(i.val),this.eventBus.trigger("autocomplete",i.obj),!0)},moveCursor:function(t){var e,i,n,s;return e=this.input.getQuery(),i=this.menu.selectableRelativeToCursor(t),n=this.menu.getSelectableData(i),s=n?n.obj:null,!(this._minLengthMet()&&this.menu.update(e))&&!this.eventBus.before("cursorchange",s)&&(this.menu.setCursor(i),n?this.input.setInputValue(n.val):(this.input.resetInputValue(),this._updateHint()),this.eventBus.trigger("cursorchange",s),!0)},destroy:function(){this.input.destroy(),this.menu.destroy()}}),i}();!function(){"use strict";function s(e,i){e.each(function(){var e,n=t(this);(e=n.data(g.typeahead))&&i(e,n)})}function o(t,e){return t.clone().addClass(e.classes.hint).removeData().css(e.css.hint).css(u(t)).prop("readonly",!0).removeAttr("id name placeholder required").attr({autocomplete:"off",spellcheck:"false",tabindex:-1})}function a(t,e){t.data(g.attrs,{dir:t.attr("dir"),autocomplete:t.attr("autocomplete"),spellcheck:t.attr("spellcheck"),style:t.attr("style")}),t.addClass(e.classes.input).attr({autocomplete:"off",spellcheck:!1});try{!t.attr("dir")&&t.attr("dir","auto")}catch(t){}return t}function u(t){return{backgroundAttachment:t.css("background-attachment"),backgroundClip:t.css("background-clip"),backgroundColor:t.css("background-color"),backgroundImage:t.css("background-image"),backgroundOrigin:t.css("background-origin"),backgroundPosition:t.css("background-position"),backgroundRepeat:t.css("background-repeat"),backgroundSize:t.css("background-size")}}function p(t){var i,n;i=t.data(g.www),n=t.parent().filter(i.selectors.wrapper),e.each(t.data(g.attrs),function(i,n){e.isUndefined(i)?t.removeAttr(n):t.attr(n,i)}),t.removeData(g.typeahead).removeData(g.www).removeData(g.attr).removeClass(i.classes.input),n.length&&(t.detach().insertAfter(n),n.remove())}function h(i){var n,s;return n=e.isJQuery(i)||e.isElement(i),s=n?t(i).first():[],s.length?s:null}var f,g,v;f=t.fn.typeahead,g={www:"tt-www",attrs:"tt-attrs",typeahead:"tt-typeahead"},v={initialize:function(s,u){function p(){var i,p,v,y,m,k,w,S,b,T,$;e.each(u,function(t){t.highlight=!!s.highlight}),i=t(this),p=t(f.html.wrapper),v=h(s.hint),y=h(s.menu),m=!1!==s.hint&&!v,k=!1!==s.menu&&!y,m&&(v=o(i,f)),k&&(y=t(f.html.menu).css(f.css.menu)),v&&v.val(""),i=a(i,f),(m||k)&&(p.css(f.css.wrapper),i.css(m?f.css.input:f.css.inputWithNoHint),i.wrap(p).parent().prepend(m?v:null).append(k?y:null)),$=k?c:l,w=new n({el:i}),S=new r({hint:v,input:i},f),b=new $({node:y,datasets:u},f),T=new d({input:S,menu:b,eventBus:w,minLength:s.minLength},f),i.data(g.www,f),i.data(g.typeahead,T)}var f;return u=e.isArray(u)?u:[].slice.call(arguments,1),s=s||{},f=i(s.classNames),this.each(p)},isEnabled:function(){var t;return s(this.first(),function(e){t=e.isEnabled()}),t},enable:function(){return s(this,function(t){t.enable()}),this},disable:function(){return s(this,function(t){t.disable()}),this},isActive:function(){var t;return s(this.first(),function(e){t=e.isActive()}),t},activate:function(){return s(this,function(t){t.activate()}),this},deactivate:function(){return s(this,function(t){t.deactivate()}),this},isOpen:function(){var t;return s(this.first(),function(e){t=e.isOpen()}),t},open:function(){return s(this,function(t){t.open()}),this},close:function(){return s(this,function(t){t.close()}),this},select:function(e){var i=!1,n=t(e);return s(this.first(),function(t){i=t.select(n)}),i},autocomplete:function(e){var i=!1,n=t(e);return s(this.first(),function(t){i=t.autocomplete(n)}),i},moveCursor:function(t){var e=!1;return s(this.first(),function(i){e=i.moveCursor(t)}),e},val:function(t){var e;return arguments.length?(s(this,function(e){e.setVal(t)}),this):(s(this.first(),function(t){e=t.getVal()}),e)},destroy:function(){return s(this,function(t,e){p(e),t.destroy()}),this}},t.fn.typeahead=function(t){return v[t]?v[t].apply(this,[].slice.call(arguments,1)):v.initialize.apply(this,arguments)},t.fn.typeahead.noConflict=function(){return t.fn.typeahead=f,this}}()});
/*!
* Clamp.js 0.5.1
*
* Copyright 2011-2013, Joseph Schmitt http://joe.sh
* Released under the WTFPL license
* http://sam.zoy.org/wtfpl/
*/
(function(){window.$clamp=function(c,d){function s(a,b){n.getComputedStyle||(n.getComputedStyle=function(a,b){this.el=a;this.getPropertyValue=function(b){var c=/(\-([a-z]){1})/g;"float"==b&&(b="styleFloat");c.test(b)&&(b=b.replace(c,function(a,b,c){return c.toUpperCase()}));return a.currentStyle&&a.currentStyle[b]?a.currentStyle[b]:null};return this});return n.getComputedStyle(a,null).getPropertyValue(b)}function t(a){a=a||c.clientHeight;var b=u(c);return Math.max(Math.floor(a/b),0)}function x(a){return u(c)*
a}function u(a){var b=s(a,"line-height");"normal"==b&&(b=1.2*parseInt(s(a,"font-size")));return parseInt(b)}function l(a){if(a.lastChild.children&&0<a.lastChild.children.length)return l(Array.prototype.slice.call(a.children).pop());if(a.lastChild&&a.lastChild.nodeValue&&""!=a.lastChild.nodeValue&&a.lastChild.nodeValue!=b.truncationChar)return a.lastChild;a.lastChild.parentNode.removeChild(a.lastChild);return l(c)}function p(a,d){if(d){var e=a.nodeValue.replace(b.truncationChar,"");f||(h=0<k.length?
k.shift():"",f=e.split(h));1<f.length?(q=f.pop(),r(a,f.join(h))):f=null;m&&(a.nodeValue=a.nodeValue.replace(b.truncationChar,""),c.innerHTML=a.nodeValue+" "+m.innerHTML+b.truncationChar);if(f){if(c.clientHeight<=d)if(0<=k.length&&""!=h)r(a,f.join(h)+h+q),f=null;else return c.innerHTML}else""==h&&(r(a,""),a=l(c),k=b.splitOnChars.slice(0),h=k[0],q=f=null);if(b.animate)setTimeout(function(){p(a,d)},!0===b.animate?10:b.animate);else return p(a,d)}}function r(a,c){a.nodeValue=c+b.truncationChar}d=d||{};
var n=window,b={clamp:d.clamp||2,useNativeClamp:"undefined"!=typeof d.useNativeClamp?d.useNativeClamp:!0,splitOnChars:d.splitOnChars||[".","-","\u2013","\u2014"," "],animate:d.animate||!1,truncationChar:d.truncationChar||"\u2026",truncationHTML:d.truncationHTML},e=c.style,y=c.innerHTML,z="undefined"!=typeof c.style.webkitLineClamp,g=b.clamp,v=g.indexOf&&(-1<g.indexOf("px")||-1<g.indexOf("em")),m;b.truncationHTML&&(m=document.createElement("span"),m.innerHTML=b.truncationHTML);var k=b.splitOnChars.slice(0),
h=k[0],f,q;"auto"==g?g=t():v&&(g=t(parseInt(g)));var w;z&&b.useNativeClamp?(e.overflow="hidden",e.textOverflow="ellipsis",e.webkitBoxOrient="vertical",e.display="-webkit-box",e.webkitLineClamp=g,v&&(e.height=b.clamp+"px")):(e=x(g),e<=c.clientHeight&&(w=p(l(c),e)));return{original:y,clamped:w}}})();
!function(t){t.fn.extend({slimScroll:function(i){var e={axis:"y",width:"auto",height:"250px",size:"7px",color:"#000",positionX:"bottom",positionY:"right",distance:"1px",startX:"left",startY:"top",opacity:.4,alwaysVisible:!1,disableFadeOut:!1,railVisible:!1,railColor:"#333",railOpacity:.2,railDraggable:!0,railClassX:"slimScrollRailX",barClassX:"slimScrollBarX",railClassY:"slimScrollRailY",barClassY:"slimScrollBarY",wrapperClass:"slimScrollDiv",allowPageScroll:!1,wheelStep:20,touchScrollStep:200,borderRadius:"7px",railBorderRadius:"7px"},o=t.extend(e,i);return o.axis=o.axis.toLowerCase(),this.each(function(){function e(t){var i=0,e=0;return"detail"in t&&(e=t.detail),"wheelDelta"in t&&(e=-1*t.wheelDelta/6),"wheelDeltaY"in t&&(e=-1*t.wheelDeltaY/6),"wheelDeltaX"in t&&(i=t.wheelDeltaX/6),"axis"in t&&t.axis===t.HORIZONTAL_AXIS&&(i=-1*e,e=0),i!==i&&e!==e&&(i=0,e=t.wheelDelta),"deltaY"in t&&(e=t.deltaY),"deltaX"in t&&(i=t.deltaX),[i,e]}function s(i){if(m){i=i||window.event;var s=e(i),a=s[0],r=s[1],n=i.target||i.srcTarget||i.srcElement;t(n).closest("."+o.wrapperClass).is(E.parent())&&l(a,r,!0),i.preventDefault&&!V&&i.preventDefault(),V||(i.returnValue=!1)}}function l(t,i,e,s){if(V=!1,p){var l=t,a=E.outerWidth()-j.outerWidth();if(e&&(l=parseInt(j.css("left"))+t*parseInt(o.wheelStep)/100,l=Math.min(Math.max(l,0),a),l=t>0?Math.ceil(l):Math.floor(l),j.css({left:l+"px"})),W=parseInt(j.css("left"))/(E.outerWidth()-j.outerWidth()),l=W*(E[0].scrollWidth-E.outerWidth()),s){l=t;var r=l/E[0].scrollWidth*E.outerWidth();r=Math.min(Math.max(r,0),a),j.css({left:r+"px"})}E.scrollLeft(l),E.trigger("slimscrollingX",~~l),c(),u()}if(f){var n=i,g=E.outerHeight()-Q.outerHeight();if(e&&(n=parseInt(Q.css("top"))+i*parseInt(o.wheelStep)/100,n=Math.min(Math.max(n,0),g),n=i>0?Math.ceil(n):Math.floor(n),Q.css({top:n+"px"})),M=parseInt(Q.css("top"))/(E.outerHeight()-Q.outerHeight()),n=M*(E[0].scrollHeight-E.outerHeight()),s){n=i;var w=n/E[0].scrollHeight*E.outerHeight();w=Math.min(Math.max(w,0),g),Q.css({top:w+"px"})}E.scrollTop(n),E.trigger("slimscrollingY",~~n),d(),h()}}function a(t){window.addEventListener?(t.addEventListener("DOMMouseScroll",s,!1),t.addEventListener("mousewheel",s,!1)):document.attachEvent("onmousewheel",s)}function r(){if(j){I=Math.max(E.outerWidth()/E[0].scrollWidth*E.outerWidth(),O),j.css({width:I+"px"});var t=p&&E[0].scrollWidth>E[0].clientWidth?"block":"none";j.css({display:t})}}function n(){if(Q){R=Math.max(E.outerHeight()/E[0].scrollHeight*E.outerHeight(),B),Q.css({height:R+"px"});var t=f&&E[0].scrollHeight>E[0].clientHeight?"block":"none";Q.css({display:t})}}function c(){if(j){if(r(),clearTimeout(Y),W==~~W){if(V=o.allowPageScroll,H!=W){var t=0===~~W?"left":"right";E.trigger("slimscrollX",t)}}else V=!1;if(H=W,I>=E.outerWidth())return void(V=!0);j.stop(!0,!0).fadeIn("fast"),o.railVisible&&P.stop(!0,!0).fadeIn("fast")}}function u(){j&&(o.alwaysVisible||(Y=setTimeout(function(){o.disableFadeOut&&m||v||X||(j.fadeOut("slow"),P.fadeOut("slow"))},1e3)))}function d(){if(Q){if(n(),clearTimeout(y),M==~~M){if(V=o.allowPageScroll,D!=M){var t=0===~~M?"top":"bottom";E.trigger("slimscrollY",t)}}else V=!1;if(D=M,R>=E.outerHeight())return void(V=!0);Q.stop(!0,!0).fadeIn("fast"),o.railVisible&&N.stop(!0,!0).fadeIn("fast")}}function h(){Q&&(o.alwaysVisible||(y=setTimeout(function(){o.disableFadeOut&&m||x||X||(Q.fadeOut("slow"),N.fadeOut("slow"))},1e3)))}var p,f,g,w,b,m,v,x,X,Y,y,C,S,R,I,W,H,M,D,T="<div></div>",B=30,O=30,V=!1,E=t(this),k=t(document);if(E.parent().hasClass(o.wrapperClass)){t.extend(o,E.data("slimScrollConfig")||{});var z=E.scrollLeft(),L=E.scrollTop();return j=E.siblings("."+o.barClassX),P=E.siblings("."+o.railClassX),Q=E.siblings("."+o.barClassY),N=E.siblings("."+o.railClassY),p="both"==o.axis||"x"==o.axis,f="both"==o.axis||"y"==o.axis,r(),n(),t.isPlainObject(i)&&("width"in i&&p&&("auto"==i.width?(E.parent().css("width","auto"),E.css("width","auto"),o.width=E.parent().parent().width()):(o.width=i.width,E.css({"white-space":"nowrap"}))),"height"in i&&f&&("auto"==i.height?(E.parent().css("height","auto"),E.css("height","auto"),o.height=E.parent().parent().height()):o.height=i.height),E.parent().css({position:"relative",overflow:"hidden",width:o.width,height:o.height}),E.css({overflow:"hidden",width:o.width,height:o.height}),"scrollToX"in i?z=parseInt(o.scrollToX):"scrollByX"in i&&(z+=parseInt(o.scrollByX)),"scrollToY"in i?L=parseInt(o.scrollToY):"scrollByY"in i&&(L+=parseInt(o.scrollByY)),"destroy"in i)?(j.remove(),P.remove(),Q.remove(),N.remove(),void E.unwrap()):void l(z,L,!1,!0)}if(!(t.isPlainObject(i)&&"destroy"in i)){p="both"==o.axis||"x"==o.axis,f="both"==o.axis||"y"==o.axis,o.height="auto"==o.height?E.parent().height():o.height,o.width="auto"==o.width?E.parent().width():o.width,E.data("slimScrollConfig",o);var F=t(T).addClass(o.wrapperClass).css({position:"relative",overflow:"hidden",width:o.width,height:o.height});if(E.css({overflow:"hidden",width:o.width,height:o.height}),E.wrap(F),p){"auto"!=o.width&&p&&E.css({"white-space":"nowrap"});var P=t(T).addClass(o.railClassX).css({width:"100%",height:o.size,position:"absolute",left:0,display:o.alwaysVisible&&o.railVisible?"block":"none","border-radius":o.railBorderRadius,background:o.railColor,opacity:o.railOpacity,zIndex:90}),j=t(T).addClass(o.barClassX).css({background:o.color,height:o.size,position:"absolute",left:0,opacity:o.opacity,display:o.alwaysVisible?"block":"none","border-radius":o.borderRadius,BorderRadius:o.borderRadius,MozBorderRadius:o.borderRadius,WebkitBorderRadius:o.borderRadius,zIndex:99}),A="top"==o.positionX?{top:o.distance}:{bottom:o.distance};P.css(A),j.css(A),E.parent().append(j),E.parent().append(P),o.railDraggable&&(j.on("mousedown",function(t){return X=!0,g=parseFloat(j.css("left")),w=t.pageX,k.on("mousemove.slimscrollX",function(t){currLeft=g+t.pageX-w,j.css("left",currLeft),l(0,0,j.position().left)}),k.on("mouseup.slimscrollX",function(t){X=!1,u(),k.unbind(".slimscrollX")}),!1}).on("selectstart.slimscrollX",function(t){return t.stopPropagation(),t.preventDefault(),!1}),P.on("mousedown",function(t){var i=(t.offsetX-I/2)*E[0].scrollWidth/E.outerWidth();return l(i,0,!1,!0),g=parseFloat(j.css("left")),w=t.pageX,k.on("mousemove.slimscrollX",function(t){currLeft=g+t.pageX-w,j.css("left",currLeft),l(0,0,j.position().left)}),k.on("mouseup.slimscrollX",function(t){X=!1,u(),k.unbind(".slimscrollX")}),!1})),P.hover(function(){c()},function(){u()}),j.hover(function(){v=!0},function(){v=!1}),r(),"right"===o.startX?(j.css({left:E.outerWidth()-j.outerWidth()}),l(0,0,!0)):"left"!==o.startX&&(l(t(o.startX).position().left,null,null,!0),o.alwaysVisible||j.hide())}if(f){var N=t(T).addClass(o.railClassY).css({width:o.size,height:"100%",position:"absolute",top:0,display:o.alwaysVisible&&o.railVisible?"block":"none","border-radius":o.railBorderRadius,background:o.railColor,opacity:o.railOpacity,zIndex:90}),Q=t(T).addClass(o.barClassY).css({background:o.color,width:o.size,position:"absolute",top:0,opacity:o.opacity,display:o.alwaysVisible?"block":"none","border-radius":o.borderRadius,BorderRadius:o.borderRadius,MozBorderRadius:o.borderRadius,WebkitBorderRadius:o.borderRadius,zIndex:99}),Z="right"==o.positionY?{right:o.distance}:{left:o.distance};N.css(Z),Q.css(Z),E.parent().append(Q),E.parent().append(N),o.railDraggable&&(Q.on("mousedown",function(t){return X=!0,g=parseFloat(Q.css("top")),b=t.pageY,k.on("mousemove.slimscrollY",function(t){currTop=g+t.pageY-b,Q.css("top",currTop),l(0,0,Q.position().top)}),k.on("mouseup.slimscrollY",function(t){X=!1,h(),k.unbind(".slimscrollY")}),!1}).on("selectstart.slimscrollY",function(t){return t.stopPropagation(),t.preventDefault(),!1}),N.on("mousedown",function(t){var i=(t.offsetY-R/2)*E[0].scrollHeight/E.outerHeight();return l(0,i,!1,!0),g=parseFloat(Q.css("top")),b=t.pageY,k.on("mousemove.slimscrollY",function(t){currTop=g+t.pageY-b,Q.css("top",currTop),l(0,0,Q.position().top)}),k.on("mouseup.slimscrollY",function(t){X=!1,h(),k.unbind(".slimscrollY")}),!1})),N.hover(function(){d()},function(){h()}),Q.hover(function(){x=!0},function(){x=!1}),n(),"bottom"===o.startY?(Q.css({top:E.outerHeight()-Q.outerHeight()}),l(0,0,!0)):"top"!==o.startY&&(l(null,t(o.startY).position().top,null,!0),o.alwaysVisible||Q.hide())}E.hover(function(){m=!0,c(),d(),u(),h()},function(){m=!1,u(),h()}),E.on("touchstart",function(t,i){t.originalEvent.touches.length&&(C=t.originalEvent.touches[0].pageX,S=t.originalEvent.touches[0].pageY)}),E.on("touchmove",function(t){if(V||t.originalEvent.preventDefault(),t.originalEvent.touches.length){var i=(C-t.originalEvent.touches[0].pageX)/o.touchScrollStep,e=(S-t.originalEvent.touches[0].pageY)/o.touchScrollStep;l(i,e,!0),C=t.originalEvent.touches[0].pageX,S=t.originalEvent.touches[0].pageY}}),a(this)}}),this}}),t.fn.extend({slimscroll:t.fn.slimScroll})}(jQuery);
/* ========================================================================
 * Bootstrap: modal.js v3.3.7
 * http://getbootstrap.com/javascript/#modals
 * ========================================================================
 * Copyright 2011-2016 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+function ($) {
  'use strict';

  // MODAL CLASS DEFINITION
  // ======================

  var Modal = function (element, options) {
    this.options             = options
    this.$body               = $(document.body)
    this.$element            = $(element)
    this.$dialog             = this.$element.find('.modal-dialog')
    this.$backdrop           = null
    this.isShown             = null
    this.originalBodyPad     = null
    this.scrollbarWidth      = 0
    this.ignoreBackdropClick = false

    if (this.options.remote) {
      this.$element
        .find('.modal-content')
        .load(this.options.remote, $.proxy(function () {
          this.$element.trigger('loaded.bs.modal')
        }, this))
    }
  }

  Modal.VERSION  = '3.3.7'

  Modal.TRANSITION_DURATION = 300
  Modal.BACKDROP_TRANSITION_DURATION = 150

  Modal.DEFAULTS = {
    backdrop: true,
    keyboard: true,
    show: true
  }

  Modal.prototype.toggle = function (_relatedTarget) {
    return this.isShown ? this.hide() : this.show(_relatedTarget)
  }

  Modal.prototype.show = function (_relatedTarget) {
    var that = this
    var e    = $.Event('show.bs.modal', { relatedTarget: _relatedTarget })

    this.$element.trigger(e)

    if (this.isShown || e.isDefaultPrevented()) return

    this.isShown = true

    this.checkScrollbar()
    this.setScrollbar()
    this.$body.addClass('modal-open')

    this.escape()
    this.resize()

    this.$element.on('click.dismiss.bs.modal', '[data-dismiss="modal"]', $.proxy(this.hide, this))

    this.$dialog.on('mousedown.dismiss.bs.modal', function () {
      that.$element.one('mouseup.dismiss.bs.modal', function (e) {
        if ($(e.target).is(that.$element)) that.ignoreBackdropClick = true
      })
    })

    this.backdrop(function () {
      var transition = $.support.transition && that.$element.hasClass('fade')

      if (!that.$element.parent().length) {
        that.$element.appendTo(that.$body) // don't move modals dom position
      }

      that.$element
        .show()
        .scrollTop(0)

      that.adjustDialog()

      if (transition) {
        that.$element[0].offsetWidth // force reflow
      }

      that.$element.addClass('in')

      that.enforceFocus()

      var e = $.Event('shown.bs.modal', { relatedTarget: _relatedTarget })

      transition ?
        that.$dialog // wait for modal to slide in
          .one('bsTransitionEnd', function () {
            that.$element.trigger('focus').trigger(e)
          })
          .emulateTransitionEnd(Modal.TRANSITION_DURATION) :
        that.$element.trigger('focus').trigger(e)
    })
  }

  Modal.prototype.hide = function (e) {
    if (e) e.preventDefault()

    e = $.Event('hide.bs.modal')

    this.$element.trigger(e)

    if (!this.isShown || e.isDefaultPrevented()) return

    this.isShown = false

    this.escape()
    this.resize()

    $(document).off('focusin.bs.modal')

    this.$element
      .removeClass('in')
      .off('click.dismiss.bs.modal')
      .off('mouseup.dismiss.bs.modal')

    this.$dialog.off('mousedown.dismiss.bs.modal')

    $.support.transition && this.$element.hasClass('fade') ?
      this.$element
        .one('bsTransitionEnd', $.proxy(this.hideModal, this))
        .emulateTransitionEnd(Modal.TRANSITION_DURATION) :
      this.hideModal()
  }

  Modal.prototype.enforceFocus = function () {
    $(document)
      .off('focusin.bs.modal') // guard against infinite focus loop
      .on('focusin.bs.modal', $.proxy(function (e) {
        if (document !== e.target &&
            this.$element[0] !== e.target &&
            !this.$element.has(e.target).length) {
          this.$element.trigger('focus')
        }
      }, this))
  }

  Modal.prototype.escape = function () {
    if (this.isShown && this.options.keyboard) {
      this.$element.on('keydown.dismiss.bs.modal', $.proxy(function (e) {
        e.which == 27 && this.hide()
      }, this))
    } else if (!this.isShown) {
      this.$element.off('keydown.dismiss.bs.modal')
    }
  }

  Modal.prototype.resize = function () {
    if (this.isShown) {
      $(window).on('resize.bs.modal', $.proxy(this.handleUpdate, this))
    } else {
      $(window).off('resize.bs.modal')
    }
  }

  Modal.prototype.hideModal = function () {
    var that = this
    this.$element.hide()
    this.backdrop(function () {
      that.$body.removeClass('modal-open')
      that.resetAdjustments()
      that.resetScrollbar()
      that.$element.trigger('hidden.bs.modal')
    })
  }

  Modal.prototype.removeBackdrop = function () {
    this.$backdrop && this.$backdrop.remove()
    this.$backdrop = null
  }

  Modal.prototype.backdrop = function (callback) {
    var that = this
    var animate = this.$element.hasClass('fade') ? 'fade' : ''

    if (this.isShown && this.options.backdrop) {
      var doAnimate = $.support.transition && animate

      this.$backdrop = $(document.createElement('div'))
        .addClass('modal-backdrop ' + animate)
        .appendTo(this.$body)

      this.$element.on('click.dismiss.bs.modal', $.proxy(function (e) {
        if (this.ignoreBackdropClick) {
          this.ignoreBackdropClick = false
          return
        }
        if (e.target !== e.currentTarget) return
        this.options.backdrop == 'static'
          ? this.$element[0].focus()
          : this.hide()
      }, this))

      if (doAnimate) this.$backdrop[0].offsetWidth // force reflow

      this.$backdrop.addClass('in')

      if (!callback) return

      doAnimate ?
        this.$backdrop
          .one('bsTransitionEnd', callback)
          .emulateTransitionEnd(Modal.BACKDROP_TRANSITION_DURATION) :
        callback()

    } else if (!this.isShown && this.$backdrop) {
      this.$backdrop.removeClass('in')

      var callbackRemove = function () {
        that.removeBackdrop()
        callback && callback()
      }
      $.support.transition && this.$element.hasClass('fade') ?
        this.$backdrop
          .one('bsTransitionEnd', callbackRemove)
          .emulateTransitionEnd(Modal.BACKDROP_TRANSITION_DURATION) :
        callbackRemove()

    } else if (callback) {
      callback()
    }
  }

  // these following methods are used to handle overflowing modals

  Modal.prototype.handleUpdate = function () {
    this.adjustDialog()
  }

  Modal.prototype.adjustDialog = function () {
    var modalIsOverflowing = this.$element[0].scrollHeight > document.documentElement.clientHeight

    this.$element.css({
      paddingLeft:  !this.bodyIsOverflowing && modalIsOverflowing ? this.scrollbarWidth : '',
      paddingRight: this.bodyIsOverflowing && !modalIsOverflowing ? this.scrollbarWidth : ''
    })
  }

  Modal.prototype.resetAdjustments = function () {
    this.$element.css({
      paddingLeft: '',
      paddingRight: ''
    })
  }

  Modal.prototype.checkScrollbar = function () {
    var fullWindowWidth = window.innerWidth
    if (!fullWindowWidth) { // workaround for missing window.innerWidth in IE8
      var documentElementRect = document.documentElement.getBoundingClientRect()
      fullWindowWidth = documentElementRect.right - Math.abs(documentElementRect.left)
    }
    this.bodyIsOverflowing = document.body.clientWidth < fullWindowWidth
    this.scrollbarWidth = this.measureScrollbar()
  }

  Modal.prototype.setScrollbar = function () {
    var bodyPad = parseInt((this.$body.css('padding-right') || 0), 10)
    this.originalBodyPad = document.body.style.paddingRight || ''
    if (this.bodyIsOverflowing) this.$body.css('padding-right', bodyPad + this.scrollbarWidth)
  }

  Modal.prototype.resetScrollbar = function () {
    this.$body.css('padding-right', this.originalBodyPad)
  }

  Modal.prototype.measureScrollbar = function () { // thx walsh
    var scrollDiv = document.createElement('div')
    scrollDiv.className = 'modal-scrollbar-measure'
    this.$body.append(scrollDiv)
    var scrollbarWidth = scrollDiv.offsetWidth - scrollDiv.clientWidth
    this.$body[0].removeChild(scrollDiv)
    return scrollbarWidth
  }


  // MODAL PLUGIN DEFINITION
  // =======================

  function Plugin(option, _relatedTarget) {
    return this.each(function () {
      var $this   = $(this)
      var data    = $this.data('bs.modal')
      var options = $.extend({}, Modal.DEFAULTS, $this.data(), typeof option == 'object' && option)

      if (!data) $this.data('bs.modal', (data = new Modal(this, options)))
      if (typeof option == 'string') data[option](_relatedTarget)
      else if (options.show) data.show(_relatedTarget)
    })
  }

  var old = $.fn.modal

  $.fn.modal             = Plugin
  $.fn.modal.Constructor = Modal


  // MODAL NO CONFLICT
  // =================

  $.fn.modal.noConflict = function () {
    $.fn.modal = old
    return this
  }


  // MODAL DATA-API
  // ==============

  $(document).on('click.bs.modal.data-api', '[data-toggle="modal"]', function (e) {
    var $this   = $(this)
    var href    = $this.attr('href')
    var $target = $($this.attr('data-target') || (href && href.replace(/.*(?=#[^\s]+$)/, ''))) // strip for ie7
    var option  = $target.data('bs.modal') ? 'toggle' : $.extend({ remote: !/#/.test(href) && href }, $target.data(), $this.data())

    if ($this.is('a')) e.preventDefault()

    $target.one('show.bs.modal', function (showEvent) {
      if (showEvent.isDefaultPrevented()) return // only register focus restorer if modal will actually get shown
      $target.one('hidden.bs.modal', function () {
        $this.is(':visible') && $this.trigger('focus')
      })
    })
    Plugin.call($target, option, this)
  })

}(jQuery);

/*!
 * Bootstrap v3.3.7 (http://getbootstrap.com)
 * Copyright 2011-2016 Twitter, Inc.
 * Licensed under the MIT license
 */

if (typeof jQuery === 'undefined') {
  throw new Error('Bootstrap\'s JavaScript requires jQuery')
}

+function ($) {
  'use strict';
  var version = $.fn.jquery.split(' ')[0].split('.')
  if ((version[0] < 2 && version[1] < 9) || (version[0] == 1 && version[1] == 9 && version[2] < 1) || (version[0] > 3)) {
    throw new Error('Bootstrap\'s JavaScript requires jQuery version 1.9.1 or higher, but lower than version 4')
  }
}(jQuery);

/* ========================================================================
 * Bootstrap: transition.js v3.3.7
 * http://getbootstrap.com/javascript/#transitions
 * ========================================================================
 * Copyright 2011-2016 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+function ($) {
  'use strict';

  // CSS TRANSITION SUPPORT (Shoutout: http://www.modernizr.com/)
  // ============================================================

  function transitionEnd() {
    var el = document.createElement('bootstrap')

    var transEndEventNames = {
      WebkitTransition : 'webkitTransitionEnd',
      MozTransition    : 'transitionend',
      OTransition      : 'oTransitionEnd otransitionend',
      transition       : 'transitionend'
    }

    for (var name in transEndEventNames) {
      if (el.style[name] !== undefined) {
        return { end: transEndEventNames[name] }
      }
    }

    return false // explicit for ie8 (  ._.)
  }

  // http://blog.alexmaccaw.com/css-transitions
  $.fn.emulateTransitionEnd = function (duration) {
    var called = false
    var $el = this
    $(this).one('bsTransitionEnd', function () { called = true })
    var callback = function () { if (!called) $($el).trigger($.support.transition.end) }
    setTimeout(callback, duration)
    return this
  }

  $(function () {
    $.support.transition = transitionEnd()

    if (!$.support.transition) return

    $.event.special.bsTransitionEnd = {
      bindType: $.support.transition.end,
      delegateType: $.support.transition.end,
      handle: function (e) {
        if ($(e.target).is(this)) return e.handleObj.handler.apply(this, arguments)
      }
    }
  })

}(jQuery);

/* ========================================================================
 * Bootstrap: alert.js v3.3.7
 * http://getbootstrap.com/javascript/#alerts
 * ========================================================================
 * Copyright 2011-2016 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+function ($) {
  'use strict';

  // ALERT CLASS DEFINITION
  // ======================

  var dismiss = '[data-dismiss="alert"]'
  var Alert   = function (el) {
    $(el).on('click', dismiss, this.close)
  }

  Alert.VERSION = '3.3.7'

  Alert.TRANSITION_DURATION = 150

  Alert.prototype.close = function (e) {
    var $this    = $(this)
    var selector = $this.attr('data-target')

    if (!selector) {
      selector = $this.attr('href')
      selector = selector && selector.replace(/.*(?=#[^\s]*$)/, '') // strip for ie7
    }

    var $parent = $(selector === '#' ? [] : selector)

    if (e) e.preventDefault()

    if (!$parent.length) {
      $parent = $this.closest('.alert')
    }

    $parent.trigger(e = $.Event('close.bs.alert'))

    if (e.isDefaultPrevented()) return

    $parent.removeClass('in')

    function removeElement() {
      // detach from parent, fire event then clean up data
      $parent.detach().trigger('closed.bs.alert').remove()
    }

    $.support.transition && $parent.hasClass('fade') ?
      $parent
        .one('bsTransitionEnd', removeElement)
        .emulateTransitionEnd(Alert.TRANSITION_DURATION) :
      removeElement()
  }


  // ALERT PLUGIN DEFINITION
  // =======================

  function Plugin(option) {
    return this.each(function () {
      var $this = $(this)
      var data  = $this.data('bs.alert')

      if (!data) $this.data('bs.alert', (data = new Alert(this)))
      if (typeof option == 'string') data[option].call($this)
    })
  }

  var old = $.fn.alert

  $.fn.alert             = Plugin
  $.fn.alert.Constructor = Alert


  // ALERT NO CONFLICT
  // =================

  $.fn.alert.noConflict = function () {
    $.fn.alert = old
    return this
  }


  // ALERT DATA-API
  // ==============

  $(document).on('click.bs.alert.data-api', dismiss, Alert.prototype.close)

}(jQuery);

/* ========================================================================
 * Bootstrap: button.js v3.3.7
 * http://getbootstrap.com/javascript/#buttons
 * ========================================================================
 * Copyright 2011-2016 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+function ($) {
  'use strict';

  // BUTTON PUBLIC CLASS DEFINITION
  // ==============================

  var Button = function (element, options) {
    this.$element  = $(element)
    this.options   = $.extend({}, Button.DEFAULTS, options)
    this.isLoading = false
  }

  Button.VERSION  = '3.3.7'

  Button.DEFAULTS = {
    loadingText: 'loading...'
  }

  Button.prototype.setState = function (state) {
    var d    = 'disabled'
    var $el  = this.$element
    var val  = $el.is('input') ? 'val' : 'html'
    var data = $el.data()

    state += 'Text'

    if (data.resetText == null) $el.data('resetText', $el[val]())

    // push to event loop to allow forms to submit
    setTimeout($.proxy(function () {
      $el[val](data[state] == null ? this.options[state] : data[state])

      if (state == 'loadingText') {
        this.isLoading = true
        $el.addClass(d).attr(d, d).prop(d, true)
      } else if (this.isLoading) {
        this.isLoading = false
        $el.removeClass(d).removeAttr(d).prop(d, false)
      }
    }, this), 0)
  }

  Button.prototype.toggle = function () {
    var changed = true
    var $parent = this.$element.closest('[data-toggle="buttons"]')

    if ($parent.length) {
      var $input = this.$element.find('input')
      if ($input.prop('type') == 'radio') {
        if ($input.prop('checked')) changed = false
        $parent.find('.active').removeClass('active')
        this.$element.addClass('active')
      } else if ($input.prop('type') == 'checkbox') {
        if (($input.prop('checked')) !== this.$element.hasClass('active')) changed = false
        this.$element.toggleClass('active')
      }
      $input.prop('checked', this.$element.hasClass('active'))
      if (changed) $input.trigger('change')
    } else {
      this.$element.attr('aria-pressed', !this.$element.hasClass('active'))
      this.$element.toggleClass('active')
    }
  }


  // BUTTON PLUGIN DEFINITION
  // ========================

  function Plugin(option) {
    return this.each(function () {
      var $this   = $(this)
      var data    = $this.data('bs.button')
      var options = typeof option == 'object' && option

      if (!data) $this.data('bs.button', (data = new Button(this, options)))

      if (option == 'toggle') data.toggle()
      else if (option) data.setState(option)
    })
  }

  var old = $.fn.button

  $.fn.button             = Plugin
  $.fn.button.Constructor = Button


  // BUTTON NO CONFLICT
  // ==================

  $.fn.button.noConflict = function () {
    $.fn.button = old
    return this
  }


  // BUTTON DATA-API
  // ===============

  $(document)
    .on('click.bs.button.data-api', '[data-toggle^="button"]', function (e) {
      var $btn = $(e.target).closest('.btn')
      Plugin.call($btn, 'toggle')
      if (!($(e.target).is('input[type="radio"], input[type="checkbox"]'))) {
        // Prevent double click on radios, and the double selections (so cancellation) on checkboxes
        e.preventDefault()
        // The target component still receive the focus
        if ($btn.is('input,button')) $btn.trigger('focus')
        else $btn.find('input:visible,button:visible').first().trigger('focus')
      }
    })
    .on('focus.bs.button.data-api blur.bs.button.data-api', '[data-toggle^="button"]', function (e) {
      $(e.target).closest('.btn').toggleClass('focus', /^focus(in)?$/.test(e.type))
    })

}(jQuery);

/* ========================================================================
 * Bootstrap: carousel.js v3.3.7
 * http://getbootstrap.com/javascript/#carousel
 * ========================================================================
 * Copyright 2011-2016 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+function ($) {
  'use strict';

  // CAROUSEL CLASS DEFINITION
  // =========================

  var Carousel = function (element, options) {
    this.$element    = $(element)
    this.$indicators = this.$element.find('.carousel-indicators')
    this.options     = options
    this.paused      = null
    this.sliding     = null
    this.interval    = null
    this.$active     = null
    this.$items      = null

    this.options.keyboard && this.$element.on('keydown.bs.carousel', $.proxy(this.keydown, this))

    this.options.pause == 'hover' && !('ontouchstart' in document.documentElement) && this.$element
      .on('mouseenter.bs.carousel', $.proxy(this.pause, this))
      .on('mouseleave.bs.carousel', $.proxy(this.cycle, this))
  }

  Carousel.VERSION  = '3.3.7'

  Carousel.TRANSITION_DURATION = 600

  Carousel.DEFAULTS = {
    interval: 5000,
    pause: 'hover',
    wrap: true,
    keyboard: true
  }

  Carousel.prototype.keydown = function (e) {
    if (/input|textarea/i.test(e.target.tagName)) return
    switch (e.which) {
      case 37: this.prev(); break
      case 39: this.next(); break
      default: return
    }

    e.preventDefault()
  }

  Carousel.prototype.cycle = function (e) {
    e || (this.paused = false)

    this.interval && clearInterval(this.interval)

    this.options.interval
      && !this.paused
      && (this.interval = setInterval($.proxy(this.next, this), this.options.interval))

    return this
  }

  Carousel.prototype.getItemIndex = function (item) {
    this.$items = item.parent().children('.item')
    return this.$items.index(item || this.$active)
  }

  Carousel.prototype.getItemForDirection = function (direction, active) {
    var activeIndex = this.getItemIndex(active)
    var willWrap = (direction == 'prev' && activeIndex === 0)
                || (direction == 'next' && activeIndex == (this.$items.length - 1))
    if (willWrap && !this.options.wrap) return active
    var delta = direction == 'prev' ? -1 : 1
    var itemIndex = (activeIndex + delta) % this.$items.length
    return this.$items.eq(itemIndex)
  }

  Carousel.prototype.to = function (pos) {
    var that        = this
    var activeIndex = this.getItemIndex(this.$active = this.$element.find('.item.active'))

    if (pos > (this.$items.length - 1) || pos < 0) return

    if (this.sliding)       return this.$element.one('slid.bs.carousel', function () { that.to(pos) }) // yes, "slid"
    if (activeIndex == pos) return this.pause().cycle()

    return this.slide(pos > activeIndex ? 'next' : 'prev', this.$items.eq(pos))
  }

  Carousel.prototype.pause = function (e) {
    e || (this.paused = true)

    if (this.$element.find('.next, .prev').length && $.support.transition) {
      this.$element.trigger($.support.transition.end)
      this.cycle(true)
    }

    this.interval = clearInterval(this.interval)

    return this
  }

  Carousel.prototype.next = function () {
    if (this.sliding) return
    return this.slide('next')
  }

  Carousel.prototype.prev = function () {
    if (this.sliding) return
    return this.slide('prev')
  }

  Carousel.prototype.slide = function (type, next) {
    var $active   = this.$element.find('.item.active')
    var $next     = next || this.getItemForDirection(type, $active)
    var isCycling = this.interval
    var direction = type == 'next' ? 'left' : 'right'
    var that      = this

    if ($next.hasClass('active')) return (this.sliding = false)

    var relatedTarget = $next[0]
    var slideEvent = $.Event('slide.bs.carousel', {
      relatedTarget: relatedTarget,
      direction: direction
    })
    this.$element.trigger(slideEvent)
    if (slideEvent.isDefaultPrevented()) return

    this.sliding = true

    isCycling && this.pause()

    if (this.$indicators.length) {
      this.$indicators.find('.active').removeClass('active')
      var $nextIndicator = $(this.$indicators.children()[this.getItemIndex($next)])
      $nextIndicator && $nextIndicator.addClass('active')
    }

    var slidEvent = $.Event('slid.bs.carousel', { relatedTarget: relatedTarget, direction: direction }) // yes, "slid"
    if ($.support.transition && this.$element.hasClass('slide')) {
      $next.addClass(type)
      $next[0].offsetWidth // force reflow
      $active.addClass(direction)
      $next.addClass(direction)
      $active
        .one('bsTransitionEnd', function () {
          $next.removeClass([type, direction].join(' ')).addClass('active')
          $active.removeClass(['active', direction].join(' '))
          that.sliding = false
          setTimeout(function () {
            that.$element.trigger(slidEvent)
          }, 0)
        })
        .emulateTransitionEnd(Carousel.TRANSITION_DURATION)
    } else {
      $active.removeClass('active')
      $next.addClass('active')
      this.sliding = false
      this.$element.trigger(slidEvent)
    }

    isCycling && this.cycle()

    return this
  }


  // CAROUSEL PLUGIN DEFINITION
  // ==========================

  function Plugin(option) {
    return this.each(function () {
      var $this   = $(this)
      var data    = $this.data('bs.carousel')
      var options = $.extend({}, Carousel.DEFAULTS, $this.data(), typeof option == 'object' && option)
      var action  = typeof option == 'string' ? option : options.slide

      if (!data) $this.data('bs.carousel', (data = new Carousel(this, options)))
      if (typeof option == 'number') data.to(option)
      else if (action) data[action]()
      else if (options.interval) data.pause().cycle()
    })
  }

  var old = $.fn.carousel

  $.fn.carousel             = Plugin
  $.fn.carousel.Constructor = Carousel


  // CAROUSEL NO CONFLICT
  // ====================

  $.fn.carousel.noConflict = function () {
    $.fn.carousel = old
    return this
  }


  // CAROUSEL DATA-API
  // =================

  var clickHandler = function (e) {
    var href
    var $this   = $(this)
    var $target = $($this.attr('data-target') || (href = $this.attr('href')) && href.replace(/.*(?=#[^\s]+$)/, '')) // strip for ie7
    if (!$target.hasClass('carousel')) return
    var options = $.extend({}, $target.data(), $this.data())
    var slideIndex = $this.attr('data-slide-to')
    if (slideIndex) options.interval = false

    Plugin.call($target, options)

    if (slideIndex) {
      $target.data('bs.carousel').to(slideIndex)
    }

    e.preventDefault()
  }

  $(document)
    .on('click.bs.carousel.data-api', '[data-slide]', clickHandler)
    .on('click.bs.carousel.data-api', '[data-slide-to]', clickHandler)

  $(window).on('load', function () {
    $('[data-ride="carousel"]').each(function () {
      var $carousel = $(this)
      Plugin.call($carousel, $carousel.data())
    })
  })

}(jQuery);

/* ========================================================================
 * Bootstrap: collapse.js v3.3.7
 * http://getbootstrap.com/javascript/#collapse
 * ========================================================================
 * Copyright 2011-2016 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */

/* jshint latedef: false */

+function ($) {
  'use strict';

  // COLLAPSE PUBLIC CLASS DEFINITION
  // ================================

  var Collapse = function (element, options) {
    this.$element      = $(element)
    this.options       = $.extend({}, Collapse.DEFAULTS, options)
    this.$trigger      = $('[data-toggle="collapse"][href="#' + element.id + '"],' +
                           '[data-toggle="collapse"][data-target="#' + element.id + '"]')
    this.transitioning = null

    if (this.options.parent) {
      this.$parent = this.getParent()
    } else {
      this.addAriaAndCollapsedClass(this.$element, this.$trigger)
    }

    if (this.options.toggle) this.toggle()
  }

  Collapse.VERSION  = '3.3.7'

  Collapse.TRANSITION_DURATION = 350

  Collapse.DEFAULTS = {
    toggle: true
  }

  Collapse.prototype.dimension = function () {
    var hasWidth = this.$element.hasClass('width')
    return hasWidth ? 'width' : 'height'
  }

  Collapse.prototype.show = function () {
    if (this.transitioning || this.$element.hasClass('in')) return

    var activesData
    var actives = this.$parent && this.$parent.children('.panel').children('.in, .collapsing')

    if (actives && actives.length) {
      activesData = actives.data('bs.collapse')
      if (activesData && activesData.transitioning) return
    }

    var startEvent = $.Event('show.bs.collapse')
    this.$element.trigger(startEvent)
    if (startEvent.isDefaultPrevented()) return

    if (actives && actives.length) {
      Plugin.call(actives, 'hide')
      activesData || actives.data('bs.collapse', null)
    }

    var dimension = this.dimension()

    this.$element
      .removeClass('collapse')
      .addClass('collapsing')[dimension](0)
      .attr('aria-expanded', true)

    this.$trigger
      .removeClass('collapsed')
      .attr('aria-expanded', true)

    this.transitioning = 1

    var complete = function () {
      this.$element
        .removeClass('collapsing')
        .addClass('collapse in')[dimension]('')
      this.transitioning = 0
      this.$element
        .trigger('shown.bs.collapse')
    }

    if (!$.support.transition) return complete.call(this)

    var scrollSize = $.camelCase(['scroll', dimension].join('-'))

    this.$element
      .one('bsTransitionEnd', $.proxy(complete, this))
      .emulateTransitionEnd(Collapse.TRANSITION_DURATION)[dimension](this.$element[0][scrollSize])
  }

  Collapse.prototype.hide = function () {
    if (this.transitioning || !this.$element.hasClass('in')) return

    var startEvent = $.Event('hide.bs.collapse')
    this.$element.trigger(startEvent)
    if (startEvent.isDefaultPrevented()) return

    var dimension = this.dimension()

    this.$element[dimension](this.$element[dimension]())[0].offsetHeight

    this.$element
      .addClass('collapsing')
      .removeClass('collapse in')
      .attr('aria-expanded', false)

    this.$trigger
      .addClass('collapsed')
      .attr('aria-expanded', false)

    this.transitioning = 1

    var complete = function () {
      this.transitioning = 0
      this.$element
        .removeClass('collapsing')
        .addClass('collapse')
        .trigger('hidden.bs.collapse')
    }

    if (!$.support.transition) return complete.call(this)

    this.$element
      [dimension](0)
      .one('bsTransitionEnd', $.proxy(complete, this))
      .emulateTransitionEnd(Collapse.TRANSITION_DURATION)
  }

  Collapse.prototype.toggle = function () {
    this[this.$element.hasClass('in') ? 'hide' : 'show']()
  }

  Collapse.prototype.getParent = function () {
    return $(this.options.parent)
      .find('[data-toggle="collapse"][data-parent="' + this.options.parent + '"]')
      .each($.proxy(function (i, element) {
        var $element = $(element)
        this.addAriaAndCollapsedClass(getTargetFromTrigger($element), $element)
      }, this))
      .end()
  }

  Collapse.prototype.addAriaAndCollapsedClass = function ($element, $trigger) {
    var isOpen = $element.hasClass('in')

    $element.attr('aria-expanded', isOpen)
    $trigger
      .toggleClass('collapsed', !isOpen)
      .attr('aria-expanded', isOpen)
  }

  function getTargetFromTrigger($trigger) {
    var href
    var target = $trigger.attr('data-target')
      || (href = $trigger.attr('href')) && href.replace(/.*(?=#[^\s]+$)/, '') // strip for ie7

    return $(target)
  }


  // COLLAPSE PLUGIN DEFINITION
  // ==========================

  function Plugin(option) {
    return this.each(function () {
      var $this   = $(this)
      var data    = $this.data('bs.collapse')
      var options = $.extend({}, Collapse.DEFAULTS, $this.data(), typeof option == 'object' && option)

      if (!data && options.toggle && /show|hide/.test(option)) options.toggle = false
      if (!data) $this.data('bs.collapse', (data = new Collapse(this, options)))
      if (typeof option == 'string') data[option]()
    })
  }

  var old = $.fn.collapse

  $.fn.collapse             = Plugin
  $.fn.collapse.Constructor = Collapse


  // COLLAPSE NO CONFLICT
  // ====================

  $.fn.collapse.noConflict = function () {
    $.fn.collapse = old
    return this
  }


  // COLLAPSE DATA-API
  // =================

  $(document).on('click.bs.collapse.data-api', '[data-toggle="collapse"]', function (e) {
    var $this   = $(this)

    if (!$this.attr('data-target')) e.preventDefault()

    var $target = getTargetFromTrigger($this)
    var data    = $target.data('bs.collapse')
    var option  = data ? 'toggle' : $this.data()

    Plugin.call($target, option)
  })

}(jQuery);

/* ========================================================================
 * Bootstrap: dropdown.js v3.3.7
 * http://getbootstrap.com/javascript/#dropdowns
 * ========================================================================
 * Copyright 2011-2016 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+function ($) {
  'use strict';

  // DROPDOWN CLASS DEFINITION
  // =========================

  var backdrop = '.dropdown-backdrop'
  var toggle   = '[data-toggle="dropdown"]'
  var Dropdown = function (element) {
    $(element).on('click.bs.dropdown', this.toggle)
  }

  Dropdown.VERSION = '3.3.7'

  function getParent($this) {
    var selector = $this.attr('data-target')

    if (!selector) {
      selector = $this.attr('href')
      selector = selector && /#[A-Za-z]/.test(selector) && selector.replace(/.*(?=#[^\s]*$)/, '') // strip for ie7
    }

    var $parent = selector && $(selector)

    return $parent && $parent.length ? $parent : $this.parent()
  }

  function clearMenus(e) {
    if (e && e.which === 3) return
    $(backdrop).remove()
    $(toggle).each(function () {
      var $this         = $(this)
      var $parent       = getParent($this)
      var relatedTarget = { relatedTarget: this }

      if (!$parent.hasClass('open')) return

      if (e && e.type == 'click' && /input|textarea/i.test(e.target.tagName) && $.contains($parent[0], e.target)) return

      $parent.trigger(e = $.Event('hide.bs.dropdown', relatedTarget))

      if (e.isDefaultPrevented()) return

      $this.attr('aria-expanded', 'false')
      $parent.removeClass('open').trigger($.Event('hidden.bs.dropdown', relatedTarget))
    })
  }

  Dropdown.prototype.toggle = function (e) {
    var $this = $(this)

    if ($this.is('.disabled, :disabled')) return

    var $parent  = getParent($this)
    var isActive = $parent.hasClass('open')

    clearMenus()

    if (!isActive) {
      if ('ontouchstart' in document.documentElement && !$parent.closest('.navbar-nav').length) {
        // if mobile we use a backdrop because click events don't delegate
        $(document.createElement('div'))
          .addClass('dropdown-backdrop')
          .insertAfter($(this))
          .on('click', clearMenus)
      }

      var relatedTarget = { relatedTarget: this }
      $parent.trigger(e = $.Event('show.bs.dropdown', relatedTarget))

      if (e.isDefaultPrevented()) return

      $this
        .trigger('focus')
        .attr('aria-expanded', 'true')

      $parent
        .toggleClass('open')
        .trigger($.Event('shown.bs.dropdown', relatedTarget))
    }

    return false
  }

  Dropdown.prototype.keydown = function (e) {
    if (!/(38|40|27|32)/.test(e.which) || /input|textarea/i.test(e.target.tagName)) return

    var $this = $(this)

    e.preventDefault()
    e.stopPropagation()

    if ($this.is('.disabled, :disabled')) return

    var $parent  = getParent($this)
    var isActive = $parent.hasClass('open')

    if (!isActive && e.which != 27 || isActive && e.which == 27) {
      if (e.which == 27) $parent.find(toggle).trigger('focus')
      return $this.trigger('click')
    }

    var desc = ' li:not(.disabled):visible a'
    var $items = $parent.find('.dropdown-menu' + desc)

    if (!$items.length) return

    var index = $items.index(e.target)

    if (e.which == 38 && index > 0)                 index--         // up
    if (e.which == 40 && index < $items.length - 1) index++         // down
    if (!~index)                                    index = 0

    $items.eq(index).trigger('focus')
  }


  // DROPDOWN PLUGIN DEFINITION
  // ==========================

  function Plugin(option) {
    return this.each(function () {
      var $this = $(this)
      var data  = $this.data('bs.dropdown')

      if (!data) $this.data('bs.dropdown', (data = new Dropdown(this)))
      if (typeof option == 'string') data[option].call($this)
    })
  }

  var old = $.fn.dropdown

  $.fn.dropdown             = Plugin
  $.fn.dropdown.Constructor = Dropdown


  // DROPDOWN NO CONFLICT
  // ====================

  $.fn.dropdown.noConflict = function () {
    $.fn.dropdown = old
    return this
  }


  // APPLY TO STANDARD DROPDOWN ELEMENTS
  // ===================================

  $(document)
    .on('click.bs.dropdown.data-api', clearMenus)
    .on('click.bs.dropdown.data-api', '.dropdown form', function (e) { e.stopPropagation() })
    .on('click.bs.dropdown.data-api', toggle, Dropdown.prototype.toggle)
    .on('keydown.bs.dropdown.data-api', toggle, Dropdown.prototype.keydown)
    .on('keydown.bs.dropdown.data-api', '.dropdown-menu', Dropdown.prototype.keydown)

}(jQuery);

/* ========================================================================
 * Bootstrap: modal.js v3.3.7
 * http://getbootstrap.com/javascript/#modals
 * ========================================================================
 * Copyright 2011-2016 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+function ($) {
  'use strict';

  // MODAL CLASS DEFINITION
  // ======================

  var Modal = function (element, options) {
    this.options             = options
    this.$body               = $(document.body)
    this.$element            = $(element)
    this.$dialog             = this.$element.find('.modal-dialog')
    this.$backdrop           = null
    this.isShown             = null
    this.originalBodyPad     = null
    this.scrollbarWidth      = 0
    this.ignoreBackdropClick = false

    if (this.options.remote) {
      this.$element
        .find('.modal-content')
        .load(this.options.remote, $.proxy(function () {
          this.$element.trigger('loaded.bs.modal')
        }, this))
    }
  }

  Modal.VERSION  = '3.3.7'

  Modal.TRANSITION_DURATION = 300
  Modal.BACKDROP_TRANSITION_DURATION = 150

  Modal.DEFAULTS = {
    backdrop: true,
    keyboard: true,
    show: true
  }

  Modal.prototype.toggle = function (_relatedTarget) {
    return this.isShown ? this.hide() : this.show(_relatedTarget)
  }

  Modal.prototype.show = function (_relatedTarget) {
    var that = this
    var e    = $.Event('show.bs.modal', { relatedTarget: _relatedTarget })

    this.$element.trigger(e)

    if (this.isShown || e.isDefaultPrevented()) return

    this.isShown = true

    this.checkScrollbar()
    this.setScrollbar()
    this.$body.addClass('modal-open')

    this.escape()
    this.resize()

    this.$element.on('click.dismiss.bs.modal', '[data-dismiss="modal"]', $.proxy(this.hide, this))

    this.$dialog.on('mousedown.dismiss.bs.modal', function () {
      that.$element.one('mouseup.dismiss.bs.modal', function (e) {
        if ($(e.target).is(that.$element)) that.ignoreBackdropClick = true
      })
    })

    this.backdrop(function () {
      var transition = $.support.transition && that.$element.hasClass('fade')

      if (!that.$element.parent().length) {
        that.$element.appendTo(that.$body) // don't move modals dom position
      }

      that.$element
        .show()
        .scrollTop(0)

      that.adjustDialog()

      if (transition) {
        that.$element[0].offsetWidth // force reflow
      }

      that.$element.addClass('in')

      that.enforceFocus()

      var e = $.Event('shown.bs.modal', { relatedTarget: _relatedTarget })

      transition ?
        that.$dialog // wait for modal to slide in
          .one('bsTransitionEnd', function () {
            that.$element.trigger('focus').trigger(e)
          })
          .emulateTransitionEnd(Modal.TRANSITION_DURATION) :
        that.$element.trigger('focus').trigger(e)
    })
  }

  Modal.prototype.hide = function (e) {
    if (e) e.preventDefault()

    e = $.Event('hide.bs.modal')

    this.$element.trigger(e)

    if (!this.isShown || e.isDefaultPrevented()) return

    this.isShown = false

    this.escape()
    this.resize()

    $(document).off('focusin.bs.modal')

    this.$element
      .removeClass('in')
      .off('click.dismiss.bs.modal')
      .off('mouseup.dismiss.bs.modal')

    this.$dialog.off('mousedown.dismiss.bs.modal')

    $.support.transition && this.$element.hasClass('fade') ?
      this.$element
        .one('bsTransitionEnd', $.proxy(this.hideModal, this))
        .emulateTransitionEnd(Modal.TRANSITION_DURATION) :
      this.hideModal()
  }

  Modal.prototype.enforceFocus = function () {
    $(document)
      .off('focusin.bs.modal') // guard against infinite focus loop
      .on('focusin.bs.modal', $.proxy(function (e) {
        if (document !== e.target &&
            this.$element[0] !== e.target &&
            !this.$element.has(e.target).length) {
          this.$element.trigger('focus')
        }
      }, this))
  }

  Modal.prototype.escape = function () {
    if (this.isShown && this.options.keyboard) {
      this.$element.on('keydown.dismiss.bs.modal', $.proxy(function (e) {
        e.which == 27 && this.hide()
      }, this))
    } else if (!this.isShown) {
      this.$element.off('keydown.dismiss.bs.modal')
    }
  }

  Modal.prototype.resize = function () {
    if (this.isShown) {
      $(window).on('resize.bs.modal', $.proxy(this.handleUpdate, this))
    } else {
      $(window).off('resize.bs.modal')
    }
  }

  Modal.prototype.hideModal = function () {
    var that = this
    this.$element.hide()
    this.backdrop(function () {
      that.$body.removeClass('modal-open')
      that.resetAdjustments()
      that.resetScrollbar()
      that.$element.trigger('hidden.bs.modal')
    })
  }

  Modal.prototype.removeBackdrop = function () {
    this.$backdrop && this.$backdrop.remove()
    this.$backdrop = null
  }

  Modal.prototype.backdrop = function (callback) {
    var that = this
    var animate = this.$element.hasClass('fade') ? 'fade' : ''

    if (this.isShown && this.options.backdrop) {
      var doAnimate = $.support.transition && animate

      this.$backdrop = $(document.createElement('div'))
        .addClass('modal-backdrop ' + animate)
        .appendTo(this.$body)

      this.$element.on('click.dismiss.bs.modal', $.proxy(function (e) {
        if (this.ignoreBackdropClick) {
          this.ignoreBackdropClick = false
          return
        }
        if (e.target !== e.currentTarget) return
        this.options.backdrop == 'static'
          ? this.$element[0].focus()
          : this.hide()
      }, this))

      if (doAnimate) this.$backdrop[0].offsetWidth // force reflow

      this.$backdrop.addClass('in')

      if (!callback) return

      doAnimate ?
        this.$backdrop
          .one('bsTransitionEnd', callback)
          .emulateTransitionEnd(Modal.BACKDROP_TRANSITION_DURATION) :
        callback()

    } else if (!this.isShown && this.$backdrop) {
      this.$backdrop.removeClass('in')

      var callbackRemove = function () {
        that.removeBackdrop()
        callback && callback()
      }
      $.support.transition && this.$element.hasClass('fade') ?
        this.$backdrop
          .one('bsTransitionEnd', callbackRemove)
          .emulateTransitionEnd(Modal.BACKDROP_TRANSITION_DURATION) :
        callbackRemove()

    } else if (callback) {
      callback()
    }
  }

  // these following methods are used to handle overflowing modals

  Modal.prototype.handleUpdate = function () {
    this.adjustDialog()
  }

  Modal.prototype.adjustDialog = function () {
    var modalIsOverflowing = this.$element[0].scrollHeight > document.documentElement.clientHeight

    this.$element.css({
      paddingLeft:  !this.bodyIsOverflowing && modalIsOverflowing ? this.scrollbarWidth : '',
      paddingRight: this.bodyIsOverflowing && !modalIsOverflowing ? this.scrollbarWidth : ''
    })
  }

  Modal.prototype.resetAdjustments = function () {
    this.$element.css({
      paddingLeft: '',
      paddingRight: ''
    })
  }

  Modal.prototype.checkScrollbar = function () {
    var fullWindowWidth = window.innerWidth
    if (!fullWindowWidth) { // workaround for missing window.innerWidth in IE8
      var documentElementRect = document.documentElement.getBoundingClientRect()
      fullWindowWidth = documentElementRect.right - Math.abs(documentElementRect.left)
    }
    this.bodyIsOverflowing = document.body.clientWidth < fullWindowWidth
    this.scrollbarWidth = this.measureScrollbar()
  }

  Modal.prototype.setScrollbar = function () {
    var bodyPad = parseInt((this.$body.css('padding-right') || 0), 10)
    this.originalBodyPad = document.body.style.paddingRight || ''
    if (this.bodyIsOverflowing) this.$body.css('padding-right', bodyPad + this.scrollbarWidth)
  }

  Modal.prototype.resetScrollbar = function () {
    this.$body.css('padding-right', this.originalBodyPad)
  }

  Modal.prototype.measureScrollbar = function () { // thx walsh
    var scrollDiv = document.createElement('div')
    scrollDiv.className = 'modal-scrollbar-measure'
    this.$body.append(scrollDiv)
    var scrollbarWidth = scrollDiv.offsetWidth - scrollDiv.clientWidth
    this.$body[0].removeChild(scrollDiv)
    return scrollbarWidth
  }


  // MODAL PLUGIN DEFINITION
  // =======================

  function Plugin(option, _relatedTarget) {
    return this.each(function () {
      var $this   = $(this)
      var data    = $this.data('bs.modal')
      var options = $.extend({}, Modal.DEFAULTS, $this.data(), typeof option == 'object' && option)

      if (!data) $this.data('bs.modal', (data = new Modal(this, options)))
      if (typeof option == 'string') data[option](_relatedTarget)
      else if (options.show) data.show(_relatedTarget)
    })
  }

  var old = $.fn.modal

  $.fn.modal             = Plugin
  $.fn.modal.Constructor = Modal


  // MODAL NO CONFLICT
  // =================

  $.fn.modal.noConflict = function () {
    $.fn.modal = old
    return this
  }


  // MODAL DATA-API
  // ==============

  $(document).on('click.bs.modal.data-api', '[data-toggle="modal"]', function (e) {
    var $this   = $(this)
    var href    = $this.attr('href')
    var $target = $($this.attr('data-target') || (href && href.replace(/.*(?=#[^\s]+$)/, ''))) // strip for ie7
    var option  = $target.data('bs.modal') ? 'toggle' : $.extend({ remote: !/#/.test(href) && href }, $target.data(), $this.data())

    if ($this.is('a')) e.preventDefault()

    $target.one('show.bs.modal', function (showEvent) {
      if (showEvent.isDefaultPrevented()) return // only register focus restorer if modal will actually get shown
      $target.one('hidden.bs.modal', function () {
        $this.is(':visible') && $this.trigger('focus')
      })
    })
    Plugin.call($target, option, this)
  })

}(jQuery);

/* ========================================================================
 * Bootstrap: tooltip.js v3.3.7
 * http://getbootstrap.com/javascript/#tooltip
 * Inspired by the original jQuery.tipsy by Jason Frame
 * ========================================================================
 * Copyright 2011-2016 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+function ($) {
  'use strict';

  // TOOLTIP PUBLIC CLASS DEFINITION
  // ===============================

  var Tooltip = function (element, options) {
    this.type       = null
    this.options    = null
    this.enabled    = null
    this.timeout    = null
    this.hoverState = null
    this.$element   = null
    this.inState    = null

    this.init('tooltip', element, options)
  }

  Tooltip.VERSION  = '3.3.7'

  Tooltip.TRANSITION_DURATION = 150

  Tooltip.DEFAULTS = {
    animation: true,
    placement: 'top',
    selector: false,
    template: '<div class="tooltip" role="tooltip"><div class="tooltip-arrow"></div><div class="tooltip-inner"></div></div>',
    trigger: 'hover focus',
    title: '',
    delay: 0,
    html: false,
    container: false,
    viewport: {
      selector: 'body',
      padding: 0
    }
  }

  Tooltip.prototype.init = function (type, element, options) {
    this.enabled   = true
    this.type      = type
    this.$element  = $(element)
    this.options   = this.getOptions(options)
    this.$viewport = this.options.viewport && $($.isFunction(this.options.viewport) ? this.options.viewport.call(this, this.$element) : (this.options.viewport.selector || this.options.viewport))
    this.inState   = { click: false, hover: false, focus: false }

    if (this.$element[0] instanceof document.constructor && !this.options.selector) {
      throw new Error('`selector` option must be specified when initializing ' + this.type + ' on the window.document object!')
    }

    var triggers = this.options.trigger.split(' ')

    for (var i = triggers.length; i--;) {
      var trigger = triggers[i]

      if (trigger == 'click') {
        this.$element.on('click.' + this.type, this.options.selector, $.proxy(this.toggle, this))
      } else if (trigger != 'manual') {
        var eventIn  = trigger == 'hover' ? 'mouseenter' : 'focusin'
        var eventOut = trigger == 'hover' ? 'mouseleave' : 'focusout'

        this.$element.on(eventIn  + '.' + this.type, this.options.selector, $.proxy(this.enter, this))
        this.$element.on(eventOut + '.' + this.type, this.options.selector, $.proxy(this.leave, this))
      }
    }

    this.options.selector ?
      (this._options = $.extend({}, this.options, { trigger: 'manual', selector: '' })) :
      this.fixTitle()
  }

  Tooltip.prototype.getDefaults = function () {
    return Tooltip.DEFAULTS
  }

  Tooltip.prototype.getOptions = function (options) {
    options = $.extend({}, this.getDefaults(), this.$element.data(), options)

    if (options.delay && typeof options.delay == 'number') {
      options.delay = {
        show: options.delay,
        hide: options.delay
      }
    }

    return options
  }

  Tooltip.prototype.getDelegateOptions = function () {
    var options  = {}
    var defaults = this.getDefaults()

    this._options && $.each(this._options, function (key, value) {
      if (defaults[key] != value) options[key] = value
    })

    return options
  }

  Tooltip.prototype.enter = function (obj) {
    var self = obj instanceof this.constructor ?
      obj : $(obj.currentTarget).data('bs.' + this.type)

    if (!self) {
      self = new this.constructor(obj.currentTarget, this.getDelegateOptions())
      $(obj.currentTarget).data('bs.' + this.type, self)
    }

    if (obj instanceof $.Event) {
      self.inState[obj.type == 'focusin' ? 'focus' : 'hover'] = true
    }

    if (self.tip().hasClass('in') || self.hoverState == 'in') {
      self.hoverState = 'in'
      return
    }

    clearTimeout(self.timeout)

    self.hoverState = 'in'

    if (!self.options.delay || !self.options.delay.show) return self.show()

    self.timeout = setTimeout(function () {
      if (self.hoverState == 'in') self.show()
    }, self.options.delay.show)
  }

  Tooltip.prototype.isInStateTrue = function () {
    for (var key in this.inState) {
      if (this.inState[key]) return true
    }

    return false
  }

  Tooltip.prototype.leave = function (obj) {
    var self = obj instanceof this.constructor ?
      obj : $(obj.currentTarget).data('bs.' + this.type)

    if (!self) {
      self = new this.constructor(obj.currentTarget, this.getDelegateOptions())
      $(obj.currentTarget).data('bs.' + this.type, self)
    }

    if (obj instanceof $.Event) {
      self.inState[obj.type == 'focusout' ? 'focus' : 'hover'] = false
    }

    if (self.isInStateTrue()) return

    clearTimeout(self.timeout)

    self.hoverState = 'out'

    if (!self.options.delay || !self.options.delay.hide) return self.hide()

    self.timeout = setTimeout(function () {
      if (self.hoverState == 'out') self.hide()
    }, self.options.delay.hide)
  }

  Tooltip.prototype.show = function () {
    var e = $.Event('show.bs.' + this.type)

    if (this.hasContent() && this.enabled) {
      this.$element.trigger(e)

      var inDom = $.contains(this.$element[0].ownerDocument.documentElement, this.$element[0])
      if (e.isDefaultPrevented() || !inDom) return
      var that = this

      var $tip = this.tip()

      var tipId = this.getUID(this.type)

      this.setContent()
      $tip.attr('id', tipId)
      this.$element.attr('aria-describedby', tipId)

      if (this.options.animation) $tip.addClass('fade')

      var placement = typeof this.options.placement == 'function' ?
        this.options.placement.call(this, $tip[0], this.$element[0]) :
        this.options.placement

      var autoToken = /\s?auto?\s?/i
      var autoPlace = autoToken.test(placement)
      if (autoPlace) placement = placement.replace(autoToken, '') || 'top'

      $tip
        .detach()
        .css({ top: 0, left: 0, display: 'block' })
        .addClass(placement)
        .data('bs.' + this.type, this)

      this.options.container ? $tip.appendTo(this.options.container) : $tip.insertAfter(this.$element)
      this.$element.trigger('inserted.bs.' + this.type)

      var pos          = this.getPosition()
      var actualWidth  = $tip[0].offsetWidth
      var actualHeight = $tip[0].offsetHeight

      if (autoPlace) {
        var orgPlacement = placement
        var viewportDim = this.getPosition(this.$viewport)

        placement = placement == 'bottom' && pos.bottom + actualHeight > viewportDim.bottom ? 'top'    :
                    placement == 'top'    && pos.top    - actualHeight < viewportDim.top    ? 'bottom' :
                    placement == 'right'  && pos.right  + actualWidth  > viewportDim.width  ? 'left'   :
                    placement == 'left'   && pos.left   - actualWidth  < viewportDim.left   ? 'right'  :
                    placement

        $tip
          .removeClass(orgPlacement)
          .addClass(placement)
      }

      var calculatedOffset = this.getCalculatedOffset(placement, pos, actualWidth, actualHeight)

      this.applyPlacement(calculatedOffset, placement)

      var complete = function () {
        var prevHoverState = that.hoverState
        that.$element.trigger('shown.bs.' + that.type)
        that.hoverState = null

        if (prevHoverState == 'out') that.leave(that)
      }

      $.support.transition && this.$tip.hasClass('fade') ?
        $tip
          .one('bsTransitionEnd', complete)
          .emulateTransitionEnd(Tooltip.TRANSITION_DURATION) :
        complete()
    }
  }

  Tooltip.prototype.applyPlacement = function (offset, placement) {
    var $tip   = this.tip()
    var width  = $tip[0].offsetWidth
    var height = $tip[0].offsetHeight

    // manually read margins because getBoundingClientRect includes difference
    var marginTop = parseInt($tip.css('margin-top'), 10)
    var marginLeft = parseInt($tip.css('margin-left'), 10)

    // we must check for NaN for ie 8/9
    if (isNaN(marginTop))  marginTop  = 0
    if (isNaN(marginLeft)) marginLeft = 0

    offset.top  += marginTop
    offset.left += marginLeft

    // $.fn.offset doesn't round pixel values
    // so we use setOffset directly with our own function B-0
    $.offset.setOffset($tip[0], $.extend({
      using: function (props) {
        $tip.css({
          top: Math.round(props.top),
          left: Math.round(props.left)
        })
      }
    }, offset), 0)

    $tip.addClass('in')

    // check to see if placing tip in new offset caused the tip to resize itself
    var actualWidth  = $tip[0].offsetWidth
    var actualHeight = $tip[0].offsetHeight

    if (placement == 'top' && actualHeight != height) {
      offset.top = offset.top + height - actualHeight
    }

    var delta = this.getViewportAdjustedDelta(placement, offset, actualWidth, actualHeight)

    if (delta.left) offset.left += delta.left
    else offset.top += delta.top

    var isVertical          = /top|bottom/.test(placement)
    var arrowDelta          = isVertical ? delta.left * 2 - width + actualWidth : delta.top * 2 - height + actualHeight
    var arrowOffsetPosition = isVertical ? 'offsetWidth' : 'offsetHeight'

    $tip.offset(offset)
    this.replaceArrow(arrowDelta, $tip[0][arrowOffsetPosition], isVertical)
  }

  Tooltip.prototype.replaceArrow = function (delta, dimension, isVertical) {
    this.arrow()
      .css(isVertical ? 'left' : 'top', 50 * (1 - delta / dimension) + '%')
      .css(isVertical ? 'top' : 'left', '')
  }

  Tooltip.prototype.setContent = function () {
    var $tip  = this.tip()
    var title = this.getTitle()

    $tip.find('.tooltip-inner')[this.options.html ? 'html' : 'text'](title)
    $tip.removeClass('fade in top bottom left right')
  }

  Tooltip.prototype.hide = function (callback) {
    var that = this
    var $tip = $(this.$tip)
    var e    = $.Event('hide.bs.' + this.type)

    function complete() {
      if (that.hoverState != 'in') $tip.detach()
      if (that.$element) { // TODO: Check whether guarding this code with this `if` is really necessary.
        that.$element
          .removeAttr('aria-describedby')
          .trigger('hidden.bs.' + that.type)
      }
      callback && callback()
    }

    this.$element.trigger(e)

    if (e.isDefaultPrevented()) return

    $tip.removeClass('in')

    $.support.transition && $tip.hasClass('fade') ?
      $tip
        .one('bsTransitionEnd', complete)
        .emulateTransitionEnd(Tooltip.TRANSITION_DURATION) :
      complete()

    this.hoverState = null

    return this
  }

  Tooltip.prototype.fixTitle = function () {
    var $e = this.$element
    if ($e.attr('title') || typeof $e.attr('data-original-title') != 'string') {
      $e.attr('data-original-title', $e.attr('title') || '').attr('title', '')
    }
  }

  Tooltip.prototype.hasContent = function () {
    return this.getTitle()
  }

  Tooltip.prototype.getPosition = function ($element) {
    $element   = $element || this.$element

    var el     = $element[0]
    var isBody = el.tagName == 'BODY'

    var elRect    = el.getBoundingClientRect()
    if (elRect.width == null) {
      // width and height are missing in IE8, so compute them manually; see https://github.com/twbs/bootstrap/issues/14093
      elRect = $.extend({}, elRect, { width: elRect.right - elRect.left, height: elRect.bottom - elRect.top })
    }
    var isSvg = window.SVGElement && el instanceof window.SVGElement
    // Avoid using $.offset() on SVGs since it gives incorrect results in jQuery 3.
    // See https://github.com/twbs/bootstrap/issues/20280
    var elOffset  = isBody ? { top: 0, left: 0 } : (isSvg ? null : $element.offset())
    var scroll    = { scroll: isBody ? document.documentElement.scrollTop || document.body.scrollTop : $element.scrollTop() }
    var outerDims = isBody ? { width: $(window).width(), height: $(window).height() } : null

    return $.extend({}, elRect, scroll, outerDims, elOffset)
  }

  Tooltip.prototype.getCalculatedOffset = function (placement, pos, actualWidth, actualHeight) {
    return placement == 'bottom' ? { top: pos.top + pos.height,   left: pos.left + pos.width / 2 - actualWidth / 2 } :
           placement == 'top'    ? { top: pos.top - actualHeight, left: pos.left + pos.width / 2 - actualWidth / 2 } :
           placement == 'left'   ? { top: pos.top + pos.height / 2 - actualHeight / 2, left: pos.left - actualWidth } :
        /* placement == 'right' */ { top: pos.top + pos.height / 2 - actualHeight / 2, left: pos.left + pos.width }

  }

  Tooltip.prototype.getViewportAdjustedDelta = function (placement, pos, actualWidth, actualHeight) {
    var delta = { top: 0, left: 0 }
    if (!this.$viewport) return delta

    var viewportPadding = this.options.viewport && this.options.viewport.padding || 0
    var viewportDimensions = this.getPosition(this.$viewport)

    if (/right|left/.test(placement)) {
      var topEdgeOffset    = pos.top - viewportPadding - viewportDimensions.scroll
      var bottomEdgeOffset = pos.top + viewportPadding - viewportDimensions.scroll + actualHeight
      if (topEdgeOffset < viewportDimensions.top) { // top overflow
        delta.top = viewportDimensions.top - topEdgeOffset
      } else if (bottomEdgeOffset > viewportDimensions.top + viewportDimensions.height) { // bottom overflow
        delta.top = viewportDimensions.top + viewportDimensions.height - bottomEdgeOffset
      }
    } else {
      var leftEdgeOffset  = pos.left - viewportPadding
      var rightEdgeOffset = pos.left + viewportPadding + actualWidth
      if (leftEdgeOffset < viewportDimensions.left) { // left overflow
        delta.left = viewportDimensions.left - leftEdgeOffset
      } else if (rightEdgeOffset > viewportDimensions.right) { // right overflow
        delta.left = viewportDimensions.left + viewportDimensions.width - rightEdgeOffset
      }
    }

    return delta
  }

  Tooltip.prototype.getTitle = function () {
    var title
    var $e = this.$element
    var o  = this.options

    title = $e.attr('data-original-title')
      || (typeof o.title == 'function' ? o.title.call($e[0]) :  o.title)

    return title
  }

  Tooltip.prototype.getUID = function (prefix) {
    do prefix += ~~(Math.random() * 1000000)
    while (document.getElementById(prefix))
    return prefix
  }

  Tooltip.prototype.tip = function () {
    if (!this.$tip) {
      this.$tip = $(this.options.template)
      if (this.$tip.length != 1) {
        throw new Error(this.type + ' `template` option must consist of exactly 1 top-level element!')
      }
    }
    return this.$tip
  }

  Tooltip.prototype.arrow = function () {
    return (this.$arrow = this.$arrow || this.tip().find('.tooltip-arrow'))
  }

  Tooltip.prototype.enable = function () {
    this.enabled = true
  }

  Tooltip.prototype.disable = function () {
    this.enabled = false
  }

  Tooltip.prototype.toggleEnabled = function () {
    this.enabled = !this.enabled
  }

  Tooltip.prototype.toggle = function (e) {
    var self = this
    if (e) {
      self = $(e.currentTarget).data('bs.' + this.type)
      if (!self) {
        self = new this.constructor(e.currentTarget, this.getDelegateOptions())
        $(e.currentTarget).data('bs.' + this.type, self)
      }
    }

    if (e) {
      self.inState.click = !self.inState.click
      if (self.isInStateTrue()) self.enter(self)
      else self.leave(self)
    } else {
      self.tip().hasClass('in') ? self.leave(self) : self.enter(self)
    }
  }

  Tooltip.prototype.destroy = function () {
    var that = this
    clearTimeout(this.timeout)
    this.hide(function () {
      that.$element.off('.' + that.type).removeData('bs.' + that.type)
      if (that.$tip) {
        that.$tip.detach()
      }
      that.$tip = null
      that.$arrow = null
      that.$viewport = null
      that.$element = null
    })
  }


  // TOOLTIP PLUGIN DEFINITION
  // =========================

  function Plugin(option) {
    return this.each(function () {
      var $this   = $(this)
      var data    = $this.data('bs.tooltip')
      var options = typeof option == 'object' && option

      if (!data && /destroy|hide/.test(option)) return
      if (!data) $this.data('bs.tooltip', (data = new Tooltip(this, options)))
      if (typeof option == 'string') data[option]()
    })
  }

  var old = $.fn.tooltip

  $.fn.tooltip             = Plugin
  $.fn.tooltip.Constructor = Tooltip


  // TOOLTIP NO CONFLICT
  // ===================

  $.fn.tooltip.noConflict = function () {
    $.fn.tooltip = old
    return this
  }

}(jQuery);

/* ========================================================================
 * Bootstrap: popover.js v3.3.7
 * http://getbootstrap.com/javascript/#popovers
 * ========================================================================
 * Copyright 2011-2016 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+function ($) {
  'use strict';

  // POPOVER PUBLIC CLASS DEFINITION
  // ===============================

  var Popover = function (element, options) {
    this.init('popover', element, options)
  }

  if (!$.fn.tooltip) throw new Error('Popover requires tooltip.js')

  Popover.VERSION  = '3.3.7'

  Popover.DEFAULTS = $.extend({}, $.fn.tooltip.Constructor.DEFAULTS, {
    placement: 'right',
    trigger: 'click',
    content: '',
    template: '<div class="popover" role="tooltip"><div class="arrow"></div><h3 class="popover-title"></h3><div class="popover-content"></div></div>'
  })


  // NOTE: POPOVER EXTENDS tooltip.js
  // ================================

  Popover.prototype = $.extend({}, $.fn.tooltip.Constructor.prototype)

  Popover.prototype.constructor = Popover

  Popover.prototype.getDefaults = function () {
    return Popover.DEFAULTS
  }

  Popover.prototype.setContent = function () {
    var $tip    = this.tip()
    var title   = this.getTitle()
    var content = this.getContent()

    $tip.find('.popover-title')[this.options.html ? 'html' : 'text'](title)
    $tip.find('.popover-content').children().detach().end()[ // we use append for html objects to maintain js events
      this.options.html ? (typeof content == 'string' ? 'html' : 'append') : 'text'
    ](content)

    $tip.removeClass('fade top bottom left right in')

    // IE8 doesn't accept hiding via the `:empty` pseudo selector, we have to do
    // this manually by checking the contents.
    if (!$tip.find('.popover-title').html()) $tip.find('.popover-title').hide()
  }

  Popover.prototype.hasContent = function () {
    return this.getTitle() || this.getContent()
  }

  Popover.prototype.getContent = function () {
    var $e = this.$element
    var o  = this.options

    return $e.attr('data-content')
      || (typeof o.content == 'function' ?
            o.content.call($e[0]) :
            o.content)
  }

  Popover.prototype.arrow = function () {
    return (this.$arrow = this.$arrow || this.tip().find('.arrow'))
  }


  // POPOVER PLUGIN DEFINITION
  // =========================

  function Plugin(option) {
    return this.each(function () {
      var $this   = $(this)
      var data    = $this.data('bs.popover')
      var options = typeof option == 'object' && option

      if (!data && /destroy|hide/.test(option)) return
      if (!data) $this.data('bs.popover', (data = new Popover(this, options)))
      if (typeof option == 'string') data[option]()
    })
  }

  var old = $.fn.popover

  $.fn.popover             = Plugin
  $.fn.popover.Constructor = Popover


  // POPOVER NO CONFLICT
  // ===================

  $.fn.popover.noConflict = function () {
    $.fn.popover = old
    return this
  }

}(jQuery);

/* ========================================================================
 * Bootstrap: scrollspy.js v3.3.7
 * http://getbootstrap.com/javascript/#scrollspy
 * ========================================================================
 * Copyright 2011-2016 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+function ($) {
  'use strict';

  // SCROLLSPY CLASS DEFINITION
  // ==========================

  function ScrollSpy(element, options) {
    this.$body          = $(document.body)
    this.$scrollElement = $(element).is(document.body) ? $(window) : $(element)
    this.options        = $.extend({}, ScrollSpy.DEFAULTS, options)
    this.selector       = (this.options.target || '') + ' .nav li > a'
    this.offsets        = []
    this.targets        = []
    this.activeTarget   = null
    this.scrollHeight   = 0

    this.$scrollElement.on('scroll.bs.scrollspy', $.proxy(this.process, this))
    this.refresh()
    this.process()
  }

  ScrollSpy.VERSION  = '3.3.7'

  ScrollSpy.DEFAULTS = {
    offset: 10
  }

  ScrollSpy.prototype.getScrollHeight = function () {
    return this.$scrollElement[0].scrollHeight || Math.max(this.$body[0].scrollHeight, document.documentElement.scrollHeight)
  }

  ScrollSpy.prototype.refresh = function () {
    var that          = this
    var offsetMethod  = 'offset'
    var offsetBase    = 0

    this.offsets      = []
    this.targets      = []
    this.scrollHeight = this.getScrollHeight()

    if (!$.isWindow(this.$scrollElement[0])) {
      offsetMethod = 'position'
      offsetBase   = this.$scrollElement.scrollTop()
    }

    this.$body
      .find(this.selector)
      .map(function () {
        var $el   = $(this)
        var href  = $el.data('target') || $el.attr('href')
        var $href = /^#./.test(href) && $(href)

        return ($href
          && $href.length
          && $href.is(':visible')
          && [[$href[offsetMethod]().top + offsetBase, href]]) || null
      })
      .sort(function (a, b) { return a[0] - b[0] })
      .each(function () {
        that.offsets.push(this[0])
        that.targets.push(this[1])
      })
  }

  ScrollSpy.prototype.process = function () {
    var scrollTop    = this.$scrollElement.scrollTop() + this.options.offset
    var scrollHeight = this.getScrollHeight()
    var maxScroll    = this.options.offset + scrollHeight - this.$scrollElement.height()
    var offsets      = this.offsets
    var targets      = this.targets
    var activeTarget = this.activeTarget
    var i

    if (this.scrollHeight != scrollHeight) {
      this.refresh()
    }

    if (scrollTop >= maxScroll) {
      return activeTarget != (i = targets[targets.length - 1]) && this.activate(i)
    }

    if (activeTarget && scrollTop < offsets[0]) {
      this.activeTarget = null
      return this.clear()
    }

    for (i = offsets.length; i--;) {
      activeTarget != targets[i]
        && scrollTop >= offsets[i]
        && (offsets[i + 1] === undefined || scrollTop < offsets[i + 1])
        && this.activate(targets[i])
    }
  }

  ScrollSpy.prototype.activate = function (target) {
    this.activeTarget = target

    this.clear()

    var selector = this.selector +
      '[data-target="' + target + '"],' +
      this.selector + '[href="' + target + '"]'

    var active = $(selector)
      .parents('li')
      .addClass('active')

    if (active.parent('.dropdown-menu').length) {
      active = active
        .closest('li.dropdown')
        .addClass('active')
    }

    active.trigger('activate.bs.scrollspy')
  }

  ScrollSpy.prototype.clear = function () {
    $(this.selector)
      .parentsUntil(this.options.target, '.active')
      .removeClass('active')
  }


  // SCROLLSPY PLUGIN DEFINITION
  // ===========================

  function Plugin(option) {
    return this.each(function () {
      var $this   = $(this)
      var data    = $this.data('bs.scrollspy')
      var options = typeof option == 'object' && option

      if (!data) $this.data('bs.scrollspy', (data = new ScrollSpy(this, options)))
      if (typeof option == 'string') data[option]()
    })
  }

  var old = $.fn.scrollspy

  $.fn.scrollspy             = Plugin
  $.fn.scrollspy.Constructor = ScrollSpy


  // SCROLLSPY NO CONFLICT
  // =====================

  $.fn.scrollspy.noConflict = function () {
    $.fn.scrollspy = old
    return this
  }


  // SCROLLSPY DATA-API
  // ==================

  $(window).on('load.bs.scrollspy.data-api', function () {
    $('[data-spy="scroll"]').each(function () {
      var $spy = $(this)
      Plugin.call($spy, $spy.data())
    })
  })

}(jQuery);

/* ========================================================================
 * Bootstrap: tab.js v3.3.7
 * http://getbootstrap.com/javascript/#tabs
 * ========================================================================
 * Copyright 2011-2016 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+function ($) {
  'use strict';

  // TAB CLASS DEFINITION
  // ====================

  var Tab = function (element) {
    // jscs:disable requireDollarBeforejQueryAssignment
    this.element = $(element)
    // jscs:enable requireDollarBeforejQueryAssignment
  }

  Tab.VERSION = '3.3.7'

  Tab.TRANSITION_DURATION = 150

  Tab.prototype.show = function () {
    var $this    = this.element
    var $ul      = $this.closest('ul:not(.dropdown-menu)')
    var selector = $this.data('target')

    if (!selector) {
      selector = $this.attr('href')
      selector = selector && selector.replace(/.*(?=#[^\s]*$)/, '') // strip for ie7
    }

    if ($this.parent('li').hasClass('active')) return

    var $previous = $ul.find('.active:last a')
    var hideEvent = $.Event('hide.bs.tab', {
      relatedTarget: $this[0]
    })
    var showEvent = $.Event('show.bs.tab', {
      relatedTarget: $previous[0]
    })

    $previous.trigger(hideEvent)
    $this.trigger(showEvent)

    if (showEvent.isDefaultPrevented() || hideEvent.isDefaultPrevented()) return

    var $target = $(selector)

    this.activate($this.closest('li'), $ul)
    this.activate($target, $target.parent(), function () {
      $previous.trigger({
        type: 'hidden.bs.tab',
        relatedTarget: $this[0]
      })
      $this.trigger({
        type: 'shown.bs.tab',
        relatedTarget: $previous[0]
      })
    })
  }

  Tab.prototype.activate = function (element, container, callback) {
    var $active    = container.find('> .active')
    var transition = callback
      && $.support.transition
      && ($active.length && $active.hasClass('fade') || !!container.find('> .fade').length)

    function next() {
      $active
        .removeClass('active')
        .find('> .dropdown-menu > .active')
          .removeClass('active')
        .end()
        .find('[data-toggle="tab"]')
          .attr('aria-expanded', false)

      element
        .addClass('active')
        .find('[data-toggle="tab"]')
          .attr('aria-expanded', true)

      if (transition) {
        element[0].offsetWidth // reflow for transition
        element.addClass('in')
      } else {
        element.removeClass('fade')
      }

      if (element.parent('.dropdown-menu').length) {
        element
          .closest('li.dropdown')
            .addClass('active')
          .end()
          .find('[data-toggle="tab"]')
            .attr('aria-expanded', true)
      }

      callback && callback()
    }

    $active.length && transition ?
      $active
        .one('bsTransitionEnd', next)
        .emulateTransitionEnd(Tab.TRANSITION_DURATION) :
      next()

    $active.removeClass('in')
  }


  // TAB PLUGIN DEFINITION
  // =====================

  function Plugin(option) {
    return this.each(function () {
      var $this = $(this)
      var data  = $this.data('bs.tab')

      if (!data) $this.data('bs.tab', (data = new Tab(this)))
      if (typeof option == 'string') data[option]()
    })
  }

  var old = $.fn.tab

  $.fn.tab             = Plugin
  $.fn.tab.Constructor = Tab


  // TAB NO CONFLICT
  // ===============

  $.fn.tab.noConflict = function () {
    $.fn.tab = old
    return this
  }


  // TAB DATA-API
  // ============

  var clickHandler = function (e) {
    e.preventDefault()
    Plugin.call($(this), 'show')
  }

  $(document)
    .on('click.bs.tab.data-api', '[data-toggle="tab"]', clickHandler)
    .on('click.bs.tab.data-api', '[data-toggle="pill"]', clickHandler)

}(jQuery);

/* ========================================================================
 * Bootstrap: affix.js v3.3.7
 * http://getbootstrap.com/javascript/#affix
 * ========================================================================
 * Copyright 2011-2016 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+function ($) {
  'use strict';

  // AFFIX CLASS DEFINITION
  // ======================

  var Affix = function (element, options) {
    this.options = $.extend({}, Affix.DEFAULTS, options)

    this.$target = $(this.options.target)
      .on('scroll.bs.affix.data-api', $.proxy(this.checkPosition, this))
      .on('click.bs.affix.data-api',  $.proxy(this.checkPositionWithEventLoop, this))

    this.$element     = $(element)
    this.affixed      = null
    this.unpin        = null
    this.pinnedOffset = null

    this.checkPosition()
  }

  Affix.VERSION  = '3.3.7'

  Affix.RESET    = 'affix affix-top affix-bottom'

  Affix.DEFAULTS = {
    offset: 0,
    target: window
  }

  Affix.prototype.getState = function (scrollHeight, height, offsetTop, offsetBottom) {
    var scrollTop    = this.$target.scrollTop()
    var position     = this.$element.offset()
    var targetHeight = this.$target.height()

    if (offsetTop != null && this.affixed == 'top') return scrollTop < offsetTop ? 'top' : false

    if (this.affixed == 'bottom') {
      if (offsetTop != null) return (scrollTop + this.unpin <= position.top) ? false : 'bottom'
      return (scrollTop + targetHeight <= scrollHeight - offsetBottom) ? false : 'bottom'
    }

    var initializing   = this.affixed == null
    var colliderTop    = initializing ? scrollTop : position.top
    var colliderHeight = initializing ? targetHeight : height

    if (offsetTop != null && scrollTop <= offsetTop) return 'top'
    if (offsetBottom != null && (colliderTop + colliderHeight >= scrollHeight - offsetBottom)) return 'bottom'

    return false
  }

  Affix.prototype.getPinnedOffset = function () {
    if (this.pinnedOffset) return this.pinnedOffset
    this.$element.removeClass(Affix.RESET).addClass('affix')
    var scrollTop = this.$target.scrollTop()
    var position  = this.$element.offset()
    return (this.pinnedOffset = position.top - scrollTop)
  }

  Affix.prototype.checkPositionWithEventLoop = function () {
    setTimeout($.proxy(this.checkPosition, this), 1)
  }

  Affix.prototype.checkPosition = function () {
    if (!this.$element.is(':visible')) return

    var height       = this.$element.height()
    var offset       = this.options.offset
    var offsetTop    = offset.top
    var offsetBottom = offset.bottom
    var scrollHeight = Math.max($(document).height(), $(document.body).height())

    if (typeof offset != 'object')         offsetBottom = offsetTop = offset
    if (typeof offsetTop == 'function')    offsetTop    = offset.top(this.$element)
    if (typeof offsetBottom == 'function') offsetBottom = offset.bottom(this.$element)

    var affix = this.getState(scrollHeight, height, offsetTop, offsetBottom)

    if (this.affixed != affix) {
      if (this.unpin != null) this.$element.css('top', '')

      var affixType = 'affix' + (affix ? '-' + affix : '')
      var e         = $.Event(affixType + '.bs.affix')

      this.$element.trigger(e)

      if (e.isDefaultPrevented()) return

      this.affixed = affix
      this.unpin = affix == 'bottom' ? this.getPinnedOffset() : null

      this.$element
        .removeClass(Affix.RESET)
        .addClass(affixType)
        .trigger(affixType.replace('affix', 'affixed') + '.bs.affix')
    }

    if (affix == 'bottom') {
      this.$element.offset({
        top: scrollHeight - height - offsetBottom
      })
    }
  }


  // AFFIX PLUGIN DEFINITION
  // =======================

  function Plugin(option) {
    return this.each(function () {
      var $this   = $(this)
      var data    = $this.data('bs.affix')
      var options = typeof option == 'object' && option

      if (!data) $this.data('bs.affix', (data = new Affix(this, options)))
      if (typeof option == 'string') data[option]()
    })
  }

  var old = $.fn.affix

  $.fn.affix             = Plugin
  $.fn.affix.Constructor = Affix


  // AFFIX NO CONFLICT
  // =================

  $.fn.affix.noConflict = function () {
    $.fn.affix = old
    return this
  }


  // AFFIX DATA-API
  // ==============

  $(window).on('load', function () {
    $('[data-spy="affix"]').each(function () {
      var $spy = $(this)
      var data = $spy.data()

      data.offset = data.offset || {}

      if (data.offsetBottom != null) data.offset.bottom = data.offsetBottom
      if (data.offsetTop    != null) data.offset.top    = data.offsetTop

      Plugin.call($spy, data)
    })
  })

}(jQuery);

/*
 *	jQuery dotdotdot 1.8.3
 *
 *	Copyright (c) Fred Heusschen
 *	www.frebsite.nl
 *
 *	Plugin website:
 *	dotdotdot.frebsite.nl
 *
 *	Licensed under the MIT license.
 *	http://en.wikipedia.org/wiki/MIT_License
 */
!function(t,e){"use strict";function n(t,e,n){var r=t.children(),a=!1;t.empty();for(var i=0,d=r.length;i<d;i++){var l=r.eq(i);if(t.append(l),n&&t.append(n),o(t,e)){l.remove(),a=!0;break}n&&n.detach()}return a}function r(e,n,i,d,l){var s=!1,c="a, table, thead, tbody, tfoot, tr, col, colgroup, object, embed, param, ol, ul, dl, blockquote, select, optgroup, option, textarea, script, style",u="script, .dotdotdot-keep";return e.contents().detach().each(function(){var h=this,f=t(h);if("undefined"==typeof h)return!0;if(f.is(u))e.append(f);else{if(s)return!0;e.append(f),!l||f.is(d.after)||f.find(d.after).length||e[e.is(c)?"after":"append"](l),o(i,d)&&(s=3==h.nodeType?a(f,n,i,d,l):r(f,n,i,d,l)),s||l&&l.detach()}}),n.addClass("is-truncated"),s}function a(e,n,r,a,d){var c=e[0];if(!c)return!1;var h=s(c),f=h.indexOf(" ")!==-1?" ":"　",p="letter"==a.wrap?"":f,g=h.split(p),v=-1,w=-1,m=0,b=g.length-1;if(a.fallbackToLetter&&0===m&&0===b&&(p="",g=h.split(p),b=g.length-1),a.maxLength)h=i(h.trim().substr(0,a.maxLength),a),l(c,h);else{for(;m<=b&&(0!==m||0!==b);){var y=Math.floor((m+b)/2);if(y==w)break;w=y,l(c,g.slice(0,w+1).join(p)+a.ellipsis),r.children().each(function(){t(this).toggle().toggle()}),o(r,a)?(b=w,a.fallbackToLetter&&0===m&&0===b&&(p="",g=g[0].split(p),v=-1,w=-1,m=0,b=g.length-1)):(v=w,m=w)}if(v==-1||1===g.length&&0===g[0].length){var x=e.parent();e.detach();var C=d&&d.closest(x).length?d.length:0;if(x.contents().length>C?c=u(x.contents().eq(-1-C),n):(c=u(x,n,!0),C||x.detach()),c&&(h=i(s(c),a),l(c,h),C&&d)){var T=d.parent();t(c).parent().append(d),t.trim(T.html())||T.remove()}}else h=i(g.slice(0,v+1).join(p),a),l(c,h)}return!0}function o(t,e){return t.innerHeight()>e.maxHeight||e.maxLength&&t.text().trim().length>e.maxLength}function i(e,n){for(;t.inArray(e.slice(-1),n.lastCharacter.remove)>-1;)e=e.slice(0,-1);return t.inArray(e.slice(-1),n.lastCharacter.noEllipsis)<0&&(e+=n.ellipsis),e}function d(t){return{width:t.innerWidth(),height:t.innerHeight()}}function l(t,e){t.innerText?t.innerText=e:t.nodeValue?t.nodeValue=e:t.textContent&&(t.textContent=e)}function s(t){return t.innerText?t.innerText:t.nodeValue?t.nodeValue:t.textContent?t.textContent:""}function c(t){do t=t.previousSibling;while(t&&1!==t.nodeType&&3!==t.nodeType);return t}function u(e,n,r){var a,o=e&&e[0];if(o){if(!r){if(3===o.nodeType)return o;if(t.trim(e.text()))return u(e.contents().last(),n)}for(a=c(o);!a;){if(e=e.parent(),e.is(n)||!e.length)return!1;a=c(e[0])}if(a)return u(t(a),n)}return!1}function h(e,n){return!!e&&("string"==typeof e?(e=t(e,n),!!e.length&&e):!!e.jquery&&e)}function f(t){for(var e=t.innerHeight(),n=["paddingTop","paddingBottom"],r=0,a=n.length;r<a;r++){var o=parseInt(t.css(n[r]),10);isNaN(o)&&(o=0),e-=o}return e}if(!t.fn.dotdotdot){t.fn.dotdotdot=function(e){if(0===this.length)return t.fn.dotdotdot.debug('No element found for "'+this.selector+'".'),this;if(this.length>1)return this.each(function(){t(this).dotdotdot(e)});var a=this,i=a.contents();a.data("dotdotdot")&&a.trigger("destroy.dot"),a.data("dotdotdot-style",a.attr("style")||""),a.css("word-wrap","break-word"),"nowrap"===a.css("white-space")&&a.css("white-space","normal"),a.bind_events=function(){return a.bind("update.dot",function(e,d){switch(a.removeClass("is-truncated"),e.preventDefault(),e.stopPropagation(),typeof l.height){case"number":l.maxHeight=l.height;break;case"function":l.maxHeight=l.height.call(a[0]);break;default:l.maxHeight=f(a)}l.maxHeight+=l.tolerance,"undefined"!=typeof d&&(("string"==typeof d||"nodeType"in d&&1===d.nodeType)&&(d=t("<div />").append(d).contents()),d instanceof t&&(i=d)),g=a.wrapInner('<div class="dotdotdot" />').children(),g.contents().detach().end().append(i.clone(!0)).find("br").replaceWith("  <br />  ").end().css({height:"auto",width:"auto",border:"none",padding:0,margin:0});var c=!1,u=!1;return s.afterElement&&(c=s.afterElement.clone(!0),c.show(),s.afterElement.detach()),o(g,l)&&(u="children"==l.wrap?n(g,l,c):r(g,a,g,l,c)),g.replaceWith(g.contents()),g=null,t.isFunction(l.callback)&&l.callback.call(a[0],u,i),s.isTruncated=u,u}).bind("isTruncated.dot",function(t,e){return t.preventDefault(),t.stopPropagation(),"function"==typeof e&&e.call(a[0],s.isTruncated),s.isTruncated}).bind("originalContent.dot",function(t,e){return t.preventDefault(),t.stopPropagation(),"function"==typeof e&&e.call(a[0],i),i}).bind("destroy.dot",function(t){t.preventDefault(),t.stopPropagation(),a.unwatch().unbind_events().contents().detach().end().append(i).attr("style",a.data("dotdotdot-style")||"").removeClass("is-truncated").data("dotdotdot",!1)}),a},a.unbind_events=function(){return a.unbind(".dot"),a},a.watch=function(){if(a.unwatch(),"window"==l.watch){var e=t(window),n=e.width(),r=e.height();e.bind("resize.dot"+s.dotId,function(){n==e.width()&&r==e.height()&&l.windowResizeFix||(n=e.width(),r=e.height(),u&&clearInterval(u),u=setTimeout(function(){a.trigger("update.dot")},100))})}else c=d(a),u=setInterval(function(){if(a.is(":visible")){var t=d(a);c.width==t.width&&c.height==t.height||(a.trigger("update.dot"),c=t)}},500);return a},a.unwatch=function(){return t(window).unbind("resize.dot"+s.dotId),u&&clearInterval(u),a};var l=t.extend(!0,{},t.fn.dotdotdot.defaults,e),s={},c={},u=null,g=null;return l.lastCharacter.remove instanceof Array||(l.lastCharacter.remove=t.fn.dotdotdot.defaultArrays.lastCharacter.remove),l.lastCharacter.noEllipsis instanceof Array||(l.lastCharacter.noEllipsis=t.fn.dotdotdot.defaultArrays.lastCharacter.noEllipsis),s.afterElement=h(l.after,a),s.isTruncated=!1,s.dotId=p++,a.data("dotdotdot",!0).bind_events().trigger("update.dot"),l.watch&&a.watch(),a},t.fn.dotdotdot.defaults={ellipsis:"... ",wrap:"word",fallbackToLetter:!0,lastCharacter:{},tolerance:0,callback:null,after:null,height:null,watch:!1,windowResizeFix:!0,maxLength:null},t.fn.dotdotdot.defaultArrays={lastCharacter:{remove:[" ","　",",",";",".","!","?"],noEllipsis:[]}},t.fn.dotdotdot.debug=function(t){};var p=1,g=t.fn.html;t.fn.html=function(n){return n!=e&&!t.isFunction(n)&&this.data("dotdotdot")?this.trigger("update",[n]):g.apply(this,arguments)};var v=t.fn.text;t.fn.text=function(n){return n!=e&&!t.isFunction(n)&&this.data("dotdotdot")?(n=t("<div />").text(n).html(),this.trigger("update",[n])):v.apply(this,arguments)}}}(jQuery),jQuery(document).ready(function(t){t(".dot-ellipsis").each(function(){var e=t(this).hasClass("dot-resize-update"),n=t(this).hasClass("dot-timer-update"),r=0,a=t(this).attr("class").split(/\s+/);t.each(a,function(t,e){var n=e.match(/^dot-height-(\d+)$/);null!==n&&(r=Number(n[1]))});var o={};n&&(o.watch=!0),e&&(o.watch="window"),r>0&&(o.height=r),t(this).dotdotdot(o)})}),jQuery(window).on("load",function(){jQuery(".dot-ellipsis.dot-load-update").trigger("update.dot")});
/*! jQuery UI - v1.12.1 - 2017-08-13
* http://jqueryui.com
* Includes: widget.js, position.js, data.js, disable-selection.js, focusable.js, form-reset-mixin.js, jquery-1-7.js, keycode.js, labels.js, scroll-parent.js, tabbable.js, unique-id.js, widgets/draggable.js, widgets/droppable.js, widgets/resizable.js, widgets/selectable.js, widgets/sortable.js, widgets/accordion.js, widgets/autocomplete.js, widgets/button.js, widgets/checkboxradio.js, widgets/controlgroup.js, widgets/datepicker.js, widgets/dialog.js, widgets/menu.js, widgets/mouse.js, widgets/progressbar.js, widgets/selectmenu.js, widgets/slider.js, widgets/spinner.js, widgets/tabs.js, widgets/tooltip.js, effect.js, effects/effect-blind.js, effects/effect-bounce.js, effects/effect-clip.js, effects/effect-drop.js, effects/effect-explode.js, effects/effect-fade.js, effects/effect-fold.js, effects/effect-highlight.js, effects/effect-puff.js, effects/effect-pulsate.js, effects/effect-scale.js, effects/effect-shake.js, effects/effect-size.js, effects/effect-slide.js, effects/effect-transfer.js
* Copyright jQuery Foundation and other contributors; Licensed MIT */

(function(t){"function"==typeof define&&define.amd?define(["jquery"],t):t(jQuery)})(function(t){function e(t){for(var e=t.css("visibility");"inherit"===e;)t=t.parent(),e=t.css("visibility");return"hidden"!==e}function i(t){for(var e,i;t.length&&t[0]!==document;){if(e=t.css("position"),("absolute"===e||"relative"===e||"fixed"===e)&&(i=parseInt(t.css("zIndex"),10),!isNaN(i)&&0!==i))return i;t=t.parent()}return 0}function s(){this._curInst=null,this._keyEvent=!1,this._disabledInputs=[],this._datepickerShowing=!1,this._inDialog=!1,this._mainDivId="ui-datepicker-div",this._inlineClass="ui-datepicker-inline",this._appendClass="ui-datepicker-append",this._triggerClass="ui-datepicker-trigger",this._dialogClass="ui-datepicker-dialog",this._disableClass="ui-datepicker-disabled",this._unselectableClass="ui-datepicker-unselectable",this._currentClass="ui-datepicker-current-day",this._dayOverClass="ui-datepicker-days-cell-over",this.regional=[],this.regional[""]={closeText:"Done",prevText:"Prev",nextText:"Next",currentText:"Today",monthNames:["January","February","March","April","May","June","July","August","September","October","November","December"],monthNamesShort:["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],dayNames:["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],dayNamesShort:["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],dayNamesMin:["Su","Mo","Tu","We","Th","Fr","Sa"],weekHeader:"Wk",dateFormat:"mm/dd/yy",firstDay:0,isRTL:!1,showMonthAfterYear:!1,yearSuffix:""},this._defaults={showOn:"focus",showAnim:"fadeIn",showOptions:{},defaultDate:null,appendText:"",buttonText:"...",buttonImage:"",buttonImageOnly:!1,hideIfNoPrevNext:!1,navigationAsDateFormat:!1,gotoCurrent:!1,changeMonth:!1,changeYear:!1,yearRange:"c-10:c+10",showOtherMonths:!1,selectOtherMonths:!1,showWeek:!1,calculateWeek:this.iso8601Week,shortYearCutoff:"+10",minDate:null,maxDate:null,duration:"fast",beforeShowDay:null,beforeShow:null,onSelect:null,onChangeMonthYear:null,onClose:null,numberOfMonths:1,showCurrentAtPos:0,stepMonths:1,stepBigMonths:12,altField:"",altFormat:"",constrainInput:!0,showButtonPanel:!1,autoSize:!1,disabled:!1},t.extend(this._defaults,this.regional[""]),this.regional.en=t.extend(!0,{},this.regional[""]),this.regional["en-US"]=t.extend(!0,{},this.regional.en),this.dpDiv=n(t("<div id='"+this._mainDivId+"' class='ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all'></div>"))}function n(e){var i="button, .ui-datepicker-prev, .ui-datepicker-next, .ui-datepicker-calendar td a";return e.on("mouseout",i,function(){t(this).removeClass("ui-state-hover"),-1!==this.className.indexOf("ui-datepicker-prev")&&t(this).removeClass("ui-datepicker-prev-hover"),-1!==this.className.indexOf("ui-datepicker-next")&&t(this).removeClass("ui-datepicker-next-hover")}).on("mouseover",i,o)}function o(){t.datepicker._isDisabledDatepicker(p.inline?p.dpDiv.parent()[0]:p.input[0])||(t(this).parents(".ui-datepicker-calendar").find("a").removeClass("ui-state-hover"),t(this).addClass("ui-state-hover"),-1!==this.className.indexOf("ui-datepicker-prev")&&t(this).addClass("ui-datepicker-prev-hover"),-1!==this.className.indexOf("ui-datepicker-next")&&t(this).addClass("ui-datepicker-next-hover"))}function a(e,i){t.extend(e,i);for(var s in i)null==i[s]&&(e[s]=i[s]);return e}function r(t){return function(){var e=this.element.val();t.apply(this,arguments),this._refresh(),e!==this.element.val()&&this._trigger("change")}}t.ui=t.ui||{},t.ui.version="1.12.1";var h=0,l=Array.prototype.slice;t.cleanData=function(e){return function(i){var s,n,o;for(o=0;null!=(n=i[o]);o++)try{s=t._data(n,"events"),s&&s.remove&&t(n).triggerHandler("remove")}catch(a){}e(i)}}(t.cleanData),t.widget=function(e,i,s){var n,o,a,r={},h=e.split(".")[0];e=e.split(".")[1];var l=h+"-"+e;return s||(s=i,i=t.Widget),t.isArray(s)&&(s=t.extend.apply(null,[{}].concat(s))),t.expr[":"][l.toLowerCase()]=function(e){return!!t.data(e,l)},t[h]=t[h]||{},n=t[h][e],o=t[h][e]=function(t,e){return this._createWidget?(arguments.length&&this._createWidget(t,e),void 0):new o(t,e)},t.extend(o,n,{version:s.version,_proto:t.extend({},s),_childConstructors:[]}),a=new i,a.options=t.widget.extend({},a.options),t.each(s,function(e,s){return t.isFunction(s)?(r[e]=function(){function t(){return i.prototype[e].apply(this,arguments)}function n(t){return i.prototype[e].apply(this,t)}return function(){var e,i=this._super,o=this._superApply;return this._super=t,this._superApply=n,e=s.apply(this,arguments),this._super=i,this._superApply=o,e}}(),void 0):(r[e]=s,void 0)}),o.prototype=t.widget.extend(a,{widgetEventPrefix:n?a.widgetEventPrefix||e:e},r,{constructor:o,namespace:h,widgetName:e,widgetFullName:l}),n?(t.each(n._childConstructors,function(e,i){var s=i.prototype;t.widget(s.namespace+"."+s.widgetName,o,i._proto)}),delete n._childConstructors):i._childConstructors.push(o),t.widget.bridge(e,o),o},t.widget.extend=function(e){for(var i,s,n=l.call(arguments,1),o=0,a=n.length;a>o;o++)for(i in n[o])s=n[o][i],n[o].hasOwnProperty(i)&&void 0!==s&&(e[i]=t.isPlainObject(s)?t.isPlainObject(e[i])?t.widget.extend({},e[i],s):t.widget.extend({},s):s);return e},t.widget.bridge=function(e,i){var s=i.prototype.widgetFullName||e;t.fn[e]=function(n){var o="string"==typeof n,a=l.call(arguments,1),r=this;return o?this.length||"instance"!==n?this.each(function(){var i,o=t.data(this,s);return"instance"===n?(r=o,!1):o?t.isFunction(o[n])&&"_"!==n.charAt(0)?(i=o[n].apply(o,a),i!==o&&void 0!==i?(r=i&&i.jquery?r.pushStack(i.get()):i,!1):void 0):t.error("no such method '"+n+"' for "+e+" widget instance"):t.error("cannot call methods on "+e+" prior to initialization; "+"attempted to call method '"+n+"'")}):r=void 0:(a.length&&(n=t.widget.extend.apply(null,[n].concat(a))),this.each(function(){var e=t.data(this,s);e?(e.option(n||{}),e._init&&e._init()):t.data(this,s,new i(n,this))})),r}},t.Widget=function(){},t.Widget._childConstructors=[],t.Widget.prototype={widgetName:"widget",widgetEventPrefix:"",defaultElement:"<div>",options:{classes:{},disabled:!1,create:null},_createWidget:function(e,i){i=t(i||this.defaultElement||this)[0],this.element=t(i),this.uuid=h++,this.eventNamespace="."+this.widgetName+this.uuid,this.bindings=t(),this.hoverable=t(),this.focusable=t(),this.classesElementLookup={},i!==this&&(t.data(i,this.widgetFullName,this),this._on(!0,this.element,{remove:function(t){t.target===i&&this.destroy()}}),this.document=t(i.style?i.ownerDocument:i.document||i),this.window=t(this.document[0].defaultView||this.document[0].parentWindow)),this.options=t.widget.extend({},this.options,this._getCreateOptions(),e),this._create(),this.options.disabled&&this._setOptionDisabled(this.options.disabled),this._trigger("create",null,this._getCreateEventData()),this._init()},_getCreateOptions:function(){return{}},_getCreateEventData:t.noop,_create:t.noop,_init:t.noop,destroy:function(){var e=this;this._destroy(),t.each(this.classesElementLookup,function(t,i){e._removeClass(i,t)}),this.element.off(this.eventNamespace).removeData(this.widgetFullName),this.widget().off(this.eventNamespace).removeAttr("aria-disabled"),this.bindings.off(this.eventNamespace)},_destroy:t.noop,widget:function(){return this.element},option:function(e,i){var s,n,o,a=e;if(0===arguments.length)return t.widget.extend({},this.options);if("string"==typeof e)if(a={},s=e.split("."),e=s.shift(),s.length){for(n=a[e]=t.widget.extend({},this.options[e]),o=0;s.length-1>o;o++)n[s[o]]=n[s[o]]||{},n=n[s[o]];if(e=s.pop(),1===arguments.length)return void 0===n[e]?null:n[e];n[e]=i}else{if(1===arguments.length)return void 0===this.options[e]?null:this.options[e];a[e]=i}return this._setOptions(a),this},_setOptions:function(t){var e;for(e in t)this._setOption(e,t[e]);return this},_setOption:function(t,e){return"classes"===t&&this._setOptionClasses(e),this.options[t]=e,"disabled"===t&&this._setOptionDisabled(e),this},_setOptionClasses:function(e){var i,s,n;for(i in e)n=this.classesElementLookup[i],e[i]!==this.options.classes[i]&&n&&n.length&&(s=t(n.get()),this._removeClass(n,i),s.addClass(this._classes({element:s,keys:i,classes:e,add:!0})))},_setOptionDisabled:function(t){this._toggleClass(this.widget(),this.widgetFullName+"-disabled",null,!!t),t&&(this._removeClass(this.hoverable,null,"ui-state-hover"),this._removeClass(this.focusable,null,"ui-state-focus"))},enable:function(){return this._setOptions({disabled:!1})},disable:function(){return this._setOptions({disabled:!0})},_classes:function(e){function i(i,o){var a,r;for(r=0;i.length>r;r++)a=n.classesElementLookup[i[r]]||t(),a=e.add?t(t.unique(a.get().concat(e.element.get()))):t(a.not(e.element).get()),n.classesElementLookup[i[r]]=a,s.push(i[r]),o&&e.classes[i[r]]&&s.push(e.classes[i[r]])}var s=[],n=this;return e=t.extend({element:this.element,classes:this.options.classes||{}},e),this._on(e.element,{remove:"_untrackClassesElement"}),e.keys&&i(e.keys.match(/\S+/g)||[],!0),e.extra&&i(e.extra.match(/\S+/g)||[]),s.join(" ")},_untrackClassesElement:function(e){var i=this;t.each(i.classesElementLookup,function(s,n){-1!==t.inArray(e.target,n)&&(i.classesElementLookup[s]=t(n.not(e.target).get()))})},_removeClass:function(t,e,i){return this._toggleClass(t,e,i,!1)},_addClass:function(t,e,i){return this._toggleClass(t,e,i,!0)},_toggleClass:function(t,e,i,s){s="boolean"==typeof s?s:i;var n="string"==typeof t||null===t,o={extra:n?e:i,keys:n?t:e,element:n?this.element:t,add:s};return o.element.toggleClass(this._classes(o),s),this},_on:function(e,i,s){var n,o=this;"boolean"!=typeof e&&(s=i,i=e,e=!1),s?(i=n=t(i),this.bindings=this.bindings.add(i)):(s=i,i=this.element,n=this.widget()),t.each(s,function(s,a){function r(){return e||o.options.disabled!==!0&&!t(this).hasClass("ui-state-disabled")?("string"==typeof a?o[a]:a).apply(o,arguments):void 0}"string"!=typeof a&&(r.guid=a.guid=a.guid||r.guid||t.guid++);var h=s.match(/^([\w:-]*)\s*(.*)$/),l=h[1]+o.eventNamespace,c=h[2];c?n.on(l,c,r):i.on(l,r)})},_off:function(e,i){i=(i||"").split(" ").join(this.eventNamespace+" ")+this.eventNamespace,e.off(i).off(i),this.bindings=t(this.bindings.not(e).get()),this.focusable=t(this.focusable.not(e).get()),this.hoverable=t(this.hoverable.not(e).get())},_delay:function(t,e){function i(){return("string"==typeof t?s[t]:t).apply(s,arguments)}var s=this;return setTimeout(i,e||0)},_hoverable:function(e){this.hoverable=this.hoverable.add(e),this._on(e,{mouseenter:function(e){this._addClass(t(e.currentTarget),null,"ui-state-hover")},mouseleave:function(e){this._removeClass(t(e.currentTarget),null,"ui-state-hover")}})},_focusable:function(e){this.focusable=this.focusable.add(e),this._on(e,{focusin:function(e){this._addClass(t(e.currentTarget),null,"ui-state-focus")},focusout:function(e){this._removeClass(t(e.currentTarget),null,"ui-state-focus")}})},_trigger:function(e,i,s){var n,o,a=this.options[e];if(s=s||{},i=t.Event(i),i.type=(e===this.widgetEventPrefix?e:this.widgetEventPrefix+e).toLowerCase(),i.target=this.element[0],o=i.originalEvent)for(n in o)n in i||(i[n]=o[n]);return this.element.trigger(i,s),!(t.isFunction(a)&&a.apply(this.element[0],[i].concat(s))===!1||i.isDefaultPrevented())}},t.each({show:"fadeIn",hide:"fadeOut"},function(e,i){t.Widget.prototype["_"+e]=function(s,n,o){"string"==typeof n&&(n={effect:n});var a,r=n?n===!0||"number"==typeof n?i:n.effect||i:e;n=n||{},"number"==typeof n&&(n={duration:n}),a=!t.isEmptyObject(n),n.complete=o,n.delay&&s.delay(n.delay),a&&t.effects&&t.effects.effect[r]?s[e](n):r!==e&&s[r]?s[r](n.duration,n.easing,o):s.queue(function(i){t(this)[e](),o&&o.call(s[0]),i()})}}),t.widget,function(){function e(t,e,i){return[parseFloat(t[0])*(u.test(t[0])?e/100:1),parseFloat(t[1])*(u.test(t[1])?i/100:1)]}function i(e,i){return parseInt(t.css(e,i),10)||0}function s(e){var i=e[0];return 9===i.nodeType?{width:e.width(),height:e.height(),offset:{top:0,left:0}}:t.isWindow(i)?{width:e.width(),height:e.height(),offset:{top:e.scrollTop(),left:e.scrollLeft()}}:i.preventDefault?{width:0,height:0,offset:{top:i.pageY,left:i.pageX}}:{width:e.outerWidth(),height:e.outerHeight(),offset:e.offset()}}var n,o=Math.max,a=Math.abs,r=/left|center|right/,h=/top|center|bottom/,l=/[\+\-]\d+(\.[\d]+)?%?/,c=/^\w+/,u=/%$/,d=t.fn.position;t.position={scrollbarWidth:function(){if(void 0!==n)return n;var e,i,s=t("<div style='display:block;position:absolute;width:50px;height:50px;overflow:hidden;'><div style='height:100px;width:auto;'></div></div>"),o=s.children()[0];return t("body").append(s),e=o.offsetWidth,s.css("overflow","scroll"),i=o.offsetWidth,e===i&&(i=s[0].clientWidth),s.remove(),n=e-i},getScrollInfo:function(e){var i=e.isWindow||e.isDocument?"":e.element.css("overflow-x"),s=e.isWindow||e.isDocument?"":e.element.css("overflow-y"),n="scroll"===i||"auto"===i&&e.width<e.element[0].scrollWidth,o="scroll"===s||"auto"===s&&e.height<e.element[0].scrollHeight;return{width:o?t.position.scrollbarWidth():0,height:n?t.position.scrollbarWidth():0}},getWithinInfo:function(e){var i=t(e||window),s=t.isWindow(i[0]),n=!!i[0]&&9===i[0].nodeType,o=!s&&!n;return{element:i,isWindow:s,isDocument:n,offset:o?t(e).offset():{left:0,top:0},scrollLeft:i.scrollLeft(),scrollTop:i.scrollTop(),width:i.outerWidth(),height:i.outerHeight()}}},t.fn.position=function(n){if(!n||!n.of)return d.apply(this,arguments);n=t.extend({},n);var u,p,f,g,m,_,v=t(n.of),b=t.position.getWithinInfo(n.within),y=t.position.getScrollInfo(b),w=(n.collision||"flip").split(" "),k={};return _=s(v),v[0].preventDefault&&(n.at="left top"),p=_.width,f=_.height,g=_.offset,m=t.extend({},g),t.each(["my","at"],function(){var t,e,i=(n[this]||"").split(" ");1===i.length&&(i=r.test(i[0])?i.concat(["center"]):h.test(i[0])?["center"].concat(i):["center","center"]),i[0]=r.test(i[0])?i[0]:"center",i[1]=h.test(i[1])?i[1]:"center",t=l.exec(i[0]),e=l.exec(i[1]),k[this]=[t?t[0]:0,e?e[0]:0],n[this]=[c.exec(i[0])[0],c.exec(i[1])[0]]}),1===w.length&&(w[1]=w[0]),"right"===n.at[0]?m.left+=p:"center"===n.at[0]&&(m.left+=p/2),"bottom"===n.at[1]?m.top+=f:"center"===n.at[1]&&(m.top+=f/2),u=e(k.at,p,f),m.left+=u[0],m.top+=u[1],this.each(function(){var s,r,h=t(this),l=h.outerWidth(),c=h.outerHeight(),d=i(this,"marginLeft"),_=i(this,"marginTop"),x=l+d+i(this,"marginRight")+y.width,C=c+_+i(this,"marginBottom")+y.height,D=t.extend({},m),I=e(k.my,h.outerWidth(),h.outerHeight());"right"===n.my[0]?D.left-=l:"center"===n.my[0]&&(D.left-=l/2),"bottom"===n.my[1]?D.top-=c:"center"===n.my[1]&&(D.top-=c/2),D.left+=I[0],D.top+=I[1],s={marginLeft:d,marginTop:_},t.each(["left","top"],function(e,i){t.ui.position[w[e]]&&t.ui.position[w[e]][i](D,{targetWidth:p,targetHeight:f,elemWidth:l,elemHeight:c,collisionPosition:s,collisionWidth:x,collisionHeight:C,offset:[u[0]+I[0],u[1]+I[1]],my:n.my,at:n.at,within:b,elem:h})}),n.using&&(r=function(t){var e=g.left-D.left,i=e+p-l,s=g.top-D.top,r=s+f-c,u={target:{element:v,left:g.left,top:g.top,width:p,height:f},element:{element:h,left:D.left,top:D.top,width:l,height:c},horizontal:0>i?"left":e>0?"right":"center",vertical:0>r?"top":s>0?"bottom":"middle"};l>p&&p>a(e+i)&&(u.horizontal="center"),c>f&&f>a(s+r)&&(u.vertical="middle"),u.important=o(a(e),a(i))>o(a(s),a(r))?"horizontal":"vertical",n.using.call(this,t,u)}),h.offset(t.extend(D,{using:r}))})},t.ui.position={fit:{left:function(t,e){var i,s=e.within,n=s.isWindow?s.scrollLeft:s.offset.left,a=s.width,r=t.left-e.collisionPosition.marginLeft,h=n-r,l=r+e.collisionWidth-a-n;e.collisionWidth>a?h>0&&0>=l?(i=t.left+h+e.collisionWidth-a-n,t.left+=h-i):t.left=l>0&&0>=h?n:h>l?n+a-e.collisionWidth:n:h>0?t.left+=h:l>0?t.left-=l:t.left=o(t.left-r,t.left)},top:function(t,e){var i,s=e.within,n=s.isWindow?s.scrollTop:s.offset.top,a=e.within.height,r=t.top-e.collisionPosition.marginTop,h=n-r,l=r+e.collisionHeight-a-n;e.collisionHeight>a?h>0&&0>=l?(i=t.top+h+e.collisionHeight-a-n,t.top+=h-i):t.top=l>0&&0>=h?n:h>l?n+a-e.collisionHeight:n:h>0?t.top+=h:l>0?t.top-=l:t.top=o(t.top-r,t.top)}},flip:{left:function(t,e){var i,s,n=e.within,o=n.offset.left+n.scrollLeft,r=n.width,h=n.isWindow?n.scrollLeft:n.offset.left,l=t.left-e.collisionPosition.marginLeft,c=l-h,u=l+e.collisionWidth-r-h,d="left"===e.my[0]?-e.elemWidth:"right"===e.my[0]?e.elemWidth:0,p="left"===e.at[0]?e.targetWidth:"right"===e.at[0]?-e.targetWidth:0,f=-2*e.offset[0];0>c?(i=t.left+d+p+f+e.collisionWidth-r-o,(0>i||a(c)>i)&&(t.left+=d+p+f)):u>0&&(s=t.left-e.collisionPosition.marginLeft+d+p+f-h,(s>0||u>a(s))&&(t.left+=d+p+f))},top:function(t,e){var i,s,n=e.within,o=n.offset.top+n.scrollTop,r=n.height,h=n.isWindow?n.scrollTop:n.offset.top,l=t.top-e.collisionPosition.marginTop,c=l-h,u=l+e.collisionHeight-r-h,d="top"===e.my[1],p=d?-e.elemHeight:"bottom"===e.my[1]?e.elemHeight:0,f="top"===e.at[1]?e.targetHeight:"bottom"===e.at[1]?-e.targetHeight:0,g=-2*e.offset[1];0>c?(s=t.top+p+f+g+e.collisionHeight-r-o,(0>s||a(c)>s)&&(t.top+=p+f+g)):u>0&&(i=t.top-e.collisionPosition.marginTop+p+f+g-h,(i>0||u>a(i))&&(t.top+=p+f+g))}},flipfit:{left:function(){t.ui.position.flip.left.apply(this,arguments),t.ui.position.fit.left.apply(this,arguments)},top:function(){t.ui.position.flip.top.apply(this,arguments),t.ui.position.fit.top.apply(this,arguments)}}}}(),t.ui.position,t.extend(t.expr[":"],{data:t.expr.createPseudo?t.expr.createPseudo(function(e){return function(i){return!!t.data(i,e)}}):function(e,i,s){return!!t.data(e,s[3])}}),t.fn.extend({disableSelection:function(){var t="onselectstart"in document.createElement("div")?"selectstart":"mousedown";return function(){return this.on(t+".ui-disableSelection",function(t){t.preventDefault()})}}(),enableSelection:function(){return this.off(".ui-disableSelection")}}),t.ui.focusable=function(i,s){var n,o,a,r,h,l=i.nodeName.toLowerCase();return"area"===l?(n=i.parentNode,o=n.name,i.href&&o&&"map"===n.nodeName.toLowerCase()?(a=t("img[usemap='#"+o+"']"),a.length>0&&a.is(":visible")):!1):(/^(input|select|textarea|button|object)$/.test(l)?(r=!i.disabled,r&&(h=t(i).closest("fieldset")[0],h&&(r=!h.disabled))):r="a"===l?i.href||s:s,r&&t(i).is(":visible")&&e(t(i)))},t.extend(t.expr[":"],{focusable:function(e){return t.ui.focusable(e,null!=t.attr(e,"tabindex"))}}),t.ui.focusable,t.fn.form=function(){return"string"==typeof this[0].form?this.closest("form"):t(this[0].form)},t.ui.formResetMixin={_formResetHandler:function(){var e=t(this);setTimeout(function(){var i=e.data("ui-form-reset-instances");t.each(i,function(){this.refresh()})})},_bindFormResetHandler:function(){if(this.form=this.element.form(),this.form.length){var t=this.form.data("ui-form-reset-instances")||[];t.length||this.form.on("reset.ui-form-reset",this._formResetHandler),t.push(this),this.form.data("ui-form-reset-instances",t)}},_unbindFormResetHandler:function(){if(this.form.length){var e=this.form.data("ui-form-reset-instances");e.splice(t.inArray(this,e),1),e.length?this.form.data("ui-form-reset-instances",e):this.form.removeData("ui-form-reset-instances").off("reset.ui-form-reset")}}},"1.7"===t.fn.jquery.substring(0,3)&&(t.each(["Width","Height"],function(e,i){function s(e,i,s,o){return t.each(n,function(){i-=parseFloat(t.css(e,"padding"+this))||0,s&&(i-=parseFloat(t.css(e,"border"+this+"Width"))||0),o&&(i-=parseFloat(t.css(e,"margin"+this))||0)}),i}var n="Width"===i?["Left","Right"]:["Top","Bottom"],o=i.toLowerCase(),a={innerWidth:t.fn.innerWidth,innerHeight:t.fn.innerHeight,outerWidth:t.fn.outerWidth,outerHeight:t.fn.outerHeight};t.fn["inner"+i]=function(e){return void 0===e?a["inner"+i].call(this):this.each(function(){t(this).css(o,s(this,e)+"px")})},t.fn["outer"+i]=function(e,n){return"number"!=typeof e?a["outer"+i].call(this,e):this.each(function(){t(this).css(o,s(this,e,!0,n)+"px")})}}),t.fn.addBack=function(t){return this.add(null==t?this.prevObject:this.prevObject.filter(t))}),t.ui.keyCode={BACKSPACE:8,COMMA:188,DELETE:46,DOWN:40,END:35,ENTER:13,ESCAPE:27,HOME:36,LEFT:37,PAGE_DOWN:34,PAGE_UP:33,PERIOD:190,RIGHT:39,SPACE:32,TAB:9,UP:38},t.ui.escapeSelector=function(){var t=/([!"#$%&'()*+,./:;<=>?@[\]^`{|}~])/g;return function(e){return e.replace(t,"\\$1")}}(),t.fn.labels=function(){var e,i,s,n,o;return this[0].labels&&this[0].labels.length?this.pushStack(this[0].labels):(n=this.eq(0).parents("label"),s=this.attr("id"),s&&(e=this.eq(0).parents().last(),o=e.add(e.length?e.siblings():this.siblings()),i="label[for='"+t.ui.escapeSelector(s)+"']",n=n.add(o.find(i).addBack(i))),this.pushStack(n))},t.fn.scrollParent=function(e){var i=this.css("position"),s="absolute"===i,n=e?/(auto|scroll|hidden)/:/(auto|scroll)/,o=this.parents().filter(function(){var e=t(this);return s&&"static"===e.css("position")?!1:n.test(e.css("overflow")+e.css("overflow-y")+e.css("overflow-x"))}).eq(0);return"fixed"!==i&&o.length?o:t(this[0].ownerDocument||document)},t.extend(t.expr[":"],{tabbable:function(e){var i=t.attr(e,"tabindex"),s=null!=i;return(!s||i>=0)&&t.ui.focusable(e,s)}}),t.fn.extend({uniqueId:function(){var t=0;return function(){return this.each(function(){this.id||(this.id="ui-id-"+ ++t)})}}(),removeUniqueId:function(){return this.each(function(){/^ui-id-\d+$/.test(this.id)&&t(this).removeAttr("id")})}}),t.ui.ie=!!/msie [\w.]+/.exec(navigator.userAgent.toLowerCase());var c=!1;t(document).on("mouseup",function(){c=!1}),t.widget("ui.mouse",{version:"1.12.1",options:{cancel:"input, textarea, button, select, option",distance:1,delay:0},_mouseInit:function(){var e=this;this.element.on("mousedown."+this.widgetName,function(t){return e._mouseDown(t)}).on("click."+this.widgetName,function(i){return!0===t.data(i.target,e.widgetName+".preventClickEvent")?(t.removeData(i.target,e.widgetName+".preventClickEvent"),i.stopImmediatePropagation(),!1):void 0}),this.started=!1},_mouseDestroy:function(){this.element.off("."+this.widgetName),this._mouseMoveDelegate&&this.document.off("mousemove."+this.widgetName,this._mouseMoveDelegate).off("mouseup."+this.widgetName,this._mouseUpDelegate)},_mouseDown:function(e){if(!c){this._mouseMoved=!1,this._mouseStarted&&this._mouseUp(e),this._mouseDownEvent=e;var i=this,s=1===e.which,n="string"==typeof this.options.cancel&&e.target.nodeName?t(e.target).closest(this.options.cancel).length:!1;return s&&!n&&this._mouseCapture(e)?(this.mouseDelayMet=!this.options.delay,this.mouseDelayMet||(this._mouseDelayTimer=setTimeout(function(){i.mouseDelayMet=!0},this.options.delay)),this._mouseDistanceMet(e)&&this._mouseDelayMet(e)&&(this._mouseStarted=this._mouseStart(e)!==!1,!this._mouseStarted)?(e.preventDefault(),!0):(!0===t.data(e.target,this.widgetName+".preventClickEvent")&&t.removeData(e.target,this.widgetName+".preventClickEvent"),this._mouseMoveDelegate=function(t){return i._mouseMove(t)},this._mouseUpDelegate=function(t){return i._mouseUp(t)},this.document.on("mousemove."+this.widgetName,this._mouseMoveDelegate).on("mouseup."+this.widgetName,this._mouseUpDelegate),e.preventDefault(),c=!0,!0)):!0}},_mouseMove:function(e){if(this._mouseMoved){if(t.ui.ie&&(!document.documentMode||9>document.documentMode)&&!e.button)return this._mouseUp(e);if(!e.which)if(e.originalEvent.altKey||e.originalEvent.ctrlKey||e.originalEvent.metaKey||e.originalEvent.shiftKey)this.ignoreMissingWhich=!0;else if(!this.ignoreMissingWhich)return this._mouseUp(e)}return(e.which||e.button)&&(this._mouseMoved=!0),this._mouseStarted?(this._mouseDrag(e),e.preventDefault()):(this._mouseDistanceMet(e)&&this._mouseDelayMet(e)&&(this._mouseStarted=this._mouseStart(this._mouseDownEvent,e)!==!1,this._mouseStarted?this._mouseDrag(e):this._mouseUp(e)),!this._mouseStarted)},_mouseUp:function(e){this.document.off("mousemove."+this.widgetName,this._mouseMoveDelegate).off("mouseup."+this.widgetName,this._mouseUpDelegate),this._mouseStarted&&(this._mouseStarted=!1,e.target===this._mouseDownEvent.target&&t.data(e.target,this.widgetName+".preventClickEvent",!0),this._mouseStop(e)),this._mouseDelayTimer&&(clearTimeout(this._mouseDelayTimer),delete this._mouseDelayTimer),this.ignoreMissingWhich=!1,c=!1,e.preventDefault()},_mouseDistanceMet:function(t){return Math.max(Math.abs(this._mouseDownEvent.pageX-t.pageX),Math.abs(this._mouseDownEvent.pageY-t.pageY))>=this.options.distance},_mouseDelayMet:function(){return this.mouseDelayMet},_mouseStart:function(){},_mouseDrag:function(){},_mouseStop:function(){},_mouseCapture:function(){return!0}}),t.ui.plugin={add:function(e,i,s){var n,o=t.ui[e].prototype;for(n in s)o.plugins[n]=o.plugins[n]||[],o.plugins[n].push([i,s[n]])},call:function(t,e,i,s){var n,o=t.plugins[e];if(o&&(s||t.element[0].parentNode&&11!==t.element[0].parentNode.nodeType))for(n=0;o.length>n;n++)t.options[o[n][0]]&&o[n][1].apply(t.element,i)}},t.ui.safeActiveElement=function(t){var e;try{e=t.activeElement}catch(i){e=t.body}return e||(e=t.body),e.nodeName||(e=t.body),e},t.ui.safeBlur=function(e){e&&"body"!==e.nodeName.toLowerCase()&&t(e).trigger("blur")},t.widget("ui.draggable",t.ui.mouse,{version:"1.12.1",widgetEventPrefix:"drag",options:{addClasses:!0,appendTo:"parent",axis:!1,connectToSortable:!1,containment:!1,cursor:"auto",cursorAt:!1,grid:!1,handle:!1,helper:"original",iframeFix:!1,opacity:!1,refreshPositions:!1,revert:!1,revertDuration:500,scope:"default",scroll:!0,scrollSensitivity:20,scrollSpeed:20,snap:!1,snapMode:"both",snapTolerance:20,stack:!1,zIndex:!1,drag:null,start:null,stop:null},_create:function(){"original"===this.options.helper&&this._setPositionRelative(),this.options.addClasses&&this._addClass("ui-draggable"),this._setHandleClassName(),this._mouseInit()},_setOption:function(t,e){this._super(t,e),"handle"===t&&(this._removeHandleClassName(),this._setHandleClassName())},_destroy:function(){return(this.helper||this.element).is(".ui-draggable-dragging")?(this.destroyOnClear=!0,void 0):(this._removeHandleClassName(),this._mouseDestroy(),void 0)},_mouseCapture:function(e){var i=this.options;return this.helper||i.disabled||t(e.target).closest(".ui-resizable-handle").length>0?!1:(this.handle=this._getHandle(e),this.handle?(this._blurActiveElement(e),this._blockFrames(i.iframeFix===!0?"iframe":i.iframeFix),!0):!1)},_blockFrames:function(e){this.iframeBlocks=this.document.find(e).map(function(){var e=t(this);return t("<div>").css("position","absolute").appendTo(e.parent()).outerWidth(e.outerWidth()).outerHeight(e.outerHeight()).offset(e.offset())[0]})},_unblockFrames:function(){this.iframeBlocks&&(this.iframeBlocks.remove(),delete this.iframeBlocks)},_blurActiveElement:function(e){var i=t.ui.safeActiveElement(this.document[0]),s=t(e.target);s.closest(i).length||t.ui.safeBlur(i)},_mouseStart:function(e){var i=this.options;return this.helper=this._createHelper(e),this._addClass(this.helper,"ui-draggable-dragging"),this._cacheHelperProportions(),t.ui.ddmanager&&(t.ui.ddmanager.current=this),this._cacheMargins(),this.cssPosition=this.helper.css("position"),this.scrollParent=this.helper.scrollParent(!0),this.offsetParent=this.helper.offsetParent(),this.hasFixedAncestor=this.helper.parents().filter(function(){return"fixed"===t(this).css("position")}).length>0,this.positionAbs=this.element.offset(),this._refreshOffsets(e),this.originalPosition=this.position=this._generatePosition(e,!1),this.originalPageX=e.pageX,this.originalPageY=e.pageY,i.cursorAt&&this._adjustOffsetFromHelper(i.cursorAt),this._setContainment(),this._trigger("start",e)===!1?(this._clear(),!1):(this._cacheHelperProportions(),t.ui.ddmanager&&!i.dropBehaviour&&t.ui.ddmanager.prepareOffsets(this,e),this._mouseDrag(e,!0),t.ui.ddmanager&&t.ui.ddmanager.dragStart(this,e),!0)},_refreshOffsets:function(t){this.offset={top:this.positionAbs.top-this.margins.top,left:this.positionAbs.left-this.margins.left,scroll:!1,parent:this._getParentOffset(),relative:this._getRelativeOffset()},this.offset.click={left:t.pageX-this.offset.left,top:t.pageY-this.offset.top}},_mouseDrag:function(e,i){if(this.hasFixedAncestor&&(this.offset.parent=this._getParentOffset()),this.position=this._generatePosition(e,!0),this.positionAbs=this._convertPositionTo("absolute"),!i){var s=this._uiHash();if(this._trigger("drag",e,s)===!1)return this._mouseUp(new t.Event("mouseup",e)),!1;this.position=s.position}return this.helper[0].style.left=this.position.left+"px",this.helper[0].style.top=this.position.top+"px",t.ui.ddmanager&&t.ui.ddmanager.drag(this,e),!1},_mouseStop:function(e){var i=this,s=!1;return t.ui.ddmanager&&!this.options.dropBehaviour&&(s=t.ui.ddmanager.drop(this,e)),this.dropped&&(s=this.dropped,this.dropped=!1),"invalid"===this.options.revert&&!s||"valid"===this.options.revert&&s||this.options.revert===!0||t.isFunction(this.options.revert)&&this.options.revert.call(this.element,s)?t(this.helper).animate(this.originalPosition,parseInt(this.options.revertDuration,10),function(){i._trigger("stop",e)!==!1&&i._clear()}):this._trigger("stop",e)!==!1&&this._clear(),!1},_mouseUp:function(e){return this._unblockFrames(),t.ui.ddmanager&&t.ui.ddmanager.dragStop(this,e),this.handleElement.is(e.target)&&this.element.trigger("focus"),t.ui.mouse.prototype._mouseUp.call(this,e)},cancel:function(){return this.helper.is(".ui-draggable-dragging")?this._mouseUp(new t.Event("mouseup",{target:this.element[0]})):this._clear(),this},_getHandle:function(e){return this.options.handle?!!t(e.target).closest(this.element.find(this.options.handle)).length:!0},_setHandleClassName:function(){this.handleElement=this.options.handle?this.element.find(this.options.handle):this.element,this._addClass(this.handleElement,"ui-draggable-handle")},_removeHandleClassName:function(){this._removeClass(this.handleElement,"ui-draggable-handle")},_createHelper:function(e){var i=this.options,s=t.isFunction(i.helper),n=s?t(i.helper.apply(this.element[0],[e])):"clone"===i.helper?this.element.clone().removeAttr("id"):this.element;return n.parents("body").length||n.appendTo("parent"===i.appendTo?this.element[0].parentNode:i.appendTo),s&&n[0]===this.element[0]&&this._setPositionRelative(),n[0]===this.element[0]||/(fixed|absolute)/.test(n.css("position"))||n.css("position","absolute"),n},_setPositionRelative:function(){/^(?:r|a|f)/.test(this.element.css("position"))||(this.element[0].style.position="relative")},_adjustOffsetFromHelper:function(e){"string"==typeof e&&(e=e.split(" ")),t.isArray(e)&&(e={left:+e[0],top:+e[1]||0}),"left"in e&&(this.offset.click.left=e.left+this.margins.left),"right"in e&&(this.offset.click.left=this.helperProportions.width-e.right+this.margins.left),"top"in e&&(this.offset.click.top=e.top+this.margins.top),"bottom"in e&&(this.offset.click.top=this.helperProportions.height-e.bottom+this.margins.top)},_isRootNode:function(t){return/(html|body)/i.test(t.tagName)||t===this.document[0]},_getParentOffset:function(){var e=this.offsetParent.offset(),i=this.document[0];return"absolute"===this.cssPosition&&this.scrollParent[0]!==i&&t.contains(this.scrollParent[0],this.offsetParent[0])&&(e.left+=this.scrollParent.scrollLeft(),e.top+=this.scrollParent.scrollTop()),this._isRootNode(this.offsetParent[0])&&(e={top:0,left:0}),{top:e.top+(parseInt(this.offsetParent.css("borderTopWidth"),10)||0),left:e.left+(parseInt(this.offsetParent.css("borderLeftWidth"),10)||0)}},_getRelativeOffset:function(){if("relative"!==this.cssPosition)return{top:0,left:0};var t=this.element.position(),e=this._isRootNode(this.scrollParent[0]);return{top:t.top-(parseInt(this.helper.css("top"),10)||0)+(e?0:this.scrollParent.scrollTop()),left:t.left-(parseInt(this.helper.css("left"),10)||0)+(e?0:this.scrollParent.scrollLeft())}},_cacheMargins:function(){this.margins={left:parseInt(this.element.css("marginLeft"),10)||0,top:parseInt(this.element.css("marginTop"),10)||0,right:parseInt(this.element.css("marginRight"),10)||0,bottom:parseInt(this.element.css("marginBottom"),10)||0}},_cacheHelperProportions:function(){this.helperProportions={width:this.helper.outerWidth(),height:this.helper.outerHeight()}},_setContainment:function(){var e,i,s,n=this.options,o=this.document[0];return this.relativeContainer=null,n.containment?"window"===n.containment?(this.containment=[t(window).scrollLeft()-this.offset.relative.left-this.offset.parent.left,t(window).scrollTop()-this.offset.relative.top-this.offset.parent.top,t(window).scrollLeft()+t(window).width()-this.helperProportions.width-this.margins.left,t(window).scrollTop()+(t(window).height()||o.body.parentNode.scrollHeight)-this.helperProportions.height-this.margins.top],void 0):"document"===n.containment?(this.containment=[0,0,t(o).width()-this.helperProportions.width-this.margins.left,(t(o).height()||o.body.parentNode.scrollHeight)-this.helperProportions.height-this.margins.top],void 0):n.containment.constructor===Array?(this.containment=n.containment,void 0):("parent"===n.containment&&(n.containment=this.helper[0].parentNode),i=t(n.containment),s=i[0],s&&(e=/(scroll|auto)/.test(i.css("overflow")),this.containment=[(parseInt(i.css("borderLeftWidth"),10)||0)+(parseInt(i.css("paddingLeft"),10)||0),(parseInt(i.css("borderTopWidth"),10)||0)+(parseInt(i.css("paddingTop"),10)||0),(e?Math.max(s.scrollWidth,s.offsetWidth):s.offsetWidth)-(parseInt(i.css("borderRightWidth"),10)||0)-(parseInt(i.css("paddingRight"),10)||0)-this.helperProportions.width-this.margins.left-this.margins.right,(e?Math.max(s.scrollHeight,s.offsetHeight):s.offsetHeight)-(parseInt(i.css("borderBottomWidth"),10)||0)-(parseInt(i.css("paddingBottom"),10)||0)-this.helperProportions.height-this.margins.top-this.margins.bottom],this.relativeContainer=i),void 0):(this.containment=null,void 0)
},_convertPositionTo:function(t,e){e||(e=this.position);var i="absolute"===t?1:-1,s=this._isRootNode(this.scrollParent[0]);return{top:e.top+this.offset.relative.top*i+this.offset.parent.top*i-("fixed"===this.cssPosition?-this.offset.scroll.top:s?0:this.offset.scroll.top)*i,left:e.left+this.offset.relative.left*i+this.offset.parent.left*i-("fixed"===this.cssPosition?-this.offset.scroll.left:s?0:this.offset.scroll.left)*i}},_generatePosition:function(t,e){var i,s,n,o,a=this.options,r=this._isRootNode(this.scrollParent[0]),h=t.pageX,l=t.pageY;return r&&this.offset.scroll||(this.offset.scroll={top:this.scrollParent.scrollTop(),left:this.scrollParent.scrollLeft()}),e&&(this.containment&&(this.relativeContainer?(s=this.relativeContainer.offset(),i=[this.containment[0]+s.left,this.containment[1]+s.top,this.containment[2]+s.left,this.containment[3]+s.top]):i=this.containment,t.pageX-this.offset.click.left<i[0]&&(h=i[0]+this.offset.click.left),t.pageY-this.offset.click.top<i[1]&&(l=i[1]+this.offset.click.top),t.pageX-this.offset.click.left>i[2]&&(h=i[2]+this.offset.click.left),t.pageY-this.offset.click.top>i[3]&&(l=i[3]+this.offset.click.top)),a.grid&&(n=a.grid[1]?this.originalPageY+Math.round((l-this.originalPageY)/a.grid[1])*a.grid[1]:this.originalPageY,l=i?n-this.offset.click.top>=i[1]||n-this.offset.click.top>i[3]?n:n-this.offset.click.top>=i[1]?n-a.grid[1]:n+a.grid[1]:n,o=a.grid[0]?this.originalPageX+Math.round((h-this.originalPageX)/a.grid[0])*a.grid[0]:this.originalPageX,h=i?o-this.offset.click.left>=i[0]||o-this.offset.click.left>i[2]?o:o-this.offset.click.left>=i[0]?o-a.grid[0]:o+a.grid[0]:o),"y"===a.axis&&(h=this.originalPageX),"x"===a.axis&&(l=this.originalPageY)),{top:l-this.offset.click.top-this.offset.relative.top-this.offset.parent.top+("fixed"===this.cssPosition?-this.offset.scroll.top:r?0:this.offset.scroll.top),left:h-this.offset.click.left-this.offset.relative.left-this.offset.parent.left+("fixed"===this.cssPosition?-this.offset.scroll.left:r?0:this.offset.scroll.left)}},_clear:function(){this._removeClass(this.helper,"ui-draggable-dragging"),this.helper[0]===this.element[0]||this.cancelHelperRemoval||this.helper.remove(),this.helper=null,this.cancelHelperRemoval=!1,this.destroyOnClear&&this.destroy()},_trigger:function(e,i,s){return s=s||this._uiHash(),t.ui.plugin.call(this,e,[i,s,this],!0),/^(drag|start|stop)/.test(e)&&(this.positionAbs=this._convertPositionTo("absolute"),s.offset=this.positionAbs),t.Widget.prototype._trigger.call(this,e,i,s)},plugins:{},_uiHash:function(){return{helper:this.helper,position:this.position,originalPosition:this.originalPosition,offset:this.positionAbs}}}),t.ui.plugin.add("draggable","connectToSortable",{start:function(e,i,s){var n=t.extend({},i,{item:s.element});s.sortables=[],t(s.options.connectToSortable).each(function(){var i=t(this).sortable("instance");i&&!i.options.disabled&&(s.sortables.push(i),i.refreshPositions(),i._trigger("activate",e,n))})},stop:function(e,i,s){var n=t.extend({},i,{item:s.element});s.cancelHelperRemoval=!1,t.each(s.sortables,function(){var t=this;t.isOver?(t.isOver=0,s.cancelHelperRemoval=!0,t.cancelHelperRemoval=!1,t._storedCSS={position:t.placeholder.css("position"),top:t.placeholder.css("top"),left:t.placeholder.css("left")},t._mouseStop(e),t.options.helper=t.options._helper):(t.cancelHelperRemoval=!0,t._trigger("deactivate",e,n))})},drag:function(e,i,s){t.each(s.sortables,function(){var n=!1,o=this;o.positionAbs=s.positionAbs,o.helperProportions=s.helperProportions,o.offset.click=s.offset.click,o._intersectsWith(o.containerCache)&&(n=!0,t.each(s.sortables,function(){return this.positionAbs=s.positionAbs,this.helperProportions=s.helperProportions,this.offset.click=s.offset.click,this!==o&&this._intersectsWith(this.containerCache)&&t.contains(o.element[0],this.element[0])&&(n=!1),n})),n?(o.isOver||(o.isOver=1,s._parent=i.helper.parent(),o.currentItem=i.helper.appendTo(o.element).data("ui-sortable-item",!0),o.options._helper=o.options.helper,o.options.helper=function(){return i.helper[0]},e.target=o.currentItem[0],o._mouseCapture(e,!0),o._mouseStart(e,!0,!0),o.offset.click.top=s.offset.click.top,o.offset.click.left=s.offset.click.left,o.offset.parent.left-=s.offset.parent.left-o.offset.parent.left,o.offset.parent.top-=s.offset.parent.top-o.offset.parent.top,s._trigger("toSortable",e),s.dropped=o.element,t.each(s.sortables,function(){this.refreshPositions()}),s.currentItem=s.element,o.fromOutside=s),o.currentItem&&(o._mouseDrag(e),i.position=o.position)):o.isOver&&(o.isOver=0,o.cancelHelperRemoval=!0,o.options._revert=o.options.revert,o.options.revert=!1,o._trigger("out",e,o._uiHash(o)),o._mouseStop(e,!0),o.options.revert=o.options._revert,o.options.helper=o.options._helper,o.placeholder&&o.placeholder.remove(),i.helper.appendTo(s._parent),s._refreshOffsets(e),i.position=s._generatePosition(e,!0),s._trigger("fromSortable",e),s.dropped=!1,t.each(s.sortables,function(){this.refreshPositions()}))})}}),t.ui.plugin.add("draggable","cursor",{start:function(e,i,s){var n=t("body"),o=s.options;n.css("cursor")&&(o._cursor=n.css("cursor")),n.css("cursor",o.cursor)},stop:function(e,i,s){var n=s.options;n._cursor&&t("body").css("cursor",n._cursor)}}),t.ui.plugin.add("draggable","opacity",{start:function(e,i,s){var n=t(i.helper),o=s.options;n.css("opacity")&&(o._opacity=n.css("opacity")),n.css("opacity",o.opacity)},stop:function(e,i,s){var n=s.options;n._opacity&&t(i.helper).css("opacity",n._opacity)}}),t.ui.plugin.add("draggable","scroll",{start:function(t,e,i){i.scrollParentNotHidden||(i.scrollParentNotHidden=i.helper.scrollParent(!1)),i.scrollParentNotHidden[0]!==i.document[0]&&"HTML"!==i.scrollParentNotHidden[0].tagName&&(i.overflowOffset=i.scrollParentNotHidden.offset())},drag:function(e,i,s){var n=s.options,o=!1,a=s.scrollParentNotHidden[0],r=s.document[0];a!==r&&"HTML"!==a.tagName?(n.axis&&"x"===n.axis||(s.overflowOffset.top+a.offsetHeight-e.pageY<n.scrollSensitivity?a.scrollTop=o=a.scrollTop+n.scrollSpeed:e.pageY-s.overflowOffset.top<n.scrollSensitivity&&(a.scrollTop=o=a.scrollTop-n.scrollSpeed)),n.axis&&"y"===n.axis||(s.overflowOffset.left+a.offsetWidth-e.pageX<n.scrollSensitivity?a.scrollLeft=o=a.scrollLeft+n.scrollSpeed:e.pageX-s.overflowOffset.left<n.scrollSensitivity&&(a.scrollLeft=o=a.scrollLeft-n.scrollSpeed))):(n.axis&&"x"===n.axis||(e.pageY-t(r).scrollTop()<n.scrollSensitivity?o=t(r).scrollTop(t(r).scrollTop()-n.scrollSpeed):t(window).height()-(e.pageY-t(r).scrollTop())<n.scrollSensitivity&&(o=t(r).scrollTop(t(r).scrollTop()+n.scrollSpeed))),n.axis&&"y"===n.axis||(e.pageX-t(r).scrollLeft()<n.scrollSensitivity?o=t(r).scrollLeft(t(r).scrollLeft()-n.scrollSpeed):t(window).width()-(e.pageX-t(r).scrollLeft())<n.scrollSensitivity&&(o=t(r).scrollLeft(t(r).scrollLeft()+n.scrollSpeed)))),o!==!1&&t.ui.ddmanager&&!n.dropBehaviour&&t.ui.ddmanager.prepareOffsets(s,e)}}),t.ui.plugin.add("draggable","snap",{start:function(e,i,s){var n=s.options;s.snapElements=[],t(n.snap.constructor!==String?n.snap.items||":data(ui-draggable)":n.snap).each(function(){var e=t(this),i=e.offset();this!==s.element[0]&&s.snapElements.push({item:this,width:e.outerWidth(),height:e.outerHeight(),top:i.top,left:i.left})})},drag:function(e,i,s){var n,o,a,r,h,l,c,u,d,p,f=s.options,g=f.snapTolerance,m=i.offset.left,_=m+s.helperProportions.width,v=i.offset.top,b=v+s.helperProportions.height;for(d=s.snapElements.length-1;d>=0;d--)h=s.snapElements[d].left-s.margins.left,l=h+s.snapElements[d].width,c=s.snapElements[d].top-s.margins.top,u=c+s.snapElements[d].height,h-g>_||m>l+g||c-g>b||v>u+g||!t.contains(s.snapElements[d].item.ownerDocument,s.snapElements[d].item)?(s.snapElements[d].snapping&&s.options.snap.release&&s.options.snap.release.call(s.element,e,t.extend(s._uiHash(),{snapItem:s.snapElements[d].item})),s.snapElements[d].snapping=!1):("inner"!==f.snapMode&&(n=g>=Math.abs(c-b),o=g>=Math.abs(u-v),a=g>=Math.abs(h-_),r=g>=Math.abs(l-m),n&&(i.position.top=s._convertPositionTo("relative",{top:c-s.helperProportions.height,left:0}).top),o&&(i.position.top=s._convertPositionTo("relative",{top:u,left:0}).top),a&&(i.position.left=s._convertPositionTo("relative",{top:0,left:h-s.helperProportions.width}).left),r&&(i.position.left=s._convertPositionTo("relative",{top:0,left:l}).left)),p=n||o||a||r,"outer"!==f.snapMode&&(n=g>=Math.abs(c-v),o=g>=Math.abs(u-b),a=g>=Math.abs(h-m),r=g>=Math.abs(l-_),n&&(i.position.top=s._convertPositionTo("relative",{top:c,left:0}).top),o&&(i.position.top=s._convertPositionTo("relative",{top:u-s.helperProportions.height,left:0}).top),a&&(i.position.left=s._convertPositionTo("relative",{top:0,left:h}).left),r&&(i.position.left=s._convertPositionTo("relative",{top:0,left:l-s.helperProportions.width}).left)),!s.snapElements[d].snapping&&(n||o||a||r||p)&&s.options.snap.snap&&s.options.snap.snap.call(s.element,e,t.extend(s._uiHash(),{snapItem:s.snapElements[d].item})),s.snapElements[d].snapping=n||o||a||r||p)}}),t.ui.plugin.add("draggable","stack",{start:function(e,i,s){var n,o=s.options,a=t.makeArray(t(o.stack)).sort(function(e,i){return(parseInt(t(e).css("zIndex"),10)||0)-(parseInt(t(i).css("zIndex"),10)||0)});a.length&&(n=parseInt(t(a[0]).css("zIndex"),10)||0,t(a).each(function(e){t(this).css("zIndex",n+e)}),this.css("zIndex",n+a.length))}}),t.ui.plugin.add("draggable","zIndex",{start:function(e,i,s){var n=t(i.helper),o=s.options;n.css("zIndex")&&(o._zIndex=n.css("zIndex")),n.css("zIndex",o.zIndex)},stop:function(e,i,s){var n=s.options;n._zIndex&&t(i.helper).css("zIndex",n._zIndex)}}),t.ui.draggable,t.widget("ui.droppable",{version:"1.12.1",widgetEventPrefix:"drop",options:{accept:"*",addClasses:!0,greedy:!1,scope:"default",tolerance:"intersect",activate:null,deactivate:null,drop:null,out:null,over:null},_create:function(){var e,i=this.options,s=i.accept;this.isover=!1,this.isout=!0,this.accept=t.isFunction(s)?s:function(t){return t.is(s)},this.proportions=function(){return arguments.length?(e=arguments[0],void 0):e?e:e={width:this.element[0].offsetWidth,height:this.element[0].offsetHeight}},this._addToManager(i.scope),i.addClasses&&this._addClass("ui-droppable")},_addToManager:function(e){t.ui.ddmanager.droppables[e]=t.ui.ddmanager.droppables[e]||[],t.ui.ddmanager.droppables[e].push(this)},_splice:function(t){for(var e=0;t.length>e;e++)t[e]===this&&t.splice(e,1)},_destroy:function(){var e=t.ui.ddmanager.droppables[this.options.scope];this._splice(e)},_setOption:function(e,i){if("accept"===e)this.accept=t.isFunction(i)?i:function(t){return t.is(i)};else if("scope"===e){var s=t.ui.ddmanager.droppables[this.options.scope];this._splice(s),this._addToManager(i)}this._super(e,i)},_activate:function(e){var i=t.ui.ddmanager.current;this._addActiveClass(),i&&this._trigger("activate",e,this.ui(i))},_deactivate:function(e){var i=t.ui.ddmanager.current;this._removeActiveClass(),i&&this._trigger("deactivate",e,this.ui(i))},_over:function(e){var i=t.ui.ddmanager.current;i&&(i.currentItem||i.element)[0]!==this.element[0]&&this.accept.call(this.element[0],i.currentItem||i.element)&&(this._addHoverClass(),this._trigger("over",e,this.ui(i)))},_out:function(e){var i=t.ui.ddmanager.current;i&&(i.currentItem||i.element)[0]!==this.element[0]&&this.accept.call(this.element[0],i.currentItem||i.element)&&(this._removeHoverClass(),this._trigger("out",e,this.ui(i)))},_drop:function(e,i){var s=i||t.ui.ddmanager.current,n=!1;return s&&(s.currentItem||s.element)[0]!==this.element[0]?(this.element.find(":data(ui-droppable)").not(".ui-draggable-dragging").each(function(){var i=t(this).droppable("instance");return i.options.greedy&&!i.options.disabled&&i.options.scope===s.options.scope&&i.accept.call(i.element[0],s.currentItem||s.element)&&u(s,t.extend(i,{offset:i.element.offset()}),i.options.tolerance,e)?(n=!0,!1):void 0}),n?!1:this.accept.call(this.element[0],s.currentItem||s.element)?(this._removeActiveClass(),this._removeHoverClass(),this._trigger("drop",e,this.ui(s)),this.element):!1):!1},ui:function(t){return{draggable:t.currentItem||t.element,helper:t.helper,position:t.position,offset:t.positionAbs}},_addHoverClass:function(){this._addClass("ui-droppable-hover")},_removeHoverClass:function(){this._removeClass("ui-droppable-hover")},_addActiveClass:function(){this._addClass("ui-droppable-active")},_removeActiveClass:function(){this._removeClass("ui-droppable-active")}});var u=t.ui.intersect=function(){function t(t,e,i){return t>=e&&e+i>t}return function(e,i,s,n){if(!i.offset)return!1;var o=(e.positionAbs||e.position.absolute).left+e.margins.left,a=(e.positionAbs||e.position.absolute).top+e.margins.top,r=o+e.helperProportions.width,h=a+e.helperProportions.height,l=i.offset.left,c=i.offset.top,u=l+i.proportions().width,d=c+i.proportions().height;switch(s){case"fit":return o>=l&&u>=r&&a>=c&&d>=h;case"intersect":return o+e.helperProportions.width/2>l&&u>r-e.helperProportions.width/2&&a+e.helperProportions.height/2>c&&d>h-e.helperProportions.height/2;case"pointer":return t(n.pageY,c,i.proportions().height)&&t(n.pageX,l,i.proportions().width);case"touch":return(a>=c&&d>=a||h>=c&&d>=h||c>a&&h>d)&&(o>=l&&u>=o||r>=l&&u>=r||l>o&&r>u);default:return!1}}}();t.ui.ddmanager={current:null,droppables:{"default":[]},prepareOffsets:function(e,i){var s,n,o=t.ui.ddmanager.droppables[e.options.scope]||[],a=i?i.type:null,r=(e.currentItem||e.element).find(":data(ui-droppable)").addBack();t:for(s=0;o.length>s;s++)if(!(o[s].options.disabled||e&&!o[s].accept.call(o[s].element[0],e.currentItem||e.element))){for(n=0;r.length>n;n++)if(r[n]===o[s].element[0]){o[s].proportions().height=0;continue t}o[s].visible="none"!==o[s].element.css("display"),o[s].visible&&("mousedown"===a&&o[s]._activate.call(o[s],i),o[s].offset=o[s].element.offset(),o[s].proportions({width:o[s].element[0].offsetWidth,height:o[s].element[0].offsetHeight}))}},drop:function(e,i){var s=!1;return t.each((t.ui.ddmanager.droppables[e.options.scope]||[]).slice(),function(){this.options&&(!this.options.disabled&&this.visible&&u(e,this,this.options.tolerance,i)&&(s=this._drop.call(this,i)||s),!this.options.disabled&&this.visible&&this.accept.call(this.element[0],e.currentItem||e.element)&&(this.isout=!0,this.isover=!1,this._deactivate.call(this,i)))}),s},dragStart:function(e,i){e.element.parentsUntil("body").on("scroll.droppable",function(){e.options.refreshPositions||t.ui.ddmanager.prepareOffsets(e,i)})},drag:function(e,i){e.options.refreshPositions&&t.ui.ddmanager.prepareOffsets(e,i),t.each(t.ui.ddmanager.droppables[e.options.scope]||[],function(){if(!this.options.disabled&&!this.greedyChild&&this.visible){var s,n,o,a=u(e,this,this.options.tolerance,i),r=!a&&this.isover?"isout":a&&!this.isover?"isover":null;r&&(this.options.greedy&&(n=this.options.scope,o=this.element.parents(":data(ui-droppable)").filter(function(){return t(this).droppable("instance").options.scope===n}),o.length&&(s=t(o[0]).droppable("instance"),s.greedyChild="isover"===r)),s&&"isover"===r&&(s.isover=!1,s.isout=!0,s._out.call(s,i)),this[r]=!0,this["isout"===r?"isover":"isout"]=!1,this["isover"===r?"_over":"_out"].call(this,i),s&&"isout"===r&&(s.isout=!1,s.isover=!0,s._over.call(s,i)))}})},dragStop:function(e,i){e.element.parentsUntil("body").off("scroll.droppable"),e.options.refreshPositions||t.ui.ddmanager.prepareOffsets(e,i)}},t.uiBackCompat!==!1&&t.widget("ui.droppable",t.ui.droppable,{options:{hoverClass:!1,activeClass:!1},_addActiveClass:function(){this._super(),this.options.activeClass&&this.element.addClass(this.options.activeClass)},_removeActiveClass:function(){this._super(),this.options.activeClass&&this.element.removeClass(this.options.activeClass)},_addHoverClass:function(){this._super(),this.options.hoverClass&&this.element.addClass(this.options.hoverClass)},_removeHoverClass:function(){this._super(),this.options.hoverClass&&this.element.removeClass(this.options.hoverClass)}}),t.ui.droppable,t.widget("ui.resizable",t.ui.mouse,{version:"1.12.1",widgetEventPrefix:"resize",options:{alsoResize:!1,animate:!1,animateDuration:"slow",animateEasing:"swing",aspectRatio:!1,autoHide:!1,classes:{"ui-resizable-se":"ui-icon ui-icon-gripsmall-diagonal-se"},containment:!1,ghost:!1,grid:!1,handles:"e,s,se",helper:!1,maxHeight:null,maxWidth:null,minHeight:10,minWidth:10,zIndex:90,resize:null,start:null,stop:null},_num:function(t){return parseFloat(t)||0},_isNumber:function(t){return!isNaN(parseFloat(t))},_hasScroll:function(e,i){if("hidden"===t(e).css("overflow"))return!1;var s=i&&"left"===i?"scrollLeft":"scrollTop",n=!1;return e[s]>0?!0:(e[s]=1,n=e[s]>0,e[s]=0,n)},_create:function(){var e,i=this.options,s=this;this._addClass("ui-resizable"),t.extend(this,{_aspectRatio:!!i.aspectRatio,aspectRatio:i.aspectRatio,originalElement:this.element,_proportionallyResizeElements:[],_helper:i.helper||i.ghost||i.animate?i.helper||"ui-resizable-helper":null}),this.element[0].nodeName.match(/^(canvas|textarea|input|select|button|img)$/i)&&(this.element.wrap(t("<div class='ui-wrapper' style='overflow: hidden;'></div>").css({position:this.element.css("position"),width:this.element.outerWidth(),height:this.element.outerHeight(),top:this.element.css("top"),left:this.element.css("left")})),this.element=this.element.parent().data("ui-resizable",this.element.resizable("instance")),this.elementIsWrapper=!0,e={marginTop:this.originalElement.css("marginTop"),marginRight:this.originalElement.css("marginRight"),marginBottom:this.originalElement.css("marginBottom"),marginLeft:this.originalElement.css("marginLeft")},this.element.css(e),this.originalElement.css("margin",0),this.originalResizeStyle=this.originalElement.css("resize"),this.originalElement.css("resize","none"),this._proportionallyResizeElements.push(this.originalElement.css({position:"static",zoom:1,display:"block"})),this.originalElement.css(e),this._proportionallyResize()),this._setupHandles(),i.autoHide&&t(this.element).on("mouseenter",function(){i.disabled||(s._removeClass("ui-resizable-autohide"),s._handles.show())}).on("mouseleave",function(){i.disabled||s.resizing||(s._addClass("ui-resizable-autohide"),s._handles.hide())}),this._mouseInit()},_destroy:function(){this._mouseDestroy();var e,i=function(e){t(e).removeData("resizable").removeData("ui-resizable").off(".resizable").find(".ui-resizable-handle").remove()};return this.elementIsWrapper&&(i(this.element),e=this.element,this.originalElement.css({position:e.css("position"),width:e.outerWidth(),height:e.outerHeight(),top:e.css("top"),left:e.css("left")}).insertAfter(e),e.remove()),this.originalElement.css("resize",this.originalResizeStyle),i(this.originalElement),this},_setOption:function(t,e){switch(this._super(t,e),t){case"handles":this._removeHandles(),this._setupHandles();break;default:}},_setupHandles:function(){var e,i,s,n,o,a=this.options,r=this;if(this.handles=a.handles||(t(".ui-resizable-handle",this.element).length?{n:".ui-resizable-n",e:".ui-resizable-e",s:".ui-resizable-s",w:".ui-resizable-w",se:".ui-resizable-se",sw:".ui-resizable-sw",ne:".ui-resizable-ne",nw:".ui-resizable-nw"}:"e,s,se"),this._handles=t(),this.handles.constructor===String)for("all"===this.handles&&(this.handles="n,e,s,w,se,sw,ne,nw"),s=this.handles.split(","),this.handles={},i=0;s.length>i;i++)e=t.trim(s[i]),n="ui-resizable-"+e,o=t("<div>"),this._addClass(o,"ui-resizable-handle "+n),o.css({zIndex:a.zIndex}),this.handles[e]=".ui-resizable-"+e,this.element.append(o);this._renderAxis=function(e){var i,s,n,o;e=e||this.element;for(i in this.handles)this.handles[i].constructor===String?this.handles[i]=this.element.children(this.handles[i]).first().show():(this.handles[i].jquery||this.handles[i].nodeType)&&(this.handles[i]=t(this.handles[i]),this._on(this.handles[i],{mousedown:r._mouseDown})),this.elementIsWrapper&&this.originalElement[0].nodeName.match(/^(textarea|input|select|button)$/i)&&(s=t(this.handles[i],this.element),o=/sw|ne|nw|se|n|s/.test(i)?s.outerHeight():s.outerWidth(),n=["padding",/ne|nw|n/.test(i)?"Top":/se|sw|s/.test(i)?"Bottom":/^e$/.test(i)?"Right":"Left"].join(""),e.css(n,o),this._proportionallyResize()),this._handles=this._handles.add(this.handles[i])},this._renderAxis(this.element),this._handles=this._handles.add(this.element.find(".ui-resizable-handle")),this._handles.disableSelection(),this._handles.on("mouseover",function(){r.resizing||(this.className&&(o=this.className.match(/ui-resizable-(se|sw|ne|nw|n|e|s|w)/i)),r.axis=o&&o[1]?o[1]:"se")}),a.autoHide&&(this._handles.hide(),this._addClass("ui-resizable-autohide"))},_removeHandles:function(){this._handles.remove()},_mouseCapture:function(e){var i,s,n=!1;for(i in this.handles)s=t(this.handles[i])[0],(s===e.target||t.contains(s,e.target))&&(n=!0);return!this.options.disabled&&n},_mouseStart:function(e){var i,s,n,o=this.options,a=this.element;return this.resizing=!0,this._renderProxy(),i=this._num(this.helper.css("left")),s=this._num(this.helper.css("top")),o.containment&&(i+=t(o.containment).scrollLeft()||0,s+=t(o.containment).scrollTop()||0),this.offset=this.helper.offset(),this.position={left:i,top:s},this.size=this._helper?{width:this.helper.width(),height:this.helper.height()}:{width:a.width(),height:a.height()},this.originalSize=this._helper?{width:a.outerWidth(),height:a.outerHeight()}:{width:a.width(),height:a.height()},this.sizeDiff={width:a.outerWidth()-a.width(),height:a.outerHeight()-a.height()},this.originalPosition={left:i,top:s},this.originalMousePosition={left:e.pageX,top:e.pageY},this.aspectRatio="number"==typeof o.aspectRatio?o.aspectRatio:this.originalSize.width/this.originalSize.height||1,n=t(".ui-resizable-"+this.axis).css("cursor"),t("body").css("cursor","auto"===n?this.axis+"-resize":n),this._addClass("ui-resizable-resizing"),this._propagate("start",e),!0},_mouseDrag:function(e){var i,s,n=this.originalMousePosition,o=this.axis,a=e.pageX-n.left||0,r=e.pageY-n.top||0,h=this._change[o];return this._updatePrevProperties(),h?(i=h.apply(this,[e,a,r]),this._updateVirtualBoundaries(e.shiftKey),(this._aspectRatio||e.shiftKey)&&(i=this._updateRatio(i,e)),i=this._respectSize(i,e),this._updateCache(i),this._propagate("resize",e),s=this._applyChanges(),!this._helper&&this._proportionallyResizeElements.length&&this._proportionallyResize(),t.isEmptyObject(s)||(this._updatePrevProperties(),this._trigger("resize",e,this.ui()),this._applyChanges()),!1):!1},_mouseStop:function(e){this.resizing=!1;var i,s,n,o,a,r,h,l=this.options,c=this;return this._helper&&(i=this._proportionallyResizeElements,s=i.length&&/textarea/i.test(i[0].nodeName),n=s&&this._hasScroll(i[0],"left")?0:c.sizeDiff.height,o=s?0:c.sizeDiff.width,a={width:c.helper.width()-o,height:c.helper.height()-n},r=parseFloat(c.element.css("left"))+(c.position.left-c.originalPosition.left)||null,h=parseFloat(c.element.css("top"))+(c.position.top-c.originalPosition.top)||null,l.animate||this.element.css(t.extend(a,{top:h,left:r})),c.helper.height(c.size.height),c.helper.width(c.size.width),this._helper&&!l.animate&&this._proportionallyResize()),t("body").css("cursor","auto"),this._removeClass("ui-resizable-resizing"),this._propagate("stop",e),this._helper&&this.helper.remove(),!1},_updatePrevProperties:function(){this.prevPosition={top:this.position.top,left:this.position.left},this.prevSize={width:this.size.width,height:this.size.height}},_applyChanges:function(){var t={};return this.position.top!==this.prevPosition.top&&(t.top=this.position.top+"px"),this.position.left!==this.prevPosition.left&&(t.left=this.position.left+"px"),this.size.width!==this.prevSize.width&&(t.width=this.size.width+"px"),this.size.height!==this.prevSize.height&&(t.height=this.size.height+"px"),this.helper.css(t),t},_updateVirtualBoundaries:function(t){var e,i,s,n,o,a=this.options;o={minWidth:this._isNumber(a.minWidth)?a.minWidth:0,maxWidth:this._isNumber(a.maxWidth)?a.maxWidth:1/0,minHeight:this._isNumber(a.minHeight)?a.minHeight:0,maxHeight:this._isNumber(a.maxHeight)?a.maxHeight:1/0},(this._aspectRatio||t)&&(e=o.minHeight*this.aspectRatio,s=o.minWidth/this.aspectRatio,i=o.maxHeight*this.aspectRatio,n=o.maxWidth/this.aspectRatio,e>o.minWidth&&(o.minWidth=e),s>o.minHeight&&(o.minHeight=s),o.maxWidth>i&&(o.maxWidth=i),o.maxHeight>n&&(o.maxHeight=n)),this._vBoundaries=o},_updateCache:function(t){this.offset=this.helper.offset(),this._isNumber(t.left)&&(this.position.left=t.left),this._isNumber(t.top)&&(this.position.top=t.top),this._isNumber(t.height)&&(this.size.height=t.height),this._isNumber(t.width)&&(this.size.width=t.width)},_updateRatio:function(t){var e=this.position,i=this.size,s=this.axis;return this._isNumber(t.height)?t.width=t.height*this.aspectRatio:this._isNumber(t.width)&&(t.height=t.width/this.aspectRatio),"sw"===s&&(t.left=e.left+(i.width-t.width),t.top=null),"nw"===s&&(t.top=e.top+(i.height-t.height),t.left=e.left+(i.width-t.width)),t},_respectSize:function(t){var e=this._vBoundaries,i=this.axis,s=this._isNumber(t.width)&&e.maxWidth&&e.maxWidth<t.width,n=this._isNumber(t.height)&&e.maxHeight&&e.maxHeight<t.height,o=this._isNumber(t.width)&&e.minWidth&&e.minWidth>t.width,a=this._isNumber(t.height)&&e.minHeight&&e.minHeight>t.height,r=this.originalPosition.left+this.originalSize.width,h=this.originalPosition.top+this.originalSize.height,l=/sw|nw|w/.test(i),c=/nw|ne|n/.test(i);return o&&(t.width=e.minWidth),a&&(t.height=e.minHeight),s&&(t.width=e.maxWidth),n&&(t.height=e.maxHeight),o&&l&&(t.left=r-e.minWidth),s&&l&&(t.left=r-e.maxWidth),a&&c&&(t.top=h-e.minHeight),n&&c&&(t.top=h-e.maxHeight),t.width||t.height||t.left||!t.top?t.width||t.height||t.top||!t.left||(t.left=null):t.top=null,t},_getPaddingPlusBorderDimensions:function(t){for(var e=0,i=[],s=[t.css("borderTopWidth"),t.css("borderRightWidth"),t.css("borderBottomWidth"),t.css("borderLeftWidth")],n=[t.css("paddingTop"),t.css("paddingRight"),t.css("paddingBottom"),t.css("paddingLeft")];4>e;e++)i[e]=parseFloat(s[e])||0,i[e]+=parseFloat(n[e])||0;return{height:i[0]+i[2],width:i[1]+i[3]}},_proportionallyResize:function(){if(this._proportionallyResizeElements.length)for(var t,e=0,i=this.helper||this.element;this._proportionallyResizeElements.length>e;e++)t=this._proportionallyResizeElements[e],this.outerDimensions||(this.outerDimensions=this._getPaddingPlusBorderDimensions(t)),t.css({height:i.height()-this.outerDimensions.height||0,width:i.width()-this.outerDimensions.width||0})},_renderProxy:function(){var e=this.element,i=this.options;this.elementOffset=e.offset(),this._helper?(this.helper=this.helper||t("<div style='overflow:hidden;'></div>"),this._addClass(this.helper,this._helper),this.helper.css({width:this.element.outerWidth(),height:this.element.outerHeight(),position:"absolute",left:this.elementOffset.left+"px",top:this.elementOffset.top+"px",zIndex:++i.zIndex}),this.helper.appendTo("body").disableSelection()):this.helper=this.element},_change:{e:function(t,e){return{width:this.originalSize.width+e}},w:function(t,e){var i=this.originalSize,s=this.originalPosition;return{left:s.left+e,width:i.width-e}},n:function(t,e,i){var s=this.originalSize,n=this.originalPosition;return{top:n.top+i,height:s.height-i}},s:function(t,e,i){return{height:this.originalSize.height+i}},se:function(e,i,s){return t.extend(this._change.s.apply(this,arguments),this._change.e.apply(this,[e,i,s]))},sw:function(e,i,s){return t.extend(this._change.s.apply(this,arguments),this._change.w.apply(this,[e,i,s]))},ne:function(e,i,s){return t.extend(this._change.n.apply(this,arguments),this._change.e.apply(this,[e,i,s]))},nw:function(e,i,s){return t.extend(this._change.n.apply(this,arguments),this._change.w.apply(this,[e,i,s]))}},_propagate:function(e,i){t.ui.plugin.call(this,e,[i,this.ui()]),"resize"!==e&&this._trigger(e,i,this.ui())},plugins:{},ui:function(){return{originalElement:this.originalElement,element:this.element,helper:this.helper,position:this.position,size:this.size,originalSize:this.originalSize,originalPosition:this.originalPosition}}}),t.ui.plugin.add("resizable","animate",{stop:function(e){var i=t(this).resizable("instance"),s=i.options,n=i._proportionallyResizeElements,o=n.length&&/textarea/i.test(n[0].nodeName),a=o&&i._hasScroll(n[0],"left")?0:i.sizeDiff.height,r=o?0:i.sizeDiff.width,h={width:i.size.width-r,height:i.size.height-a},l=parseFloat(i.element.css("left"))+(i.position.left-i.originalPosition.left)||null,c=parseFloat(i.element.css("top"))+(i.position.top-i.originalPosition.top)||null;i.element.animate(t.extend(h,c&&l?{top:c,left:l}:{}),{duration:s.animateDuration,easing:s.animateEasing,step:function(){var s={width:parseFloat(i.element.css("width")),height:parseFloat(i.element.css("height")),top:parseFloat(i.element.css("top")),left:parseFloat(i.element.css("left"))};n&&n.length&&t(n[0]).css({width:s.width,height:s.height}),i._updateCache(s),i._propagate("resize",e)}})}}),t.ui.plugin.add("resizable","containment",{start:function(){var e,i,s,n,o,a,r,h=t(this).resizable("instance"),l=h.options,c=h.element,u=l.containment,d=u instanceof t?u.get(0):/parent/.test(u)?c.parent().get(0):u;d&&(h.containerElement=t(d),/document/.test(u)||u===document?(h.containerOffset={left:0,top:0},h.containerPosition={left:0,top:0},h.parentData={element:t(document),left:0,top:0,width:t(document).width(),height:t(document).height()||document.body.parentNode.scrollHeight}):(e=t(d),i=[],t(["Top","Right","Left","Bottom"]).each(function(t,s){i[t]=h._num(e.css("padding"+s))}),h.containerOffset=e.offset(),h.containerPosition=e.position(),h.containerSize={height:e.innerHeight()-i[3],width:e.innerWidth()-i[1]},s=h.containerOffset,n=h.containerSize.height,o=h.containerSize.width,a=h._hasScroll(d,"left")?d.scrollWidth:o,r=h._hasScroll(d)?d.scrollHeight:n,h.parentData={element:d,left:s.left,top:s.top,width:a,height:r}))},resize:function(e){var i,s,n,o,a=t(this).resizable("instance"),r=a.options,h=a.containerOffset,l=a.position,c=a._aspectRatio||e.shiftKey,u={top:0,left:0},d=a.containerElement,p=!0;d[0]!==document&&/static/.test(d.css("position"))&&(u=h),l.left<(a._helper?h.left:0)&&(a.size.width=a.size.width+(a._helper?a.position.left-h.left:a.position.left-u.left),c&&(a.size.height=a.size.width/a.aspectRatio,p=!1),a.position.left=r.helper?h.left:0),l.top<(a._helper?h.top:0)&&(a.size.height=a.size.height+(a._helper?a.position.top-h.top:a.position.top),c&&(a.size.width=a.size.height*a.aspectRatio,p=!1),a.position.top=a._helper?h.top:0),n=a.containerElement.get(0)===a.element.parent().get(0),o=/relative|absolute/.test(a.containerElement.css("position")),n&&o?(a.offset.left=a.parentData.left+a.position.left,a.offset.top=a.parentData.top+a.position.top):(a.offset.left=a.element.offset().left,a.offset.top=a.element.offset().top),i=Math.abs(a.sizeDiff.width+(a._helper?a.offset.left-u.left:a.offset.left-h.left)),s=Math.abs(a.sizeDiff.height+(a._helper?a.offset.top-u.top:a.offset.top-h.top)),i+a.size.width>=a.parentData.width&&(a.size.width=a.parentData.width-i,c&&(a.size.height=a.size.width/a.aspectRatio,p=!1)),s+a.size.height>=a.parentData.height&&(a.size.height=a.parentData.height-s,c&&(a.size.width=a.size.height*a.aspectRatio,p=!1)),p||(a.position.left=a.prevPosition.left,a.position.top=a.prevPosition.top,a.size.width=a.prevSize.width,a.size.height=a.prevSize.height)},stop:function(){var e=t(this).resizable("instance"),i=e.options,s=e.containerOffset,n=e.containerPosition,o=e.containerElement,a=t(e.helper),r=a.offset(),h=a.outerWidth()-e.sizeDiff.width,l=a.outerHeight()-e.sizeDiff.height;e._helper&&!i.animate&&/relative/.test(o.css("position"))&&t(this).css({left:r.left-n.left-s.left,width:h,height:l}),e._helper&&!i.animate&&/static/.test(o.css("position"))&&t(this).css({left:r.left-n.left-s.left,width:h,height:l})}}),t.ui.plugin.add("resizable","alsoResize",{start:function(){var e=t(this).resizable("instance"),i=e.options;t(i.alsoResize).each(function(){var e=t(this);e.data("ui-resizable-alsoresize",{width:parseFloat(e.width()),height:parseFloat(e.height()),left:parseFloat(e.css("left")),top:parseFloat(e.css("top"))})})},resize:function(e,i){var s=t(this).resizable("instance"),n=s.options,o=s.originalSize,a=s.originalPosition,r={height:s.size.height-o.height||0,width:s.size.width-o.width||0,top:s.position.top-a.top||0,left:s.position.left-a.left||0};
t(n.alsoResize).each(function(){var e=t(this),s=t(this).data("ui-resizable-alsoresize"),n={},o=e.parents(i.originalElement[0]).length?["width","height"]:["width","height","top","left"];t.each(o,function(t,e){var i=(s[e]||0)+(r[e]||0);i&&i>=0&&(n[e]=i||null)}),e.css(n)})},stop:function(){t(this).removeData("ui-resizable-alsoresize")}}),t.ui.plugin.add("resizable","ghost",{start:function(){var e=t(this).resizable("instance"),i=e.size;e.ghost=e.originalElement.clone(),e.ghost.css({opacity:.25,display:"block",position:"relative",height:i.height,width:i.width,margin:0,left:0,top:0}),e._addClass(e.ghost,"ui-resizable-ghost"),t.uiBackCompat!==!1&&"string"==typeof e.options.ghost&&e.ghost.addClass(this.options.ghost),e.ghost.appendTo(e.helper)},resize:function(){var e=t(this).resizable("instance");e.ghost&&e.ghost.css({position:"relative",height:e.size.height,width:e.size.width})},stop:function(){var e=t(this).resizable("instance");e.ghost&&e.helper&&e.helper.get(0).removeChild(e.ghost.get(0))}}),t.ui.plugin.add("resizable","grid",{resize:function(){var e,i=t(this).resizable("instance"),s=i.options,n=i.size,o=i.originalSize,a=i.originalPosition,r=i.axis,h="number"==typeof s.grid?[s.grid,s.grid]:s.grid,l=h[0]||1,c=h[1]||1,u=Math.round((n.width-o.width)/l)*l,d=Math.round((n.height-o.height)/c)*c,p=o.width+u,f=o.height+d,g=s.maxWidth&&p>s.maxWidth,m=s.maxHeight&&f>s.maxHeight,_=s.minWidth&&s.minWidth>p,v=s.minHeight&&s.minHeight>f;s.grid=h,_&&(p+=l),v&&(f+=c),g&&(p-=l),m&&(f-=c),/^(se|s|e)$/.test(r)?(i.size.width=p,i.size.height=f):/^(ne)$/.test(r)?(i.size.width=p,i.size.height=f,i.position.top=a.top-d):/^(sw)$/.test(r)?(i.size.width=p,i.size.height=f,i.position.left=a.left-u):((0>=f-c||0>=p-l)&&(e=i._getPaddingPlusBorderDimensions(this)),f-c>0?(i.size.height=f,i.position.top=a.top-d):(f=c-e.height,i.size.height=f,i.position.top=a.top+o.height-f),p-l>0?(i.size.width=p,i.position.left=a.left-u):(p=l-e.width,i.size.width=p,i.position.left=a.left+o.width-p))}}),t.ui.resizable,t.widget("ui.selectable",t.ui.mouse,{version:"1.12.1",options:{appendTo:"body",autoRefresh:!0,distance:0,filter:"*",tolerance:"touch",selected:null,selecting:null,start:null,stop:null,unselected:null,unselecting:null},_create:function(){var e=this;this._addClass("ui-selectable"),this.dragged=!1,this.refresh=function(){e.elementPos=t(e.element[0]).offset(),e.selectees=t(e.options.filter,e.element[0]),e._addClass(e.selectees,"ui-selectee"),e.selectees.each(function(){var i=t(this),s=i.offset(),n={left:s.left-e.elementPos.left,top:s.top-e.elementPos.top};t.data(this,"selectable-item",{element:this,$element:i,left:n.left,top:n.top,right:n.left+i.outerWidth(),bottom:n.top+i.outerHeight(),startselected:!1,selected:i.hasClass("ui-selected"),selecting:i.hasClass("ui-selecting"),unselecting:i.hasClass("ui-unselecting")})})},this.refresh(),this._mouseInit(),this.helper=t("<div>"),this._addClass(this.helper,"ui-selectable-helper")},_destroy:function(){this.selectees.removeData("selectable-item"),this._mouseDestroy()},_mouseStart:function(e){var i=this,s=this.options;this.opos=[e.pageX,e.pageY],this.elementPos=t(this.element[0]).offset(),this.options.disabled||(this.selectees=t(s.filter,this.element[0]),this._trigger("start",e),t(s.appendTo).append(this.helper),this.helper.css({left:e.pageX,top:e.pageY,width:0,height:0}),s.autoRefresh&&this.refresh(),this.selectees.filter(".ui-selected").each(function(){var s=t.data(this,"selectable-item");s.startselected=!0,e.metaKey||e.ctrlKey||(i._removeClass(s.$element,"ui-selected"),s.selected=!1,i._addClass(s.$element,"ui-unselecting"),s.unselecting=!0,i._trigger("unselecting",e,{unselecting:s.element}))}),t(e.target).parents().addBack().each(function(){var s,n=t.data(this,"selectable-item");return n?(s=!e.metaKey&&!e.ctrlKey||!n.$element.hasClass("ui-selected"),i._removeClass(n.$element,s?"ui-unselecting":"ui-selected")._addClass(n.$element,s?"ui-selecting":"ui-unselecting"),n.unselecting=!s,n.selecting=s,n.selected=s,s?i._trigger("selecting",e,{selecting:n.element}):i._trigger("unselecting",e,{unselecting:n.element}),!1):void 0}))},_mouseDrag:function(e){if(this.dragged=!0,!this.options.disabled){var i,s=this,n=this.options,o=this.opos[0],a=this.opos[1],r=e.pageX,h=e.pageY;return o>r&&(i=r,r=o,o=i),a>h&&(i=h,h=a,a=i),this.helper.css({left:o,top:a,width:r-o,height:h-a}),this.selectees.each(function(){var i=t.data(this,"selectable-item"),l=!1,c={};i&&i.element!==s.element[0]&&(c.left=i.left+s.elementPos.left,c.right=i.right+s.elementPos.left,c.top=i.top+s.elementPos.top,c.bottom=i.bottom+s.elementPos.top,"touch"===n.tolerance?l=!(c.left>r||o>c.right||c.top>h||a>c.bottom):"fit"===n.tolerance&&(l=c.left>o&&r>c.right&&c.top>a&&h>c.bottom),l?(i.selected&&(s._removeClass(i.$element,"ui-selected"),i.selected=!1),i.unselecting&&(s._removeClass(i.$element,"ui-unselecting"),i.unselecting=!1),i.selecting||(s._addClass(i.$element,"ui-selecting"),i.selecting=!0,s._trigger("selecting",e,{selecting:i.element}))):(i.selecting&&((e.metaKey||e.ctrlKey)&&i.startselected?(s._removeClass(i.$element,"ui-selecting"),i.selecting=!1,s._addClass(i.$element,"ui-selected"),i.selected=!0):(s._removeClass(i.$element,"ui-selecting"),i.selecting=!1,i.startselected&&(s._addClass(i.$element,"ui-unselecting"),i.unselecting=!0),s._trigger("unselecting",e,{unselecting:i.element}))),i.selected&&(e.metaKey||e.ctrlKey||i.startselected||(s._removeClass(i.$element,"ui-selected"),i.selected=!1,s._addClass(i.$element,"ui-unselecting"),i.unselecting=!0,s._trigger("unselecting",e,{unselecting:i.element})))))}),!1}},_mouseStop:function(e){var i=this;return this.dragged=!1,t(".ui-unselecting",this.element[0]).each(function(){var s=t.data(this,"selectable-item");i._removeClass(s.$element,"ui-unselecting"),s.unselecting=!1,s.startselected=!1,i._trigger("unselected",e,{unselected:s.element})}),t(".ui-selecting",this.element[0]).each(function(){var s=t.data(this,"selectable-item");i._removeClass(s.$element,"ui-selecting")._addClass(s.$element,"ui-selected"),s.selecting=!1,s.selected=!0,s.startselected=!0,i._trigger("selected",e,{selected:s.element})}),this._trigger("stop",e),this.helper.remove(),!1}}),t.widget("ui.sortable",t.ui.mouse,{version:"1.12.1",widgetEventPrefix:"sort",ready:!1,options:{appendTo:"parent",axis:!1,connectWith:!1,containment:!1,cursor:"auto",cursorAt:!1,dropOnEmpty:!0,forcePlaceholderSize:!1,forceHelperSize:!1,grid:!1,handle:!1,helper:"original",items:"> *",opacity:!1,placeholder:!1,revert:!1,scroll:!0,scrollSensitivity:20,scrollSpeed:20,scope:"default",tolerance:"intersect",zIndex:1e3,activate:null,beforeStop:null,change:null,deactivate:null,out:null,over:null,receive:null,remove:null,sort:null,start:null,stop:null,update:null},_isOverAxis:function(t,e,i){return t>=e&&e+i>t},_isFloating:function(t){return/left|right/.test(t.css("float"))||/inline|table-cell/.test(t.css("display"))},_create:function(){this.containerCache={},this._addClass("ui-sortable"),this.refresh(),this.offset=this.element.offset(),this._mouseInit(),this._setHandleClassName(),this.ready=!0},_setOption:function(t,e){this._super(t,e),"handle"===t&&this._setHandleClassName()},_setHandleClassName:function(){var e=this;this._removeClass(this.element.find(".ui-sortable-handle"),"ui-sortable-handle"),t.each(this.items,function(){e._addClass(this.instance.options.handle?this.item.find(this.instance.options.handle):this.item,"ui-sortable-handle")})},_destroy:function(){this._mouseDestroy();for(var t=this.items.length-1;t>=0;t--)this.items[t].item.removeData(this.widgetName+"-item");return this},_mouseCapture:function(e,i){var s=null,n=!1,o=this;return this.reverting?!1:this.options.disabled||"static"===this.options.type?!1:(this._refreshItems(e),t(e.target).parents().each(function(){return t.data(this,o.widgetName+"-item")===o?(s=t(this),!1):void 0}),t.data(e.target,o.widgetName+"-item")===o&&(s=t(e.target)),s?!this.options.handle||i||(t(this.options.handle,s).find("*").addBack().each(function(){this===e.target&&(n=!0)}),n)?(this.currentItem=s,this._removeCurrentsFromItems(),!0):!1:!1)},_mouseStart:function(e,i,s){var n,o,a=this.options;if(this.currentContainer=this,this.refreshPositions(),this.helper=this._createHelper(e),this._cacheHelperProportions(),this._cacheMargins(),this.scrollParent=this.helper.scrollParent(),this.offset=this.currentItem.offset(),this.offset={top:this.offset.top-this.margins.top,left:this.offset.left-this.margins.left},t.extend(this.offset,{click:{left:e.pageX-this.offset.left,top:e.pageY-this.offset.top},parent:this._getParentOffset(),relative:this._getRelativeOffset()}),this.helper.css("position","absolute"),this.cssPosition=this.helper.css("position"),this.originalPosition=this._generatePosition(e),this.originalPageX=e.pageX,this.originalPageY=e.pageY,a.cursorAt&&this._adjustOffsetFromHelper(a.cursorAt),this.domPosition={prev:this.currentItem.prev()[0],parent:this.currentItem.parent()[0]},this.helper[0]!==this.currentItem[0]&&this.currentItem.hide(),this._createPlaceholder(),a.containment&&this._setContainment(),a.cursor&&"auto"!==a.cursor&&(o=this.document.find("body"),this.storedCursor=o.css("cursor"),o.css("cursor",a.cursor),this.storedStylesheet=t("<style>*{ cursor: "+a.cursor+" !important; }</style>").appendTo(o)),a.opacity&&(this.helper.css("opacity")&&(this._storedOpacity=this.helper.css("opacity")),this.helper.css("opacity",a.opacity)),a.zIndex&&(this.helper.css("zIndex")&&(this._storedZIndex=this.helper.css("zIndex")),this.helper.css("zIndex",a.zIndex)),this.scrollParent[0]!==this.document[0]&&"HTML"!==this.scrollParent[0].tagName&&(this.overflowOffset=this.scrollParent.offset()),this._trigger("start",e,this._uiHash()),this._preserveHelperProportions||this._cacheHelperProportions(),!s)for(n=this.containers.length-1;n>=0;n--)this.containers[n]._trigger("activate",e,this._uiHash(this));return t.ui.ddmanager&&(t.ui.ddmanager.current=this),t.ui.ddmanager&&!a.dropBehaviour&&t.ui.ddmanager.prepareOffsets(this,e),this.dragging=!0,this._addClass(this.helper,"ui-sortable-helper"),this._mouseDrag(e),!0},_mouseDrag:function(e){var i,s,n,o,a=this.options,r=!1;for(this.position=this._generatePosition(e),this.positionAbs=this._convertPositionTo("absolute"),this.lastPositionAbs||(this.lastPositionAbs=this.positionAbs),this.options.scroll&&(this.scrollParent[0]!==this.document[0]&&"HTML"!==this.scrollParent[0].tagName?(this.overflowOffset.top+this.scrollParent[0].offsetHeight-e.pageY<a.scrollSensitivity?this.scrollParent[0].scrollTop=r=this.scrollParent[0].scrollTop+a.scrollSpeed:e.pageY-this.overflowOffset.top<a.scrollSensitivity&&(this.scrollParent[0].scrollTop=r=this.scrollParent[0].scrollTop-a.scrollSpeed),this.overflowOffset.left+this.scrollParent[0].offsetWidth-e.pageX<a.scrollSensitivity?this.scrollParent[0].scrollLeft=r=this.scrollParent[0].scrollLeft+a.scrollSpeed:e.pageX-this.overflowOffset.left<a.scrollSensitivity&&(this.scrollParent[0].scrollLeft=r=this.scrollParent[0].scrollLeft-a.scrollSpeed)):(e.pageY-this.document.scrollTop()<a.scrollSensitivity?r=this.document.scrollTop(this.document.scrollTop()-a.scrollSpeed):this.window.height()-(e.pageY-this.document.scrollTop())<a.scrollSensitivity&&(r=this.document.scrollTop(this.document.scrollTop()+a.scrollSpeed)),e.pageX-this.document.scrollLeft()<a.scrollSensitivity?r=this.document.scrollLeft(this.document.scrollLeft()-a.scrollSpeed):this.window.width()-(e.pageX-this.document.scrollLeft())<a.scrollSensitivity&&(r=this.document.scrollLeft(this.document.scrollLeft()+a.scrollSpeed))),r!==!1&&t.ui.ddmanager&&!a.dropBehaviour&&t.ui.ddmanager.prepareOffsets(this,e)),this.positionAbs=this._convertPositionTo("absolute"),this.options.axis&&"y"===this.options.axis||(this.helper[0].style.left=this.position.left+"px"),this.options.axis&&"x"===this.options.axis||(this.helper[0].style.top=this.position.top+"px"),i=this.items.length-1;i>=0;i--)if(s=this.items[i],n=s.item[0],o=this._intersectsWithPointer(s),o&&s.instance===this.currentContainer&&n!==this.currentItem[0]&&this.placeholder[1===o?"next":"prev"]()[0]!==n&&!t.contains(this.placeholder[0],n)&&("semi-dynamic"===this.options.type?!t.contains(this.element[0],n):!0)){if(this.direction=1===o?"down":"up","pointer"!==this.options.tolerance&&!this._intersectsWithSides(s))break;this._rearrange(e,s),this._trigger("change",e,this._uiHash());break}return this._contactContainers(e),t.ui.ddmanager&&t.ui.ddmanager.drag(this,e),this._trigger("sort",e,this._uiHash()),this.lastPositionAbs=this.positionAbs,!1},_mouseStop:function(e,i){if(e){if(t.ui.ddmanager&&!this.options.dropBehaviour&&t.ui.ddmanager.drop(this,e),this.options.revert){var s=this,n=this.placeholder.offset(),o=this.options.axis,a={};o&&"x"!==o||(a.left=n.left-this.offset.parent.left-this.margins.left+(this.offsetParent[0]===this.document[0].body?0:this.offsetParent[0].scrollLeft)),o&&"y"!==o||(a.top=n.top-this.offset.parent.top-this.margins.top+(this.offsetParent[0]===this.document[0].body?0:this.offsetParent[0].scrollTop)),this.reverting=!0,t(this.helper).animate(a,parseInt(this.options.revert,10)||500,function(){s._clear(e)})}else this._clear(e,i);return!1}},cancel:function(){if(this.dragging){this._mouseUp(new t.Event("mouseup",{target:null})),"original"===this.options.helper?(this.currentItem.css(this._storedCSS),this._removeClass(this.currentItem,"ui-sortable-helper")):this.currentItem.show();for(var e=this.containers.length-1;e>=0;e--)this.containers[e]._trigger("deactivate",null,this._uiHash(this)),this.containers[e].containerCache.over&&(this.containers[e]._trigger("out",null,this._uiHash(this)),this.containers[e].containerCache.over=0)}return this.placeholder&&(this.placeholder[0].parentNode&&this.placeholder[0].parentNode.removeChild(this.placeholder[0]),"original"!==this.options.helper&&this.helper&&this.helper[0].parentNode&&this.helper.remove(),t.extend(this,{helper:null,dragging:!1,reverting:!1,_noFinalSort:null}),this.domPosition.prev?t(this.domPosition.prev).after(this.currentItem):t(this.domPosition.parent).prepend(this.currentItem)),this},serialize:function(e){var i=this._getItemsAsjQuery(e&&e.connected),s=[];return e=e||{},t(i).each(function(){var i=(t(e.item||this).attr(e.attribute||"id")||"").match(e.expression||/(.+)[\-=_](.+)/);i&&s.push((e.key||i[1]+"[]")+"="+(e.key&&e.expression?i[1]:i[2]))}),!s.length&&e.key&&s.push(e.key+"="),s.join("&")},toArray:function(e){var i=this._getItemsAsjQuery(e&&e.connected),s=[];return e=e||{},i.each(function(){s.push(t(e.item||this).attr(e.attribute||"id")||"")}),s},_intersectsWith:function(t){var e=this.positionAbs.left,i=e+this.helperProportions.width,s=this.positionAbs.top,n=s+this.helperProportions.height,o=t.left,a=o+t.width,r=t.top,h=r+t.height,l=this.offset.click.top,c=this.offset.click.left,u="x"===this.options.axis||s+l>r&&h>s+l,d="y"===this.options.axis||e+c>o&&a>e+c,p=u&&d;return"pointer"===this.options.tolerance||this.options.forcePointerForContainers||"pointer"!==this.options.tolerance&&this.helperProportions[this.floating?"width":"height"]>t[this.floating?"width":"height"]?p:e+this.helperProportions.width/2>o&&a>i-this.helperProportions.width/2&&s+this.helperProportions.height/2>r&&h>n-this.helperProportions.height/2},_intersectsWithPointer:function(t){var e,i,s="x"===this.options.axis||this._isOverAxis(this.positionAbs.top+this.offset.click.top,t.top,t.height),n="y"===this.options.axis||this._isOverAxis(this.positionAbs.left+this.offset.click.left,t.left,t.width),o=s&&n;return o?(e=this._getDragVerticalDirection(),i=this._getDragHorizontalDirection(),this.floating?"right"===i||"down"===e?2:1:e&&("down"===e?2:1)):!1},_intersectsWithSides:function(t){var e=this._isOverAxis(this.positionAbs.top+this.offset.click.top,t.top+t.height/2,t.height),i=this._isOverAxis(this.positionAbs.left+this.offset.click.left,t.left+t.width/2,t.width),s=this._getDragVerticalDirection(),n=this._getDragHorizontalDirection();return this.floating&&n?"right"===n&&i||"left"===n&&!i:s&&("down"===s&&e||"up"===s&&!e)},_getDragVerticalDirection:function(){var t=this.positionAbs.top-this.lastPositionAbs.top;return 0!==t&&(t>0?"down":"up")},_getDragHorizontalDirection:function(){var t=this.positionAbs.left-this.lastPositionAbs.left;return 0!==t&&(t>0?"right":"left")},refresh:function(t){return this._refreshItems(t),this._setHandleClassName(),this.refreshPositions(),this},_connectWith:function(){var t=this.options;return t.connectWith.constructor===String?[t.connectWith]:t.connectWith},_getItemsAsjQuery:function(e){function i(){r.push(this)}var s,n,o,a,r=[],h=[],l=this._connectWith();if(l&&e)for(s=l.length-1;s>=0;s--)for(o=t(l[s],this.document[0]),n=o.length-1;n>=0;n--)a=t.data(o[n],this.widgetFullName),a&&a!==this&&!a.options.disabled&&h.push([t.isFunction(a.options.items)?a.options.items.call(a.element):t(a.options.items,a.element).not(".ui-sortable-helper").not(".ui-sortable-placeholder"),a]);for(h.push([t.isFunction(this.options.items)?this.options.items.call(this.element,null,{options:this.options,item:this.currentItem}):t(this.options.items,this.element).not(".ui-sortable-helper").not(".ui-sortable-placeholder"),this]),s=h.length-1;s>=0;s--)h[s][0].each(i);return t(r)},_removeCurrentsFromItems:function(){var e=this.currentItem.find(":data("+this.widgetName+"-item)");this.items=t.grep(this.items,function(t){for(var i=0;e.length>i;i++)if(e[i]===t.item[0])return!1;return!0})},_refreshItems:function(e){this.items=[],this.containers=[this];var i,s,n,o,a,r,h,l,c=this.items,u=[[t.isFunction(this.options.items)?this.options.items.call(this.element[0],e,{item:this.currentItem}):t(this.options.items,this.element),this]],d=this._connectWith();if(d&&this.ready)for(i=d.length-1;i>=0;i--)for(n=t(d[i],this.document[0]),s=n.length-1;s>=0;s--)o=t.data(n[s],this.widgetFullName),o&&o!==this&&!o.options.disabled&&(u.push([t.isFunction(o.options.items)?o.options.items.call(o.element[0],e,{item:this.currentItem}):t(o.options.items,o.element),o]),this.containers.push(o));for(i=u.length-1;i>=0;i--)for(a=u[i][1],r=u[i][0],s=0,l=r.length;l>s;s++)h=t(r[s]),h.data(this.widgetName+"-item",a),c.push({item:h,instance:a,width:0,height:0,left:0,top:0})},refreshPositions:function(e){this.floating=this.items.length?"x"===this.options.axis||this._isFloating(this.items[0].item):!1,this.offsetParent&&this.helper&&(this.offset.parent=this._getParentOffset());var i,s,n,o;for(i=this.items.length-1;i>=0;i--)s=this.items[i],s.instance!==this.currentContainer&&this.currentContainer&&s.item[0]!==this.currentItem[0]||(n=this.options.toleranceElement?t(this.options.toleranceElement,s.item):s.item,e||(s.width=n.outerWidth(),s.height=n.outerHeight()),o=n.offset(),s.left=o.left,s.top=o.top);if(this.options.custom&&this.options.custom.refreshContainers)this.options.custom.refreshContainers.call(this);else for(i=this.containers.length-1;i>=0;i--)o=this.containers[i].element.offset(),this.containers[i].containerCache.left=o.left,this.containers[i].containerCache.top=o.top,this.containers[i].containerCache.width=this.containers[i].element.outerWidth(),this.containers[i].containerCache.height=this.containers[i].element.outerHeight();return this},_createPlaceholder:function(e){e=e||this;var i,s=e.options;s.placeholder&&s.placeholder.constructor!==String||(i=s.placeholder,s.placeholder={element:function(){var s=e.currentItem[0].nodeName.toLowerCase(),n=t("<"+s+">",e.document[0]);return e._addClass(n,"ui-sortable-placeholder",i||e.currentItem[0].className)._removeClass(n,"ui-sortable-helper"),"tbody"===s?e._createTrPlaceholder(e.currentItem.find("tr").eq(0),t("<tr>",e.document[0]).appendTo(n)):"tr"===s?e._createTrPlaceholder(e.currentItem,n):"img"===s&&n.attr("src",e.currentItem.attr("src")),i||n.css("visibility","hidden"),n},update:function(t,n){(!i||s.forcePlaceholderSize)&&(n.height()||n.height(e.currentItem.innerHeight()-parseInt(e.currentItem.css("paddingTop")||0,10)-parseInt(e.currentItem.css("paddingBottom")||0,10)),n.width()||n.width(e.currentItem.innerWidth()-parseInt(e.currentItem.css("paddingLeft")||0,10)-parseInt(e.currentItem.css("paddingRight")||0,10)))}}),e.placeholder=t(s.placeholder.element.call(e.element,e.currentItem)),e.currentItem.after(e.placeholder),s.placeholder.update(e,e.placeholder)},_createTrPlaceholder:function(e,i){var s=this;e.children().each(function(){t("<td>&#160;</td>",s.document[0]).attr("colspan",t(this).attr("colspan")||1).appendTo(i)})},_contactContainers:function(e){var i,s,n,o,a,r,h,l,c,u,d=null,p=null;for(i=this.containers.length-1;i>=0;i--)if(!t.contains(this.currentItem[0],this.containers[i].element[0]))if(this._intersectsWith(this.containers[i].containerCache)){if(d&&t.contains(this.containers[i].element[0],d.element[0]))continue;d=this.containers[i],p=i}else this.containers[i].containerCache.over&&(this.containers[i]._trigger("out",e,this._uiHash(this)),this.containers[i].containerCache.over=0);if(d)if(1===this.containers.length)this.containers[p].containerCache.over||(this.containers[p]._trigger("over",e,this._uiHash(this)),this.containers[p].containerCache.over=1);else{for(n=1e4,o=null,c=d.floating||this._isFloating(this.currentItem),a=c?"left":"top",r=c?"width":"height",u=c?"pageX":"pageY",s=this.items.length-1;s>=0;s--)t.contains(this.containers[p].element[0],this.items[s].item[0])&&this.items[s].item[0]!==this.currentItem[0]&&(h=this.items[s].item.offset()[a],l=!1,e[u]-h>this.items[s][r]/2&&(l=!0),n>Math.abs(e[u]-h)&&(n=Math.abs(e[u]-h),o=this.items[s],this.direction=l?"up":"down"));if(!o&&!this.options.dropOnEmpty)return;if(this.currentContainer===this.containers[p])return this.currentContainer.containerCache.over||(this.containers[p]._trigger("over",e,this._uiHash()),this.currentContainer.containerCache.over=1),void 0;o?this._rearrange(e,o,null,!0):this._rearrange(e,null,this.containers[p].element,!0),this._trigger("change",e,this._uiHash()),this.containers[p]._trigger("change",e,this._uiHash(this)),this.currentContainer=this.containers[p],this.options.placeholder.update(this.currentContainer,this.placeholder),this.containers[p]._trigger("over",e,this._uiHash(this)),this.containers[p].containerCache.over=1}},_createHelper:function(e){var i=this.options,s=t.isFunction(i.helper)?t(i.helper.apply(this.element[0],[e,this.currentItem])):"clone"===i.helper?this.currentItem.clone():this.currentItem;return s.parents("body").length||t("parent"!==i.appendTo?i.appendTo:this.currentItem[0].parentNode)[0].appendChild(s[0]),s[0]===this.currentItem[0]&&(this._storedCSS={width:this.currentItem[0].style.width,height:this.currentItem[0].style.height,position:this.currentItem.css("position"),top:this.currentItem.css("top"),left:this.currentItem.css("left")}),(!s[0].style.width||i.forceHelperSize)&&s.width(this.currentItem.width()),(!s[0].style.height||i.forceHelperSize)&&s.height(this.currentItem.height()),s},_adjustOffsetFromHelper:function(e){"string"==typeof e&&(e=e.split(" ")),t.isArray(e)&&(e={left:+e[0],top:+e[1]||0}),"left"in e&&(this.offset.click.left=e.left+this.margins.left),"right"in e&&(this.offset.click.left=this.helperProportions.width-e.right+this.margins.left),"top"in e&&(this.offset.click.top=e.top+this.margins.top),"bottom"in e&&(this.offset.click.top=this.helperProportions.height-e.bottom+this.margins.top)},_getParentOffset:function(){this.offsetParent=this.helper.offsetParent();var e=this.offsetParent.offset();return"absolute"===this.cssPosition&&this.scrollParent[0]!==this.document[0]&&t.contains(this.scrollParent[0],this.offsetParent[0])&&(e.left+=this.scrollParent.scrollLeft(),e.top+=this.scrollParent.scrollTop()),(this.offsetParent[0]===this.document[0].body||this.offsetParent[0].tagName&&"html"===this.offsetParent[0].tagName.toLowerCase()&&t.ui.ie)&&(e={top:0,left:0}),{top:e.top+(parseInt(this.offsetParent.css("borderTopWidth"),10)||0),left:e.left+(parseInt(this.offsetParent.css("borderLeftWidth"),10)||0)}},_getRelativeOffset:function(){if("relative"===this.cssPosition){var t=this.currentItem.position();return{top:t.top-(parseInt(this.helper.css("top"),10)||0)+this.scrollParent.scrollTop(),left:t.left-(parseInt(this.helper.css("left"),10)||0)+this.scrollParent.scrollLeft()}}return{top:0,left:0}},_cacheMargins:function(){this.margins={left:parseInt(this.currentItem.css("marginLeft"),10)||0,top:parseInt(this.currentItem.css("marginTop"),10)||0}},_cacheHelperProportions:function(){this.helperProportions={width:this.helper.outerWidth(),height:this.helper.outerHeight()}},_setContainment:function(){var e,i,s,n=this.options;"parent"===n.containment&&(n.containment=this.helper[0].parentNode),("document"===n.containment||"window"===n.containment)&&(this.containment=[0-this.offset.relative.left-this.offset.parent.left,0-this.offset.relative.top-this.offset.parent.top,"document"===n.containment?this.document.width():this.window.width()-this.helperProportions.width-this.margins.left,("document"===n.containment?this.document.height()||document.body.parentNode.scrollHeight:this.window.height()||this.document[0].body.parentNode.scrollHeight)-this.helperProportions.height-this.margins.top]),/^(document|window|parent)$/.test(n.containment)||(e=t(n.containment)[0],i=t(n.containment).offset(),s="hidden"!==t(e).css("overflow"),this.containment=[i.left+(parseInt(t(e).css("borderLeftWidth"),10)||0)+(parseInt(t(e).css("paddingLeft"),10)||0)-this.margins.left,i.top+(parseInt(t(e).css("borderTopWidth"),10)||0)+(parseInt(t(e).css("paddingTop"),10)||0)-this.margins.top,i.left+(s?Math.max(e.scrollWidth,e.offsetWidth):e.offsetWidth)-(parseInt(t(e).css("borderLeftWidth"),10)||0)-(parseInt(t(e).css("paddingRight"),10)||0)-this.helperProportions.width-this.margins.left,i.top+(s?Math.max(e.scrollHeight,e.offsetHeight):e.offsetHeight)-(parseInt(t(e).css("borderTopWidth"),10)||0)-(parseInt(t(e).css("paddingBottom"),10)||0)-this.helperProportions.height-this.margins.top])},_convertPositionTo:function(e,i){i||(i=this.position);var s="absolute"===e?1:-1,n="absolute"!==this.cssPosition||this.scrollParent[0]!==this.document[0]&&t.contains(this.scrollParent[0],this.offsetParent[0])?this.scrollParent:this.offsetParent,o=/(html|body)/i.test(n[0].tagName);return{top:i.top+this.offset.relative.top*s+this.offset.parent.top*s-("fixed"===this.cssPosition?-this.scrollParent.scrollTop():o?0:n.scrollTop())*s,left:i.left+this.offset.relative.left*s+this.offset.parent.left*s-("fixed"===this.cssPosition?-this.scrollParent.scrollLeft():o?0:n.scrollLeft())*s}},_generatePosition:function(e){var i,s,n=this.options,o=e.pageX,a=e.pageY,r="absolute"!==this.cssPosition||this.scrollParent[0]!==this.document[0]&&t.contains(this.scrollParent[0],this.offsetParent[0])?this.scrollParent:this.offsetParent,h=/(html|body)/i.test(r[0].tagName);return"relative"!==this.cssPosition||this.scrollParent[0]!==this.document[0]&&this.scrollParent[0]!==this.offsetParent[0]||(this.offset.relative=this._getRelativeOffset()),this.originalPosition&&(this.containment&&(e.pageX-this.offset.click.left<this.containment[0]&&(o=this.containment[0]+this.offset.click.left),e.pageY-this.offset.click.top<this.containment[1]&&(a=this.containment[1]+this.offset.click.top),e.pageX-this.offset.click.left>this.containment[2]&&(o=this.containment[2]+this.offset.click.left),e.pageY-this.offset.click.top>this.containment[3]&&(a=this.containment[3]+this.offset.click.top)),n.grid&&(i=this.originalPageY+Math.round((a-this.originalPageY)/n.grid[1])*n.grid[1],a=this.containment?i-this.offset.click.top>=this.containment[1]&&i-this.offset.click.top<=this.containment[3]?i:i-this.offset.click.top>=this.containment[1]?i-n.grid[1]:i+n.grid[1]:i,s=this.originalPageX+Math.round((o-this.originalPageX)/n.grid[0])*n.grid[0],o=this.containment?s-this.offset.click.left>=this.containment[0]&&s-this.offset.click.left<=this.containment[2]?s:s-this.offset.click.left>=this.containment[0]?s-n.grid[0]:s+n.grid[0]:s)),{top:a-this.offset.click.top-this.offset.relative.top-this.offset.parent.top+("fixed"===this.cssPosition?-this.scrollParent.scrollTop():h?0:r.scrollTop()),left:o-this.offset.click.left-this.offset.relative.left-this.offset.parent.left+("fixed"===this.cssPosition?-this.scrollParent.scrollLeft():h?0:r.scrollLeft())}},_rearrange:function(t,e,i,s){i?i[0].appendChild(this.placeholder[0]):e.item[0].parentNode.insertBefore(this.placeholder[0],"down"===this.direction?e.item[0]:e.item[0].nextSibling),this.counter=this.counter?++this.counter:1;var n=this.counter;this._delay(function(){n===this.counter&&this.refreshPositions(!s)})},_clear:function(t,e){function i(t,e,i){return function(s){i._trigger(t,s,e._uiHash(e))}}this.reverting=!1;var s,n=[];if(!this._noFinalSort&&this.currentItem.parent().length&&this.placeholder.before(this.currentItem),this._noFinalSort=null,this.helper[0]===this.currentItem[0]){for(s in this._storedCSS)("auto"===this._storedCSS[s]||"static"===this._storedCSS[s])&&(this._storedCSS[s]="");this.currentItem.css(this._storedCSS),this._removeClass(this.currentItem,"ui-sortable-helper")}else this.currentItem.show();for(this.fromOutside&&!e&&n.push(function(t){this._trigger("receive",t,this._uiHash(this.fromOutside))}),!this.fromOutside&&this.domPosition.prev===this.currentItem.prev().not(".ui-sortable-helper")[0]&&this.domPosition.parent===this.currentItem.parent()[0]||e||n.push(function(t){this._trigger("update",t,this._uiHash())}),this!==this.currentContainer&&(e||(n.push(function(t){this._trigger("remove",t,this._uiHash())}),n.push(function(t){return function(e){t._trigger("receive",e,this._uiHash(this))}}.call(this,this.currentContainer)),n.push(function(t){return function(e){t._trigger("update",e,this._uiHash(this))}}.call(this,this.currentContainer)))),s=this.containers.length-1;s>=0;s--)e||n.push(i("deactivate",this,this.containers[s])),this.containers[s].containerCache.over&&(n.push(i("out",this,this.containers[s])),this.containers[s].containerCache.over=0);if(this.storedCursor&&(this.document.find("body").css("cursor",this.storedCursor),this.storedStylesheet.remove()),this._storedOpacity&&this.helper.css("opacity",this._storedOpacity),this._storedZIndex&&this.helper.css("zIndex","auto"===this._storedZIndex?"":this._storedZIndex),this.dragging=!1,e||this._trigger("beforeStop",t,this._uiHash()),this.placeholder[0].parentNode.removeChild(this.placeholder[0]),this.cancelHelperRemoval||(this.helper[0]!==this.currentItem[0]&&this.helper.remove(),this.helper=null),!e){for(s=0;n.length>s;s++)n[s].call(this,t);this._trigger("stop",t,this._uiHash())}return this.fromOutside=!1,!this.cancelHelperRemoval},_trigger:function(){t.Widget.prototype._trigger.apply(this,arguments)===!1&&this.cancel()},_uiHash:function(e){var i=e||this;return{helper:i.helper,placeholder:i.placeholder||t([]),position:i.position,originalPosition:i.originalPosition,offset:i.positionAbs,item:i.currentItem,sender:e?e.element:null}}}),t.widget("ui.accordion",{version:"1.12.1",options:{active:0,animate:{},classes:{"ui-accordion-header":"ui-corner-top","ui-accordion-header-collapsed":"ui-corner-all","ui-accordion-content":"ui-corner-bottom"},collapsible:!1,event:"click",header:"> li > :first-child, > :not(li):even",heightStyle:"auto",icons:{activeHeader:"ui-icon-triangle-1-s",header:"ui-icon-triangle-1-e"},activate:null,beforeActivate:null},hideProps:{borderTopWidth:"hide",borderBottomWidth:"hide",paddingTop:"hide",paddingBottom:"hide",height:"hide"},showProps:{borderTopWidth:"show",borderBottomWidth:"show",paddingTop:"show",paddingBottom:"show",height:"show"},_create:function(){var e=this.options;this.prevShow=this.prevHide=t(),this._addClass("ui-accordion","ui-widget ui-helper-reset"),this.element.attr("role","tablist"),e.collapsible||e.active!==!1&&null!=e.active||(e.active=0),this._processPanels(),0>e.active&&(e.active+=this.headers.length),this._refresh()},_getCreateEventData:function(){return{header:this.active,panel:this.active.length?this.active.next():t()}},_createIcons:function(){var e,i,s=this.options.icons;s&&(e=t("<span>"),this._addClass(e,"ui-accordion-header-icon","ui-icon "+s.header),e.prependTo(this.headers),i=this.active.children(".ui-accordion-header-icon"),this._removeClass(i,s.header)._addClass(i,null,s.activeHeader)._addClass(this.headers,"ui-accordion-icons"))
},_destroyIcons:function(){this._removeClass(this.headers,"ui-accordion-icons"),this.headers.children(".ui-accordion-header-icon").remove()},_destroy:function(){var t;this.element.removeAttr("role"),this.headers.removeAttr("role aria-expanded aria-selected aria-controls tabIndex").removeUniqueId(),this._destroyIcons(),t=this.headers.next().css("display","").removeAttr("role aria-hidden aria-labelledby").removeUniqueId(),"content"!==this.options.heightStyle&&t.css("height","")},_setOption:function(t,e){return"active"===t?(this._activate(e),void 0):("event"===t&&(this.options.event&&this._off(this.headers,this.options.event),this._setupEvents(e)),this._super(t,e),"collapsible"!==t||e||this.options.active!==!1||this._activate(0),"icons"===t&&(this._destroyIcons(),e&&this._createIcons()),void 0)},_setOptionDisabled:function(t){this._super(t),this.element.attr("aria-disabled",t),this._toggleClass(null,"ui-state-disabled",!!t),this._toggleClass(this.headers.add(this.headers.next()),null,"ui-state-disabled",!!t)},_keydown:function(e){if(!e.altKey&&!e.ctrlKey){var i=t.ui.keyCode,s=this.headers.length,n=this.headers.index(e.target),o=!1;switch(e.keyCode){case i.RIGHT:case i.DOWN:o=this.headers[(n+1)%s];break;case i.LEFT:case i.UP:o=this.headers[(n-1+s)%s];break;case i.SPACE:case i.ENTER:this._eventHandler(e);break;case i.HOME:o=this.headers[0];break;case i.END:o=this.headers[s-1]}o&&(t(e.target).attr("tabIndex",-1),t(o).attr("tabIndex",0),t(o).trigger("focus"),e.preventDefault())}},_panelKeyDown:function(e){e.keyCode===t.ui.keyCode.UP&&e.ctrlKey&&t(e.currentTarget).prev().trigger("focus")},refresh:function(){var e=this.options;this._processPanels(),e.active===!1&&e.collapsible===!0||!this.headers.length?(e.active=!1,this.active=t()):e.active===!1?this._activate(0):this.active.length&&!t.contains(this.element[0],this.active[0])?this.headers.length===this.headers.find(".ui-state-disabled").length?(e.active=!1,this.active=t()):this._activate(Math.max(0,e.active-1)):e.active=this.headers.index(this.active),this._destroyIcons(),this._refresh()},_processPanels:function(){var t=this.headers,e=this.panels;this.headers=this.element.find(this.options.header),this._addClass(this.headers,"ui-accordion-header ui-accordion-header-collapsed","ui-state-default"),this.panels=this.headers.next().filter(":not(.ui-accordion-content-active)").hide(),this._addClass(this.panels,"ui-accordion-content","ui-helper-reset ui-widget-content"),e&&(this._off(t.not(this.headers)),this._off(e.not(this.panels)))},_refresh:function(){var e,i=this.options,s=i.heightStyle,n=this.element.parent();this.active=this._findActive(i.active),this._addClass(this.active,"ui-accordion-header-active","ui-state-active")._removeClass(this.active,"ui-accordion-header-collapsed"),this._addClass(this.active.next(),"ui-accordion-content-active"),this.active.next().show(),this.headers.attr("role","tab").each(function(){var e=t(this),i=e.uniqueId().attr("id"),s=e.next(),n=s.uniqueId().attr("id");e.attr("aria-controls",n),s.attr("aria-labelledby",i)}).next().attr("role","tabpanel"),this.headers.not(this.active).attr({"aria-selected":"false","aria-expanded":"false",tabIndex:-1}).next().attr({"aria-hidden":"true"}).hide(),this.active.length?this.active.attr({"aria-selected":"true","aria-expanded":"true",tabIndex:0}).next().attr({"aria-hidden":"false"}):this.headers.eq(0).attr("tabIndex",0),this._createIcons(),this._setupEvents(i.event),"fill"===s?(e=n.height(),this.element.siblings(":visible").each(function(){var i=t(this),s=i.css("position");"absolute"!==s&&"fixed"!==s&&(e-=i.outerHeight(!0))}),this.headers.each(function(){e-=t(this).outerHeight(!0)}),this.headers.next().each(function(){t(this).height(Math.max(0,e-t(this).innerHeight()+t(this).height()))}).css("overflow","auto")):"auto"===s&&(e=0,this.headers.next().each(function(){var i=t(this).is(":visible");i||t(this).show(),e=Math.max(e,t(this).css("height","").height()),i||t(this).hide()}).height(e))},_activate:function(e){var i=this._findActive(e)[0];i!==this.active[0]&&(i=i||this.active[0],this._eventHandler({target:i,currentTarget:i,preventDefault:t.noop}))},_findActive:function(e){return"number"==typeof e?this.headers.eq(e):t()},_setupEvents:function(e){var i={keydown:"_keydown"};e&&t.each(e.split(" "),function(t,e){i[e]="_eventHandler"}),this._off(this.headers.add(this.headers.next())),this._on(this.headers,i),this._on(this.headers.next(),{keydown:"_panelKeyDown"}),this._hoverable(this.headers),this._focusable(this.headers)},_eventHandler:function(e){var i,s,n=this.options,o=this.active,a=t(e.currentTarget),r=a[0]===o[0],h=r&&n.collapsible,l=h?t():a.next(),c=o.next(),u={oldHeader:o,oldPanel:c,newHeader:h?t():a,newPanel:l};e.preventDefault(),r&&!n.collapsible||this._trigger("beforeActivate",e,u)===!1||(n.active=h?!1:this.headers.index(a),this.active=r?t():a,this._toggle(u),this._removeClass(o,"ui-accordion-header-active","ui-state-active"),n.icons&&(i=o.children(".ui-accordion-header-icon"),this._removeClass(i,null,n.icons.activeHeader)._addClass(i,null,n.icons.header)),r||(this._removeClass(a,"ui-accordion-header-collapsed")._addClass(a,"ui-accordion-header-active","ui-state-active"),n.icons&&(s=a.children(".ui-accordion-header-icon"),this._removeClass(s,null,n.icons.header)._addClass(s,null,n.icons.activeHeader)),this._addClass(a.next(),"ui-accordion-content-active")))},_toggle:function(e){var i=e.newPanel,s=this.prevShow.length?this.prevShow:e.oldPanel;this.prevShow.add(this.prevHide).stop(!0,!0),this.prevShow=i,this.prevHide=s,this.options.animate?this._animate(i,s,e):(s.hide(),i.show(),this._toggleComplete(e)),s.attr({"aria-hidden":"true"}),s.prev().attr({"aria-selected":"false","aria-expanded":"false"}),i.length&&s.length?s.prev().attr({tabIndex:-1,"aria-expanded":"false"}):i.length&&this.headers.filter(function(){return 0===parseInt(t(this).attr("tabIndex"),10)}).attr("tabIndex",-1),i.attr("aria-hidden","false").prev().attr({"aria-selected":"true","aria-expanded":"true",tabIndex:0})},_animate:function(t,e,i){var s,n,o,a=this,r=0,h=t.css("box-sizing"),l=t.length&&(!e.length||t.index()<e.index()),c=this.options.animate||{},u=l&&c.down||c,d=function(){a._toggleComplete(i)};return"number"==typeof u&&(o=u),"string"==typeof u&&(n=u),n=n||u.easing||c.easing,o=o||u.duration||c.duration,e.length?t.length?(s=t.show().outerHeight(),e.animate(this.hideProps,{duration:o,easing:n,step:function(t,e){e.now=Math.round(t)}}),t.hide().animate(this.showProps,{duration:o,easing:n,complete:d,step:function(t,i){i.now=Math.round(t),"height"!==i.prop?"content-box"===h&&(r+=i.now):"content"!==a.options.heightStyle&&(i.now=Math.round(s-e.outerHeight()-r),r=0)}}),void 0):e.animate(this.hideProps,o,n,d):t.animate(this.showProps,o,n,d)},_toggleComplete:function(t){var e=t.oldPanel,i=e.prev();this._removeClass(e,"ui-accordion-content-active"),this._removeClass(i,"ui-accordion-header-active")._addClass(i,"ui-accordion-header-collapsed"),e.length&&(e.parent()[0].className=e.parent()[0].className),this._trigger("activate",null,t)}}),t.widget("ui.menu",{version:"1.12.1",defaultElement:"<ul>",delay:300,options:{icons:{submenu:"ui-icon-caret-1-e"},items:"> *",menus:"ul",position:{my:"left top",at:"right top"},role:"menu",blur:null,focus:null,select:null},_create:function(){this.activeMenu=this.element,this.mouseHandled=!1,this.element.uniqueId().attr({role:this.options.role,tabIndex:0}),this._addClass("ui-menu","ui-widget ui-widget-content"),this._on({"mousedown .ui-menu-item":function(t){t.preventDefault()},"click .ui-menu-item":function(e){var i=t(e.target),s=t(t.ui.safeActiveElement(this.document[0]));!this.mouseHandled&&i.not(".ui-state-disabled").length&&(this.select(e),e.isPropagationStopped()||(this.mouseHandled=!0),i.has(".ui-menu").length?this.expand(e):!this.element.is(":focus")&&s.closest(".ui-menu").length&&(this.element.trigger("focus",[!0]),this.active&&1===this.active.parents(".ui-menu").length&&clearTimeout(this.timer)))},"mouseenter .ui-menu-item":function(e){if(!this.previousFilter){var i=t(e.target).closest(".ui-menu-item"),s=t(e.currentTarget);i[0]===s[0]&&(this._removeClass(s.siblings().children(".ui-state-active"),null,"ui-state-active"),this.focus(e,s))}},mouseleave:"collapseAll","mouseleave .ui-menu":"collapseAll",focus:function(t,e){var i=this.active||this.element.find(this.options.items).eq(0);e||this.focus(t,i)},blur:function(e){this._delay(function(){var i=!t.contains(this.element[0],t.ui.safeActiveElement(this.document[0]));i&&this.collapseAll(e)})},keydown:"_keydown"}),this.refresh(),this._on(this.document,{click:function(t){this._closeOnDocumentClick(t)&&this.collapseAll(t),this.mouseHandled=!1}})},_destroy:function(){var e=this.element.find(".ui-menu-item").removeAttr("role aria-disabled"),i=e.children(".ui-menu-item-wrapper").removeUniqueId().removeAttr("tabIndex role aria-haspopup");this.element.removeAttr("aria-activedescendant").find(".ui-menu").addBack().removeAttr("role aria-labelledby aria-expanded aria-hidden aria-disabled tabIndex").removeUniqueId().show(),i.children().each(function(){var e=t(this);e.data("ui-menu-submenu-caret")&&e.remove()})},_keydown:function(e){var i,s,n,o,a=!0;switch(e.keyCode){case t.ui.keyCode.PAGE_UP:this.previousPage(e);break;case t.ui.keyCode.PAGE_DOWN:this.nextPage(e);break;case t.ui.keyCode.HOME:this._move("first","first",e);break;case t.ui.keyCode.END:this._move("last","last",e);break;case t.ui.keyCode.UP:this.previous(e);break;case t.ui.keyCode.DOWN:this.next(e);break;case t.ui.keyCode.LEFT:this.collapse(e);break;case t.ui.keyCode.RIGHT:this.active&&!this.active.is(".ui-state-disabled")&&this.expand(e);break;case t.ui.keyCode.ENTER:case t.ui.keyCode.SPACE:this._activate(e);break;case t.ui.keyCode.ESCAPE:this.collapse(e);break;default:a=!1,s=this.previousFilter||"",o=!1,n=e.keyCode>=96&&105>=e.keyCode?""+(e.keyCode-96):String.fromCharCode(e.keyCode),clearTimeout(this.filterTimer),n===s?o=!0:n=s+n,i=this._filterMenuItems(n),i=o&&-1!==i.index(this.active.next())?this.active.nextAll(".ui-menu-item"):i,i.length||(n=String.fromCharCode(e.keyCode),i=this._filterMenuItems(n)),i.length?(this.focus(e,i),this.previousFilter=n,this.filterTimer=this._delay(function(){delete this.previousFilter},1e3)):delete this.previousFilter}a&&e.preventDefault()},_activate:function(t){this.active&&!this.active.is(".ui-state-disabled")&&(this.active.children("[aria-haspopup='true']").length?this.expand(t):this.select(t))},refresh:function(){var e,i,s,n,o,a=this,r=this.options.icons.submenu,h=this.element.find(this.options.menus);this._toggleClass("ui-menu-icons",null,!!this.element.find(".ui-icon").length),s=h.filter(":not(.ui-menu)").hide().attr({role:this.options.role,"aria-hidden":"true","aria-expanded":"false"}).each(function(){var e=t(this),i=e.prev(),s=t("<span>").data("ui-menu-submenu-caret",!0);a._addClass(s,"ui-menu-icon","ui-icon "+r),i.attr("aria-haspopup","true").prepend(s),e.attr("aria-labelledby",i.attr("id"))}),this._addClass(s,"ui-menu","ui-widget ui-widget-content ui-front"),e=h.add(this.element),i=e.find(this.options.items),i.not(".ui-menu-item").each(function(){var e=t(this);a._isDivider(e)&&a._addClass(e,"ui-menu-divider","ui-widget-content")}),n=i.not(".ui-menu-item, .ui-menu-divider"),o=n.children().not(".ui-menu").uniqueId().attr({tabIndex:-1,role:this._itemRole()}),this._addClass(n,"ui-menu-item")._addClass(o,"ui-menu-item-wrapper"),i.filter(".ui-state-disabled").attr("aria-disabled","true"),this.active&&!t.contains(this.element[0],this.active[0])&&this.blur()},_itemRole:function(){return{menu:"menuitem",listbox:"option"}[this.options.role]},_setOption:function(t,e){if("icons"===t){var i=this.element.find(".ui-menu-icon");this._removeClass(i,null,this.options.icons.submenu)._addClass(i,null,e.submenu)}this._super(t,e)},_setOptionDisabled:function(t){this._super(t),this.element.attr("aria-disabled",t+""),this._toggleClass(null,"ui-state-disabled",!!t)},focus:function(t,e){var i,s,n;this.blur(t,t&&"focus"===t.type),this._scrollIntoView(e),this.active=e.first(),s=this.active.children(".ui-menu-item-wrapper"),this._addClass(s,null,"ui-state-active"),this.options.role&&this.element.attr("aria-activedescendant",s.attr("id")),n=this.active.parent().closest(".ui-menu-item").children(".ui-menu-item-wrapper"),this._addClass(n,null,"ui-state-active"),t&&"keydown"===t.type?this._close():this.timer=this._delay(function(){this._close()},this.delay),i=e.children(".ui-menu"),i.length&&t&&/^mouse/.test(t.type)&&this._startOpening(i),this.activeMenu=e.parent(),this._trigger("focus",t,{item:e})},_scrollIntoView:function(e){var i,s,n,o,a,r;this._hasScroll()&&(i=parseFloat(t.css(this.activeMenu[0],"borderTopWidth"))||0,s=parseFloat(t.css(this.activeMenu[0],"paddingTop"))||0,n=e.offset().top-this.activeMenu.offset().top-i-s,o=this.activeMenu.scrollTop(),a=this.activeMenu.height(),r=e.outerHeight(),0>n?this.activeMenu.scrollTop(o+n):n+r>a&&this.activeMenu.scrollTop(o+n-a+r))},blur:function(t,e){e||clearTimeout(this.timer),this.active&&(this._removeClass(this.active.children(".ui-menu-item-wrapper"),null,"ui-state-active"),this._trigger("blur",t,{item:this.active}),this.active=null)},_startOpening:function(t){clearTimeout(this.timer),"true"===t.attr("aria-hidden")&&(this.timer=this._delay(function(){this._close(),this._open(t)},this.delay))},_open:function(e){var i=t.extend({of:this.active},this.options.position);clearTimeout(this.timer),this.element.find(".ui-menu").not(e.parents(".ui-menu")).hide().attr("aria-hidden","true"),e.show().removeAttr("aria-hidden").attr("aria-expanded","true").position(i)},collapseAll:function(e,i){clearTimeout(this.timer),this.timer=this._delay(function(){var s=i?this.element:t(e&&e.target).closest(this.element.find(".ui-menu"));s.length||(s=this.element),this._close(s),this.blur(e),this._removeClass(s.find(".ui-state-active"),null,"ui-state-active"),this.activeMenu=s},this.delay)},_close:function(t){t||(t=this.active?this.active.parent():this.element),t.find(".ui-menu").hide().attr("aria-hidden","true").attr("aria-expanded","false")},_closeOnDocumentClick:function(e){return!t(e.target).closest(".ui-menu").length},_isDivider:function(t){return!/[^\-\u2014\u2013\s]/.test(t.text())},collapse:function(t){var e=this.active&&this.active.parent().closest(".ui-menu-item",this.element);e&&e.length&&(this._close(),this.focus(t,e))},expand:function(t){var e=this.active&&this.active.children(".ui-menu ").find(this.options.items).first();e&&e.length&&(this._open(e.parent()),this._delay(function(){this.focus(t,e)}))},next:function(t){this._move("next","first",t)},previous:function(t){this._move("prev","last",t)},isFirstItem:function(){return this.active&&!this.active.prevAll(".ui-menu-item").length},isLastItem:function(){return this.active&&!this.active.nextAll(".ui-menu-item").length},_move:function(t,e,i){var s;this.active&&(s="first"===t||"last"===t?this.active["first"===t?"prevAll":"nextAll"](".ui-menu-item").eq(-1):this.active[t+"All"](".ui-menu-item").eq(0)),s&&s.length&&this.active||(s=this.activeMenu.find(this.options.items)[e]()),this.focus(i,s)},nextPage:function(e){var i,s,n;return this.active?(this.isLastItem()||(this._hasScroll()?(s=this.active.offset().top,n=this.element.height(),this.active.nextAll(".ui-menu-item").each(function(){return i=t(this),0>i.offset().top-s-n}),this.focus(e,i)):this.focus(e,this.activeMenu.find(this.options.items)[this.active?"last":"first"]())),void 0):(this.next(e),void 0)},previousPage:function(e){var i,s,n;return this.active?(this.isFirstItem()||(this._hasScroll()?(s=this.active.offset().top,n=this.element.height(),this.active.prevAll(".ui-menu-item").each(function(){return i=t(this),i.offset().top-s+n>0}),this.focus(e,i)):this.focus(e,this.activeMenu.find(this.options.items).first())),void 0):(this.next(e),void 0)},_hasScroll:function(){return this.element.outerHeight()<this.element.prop("scrollHeight")},select:function(e){this.active=this.active||t(e.target).closest(".ui-menu-item");var i={item:this.active};this.active.has(".ui-menu").length||this.collapseAll(e,!0),this._trigger("select",e,i)},_filterMenuItems:function(e){var i=e.replace(/[\-\[\]{}()*+?.,\\\^$|#\s]/g,"\\$&"),s=RegExp("^"+i,"i");return this.activeMenu.find(this.options.items).filter(".ui-menu-item").filter(function(){return s.test(t.trim(t(this).children(".ui-menu-item-wrapper").text()))})}}),t.widget("ui.autocomplete",{version:"1.12.1",defaultElement:"<input>",options:{appendTo:null,autoFocus:!1,delay:300,minLength:1,position:{my:"left top",at:"left bottom",collision:"none"},source:null,change:null,close:null,focus:null,open:null,response:null,search:null,select:null},requestIndex:0,pending:0,_create:function(){var e,i,s,n=this.element[0].nodeName.toLowerCase(),o="textarea"===n,a="input"===n;this.isMultiLine=o||!a&&this._isContentEditable(this.element),this.valueMethod=this.element[o||a?"val":"text"],this.isNewMenu=!0,this._addClass("ui-autocomplete-input"),this.element.attr("autocomplete","off"),this._on(this.element,{keydown:function(n){if(this.element.prop("readOnly"))return e=!0,s=!0,i=!0,void 0;e=!1,s=!1,i=!1;var o=t.ui.keyCode;switch(n.keyCode){case o.PAGE_UP:e=!0,this._move("previousPage",n);break;case o.PAGE_DOWN:e=!0,this._move("nextPage",n);break;case o.UP:e=!0,this._keyEvent("previous",n);break;case o.DOWN:e=!0,this._keyEvent("next",n);break;case o.ENTER:this.menu.active&&(e=!0,n.preventDefault(),this.menu.select(n));break;case o.TAB:this.menu.active&&this.menu.select(n);break;case o.ESCAPE:this.menu.element.is(":visible")&&(this.isMultiLine||this._value(this.term),this.close(n),n.preventDefault());break;default:i=!0,this._searchTimeout(n)}},keypress:function(s){if(e)return e=!1,(!this.isMultiLine||this.menu.element.is(":visible"))&&s.preventDefault(),void 0;if(!i){var n=t.ui.keyCode;switch(s.keyCode){case n.PAGE_UP:this._move("previousPage",s);break;case n.PAGE_DOWN:this._move("nextPage",s);break;case n.UP:this._keyEvent("previous",s);break;case n.DOWN:this._keyEvent("next",s)}}},input:function(t){return s?(s=!1,t.preventDefault(),void 0):(this._searchTimeout(t),void 0)},focus:function(){this.selectedItem=null,this.previous=this._value()},blur:function(t){return this.cancelBlur?(delete this.cancelBlur,void 0):(clearTimeout(this.searching),this.close(t),this._change(t),void 0)}}),this._initSource(),this.menu=t("<ul>").appendTo(this._appendTo()).menu({role:null}).hide().menu("instance"),this._addClass(this.menu.element,"ui-autocomplete","ui-front"),this._on(this.menu.element,{mousedown:function(e){e.preventDefault(),this.cancelBlur=!0,this._delay(function(){delete this.cancelBlur,this.element[0]!==t.ui.safeActiveElement(this.document[0])&&this.element.trigger("focus")})},menufocus:function(e,i){var s,n;return this.isNewMenu&&(this.isNewMenu=!1,e.originalEvent&&/^mouse/.test(e.originalEvent.type))?(this.menu.blur(),this.document.one("mousemove",function(){t(e.target).trigger(e.originalEvent)}),void 0):(n=i.item.data("ui-autocomplete-item"),!1!==this._trigger("focus",e,{item:n})&&e.originalEvent&&/^key/.test(e.originalEvent.type)&&this._value(n.value),s=i.item.attr("aria-label")||n.value,s&&t.trim(s).length&&(this.liveRegion.children().hide(),t("<div>").text(s).appendTo(this.liveRegion)),void 0)},menuselect:function(e,i){var s=i.item.data("ui-autocomplete-item"),n=this.previous;this.element[0]!==t.ui.safeActiveElement(this.document[0])&&(this.element.trigger("focus"),this.previous=n,this._delay(function(){this.previous=n,this.selectedItem=s})),!1!==this._trigger("select",e,{item:s})&&this._value(s.value),this.term=this._value(),this.close(e),this.selectedItem=s}}),this.liveRegion=t("<div>",{role:"status","aria-live":"assertive","aria-relevant":"additions"}).appendTo(this.document[0].body),this._addClass(this.liveRegion,null,"ui-helper-hidden-accessible"),this._on(this.window,{beforeunload:function(){this.element.removeAttr("autocomplete")}})},_destroy:function(){clearTimeout(this.searching),this.element.removeAttr("autocomplete"),this.menu.element.remove(),this.liveRegion.remove()},_setOption:function(t,e){this._super(t,e),"source"===t&&this._initSource(),"appendTo"===t&&this.menu.element.appendTo(this._appendTo()),"disabled"===t&&e&&this.xhr&&this.xhr.abort()},_isEventTargetInWidget:function(e){var i=this.menu.element[0];return e.target===this.element[0]||e.target===i||t.contains(i,e.target)},_closeOnClickOutside:function(t){this._isEventTargetInWidget(t)||this.close()},_appendTo:function(){var e=this.options.appendTo;return e&&(e=e.jquery||e.nodeType?t(e):this.document.find(e).eq(0)),e&&e[0]||(e=this.element.closest(".ui-front, dialog")),e.length||(e=this.document[0].body),e},_initSource:function(){var e,i,s=this;t.isArray(this.options.source)?(e=this.options.source,this.source=function(i,s){s(t.ui.autocomplete.filter(e,i.term))}):"string"==typeof this.options.source?(i=this.options.source,this.source=function(e,n){s.xhr&&s.xhr.abort(),s.xhr=t.ajax({url:i,data:e,dataType:"json",success:function(t){n(t)},error:function(){n([])}})}):this.source=this.options.source},_searchTimeout:function(t){clearTimeout(this.searching),this.searching=this._delay(function(){var e=this.term===this._value(),i=this.menu.element.is(":visible"),s=t.altKey||t.ctrlKey||t.metaKey||t.shiftKey;(!e||e&&!i&&!s)&&(this.selectedItem=null,this.search(null,t))},this.options.delay)},search:function(t,e){return t=null!=t?t:this._value(),this.term=this._value(),t.length<this.options.minLength?this.close(e):this._trigger("search",e)!==!1?this._search(t):void 0},_search:function(t){this.pending++,this._addClass("ui-autocomplete-loading"),this.cancelSearch=!1,this.source({term:t},this._response())},_response:function(){var e=++this.requestIndex;return t.proxy(function(t){e===this.requestIndex&&this.__response(t),this.pending--,this.pending||this._removeClass("ui-autocomplete-loading")},this)},__response:function(t){t&&(t=this._normalize(t)),this._trigger("response",null,{content:t}),!this.options.disabled&&t&&t.length&&!this.cancelSearch?(this._suggest(t),this._trigger("open")):this._close()},close:function(t){this.cancelSearch=!0,this._close(t)},_close:function(t){this._off(this.document,"mousedown"),this.menu.element.is(":visible")&&(this.menu.element.hide(),this.menu.blur(),this.isNewMenu=!0,this._trigger("close",t))},_change:function(t){this.previous!==this._value()&&this._trigger("change",t,{item:this.selectedItem})},_normalize:function(e){return e.length&&e[0].label&&e[0].value?e:t.map(e,function(e){return"string"==typeof e?{label:e,value:e}:t.extend({},e,{label:e.label||e.value,value:e.value||e.label})})},_suggest:function(e){var i=this.menu.element.empty();this._renderMenu(i,e),this.isNewMenu=!0,this.menu.refresh(),i.show(),this._resizeMenu(),i.position(t.extend({of:this.element},this.options.position)),this.options.autoFocus&&this.menu.next(),this._on(this.document,{mousedown:"_closeOnClickOutside"})},_resizeMenu:function(){var t=this.menu.element;t.outerWidth(Math.max(t.width("").outerWidth()+1,this.element.outerWidth()))},_renderMenu:function(e,i){var s=this;t.each(i,function(t,i){s._renderItemData(e,i)})},_renderItemData:function(t,e){return this._renderItem(t,e).data("ui-autocomplete-item",e)},_renderItem:function(e,i){return t("<li>").append(t("<div>").text(i.label)).appendTo(e)},_move:function(t,e){return this.menu.element.is(":visible")?this.menu.isFirstItem()&&/^previous/.test(t)||this.menu.isLastItem()&&/^next/.test(t)?(this.isMultiLine||this._value(this.term),this.menu.blur(),void 0):(this.menu[t](e),void 0):(this.search(null,e),void 0)},widget:function(){return this.menu.element},_value:function(){return this.valueMethod.apply(this.element,arguments)},_keyEvent:function(t,e){(!this.isMultiLine||this.menu.element.is(":visible"))&&(this._move(t,e),e.preventDefault())},_isContentEditable:function(t){if(!t.length)return!1;var e=t.prop("contentEditable");return"inherit"===e?this._isContentEditable(t.parent()):"true"===e}}),t.extend(t.ui.autocomplete,{escapeRegex:function(t){return t.replace(/[\-\[\]{}()*+?.,\\\^$|#\s]/g,"\\$&")},filter:function(e,i){var s=RegExp(t.ui.autocomplete.escapeRegex(i),"i");return t.grep(e,function(t){return s.test(t.label||t.value||t)})}}),t.widget("ui.autocomplete",t.ui.autocomplete,{options:{messages:{noResults:"No search results.",results:function(t){return t+(t>1?" results are":" result is")+" available, use up and down arrow keys to navigate."}}},__response:function(e){var i;this._superApply(arguments),this.options.disabled||this.cancelSearch||(i=e&&e.length?this.options.messages.results(e.length):this.options.messages.noResults,this.liveRegion.children().hide(),t("<div>").text(i).appendTo(this.liveRegion))}}),t.ui.autocomplete;var d=/ui-corner-([a-z]){2,6}/g;t.widget("ui.controlgroup",{version:"1.12.1",defaultElement:"<div>",options:{direction:"horizontal",disabled:null,onlyVisible:!0,items:{button:"input[type=button], input[type=submit], input[type=reset], button, a",controlgroupLabel:".ui-controlgroup-label",checkboxradio:"input[type='checkbox'], input[type='radio']",selectmenu:"select",spinner:".ui-spinner-input"}},_create:function(){this._enhance()},_enhance:function(){this.element.attr("role","toolbar"),this.refresh()},_destroy:function(){this._callChildMethod("destroy"),this.childWidgets.removeData("ui-controlgroup-data"),this.element.removeAttr("role"),this.options.items.controlgroupLabel&&this.element.find(this.options.items.controlgroupLabel).find(".ui-controlgroup-label-contents").contents().unwrap()},_initWidgets:function(){var e=this,i=[];t.each(this.options.items,function(s,n){var o,a={};return n?"controlgroupLabel"===s?(o=e.element.find(n),o.each(function(){var e=t(this);e.children(".ui-controlgroup-label-contents").length||e.contents().wrapAll("<span class='ui-controlgroup-label-contents'></span>")}),e._addClass(o,null,"ui-widget ui-widget-content ui-state-default"),i=i.concat(o.get()),void 0):(t.fn[s]&&(a=e["_"+s+"Options"]?e["_"+s+"Options"]("middle"):{classes:{}},e.element.find(n).each(function(){var n=t(this),o=n[s]("instance"),r=t.widget.extend({},a);if("button"!==s||!n.parent(".ui-spinner").length){o||(o=n[s]()[s]("instance")),o&&(r.classes=e._resolveClassesValues(r.classes,o)),n[s](r);var h=n[s]("widget");t.data(h[0],"ui-controlgroup-data",o?o:n[s]("instance")),i.push(h[0])}})),void 0):void 0}),this.childWidgets=t(t.unique(i)),this._addClass(this.childWidgets,"ui-controlgroup-item")},_callChildMethod:function(e){this.childWidgets.each(function(){var i=t(this),s=i.data("ui-controlgroup-data");s&&s[e]&&s[e]()})},_updateCornerClass:function(t,e){var i="ui-corner-top ui-corner-bottom ui-corner-left ui-corner-right ui-corner-all",s=this._buildSimpleOptions(e,"label").classes.label;this._removeClass(t,null,i),this._addClass(t,null,s)},_buildSimpleOptions:function(t,e){var i="vertical"===this.options.direction,s={classes:{}};return s.classes[e]={middle:"",first:"ui-corner-"+(i?"top":"left"),last:"ui-corner-"+(i?"bottom":"right"),only:"ui-corner-all"}[t],s},_spinnerOptions:function(t){var e=this._buildSimpleOptions(t,"ui-spinner");return e.classes["ui-spinner-up"]="",e.classes["ui-spinner-down"]="",e},_buttonOptions:function(t){return this._buildSimpleOptions(t,"ui-button")},_checkboxradioOptions:function(t){return this._buildSimpleOptions(t,"ui-checkboxradio-label")},_selectmenuOptions:function(t){var e="vertical"===this.options.direction;return{width:e?"auto":!1,classes:{middle:{"ui-selectmenu-button-open":"","ui-selectmenu-button-closed":""},first:{"ui-selectmenu-button-open":"ui-corner-"+(e?"top":"tl"),"ui-selectmenu-button-closed":"ui-corner-"+(e?"top":"left")},last:{"ui-selectmenu-button-open":e?"":"ui-corner-tr","ui-selectmenu-button-closed":"ui-corner-"+(e?"bottom":"right")},only:{"ui-selectmenu-button-open":"ui-corner-top","ui-selectmenu-button-closed":"ui-corner-all"}}[t]}},_resolveClassesValues:function(e,i){var s={};return t.each(e,function(n){var o=i.options.classes[n]||"";o=t.trim(o.replace(d,"")),s[n]=(o+" "+e[n]).replace(/\s+/g," ")}),s},_setOption:function(t,e){return"direction"===t&&this._removeClass("ui-controlgroup-"+this.options.direction),this._super(t,e),"disabled"===t?(this._callChildMethod(e?"disable":"enable"),void 0):(this.refresh(),void 0)},refresh:function(){var e,i=this;this._addClass("ui-controlgroup ui-controlgroup-"+this.options.direction),"horizontal"===this.options.direction&&this._addClass(null,"ui-helper-clearfix"),this._initWidgets(),e=this.childWidgets,this.options.onlyVisible&&(e=e.filter(":visible")),e.length&&(t.each(["first","last"],function(t,s){var n=e[s]().data("ui-controlgroup-data");if(n&&i["_"+n.widgetName+"Options"]){var o=i["_"+n.widgetName+"Options"](1===e.length?"only":s);o.classes=i._resolveClassesValues(o.classes,n),n.element[n.widgetName](o)}else i._updateCornerClass(e[s](),s)}),this._callChildMethod("refresh"))}}),t.widget("ui.checkboxradio",[t.ui.formResetMixin,{version:"1.12.1",options:{disabled:null,label:null,icon:!0,classes:{"ui-checkboxradio-label":"ui-corner-all","ui-checkboxradio-icon":"ui-corner-all"}},_getCreateOptions:function(){var e,i,s=this,n=this._super()||{};return this._readType(),i=this.element.labels(),this.label=t(i[i.length-1]),this.label.length||t.error("No label found for checkboxradio widget"),this.originalLabel="",this.label.contents().not(this.element[0]).each(function(){s.originalLabel+=3===this.nodeType?t(this).text():this.outerHTML}),this.originalLabel&&(n.label=this.originalLabel),e=this.element[0].disabled,null!=e&&(n.disabled=e),n},_create:function(){var t=this.element[0].checked;this._bindFormResetHandler(),null==this.options.disabled&&(this.options.disabled=this.element[0].disabled),this._setOption("disabled",this.options.disabled),this._addClass("ui-checkboxradio","ui-helper-hidden-accessible"),this._addClass(this.label,"ui-checkboxradio-label","ui-button ui-widget"),"radio"===this.type&&this._addClass(this.label,"ui-checkboxradio-radio-label"),this.options.label&&this.options.label!==this.originalLabel?this._updateLabel():this.originalLabel&&(this.options.label=this.originalLabel),this._enhance(),t&&(this._addClass(this.label,"ui-checkboxradio-checked","ui-state-active"),this.icon&&this._addClass(this.icon,null,"ui-state-hover")),this._on({change:"_toggleClasses",focus:function(){this._addClass(this.label,null,"ui-state-focus ui-visual-focus")},blur:function(){this._removeClass(this.label,null,"ui-state-focus ui-visual-focus")}})},_readType:function(){var e=this.element[0].nodeName.toLowerCase();this.type=this.element[0].type,"input"===e&&/radio|checkbox/.test(this.type)||t.error("Can't create checkboxradio on element.nodeName="+e+" and element.type="+this.type)},_enhance:function(){this._updateIcon(this.element[0].checked)},widget:function(){return this.label},_getRadioGroup:function(){var e,i=this.element[0].name,s="input[name='"+t.ui.escapeSelector(i)+"']";return i?(e=this.form.length?t(this.form[0].elements).filter(s):t(s).filter(function(){return 0===t(this).form().length}),e.not(this.element)):t([])},_toggleClasses:function(){var e=this.element[0].checked;this._toggleClass(this.label,"ui-checkboxradio-checked","ui-state-active",e),this.options.icon&&"checkbox"===this.type&&this._toggleClass(this.icon,null,"ui-icon-check ui-state-checked",e)._toggleClass(this.icon,null,"ui-icon-blank",!e),"radio"===this.type&&this._getRadioGroup().each(function(){var e=t(this).checkboxradio("instance");e&&e._removeClass(e.label,"ui-checkboxradio-checked","ui-state-active")})},_destroy:function(){this._unbindFormResetHandler(),this.icon&&(this.icon.remove(),this.iconSpace.remove())},_setOption:function(t,e){return"label"!==t||e?(this._super(t,e),"disabled"===t?(this._toggleClass(this.label,null,"ui-state-disabled",e),this.element[0].disabled=e,void 0):(this.refresh(),void 0)):void 0},_updateIcon:function(e){var i="ui-icon ui-icon-background ";this.options.icon?(this.icon||(this.icon=t("<span>"),this.iconSpace=t("<span> </span>"),this._addClass(this.iconSpace,"ui-checkboxradio-icon-space")),"checkbox"===this.type?(i+=e?"ui-icon-check ui-state-checked":"ui-icon-blank",this._removeClass(this.icon,null,e?"ui-icon-blank":"ui-icon-check")):i+="ui-icon-blank",this._addClass(this.icon,"ui-checkboxradio-icon",i),e||this._removeClass(this.icon,null,"ui-icon-check ui-state-checked"),this.icon.prependTo(this.label).after(this.iconSpace)):void 0!==this.icon&&(this.icon.remove(),this.iconSpace.remove(),delete this.icon)
},_updateLabel:function(){var t=this.label.contents().not(this.element[0]);this.icon&&(t=t.not(this.icon[0])),this.iconSpace&&(t=t.not(this.iconSpace[0])),t.remove(),this.label.append(this.options.label)},refresh:function(){var t=this.element[0].checked,e=this.element[0].disabled;this._updateIcon(t),this._toggleClass(this.label,"ui-checkboxradio-checked","ui-state-active",t),null!==this.options.label&&this._updateLabel(),e!==this.options.disabled&&this._setOptions({disabled:e})}}]),t.ui.checkboxradio,t.widget("ui.button",{version:"1.12.1",defaultElement:"<button>",options:{classes:{"ui-button":"ui-corner-all"},disabled:null,icon:null,iconPosition:"beginning",label:null,showLabel:!0},_getCreateOptions:function(){var t,e=this._super()||{};return this.isInput=this.element.is("input"),t=this.element[0].disabled,null!=t&&(e.disabled=t),this.originalLabel=this.isInput?this.element.val():this.element.html(),this.originalLabel&&(e.label=this.originalLabel),e},_create:function(){!this.option.showLabel&!this.options.icon&&(this.options.showLabel=!0),null==this.options.disabled&&(this.options.disabled=this.element[0].disabled||!1),this.hasTitle=!!this.element.attr("title"),this.options.label&&this.options.label!==this.originalLabel&&(this.isInput?this.element.val(this.options.label):this.element.html(this.options.label)),this._addClass("ui-button","ui-widget"),this._setOption("disabled",this.options.disabled),this._enhance(),this.element.is("a")&&this._on({keyup:function(e){e.keyCode===t.ui.keyCode.SPACE&&(e.preventDefault(),this.element[0].click?this.element[0].click():this.element.trigger("click"))}})},_enhance:function(){this.element.is("button")||this.element.attr("role","button"),this.options.icon&&(this._updateIcon("icon",this.options.icon),this._updateTooltip())},_updateTooltip:function(){this.title=this.element.attr("title"),this.options.showLabel||this.title||this.element.attr("title",this.options.label)},_updateIcon:function(e,i){var s="iconPosition"!==e,n=s?this.options.iconPosition:i,o="top"===n||"bottom"===n;this.icon?s&&this._removeClass(this.icon,null,this.options.icon):(this.icon=t("<span>"),this._addClass(this.icon,"ui-button-icon","ui-icon"),this.options.showLabel||this._addClass("ui-button-icon-only")),s&&this._addClass(this.icon,null,i),this._attachIcon(n),o?(this._addClass(this.icon,null,"ui-widget-icon-block"),this.iconSpace&&this.iconSpace.remove()):(this.iconSpace||(this.iconSpace=t("<span> </span>"),this._addClass(this.iconSpace,"ui-button-icon-space")),this._removeClass(this.icon,null,"ui-wiget-icon-block"),this._attachIconSpace(n))},_destroy:function(){this.element.removeAttr("role"),this.icon&&this.icon.remove(),this.iconSpace&&this.iconSpace.remove(),this.hasTitle||this.element.removeAttr("title")},_attachIconSpace:function(t){this.icon[/^(?:end|bottom)/.test(t)?"before":"after"](this.iconSpace)},_attachIcon:function(t){this.element[/^(?:end|bottom)/.test(t)?"append":"prepend"](this.icon)},_setOptions:function(t){var e=void 0===t.showLabel?this.options.showLabel:t.showLabel,i=void 0===t.icon?this.options.icon:t.icon;e||i||(t.showLabel=!0),this._super(t)},_setOption:function(t,e){"icon"===t&&(e?this._updateIcon(t,e):this.icon&&(this.icon.remove(),this.iconSpace&&this.iconSpace.remove())),"iconPosition"===t&&this._updateIcon(t,e),"showLabel"===t&&(this._toggleClass("ui-button-icon-only",null,!e),this._updateTooltip()),"label"===t&&(this.isInput?this.element.val(e):(this.element.html(e),this.icon&&(this._attachIcon(this.options.iconPosition),this._attachIconSpace(this.options.iconPosition)))),this._super(t,e),"disabled"===t&&(this._toggleClass(null,"ui-state-disabled",e),this.element[0].disabled=e,e&&this.element.blur())},refresh:function(){var t=this.element.is("input, button")?this.element[0].disabled:this.element.hasClass("ui-button-disabled");t!==this.options.disabled&&this._setOptions({disabled:t}),this._updateTooltip()}}),t.uiBackCompat!==!1&&(t.widget("ui.button",t.ui.button,{options:{text:!0,icons:{primary:null,secondary:null}},_create:function(){this.options.showLabel&&!this.options.text&&(this.options.showLabel=this.options.text),!this.options.showLabel&&this.options.text&&(this.options.text=this.options.showLabel),this.options.icon||!this.options.icons.primary&&!this.options.icons.secondary?this.options.icon&&(this.options.icons.primary=this.options.icon):this.options.icons.primary?this.options.icon=this.options.icons.primary:(this.options.icon=this.options.icons.secondary,this.options.iconPosition="end"),this._super()},_setOption:function(t,e){return"text"===t?(this._super("showLabel",e),void 0):("showLabel"===t&&(this.options.text=e),"icon"===t&&(this.options.icons.primary=e),"icons"===t&&(e.primary?(this._super("icon",e.primary),this._super("iconPosition","beginning")):e.secondary&&(this._super("icon",e.secondary),this._super("iconPosition","end"))),this._superApply(arguments),void 0)}}),t.fn.button=function(e){return function(){return!this.length||this.length&&"INPUT"!==this[0].tagName||this.length&&"INPUT"===this[0].tagName&&"checkbox"!==this.attr("type")&&"radio"!==this.attr("type")?e.apply(this,arguments):(t.ui.checkboxradio||t.error("Checkboxradio widget missing"),0===arguments.length?this.checkboxradio({icon:!1}):this.checkboxradio.apply(this,arguments))}}(t.fn.button),t.fn.buttonset=function(){return t.ui.controlgroup||t.error("Controlgroup widget missing"),"option"===arguments[0]&&"items"===arguments[1]&&arguments[2]?this.controlgroup.apply(this,[arguments[0],"items.button",arguments[2]]):"option"===arguments[0]&&"items"===arguments[1]?this.controlgroup.apply(this,[arguments[0],"items.button"]):("object"==typeof arguments[0]&&arguments[0].items&&(arguments[0].items={button:arguments[0].items}),this.controlgroup.apply(this,arguments))}),t.ui.button,t.extend(t.ui,{datepicker:{version:"1.12.1"}});var p;t.extend(s.prototype,{markerClassName:"hasDatepicker",maxRows:4,_widgetDatepicker:function(){return this.dpDiv},setDefaults:function(t){return a(this._defaults,t||{}),this},_attachDatepicker:function(e,i){var s,n,o;s=e.nodeName.toLowerCase(),n="div"===s||"span"===s,e.id||(this.uuid+=1,e.id="dp"+this.uuid),o=this._newInst(t(e),n),o.settings=t.extend({},i||{}),"input"===s?this._connectDatepicker(e,o):n&&this._inlineDatepicker(e,o)},_newInst:function(e,i){var s=e[0].id.replace(/([^A-Za-z0-9_\-])/g,"\\\\$1");return{id:s,input:e,selectedDay:0,selectedMonth:0,selectedYear:0,drawMonth:0,drawYear:0,inline:i,dpDiv:i?n(t("<div class='"+this._inlineClass+" ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all'></div>")):this.dpDiv}},_connectDatepicker:function(e,i){var s=t(e);i.append=t([]),i.trigger=t([]),s.hasClass(this.markerClassName)||(this._attachments(s,i),s.addClass(this.markerClassName).on("keydown",this._doKeyDown).on("keypress",this._doKeyPress).on("keyup",this._doKeyUp),this._autoSize(i),t.data(e,"datepicker",i),i.settings.disabled&&this._disableDatepicker(e))},_attachments:function(e,i){var s,n,o,a=this._get(i,"appendText"),r=this._get(i,"isRTL");i.append&&i.append.remove(),a&&(i.append=t("<span class='"+this._appendClass+"'>"+a+"</span>"),e[r?"before":"after"](i.append)),e.off("focus",this._showDatepicker),i.trigger&&i.trigger.remove(),s=this._get(i,"showOn"),("focus"===s||"both"===s)&&e.on("focus",this._showDatepicker),("button"===s||"both"===s)&&(n=this._get(i,"buttonText"),o=this._get(i,"buttonImage"),i.trigger=t(this._get(i,"buttonImageOnly")?t("<img/>").addClass(this._triggerClass).attr({src:o,alt:n,title:n}):t("<button type='button'></button>").addClass(this._triggerClass).html(o?t("<img/>").attr({src:o,alt:n,title:n}):n)),e[r?"before":"after"](i.trigger),i.trigger.on("click",function(){return t.datepicker._datepickerShowing&&t.datepicker._lastInput===e[0]?t.datepicker._hideDatepicker():t.datepicker._datepickerShowing&&t.datepicker._lastInput!==e[0]?(t.datepicker._hideDatepicker(),t.datepicker._showDatepicker(e[0])):t.datepicker._showDatepicker(e[0]),!1}))},_autoSize:function(t){if(this._get(t,"autoSize")&&!t.inline){var e,i,s,n,o=new Date(2009,11,20),a=this._get(t,"dateFormat");a.match(/[DM]/)&&(e=function(t){for(i=0,s=0,n=0;t.length>n;n++)t[n].length>i&&(i=t[n].length,s=n);return s},o.setMonth(e(this._get(t,a.match(/MM/)?"monthNames":"monthNamesShort"))),o.setDate(e(this._get(t,a.match(/DD/)?"dayNames":"dayNamesShort"))+20-o.getDay())),t.input.attr("size",this._formatDate(t,o).length)}},_inlineDatepicker:function(e,i){var s=t(e);s.hasClass(this.markerClassName)||(s.addClass(this.markerClassName).append(i.dpDiv),t.data(e,"datepicker",i),this._setDate(i,this._getDefaultDate(i),!0),this._updateDatepicker(i),this._updateAlternate(i),i.settings.disabled&&this._disableDatepicker(e),i.dpDiv.css("display","block"))},_dialogDatepicker:function(e,i,s,n,o){var r,h,l,c,u,d=this._dialogInst;return d||(this.uuid+=1,r="dp"+this.uuid,this._dialogInput=t("<input type='text' id='"+r+"' style='position: absolute; top: -100px; width: 0px;'/>"),this._dialogInput.on("keydown",this._doKeyDown),t("body").append(this._dialogInput),d=this._dialogInst=this._newInst(this._dialogInput,!1),d.settings={},t.data(this._dialogInput[0],"datepicker",d)),a(d.settings,n||{}),i=i&&i.constructor===Date?this._formatDate(d,i):i,this._dialogInput.val(i),this._pos=o?o.length?o:[o.pageX,o.pageY]:null,this._pos||(h=document.documentElement.clientWidth,l=document.documentElement.clientHeight,c=document.documentElement.scrollLeft||document.body.scrollLeft,u=document.documentElement.scrollTop||document.body.scrollTop,this._pos=[h/2-100+c,l/2-150+u]),this._dialogInput.css("left",this._pos[0]+20+"px").css("top",this._pos[1]+"px"),d.settings.onSelect=s,this._inDialog=!0,this.dpDiv.addClass(this._dialogClass),this._showDatepicker(this._dialogInput[0]),t.blockUI&&t.blockUI(this.dpDiv),t.data(this._dialogInput[0],"datepicker",d),this},_destroyDatepicker:function(e){var i,s=t(e),n=t.data(e,"datepicker");s.hasClass(this.markerClassName)&&(i=e.nodeName.toLowerCase(),t.removeData(e,"datepicker"),"input"===i?(n.append.remove(),n.trigger.remove(),s.removeClass(this.markerClassName).off("focus",this._showDatepicker).off("keydown",this._doKeyDown).off("keypress",this._doKeyPress).off("keyup",this._doKeyUp)):("div"===i||"span"===i)&&s.removeClass(this.markerClassName).empty(),p===n&&(p=null))},_enableDatepicker:function(e){var i,s,n=t(e),o=t.data(e,"datepicker");n.hasClass(this.markerClassName)&&(i=e.nodeName.toLowerCase(),"input"===i?(e.disabled=!1,o.trigger.filter("button").each(function(){this.disabled=!1}).end().filter("img").css({opacity:"1.0",cursor:""})):("div"===i||"span"===i)&&(s=n.children("."+this._inlineClass),s.children().removeClass("ui-state-disabled"),s.find("select.ui-datepicker-month, select.ui-datepicker-year").prop("disabled",!1)),this._disabledInputs=t.map(this._disabledInputs,function(t){return t===e?null:t}))},_disableDatepicker:function(e){var i,s,n=t(e),o=t.data(e,"datepicker");n.hasClass(this.markerClassName)&&(i=e.nodeName.toLowerCase(),"input"===i?(e.disabled=!0,o.trigger.filter("button").each(function(){this.disabled=!0}).end().filter("img").css({opacity:"0.5",cursor:"default"})):("div"===i||"span"===i)&&(s=n.children("."+this._inlineClass),s.children().addClass("ui-state-disabled"),s.find("select.ui-datepicker-month, select.ui-datepicker-year").prop("disabled",!0)),this._disabledInputs=t.map(this._disabledInputs,function(t){return t===e?null:t}),this._disabledInputs[this._disabledInputs.length]=e)},_isDisabledDatepicker:function(t){if(!t)return!1;for(var e=0;this._disabledInputs.length>e;e++)if(this._disabledInputs[e]===t)return!0;return!1},_getInst:function(e){try{return t.data(e,"datepicker")}catch(i){throw"Missing instance data for this datepicker"}},_optionDatepicker:function(e,i,s){var n,o,r,h,l=this._getInst(e);return 2===arguments.length&&"string"==typeof i?"defaults"===i?t.extend({},t.datepicker._defaults):l?"all"===i?t.extend({},l.settings):this._get(l,i):null:(n=i||{},"string"==typeof i&&(n={},n[i]=s),l&&(this._curInst===l&&this._hideDatepicker(),o=this._getDateDatepicker(e,!0),r=this._getMinMaxDate(l,"min"),h=this._getMinMaxDate(l,"max"),a(l.settings,n),null!==r&&void 0!==n.dateFormat&&void 0===n.minDate&&(l.settings.minDate=this._formatDate(l,r)),null!==h&&void 0!==n.dateFormat&&void 0===n.maxDate&&(l.settings.maxDate=this._formatDate(l,h)),"disabled"in n&&(n.disabled?this._disableDatepicker(e):this._enableDatepicker(e)),this._attachments(t(e),l),this._autoSize(l),this._setDate(l,o),this._updateAlternate(l),this._updateDatepicker(l)),void 0)},_changeDatepicker:function(t,e,i){this._optionDatepicker(t,e,i)},_refreshDatepicker:function(t){var e=this._getInst(t);e&&this._updateDatepicker(e)},_setDateDatepicker:function(t,e){var i=this._getInst(t);i&&(this._setDate(i,e),this._updateDatepicker(i),this._updateAlternate(i))},_getDateDatepicker:function(t,e){var i=this._getInst(t);return i&&!i.inline&&this._setDateFromField(i,e),i?this._getDate(i):null},_doKeyDown:function(e){var i,s,n,o=t.datepicker._getInst(e.target),a=!0,r=o.dpDiv.is(".ui-datepicker-rtl");if(o._keyEvent=!0,t.datepicker._datepickerShowing)switch(e.keyCode){case 9:t.datepicker._hideDatepicker(),a=!1;break;case 13:return n=t("td."+t.datepicker._dayOverClass+":not(."+t.datepicker._currentClass+")",o.dpDiv),n[0]&&t.datepicker._selectDay(e.target,o.selectedMonth,o.selectedYear,n[0]),i=t.datepicker._get(o,"onSelect"),i?(s=t.datepicker._formatDate(o),i.apply(o.input?o.input[0]:null,[s,o])):t.datepicker._hideDatepicker(),!1;case 27:t.datepicker._hideDatepicker();break;case 33:t.datepicker._adjustDate(e.target,e.ctrlKey?-t.datepicker._get(o,"stepBigMonths"):-t.datepicker._get(o,"stepMonths"),"M");break;case 34:t.datepicker._adjustDate(e.target,e.ctrlKey?+t.datepicker._get(o,"stepBigMonths"):+t.datepicker._get(o,"stepMonths"),"M");break;case 35:(e.ctrlKey||e.metaKey)&&t.datepicker._clearDate(e.target),a=e.ctrlKey||e.metaKey;break;case 36:(e.ctrlKey||e.metaKey)&&t.datepicker._gotoToday(e.target),a=e.ctrlKey||e.metaKey;break;case 37:(e.ctrlKey||e.metaKey)&&t.datepicker._adjustDate(e.target,r?1:-1,"D"),a=e.ctrlKey||e.metaKey,e.originalEvent.altKey&&t.datepicker._adjustDate(e.target,e.ctrlKey?-t.datepicker._get(o,"stepBigMonths"):-t.datepicker._get(o,"stepMonths"),"M");break;case 38:(e.ctrlKey||e.metaKey)&&t.datepicker._adjustDate(e.target,-7,"D"),a=e.ctrlKey||e.metaKey;break;case 39:(e.ctrlKey||e.metaKey)&&t.datepicker._adjustDate(e.target,r?-1:1,"D"),a=e.ctrlKey||e.metaKey,e.originalEvent.altKey&&t.datepicker._adjustDate(e.target,e.ctrlKey?+t.datepicker._get(o,"stepBigMonths"):+t.datepicker._get(o,"stepMonths"),"M");break;case 40:(e.ctrlKey||e.metaKey)&&t.datepicker._adjustDate(e.target,7,"D"),a=e.ctrlKey||e.metaKey;break;default:a=!1}else 36===e.keyCode&&e.ctrlKey?t.datepicker._showDatepicker(this):a=!1;a&&(e.preventDefault(),e.stopPropagation())},_doKeyPress:function(e){var i,s,n=t.datepicker._getInst(e.target);return t.datepicker._get(n,"constrainInput")?(i=t.datepicker._possibleChars(t.datepicker._get(n,"dateFormat")),s=String.fromCharCode(null==e.charCode?e.keyCode:e.charCode),e.ctrlKey||e.metaKey||" ">s||!i||i.indexOf(s)>-1):void 0},_doKeyUp:function(e){var i,s=t.datepicker._getInst(e.target);if(s.input.val()!==s.lastVal)try{i=t.datepicker.parseDate(t.datepicker._get(s,"dateFormat"),s.input?s.input.val():null,t.datepicker._getFormatConfig(s)),i&&(t.datepicker._setDateFromField(s),t.datepicker._updateAlternate(s),t.datepicker._updateDatepicker(s))}catch(n){}return!0},_showDatepicker:function(e){if(e=e.target||e,"input"!==e.nodeName.toLowerCase()&&(e=t("input",e.parentNode)[0]),!t.datepicker._isDisabledDatepicker(e)&&t.datepicker._lastInput!==e){var s,n,o,r,h,l,c;s=t.datepicker._getInst(e),t.datepicker._curInst&&t.datepicker._curInst!==s&&(t.datepicker._curInst.dpDiv.stop(!0,!0),s&&t.datepicker._datepickerShowing&&t.datepicker._hideDatepicker(t.datepicker._curInst.input[0])),n=t.datepicker._get(s,"beforeShow"),o=n?n.apply(e,[e,s]):{},o!==!1&&(a(s.settings,o),s.lastVal=null,t.datepicker._lastInput=e,t.datepicker._setDateFromField(s),t.datepicker._inDialog&&(e.value=""),t.datepicker._pos||(t.datepicker._pos=t.datepicker._findPos(e),t.datepicker._pos[1]+=e.offsetHeight),r=!1,t(e).parents().each(function(){return r|="fixed"===t(this).css("position"),!r}),h={left:t.datepicker._pos[0],top:t.datepicker._pos[1]},t.datepicker._pos=null,s.dpDiv.empty(),s.dpDiv.css({position:"absolute",display:"block",top:"-1000px"}),t.datepicker._updateDatepicker(s),h=t.datepicker._checkOffset(s,h,r),s.dpDiv.css({position:t.datepicker._inDialog&&t.blockUI?"static":r?"fixed":"absolute",display:"none",left:h.left+"px",top:h.top+"px"}),s.inline||(l=t.datepicker._get(s,"showAnim"),c=t.datepicker._get(s,"duration"),s.dpDiv.css("z-index",i(t(e))+1),t.datepicker._datepickerShowing=!0,t.effects&&t.effects.effect[l]?s.dpDiv.show(l,t.datepicker._get(s,"showOptions"),c):s.dpDiv[l||"show"](l?c:null),t.datepicker._shouldFocusInput(s)&&s.input.trigger("focus"),t.datepicker._curInst=s))}},_updateDatepicker:function(e){this.maxRows=4,p=e,e.dpDiv.empty().append(this._generateHTML(e)),this._attachHandlers(e);var i,s=this._getNumberOfMonths(e),n=s[1],a=17,r=e.dpDiv.find("."+this._dayOverClass+" a");r.length>0&&o.apply(r.get(0)),e.dpDiv.removeClass("ui-datepicker-multi-2 ui-datepicker-multi-3 ui-datepicker-multi-4").width(""),n>1&&e.dpDiv.addClass("ui-datepicker-multi-"+n).css("width",a*n+"em"),e.dpDiv[(1!==s[0]||1!==s[1]?"add":"remove")+"Class"]("ui-datepicker-multi"),e.dpDiv[(this._get(e,"isRTL")?"add":"remove")+"Class"]("ui-datepicker-rtl"),e===t.datepicker._curInst&&t.datepicker._datepickerShowing&&t.datepicker._shouldFocusInput(e)&&e.input.trigger("focus"),e.yearshtml&&(i=e.yearshtml,setTimeout(function(){i===e.yearshtml&&e.yearshtml&&e.dpDiv.find("select.ui-datepicker-year:first").replaceWith(e.yearshtml),i=e.yearshtml=null},0))},_shouldFocusInput:function(t){return t.input&&t.input.is(":visible")&&!t.input.is(":disabled")&&!t.input.is(":focus")},_checkOffset:function(e,i,s){var n=e.dpDiv.outerWidth(),o=e.dpDiv.outerHeight(),a=e.input?e.input.outerWidth():0,r=e.input?e.input.outerHeight():0,h=document.documentElement.clientWidth+(s?0:t(document).scrollLeft()),l=document.documentElement.clientHeight+(s?0:t(document).scrollTop());return i.left-=this._get(e,"isRTL")?n-a:0,i.left-=s&&i.left===e.input.offset().left?t(document).scrollLeft():0,i.top-=s&&i.top===e.input.offset().top+r?t(document).scrollTop():0,i.left-=Math.min(i.left,i.left+n>h&&h>n?Math.abs(i.left+n-h):0),i.top-=Math.min(i.top,i.top+o>l&&l>o?Math.abs(o+r):0),i},_findPos:function(e){for(var i,s=this._getInst(e),n=this._get(s,"isRTL");e&&("hidden"===e.type||1!==e.nodeType||t.expr.filters.hidden(e));)e=e[n?"previousSibling":"nextSibling"];return i=t(e).offset(),[i.left,i.top]},_hideDatepicker:function(e){var i,s,n,o,a=this._curInst;!a||e&&a!==t.data(e,"datepicker")||this._datepickerShowing&&(i=this._get(a,"showAnim"),s=this._get(a,"duration"),n=function(){t.datepicker._tidyDialog(a)},t.effects&&(t.effects.effect[i]||t.effects[i])?a.dpDiv.hide(i,t.datepicker._get(a,"showOptions"),s,n):a.dpDiv["slideDown"===i?"slideUp":"fadeIn"===i?"fadeOut":"hide"](i?s:null,n),i||n(),this._datepickerShowing=!1,o=this._get(a,"onClose"),o&&o.apply(a.input?a.input[0]:null,[a.input?a.input.val():"",a]),this._lastInput=null,this._inDialog&&(this._dialogInput.css({position:"absolute",left:"0",top:"-100px"}),t.blockUI&&(t.unblockUI(),t("body").append(this.dpDiv))),this._inDialog=!1)},_tidyDialog:function(t){t.dpDiv.removeClass(this._dialogClass).off(".ui-datepicker-calendar")},_checkExternalClick:function(e){if(t.datepicker._curInst){var i=t(e.target),s=t.datepicker._getInst(i[0]);(i[0].id!==t.datepicker._mainDivId&&0===i.parents("#"+t.datepicker._mainDivId).length&&!i.hasClass(t.datepicker.markerClassName)&&!i.closest("."+t.datepicker._triggerClass).length&&t.datepicker._datepickerShowing&&(!t.datepicker._inDialog||!t.blockUI)||i.hasClass(t.datepicker.markerClassName)&&t.datepicker._curInst!==s)&&t.datepicker._hideDatepicker()}},_adjustDate:function(e,i,s){var n=t(e),o=this._getInst(n[0]);this._isDisabledDatepicker(n[0])||(this._adjustInstDate(o,i+("M"===s?this._get(o,"showCurrentAtPos"):0),s),this._updateDatepicker(o))},_gotoToday:function(e){var i,s=t(e),n=this._getInst(s[0]);this._get(n,"gotoCurrent")&&n.currentDay?(n.selectedDay=n.currentDay,n.drawMonth=n.selectedMonth=n.currentMonth,n.drawYear=n.selectedYear=n.currentYear):(i=new Date,n.selectedDay=i.getDate(),n.drawMonth=n.selectedMonth=i.getMonth(),n.drawYear=n.selectedYear=i.getFullYear()),this._notifyChange(n),this._adjustDate(s)},_selectMonthYear:function(e,i,s){var n=t(e),o=this._getInst(n[0]);o["selected"+("M"===s?"Month":"Year")]=o["draw"+("M"===s?"Month":"Year")]=parseInt(i.options[i.selectedIndex].value,10),this._notifyChange(o),this._adjustDate(n)},_selectDay:function(e,i,s,n){var o,a=t(e);t(n).hasClass(this._unselectableClass)||this._isDisabledDatepicker(a[0])||(o=this._getInst(a[0]),o.selectedDay=o.currentDay=t("a",n).html(),o.selectedMonth=o.currentMonth=i,o.selectedYear=o.currentYear=s,this._selectDate(e,this._formatDate(o,o.currentDay,o.currentMonth,o.currentYear)))},_clearDate:function(e){var i=t(e);this._selectDate(i,"")},_selectDate:function(e,i){var s,n=t(e),o=this._getInst(n[0]);i=null!=i?i:this._formatDate(o),o.input&&o.input.val(i),this._updateAlternate(o),s=this._get(o,"onSelect"),s?s.apply(o.input?o.input[0]:null,[i,o]):o.input&&o.input.trigger("change"),o.inline?this._updateDatepicker(o):(this._hideDatepicker(),this._lastInput=o.input[0],"object"!=typeof o.input[0]&&o.input.trigger("focus"),this._lastInput=null)},_updateAlternate:function(e){var i,s,n,o=this._get(e,"altField");o&&(i=this._get(e,"altFormat")||this._get(e,"dateFormat"),s=this._getDate(e),n=this.formatDate(i,s,this._getFormatConfig(e)),t(o).val(n))},noWeekends:function(t){var e=t.getDay();return[e>0&&6>e,""]},iso8601Week:function(t){var e,i=new Date(t.getTime());return i.setDate(i.getDate()+4-(i.getDay()||7)),e=i.getTime(),i.setMonth(0),i.setDate(1),Math.floor(Math.round((e-i)/864e5)/7)+1},parseDate:function(e,i,s){if(null==e||null==i)throw"Invalid arguments";if(i="object"==typeof i?""+i:i+"",""===i)return null;var n,o,a,r,h=0,l=(s?s.shortYearCutoff:null)||this._defaults.shortYearCutoff,c="string"!=typeof l?l:(new Date).getFullYear()%100+parseInt(l,10),u=(s?s.dayNamesShort:null)||this._defaults.dayNamesShort,d=(s?s.dayNames:null)||this._defaults.dayNames,p=(s?s.monthNamesShort:null)||this._defaults.monthNamesShort,f=(s?s.monthNames:null)||this._defaults.monthNames,g=-1,m=-1,_=-1,v=-1,b=!1,y=function(t){var i=e.length>n+1&&e.charAt(n+1)===t;return i&&n++,i},w=function(t){var e=y(t),s="@"===t?14:"!"===t?20:"y"===t&&e?4:"o"===t?3:2,n="y"===t?s:1,o=RegExp("^\\d{"+n+","+s+"}"),a=i.substring(h).match(o);if(!a)throw"Missing number at position "+h;return h+=a[0].length,parseInt(a[0],10)},k=function(e,s,n){var o=-1,a=t.map(y(e)?n:s,function(t,e){return[[e,t]]}).sort(function(t,e){return-(t[1].length-e[1].length)});if(t.each(a,function(t,e){var s=e[1];return i.substr(h,s.length).toLowerCase()===s.toLowerCase()?(o=e[0],h+=s.length,!1):void 0}),-1!==o)return o+1;throw"Unknown name at position "+h},x=function(){if(i.charAt(h)!==e.charAt(n))throw"Unexpected literal at position "+h;h++};for(n=0;e.length>n;n++)if(b)"'"!==e.charAt(n)||y("'")?x():b=!1;else switch(e.charAt(n)){case"d":_=w("d");break;case"D":k("D",u,d);break;case"o":v=w("o");break;case"m":m=w("m");break;case"M":m=k("M",p,f);break;case"y":g=w("y");break;case"@":r=new Date(w("@")),g=r.getFullYear(),m=r.getMonth()+1,_=r.getDate();break;case"!":r=new Date((w("!")-this._ticksTo1970)/1e4),g=r.getFullYear(),m=r.getMonth()+1,_=r.getDate();break;case"'":y("'")?x():b=!0;break;default:x()}if(i.length>h&&(a=i.substr(h),!/^\s+/.test(a)))throw"Extra/unparsed characters found in date: "+a;if(-1===g?g=(new Date).getFullYear():100>g&&(g+=(new Date).getFullYear()-(new Date).getFullYear()%100+(c>=g?0:-100)),v>-1)for(m=1,_=v;;){if(o=this._getDaysInMonth(g,m-1),o>=_)break;m++,_-=o}if(r=this._daylightSavingAdjust(new Date(g,m-1,_)),r.getFullYear()!==g||r.getMonth()+1!==m||r.getDate()!==_)throw"Invalid date";return r},ATOM:"yy-mm-dd",COOKIE:"D, dd M yy",ISO_8601:"yy-mm-dd",RFC_822:"D, d M y",RFC_850:"DD, dd-M-y",RFC_1036:"D, d M y",RFC_1123:"D, d M yy",RFC_2822:"D, d M yy",RSS:"D, d M y",TICKS:"!",TIMESTAMP:"@",W3C:"yy-mm-dd",_ticksTo1970:1e7*60*60*24*(718685+Math.floor(492.5)-Math.floor(19.7)+Math.floor(4.925)),formatDate:function(t,e,i){if(!e)return"";var s,n=(i?i.dayNamesShort:null)||this._defaults.dayNamesShort,o=(i?i.dayNames:null)||this._defaults.dayNames,a=(i?i.monthNamesShort:null)||this._defaults.monthNamesShort,r=(i?i.monthNames:null)||this._defaults.monthNames,h=function(e){var i=t.length>s+1&&t.charAt(s+1)===e;return i&&s++,i},l=function(t,e,i){var s=""+e;if(h(t))for(;i>s.length;)s="0"+s;return s},c=function(t,e,i,s){return h(t)?s[e]:i[e]},u="",d=!1;if(e)for(s=0;t.length>s;s++)if(d)"'"!==t.charAt(s)||h("'")?u+=t.charAt(s):d=!1;else switch(t.charAt(s)){case"d":u+=l("d",e.getDate(),2);break;case"D":u+=c("D",e.getDay(),n,o);break;case"o":u+=l("o",Math.round((new Date(e.getFullYear(),e.getMonth(),e.getDate()).getTime()-new Date(e.getFullYear(),0,0).getTime())/864e5),3);break;case"m":u+=l("m",e.getMonth()+1,2);break;case"M":u+=c("M",e.getMonth(),a,r);break;case"y":u+=h("y")?e.getFullYear():(10>e.getFullYear()%100?"0":"")+e.getFullYear()%100;break;case"@":u+=e.getTime();break;case"!":u+=1e4*e.getTime()+this._ticksTo1970;break;case"'":h("'")?u+="'":d=!0;break;default:u+=t.charAt(s)}return u},_possibleChars:function(t){var e,i="",s=!1,n=function(i){var s=t.length>e+1&&t.charAt(e+1)===i;return s&&e++,s};for(e=0;t.length>e;e++)if(s)"'"!==t.charAt(e)||n("'")?i+=t.charAt(e):s=!1;else switch(t.charAt(e)){case"d":case"m":case"y":case"@":i+="0123456789";break;case"D":case"M":return null;case"'":n("'")?i+="'":s=!0;break;default:i+=t.charAt(e)}return i},_get:function(t,e){return void 0!==t.settings[e]?t.settings[e]:this._defaults[e]},_setDateFromField:function(t,e){if(t.input.val()!==t.lastVal){var i=this._get(t,"dateFormat"),s=t.lastVal=t.input?t.input.val():null,n=this._getDefaultDate(t),o=n,a=this._getFormatConfig(t);try{o=this.parseDate(i,s,a)||n}catch(r){s=e?"":s}t.selectedDay=o.getDate(),t.drawMonth=t.selectedMonth=o.getMonth(),t.drawYear=t.selectedYear=o.getFullYear(),t.currentDay=s?o.getDate():0,t.currentMonth=s?o.getMonth():0,t.currentYear=s?o.getFullYear():0,this._adjustInstDate(t)}},_getDefaultDate:function(t){return this._restrictMinMax(t,this._determineDate(t,this._get(t,"defaultDate"),new Date))},_determineDate:function(e,i,s){var n=function(t){var e=new Date;return e.setDate(e.getDate()+t),e},o=function(i){try{return t.datepicker.parseDate(t.datepicker._get(e,"dateFormat"),i,t.datepicker._getFormatConfig(e))}catch(s){}for(var n=(i.toLowerCase().match(/^c/)?t.datepicker._getDate(e):null)||new Date,o=n.getFullYear(),a=n.getMonth(),r=n.getDate(),h=/([+\-]?[0-9]+)\s*(d|D|w|W|m|M|y|Y)?/g,l=h.exec(i);l;){switch(l[2]||"d"){case"d":case"D":r+=parseInt(l[1],10);break;case"w":case"W":r+=7*parseInt(l[1],10);break;case"m":case"M":a+=parseInt(l[1],10),r=Math.min(r,t.datepicker._getDaysInMonth(o,a));break;case"y":case"Y":o+=parseInt(l[1],10),r=Math.min(r,t.datepicker._getDaysInMonth(o,a))}l=h.exec(i)}return new Date(o,a,r)},a=null==i||""===i?s:"string"==typeof i?o(i):"number"==typeof i?isNaN(i)?s:n(i):new Date(i.getTime());return a=a&&"Invalid Date"==""+a?s:a,a&&(a.setHours(0),a.setMinutes(0),a.setSeconds(0),a.setMilliseconds(0)),this._daylightSavingAdjust(a)},_daylightSavingAdjust:function(t){return t?(t.setHours(t.getHours()>12?t.getHours()+2:0),t):null},_setDate:function(t,e,i){var s=!e,n=t.selectedMonth,o=t.selectedYear,a=this._restrictMinMax(t,this._determineDate(t,e,new Date));t.selectedDay=t.currentDay=a.getDate(),t.drawMonth=t.selectedMonth=t.currentMonth=a.getMonth(),t.drawYear=t.selectedYear=t.currentYear=a.getFullYear(),n===t.selectedMonth&&o===t.selectedYear||i||this._notifyChange(t),this._adjustInstDate(t),t.input&&t.input.val(s?"":this._formatDate(t))},_getDate:function(t){var e=!t.currentYear||t.input&&""===t.input.val()?null:this._daylightSavingAdjust(new Date(t.currentYear,t.currentMonth,t.currentDay));return e},_attachHandlers:function(e){var i=this._get(e,"stepMonths"),s="#"+e.id.replace(/\\\\/g,"\\");e.dpDiv.find("[data-handler]").map(function(){var e={prev:function(){t.datepicker._adjustDate(s,-i,"M")},next:function(){t.datepicker._adjustDate(s,+i,"M")},hide:function(){t.datepicker._hideDatepicker()},today:function(){t.datepicker._gotoToday(s)},selectDay:function(){return t.datepicker._selectDay(s,+this.getAttribute("data-month"),+this.getAttribute("data-year"),this),!1},selectMonth:function(){return t.datepicker._selectMonthYear(s,this,"M"),!1},selectYear:function(){return t.datepicker._selectMonthYear(s,this,"Y"),!1}};t(this).on(this.getAttribute("data-event"),e[this.getAttribute("data-handler")])})},_generateHTML:function(t){var e,i,s,n,o,a,r,h,l,c,u,d,p,f,g,m,_,v,b,y,w,k,x,C,D,I,T,P,M,S,H,z,O,A,N,W,E,F,L,R=new Date,B=this._daylightSavingAdjust(new Date(R.getFullYear(),R.getMonth(),R.getDate())),Y=this._get(t,"isRTL"),j=this._get(t,"showButtonPanel"),q=this._get(t,"hideIfNoPrevNext"),K=this._get(t,"navigationAsDateFormat"),U=this._getNumberOfMonths(t),V=this._get(t,"showCurrentAtPos"),$=this._get(t,"stepMonths"),X=1!==U[0]||1!==U[1],G=this._daylightSavingAdjust(t.currentDay?new Date(t.currentYear,t.currentMonth,t.currentDay):new Date(9999,9,9)),Q=this._getMinMaxDate(t,"min"),J=this._getMinMaxDate(t,"max"),Z=t.drawMonth-V,te=t.drawYear;if(0>Z&&(Z+=12,te--),J)for(e=this._daylightSavingAdjust(new Date(J.getFullYear(),J.getMonth()-U[0]*U[1]+1,J.getDate())),e=Q&&Q>e?Q:e;this._daylightSavingAdjust(new Date(te,Z,1))>e;)Z--,0>Z&&(Z=11,te--);for(t.drawMonth=Z,t.drawYear=te,i=this._get(t,"prevText"),i=K?this.formatDate(i,this._daylightSavingAdjust(new Date(te,Z-$,1)),this._getFormatConfig(t)):i,s=this._canAdjustMonth(t,-1,te,Z)?"<a class='ui-datepicker-prev ui-corner-all' data-handler='prev' data-event='click' title='"+i+"'><span class='ui-icon ui-icon-circle-triangle-"+(Y?"e":"w")+"'>"+i+"</span></a>":q?"":"<a class='ui-datepicker-prev ui-corner-all ui-state-disabled' title='"+i+"'><span class='ui-icon ui-icon-circle-triangle-"+(Y?"e":"w")+"'>"+i+"</span></a>",n=this._get(t,"nextText"),n=K?this.formatDate(n,this._daylightSavingAdjust(new Date(te,Z+$,1)),this._getFormatConfig(t)):n,o=this._canAdjustMonth(t,1,te,Z)?"<a class='ui-datepicker-next ui-corner-all' data-handler='next' data-event='click' title='"+n+"'><span class='ui-icon ui-icon-circle-triangle-"+(Y?"w":"e")+"'>"+n+"</span></a>":q?"":"<a class='ui-datepicker-next ui-corner-all ui-state-disabled' title='"+n+"'><span class='ui-icon ui-icon-circle-triangle-"+(Y?"w":"e")+"'>"+n+"</span></a>",a=this._get(t,"currentText"),r=this._get(t,"gotoCurrent")&&t.currentDay?G:B,a=K?this.formatDate(a,r,this._getFormatConfig(t)):a,h=t.inline?"":"<button type='button' class='ui-datepicker-close ui-state-default ui-priority-primary ui-corner-all' data-handler='hide' data-event='click'>"+this._get(t,"closeText")+"</button>",l=j?"<div class='ui-datepicker-buttonpane ui-widget-content'>"+(Y?h:"")+(this._isInRange(t,r)?"<button type='button' class='ui-datepicker-current ui-state-default ui-priority-secondary ui-corner-all' data-handler='today' data-event='click'>"+a+"</button>":"")+(Y?"":h)+"</div>":"",c=parseInt(this._get(t,"firstDay"),10),c=isNaN(c)?0:c,u=this._get(t,"showWeek"),d=this._get(t,"dayNames"),p=this._get(t,"dayNamesMin"),f=this._get(t,"monthNames"),g=this._get(t,"monthNamesShort"),m=this._get(t,"beforeShowDay"),_=this._get(t,"showOtherMonths"),v=this._get(t,"selectOtherMonths"),b=this._getDefaultDate(t),y="",k=0;U[0]>k;k++){for(x="",this.maxRows=4,C=0;U[1]>C;C++){if(D=this._daylightSavingAdjust(new Date(te,Z,t.selectedDay)),I=" ui-corner-all",T="",X){if(T+="<div class='ui-datepicker-group",U[1]>1)switch(C){case 0:T+=" ui-datepicker-group-first",I=" ui-corner-"+(Y?"right":"left");
break;case U[1]-1:T+=" ui-datepicker-group-last",I=" ui-corner-"+(Y?"left":"right");break;default:T+=" ui-datepicker-group-middle",I=""}T+="'>"}for(T+="<div class='ui-datepicker-header ui-widget-header ui-helper-clearfix"+I+"'>"+(/all|left/.test(I)&&0===k?Y?o:s:"")+(/all|right/.test(I)&&0===k?Y?s:o:"")+this._generateMonthYearHeader(t,Z,te,Q,J,k>0||C>0,f,g)+"</div><table class='ui-datepicker-calendar'><thead>"+"<tr>",P=u?"<th class='ui-datepicker-week-col'>"+this._get(t,"weekHeader")+"</th>":"",w=0;7>w;w++)M=(w+c)%7,P+="<th scope='col'"+((w+c+6)%7>=5?" class='ui-datepicker-week-end'":"")+">"+"<span title='"+d[M]+"'>"+p[M]+"</span></th>";for(T+=P+"</tr></thead><tbody>",S=this._getDaysInMonth(te,Z),te===t.selectedYear&&Z===t.selectedMonth&&(t.selectedDay=Math.min(t.selectedDay,S)),H=(this._getFirstDayOfMonth(te,Z)-c+7)%7,z=Math.ceil((H+S)/7),O=X?this.maxRows>z?this.maxRows:z:z,this.maxRows=O,A=this._daylightSavingAdjust(new Date(te,Z,1-H)),N=0;O>N;N++){for(T+="<tr>",W=u?"<td class='ui-datepicker-week-col'>"+this._get(t,"calculateWeek")(A)+"</td>":"",w=0;7>w;w++)E=m?m.apply(t.input?t.input[0]:null,[A]):[!0,""],F=A.getMonth()!==Z,L=F&&!v||!E[0]||Q&&Q>A||J&&A>J,W+="<td class='"+((w+c+6)%7>=5?" ui-datepicker-week-end":"")+(F?" ui-datepicker-other-month":"")+(A.getTime()===D.getTime()&&Z===t.selectedMonth&&t._keyEvent||b.getTime()===A.getTime()&&b.getTime()===D.getTime()?" "+this._dayOverClass:"")+(L?" "+this._unselectableClass+" ui-state-disabled":"")+(F&&!_?"":" "+E[1]+(A.getTime()===G.getTime()?" "+this._currentClass:"")+(A.getTime()===B.getTime()?" ui-datepicker-today":""))+"'"+(F&&!_||!E[2]?"":" title='"+E[2].replace(/'/g,"&#39;")+"'")+(L?"":" data-handler='selectDay' data-event='click' data-month='"+A.getMonth()+"' data-year='"+A.getFullYear()+"'")+">"+(F&&!_?"&#xa0;":L?"<span class='ui-state-default'>"+A.getDate()+"</span>":"<a class='ui-state-default"+(A.getTime()===B.getTime()?" ui-state-highlight":"")+(A.getTime()===G.getTime()?" ui-state-active":"")+(F?" ui-priority-secondary":"")+"' href='#'>"+A.getDate()+"</a>")+"</td>",A.setDate(A.getDate()+1),A=this._daylightSavingAdjust(A);T+=W+"</tr>"}Z++,Z>11&&(Z=0,te++),T+="</tbody></table>"+(X?"</div>"+(U[0]>0&&C===U[1]-1?"<div class='ui-datepicker-row-break'></div>":""):""),x+=T}y+=x}return y+=l,t._keyEvent=!1,y},_generateMonthYearHeader:function(t,e,i,s,n,o,a,r){var h,l,c,u,d,p,f,g,m=this._get(t,"changeMonth"),_=this._get(t,"changeYear"),v=this._get(t,"showMonthAfterYear"),b="<div class='ui-datepicker-title'>",y="";if(o||!m)y+="<span class='ui-datepicker-month'>"+a[e]+"</span>";else{for(h=s&&s.getFullYear()===i,l=n&&n.getFullYear()===i,y+="<select class='ui-datepicker-month' data-handler='selectMonth' data-event='change'>",c=0;12>c;c++)(!h||c>=s.getMonth())&&(!l||n.getMonth()>=c)&&(y+="<option value='"+c+"'"+(c===e?" selected='selected'":"")+">"+r[c]+"</option>");y+="</select>"}if(v||(b+=y+(!o&&m&&_?"":"&#xa0;")),!t.yearshtml)if(t.yearshtml="",o||!_)b+="<span class='ui-datepicker-year'>"+i+"</span>";else{for(u=this._get(t,"yearRange").split(":"),d=(new Date).getFullYear(),p=function(t){var e=t.match(/c[+\-].*/)?i+parseInt(t.substring(1),10):t.match(/[+\-].*/)?d+parseInt(t,10):parseInt(t,10);return isNaN(e)?d:e},f=p(u[0]),g=Math.max(f,p(u[1]||"")),f=s?Math.max(f,s.getFullYear()):f,g=n?Math.min(g,n.getFullYear()):g,t.yearshtml+="<select class='ui-datepicker-year' data-handler='selectYear' data-event='change'>";g>=f;f++)t.yearshtml+="<option value='"+f+"'"+(f===i?" selected='selected'":"")+">"+f+"</option>";t.yearshtml+="</select>",b+=t.yearshtml,t.yearshtml=null}return b+=this._get(t,"yearSuffix"),v&&(b+=(!o&&m&&_?"":"&#xa0;")+y),b+="</div>"},_adjustInstDate:function(t,e,i){var s=t.selectedYear+("Y"===i?e:0),n=t.selectedMonth+("M"===i?e:0),o=Math.min(t.selectedDay,this._getDaysInMonth(s,n))+("D"===i?e:0),a=this._restrictMinMax(t,this._daylightSavingAdjust(new Date(s,n,o)));t.selectedDay=a.getDate(),t.drawMonth=t.selectedMonth=a.getMonth(),t.drawYear=t.selectedYear=a.getFullYear(),("M"===i||"Y"===i)&&this._notifyChange(t)},_restrictMinMax:function(t,e){var i=this._getMinMaxDate(t,"min"),s=this._getMinMaxDate(t,"max"),n=i&&i>e?i:e;return s&&n>s?s:n},_notifyChange:function(t){var e=this._get(t,"onChangeMonthYear");e&&e.apply(t.input?t.input[0]:null,[t.selectedYear,t.selectedMonth+1,t])},_getNumberOfMonths:function(t){var e=this._get(t,"numberOfMonths");return null==e?[1,1]:"number"==typeof e?[1,e]:e},_getMinMaxDate:function(t,e){return this._determineDate(t,this._get(t,e+"Date"),null)},_getDaysInMonth:function(t,e){return 32-this._daylightSavingAdjust(new Date(t,e,32)).getDate()},_getFirstDayOfMonth:function(t,e){return new Date(t,e,1).getDay()},_canAdjustMonth:function(t,e,i,s){var n=this._getNumberOfMonths(t),o=this._daylightSavingAdjust(new Date(i,s+(0>e?e:n[0]*n[1]),1));return 0>e&&o.setDate(this._getDaysInMonth(o.getFullYear(),o.getMonth())),this._isInRange(t,o)},_isInRange:function(t,e){var i,s,n=this._getMinMaxDate(t,"min"),o=this._getMinMaxDate(t,"max"),a=null,r=null,h=this._get(t,"yearRange");return h&&(i=h.split(":"),s=(new Date).getFullYear(),a=parseInt(i[0],10),r=parseInt(i[1],10),i[0].match(/[+\-].*/)&&(a+=s),i[1].match(/[+\-].*/)&&(r+=s)),(!n||e.getTime()>=n.getTime())&&(!o||e.getTime()<=o.getTime())&&(!a||e.getFullYear()>=a)&&(!r||r>=e.getFullYear())},_getFormatConfig:function(t){var e=this._get(t,"shortYearCutoff");return e="string"!=typeof e?e:(new Date).getFullYear()%100+parseInt(e,10),{shortYearCutoff:e,dayNamesShort:this._get(t,"dayNamesShort"),dayNames:this._get(t,"dayNames"),monthNamesShort:this._get(t,"monthNamesShort"),monthNames:this._get(t,"monthNames")}},_formatDate:function(t,e,i,s){e||(t.currentDay=t.selectedDay,t.currentMonth=t.selectedMonth,t.currentYear=t.selectedYear);var n=e?"object"==typeof e?e:this._daylightSavingAdjust(new Date(s,i,e)):this._daylightSavingAdjust(new Date(t.currentYear,t.currentMonth,t.currentDay));return this.formatDate(this._get(t,"dateFormat"),n,this._getFormatConfig(t))}}),t.fn.datepicker=function(e){if(!this.length)return this;t.datepicker.initialized||(t(document).on("mousedown",t.datepicker._checkExternalClick),t.datepicker.initialized=!0),0===t("#"+t.datepicker._mainDivId).length&&t("body").append(t.datepicker.dpDiv);var i=Array.prototype.slice.call(arguments,1);return"string"!=typeof e||"isDisabled"!==e&&"getDate"!==e&&"widget"!==e?"option"===e&&2===arguments.length&&"string"==typeof arguments[1]?t.datepicker["_"+e+"Datepicker"].apply(t.datepicker,[this[0]].concat(i)):this.each(function(){"string"==typeof e?t.datepicker["_"+e+"Datepicker"].apply(t.datepicker,[this].concat(i)):t.datepicker._attachDatepicker(this,e)}):t.datepicker["_"+e+"Datepicker"].apply(t.datepicker,[this[0]].concat(i))},t.datepicker=new s,t.datepicker.initialized=!1,t.datepicker.uuid=(new Date).getTime(),t.datepicker.version="1.12.1",t.datepicker,t.widget("ui.dialog",{version:"1.12.1",options:{appendTo:"body",autoOpen:!0,buttons:[],classes:{"ui-dialog":"ui-corner-all","ui-dialog-titlebar":"ui-corner-all"},closeOnEscape:!0,closeText:"Close",draggable:!0,hide:null,height:"auto",maxHeight:null,maxWidth:null,minHeight:150,minWidth:150,modal:!1,position:{my:"center",at:"center",of:window,collision:"fit",using:function(e){var i=t(this).css(e).offset().top;0>i&&t(this).css("top",e.top-i)}},resizable:!0,show:null,title:null,width:300,beforeClose:null,close:null,drag:null,dragStart:null,dragStop:null,focus:null,open:null,resize:null,resizeStart:null,resizeStop:null},sizeRelatedOptions:{buttons:!0,height:!0,maxHeight:!0,maxWidth:!0,minHeight:!0,minWidth:!0,width:!0},resizableRelatedOptions:{maxHeight:!0,maxWidth:!0,minHeight:!0,minWidth:!0},_create:function(){this.originalCss={display:this.element[0].style.display,width:this.element[0].style.width,minHeight:this.element[0].style.minHeight,maxHeight:this.element[0].style.maxHeight,height:this.element[0].style.height},this.originalPosition={parent:this.element.parent(),index:this.element.parent().children().index(this.element)},this.originalTitle=this.element.attr("title"),null==this.options.title&&null!=this.originalTitle&&(this.options.title=this.originalTitle),this.options.disabled&&(this.options.disabled=!1),this._createWrapper(),this.element.show().removeAttr("title").appendTo(this.uiDialog),this._addClass("ui-dialog-content","ui-widget-content"),this._createTitlebar(),this._createButtonPane(),this.options.draggable&&t.fn.draggable&&this._makeDraggable(),this.options.resizable&&t.fn.resizable&&this._makeResizable(),this._isOpen=!1,this._trackFocus()},_init:function(){this.options.autoOpen&&this.open()},_appendTo:function(){var e=this.options.appendTo;return e&&(e.jquery||e.nodeType)?t(e):this.document.find(e||"body").eq(0)},_destroy:function(){var t,e=this.originalPosition;this._untrackInstance(),this._destroyOverlay(),this.element.removeUniqueId().css(this.originalCss).detach(),this.uiDialog.remove(),this.originalTitle&&this.element.attr("title",this.originalTitle),t=e.parent.children().eq(e.index),t.length&&t[0]!==this.element[0]?t.before(this.element):e.parent.append(this.element)},widget:function(){return this.uiDialog},disable:t.noop,enable:t.noop,close:function(e){var i=this;this._isOpen&&this._trigger("beforeClose",e)!==!1&&(this._isOpen=!1,this._focusedElement=null,this._destroyOverlay(),this._untrackInstance(),this.opener.filter(":focusable").trigger("focus").length||t.ui.safeBlur(t.ui.safeActiveElement(this.document[0])),this._hide(this.uiDialog,this.options.hide,function(){i._trigger("close",e)}))},isOpen:function(){return this._isOpen},moveToTop:function(){this._moveToTop()},_moveToTop:function(e,i){var s=!1,n=this.uiDialog.siblings(".ui-front:visible").map(function(){return+t(this).css("z-index")}).get(),o=Math.max.apply(null,n);return o>=+this.uiDialog.css("z-index")&&(this.uiDialog.css("z-index",o+1),s=!0),s&&!i&&this._trigger("focus",e),s},open:function(){var e=this;return this._isOpen?(this._moveToTop()&&this._focusTabbable(),void 0):(this._isOpen=!0,this.opener=t(t.ui.safeActiveElement(this.document[0])),this._size(),this._position(),this._createOverlay(),this._moveToTop(null,!0),this.overlay&&this.overlay.css("z-index",this.uiDialog.css("z-index")-1),this._show(this.uiDialog,this.options.show,function(){e._focusTabbable(),e._trigger("focus")}),this._makeFocusTarget(),this._trigger("open"),void 0)},_focusTabbable:function(){var t=this._focusedElement;t||(t=this.element.find("[autofocus]")),t.length||(t=this.element.find(":tabbable")),t.length||(t=this.uiDialogButtonPane.find(":tabbable")),t.length||(t=this.uiDialogTitlebarClose.filter(":tabbable")),t.length||(t=this.uiDialog),t.eq(0).trigger("focus")},_keepFocus:function(e){function i(){var e=t.ui.safeActiveElement(this.document[0]),i=this.uiDialog[0]===e||t.contains(this.uiDialog[0],e);i||this._focusTabbable()}e.preventDefault(),i.call(this),this._delay(i)},_createWrapper:function(){this.uiDialog=t("<div>").hide().attr({tabIndex:-1,role:"dialog"}).appendTo(this._appendTo()),this._addClass(this.uiDialog,"ui-dialog","ui-widget ui-widget-content ui-front"),this._on(this.uiDialog,{keydown:function(e){if(this.options.closeOnEscape&&!e.isDefaultPrevented()&&e.keyCode&&e.keyCode===t.ui.keyCode.ESCAPE)return e.preventDefault(),this.close(e),void 0;if(e.keyCode===t.ui.keyCode.TAB&&!e.isDefaultPrevented()){var i=this.uiDialog.find(":tabbable"),s=i.filter(":first"),n=i.filter(":last");e.target!==n[0]&&e.target!==this.uiDialog[0]||e.shiftKey?e.target!==s[0]&&e.target!==this.uiDialog[0]||!e.shiftKey||(this._delay(function(){n.trigger("focus")}),e.preventDefault()):(this._delay(function(){s.trigger("focus")}),e.preventDefault())}},mousedown:function(t){this._moveToTop(t)&&this._focusTabbable()}}),this.element.find("[aria-describedby]").length||this.uiDialog.attr({"aria-describedby":this.element.uniqueId().attr("id")})},_createTitlebar:function(){var e;this.uiDialogTitlebar=t("<div>"),this._addClass(this.uiDialogTitlebar,"ui-dialog-titlebar","ui-widget-header ui-helper-clearfix"),this._on(this.uiDialogTitlebar,{mousedown:function(e){t(e.target).closest(".ui-dialog-titlebar-close")||this.uiDialog.trigger("focus")}}),this.uiDialogTitlebarClose=t("<button type='button'></button>").button({label:t("<a>").text(this.options.closeText).html(),icon:"ui-icon-closethick",showLabel:!1}).appendTo(this.uiDialogTitlebar),this._addClass(this.uiDialogTitlebarClose,"ui-dialog-titlebar-close"),this._on(this.uiDialogTitlebarClose,{click:function(t){t.preventDefault(),this.close(t)}}),e=t("<span>").uniqueId().prependTo(this.uiDialogTitlebar),this._addClass(e,"ui-dialog-title"),this._title(e),this.uiDialogTitlebar.prependTo(this.uiDialog),this.uiDialog.attr({"aria-labelledby":e.attr("id")})},_title:function(t){this.options.title?t.text(this.options.title):t.html("&#160;")},_createButtonPane:function(){this.uiDialogButtonPane=t("<div>"),this._addClass(this.uiDialogButtonPane,"ui-dialog-buttonpane","ui-widget-content ui-helper-clearfix"),this.uiButtonSet=t("<div>").appendTo(this.uiDialogButtonPane),this._addClass(this.uiButtonSet,"ui-dialog-buttonset"),this._createButtons()},_createButtons:function(){var e=this,i=this.options.buttons;return this.uiDialogButtonPane.remove(),this.uiButtonSet.empty(),t.isEmptyObject(i)||t.isArray(i)&&!i.length?(this._removeClass(this.uiDialog,"ui-dialog-buttons"),void 0):(t.each(i,function(i,s){var n,o;s=t.isFunction(s)?{click:s,text:i}:s,s=t.extend({type:"button"},s),n=s.click,o={icon:s.icon,iconPosition:s.iconPosition,showLabel:s.showLabel,icons:s.icons,text:s.text},delete s.click,delete s.icon,delete s.iconPosition,delete s.showLabel,delete s.icons,"boolean"==typeof s.text&&delete s.text,t("<button></button>",s).button(o).appendTo(e.uiButtonSet).on("click",function(){n.apply(e.element[0],arguments)})}),this._addClass(this.uiDialog,"ui-dialog-buttons"),this.uiDialogButtonPane.appendTo(this.uiDialog),void 0)},_makeDraggable:function(){function e(t){return{position:t.position,offset:t.offset}}var i=this,s=this.options;this.uiDialog.draggable({cancel:".ui-dialog-content, .ui-dialog-titlebar-close",handle:".ui-dialog-titlebar",containment:"document",start:function(s,n){i._addClass(t(this),"ui-dialog-dragging"),i._blockFrames(),i._trigger("dragStart",s,e(n))},drag:function(t,s){i._trigger("drag",t,e(s))},stop:function(n,o){var a=o.offset.left-i.document.scrollLeft(),r=o.offset.top-i.document.scrollTop();s.position={my:"left top",at:"left"+(a>=0?"+":"")+a+" "+"top"+(r>=0?"+":"")+r,of:i.window},i._removeClass(t(this),"ui-dialog-dragging"),i._unblockFrames(),i._trigger("dragStop",n,e(o))}})},_makeResizable:function(){function e(t){return{originalPosition:t.originalPosition,originalSize:t.originalSize,position:t.position,size:t.size}}var i=this,s=this.options,n=s.resizable,o=this.uiDialog.css("position"),a="string"==typeof n?n:"n,e,s,w,se,sw,ne,nw";this.uiDialog.resizable({cancel:".ui-dialog-content",containment:"document",alsoResize:this.element,maxWidth:s.maxWidth,maxHeight:s.maxHeight,minWidth:s.minWidth,minHeight:this._minHeight(),handles:a,start:function(s,n){i._addClass(t(this),"ui-dialog-resizing"),i._blockFrames(),i._trigger("resizeStart",s,e(n))},resize:function(t,s){i._trigger("resize",t,e(s))},stop:function(n,o){var a=i.uiDialog.offset(),r=a.left-i.document.scrollLeft(),h=a.top-i.document.scrollTop();s.height=i.uiDialog.height(),s.width=i.uiDialog.width(),s.position={my:"left top",at:"left"+(r>=0?"+":"")+r+" "+"top"+(h>=0?"+":"")+h,of:i.window},i._removeClass(t(this),"ui-dialog-resizing"),i._unblockFrames(),i._trigger("resizeStop",n,e(o))}}).css("position",o)},_trackFocus:function(){this._on(this.widget(),{focusin:function(e){this._makeFocusTarget(),this._focusedElement=t(e.target)}})},_makeFocusTarget:function(){this._untrackInstance(),this._trackingInstances().unshift(this)},_untrackInstance:function(){var e=this._trackingInstances(),i=t.inArray(this,e);-1!==i&&e.splice(i,1)},_trackingInstances:function(){var t=this.document.data("ui-dialog-instances");return t||(t=[],this.document.data("ui-dialog-instances",t)),t},_minHeight:function(){var t=this.options;return"auto"===t.height?t.minHeight:Math.min(t.minHeight,t.height)},_position:function(){var t=this.uiDialog.is(":visible");t||this.uiDialog.show(),this.uiDialog.position(this.options.position),t||this.uiDialog.hide()},_setOptions:function(e){var i=this,s=!1,n={};t.each(e,function(t,e){i._setOption(t,e),t in i.sizeRelatedOptions&&(s=!0),t in i.resizableRelatedOptions&&(n[t]=e)}),s&&(this._size(),this._position()),this.uiDialog.is(":data(ui-resizable)")&&this.uiDialog.resizable("option",n)},_setOption:function(e,i){var s,n,o=this.uiDialog;"disabled"!==e&&(this._super(e,i),"appendTo"===e&&this.uiDialog.appendTo(this._appendTo()),"buttons"===e&&this._createButtons(),"closeText"===e&&this.uiDialogTitlebarClose.button({label:t("<a>").text(""+this.options.closeText).html()}),"draggable"===e&&(s=o.is(":data(ui-draggable)"),s&&!i&&o.draggable("destroy"),!s&&i&&this._makeDraggable()),"position"===e&&this._position(),"resizable"===e&&(n=o.is(":data(ui-resizable)"),n&&!i&&o.resizable("destroy"),n&&"string"==typeof i&&o.resizable("option","handles",i),n||i===!1||this._makeResizable()),"title"===e&&this._title(this.uiDialogTitlebar.find(".ui-dialog-title")))},_size:function(){var t,e,i,s=this.options;this.element.show().css({width:"auto",minHeight:0,maxHeight:"none",height:0}),s.minWidth>s.width&&(s.width=s.minWidth),t=this.uiDialog.css({height:"auto",width:s.width}).outerHeight(),e=Math.max(0,s.minHeight-t),i="number"==typeof s.maxHeight?Math.max(0,s.maxHeight-t):"none","auto"===s.height?this.element.css({minHeight:e,maxHeight:i,height:"auto"}):this.element.height(Math.max(0,s.height-t)),this.uiDialog.is(":data(ui-resizable)")&&this.uiDialog.resizable("option","minHeight",this._minHeight())},_blockFrames:function(){this.iframeBlocks=this.document.find("iframe").map(function(){var e=t(this);return t("<div>").css({position:"absolute",width:e.outerWidth(),height:e.outerHeight()}).appendTo(e.parent()).offset(e.offset())[0]})},_unblockFrames:function(){this.iframeBlocks&&(this.iframeBlocks.remove(),delete this.iframeBlocks)},_allowInteraction:function(e){return t(e.target).closest(".ui-dialog").length?!0:!!t(e.target).closest(".ui-datepicker").length},_createOverlay:function(){if(this.options.modal){var e=!0;this._delay(function(){e=!1}),this.document.data("ui-dialog-overlays")||this._on(this.document,{focusin:function(t){e||this._allowInteraction(t)||(t.preventDefault(),this._trackingInstances()[0]._focusTabbable())}}),this.overlay=t("<div>").appendTo(this._appendTo()),this._addClass(this.overlay,null,"ui-widget-overlay ui-front"),this._on(this.overlay,{mousedown:"_keepFocus"}),this.document.data("ui-dialog-overlays",(this.document.data("ui-dialog-overlays")||0)+1)}},_destroyOverlay:function(){if(this.options.modal&&this.overlay){var t=this.document.data("ui-dialog-overlays")-1;t?this.document.data("ui-dialog-overlays",t):(this._off(this.document,"focusin"),this.document.removeData("ui-dialog-overlays")),this.overlay.remove(),this.overlay=null}}}),t.uiBackCompat!==!1&&t.widget("ui.dialog",t.ui.dialog,{options:{dialogClass:""},_createWrapper:function(){this._super(),this.uiDialog.addClass(this.options.dialogClass)},_setOption:function(t,e){"dialogClass"===t&&this.uiDialog.removeClass(this.options.dialogClass).addClass(e),this._superApply(arguments)}}),t.ui.dialog,t.widget("ui.progressbar",{version:"1.12.1",options:{classes:{"ui-progressbar":"ui-corner-all","ui-progressbar-value":"ui-corner-left","ui-progressbar-complete":"ui-corner-right"},max:100,value:0,change:null,complete:null},min:0,_create:function(){this.oldValue=this.options.value=this._constrainedValue(),this.element.attr({role:"progressbar","aria-valuemin":this.min}),this._addClass("ui-progressbar","ui-widget ui-widget-content"),this.valueDiv=t("<div>").appendTo(this.element),this._addClass(this.valueDiv,"ui-progressbar-value","ui-widget-header"),this._refreshValue()},_destroy:function(){this.element.removeAttr("role aria-valuemin aria-valuemax aria-valuenow"),this.valueDiv.remove()},value:function(t){return void 0===t?this.options.value:(this.options.value=this._constrainedValue(t),this._refreshValue(),void 0)},_constrainedValue:function(t){return void 0===t&&(t=this.options.value),this.indeterminate=t===!1,"number"!=typeof t&&(t=0),this.indeterminate?!1:Math.min(this.options.max,Math.max(this.min,t))},_setOptions:function(t){var e=t.value;delete t.value,this._super(t),this.options.value=this._constrainedValue(e),this._refreshValue()},_setOption:function(t,e){"max"===t&&(e=Math.max(this.min,e)),this._super(t,e)},_setOptionDisabled:function(t){this._super(t),this.element.attr("aria-disabled",t),this._toggleClass(null,"ui-state-disabled",!!t)},_percentage:function(){return this.indeterminate?100:100*(this.options.value-this.min)/(this.options.max-this.min)},_refreshValue:function(){var e=this.options.value,i=this._percentage();this.valueDiv.toggle(this.indeterminate||e>this.min).width(i.toFixed(0)+"%"),this._toggleClass(this.valueDiv,"ui-progressbar-complete",null,e===this.options.max)._toggleClass("ui-progressbar-indeterminate",null,this.indeterminate),this.indeterminate?(this.element.removeAttr("aria-valuenow"),this.overlayDiv||(this.overlayDiv=t("<div>").appendTo(this.valueDiv),this._addClass(this.overlayDiv,"ui-progressbar-overlay"))):(this.element.attr({"aria-valuemax":this.options.max,"aria-valuenow":e}),this.overlayDiv&&(this.overlayDiv.remove(),this.overlayDiv=null)),this.oldValue!==e&&(this.oldValue=e,this._trigger("change")),e===this.options.max&&this._trigger("complete")}}),t.widget("ui.selectmenu",[t.ui.formResetMixin,{version:"1.12.1",defaultElement:"<select>",options:{appendTo:null,classes:{"ui-selectmenu-button-open":"ui-corner-top","ui-selectmenu-button-closed":"ui-corner-all"},disabled:null,icons:{button:"ui-icon-triangle-1-s"},position:{my:"left top",at:"left bottom",collision:"none"},width:!1,change:null,close:null,focus:null,open:null,select:null},_create:function(){var e=this.element.uniqueId().attr("id");this.ids={element:e,button:e+"-button",menu:e+"-menu"},this._drawButton(),this._drawMenu(),this._bindFormResetHandler(),this._rendered=!1,this.menuItems=t()},_drawButton:function(){var e,i=this,s=this._parseOption(this.element.find("option:selected"),this.element[0].selectedIndex);this.labels=this.element.labels().attr("for",this.ids.button),this._on(this.labels,{click:function(t){this.button.focus(),t.preventDefault()}}),this.element.hide(),this.button=t("<span>",{tabindex:this.options.disabled?-1:0,id:this.ids.button,role:"combobox","aria-expanded":"false","aria-autocomplete":"list","aria-owns":this.ids.menu,"aria-haspopup":"true",title:this.element.attr("title")}).insertAfter(this.element),this._addClass(this.button,"ui-selectmenu-button ui-selectmenu-button-closed","ui-button ui-widget"),e=t("<span>").appendTo(this.button),this._addClass(e,"ui-selectmenu-icon","ui-icon "+this.options.icons.button),this.buttonItem=this._renderButtonItem(s).appendTo(this.button),this.options.width!==!1&&this._resizeButton(),this._on(this.button,this._buttonEvents),this.button.one("focusin",function(){i._rendered||i._refreshMenu()})},_drawMenu:function(){var e=this;this.menu=t("<ul>",{"aria-hidden":"true","aria-labelledby":this.ids.button,id:this.ids.menu}),this.menuWrap=t("<div>").append(this.menu),this._addClass(this.menuWrap,"ui-selectmenu-menu","ui-front"),this.menuWrap.appendTo(this._appendTo()),this.menuInstance=this.menu.menu({classes:{"ui-menu":"ui-corner-bottom"},role:"listbox",select:function(t,i){t.preventDefault(),e._setSelection(),e._select(i.item.data("ui-selectmenu-item"),t)},focus:function(t,i){var s=i.item.data("ui-selectmenu-item");null!=e.focusIndex&&s.index!==e.focusIndex&&(e._trigger("focus",t,{item:s}),e.isOpen||e._select(s,t)),e.focusIndex=s.index,e.button.attr("aria-activedescendant",e.menuItems.eq(s.index).attr("id"))}}).menu("instance"),this.menuInstance._off(this.menu,"mouseleave"),this.menuInstance._closeOnDocumentClick=function(){return!1},this.menuInstance._isDivider=function(){return!1}},refresh:function(){this._refreshMenu(),this.buttonItem.replaceWith(this.buttonItem=this._renderButtonItem(this._getSelectedItem().data("ui-selectmenu-item")||{})),null===this.options.width&&this._resizeButton()},_refreshMenu:function(){var t,e=this.element.find("option");this.menu.empty(),this._parseOptions(e),this._renderMenu(this.menu,this.items),this.menuInstance.refresh(),this.menuItems=this.menu.find("li").not(".ui-selectmenu-optgroup").find(".ui-menu-item-wrapper"),this._rendered=!0,e.length&&(t=this._getSelectedItem(),this.menuInstance.focus(null,t),this._setAria(t.data("ui-selectmenu-item")),this._setOption("disabled",this.element.prop("disabled")))},open:function(t){this.options.disabled||(this._rendered?(this._removeClass(this.menu.find(".ui-state-active"),null,"ui-state-active"),this.menuInstance.focus(null,this._getSelectedItem())):this._refreshMenu(),this.menuItems.length&&(this.isOpen=!0,this._toggleAttr(),this._resizeMenu(),this._position(),this._on(this.document,this._documentClick),this._trigger("open",t)))},_position:function(){this.menuWrap.position(t.extend({of:this.button},this.options.position))},close:function(t){this.isOpen&&(this.isOpen=!1,this._toggleAttr(),this.range=null,this._off(this.document),this._trigger("close",t))},widget:function(){return this.button},menuWidget:function(){return this.menu},_renderButtonItem:function(e){var i=t("<span>");return this._setText(i,e.label),this._addClass(i,"ui-selectmenu-text"),i},_renderMenu:function(e,i){var s=this,n="";t.each(i,function(i,o){var a;o.optgroup!==n&&(a=t("<li>",{text:o.optgroup}),s._addClass(a,"ui-selectmenu-optgroup","ui-menu-divider"+(o.element.parent("optgroup").prop("disabled")?" ui-state-disabled":"")),a.appendTo(e),n=o.optgroup),s._renderItemData(e,o)})},_renderItemData:function(t,e){return this._renderItem(t,e).data("ui-selectmenu-item",e)},_renderItem:function(e,i){var s=t("<li>"),n=t("<div>",{title:i.element.attr("title")});return i.disabled&&this._addClass(s,null,"ui-state-disabled"),this._setText(n,i.label),s.append(n).appendTo(e)},_setText:function(t,e){e?t.text(e):t.html("&#160;")},_move:function(t,e){var i,s,n=".ui-menu-item";this.isOpen?i=this.menuItems.eq(this.focusIndex).parent("li"):(i=this.menuItems.eq(this.element[0].selectedIndex).parent("li"),n+=":not(.ui-state-disabled)"),s="first"===t||"last"===t?i["first"===t?"prevAll":"nextAll"](n).eq(-1):i[t+"All"](n).eq(0),s.length&&this.menuInstance.focus(e,s)},_getSelectedItem:function(){return this.menuItems.eq(this.element[0].selectedIndex).parent("li")},_toggle:function(t){this[this.isOpen?"close":"open"](t)},_setSelection:function(){var t;this.range&&(window.getSelection?(t=window.getSelection(),t.removeAllRanges(),t.addRange(this.range)):this.range.select(),this.button.focus())},_documentClick:{mousedown:function(e){this.isOpen&&(t(e.target).closest(".ui-selectmenu-menu, #"+t.ui.escapeSelector(this.ids.button)).length||this.close(e))}},_buttonEvents:{mousedown:function(){var t;window.getSelection?(t=window.getSelection(),t.rangeCount&&(this.range=t.getRangeAt(0))):this.range=document.selection.createRange()},click:function(t){this._setSelection(),this._toggle(t)},keydown:function(e){var i=!0;switch(e.keyCode){case t.ui.keyCode.TAB:case t.ui.keyCode.ESCAPE:this.close(e),i=!1;break;case t.ui.keyCode.ENTER:this.isOpen&&this._selectFocusedItem(e);break;case t.ui.keyCode.UP:e.altKey?this._toggle(e):this._move("prev",e);break;case t.ui.keyCode.DOWN:e.altKey?this._toggle(e):this._move("next",e);break;case t.ui.keyCode.SPACE:this.isOpen?this._selectFocusedItem(e):this._toggle(e);break;case t.ui.keyCode.LEFT:this._move("prev",e);break;case t.ui.keyCode.RIGHT:this._move("next",e);break;case t.ui.keyCode.HOME:case t.ui.keyCode.PAGE_UP:this._move("first",e);break;case t.ui.keyCode.END:case t.ui.keyCode.PAGE_DOWN:this._move("last",e);break;default:this.menu.trigger(e),i=!1}i&&e.preventDefault()}},_selectFocusedItem:function(t){var e=this.menuItems.eq(this.focusIndex).parent("li");e.hasClass("ui-state-disabled")||this._select(e.data("ui-selectmenu-item"),t)},_select:function(t,e){var i=this.element[0].selectedIndex;this.element[0].selectedIndex=t.index,this.buttonItem.replaceWith(this.buttonItem=this._renderButtonItem(t)),this._setAria(t),this._trigger("select",e,{item:t}),t.index!==i&&this._trigger("change",e,{item:t}),this.close(e)},_setAria:function(t){var e=this.menuItems.eq(t.index).attr("id");this.button.attr({"aria-labelledby":e,"aria-activedescendant":e}),this.menu.attr("aria-activedescendant",e)},_setOption:function(t,e){if("icons"===t){var i=this.button.find("span.ui-icon");this._removeClass(i,null,this.options.icons.button)._addClass(i,null,e.button)}this._super(t,e),"appendTo"===t&&this.menuWrap.appendTo(this._appendTo()),"width"===t&&this._resizeButton()},_setOptionDisabled:function(t){this._super(t),this.menuInstance.option("disabled",t),this.button.attr("aria-disabled",t),this._toggleClass(this.button,null,"ui-state-disabled",t),this.element.prop("disabled",t),t?(this.button.attr("tabindex",-1),this.close()):this.button.attr("tabindex",0)},_appendTo:function(){var e=this.options.appendTo;return e&&(e=e.jquery||e.nodeType?t(e):this.document.find(e).eq(0)),e&&e[0]||(e=this.element.closest(".ui-front, dialog")),e.length||(e=this.document[0].body),e},_toggleAttr:function(){this.button.attr("aria-expanded",this.isOpen),this._removeClass(this.button,"ui-selectmenu-button-"+(this.isOpen?"closed":"open"))._addClass(this.button,"ui-selectmenu-button-"+(this.isOpen?"open":"closed"))._toggleClass(this.menuWrap,"ui-selectmenu-open",null,this.isOpen),this.menu.attr("aria-hidden",!this.isOpen)},_resizeButton:function(){var t=this.options.width;return t===!1?(this.button.css("width",""),void 0):(null===t&&(t=this.element.show().outerWidth(),this.element.hide()),this.button.outerWidth(t),void 0)},_resizeMenu:function(){this.menu.outerWidth(Math.max(this.button.outerWidth(),this.menu.width("").outerWidth()+1))},_getCreateOptions:function(){var t=this._super();return t.disabled=this.element.prop("disabled"),t},_parseOptions:function(e){var i=this,s=[];e.each(function(e,n){s.push(i._parseOption(t(n),e))}),this.items=s},_parseOption:function(t,e){var i=t.parent("optgroup");return{element:t,index:e,value:t.val(),label:t.text(),optgroup:i.attr("label")||"",disabled:i.prop("disabled")||t.prop("disabled")}},_destroy:function(){this._unbindFormResetHandler(),this.menuWrap.remove(),this.button.remove(),this.element.show(),this.element.removeUniqueId(),this.labels.attr("for",this.ids.element)}}]),t.widget("ui.slider",t.ui.mouse,{version:"1.12.1",widgetEventPrefix:"slide",options:{animate:!1,classes:{"ui-slider":"ui-corner-all","ui-slider-handle":"ui-corner-all","ui-slider-range":"ui-corner-all ui-widget-header"},distance:0,max:100,min:0,orientation:"horizontal",range:!1,step:1,value:0,values:null,change:null,slide:null,start:null,stop:null},numPages:5,_create:function(){this._keySliding=!1,this._mouseSliding=!1,this._animateOff=!0,this._handleIndex=null,this._detectOrientation(),this._mouseInit(),this._calculateNewMax(),this._addClass("ui-slider ui-slider-"+this.orientation,"ui-widget ui-widget-content"),this._refresh(),this._animateOff=!1},_refresh:function(){this._createRange(),this._createHandles(),this._setupEvents(),this._refreshValue()},_createHandles:function(){var e,i,s=this.options,n=this.element.find(".ui-slider-handle"),o="<span tabindex='0'></span>",a=[];for(i=s.values&&s.values.length||1,n.length>i&&(n.slice(i).remove(),n=n.slice(0,i)),e=n.length;i>e;e++)a.push(o);this.handles=n.add(t(a.join("")).appendTo(this.element)),this._addClass(this.handles,"ui-slider-handle","ui-state-default"),this.handle=this.handles.eq(0),this.handles.each(function(e){t(this).data("ui-slider-handle-index",e).attr("tabIndex",0)})},_createRange:function(){var e=this.options;e.range?(e.range===!0&&(e.values?e.values.length&&2!==e.values.length?e.values=[e.values[0],e.values[0]]:t.isArray(e.values)&&(e.values=e.values.slice(0)):e.values=[this._valueMin(),this._valueMin()]),this.range&&this.range.length?(this._removeClass(this.range,"ui-slider-range-min ui-slider-range-max"),this.range.css({left:"",bottom:""})):(this.range=t("<div>").appendTo(this.element),this._addClass(this.range,"ui-slider-range")),("min"===e.range||"max"===e.range)&&this._addClass(this.range,"ui-slider-range-"+e.range)):(this.range&&this.range.remove(),this.range=null)
},_setupEvents:function(){this._off(this.handles),this._on(this.handles,this._handleEvents),this._hoverable(this.handles),this._focusable(this.handles)},_destroy:function(){this.handles.remove(),this.range&&this.range.remove(),this._mouseDestroy()},_mouseCapture:function(e){var i,s,n,o,a,r,h,l,c=this,u=this.options;return u.disabled?!1:(this.elementSize={width:this.element.outerWidth(),height:this.element.outerHeight()},this.elementOffset=this.element.offset(),i={x:e.pageX,y:e.pageY},s=this._normValueFromMouse(i),n=this._valueMax()-this._valueMin()+1,this.handles.each(function(e){var i=Math.abs(s-c.values(e));(n>i||n===i&&(e===c._lastChangedValue||c.values(e)===u.min))&&(n=i,o=t(this),a=e)}),r=this._start(e,a),r===!1?!1:(this._mouseSliding=!0,this._handleIndex=a,this._addClass(o,null,"ui-state-active"),o.trigger("focus"),h=o.offset(),l=!t(e.target).parents().addBack().is(".ui-slider-handle"),this._clickOffset=l?{left:0,top:0}:{left:e.pageX-h.left-o.width()/2,top:e.pageY-h.top-o.height()/2-(parseInt(o.css("borderTopWidth"),10)||0)-(parseInt(o.css("borderBottomWidth"),10)||0)+(parseInt(o.css("marginTop"),10)||0)},this.handles.hasClass("ui-state-hover")||this._slide(e,a,s),this._animateOff=!0,!0))},_mouseStart:function(){return!0},_mouseDrag:function(t){var e={x:t.pageX,y:t.pageY},i=this._normValueFromMouse(e);return this._slide(t,this._handleIndex,i),!1},_mouseStop:function(t){return this._removeClass(this.handles,null,"ui-state-active"),this._mouseSliding=!1,this._stop(t,this._handleIndex),this._change(t,this._handleIndex),this._handleIndex=null,this._clickOffset=null,this._animateOff=!1,!1},_detectOrientation:function(){this.orientation="vertical"===this.options.orientation?"vertical":"horizontal"},_normValueFromMouse:function(t){var e,i,s,n,o;return"horizontal"===this.orientation?(e=this.elementSize.width,i=t.x-this.elementOffset.left-(this._clickOffset?this._clickOffset.left:0)):(e=this.elementSize.height,i=t.y-this.elementOffset.top-(this._clickOffset?this._clickOffset.top:0)),s=i/e,s>1&&(s=1),0>s&&(s=0),"vertical"===this.orientation&&(s=1-s),n=this._valueMax()-this._valueMin(),o=this._valueMin()+s*n,this._trimAlignValue(o)},_uiHash:function(t,e,i){var s={handle:this.handles[t],handleIndex:t,value:void 0!==e?e:this.value()};return this._hasMultipleValues()&&(s.value=void 0!==e?e:this.values(t),s.values=i||this.values()),s},_hasMultipleValues:function(){return this.options.values&&this.options.values.length},_start:function(t,e){return this._trigger("start",t,this._uiHash(e))},_slide:function(t,e,i){var s,n,o=this.value(),a=this.values();this._hasMultipleValues()&&(n=this.values(e?0:1),o=this.values(e),2===this.options.values.length&&this.options.range===!0&&(i=0===e?Math.min(n,i):Math.max(n,i)),a[e]=i),i!==o&&(s=this._trigger("slide",t,this._uiHash(e,i,a)),s!==!1&&(this._hasMultipleValues()?this.values(e,i):this.value(i)))},_stop:function(t,e){this._trigger("stop",t,this._uiHash(e))},_change:function(t,e){this._keySliding||this._mouseSliding||(this._lastChangedValue=e,this._trigger("change",t,this._uiHash(e)))},value:function(t){return arguments.length?(this.options.value=this._trimAlignValue(t),this._refreshValue(),this._change(null,0),void 0):this._value()},values:function(e,i){var s,n,o;if(arguments.length>1)return this.options.values[e]=this._trimAlignValue(i),this._refreshValue(),this._change(null,e),void 0;if(!arguments.length)return this._values();if(!t.isArray(arguments[0]))return this._hasMultipleValues()?this._values(e):this.value();for(s=this.options.values,n=arguments[0],o=0;s.length>o;o+=1)s[o]=this._trimAlignValue(n[o]),this._change(null,o);this._refreshValue()},_setOption:function(e,i){var s,n=0;switch("range"===e&&this.options.range===!0&&("min"===i?(this.options.value=this._values(0),this.options.values=null):"max"===i&&(this.options.value=this._values(this.options.values.length-1),this.options.values=null)),t.isArray(this.options.values)&&(n=this.options.values.length),this._super(e,i),e){case"orientation":this._detectOrientation(),this._removeClass("ui-slider-horizontal ui-slider-vertical")._addClass("ui-slider-"+this.orientation),this._refreshValue(),this.options.range&&this._refreshRange(i),this.handles.css("horizontal"===i?"bottom":"left","");break;case"value":this._animateOff=!0,this._refreshValue(),this._change(null,0),this._animateOff=!1;break;case"values":for(this._animateOff=!0,this._refreshValue(),s=n-1;s>=0;s--)this._change(null,s);this._animateOff=!1;break;case"step":case"min":case"max":this._animateOff=!0,this._calculateNewMax(),this._refreshValue(),this._animateOff=!1;break;case"range":this._animateOff=!0,this._refresh(),this._animateOff=!1}},_setOptionDisabled:function(t){this._super(t),this._toggleClass(null,"ui-state-disabled",!!t)},_value:function(){var t=this.options.value;return t=this._trimAlignValue(t)},_values:function(t){var e,i,s;if(arguments.length)return e=this.options.values[t],e=this._trimAlignValue(e);if(this._hasMultipleValues()){for(i=this.options.values.slice(),s=0;i.length>s;s+=1)i[s]=this._trimAlignValue(i[s]);return i}return[]},_trimAlignValue:function(t){if(this._valueMin()>=t)return this._valueMin();if(t>=this._valueMax())return this._valueMax();var e=this.options.step>0?this.options.step:1,i=(t-this._valueMin())%e,s=t-i;return 2*Math.abs(i)>=e&&(s+=i>0?e:-e),parseFloat(s.toFixed(5))},_calculateNewMax:function(){var t=this.options.max,e=this._valueMin(),i=this.options.step,s=Math.round((t-e)/i)*i;t=s+e,t>this.options.max&&(t-=i),this.max=parseFloat(t.toFixed(this._precision()))},_precision:function(){var t=this._precisionOf(this.options.step);return null!==this.options.min&&(t=Math.max(t,this._precisionOf(this.options.min))),t},_precisionOf:function(t){var e=""+t,i=e.indexOf(".");return-1===i?0:e.length-i-1},_valueMin:function(){return this.options.min},_valueMax:function(){return this.max},_refreshRange:function(t){"vertical"===t&&this.range.css({width:"",left:""}),"horizontal"===t&&this.range.css({height:"",bottom:""})},_refreshValue:function(){var e,i,s,n,o,a=this.options.range,r=this.options,h=this,l=this._animateOff?!1:r.animate,c={};this._hasMultipleValues()?this.handles.each(function(s){i=100*((h.values(s)-h._valueMin())/(h._valueMax()-h._valueMin())),c["horizontal"===h.orientation?"left":"bottom"]=i+"%",t(this).stop(1,1)[l?"animate":"css"](c,r.animate),h.options.range===!0&&("horizontal"===h.orientation?(0===s&&h.range.stop(1,1)[l?"animate":"css"]({left:i+"%"},r.animate),1===s&&h.range[l?"animate":"css"]({width:i-e+"%"},{queue:!1,duration:r.animate})):(0===s&&h.range.stop(1,1)[l?"animate":"css"]({bottom:i+"%"},r.animate),1===s&&h.range[l?"animate":"css"]({height:i-e+"%"},{queue:!1,duration:r.animate}))),e=i}):(s=this.value(),n=this._valueMin(),o=this._valueMax(),i=o!==n?100*((s-n)/(o-n)):0,c["horizontal"===this.orientation?"left":"bottom"]=i+"%",this.handle.stop(1,1)[l?"animate":"css"](c,r.animate),"min"===a&&"horizontal"===this.orientation&&this.range.stop(1,1)[l?"animate":"css"]({width:i+"%"},r.animate),"max"===a&&"horizontal"===this.orientation&&this.range.stop(1,1)[l?"animate":"css"]({width:100-i+"%"},r.animate),"min"===a&&"vertical"===this.orientation&&this.range.stop(1,1)[l?"animate":"css"]({height:i+"%"},r.animate),"max"===a&&"vertical"===this.orientation&&this.range.stop(1,1)[l?"animate":"css"]({height:100-i+"%"},r.animate))},_handleEvents:{keydown:function(e){var i,s,n,o,a=t(e.target).data("ui-slider-handle-index");switch(e.keyCode){case t.ui.keyCode.HOME:case t.ui.keyCode.END:case t.ui.keyCode.PAGE_UP:case t.ui.keyCode.PAGE_DOWN:case t.ui.keyCode.UP:case t.ui.keyCode.RIGHT:case t.ui.keyCode.DOWN:case t.ui.keyCode.LEFT:if(e.preventDefault(),!this._keySliding&&(this._keySliding=!0,this._addClass(t(e.target),null,"ui-state-active"),i=this._start(e,a),i===!1))return}switch(o=this.options.step,s=n=this._hasMultipleValues()?this.values(a):this.value(),e.keyCode){case t.ui.keyCode.HOME:n=this._valueMin();break;case t.ui.keyCode.END:n=this._valueMax();break;case t.ui.keyCode.PAGE_UP:n=this._trimAlignValue(s+(this._valueMax()-this._valueMin())/this.numPages);break;case t.ui.keyCode.PAGE_DOWN:n=this._trimAlignValue(s-(this._valueMax()-this._valueMin())/this.numPages);break;case t.ui.keyCode.UP:case t.ui.keyCode.RIGHT:if(s===this._valueMax())return;n=this._trimAlignValue(s+o);break;case t.ui.keyCode.DOWN:case t.ui.keyCode.LEFT:if(s===this._valueMin())return;n=this._trimAlignValue(s-o)}this._slide(e,a,n)},keyup:function(e){var i=t(e.target).data("ui-slider-handle-index");this._keySliding&&(this._keySliding=!1,this._stop(e,i),this._change(e,i),this._removeClass(t(e.target),null,"ui-state-active"))}}}),t.widget("ui.spinner",{version:"1.12.1",defaultElement:"<input>",widgetEventPrefix:"spin",options:{classes:{"ui-spinner":"ui-corner-all","ui-spinner-down":"ui-corner-br","ui-spinner-up":"ui-corner-tr"},culture:null,icons:{down:"ui-icon-triangle-1-s",up:"ui-icon-triangle-1-n"},incremental:!0,max:null,min:null,numberFormat:null,page:10,step:1,change:null,spin:null,start:null,stop:null},_create:function(){this._setOption("max",this.options.max),this._setOption("min",this.options.min),this._setOption("step",this.options.step),""!==this.value()&&this._value(this.element.val(),!0),this._draw(),this._on(this._events),this._refresh(),this._on(this.window,{beforeunload:function(){this.element.removeAttr("autocomplete")}})},_getCreateOptions:function(){var e=this._super(),i=this.element;return t.each(["min","max","step"],function(t,s){var n=i.attr(s);null!=n&&n.length&&(e[s]=n)}),e},_events:{keydown:function(t){this._start(t)&&this._keydown(t)&&t.preventDefault()},keyup:"_stop",focus:function(){this.previous=this.element.val()},blur:function(t){return this.cancelBlur?(delete this.cancelBlur,void 0):(this._stop(),this._refresh(),this.previous!==this.element.val()&&this._trigger("change",t),void 0)},mousewheel:function(t,e){if(e){if(!this.spinning&&!this._start(t))return!1;this._spin((e>0?1:-1)*this.options.step,t),clearTimeout(this.mousewheelTimer),this.mousewheelTimer=this._delay(function(){this.spinning&&this._stop(t)},100),t.preventDefault()}},"mousedown .ui-spinner-button":function(e){function i(){var e=this.element[0]===t.ui.safeActiveElement(this.document[0]);e||(this.element.trigger("focus"),this.previous=s,this._delay(function(){this.previous=s}))}var s;s=this.element[0]===t.ui.safeActiveElement(this.document[0])?this.previous:this.element.val(),e.preventDefault(),i.call(this),this.cancelBlur=!0,this._delay(function(){delete this.cancelBlur,i.call(this)}),this._start(e)!==!1&&this._repeat(null,t(e.currentTarget).hasClass("ui-spinner-up")?1:-1,e)},"mouseup .ui-spinner-button":"_stop","mouseenter .ui-spinner-button":function(e){return t(e.currentTarget).hasClass("ui-state-active")?this._start(e)===!1?!1:(this._repeat(null,t(e.currentTarget).hasClass("ui-spinner-up")?1:-1,e),void 0):void 0},"mouseleave .ui-spinner-button":"_stop"},_enhance:function(){this.uiSpinner=this.element.attr("autocomplete","off").wrap("<span>").parent().append("<a></a><a></a>")},_draw:function(){this._enhance(),this._addClass(this.uiSpinner,"ui-spinner","ui-widget ui-widget-content"),this._addClass("ui-spinner-input"),this.element.attr("role","spinbutton"),this.buttons=this.uiSpinner.children("a").attr("tabIndex",-1).attr("aria-hidden",!0).button({classes:{"ui-button":""}}),this._removeClass(this.buttons,"ui-corner-all"),this._addClass(this.buttons.first(),"ui-spinner-button ui-spinner-up"),this._addClass(this.buttons.last(),"ui-spinner-button ui-spinner-down"),this.buttons.first().button({icon:this.options.icons.up,showLabel:!1}),this.buttons.last().button({icon:this.options.icons.down,showLabel:!1}),this.buttons.height()>Math.ceil(.5*this.uiSpinner.height())&&this.uiSpinner.height()>0&&this.uiSpinner.height(this.uiSpinner.height())},_keydown:function(e){var i=this.options,s=t.ui.keyCode;switch(e.keyCode){case s.UP:return this._repeat(null,1,e),!0;case s.DOWN:return this._repeat(null,-1,e),!0;case s.PAGE_UP:return this._repeat(null,i.page,e),!0;case s.PAGE_DOWN:return this._repeat(null,-i.page,e),!0}return!1},_start:function(t){return this.spinning||this._trigger("start",t)!==!1?(this.counter||(this.counter=1),this.spinning=!0,!0):!1},_repeat:function(t,e,i){t=t||500,clearTimeout(this.timer),this.timer=this._delay(function(){this._repeat(40,e,i)},t),this._spin(e*this.options.step,i)},_spin:function(t,e){var i=this.value()||0;this.counter||(this.counter=1),i=this._adjustValue(i+t*this._increment(this.counter)),this.spinning&&this._trigger("spin",e,{value:i})===!1||(this._value(i),this.counter++)},_increment:function(e){var i=this.options.incremental;return i?t.isFunction(i)?i(e):Math.floor(e*e*e/5e4-e*e/500+17*e/200+1):1},_precision:function(){var t=this._precisionOf(this.options.step);return null!==this.options.min&&(t=Math.max(t,this._precisionOf(this.options.min))),t},_precisionOf:function(t){var e=""+t,i=e.indexOf(".");return-1===i?0:e.length-i-1},_adjustValue:function(t){var e,i,s=this.options;return e=null!==s.min?s.min:0,i=t-e,i=Math.round(i/s.step)*s.step,t=e+i,t=parseFloat(t.toFixed(this._precision())),null!==s.max&&t>s.max?s.max:null!==s.min&&s.min>t?s.min:t},_stop:function(t){this.spinning&&(clearTimeout(this.timer),clearTimeout(this.mousewheelTimer),this.counter=0,this.spinning=!1,this._trigger("stop",t))},_setOption:function(t,e){var i,s,n;return"culture"===t||"numberFormat"===t?(i=this._parse(this.element.val()),this.options[t]=e,this.element.val(this._format(i)),void 0):(("max"===t||"min"===t||"step"===t)&&"string"==typeof e&&(e=this._parse(e)),"icons"===t&&(s=this.buttons.first().find(".ui-icon"),this._removeClass(s,null,this.options.icons.up),this._addClass(s,null,e.up),n=this.buttons.last().find(".ui-icon"),this._removeClass(n,null,this.options.icons.down),this._addClass(n,null,e.down)),this._super(t,e),void 0)},_setOptionDisabled:function(t){this._super(t),this._toggleClass(this.uiSpinner,null,"ui-state-disabled",!!t),this.element.prop("disabled",!!t),this.buttons.button(t?"disable":"enable")},_setOptions:r(function(t){this._super(t)}),_parse:function(t){return"string"==typeof t&&""!==t&&(t=window.Globalize&&this.options.numberFormat?Globalize.parseFloat(t,10,this.options.culture):+t),""===t||isNaN(t)?null:t},_format:function(t){return""===t?"":window.Globalize&&this.options.numberFormat?Globalize.format(t,this.options.numberFormat,this.options.culture):t},_refresh:function(){this.element.attr({"aria-valuemin":this.options.min,"aria-valuemax":this.options.max,"aria-valuenow":this._parse(this.element.val())})},isValid:function(){var t=this.value();return null===t?!1:t===this._adjustValue(t)},_value:function(t,e){var i;""!==t&&(i=this._parse(t),null!==i&&(e||(i=this._adjustValue(i)),t=this._format(i))),this.element.val(t),this._refresh()},_destroy:function(){this.element.prop("disabled",!1).removeAttr("autocomplete role aria-valuemin aria-valuemax aria-valuenow"),this.uiSpinner.replaceWith(this.element)},stepUp:r(function(t){this._stepUp(t)}),_stepUp:function(t){this._start()&&(this._spin((t||1)*this.options.step),this._stop())},stepDown:r(function(t){this._stepDown(t)}),_stepDown:function(t){this._start()&&(this._spin((t||1)*-this.options.step),this._stop())},pageUp:r(function(t){this._stepUp((t||1)*this.options.page)}),pageDown:r(function(t){this._stepDown((t||1)*this.options.page)}),value:function(t){return arguments.length?(r(this._value).call(this,t),void 0):this._parse(this.element.val())},widget:function(){return this.uiSpinner}}),t.uiBackCompat!==!1&&t.widget("ui.spinner",t.ui.spinner,{_enhance:function(){this.uiSpinner=this.element.attr("autocomplete","off").wrap(this._uiSpinnerHtml()).parent().append(this._buttonHtml())},_uiSpinnerHtml:function(){return"<span>"},_buttonHtml:function(){return"<a></a><a></a>"}}),t.ui.spinner,t.widget("ui.tabs",{version:"1.12.1",delay:300,options:{active:null,classes:{"ui-tabs":"ui-corner-all","ui-tabs-nav":"ui-corner-all","ui-tabs-panel":"ui-corner-bottom","ui-tabs-tab":"ui-corner-top"},collapsible:!1,event:"click",heightStyle:"content",hide:null,show:null,activate:null,beforeActivate:null,beforeLoad:null,load:null},_isLocal:function(){var t=/#.*$/;return function(e){var i,s;i=e.href.replace(t,""),s=location.href.replace(t,"");try{i=decodeURIComponent(i)}catch(n){}try{s=decodeURIComponent(s)}catch(n){}return e.hash.length>1&&i===s}}(),_create:function(){var e=this,i=this.options;this.running=!1,this._addClass("ui-tabs","ui-widget ui-widget-content"),this._toggleClass("ui-tabs-collapsible",null,i.collapsible),this._processTabs(),i.active=this._initialActive(),t.isArray(i.disabled)&&(i.disabled=t.unique(i.disabled.concat(t.map(this.tabs.filter(".ui-state-disabled"),function(t){return e.tabs.index(t)}))).sort()),this.active=this.options.active!==!1&&this.anchors.length?this._findActive(i.active):t(),this._refresh(),this.active.length&&this.load(i.active)},_initialActive:function(){var e=this.options.active,i=this.options.collapsible,s=location.hash.substring(1);return null===e&&(s&&this.tabs.each(function(i,n){return t(n).attr("aria-controls")===s?(e=i,!1):void 0}),null===e&&(e=this.tabs.index(this.tabs.filter(".ui-tabs-active"))),(null===e||-1===e)&&(e=this.tabs.length?0:!1)),e!==!1&&(e=this.tabs.index(this.tabs.eq(e)),-1===e&&(e=i?!1:0)),!i&&e===!1&&this.anchors.length&&(e=0),e},_getCreateEventData:function(){return{tab:this.active,panel:this.active.length?this._getPanelForTab(this.active):t()}},_tabKeydown:function(e){var i=t(t.ui.safeActiveElement(this.document[0])).closest("li"),s=this.tabs.index(i),n=!0;if(!this._handlePageNav(e)){switch(e.keyCode){case t.ui.keyCode.RIGHT:case t.ui.keyCode.DOWN:s++;break;case t.ui.keyCode.UP:case t.ui.keyCode.LEFT:n=!1,s--;break;case t.ui.keyCode.END:s=this.anchors.length-1;break;case t.ui.keyCode.HOME:s=0;break;case t.ui.keyCode.SPACE:return e.preventDefault(),clearTimeout(this.activating),this._activate(s),void 0;case t.ui.keyCode.ENTER:return e.preventDefault(),clearTimeout(this.activating),this._activate(s===this.options.active?!1:s),void 0;default:return}e.preventDefault(),clearTimeout(this.activating),s=this._focusNextTab(s,n),e.ctrlKey||e.metaKey||(i.attr("aria-selected","false"),this.tabs.eq(s).attr("aria-selected","true"),this.activating=this._delay(function(){this.option("active",s)},this.delay))}},_panelKeydown:function(e){this._handlePageNav(e)||e.ctrlKey&&e.keyCode===t.ui.keyCode.UP&&(e.preventDefault(),this.active.trigger("focus"))},_handlePageNav:function(e){return e.altKey&&e.keyCode===t.ui.keyCode.PAGE_UP?(this._activate(this._focusNextTab(this.options.active-1,!1)),!0):e.altKey&&e.keyCode===t.ui.keyCode.PAGE_DOWN?(this._activate(this._focusNextTab(this.options.active+1,!0)),!0):void 0},_findNextTab:function(e,i){function s(){return e>n&&(e=0),0>e&&(e=n),e}for(var n=this.tabs.length-1;-1!==t.inArray(s(),this.options.disabled);)e=i?e+1:e-1;return e},_focusNextTab:function(t,e){return t=this._findNextTab(t,e),this.tabs.eq(t).trigger("focus"),t},_setOption:function(t,e){return"active"===t?(this._activate(e),void 0):(this._super(t,e),"collapsible"===t&&(this._toggleClass("ui-tabs-collapsible",null,e),e||this.options.active!==!1||this._activate(0)),"event"===t&&this._setupEvents(e),"heightStyle"===t&&this._setupHeightStyle(e),void 0)},_sanitizeSelector:function(t){return t?t.replace(/[!"$%&'()*+,.\/:;<=>?@\[\]\^`{|}~]/g,"\\$&"):""},refresh:function(){var e=this.options,i=this.tablist.children(":has(a[href])");e.disabled=t.map(i.filter(".ui-state-disabled"),function(t){return i.index(t)}),this._processTabs(),e.active!==!1&&this.anchors.length?this.active.length&&!t.contains(this.tablist[0],this.active[0])?this.tabs.length===e.disabled.length?(e.active=!1,this.active=t()):this._activate(this._findNextTab(Math.max(0,e.active-1),!1)):e.active=this.tabs.index(this.active):(e.active=!1,this.active=t()),this._refresh()},_refresh:function(){this._setOptionDisabled(this.options.disabled),this._setupEvents(this.options.event),this._setupHeightStyle(this.options.heightStyle),this.tabs.not(this.active).attr({"aria-selected":"false","aria-expanded":"false",tabIndex:-1}),this.panels.not(this._getPanelForTab(this.active)).hide().attr({"aria-hidden":"true"}),this.active.length?(this.active.attr({"aria-selected":"true","aria-expanded":"true",tabIndex:0}),this._addClass(this.active,"ui-tabs-active","ui-state-active"),this._getPanelForTab(this.active).show().attr({"aria-hidden":"false"})):this.tabs.eq(0).attr("tabIndex",0)},_processTabs:function(){var e=this,i=this.tabs,s=this.anchors,n=this.panels;this.tablist=this._getList().attr("role","tablist"),this._addClass(this.tablist,"ui-tabs-nav","ui-helper-reset ui-helper-clearfix ui-widget-header"),this.tablist.on("mousedown"+this.eventNamespace,"> li",function(e){t(this).is(".ui-state-disabled")&&e.preventDefault()}).on("focus"+this.eventNamespace,".ui-tabs-anchor",function(){t(this).closest("li").is(".ui-state-disabled")&&this.blur()}),this.tabs=this.tablist.find("> li:has(a[href])").attr({role:"tab",tabIndex:-1}),this._addClass(this.tabs,"ui-tabs-tab","ui-state-default"),this.anchors=this.tabs.map(function(){return t("a",this)[0]}).attr({role:"presentation",tabIndex:-1}),this._addClass(this.anchors,"ui-tabs-anchor"),this.panels=t(),this.anchors.each(function(i,s){var n,o,a,r=t(s).uniqueId().attr("id"),h=t(s).closest("li"),l=h.attr("aria-controls");e._isLocal(s)?(n=s.hash,a=n.substring(1),o=e.element.find(e._sanitizeSelector(n))):(a=h.attr("aria-controls")||t({}).uniqueId()[0].id,n="#"+a,o=e.element.find(n),o.length||(o=e._createPanel(a),o.insertAfter(e.panels[i-1]||e.tablist)),o.attr("aria-live","polite")),o.length&&(e.panels=e.panels.add(o)),l&&h.data("ui-tabs-aria-controls",l),h.attr({"aria-controls":a,"aria-labelledby":r}),o.attr("aria-labelledby",r)}),this.panels.attr("role","tabpanel"),this._addClass(this.panels,"ui-tabs-panel","ui-widget-content"),i&&(this._off(i.not(this.tabs)),this._off(s.not(this.anchors)),this._off(n.not(this.panels)))},_getList:function(){return this.tablist||this.element.find("ol, ul").eq(0)},_createPanel:function(e){return t("<div>").attr("id",e).data("ui-tabs-destroy",!0)},_setOptionDisabled:function(e){var i,s,n;for(t.isArray(e)&&(e.length?e.length===this.anchors.length&&(e=!0):e=!1),n=0;s=this.tabs[n];n++)i=t(s),e===!0||-1!==t.inArray(n,e)?(i.attr("aria-disabled","true"),this._addClass(i,null,"ui-state-disabled")):(i.removeAttr("aria-disabled"),this._removeClass(i,null,"ui-state-disabled"));this.options.disabled=e,this._toggleClass(this.widget(),this.widgetFullName+"-disabled",null,e===!0)},_setupEvents:function(e){var i={};e&&t.each(e.split(" "),function(t,e){i[e]="_eventHandler"}),this._off(this.anchors.add(this.tabs).add(this.panels)),this._on(!0,this.anchors,{click:function(t){t.preventDefault()}}),this._on(this.anchors,i),this._on(this.tabs,{keydown:"_tabKeydown"}),this._on(this.panels,{keydown:"_panelKeydown"}),this._focusable(this.tabs),this._hoverable(this.tabs)},_setupHeightStyle:function(e){var i,s=this.element.parent();"fill"===e?(i=s.height(),i-=this.element.outerHeight()-this.element.height(),this.element.siblings(":visible").each(function(){var e=t(this),s=e.css("position");"absolute"!==s&&"fixed"!==s&&(i-=e.outerHeight(!0))}),this.element.children().not(this.panels).each(function(){i-=t(this).outerHeight(!0)}),this.panels.each(function(){t(this).height(Math.max(0,i-t(this).innerHeight()+t(this).height()))}).css("overflow","auto")):"auto"===e&&(i=0,this.panels.each(function(){i=Math.max(i,t(this).height("").height())}).height(i))},_eventHandler:function(e){var i=this.options,s=this.active,n=t(e.currentTarget),o=n.closest("li"),a=o[0]===s[0],r=a&&i.collapsible,h=r?t():this._getPanelForTab(o),l=s.length?this._getPanelForTab(s):t(),c={oldTab:s,oldPanel:l,newTab:r?t():o,newPanel:h};e.preventDefault(),o.hasClass("ui-state-disabled")||o.hasClass("ui-tabs-loading")||this.running||a&&!i.collapsible||this._trigger("beforeActivate",e,c)===!1||(i.active=r?!1:this.tabs.index(o),this.active=a?t():o,this.xhr&&this.xhr.abort(),l.length||h.length||t.error("jQuery UI Tabs: Mismatching fragment identifier."),h.length&&this.load(this.tabs.index(o),e),this._toggle(e,c))},_toggle:function(e,i){function s(){o.running=!1,o._trigger("activate",e,i)}function n(){o._addClass(i.newTab.closest("li"),"ui-tabs-active","ui-state-active"),a.length&&o.options.show?o._show(a,o.options.show,s):(a.show(),s())}var o=this,a=i.newPanel,r=i.oldPanel;this.running=!0,r.length&&this.options.hide?this._hide(r,this.options.hide,function(){o._removeClass(i.oldTab.closest("li"),"ui-tabs-active","ui-state-active"),n()}):(this._removeClass(i.oldTab.closest("li"),"ui-tabs-active","ui-state-active"),r.hide(),n()),r.attr("aria-hidden","true"),i.oldTab.attr({"aria-selected":"false","aria-expanded":"false"}),a.length&&r.length?i.oldTab.attr("tabIndex",-1):a.length&&this.tabs.filter(function(){return 0===t(this).attr("tabIndex")}).attr("tabIndex",-1),a.attr("aria-hidden","false"),i.newTab.attr({"aria-selected":"true","aria-expanded":"true",tabIndex:0})},_activate:function(e){var i,s=this._findActive(e);s[0]!==this.active[0]&&(s.length||(s=this.active),i=s.find(".ui-tabs-anchor")[0],this._eventHandler({target:i,currentTarget:i,preventDefault:t.noop}))},_findActive:function(e){return e===!1?t():this.tabs.eq(e)},_getIndex:function(e){return"string"==typeof e&&(e=this.anchors.index(this.anchors.filter("[href$='"+t.ui.escapeSelector(e)+"']"))),e},_destroy:function(){this.xhr&&this.xhr.abort(),this.tablist.removeAttr("role").off(this.eventNamespace),this.anchors.removeAttr("role tabIndex").removeUniqueId(),this.tabs.add(this.panels).each(function(){t.data(this,"ui-tabs-destroy")?t(this).remove():t(this).removeAttr("role tabIndex aria-live aria-busy aria-selected aria-labelledby aria-hidden aria-expanded")}),this.tabs.each(function(){var e=t(this),i=e.data("ui-tabs-aria-controls");i?e.attr("aria-controls",i).removeData("ui-tabs-aria-controls"):e.removeAttr("aria-controls")}),this.panels.show(),"content"!==this.options.heightStyle&&this.panels.css("height","")},enable:function(e){var i=this.options.disabled;i!==!1&&(void 0===e?i=!1:(e=this._getIndex(e),i=t.isArray(i)?t.map(i,function(t){return t!==e?t:null}):t.map(this.tabs,function(t,i){return i!==e?i:null})),this._setOptionDisabled(i))},disable:function(e){var i=this.options.disabled;if(i!==!0){if(void 0===e)i=!0;else{if(e=this._getIndex(e),-1!==t.inArray(e,i))return;i=t.isArray(i)?t.merge([e],i).sort():[e]}this._setOptionDisabled(i)}},load:function(e,i){e=this._getIndex(e);var s=this,n=this.tabs.eq(e),o=n.find(".ui-tabs-anchor"),a=this._getPanelForTab(n),r={tab:n,panel:a},h=function(t,e){"abort"===e&&s.panels.stop(!1,!0),s._removeClass(n,"ui-tabs-loading"),a.removeAttr("aria-busy"),t===s.xhr&&delete s.xhr};this._isLocal(o[0])||(this.xhr=t.ajax(this._ajaxSettings(o,i,r)),this.xhr&&"canceled"!==this.xhr.statusText&&(this._addClass(n,"ui-tabs-loading"),a.attr("aria-busy","true"),this.xhr.done(function(t,e,n){setTimeout(function(){a.html(t),s._trigger("load",i,r),h(n,e)},1)}).fail(function(t,e){setTimeout(function(){h(t,e)},1)})))},_ajaxSettings:function(e,i,s){var n=this;return{url:e.attr("href").replace(/#.*$/,""),beforeSend:function(e,o){return n._trigger("beforeLoad",i,t.extend({jqXHR:e,ajaxSettings:o},s))}}},_getPanelForTab:function(e){var i=t(e).attr("aria-controls");return this.element.find(this._sanitizeSelector("#"+i))}}),t.uiBackCompat!==!1&&t.widget("ui.tabs",t.ui.tabs,{_processTabs:function(){this._superApply(arguments),this._addClass(this.tabs,"ui-tab")}}),t.ui.tabs,t.widget("ui.tooltip",{version:"1.12.1",options:{classes:{"ui-tooltip":"ui-corner-all ui-widget-shadow"},content:function(){var e=t(this).attr("title")||"";return t("<a>").text(e).html()},hide:!0,items:"[title]:not([disabled])",position:{my:"left top+15",at:"left bottom",collision:"flipfit flip"},show:!0,track:!1,close:null,open:null},_addDescribedBy:function(e,i){var s=(e.attr("aria-describedby")||"").split(/\s+/);s.push(i),e.data("ui-tooltip-id",i).attr("aria-describedby",t.trim(s.join(" ")))},_removeDescribedBy:function(e){var i=e.data("ui-tooltip-id"),s=(e.attr("aria-describedby")||"").split(/\s+/),n=t.inArray(i,s);-1!==n&&s.splice(n,1),e.removeData("ui-tooltip-id"),s=t.trim(s.join(" ")),s?e.attr("aria-describedby",s):e.removeAttr("aria-describedby")},_create:function(){this._on({mouseover:"open",focusin:"open"}),this.tooltips={},this.parents={},this.liveRegion=t("<div>").attr({role:"log","aria-live":"assertive","aria-relevant":"additions"}).appendTo(this.document[0].body),this._addClass(this.liveRegion,null,"ui-helper-hidden-accessible"),this.disabledTitles=t([])},_setOption:function(e,i){var s=this;this._super(e,i),"content"===e&&t.each(this.tooltips,function(t,e){s._updateContent(e.element)})},_setOptionDisabled:function(t){this[t?"_disable":"_enable"]()},_disable:function(){var e=this;t.each(this.tooltips,function(i,s){var n=t.Event("blur");n.target=n.currentTarget=s.element[0],e.close(n,!0)}),this.disabledTitles=this.disabledTitles.add(this.element.find(this.options.items).addBack().filter(function(){var e=t(this);return e.is("[title]")?e.data("ui-tooltip-title",e.attr("title")).removeAttr("title"):void 0}))},_enable:function(){this.disabledTitles.each(function(){var e=t(this);e.data("ui-tooltip-title")&&e.attr("title",e.data("ui-tooltip-title"))}),this.disabledTitles=t([])},open:function(e){var i=this,s=t(e?e.target:this.element).closest(this.options.items);s.length&&!s.data("ui-tooltip-id")&&(s.attr("title")&&s.data("ui-tooltip-title",s.attr("title")),s.data("ui-tooltip-open",!0),e&&"mouseover"===e.type&&s.parents().each(function(){var e,s=t(this);s.data("ui-tooltip-open")&&(e=t.Event("blur"),e.target=e.currentTarget=this,i.close(e,!0)),s.attr("title")&&(s.uniqueId(),i.parents[this.id]={element:this,title:s.attr("title")},s.attr("title",""))}),this._registerCloseHandlers(e,s),this._updateContent(s,e))},_updateContent:function(t,e){var i,s=this.options.content,n=this,o=e?e.type:null;return"string"==typeof s||s.nodeType||s.jquery?this._open(e,t,s):(i=s.call(t[0],function(i){n._delay(function(){t.data("ui-tooltip-open")&&(e&&(e.type=o),this._open(e,t,i))})}),i&&this._open(e,t,i),void 0)},_open:function(e,i,s){function n(t){l.of=t,a.is(":hidden")||a.position(l)}var o,a,r,h,l=t.extend({},this.options.position);if(s){if(o=this._find(i))return o.tooltip.find(".ui-tooltip-content").html(s),void 0;i.is("[title]")&&(e&&"mouseover"===e.type?i.attr("title",""):i.removeAttr("title")),o=this._tooltip(i),a=o.tooltip,this._addDescribedBy(i,a.attr("id")),a.find(".ui-tooltip-content").html(s),this.liveRegion.children().hide(),h=t("<div>").html(a.find(".ui-tooltip-content").html()),h.removeAttr("name").find("[name]").removeAttr("name"),h.removeAttr("id").find("[id]").removeAttr("id"),h.appendTo(this.liveRegion),this.options.track&&e&&/^mouse/.test(e.type)?(this._on(this.document,{mousemove:n}),n(e)):a.position(t.extend({of:i},this.options.position)),a.hide(),this._show(a,this.options.show),this.options.track&&this.options.show&&this.options.show.delay&&(r=this.delayedShow=setInterval(function(){a.is(":visible")&&(n(l.of),clearInterval(r))},t.fx.interval)),this._trigger("open",e,{tooltip:a})}},_registerCloseHandlers:function(e,i){var s={keyup:function(e){if(e.keyCode===t.ui.keyCode.ESCAPE){var s=t.Event(e);s.currentTarget=i[0],this.close(s,!0)}}};i[0]!==this.element[0]&&(s.remove=function(){this._removeTooltip(this._find(i).tooltip)}),e&&"mouseover"!==e.type||(s.mouseleave="close"),e&&"focusin"!==e.type||(s.focusout="close"),this._on(!0,i,s)},close:function(e){var i,s=this,n=t(e?e.currentTarget:this.element),o=this._find(n);return o?(i=o.tooltip,o.closing||(clearInterval(this.delayedShow),n.data("ui-tooltip-title")&&!n.attr("title")&&n.attr("title",n.data("ui-tooltip-title")),this._removeDescribedBy(n),o.hiding=!0,i.stop(!0),this._hide(i,this.options.hide,function(){s._removeTooltip(t(this))}),n.removeData("ui-tooltip-open"),this._off(n,"mouseleave focusout keyup"),n[0]!==this.element[0]&&this._off(n,"remove"),this._off(this.document,"mousemove"),e&&"mouseleave"===e.type&&t.each(this.parents,function(e,i){t(i.element).attr("title",i.title),delete s.parents[e]
}),o.closing=!0,this._trigger("close",e,{tooltip:i}),o.hiding||(o.closing=!1)),void 0):(n.removeData("ui-tooltip-open"),void 0)},_tooltip:function(e){var i=t("<div>").attr("role","tooltip"),s=t("<div>").appendTo(i),n=i.uniqueId().attr("id");return this._addClass(s,"ui-tooltip-content"),this._addClass(i,"ui-tooltip","ui-widget ui-widget-content"),i.appendTo(this._appendTo(e)),this.tooltips[n]={element:e,tooltip:i}},_find:function(t){var e=t.data("ui-tooltip-id");return e?this.tooltips[e]:null},_removeTooltip:function(t){t.remove(),delete this.tooltips[t.attr("id")]},_appendTo:function(t){var e=t.closest(".ui-front, dialog");return e.length||(e=this.document[0].body),e},_destroy:function(){var e=this;t.each(this.tooltips,function(i,s){var n=t.Event("blur"),o=s.element;n.target=n.currentTarget=o[0],e.close(n,!0),t("#"+i).remove(),o.data("ui-tooltip-title")&&(o.attr("title")||o.attr("title",o.data("ui-tooltip-title")),o.removeData("ui-tooltip-title"))}),this.liveRegion.remove()}}),t.uiBackCompat!==!1&&t.widget("ui.tooltip",t.ui.tooltip,{options:{tooltipClass:null},_tooltip:function(){var t=this._superApply(arguments);return this.options.tooltipClass&&t.tooltip.addClass(this.options.tooltipClass),t}}),t.ui.tooltip;var f="ui-effects-",g="ui-effects-style",m="ui-effects-animated",_=t;t.effects={effect:{}},function(t,e){function i(t,e,i){var s=u[e.type]||{};return null==t?i||!e.def?null:e.def:(t=s.floor?~~t:parseFloat(t),isNaN(t)?e.def:s.mod?(t+s.mod)%s.mod:0>t?0:t>s.max?s.max:t)}function s(i){var s=l(),n=s._rgba=[];return i=i.toLowerCase(),f(h,function(t,o){var a,r=o.re.exec(i),h=r&&o.parse(r),l=o.space||"rgba";return h?(a=s[l](h),s[c[l].cache]=a[c[l].cache],n=s._rgba=a._rgba,!1):e}),n.length?("0,0,0,0"===n.join()&&t.extend(n,o.transparent),s):o[i]}function n(t,e,i){return i=(i+1)%1,1>6*i?t+6*(e-t)*i:1>2*i?e:2>3*i?t+6*(e-t)*(2/3-i):t}var o,a="backgroundColor borderBottomColor borderLeftColor borderRightColor borderTopColor color columnRuleColor outlineColor textDecorationColor textEmphasisColor",r=/^([\-+])=\s*(\d+\.?\d*)/,h=[{re:/rgba?\(\s*(\d{1,3})\s*,\s*(\d{1,3})\s*,\s*(\d{1,3})\s*(?:,\s*(\d?(?:\.\d+)?)\s*)?\)/,parse:function(t){return[t[1],t[2],t[3],t[4]]}},{re:/rgba?\(\s*(\d+(?:\.\d+)?)\%\s*,\s*(\d+(?:\.\d+)?)\%\s*,\s*(\d+(?:\.\d+)?)\%\s*(?:,\s*(\d?(?:\.\d+)?)\s*)?\)/,parse:function(t){return[2.55*t[1],2.55*t[2],2.55*t[3],t[4]]}},{re:/#([a-f0-9]{2})([a-f0-9]{2})([a-f0-9]{2})/,parse:function(t){return[parseInt(t[1],16),parseInt(t[2],16),parseInt(t[3],16)]}},{re:/#([a-f0-9])([a-f0-9])([a-f0-9])/,parse:function(t){return[parseInt(t[1]+t[1],16),parseInt(t[2]+t[2],16),parseInt(t[3]+t[3],16)]}},{re:/hsla?\(\s*(\d+(?:\.\d+)?)\s*,\s*(\d+(?:\.\d+)?)\%\s*,\s*(\d+(?:\.\d+)?)\%\s*(?:,\s*(\d?(?:\.\d+)?)\s*)?\)/,space:"hsla",parse:function(t){return[t[1],t[2]/100,t[3]/100,t[4]]}}],l=t.Color=function(e,i,s,n){return new t.Color.fn.parse(e,i,s,n)},c={rgba:{props:{red:{idx:0,type:"byte"},green:{idx:1,type:"byte"},blue:{idx:2,type:"byte"}}},hsla:{props:{hue:{idx:0,type:"degrees"},saturation:{idx:1,type:"percent"},lightness:{idx:2,type:"percent"}}}},u={"byte":{floor:!0,max:255},percent:{max:1},degrees:{mod:360,floor:!0}},d=l.support={},p=t("<p>")[0],f=t.each;p.style.cssText="background-color:rgba(1,1,1,.5)",d.rgba=p.style.backgroundColor.indexOf("rgba")>-1,f(c,function(t,e){e.cache="_"+t,e.props.alpha={idx:3,type:"percent",def:1}}),l.fn=t.extend(l.prototype,{parse:function(n,a,r,h){if(n===e)return this._rgba=[null,null,null,null],this;(n.jquery||n.nodeType)&&(n=t(n).css(a),a=e);var u=this,d=t.type(n),p=this._rgba=[];return a!==e&&(n=[n,a,r,h],d="array"),"string"===d?this.parse(s(n)||o._default):"array"===d?(f(c.rgba.props,function(t,e){p[e.idx]=i(n[e.idx],e)}),this):"object"===d?(n instanceof l?f(c,function(t,e){n[e.cache]&&(u[e.cache]=n[e.cache].slice())}):f(c,function(e,s){var o=s.cache;f(s.props,function(t,e){if(!u[o]&&s.to){if("alpha"===t||null==n[t])return;u[o]=s.to(u._rgba)}u[o][e.idx]=i(n[t],e,!0)}),u[o]&&0>t.inArray(null,u[o].slice(0,3))&&(u[o][3]=1,s.from&&(u._rgba=s.from(u[o])))}),this):e},is:function(t){var i=l(t),s=!0,n=this;return f(c,function(t,o){var a,r=i[o.cache];return r&&(a=n[o.cache]||o.to&&o.to(n._rgba)||[],f(o.props,function(t,i){return null!=r[i.idx]?s=r[i.idx]===a[i.idx]:e})),s}),s},_space:function(){var t=[],e=this;return f(c,function(i,s){e[s.cache]&&t.push(i)}),t.pop()},transition:function(t,e){var s=l(t),n=s._space(),o=c[n],a=0===this.alpha()?l("transparent"):this,r=a[o.cache]||o.to(a._rgba),h=r.slice();return s=s[o.cache],f(o.props,function(t,n){var o=n.idx,a=r[o],l=s[o],c=u[n.type]||{};null!==l&&(null===a?h[o]=l:(c.mod&&(l-a>c.mod/2?a+=c.mod:a-l>c.mod/2&&(a-=c.mod)),h[o]=i((l-a)*e+a,n)))}),this[n](h)},blend:function(e){if(1===this._rgba[3])return this;var i=this._rgba.slice(),s=i.pop(),n=l(e)._rgba;return l(t.map(i,function(t,e){return(1-s)*n[e]+s*t}))},toRgbaString:function(){var e="rgba(",i=t.map(this._rgba,function(t,e){return null==t?e>2?1:0:t});return 1===i[3]&&(i.pop(),e="rgb("),e+i.join()+")"},toHslaString:function(){var e="hsla(",i=t.map(this.hsla(),function(t,e){return null==t&&(t=e>2?1:0),e&&3>e&&(t=Math.round(100*t)+"%"),t});return 1===i[3]&&(i.pop(),e="hsl("),e+i.join()+")"},toHexString:function(e){var i=this._rgba.slice(),s=i.pop();return e&&i.push(~~(255*s)),"#"+t.map(i,function(t){return t=(t||0).toString(16),1===t.length?"0"+t:t}).join("")},toString:function(){return 0===this._rgba[3]?"transparent":this.toRgbaString()}}),l.fn.parse.prototype=l.fn,c.hsla.to=function(t){if(null==t[0]||null==t[1]||null==t[2])return[null,null,null,t[3]];var e,i,s=t[0]/255,n=t[1]/255,o=t[2]/255,a=t[3],r=Math.max(s,n,o),h=Math.min(s,n,o),l=r-h,c=r+h,u=.5*c;return e=h===r?0:s===r?60*(n-o)/l+360:n===r?60*(o-s)/l+120:60*(s-n)/l+240,i=0===l?0:.5>=u?l/c:l/(2-c),[Math.round(e)%360,i,u,null==a?1:a]},c.hsla.from=function(t){if(null==t[0]||null==t[1]||null==t[2])return[null,null,null,t[3]];var e=t[0]/360,i=t[1],s=t[2],o=t[3],a=.5>=s?s*(1+i):s+i-s*i,r=2*s-a;return[Math.round(255*n(r,a,e+1/3)),Math.round(255*n(r,a,e)),Math.round(255*n(r,a,e-1/3)),o]},f(c,function(s,n){var o=n.props,a=n.cache,h=n.to,c=n.from;l.fn[s]=function(s){if(h&&!this[a]&&(this[a]=h(this._rgba)),s===e)return this[a].slice();var n,r=t.type(s),u="array"===r||"object"===r?s:arguments,d=this[a].slice();return f(o,function(t,e){var s=u["object"===r?t:e.idx];null==s&&(s=d[e.idx]),d[e.idx]=i(s,e)}),c?(n=l(c(d)),n[a]=d,n):l(d)},f(o,function(e,i){l.fn[e]||(l.fn[e]=function(n){var o,a=t.type(n),h="alpha"===e?this._hsla?"hsla":"rgba":s,l=this[h](),c=l[i.idx];return"undefined"===a?c:("function"===a&&(n=n.call(this,c),a=t.type(n)),null==n&&i.empty?this:("string"===a&&(o=r.exec(n),o&&(n=c+parseFloat(o[2])*("+"===o[1]?1:-1))),l[i.idx]=n,this[h](l)))})})}),l.hook=function(e){var i=e.split(" ");f(i,function(e,i){t.cssHooks[i]={set:function(e,n){var o,a,r="";if("transparent"!==n&&("string"!==t.type(n)||(o=s(n)))){if(n=l(o||n),!d.rgba&&1!==n._rgba[3]){for(a="backgroundColor"===i?e.parentNode:e;(""===r||"transparent"===r)&&a&&a.style;)try{r=t.css(a,"backgroundColor"),a=a.parentNode}catch(h){}n=n.blend(r&&"transparent"!==r?r:"_default")}n=n.toRgbaString()}try{e.style[i]=n}catch(h){}}},t.fx.step[i]=function(e){e.colorInit||(e.start=l(e.elem,i),e.end=l(e.end),e.colorInit=!0),t.cssHooks[i].set(e.elem,e.start.transition(e.end,e.pos))}})},l.hook(a),t.cssHooks.borderColor={expand:function(t){var e={};return f(["Top","Right","Bottom","Left"],function(i,s){e["border"+s+"Color"]=t}),e}},o=t.Color.names={aqua:"#00ffff",black:"#000000",blue:"#0000ff",fuchsia:"#ff00ff",gray:"#808080",green:"#008000",lime:"#00ff00",maroon:"#800000",navy:"#000080",olive:"#808000",purple:"#800080",red:"#ff0000",silver:"#c0c0c0",teal:"#008080",white:"#ffffff",yellow:"#ffff00",transparent:[null,null,null,0],_default:"#ffffff"}}(_),function(){function e(e){var i,s,n=e.ownerDocument.defaultView?e.ownerDocument.defaultView.getComputedStyle(e,null):e.currentStyle,o={};if(n&&n.length&&n[0]&&n[n[0]])for(s=n.length;s--;)i=n[s],"string"==typeof n[i]&&(o[t.camelCase(i)]=n[i]);else for(i in n)"string"==typeof n[i]&&(o[i]=n[i]);return o}function i(e,i){var s,o,a={};for(s in i)o=i[s],e[s]!==o&&(n[s]||(t.fx.step[s]||!isNaN(parseFloat(o)))&&(a[s]=o));return a}var s=["add","remove","toggle"],n={border:1,borderBottom:1,borderColor:1,borderLeft:1,borderRight:1,borderTop:1,borderWidth:1,margin:1,padding:1};t.each(["borderLeftStyle","borderRightStyle","borderBottomStyle","borderTopStyle"],function(e,i){t.fx.step[i]=function(t){("none"!==t.end&&!t.setAttr||1===t.pos&&!t.setAttr)&&(_.style(t.elem,i,t.end),t.setAttr=!0)}}),t.fn.addBack||(t.fn.addBack=function(t){return this.add(null==t?this.prevObject:this.prevObject.filter(t))}),t.effects.animateClass=function(n,o,a,r){var h=t.speed(o,a,r);return this.queue(function(){var o,a=t(this),r=a.attr("class")||"",l=h.children?a.find("*").addBack():a;l=l.map(function(){var i=t(this);return{el:i,start:e(this)}}),o=function(){t.each(s,function(t,e){n[e]&&a[e+"Class"](n[e])})},o(),l=l.map(function(){return this.end=e(this.el[0]),this.diff=i(this.start,this.end),this}),a.attr("class",r),l=l.map(function(){var e=this,i=t.Deferred(),s=t.extend({},h,{queue:!1,complete:function(){i.resolve(e)}});return this.el.animate(this.diff,s),i.promise()}),t.when.apply(t,l.get()).done(function(){o(),t.each(arguments,function(){var e=this.el;t.each(this.diff,function(t){e.css(t,"")})}),h.complete.call(a[0])})})},t.fn.extend({addClass:function(e){return function(i,s,n,o){return s?t.effects.animateClass.call(this,{add:i},s,n,o):e.apply(this,arguments)}}(t.fn.addClass),removeClass:function(e){return function(i,s,n,o){return arguments.length>1?t.effects.animateClass.call(this,{remove:i},s,n,o):e.apply(this,arguments)}}(t.fn.removeClass),toggleClass:function(e){return function(i,s,n,o,a){return"boolean"==typeof s||void 0===s?n?t.effects.animateClass.call(this,s?{add:i}:{remove:i},n,o,a):e.apply(this,arguments):t.effects.animateClass.call(this,{toggle:i},s,n,o)}}(t.fn.toggleClass),switchClass:function(e,i,s,n,o){return t.effects.animateClass.call(this,{add:i,remove:e},s,n,o)}})}(),function(){function e(e,i,s,n){return t.isPlainObject(e)&&(i=e,e=e.effect),e={effect:e},null==i&&(i={}),t.isFunction(i)&&(n=i,s=null,i={}),("number"==typeof i||t.fx.speeds[i])&&(n=s,s=i,i={}),t.isFunction(s)&&(n=s,s=null),i&&t.extend(e,i),s=s||i.duration,e.duration=t.fx.off?0:"number"==typeof s?s:s in t.fx.speeds?t.fx.speeds[s]:t.fx.speeds._default,e.complete=n||i.complete,e}function i(e){return!e||"number"==typeof e||t.fx.speeds[e]?!0:"string"!=typeof e||t.effects.effect[e]?t.isFunction(e)?!0:"object"!=typeof e||e.effect?!1:!0:!0}function s(t,e){var i=e.outerWidth(),s=e.outerHeight(),n=/^rect\((-?\d*\.?\d*px|-?\d+%|auto),?\s*(-?\d*\.?\d*px|-?\d+%|auto),?\s*(-?\d*\.?\d*px|-?\d+%|auto),?\s*(-?\d*\.?\d*px|-?\d+%|auto)\)$/,o=n.exec(t)||["",0,i,s,0];return{top:parseFloat(o[1])||0,right:"auto"===o[2]?i:parseFloat(o[2]),bottom:"auto"===o[3]?s:parseFloat(o[3]),left:parseFloat(o[4])||0}}t.expr&&t.expr.filters&&t.expr.filters.animated&&(t.expr.filters.animated=function(e){return function(i){return!!t(i).data(m)||e(i)}}(t.expr.filters.animated)),t.uiBackCompat!==!1&&t.extend(t.effects,{save:function(t,e){for(var i=0,s=e.length;s>i;i++)null!==e[i]&&t.data(f+e[i],t[0].style[e[i]])},restore:function(t,e){for(var i,s=0,n=e.length;n>s;s++)null!==e[s]&&(i=t.data(f+e[s]),t.css(e[s],i))},setMode:function(t,e){return"toggle"===e&&(e=t.is(":hidden")?"show":"hide"),e},createWrapper:function(e){if(e.parent().is(".ui-effects-wrapper"))return e.parent();var i={width:e.outerWidth(!0),height:e.outerHeight(!0),"float":e.css("float")},s=t("<div></div>").addClass("ui-effects-wrapper").css({fontSize:"100%",background:"transparent",border:"none",margin:0,padding:0}),n={width:e.width(),height:e.height()},o=document.activeElement;try{o.id}catch(a){o=document.body}return e.wrap(s),(e[0]===o||t.contains(e[0],o))&&t(o).trigger("focus"),s=e.parent(),"static"===e.css("position")?(s.css({position:"relative"}),e.css({position:"relative"})):(t.extend(i,{position:e.css("position"),zIndex:e.css("z-index")}),t.each(["top","left","bottom","right"],function(t,s){i[s]=e.css(s),isNaN(parseInt(i[s],10))&&(i[s]="auto")}),e.css({position:"relative",top:0,left:0,right:"auto",bottom:"auto"})),e.css(n),s.css(i).show()},removeWrapper:function(e){var i=document.activeElement;return e.parent().is(".ui-effects-wrapper")&&(e.parent().replaceWith(e),(e[0]===i||t.contains(e[0],i))&&t(i).trigger("focus")),e}}),t.extend(t.effects,{version:"1.12.1",define:function(e,i,s){return s||(s=i,i="effect"),t.effects.effect[e]=s,t.effects.effect[e].mode=i,s},scaledDimensions:function(t,e,i){if(0===e)return{height:0,width:0,outerHeight:0,outerWidth:0};var s="horizontal"!==i?(e||100)/100:1,n="vertical"!==i?(e||100)/100:1;return{height:t.height()*n,width:t.width()*s,outerHeight:t.outerHeight()*n,outerWidth:t.outerWidth()*s}},clipToBox:function(t){return{width:t.clip.right-t.clip.left,height:t.clip.bottom-t.clip.top,left:t.clip.left,top:t.clip.top}},unshift:function(t,e,i){var s=t.queue();e>1&&s.splice.apply(s,[1,0].concat(s.splice(e,i))),t.dequeue()},saveStyle:function(t){t.data(g,t[0].style.cssText)},restoreStyle:function(t){t[0].style.cssText=t.data(g)||"",t.removeData(g)},mode:function(t,e){var i=t.is(":hidden");return"toggle"===e&&(e=i?"show":"hide"),(i?"hide"===e:"show"===e)&&(e="none"),e},getBaseline:function(t,e){var i,s;switch(t[0]){case"top":i=0;break;case"middle":i=.5;break;case"bottom":i=1;break;default:i=t[0]/e.height}switch(t[1]){case"left":s=0;break;case"center":s=.5;break;case"right":s=1;break;default:s=t[1]/e.width}return{x:s,y:i}},createPlaceholder:function(e){var i,s=e.css("position"),n=e.position();return e.css({marginTop:e.css("marginTop"),marginBottom:e.css("marginBottom"),marginLeft:e.css("marginLeft"),marginRight:e.css("marginRight")}).outerWidth(e.outerWidth()).outerHeight(e.outerHeight()),/^(static|relative)/.test(s)&&(s="absolute",i=t("<"+e[0].nodeName+">").insertAfter(e).css({display:/^(inline|ruby)/.test(e.css("display"))?"inline-block":"block",visibility:"hidden",marginTop:e.css("marginTop"),marginBottom:e.css("marginBottom"),marginLeft:e.css("marginLeft"),marginRight:e.css("marginRight"),"float":e.css("float")}).outerWidth(e.outerWidth()).outerHeight(e.outerHeight()).addClass("ui-effects-placeholder"),e.data(f+"placeholder",i)),e.css({position:s,left:n.left,top:n.top}),i},removePlaceholder:function(t){var e=f+"placeholder",i=t.data(e);i&&(i.remove(),t.removeData(e))},cleanUp:function(e){t.effects.restoreStyle(e),t.effects.removePlaceholder(e)},setTransition:function(e,i,s,n){return n=n||{},t.each(i,function(t,i){var o=e.cssUnit(i);o[0]>0&&(n[i]=o[0]*s+o[1])}),n}}),t.fn.extend({effect:function(){function i(e){function i(){r.removeData(m),t.effects.cleanUp(r),"hide"===s.mode&&r.hide(),a()}function a(){t.isFunction(h)&&h.call(r[0]),t.isFunction(e)&&e()}var r=t(this);s.mode=c.shift(),t.uiBackCompat===!1||o?"none"===s.mode?(r[l](),a()):n.call(r[0],s,i):(r.is(":hidden")?"hide"===l:"show"===l)?(r[l](),a()):n.call(r[0],s,a)}var s=e.apply(this,arguments),n=t.effects.effect[s.effect],o=n.mode,a=s.queue,r=a||"fx",h=s.complete,l=s.mode,c=[],u=function(e){var i=t(this),s=t.effects.mode(i,l)||o;i.data(m,!0),c.push(s),o&&("show"===s||s===o&&"hide"===s)&&i.show(),o&&"none"===s||t.effects.saveStyle(i),t.isFunction(e)&&e()};return t.fx.off||!n?l?this[l](s.duration,h):this.each(function(){h&&h.call(this)}):a===!1?this.each(u).each(i):this.queue(r,u).queue(r,i)},show:function(t){return function(s){if(i(s))return t.apply(this,arguments);var n=e.apply(this,arguments);return n.mode="show",this.effect.call(this,n)}}(t.fn.show),hide:function(t){return function(s){if(i(s))return t.apply(this,arguments);var n=e.apply(this,arguments);return n.mode="hide",this.effect.call(this,n)}}(t.fn.hide),toggle:function(t){return function(s){if(i(s)||"boolean"==typeof s)return t.apply(this,arguments);var n=e.apply(this,arguments);return n.mode="toggle",this.effect.call(this,n)}}(t.fn.toggle),cssUnit:function(e){var i=this.css(e),s=[];return t.each(["em","px","%","pt"],function(t,e){i.indexOf(e)>0&&(s=[parseFloat(i),e])}),s},cssClip:function(t){return t?this.css("clip","rect("+t.top+"px "+t.right+"px "+t.bottom+"px "+t.left+"px)"):s(this.css("clip"),this)},transfer:function(e,i){var s=t(this),n=t(e.to),o="fixed"===n.css("position"),a=t("body"),r=o?a.scrollTop():0,h=o?a.scrollLeft():0,l=n.offset(),c={top:l.top-r,left:l.left-h,height:n.innerHeight(),width:n.innerWidth()},u=s.offset(),d=t("<div class='ui-effects-transfer'></div>").appendTo("body").addClass(e.className).css({top:u.top-r,left:u.left-h,height:s.innerHeight(),width:s.innerWidth(),position:o?"fixed":"absolute"}).animate(c,e.duration,e.easing,function(){d.remove(),t.isFunction(i)&&i()})}}),t.fx.step.clip=function(e){e.clipInit||(e.start=t(e.elem).cssClip(),"string"==typeof e.end&&(e.end=s(e.end,e.elem)),e.clipInit=!0),t(e.elem).cssClip({top:e.pos*(e.end.top-e.start.top)+e.start.top,right:e.pos*(e.end.right-e.start.right)+e.start.right,bottom:e.pos*(e.end.bottom-e.start.bottom)+e.start.bottom,left:e.pos*(e.end.left-e.start.left)+e.start.left})}}(),function(){var e={};t.each(["Quad","Cubic","Quart","Quint","Expo"],function(t,i){e[i]=function(e){return Math.pow(e,t+2)}}),t.extend(e,{Sine:function(t){return 1-Math.cos(t*Math.PI/2)},Circ:function(t){return 1-Math.sqrt(1-t*t)},Elastic:function(t){return 0===t||1===t?t:-Math.pow(2,8*(t-1))*Math.sin((80*(t-1)-7.5)*Math.PI/15)},Back:function(t){return t*t*(3*t-2)},Bounce:function(t){for(var e,i=4;((e=Math.pow(2,--i))-1)/11>t;);return 1/Math.pow(4,3-i)-7.5625*Math.pow((3*e-2)/22-t,2)}}),t.each(e,function(e,i){t.easing["easeIn"+e]=i,t.easing["easeOut"+e]=function(t){return 1-i(1-t)},t.easing["easeInOut"+e]=function(t){return.5>t?i(2*t)/2:1-i(-2*t+2)/2}})}();var v=t.effects;t.effects.define("blind","hide",function(e,i){var s={up:["bottom","top"],vertical:["bottom","top"],down:["top","bottom"],left:["right","left"],horizontal:["right","left"],right:["left","right"]},n=t(this),o=e.direction||"up",a=n.cssClip(),r={clip:t.extend({},a)},h=t.effects.createPlaceholder(n);r.clip[s[o][0]]=r.clip[s[o][1]],"show"===e.mode&&(n.cssClip(r.clip),h&&h.css(t.effects.clipToBox(r)),r.clip=a),h&&h.animate(t.effects.clipToBox(r),e.duration,e.easing),n.animate(r,{queue:!1,duration:e.duration,easing:e.easing,complete:i})}),t.effects.define("bounce",function(e,i){var s,n,o,a=t(this),r=e.mode,h="hide"===r,l="show"===r,c=e.direction||"up",u=e.distance,d=e.times||5,p=2*d+(l||h?1:0),f=e.duration/p,g=e.easing,m="up"===c||"down"===c?"top":"left",_="up"===c||"left"===c,v=0,b=a.queue().length;for(t.effects.createPlaceholder(a),o=a.css(m),u||(u=a["top"===m?"outerHeight":"outerWidth"]()/3),l&&(n={opacity:1},n[m]=o,a.css("opacity",0).css(m,_?2*-u:2*u).animate(n,f,g)),h&&(u/=Math.pow(2,d-1)),n={},n[m]=o;d>v;v++)s={},s[m]=(_?"-=":"+=")+u,a.animate(s,f,g).animate(n,f,g),u=h?2*u:u/2;h&&(s={opacity:0},s[m]=(_?"-=":"+=")+u,a.animate(s,f,g)),a.queue(i),t.effects.unshift(a,b,p+1)}),t.effects.define("clip","hide",function(e,i){var s,n={},o=t(this),a=e.direction||"vertical",r="both"===a,h=r||"horizontal"===a,l=r||"vertical"===a;s=o.cssClip(),n.clip={top:l?(s.bottom-s.top)/2:s.top,right:h?(s.right-s.left)/2:s.right,bottom:l?(s.bottom-s.top)/2:s.bottom,left:h?(s.right-s.left)/2:s.left},t.effects.createPlaceholder(o),"show"===e.mode&&(o.cssClip(n.clip),n.clip=s),o.animate(n,{queue:!1,duration:e.duration,easing:e.easing,complete:i})}),t.effects.define("drop","hide",function(e,i){var s,n=t(this),o=e.mode,a="show"===o,r=e.direction||"left",h="up"===r||"down"===r?"top":"left",l="up"===r||"left"===r?"-=":"+=",c="+="===l?"-=":"+=",u={opacity:0};t.effects.createPlaceholder(n),s=e.distance||n["top"===h?"outerHeight":"outerWidth"](!0)/2,u[h]=l+s,a&&(n.css(u),u[h]=c+s,u.opacity=1),n.animate(u,{queue:!1,duration:e.duration,easing:e.easing,complete:i})}),t.effects.define("explode","hide",function(e,i){function s(){b.push(this),b.length===u*d&&n()}function n(){p.css({visibility:"visible"}),t(b).remove(),i()}var o,a,r,h,l,c,u=e.pieces?Math.round(Math.sqrt(e.pieces)):3,d=u,p=t(this),f=e.mode,g="show"===f,m=p.show().css("visibility","hidden").offset(),_=Math.ceil(p.outerWidth()/d),v=Math.ceil(p.outerHeight()/u),b=[];for(o=0;u>o;o++)for(h=m.top+o*v,c=o-(u-1)/2,a=0;d>a;a++)r=m.left+a*_,l=a-(d-1)/2,p.clone().appendTo("body").wrap("<div></div>").css({position:"absolute",visibility:"visible",left:-a*_,top:-o*v}).parent().addClass("ui-effects-explode").css({position:"absolute",overflow:"hidden",width:_,height:v,left:r+(g?l*_:0),top:h+(g?c*v:0),opacity:g?0:1}).animate({left:r+(g?0:l*_),top:h+(g?0:c*v),opacity:g?1:0},e.duration||500,e.easing,s)}),t.effects.define("fade","toggle",function(e,i){var s="show"===e.mode;t(this).css("opacity",s?0:1).animate({opacity:s?1:0},{queue:!1,duration:e.duration,easing:e.easing,complete:i})}),t.effects.define("fold","hide",function(e,i){var s=t(this),n=e.mode,o="show"===n,a="hide"===n,r=e.size||15,h=/([0-9]+)%/.exec(r),l=!!e.horizFirst,c=l?["right","bottom"]:["bottom","right"],u=e.duration/2,d=t.effects.createPlaceholder(s),p=s.cssClip(),f={clip:t.extend({},p)},g={clip:t.extend({},p)},m=[p[c[0]],p[c[1]]],_=s.queue().length;h&&(r=parseInt(h[1],10)/100*m[a?0:1]),f.clip[c[0]]=r,g.clip[c[0]]=r,g.clip[c[1]]=0,o&&(s.cssClip(g.clip),d&&d.css(t.effects.clipToBox(g)),g.clip=p),s.queue(function(i){d&&d.animate(t.effects.clipToBox(f),u,e.easing).animate(t.effects.clipToBox(g),u,e.easing),i()}).animate(f,u,e.easing).animate(g,u,e.easing).queue(i),t.effects.unshift(s,_,4)}),t.effects.define("highlight","show",function(e,i){var s=t(this),n={backgroundColor:s.css("backgroundColor")};"hide"===e.mode&&(n.opacity=0),t.effects.saveStyle(s),s.css({backgroundImage:"none",backgroundColor:e.color||"#ffff99"}).animate(n,{queue:!1,duration:e.duration,easing:e.easing,complete:i})}),t.effects.define("size",function(e,i){var s,n,o,a=t(this),r=["fontSize"],h=["borderTopWidth","borderBottomWidth","paddingTop","paddingBottom"],l=["borderLeftWidth","borderRightWidth","paddingLeft","paddingRight"],c=e.mode,u="effect"!==c,d=e.scale||"both",p=e.origin||["middle","center"],f=a.css("position"),g=a.position(),m=t.effects.scaledDimensions(a),_=e.from||m,v=e.to||t.effects.scaledDimensions(a,0);t.effects.createPlaceholder(a),"show"===c&&(o=_,_=v,v=o),n={from:{y:_.height/m.height,x:_.width/m.width},to:{y:v.height/m.height,x:v.width/m.width}},("box"===d||"both"===d)&&(n.from.y!==n.to.y&&(_=t.effects.setTransition(a,h,n.from.y,_),v=t.effects.setTransition(a,h,n.to.y,v)),n.from.x!==n.to.x&&(_=t.effects.setTransition(a,l,n.from.x,_),v=t.effects.setTransition(a,l,n.to.x,v))),("content"===d||"both"===d)&&n.from.y!==n.to.y&&(_=t.effects.setTransition(a,r,n.from.y,_),v=t.effects.setTransition(a,r,n.to.y,v)),p&&(s=t.effects.getBaseline(p,m),_.top=(m.outerHeight-_.outerHeight)*s.y+g.top,_.left=(m.outerWidth-_.outerWidth)*s.x+g.left,v.top=(m.outerHeight-v.outerHeight)*s.y+g.top,v.left=(m.outerWidth-v.outerWidth)*s.x+g.left),a.css(_),("content"===d||"both"===d)&&(h=h.concat(["marginTop","marginBottom"]).concat(r),l=l.concat(["marginLeft","marginRight"]),a.find("*[width]").each(function(){var i=t(this),s=t.effects.scaledDimensions(i),o={height:s.height*n.from.y,width:s.width*n.from.x,outerHeight:s.outerHeight*n.from.y,outerWidth:s.outerWidth*n.from.x},a={height:s.height*n.to.y,width:s.width*n.to.x,outerHeight:s.height*n.to.y,outerWidth:s.width*n.to.x};n.from.y!==n.to.y&&(o=t.effects.setTransition(i,h,n.from.y,o),a=t.effects.setTransition(i,h,n.to.y,a)),n.from.x!==n.to.x&&(o=t.effects.setTransition(i,l,n.from.x,o),a=t.effects.setTransition(i,l,n.to.x,a)),u&&t.effects.saveStyle(i),i.css(o),i.animate(a,e.duration,e.easing,function(){u&&t.effects.restoreStyle(i)})})),a.animate(v,{queue:!1,duration:e.duration,easing:e.easing,complete:function(){var e=a.offset();0===v.opacity&&a.css("opacity",_.opacity),u||(a.css("position","static"===f?"relative":f).offset(e),t.effects.saveStyle(a)),i()}})}),t.effects.define("scale",function(e,i){var s=t(this),n=e.mode,o=parseInt(e.percent,10)||(0===parseInt(e.percent,10)?0:"effect"!==n?0:100),a=t.extend(!0,{from:t.effects.scaledDimensions(s),to:t.effects.scaledDimensions(s,o,e.direction||"both"),origin:e.origin||["middle","center"]},e);e.fade&&(a.from.opacity=1,a.to.opacity=0),t.effects.effect.size.call(this,a,i)}),t.effects.define("puff","hide",function(e,i){var s=t.extend(!0,{},e,{fade:!0,percent:parseInt(e.percent,10)||150});t.effects.effect.scale.call(this,s,i)}),t.effects.define("pulsate","show",function(e,i){var s=t(this),n=e.mode,o="show"===n,a="hide"===n,r=o||a,h=2*(e.times||5)+(r?1:0),l=e.duration/h,c=0,u=1,d=s.queue().length;for((o||!s.is(":visible"))&&(s.css("opacity",0).show(),c=1);h>u;u++)s.animate({opacity:c},l,e.easing),c=1-c;s.animate({opacity:c},l,e.easing),s.queue(i),t.effects.unshift(s,d,h+1)}),t.effects.define("shake",function(e,i){var s=1,n=t(this),o=e.direction||"left",a=e.distance||20,r=e.times||3,h=2*r+1,l=Math.round(e.duration/h),c="up"===o||"down"===o?"top":"left",u="up"===o||"left"===o,d={},p={},f={},g=n.queue().length;for(t.effects.createPlaceholder(n),d[c]=(u?"-=":"+=")+a,p[c]=(u?"+=":"-=")+2*a,f[c]=(u?"-=":"+=")+2*a,n.animate(d,l,e.easing);r>s;s++)n.animate(p,l,e.easing).animate(f,l,e.easing);n.animate(p,l,e.easing).animate(d,l/2,e.easing).queue(i),t.effects.unshift(n,g,h+1)}),t.effects.define("slide","show",function(e,i){var s,n,o=t(this),a={up:["bottom","top"],down:["top","bottom"],left:["right","left"],right:["left","right"]},r=e.mode,h=e.direction||"left",l="up"===h||"down"===h?"top":"left",c="up"===h||"left"===h,u=e.distance||o["top"===l?"outerHeight":"outerWidth"](!0),d={};t.effects.createPlaceholder(o),s=o.cssClip(),n=o.position()[l],d[l]=(c?-1:1)*u+n,d.clip=o.cssClip(),d.clip[a[h][1]]=d.clip[a[h][0]],"show"===r&&(o.cssClip(d.clip),o.css(l,d[l]),d.clip=s,d[l]=n),o.animate(d,{queue:!1,duration:e.duration,easing:e.easing,complete:i})});var v;t.uiBackCompat!==!1&&(v=t.effects.define("transfer",function(e,i){t(this).transfer(e,i)}))});
/*
* jReject (jQuery Browser Rejection Plugin)
* Version 1.1.0
* URL: http://jreject.turnwheel.com/
* Description: jReject is a easy method of rejecting specific browsers on your site
* Author: Steven Bower (TurnWheel Designs) http://turnwheel.com/
* Copyright: Copyright (c) 2009-2014 Steven Bower under dual MIT/GPLv2 license.
*/
(function($){$.reject=function(options){var opts=$.extend(true,{reject:{all:false,msie:6},display:[],browserShow:true,browserInfo:{chrome:{text:'Google Chrome',url:'http://www.google.com/chrome/',},firefox:{text:'Mozilla Firefox',url:'http://www.mozilla.com/firefox/'},safari:{text:'Safari',url:'http://www.apple.com/safari/download/'},opera:{text:'Opera',url:'http://www.opera.com/download/'},msie:{text:'Internet Explorer',url:'http://www.microsoft.com/windows/Internet-explorer/'}},header:'Did you know that your Internet Browser is out of date?',paragraph1:'Your browser is out of date, and may not be compatible with '+'our website. A list of the most popular web browsers can be '+'found below.',paragraph2:'Just click on the icons to get to the download page',close:true,closeMessage:'By closing this window you acknowledge that your experience '+'on this website may be degraded',closeLink:'Close This Window',closeURL:'#',closeESC:true,closeCookie:false,cookieSettings:{path:'/',expires:0},imagePath:'./images/',overlayBgColor:'#000',overlayOpacity:0.8,fadeInTime:'fast',fadeOutTime:'fast',analytics:false},options);if(opts.display.length<1){opts.display=['chrome','firefox','safari','opera','msie'];}if($.isFunction(opts.beforeReject)){opts.beforeReject();}if(!opts.close){opts.closeESC=false;}var browserCheck=function(settings){var layout=settings[$.layout.name],browser=settings[$.browser.name];return!!(settings['all']||(browser&&(browser===true||$.browser.versionNumber<=browser))||settings[$.browser.className]||(layout&&(layout===true||$.layout.versionNumber<=layout))||settings[$.os.name]);};if(!browserCheck(opts.reject)){if($.isFunction(opts.onFail)){opts.onFail();}return false;}if(opts.close&&opts.closeCookie){var COOKIE_NAME='jreject-close';var _cookie=function(name,value){if(typeof value!='undefined'){var expires='';if(opts.cookieSettings.expires!==0){var date=new Date();date.setTime(date.getTime()+(opts.cookieSettings.expires*1000));expires="; expires="+date.toGMTString();}var path=opts.cookieSettings.path||'/';document.cookie=name+'='+encodeURIComponent((!value)?'':value)+expires+'; path='+path;return true;}else{var cookie,val=null;if(document.cookie&&document.cookie!==''){var cookies=document.cookie.split(';');var clen=cookies.length;for(var i=0;i<clen;++i){cookie=$.trim(cookies[i]);if(cookie.substring(0,name.length+1)==(name+'=')){var len=name.length;val=decodeURIComponent(cookie.substring(len+1));break;}}}return val;}};if(_cookie(COOKIE_NAME)){return false;}}var html='<div id="jr_overlay"></div><div id="jr_wrap"><div id="jr_inner">'+'<h1 id="jr_header">'+opts.header+'</h1>'+(opts.paragraph1===''?'':'<p>'+opts.paragraph1+'</p>')+(opts.paragraph2===''?'':'<p>'+opts.paragraph2+'</p>');var displayNum=0;if(opts.browserShow){html+='<ul>';for(var x in opts.display){var browser=opts.display[x];var info=opts.browserInfo[browser]||false;if(!info||(info['allow']!=undefined&&!browserCheck(info['allow']))){continue;}var url=info.url||'#';html+='<li id="jr_'+browser+'"><div class="jr_icon"></div>'+'<div><a href="'+url+'">'+(info.text||'Unknown')+'</a>'+'</div></li>';++displayNum;}html+='</ul>';}html+='<div id="jr_close">'+(opts.close?'<a href="'+opts.closeURL+'">'+opts.closeLink+'</a>'+'<p>'+opts.closeMessage+'</p>':'')+'</div>'+'</div></div>';var element=$('<div>'+html+'</div>');var size=_pageSize();var scroll=_scrollSize();element.bind('closejr',function(){if(!opts.close){return false;}if($.isFunction(opts.beforeClose)){opts.beforeClose();}$(this).unbind('closejr');$('#jr_overlay,#jr_wrap').fadeOut(opts.fadeOutTime,function(){$(this).remove();if($.isFunction(opts.afterClose)){opts.afterClose();}});var elmhide='embed.jr_hidden, object.jr_hidden, select.jr_hidden, applet.jr_hidden';$(elmhide).show().removeClass('jr_hidden');if(opts.closeCookie){_cookie(COOKIE_NAME,'true');}return true;});var analytics=function(url){if(!opts.analytics){return false;}var host=url.split(/\/+/g)[1];try{ga('send','event','External','Click',host,url);}catch(e){try{_gaq.push(['_trackEvent','External Links',host,url]);}catch(e){}}};var openBrowserLinks=function(url){analytics(url);window.open(url,'jr_'+Math.round(Math.random()*11));return false;};element.find('#jr_overlay').css({width:size[0],height:size[1],background:opts.overlayBgColor,opacity:opts.overlayOpacity});element.find('#jr_wrap').css({top:scroll[1]+(size[3]/4),left:scroll[0]});element.find('#jr_inner').css({minWidth:displayNum*100,maxWidth:displayNum*140,width:$.layout.name=='trident'?displayNum*155:'auto'});element.find('#jr_inner li').css({background:'transparent url("'+opts.imagePath+'background_browser.gif")'+'no-repeat scroll left top'});element.find('#jr_inner li .jr_icon').each(function(){var self=$(this);self.css('background','transparent url('+opts.imagePath+'browser_'+(self.parent('li').attr('id').replace(/jr_/,''))+'.gif)'+' no-repeat scroll left top');self.click(function(){var url=$(this).next('div').children('a').attr('href');openBrowserLinks(url);});});element.find('#jr_inner li a').click(function(){openBrowserLinks($(this).attr('href'));return false;});element.find('#jr_close a').click(function(){$(this).trigger('closejr');if(opts.closeURL==='#'){return false;}});$('#jr_overlay').focus();$('embed, object, select, applet').each(function(){if($(this).is(':visible')){$(this).hide().addClass('jr_hidden');}});$('body').append(element.hide().fadeIn(opts.fadeInTime));$(window).bind('resize scroll',function(){var size=_pageSize();$('#jr_overlay').css({width:size[0],height:size[1]});var scroll=_scrollSize();$('#jr_wrap').css({top:scroll[1]+(size[3]/4),left:scroll[0]});});if(opts.closeESC){$(document).bind('keydown',function(event){if(event.keyCode==27){element.trigger('closejr');}});}if($.isFunction(opts.afterReject)){opts.afterReject();}return true;};var _pageSize=function(){var xScroll=window.innerWidth&&window.scrollMaxX?window.innerWidth+window.scrollMaxX:(document.body.scrollWidth>document.body.offsetWidth?document.body.scrollWidth:document.body.offsetWidth);var yScroll=window.innerHeight&&window.scrollMaxY?window.innerHeight+window.scrollMaxY:(document.body.scrollHeight>document.body.offsetHeight?document.body.scrollHeight:document.body.offsetHeight);var windowWidth=window.innerWidth?window.innerWidth:(document.documentElement&&document.documentElement.clientWidth?document.documentElement.clientWidth:document.body.clientWidth);var windowHeight=window.innerHeight?window.innerHeight:(document.documentElement&&document.documentElement.clientHeight?document.documentElement.clientHeight:document.body.clientHeight);return[xScroll<windowWidth?xScroll:windowWidth,yScroll<windowHeight?windowHeight:yScroll,windowWidth,windowHeight];};var _scrollSize=function(){return[window.pageXOffset?window.pageXOffset:(document.documentElement&&document.documentElement.scrollTop?document.documentElement.scrollLeft:document.body.scrollLeft),window.pageYOffset?window.pageYOffset:(document.documentElement&&document.documentElement.scrollTop?document.documentElement.scrollTop:document.body.scrollTop)];};})(jQuery);(function($){$.browserTest=function(a,z){var u='unknown',x='X',m=function(r,h){for(var i=0;i<h.length;i=i+1){r=r.replace(h[i][0],h[i][1]);}return r;},c=function(i,a,b,c){var r={name:m((a.exec(i)||[u,u])[1],b)};r[r.name]=true;if(!r.opera){r.version=(c.exec(i)||[x,x,x,x])[3];}else{r.version=window.opera.version();}if(/safari/.test(r.name)){var safariversion=/(safari)(\/|\s)([a-z0-9\.\+]*?)(\;|dev|rel|\s|$)/;var res=safariversion.exec(i);if(res&&res[3]&&res[3]<400){r.version='2.0';}}else if(r.name==='presto'){r.version=($.browser.version>9.27)?'futhark':'linear_b';}if(/msie/.test(r.name)&&r.version===x){var ieVersion=/rv:(\d+\.\d+)/.exec(i);r.version=ieVersion[1];}r.versionNumber=parseFloat(r.version,10)||0;var minorStart=1;if(r.versionNumber<100&&r.versionNumber>9){minorStart=2;}r.versionX=(r.version!==x)?r.version.substr(0,minorStart):x;r.className=r.name+r.versionX;return r;};a=(/Opera|Navigator|Minefield|KHTML|Chrome|CriOS/.test(a)?m(a,[[/(Firefox|MSIE|KHTML,\slike\sGecko|Konqueror)/,''],['Chrome Safari','Chrome'],['CriOS','Chrome'],['KHTML','Konqueror'],['Minefield','Firefox'],['Navigator','Netscape']]):a).toLowerCase();$.browser=$.extend((!z)?$.browser:{},c(a,/(camino|chrome|crios|firefox|netscape|konqueror|lynx|msie|trident|opera|safari)/,[['trident','msie']],/(camino|chrome|crios|firefox|netscape|netscape6|opera|version|konqueror|lynx|msie|rv|safari)(:|\/|\s)([a-z0-9\.\+]*?)(\;|dev|rel|\s|$)/));$.layout=c(a,/(gecko|konqueror|msie|trident|opera|webkit)/,[['konqueror','khtml'],['msie','trident'],['opera','presto']],/(applewebkit|rv|konqueror|msie)(\:|\/|\s)([a-z0-9\.]*?)(\;|\)|\s)/);$.os={name:(/(win|mac|linux|sunos|solaris|iphone|ipad)/.exec(navigator.platform.toLowerCase())||[u])[0].replace('sunos','solaris')};if(!z){$('html').addClass([$.os.name,$.browser.name,$.browser.className,$.layout.name,$.layout.className].join(' '));}};$.browserTest(navigator.userAgent);}(jQuery));
/*! jssocials - v1.4.0 - 2016-10-10
* http://js-socials.com
* Copyright (c) 2016 Artem Tabalin; Licensed MIT */
(function(window, $, undefined) {

    var JSSOCIALS = "JSSocials",
        JSSOCIALS_DATA_KEY = JSSOCIALS;

    var getOrApply = function(value, context) {
        if($.isFunction(value)) {
            return value.apply(context, $.makeArray(arguments).slice(2));
        }
        return value;
    };

    var IMG_SRC_REGEX = /(\.(jpeg|png|gif|bmp|svg)$|^data:image\/(jpeg|png|gif|bmp|svg\+xml);base64)/i;
    var URL_PARAMS_REGEX = /(&?[a-zA-Z0-9]+=)?\{([a-zA-Z0-9]+)\}/g;

    var MEASURES = {
        "G": 1000000000,
        "M": 1000000,
        "K": 1000
    };

    var shares = {};

    function Socials(element, config) {
        var $element = $(element);

        $element.data(JSSOCIALS_DATA_KEY, this);

        this._$element = $element;

        this.shares = [];

        this._init(config);
        this._render();
    }

    Socials.prototype = {
        url: "",
        text: "",
        shareIn: "blank",

        showLabel: function(screenWidth) {
            return (this.showCount === false) ?
                (screenWidth > this.smallScreenWidth) :
                (screenWidth >= this.largeScreenWidth);
        },

        showCount: function(screenWidth) {
            return (screenWidth <= this.smallScreenWidth) ? "inside" : true;
        },

        smallScreenWidth: 640,
        largeScreenWidth: 1024,

        resizeTimeout: 200,

        elementClass: "jssocials",
        sharesClass: "jssocials-shares",
        shareClass: "jssocials-share",
        shareButtonClass: "jssocials-share-button",
        shareLinkClass: "jssocials-share-link",
        shareLogoClass: "jssocials-share-logo",
        shareLabelClass: "jssocials-share-label",
        shareLinkCountClass: "jssocials-share-link-count",
        shareCountBoxClass: "jssocials-share-count-box",
        shareCountClass: "jssocials-share-count",
        shareZeroCountClass: "jssocials-share-no-count",

        _init: function(config) {
            this._initDefaults();
            $.extend(this, config);
            this._initShares();
            this._attachWindowResizeCallback();
        },

        _initDefaults: function() {
            this.url = window.location.href;
            this.text = $.trim($("meta[name=description]").attr("content") || $("title").text());
        },

        _initShares: function() {
            this.shares = $.map(this.shares, $.proxy(function(shareConfig) {
                if(typeof shareConfig === "string") {
                    shareConfig = { share: shareConfig };
                }

                var share = (shareConfig.share && shares[shareConfig.share]);

                if(!share && !shareConfig.renderer) {
                    throw Error("Share '" + shareConfig.share + "' is not found");
                }

                return $.extend({ url: this.url, text: this.text }, share, shareConfig);
            }, this));
        },

        _attachWindowResizeCallback: function() {
            $(window).on("resize", $.proxy(this._windowResizeHandler, this));
        },

        _detachWindowResizeCallback: function() {
            $(window).off("resize", this._windowResizeHandler);
        },

        _windowResizeHandler: function() {
            if($.isFunction(this.showLabel) || $.isFunction(this.showCount)) {
                window.clearTimeout(this._resizeTimer);
                this._resizeTimer = setTimeout($.proxy(this.refresh, this), this.resizeTimeout);
            }
        },

        _render: function() {
            this._clear();

            this._defineOptionsByScreen();

            this._$element.addClass(this.elementClass);

            this._$shares = $("<div>").addClass(this.sharesClass)
                .appendTo(this._$element);

            this._renderShares();
        },

        _defineOptionsByScreen: function() {
            this._screenWidth = $(window).width();
            this._showLabel = getOrApply(this.showLabel, this, this._screenWidth);
            this._showCount = getOrApply(this.showCount, this, this._screenWidth);
        },

        _renderShares: function() {
            $.each(this.shares, $.proxy(function(_, share) {
                this._renderShare(share);
            }, this));
        },

        _renderShare: function(share) {
            var $share;

            if($.isFunction(share.renderer)) {
                $share = $(share.renderer());
            } else {
                $share = this._createShare(share);
            }

            $share.addClass(this.shareClass)
                .addClass(share.share ? "jssocials-share-" + share.share : "")
                .addClass(share.css)
                .appendTo(this._$shares);
        },

        _createShare: function(share) {
            var $result = $("<div>");
            var $shareLink = this._createShareLink(share).appendTo($result);

            if(this._showCount) {
                var isInsideCount = (this._showCount === "inside");
                var $countContainer = isInsideCount ? $shareLink : $("<div>").addClass(this.shareCountBoxClass).appendTo($result);
                $countContainer.addClass(isInsideCount ? this.shareLinkCountClass : this.shareCountBoxClass);
                this._renderShareCount(share, $countContainer);
            }

            return $result;
        },

        _createShareLink: function(share) {
            var shareStrategy = this._getShareStrategy(share);

            var $result = shareStrategy.call(share, {
                shareUrl: this._getShareUrl(share)
            });

            $result.addClass(this.shareLinkClass)
                .append(this._createShareLogo(share));

            if(this._showLabel) {
                $result.append(this._createShareLabel(share));
            }

            $.each(this.on || {}, function(event, handler) {
                if($.isFunction(handler)) {
                    $result.on(event, $.proxy(handler, share));
                }
            });

            return $result;
        },

        _getShareStrategy: function(share) {
            var result = shareStrategies[share.shareIn || this.shareIn];

            if(!result)
                throw Error("Share strategy '" + this.shareIn + "' not found");

            return result;
        },

        _getShareUrl: function(share) {
            var shareUrl = getOrApply(share.shareUrl, share);
            return this._formatShareUrl(shareUrl, share);
        },

        _createShareLogo: function(share) {
            var logo = share.logo;

            var $result = IMG_SRC_REGEX.test(logo) ?
                $("<img>").attr("src", share.logo) :
                $("<i>").addClass(logo);

            $result.addClass(this.shareLogoClass);

            return $result;
        },

        _createShareLabel: function(share) {
            return $("<span>").addClass(this.shareLabelClass)
                .text(share.label);
        },

        _renderShareCount: function(share, $container) {
            var $count = $("<span>").addClass(this.shareCountClass);

            $container.addClass(this.shareZeroCountClass)
                .append($count);

            this._loadCount(share).done($.proxy(function(count) {
                if(count) {
                    $container.removeClass(this.shareZeroCountClass);
                    $count.text(count);
                }
            }, this));
        },

        _loadCount: function(share) {
            var deferred = $.Deferred();
            var countUrl = this._getCountUrl(share);

            if(!countUrl) {
                return deferred.resolve(0).promise();
            }

            var handleSuccess = $.proxy(function(response) {
                deferred.resolve(this._getCountValue(response, share));
            }, this);

            $.getJSON(countUrl).done(handleSuccess)
                .fail(function() {
                    $.get(countUrl).done(handleSuccess)
                        .fail(function() {
                            deferred.resolve(0);
                        });
                });

            return deferred.promise();
        },

        _getCountUrl: function(share) {
            var countUrl = getOrApply(share.countUrl, share);
            return this._formatShareUrl(countUrl, share);
        },

        _getCountValue: function(response, share) {
            var count = ($.isFunction(share.getCount) ? share.getCount(response) : response) || 0;
            return (typeof count === "string") ? count : this._formatNumber(count);
        },

        _formatNumber: function(number) {
            $.each(MEASURES, function(letter, value) {
                if(number >= value) {
                    number = parseFloat((number / value).toFixed(2)) + letter;
                    return false;
                }
            });

            return number;
        },

        _formatShareUrl: function(url, share) {
            return url.replace(URL_PARAMS_REGEX, function(match, key, field) {
                var value = share[field] || "";
                return value ? (key || "") + window.encodeURIComponent(value) : "";
            });
        },

        _clear: function() {
            window.clearTimeout(this._resizeTimer);
            this._$element.empty();
        },

        _passOptionToShares: function(key, value) {
            var shares = this.shares;

            $.each(["url", "text"], function(_, optionName) {
                if(optionName !== key)
                    return;

                $.each(shares, function(_, share) {
                    share[key] = value;
                });
            });
        },

        _normalizeShare: function(share) {
            if($.isNumeric(share)) {
                return this.shares[share];
            }

            if(typeof share === "string") {
                return $.grep(this.shares, function(s) {
                    return s.share === share;
                })[0];
            }

            return share;
        },

        refresh: function() {
            this._render();
        },

        destroy: function() {
            this._clear();
            this._detachWindowResizeCallback();

            this._$element
                .removeClass(this.elementClass)
                .removeData(JSSOCIALS_DATA_KEY);
        },

        option: function(key, value) {
            if(arguments.length === 1) {
                return this[key];
            }

            this[key] = value;

            this._passOptionToShares(key, value);

            this.refresh();
        },

        shareOption: function(share, key, value) {
            share = this._normalizeShare(share);

            if(arguments.length === 2) {
                return share[key];
            }

            share[key] = value;
            this.refresh();
        }
    };


    $.fn.jsSocials = function(config) {
        var args = $.makeArray(arguments),
            methodArgs = args.slice(1),
            result = this;

        this.each(function() {
            var $element = $(this),
                instance = $element.data(JSSOCIALS_DATA_KEY),
                methodResult;

            if(instance) {
                if(typeof config === "string") {
                    methodResult = instance[config].apply(instance, methodArgs);
                    if(methodResult !== undefined && methodResult !== instance) {
                        result = methodResult;
                        return false;
                    }
                } else {
                    instance._detachWindowResizeCallback();
                    instance._init(config);
                    instance._render();
                }
            } else {
                new Socials($element, config);
            }
        });

        return result;
    };

    var setDefaults = function(config) {
        var component;

        if($.isPlainObject(config)) {
            component = Socials.prototype;
        } else {
            component = shares[config];
            config = arguments[1] || {};
        }

        $.extend(component, config);
    };

    var shareStrategies = {
        popup: function(args) {
            return $("<a>").attr("href", "#")
                .on("click", function() {
                    window.open(args.shareUrl, null, "width=600, height=400, location=0, menubar=0, resizeable=0, scrollbars=0, status=0, titlebar=0, toolbar=0");
                    return false;
                });
        },

        blank: function(args) {
            return $("<a>").attr({ target: "_blank", href: args.shareUrl });
        },

        self: function(args) {
            return $("<a>").attr({ target: "_self", href: args.shareUrl });
        }
    };

    window.jsSocials = {
        Socials: Socials,
        shares: shares,
        shareStrategies: shareStrategies,
        setDefaults: setDefaults
    };

}(window, jQuery));


(function(window, $, jsSocials, undefined) {

    $.extend(jsSocials.shares, {

        email: {
            label: "E-mail",
            logo: "fa fa-at",
            shareUrl: "mailto:{to}?subject={text}&body={url}",
            countUrl: "",
            shareIn: "self"
        },

        twitter: {
            label: "Tweet",
            logo: "fa fa-twitter",
            shareUrl: "https://twitter.com/share?url={url}&text={text}&via={via}&hashtags={hashtags}",
            countUrl: ""
        },

        facebook: {
            label: "Like",
            logo: "fa fa-facebook",
            shareUrl: "https://facebook.com/sharer/sharer.php?u={url}",
            countUrl: "https://graph.facebook.com/?id={url}",
            getCount: function(data) {
                return data.share && data.share.share_count || 0;
            }
        },

        vkontakte: {
            label: "Like",
            logo: "fa fa-vk",
            shareUrl: "https://vk.com/share.php?url={url}&title={title}&description={text}",
            countUrl: "https://vk.com/share.php?act=count&index=1&url={url}",
            getCount: function(data) {
                return parseInt(data.slice(15, -2).split(', ')[1]);
            }
        },

        googleplus: {
            label: "+1",
            logo: "fa fa-google",
            shareUrl: "https://plus.google.com/share?url={url}",
            countUrl: ""
        },

        linkedin: {
            label: "Share",
            logo: "fa fa-linkedin",
            shareUrl: "https://www.linkedin.com/shareArticle?mini=true&url={url}",
            countUrl: "https://www.linkedin.com/countserv/count/share?format=jsonp&url={url}&callback=?",
            getCount: function(data) {
                return data.count;
            }
        },

        pinterest: {
            label: "Pin it",
            logo: "fa fa-pinterest",
            shareUrl: "https://pinterest.com/pin/create/bookmarklet/?media={media}&url={url}&description={text}",
            countUrl: "https://api.pinterest.com/v1/urls/count.json?&url={url}&callback=?",
            getCount: function(data) {
                return data.count;
            }
        },

        stumbleupon: {
            label: "Share",
            logo: "fa fa-stumbleupon",
            shareUrl: "http://www.stumbleupon.com/submit?url={url}&title={title}",
            countUrl:  "https://cors-anywhere.herokuapp.com/https://www.stumbleupon.com/services/1.01/badge.getinfo?url={url}",
            getCount: function(data) {
                return data.result.views;
            }
        },

        telegram: {
            label: "Telegram",
            logo: "fa fa-paper-plane",
            shareUrl: "tg://msg?text={url} {text}",
            countUrl: "",
            shareIn: "self"
        },

        whatsapp: {
            label: "WhatsApp",
            logo: "fa fa-whatsapp",
            shareUrl: "whatsapp://send?text={url} {text}",
            countUrl: "",
            shareIn: "self"
        },

        line: {
            label: "LINE",
            logo: "fa fa-comment",
            shareUrl: "http://line.me/R/msg/text/?{text} {url}",
            countUrl: ""
        },

        viber: {
            label: "Viber",
            logo: "fa fa-volume-control-phone",
            shareUrl: "viber://forward?text={url} {text}",
            countUrl: "",
            shareIn: "self"
        },

        pocket: {
            label: "Pocket",
            logo: "fa fa-get-pocket",
            shareUrl: "https://getpocket.com/save?url={url}&title={title}",
            countUrl: ""
        },

        messenger: {
            label: "Share",
            logo: "fa fa-commenting",
            shareUrl: "fb-messenger://share?link={url}",
            countUrl: "",
            shareIn: "self"
        }

    });

}(window, jQuery, window.jsSocials));


/*! jssocials - v1.4.0 - 2016-10-10
* http://js-socials.com
* Copyright (c) 2016 Artem Tabalin; Licensed MIT */
!function(a,b,c){function d(a,c){var d=b(a);d.data(f,this),this._$element=d,this.shares=[],this._init(c),this._render()}var e="JSSocials",f=e,g=function(a,c){return b.isFunction(a)?a.apply(c,b.makeArray(arguments).slice(2)):a},h=/(\.(jpeg|png|gif|bmp|svg)$|^data:image\/(jpeg|png|gif|bmp|svg\+xml);base64)/i,i=/(&?[a-zA-Z0-9]+=)?\{([a-zA-Z0-9]+)\}/g,j={G:1e9,M:1e6,K:1e3},k={};d.prototype={url:"",text:"",shareIn:"blank",showLabel:function(a){return this.showCount===!1?a>this.smallScreenWidth:a>=this.largeScreenWidth},showCount:function(a){return a<=this.smallScreenWidth?"inside":!0},smallScreenWidth:640,largeScreenWidth:1024,resizeTimeout:200,elementClass:"jssocials",sharesClass:"jssocials-shares",shareClass:"jssocials-share",shareButtonClass:"jssocials-share-button",shareLinkClass:"jssocials-share-link",shareLogoClass:"jssocials-share-logo",shareLabelClass:"jssocials-share-label",shareLinkCountClass:"jssocials-share-link-count",shareCountBoxClass:"jssocials-share-count-box",shareCountClass:"jssocials-share-count",shareZeroCountClass:"jssocials-share-no-count",_init:function(a){this._initDefaults(),b.extend(this,a),this._initShares(),this._attachWindowResizeCallback()},_initDefaults:function(){this.url=a.location.href,this.text=b.trim(b("meta[name=description]").attr("content")||b("title").text())},_initShares:function(){this.shares=b.map(this.shares,b.proxy(function(a){"string"==typeof a&&(a={share:a});var c=a.share&&k[a.share];if(!c&&!a.renderer)throw Error("Share '"+a.share+"' is not found");return b.extend({url:this.url,text:this.text},c,a)},this))},_attachWindowResizeCallback:function(){b(a).on("resize",b.proxy(this._windowResizeHandler,this))},_detachWindowResizeCallback:function(){b(a).off("resize",this._windowResizeHandler)},_windowResizeHandler:function(){(b.isFunction(this.showLabel)||b.isFunction(this.showCount))&&(a.clearTimeout(this._resizeTimer),this._resizeTimer=setTimeout(b.proxy(this.refresh,this),this.resizeTimeout))},_render:function(){this._clear(),this._defineOptionsByScreen(),this._$element.addClass(this.elementClass),this._$shares=b("<div>").addClass(this.sharesClass).appendTo(this._$element),this._renderShares()},_defineOptionsByScreen:function(){this._screenWidth=b(a).width(),this._showLabel=g(this.showLabel,this,this._screenWidth),this._showCount=g(this.showCount,this,this._screenWidth)},_renderShares:function(){b.each(this.shares,b.proxy(function(a,b){this._renderShare(b)},this))},_renderShare:function(a){var c;c=b.isFunction(a.renderer)?b(a.renderer()):this._createShare(a),c.addClass(this.shareClass).addClass(a.share?"jssocials-share-"+a.share:"").addClass(a.css).appendTo(this._$shares)},_createShare:function(a){var c=b("<div>"),d=this._createShareLink(a).appendTo(c);if(this._showCount){var e="inside"===this._showCount,f=e?d:b("<div>").addClass(this.shareCountBoxClass).appendTo(c);f.addClass(e?this.shareLinkCountClass:this.shareCountBoxClass),this._renderShareCount(a,f)}return c},_createShareLink:function(a){var c=this._getShareStrategy(a),d=c.call(a,{shareUrl:this._getShareUrl(a)});return d.addClass(this.shareLinkClass).append(this._createShareLogo(a)),this._showLabel&&d.append(this._createShareLabel(a)),b.each(this.on||{},function(c,e){b.isFunction(e)&&d.on(c,b.proxy(e,a))}),d},_getShareStrategy:function(a){var b=m[a.shareIn||this.shareIn];if(!b)throw Error("Share strategy '"+this.shareIn+"' not found");return b},_getShareUrl:function(a){var b=g(a.shareUrl,a);return this._formatShareUrl(b,a)},_createShareLogo:function(a){var c=a.logo,d=h.test(c)?b("<img>").attr("src",a.logo):b("<i>").addClass(c);return d.addClass(this.shareLogoClass),d},_createShareLabel:function(a){return b("<span>").addClass(this.shareLabelClass).text(a.label)},_renderShareCount:function(a,c){var d=b("<span>").addClass(this.shareCountClass);c.addClass(this.shareZeroCountClass).append(d),this._loadCount(a).done(b.proxy(function(a){a&&(c.removeClass(this.shareZeroCountClass),d.text(a))},this))},_loadCount:function(a){var c=b.Deferred(),d=this._getCountUrl(a);if(!d)return c.resolve(0).promise();var e=b.proxy(function(b){c.resolve(this._getCountValue(b,a))},this);return b.getJSON(d).done(e).fail(function(){b.get(d).done(e).fail(function(){c.resolve(0)})}),c.promise()},_getCountUrl:function(a){var b=g(a.countUrl,a);return this._formatShareUrl(b,a)},_getCountValue:function(a,c){var d=(b.isFunction(c.getCount)?c.getCount(a):a)||0;return"string"==typeof d?d:this._formatNumber(d)},_formatNumber:function(a){return b.each(j,function(b,c){return a>=c?(a=parseFloat((a/c).toFixed(2))+b,!1):void 0}),a},_formatShareUrl:function(b,c){return b.replace(i,function(b,d,e){var f=c[e]||"";return f?(d||"")+a.encodeURIComponent(f):""})},_clear:function(){a.clearTimeout(this._resizeTimer),this._$element.empty()},_passOptionToShares:function(a,c){var d=this.shares;b.each(["url","text"],function(e,f){f===a&&b.each(d,function(b,d){d[a]=c})})},_normalizeShare:function(a){return b.isNumeric(a)?this.shares[a]:"string"==typeof a?b.grep(this.shares,function(b){return b.share===a})[0]:a},refresh:function(){this._render()},destroy:function(){this._clear(),this._detachWindowResizeCallback(),this._$element.removeClass(this.elementClass).removeData(f)},option:function(a,b){return 1===arguments.length?this[a]:(this[a]=b,this._passOptionToShares(a,b),void this.refresh())},shareOption:function(a,b,c){return a=this._normalizeShare(a),2===arguments.length?a[b]:(a[b]=c,void this.refresh())}},b.fn.jsSocials=function(a){var e=b.makeArray(arguments),g=e.slice(1),h=this;return this.each(function(){var e,i=b(this),j=i.data(f);if(j)if("string"==typeof a){if(e=j[a].apply(j,g),e!==c&&e!==j)return h=e,!1}else j._detachWindowResizeCallback(),j._init(a),j._render();else new d(i,a)}),h};var l=function(a){var c;b.isPlainObject(a)?c=d.prototype:(c=k[a],a=arguments[1]||{}),b.extend(c,a)},m={popup:function(c){return b("<a>").attr("href","#").on("click",function(){return a.open(c.shareUrl,null,"width=600, height=400, location=0, menubar=0, resizeable=0, scrollbars=0, status=0, titlebar=0, toolbar=0"),!1})},blank:function(a){return b("<a>").attr({target:"_blank",href:a.shareUrl})},self:function(a){return b("<a>").attr({target:"_self",href:a.shareUrl})}};a.jsSocials={Socials:d,shares:k,shareStrategies:m,setDefaults:l}}(window,jQuery),function(a,b,c){b.extend(c.shares,{email:{label:"E-mail",logo:"fa fa-at",shareUrl:"mailto:{to}?subject={text}&body={url}",countUrl:"",shareIn:"self"},twitter:{label:"Tweet",logo:"fa fa-twitter",shareUrl:"https://twitter.com/share?url={url}&text={text}&via={via}&hashtags={hashtags}",countUrl:""},facebook:{label:"Like",logo:"fa fa-facebook",shareUrl:"https://facebook.com/sharer/sharer.php?u={url}",countUrl:"https://graph.facebook.com/?id={url}",getCount:function(a){return a.share&&a.share.share_count||0}},vkontakte:{label:"Like",logo:"fa fa-vk",shareUrl:"https://vk.com/share.php?url={url}&title={title}&description={text}",countUrl:"https://vk.com/share.php?act=count&index=1&url={url}",getCount:function(a){return parseInt(a.slice(15,-2).split(", ")[1])}},googleplus:{label:"+1",logo:"fa fa-google",shareUrl:"https://plus.google.com/share?url={url}",countUrl:""},linkedin:{label:"Share",logo:"fa fa-linkedin",shareUrl:"https://www.linkedin.com/shareArticle?mini=true&url={url}",countUrl:"https://www.linkedin.com/countserv/count/share?format=jsonp&url={url}&callback=?",getCount:function(a){return a.count}},pinterest:{label:"Pin it",logo:"fa fa-pinterest",shareUrl:"https://pinterest.com/pin/create/bookmarklet/?media={media}&url={url}&description={text}",countUrl:"https://api.pinterest.com/v1/urls/count.json?&url={url}&callback=?",getCount:function(a){return a.count}},stumbleupon:{label:"Share",logo:"fa fa-stumbleupon",shareUrl:"http://www.stumbleupon.com/submit?url={url}&title={title}",countUrl:"https://cors-anywhere.herokuapp.com/https://www.stumbleupon.com/services/1.01/badge.getinfo?url={url}",getCount:function(a){return a.result.views}},telegram:{label:"Telegram",logo:"fa fa-paper-plane",shareUrl:"tg://msg?text={url} {text}",countUrl:"",shareIn:"self"},whatsapp:{label:"WhatsApp",logo:"fa fa-whatsapp",shareUrl:"whatsapp://send?text={url} {text}",countUrl:"",shareIn:"self"},line:{label:"LINE",logo:"fa fa-comment",shareUrl:"http://line.me/R/msg/text/?{text} {url}",countUrl:""},viber:{label:"Viber",logo:"fa fa-volume-control-phone",shareUrl:"viber://forward?text={url} {text}",countUrl:"",shareIn:"self"},pocket:{label:"Pocket",logo:"fa fa-get-pocket",shareUrl:"https://getpocket.com/save?url={url}&title={title}",countUrl:""},messenger:{label:"Share",logo:"fa fa-commenting",shareUrl:"fb-messenger://share?link={url}",countUrl:"",shareIn:"self"}})}(window,jQuery,window.jsSocials);
/* == jquery mousewheel plugin == Version: 3.1.13, License: MIT License (MIT) */
!function(a){"function"==typeof define&&define.amd?define(["jquery"],a):"object"==typeof exports?module.exports=a:a(jQuery)}(function(a){function b(b){var g=b||window.event,h=i.call(arguments,1),j=0,l=0,m=0,n=0,o=0,p=0;if(b=a.event.fix(g),b.type="mousewheel","detail"in g&&(m=-1*g.detail),"wheelDelta"in g&&(m=g.wheelDelta),"wheelDeltaY"in g&&(m=g.wheelDeltaY),"wheelDeltaX"in g&&(l=-1*g.wheelDeltaX),"axis"in g&&g.axis===g.HORIZONTAL_AXIS&&(l=-1*m,m=0),j=0===m?l:m,"deltaY"in g&&(m=-1*g.deltaY,j=m),"deltaX"in g&&(l=g.deltaX,0===m&&(j=-1*l)),0!==m||0!==l){if(1===g.deltaMode){var q=a.data(this,"mousewheel-line-height");j*=q,m*=q,l*=q}else if(2===g.deltaMode){var r=a.data(this,"mousewheel-page-height");j*=r,m*=r,l*=r}if(n=Math.max(Math.abs(m),Math.abs(l)),(!f||f>n)&&(f=n,d(g,n)&&(f/=40)),d(g,n)&&(j/=40,l/=40,m/=40),j=Math[j>=1?"floor":"ceil"](j/f),l=Math[l>=1?"floor":"ceil"](l/f),m=Math[m>=1?"floor":"ceil"](m/f),k.settings.normalizeOffset&&this.getBoundingClientRect){var s=this.getBoundingClientRect();o=b.clientX-s.left,p=b.clientY-s.top}return b.deltaX=l,b.deltaY=m,b.deltaFactor=f,b.offsetX=o,b.offsetY=p,b.deltaMode=0,h.unshift(b,j,l,m),e&&clearTimeout(e),e=setTimeout(c,200),(a.event.dispatch||a.event.handle).apply(this,h)}}function c(){f=null}function d(a,b){return k.settings.adjustOldDeltas&&"mousewheel"===a.type&&b%120===0}var e,f,g=["wheel","mousewheel","DOMMouseScroll","MozMousePixelScroll"],h="onwheel"in document||document.documentMode>=9?["wheel"]:["mousewheel","DomMouseScroll","MozMousePixelScroll"],i=Array.prototype.slice;if(a.event.fixHooks)for(var j=g.length;j;)a.event.fixHooks[g[--j]]=a.event.mouseHooks;var k=a.event.special.mousewheel={version:"3.1.12",setup:function(){if(this.addEventListener)for(var c=h.length;c;)this.addEventListener(h[--c],b,!1);else this.onmousewheel=b;a.data(this,"mousewheel-line-height",k.getLineHeight(this)),a.data(this,"mousewheel-page-height",k.getPageHeight(this))},teardown:function(){if(this.removeEventListener)for(var c=h.length;c;)this.removeEventListener(h[--c],b,!1);else this.onmousewheel=null;a.removeData(this,"mousewheel-line-height"),a.removeData(this,"mousewheel-page-height")},getLineHeight:function(b){var c=a(b),d=c["offsetParent"in a.fn?"offsetParent":"parent"]();return d.length||(d=a("body")),parseInt(d.css("fontSize"),10)||parseInt(c.css("fontSize"),10)||16},getPageHeight:function(b){return a(b).height()},settings:{adjustOldDeltas:!0,normalizeOffset:!0}};a.fn.extend({mousewheel:function(a){return a?this.bind("mousewheel",a):this.trigger("mousewheel")},unmousewheel:function(a){return this.unbind("mousewheel",a)}})});!function(a){"function"==typeof define&&define.amd?define(["jquery"],a):"object"==typeof exports?module.exports=a:a(jQuery)}(function(a){function b(b){var g=b||window.event,h=i.call(arguments,1),j=0,l=0,m=0,n=0,o=0,p=0;if(b=a.event.fix(g),b.type="mousewheel","detail"in g&&(m=-1*g.detail),"wheelDelta"in g&&(m=g.wheelDelta),"wheelDeltaY"in g&&(m=g.wheelDeltaY),"wheelDeltaX"in g&&(l=-1*g.wheelDeltaX),"axis"in g&&g.axis===g.HORIZONTAL_AXIS&&(l=-1*m,m=0),j=0===m?l:m,"deltaY"in g&&(m=-1*g.deltaY,j=m),"deltaX"in g&&(l=g.deltaX,0===m&&(j=-1*l)),0!==m||0!==l){if(1===g.deltaMode){var q=a.data(this,"mousewheel-line-height");j*=q,m*=q,l*=q}else if(2===g.deltaMode){var r=a.data(this,"mousewheel-page-height");j*=r,m*=r,l*=r}if(n=Math.max(Math.abs(m),Math.abs(l)),(!f||f>n)&&(f=n,d(g,n)&&(f/=40)),d(g,n)&&(j/=40,l/=40,m/=40),j=Math[j>=1?"floor":"ceil"](j/f),l=Math[l>=1?"floor":"ceil"](l/f),m=Math[m>=1?"floor":"ceil"](m/f),k.settings.normalizeOffset&&this.getBoundingClientRect){var s=this.getBoundingClientRect();o=b.clientX-s.left,p=b.clientY-s.top}return b.deltaX=l,b.deltaY=m,b.deltaFactor=f,b.offsetX=o,b.offsetY=p,b.deltaMode=0,h.unshift(b,j,l,m),e&&clearTimeout(e),e=setTimeout(c,200),(a.event.dispatch||a.event.handle).apply(this,h)}}function c(){f=null}function d(a,b){return k.settings.adjustOldDeltas&&"mousewheel"===a.type&&b%120===0}var e,f,g=["wheel","mousewheel","DOMMouseScroll","MozMousePixelScroll"],h="onwheel"in document||document.documentMode>=9?["wheel"]:["mousewheel","DomMouseScroll","MozMousePixelScroll"],i=Array.prototype.slice;if(a.event.fixHooks)for(var j=g.length;j;)a.event.fixHooks[g[--j]]=a.event.mouseHooks;var k=a.event.special.mousewheel={version:"3.1.12",setup:function(){if(this.addEventListener)for(var c=h.length;c;)this.addEventListener(h[--c],b,!1);else this.onmousewheel=b;a.data(this,"mousewheel-line-height",k.getLineHeight(this)),a.data(this,"mousewheel-page-height",k.getPageHeight(this))},teardown:function(){if(this.removeEventListener)for(var c=h.length;c;)this.removeEventListener(h[--c],b,!1);else this.onmousewheel=null;a.removeData(this,"mousewheel-line-height"),a.removeData(this,"mousewheel-page-height")},getLineHeight:function(b){var c=a(b),d=c["offsetParent"in a.fn?"offsetParent":"parent"]();return d.length||(d=a("body")),parseInt(d.css("fontSize"),10)||parseInt(c.css("fontSize"),10)||16},getPageHeight:function(b){return a(b).height()},settings:{adjustOldDeltas:!0,normalizeOffset:!0}};a.fn.extend({mousewheel:function(a){return a?this.bind("mousewheel",a):this.trigger("mousewheel")},unmousewheel:function(a){return this.unbind("mousewheel",a)}})});
/* == malihu jquery custom scrollbar plugin == Version: 3.1.5, License: MIT License (MIT) */
!function(e){"function"==typeof define&&define.amd?define(["jquery"],e):"undefined"!=typeof module&&module.exports?module.exports=e:e(jQuery,window,document)}(function(e){!function(t){var o="function"==typeof define&&define.amd,a="undefined"!=typeof module&&module.exports,n="https:"==document.location.protocol?"https:":"http:",i="cdnjs.cloudflare.com/ajax/libs/jquery-mousewheel/3.1.13/jquery.mousewheel.min.js";o||(a?require("jquery-mousewheel")(e):e.event.special.mousewheel||e("head").append(decodeURI("%3Cscript src="+n+"//"+i+"%3E%3C/script%3E"))),t()}(function(){var t,o="mCustomScrollbar",a="mCS",n=".mCustomScrollbar",i={setTop:0,setLeft:0,axis:"y",scrollbarPosition:"inside",scrollInertia:950,autoDraggerLength:!0,alwaysShowScrollbar:0,snapOffset:0,mouseWheel:{enable:!0,scrollAmount:"auto",axis:"y",deltaFactor:"auto",disableOver:["select","option","keygen","datalist","textarea"]},scrollButtons:{scrollType:"stepless",scrollAmount:"auto"},keyboard:{enable:!0,scrollType:"stepless",scrollAmount:"auto"},contentTouchScroll:25,documentTouchScroll:!0,advanced:{autoScrollOnFocus:"input,textarea,select,button,datalist,keygen,a[tabindex],area,object,[contenteditable='true']",updateOnContentResize:!0,updateOnImageLoad:"auto",autoUpdateTimeout:60},theme:"light",callbacks:{onTotalScrollOffset:0,onTotalScrollBackOffset:0,alwaysTriggerOffsets:!0}},r=0,l={},s=window.attachEvent&&!window.addEventListener?1:0,c=!1,d=["mCSB_dragger_onDrag","mCSB_scrollTools_onDrag","mCS_img_loaded","mCS_disabled","mCS_destroyed","mCS_no_scrollbar","mCS-autoHide","mCS-dir-rtl","mCS_no_scrollbar_y","mCS_no_scrollbar_x","mCS_y_hidden","mCS_x_hidden","mCSB_draggerContainer","mCSB_buttonUp","mCSB_buttonDown","mCSB_buttonLeft","mCSB_buttonRight"],u={init:function(t){var t=e.extend(!0,{},i,t),o=f.call(this);if(t.live){var s=t.liveSelector||this.selector||n,c=e(s);if("off"===t.live)return void m(s);l[s]=setTimeout(function(){c.mCustomScrollbar(t),"once"===t.live&&c.length&&m(s)},500)}else m(s);return t.setWidth=t.set_width?t.set_width:t.setWidth,t.setHeight=t.set_height?t.set_height:t.setHeight,t.axis=t.horizontalScroll?"x":p(t.axis),t.scrollInertia=t.scrollInertia>0&&t.scrollInertia<17?17:t.scrollInertia,"object"!=typeof t.mouseWheel&&1==t.mouseWheel&&(t.mouseWheel={enable:!0,scrollAmount:"auto",axis:"y",preventDefault:!1,deltaFactor:"auto",normalizeDelta:!1,invert:!1}),t.mouseWheel.scrollAmount=t.mouseWheelPixels?t.mouseWheelPixels:t.mouseWheel.scrollAmount,t.mouseWheel.normalizeDelta=t.advanced.normalizeMouseWheelDelta?t.advanced.normalizeMouseWheelDelta:t.mouseWheel.normalizeDelta,t.scrollButtons.scrollType=g(t.scrollButtons.scrollType),h(t),e(o).each(function(){var o=e(this);if(!o.data(a)){o.data(a,{idx:++r,opt:t,scrollRatio:{y:null,x:null},overflowed:null,contentReset:{y:null,x:null},bindEvents:!1,tweenRunning:!1,sequential:{},langDir:o.css("direction"),cbOffsets:null,trigger:null,poll:{size:{o:0,n:0},img:{o:0,n:0},change:{o:0,n:0}}});var n=o.data(a),i=n.opt,l=o.data("mcs-axis"),s=o.data("mcs-scrollbar-position"),c=o.data("mcs-theme");l&&(i.axis=l),s&&(i.scrollbarPosition=s),c&&(i.theme=c,h(i)),v.call(this),n&&i.callbacks.onCreate&&"function"==typeof i.callbacks.onCreate&&i.callbacks.onCreate.call(this),e("#mCSB_"+n.idx+"_container img:not(."+d[2]+")").addClass(d[2]),u.update.call(null,o)}})},update:function(t,o){var n=t||f.call(this);return e(n).each(function(){var t=e(this);if(t.data(a)){var n=t.data(a),i=n.opt,r=e("#mCSB_"+n.idx+"_container"),l=e("#mCSB_"+n.idx),s=[e("#mCSB_"+n.idx+"_dragger_vertical"),e("#mCSB_"+n.idx+"_dragger_horizontal")];if(!r.length)return;n.tweenRunning&&Q(t),o&&n&&i.callbacks.onBeforeUpdate&&"function"==typeof i.callbacks.onBeforeUpdate&&i.callbacks.onBeforeUpdate.call(this),t.hasClass(d[3])&&t.removeClass(d[3]),t.hasClass(d[4])&&t.removeClass(d[4]),l.css("max-height","none"),l.height()!==t.height()&&l.css("max-height",t.height()),_.call(this),"y"===i.axis||i.advanced.autoExpandHorizontalScroll||r.css("width",x(r)),n.overflowed=y.call(this),M.call(this),i.autoDraggerLength&&S.call(this),b.call(this),T.call(this);var c=[Math.abs(r[0].offsetTop),Math.abs(r[0].offsetLeft)];"x"!==i.axis&&(n.overflowed[0]?s[0].height()>s[0].parent().height()?B.call(this):(G(t,c[0].toString(),{dir:"y",dur:0,overwrite:"none"}),n.contentReset.y=null):(B.call(this),"y"===i.axis?k.call(this):"yx"===i.axis&&n.overflowed[1]&&G(t,c[1].toString(),{dir:"x",dur:0,overwrite:"none"}))),"y"!==i.axis&&(n.overflowed[1]?s[1].width()>s[1].parent().width()?B.call(this):(G(t,c[1].toString(),{dir:"x",dur:0,overwrite:"none"}),n.contentReset.x=null):(B.call(this),"x"===i.axis?k.call(this):"yx"===i.axis&&n.overflowed[0]&&G(t,c[0].toString(),{dir:"y",dur:0,overwrite:"none"}))),o&&n&&(2===o&&i.callbacks.onImageLoad&&"function"==typeof i.callbacks.onImageLoad?i.callbacks.onImageLoad.call(this):3===o&&i.callbacks.onSelectorChange&&"function"==typeof i.callbacks.onSelectorChange?i.callbacks.onSelectorChange.call(this):i.callbacks.onUpdate&&"function"==typeof i.callbacks.onUpdate&&i.callbacks.onUpdate.call(this)),N.call(this)}})},scrollTo:function(t,o){if("undefined"!=typeof t&&null!=t){var n=f.call(this);return e(n).each(function(){var n=e(this);if(n.data(a)){var i=n.data(a),r=i.opt,l={trigger:"external",scrollInertia:r.scrollInertia,scrollEasing:"mcsEaseInOut",moveDragger:!1,timeout:60,callbacks:!0,onStart:!0,onUpdate:!0,onComplete:!0},s=e.extend(!0,{},l,o),c=Y.call(this,t),d=s.scrollInertia>0&&s.scrollInertia<17?17:s.scrollInertia;c[0]=X.call(this,c[0],"y"),c[1]=X.call(this,c[1],"x"),s.moveDragger&&(c[0]*=i.scrollRatio.y,c[1]*=i.scrollRatio.x),s.dur=ne()?0:d,setTimeout(function(){null!==c[0]&&"undefined"!=typeof c[0]&&"x"!==r.axis&&i.overflowed[0]&&(s.dir="y",s.overwrite="all",G(n,c[0].toString(),s)),null!==c[1]&&"undefined"!=typeof c[1]&&"y"!==r.axis&&i.overflowed[1]&&(s.dir="x",s.overwrite="none",G(n,c[1].toString(),s))},s.timeout)}})}},stop:function(){var t=f.call(this);return e(t).each(function(){var t=e(this);t.data(a)&&Q(t)})},disable:function(t){var o=f.call(this);return e(o).each(function(){var o=e(this);if(o.data(a)){o.data(a);N.call(this,"remove"),k.call(this),t&&B.call(this),M.call(this,!0),o.addClass(d[3])}})},destroy:function(){var t=f.call(this);return e(t).each(function(){var n=e(this);if(n.data(a)){var i=n.data(a),r=i.opt,l=e("#mCSB_"+i.idx),s=e("#mCSB_"+i.idx+"_container"),c=e(".mCSB_"+i.idx+"_scrollbar");r.live&&m(r.liveSelector||e(t).selector),N.call(this,"remove"),k.call(this),B.call(this),n.removeData(a),$(this,"mcs"),c.remove(),s.find("img."+d[2]).removeClass(d[2]),l.replaceWith(s.contents()),n.removeClass(o+" _"+a+"_"+i.idx+" "+d[6]+" "+d[7]+" "+d[5]+" "+d[3]).addClass(d[4])}})}},f=function(){return"object"!=typeof e(this)||e(this).length<1?n:this},h=function(t){var o=["rounded","rounded-dark","rounded-dots","rounded-dots-dark"],a=["rounded-dots","rounded-dots-dark","3d","3d-dark","3d-thick","3d-thick-dark","inset","inset-dark","inset-2","inset-2-dark","inset-3","inset-3-dark"],n=["minimal","minimal-dark"],i=["minimal","minimal-dark"],r=["minimal","minimal-dark"];t.autoDraggerLength=e.inArray(t.theme,o)>-1?!1:t.autoDraggerLength,t.autoExpandScrollbar=e.inArray(t.theme,a)>-1?!1:t.autoExpandScrollbar,t.scrollButtons.enable=e.inArray(t.theme,n)>-1?!1:t.scrollButtons.enable,t.autoHideScrollbar=e.inArray(t.theme,i)>-1?!0:t.autoHideScrollbar,t.scrollbarPosition=e.inArray(t.theme,r)>-1?"outside":t.scrollbarPosition},m=function(e){l[e]&&(clearTimeout(l[e]),$(l,e))},p=function(e){return"yx"===e||"xy"===e||"auto"===e?"yx":"x"===e||"horizontal"===e?"x":"y"},g=function(e){return"stepped"===e||"pixels"===e||"step"===e||"click"===e?"stepped":"stepless"},v=function(){var t=e(this),n=t.data(a),i=n.opt,r=i.autoExpandScrollbar?" "+d[1]+"_expand":"",l=["<div id='mCSB_"+n.idx+"_scrollbar_vertical' class='mCSB_scrollTools mCSB_"+n.idx+"_scrollbar mCS-"+i.theme+" mCSB_scrollTools_vertical"+r+"'><div class='"+d[12]+"'><div id='mCSB_"+n.idx+"_dragger_vertical' class='mCSB_dragger' style='position:absolute;'><div class='mCSB_dragger_bar' /></div><div class='mCSB_draggerRail' /></div></div>","<div id='mCSB_"+n.idx+"_scrollbar_horizontal' class='mCSB_scrollTools mCSB_"+n.idx+"_scrollbar mCS-"+i.theme+" mCSB_scrollTools_horizontal"+r+"'><div class='"+d[12]+"'><div id='mCSB_"+n.idx+"_dragger_horizontal' class='mCSB_dragger' style='position:absolute;'><div class='mCSB_dragger_bar' /></div><div class='mCSB_draggerRail' /></div></div>"],s="yx"===i.axis?"mCSB_vertical_horizontal":"x"===i.axis?"mCSB_horizontal":"mCSB_vertical",c="yx"===i.axis?l[0]+l[1]:"x"===i.axis?l[1]:l[0],u="yx"===i.axis?"<div id='mCSB_"+n.idx+"_container_wrapper' class='mCSB_container_wrapper' />":"",f=i.autoHideScrollbar?" "+d[6]:"",h="x"!==i.axis&&"rtl"===n.langDir?" "+d[7]:"";i.setWidth&&t.css("width",i.setWidth),i.setHeight&&t.css("height",i.setHeight),i.setLeft="y"!==i.axis&&"rtl"===n.langDir?"989999px":i.setLeft,t.addClass(o+" _"+a+"_"+n.idx+f+h).wrapInner("<div id='mCSB_"+n.idx+"' class='mCustomScrollBox mCS-"+i.theme+" "+s+"'><div id='mCSB_"+n.idx+"_container' class='mCSB_container' style='position:relative; top:"+i.setTop+"; left:"+i.setLeft+";' dir='"+n.langDir+"' /></div>");var m=e("#mCSB_"+n.idx),p=e("#mCSB_"+n.idx+"_container");"y"===i.axis||i.advanced.autoExpandHorizontalScroll||p.css("width",x(p)),"outside"===i.scrollbarPosition?("static"===t.css("position")&&t.css("position","relative"),t.css("overflow","visible"),m.addClass("mCSB_outside").after(c)):(m.addClass("mCSB_inside").append(c),p.wrap(u)),w.call(this);var g=[e("#mCSB_"+n.idx+"_dragger_vertical"),e("#mCSB_"+n.idx+"_dragger_horizontal")];g[0].css("min-height",g[0].height()),g[1].css("min-width",g[1].width())},x=function(t){var o=[t[0].scrollWidth,Math.max.apply(Math,t.children().map(function(){return e(this).outerWidth(!0)}).get())],a=t.parent().width();return o[0]>a?o[0]:o[1]>a?o[1]:"100%"},_=function(){var t=e(this),o=t.data(a),n=o.opt,i=e("#mCSB_"+o.idx+"_container");if(n.advanced.autoExpandHorizontalScroll&&"y"!==n.axis){i.css({width:"auto","min-width":0,"overflow-x":"scroll"});var r=Math.ceil(i[0].scrollWidth);3===n.advanced.autoExpandHorizontalScroll||2!==n.advanced.autoExpandHorizontalScroll&&r>i.parent().width()?i.css({width:r,"min-width":"100%","overflow-x":"inherit"}):i.css({"overflow-x":"inherit",position:"absolute"}).wrap("<div class='mCSB_h_wrapper' style='position:relative; left:0; width:999999px;' />").css({width:Math.ceil(i[0].getBoundingClientRect().right+.4)-Math.floor(i[0].getBoundingClientRect().left),"min-width":"100%",position:"relative"}).unwrap()}},w=function(){var t=e(this),o=t.data(a),n=o.opt,i=e(".mCSB_"+o.idx+"_scrollbar:first"),r=oe(n.scrollButtons.tabindex)?"tabindex='"+n.scrollButtons.tabindex+"'":"",l=["<a href='#' class='"+d[13]+"' "+r+" />","<a href='#' class='"+d[14]+"' "+r+" />","<a href='#' class='"+d[15]+"' "+r+" />","<a href='#' class='"+d[16]+"' "+r+" />"],s=["x"===n.axis?l[2]:l[0],"x"===n.axis?l[3]:l[1],l[2],l[3]];n.scrollButtons.enable&&i.prepend(s[0]).append(s[1]).next(".mCSB_scrollTools").prepend(s[2]).append(s[3])},S=function(){var t=e(this),o=t.data(a),n=e("#mCSB_"+o.idx),i=e("#mCSB_"+o.idx+"_container"),r=[e("#mCSB_"+o.idx+"_dragger_vertical"),e("#mCSB_"+o.idx+"_dragger_horizontal")],l=[n.height()/i.outerHeight(!1),n.width()/i.outerWidth(!1)],c=[parseInt(r[0].css("min-height")),Math.round(l[0]*r[0].parent().height()),parseInt(r[1].css("min-width")),Math.round(l[1]*r[1].parent().width())],d=s&&c[1]<c[0]?c[0]:c[1],u=s&&c[3]<c[2]?c[2]:c[3];r[0].css({height:d,"max-height":r[0].parent().height()-10}).find(".mCSB_dragger_bar").css({"line-height":c[0]+"px"}),r[1].css({width:u,"max-width":r[1].parent().width()-10})},b=function(){var t=e(this),o=t.data(a),n=e("#mCSB_"+o.idx),i=e("#mCSB_"+o.idx+"_container"),r=[e("#mCSB_"+o.idx+"_dragger_vertical"),e("#mCSB_"+o.idx+"_dragger_horizontal")],l=[i.outerHeight(!1)-n.height(),i.outerWidth(!1)-n.width()],s=[l[0]/(r[0].parent().height()-r[0].height()),l[1]/(r[1].parent().width()-r[1].width())];o.scrollRatio={y:s[0],x:s[1]}},C=function(e,t,o){var a=o?d[0]+"_expanded":"",n=e.closest(".mCSB_scrollTools");"active"===t?(e.toggleClass(d[0]+" "+a),n.toggleClass(d[1]),e[0]._draggable=e[0]._draggable?0:1):e[0]._draggable||("hide"===t?(e.removeClass(d[0]),n.removeClass(d[1])):(e.addClass(d[0]),n.addClass(d[1])))},y=function(){var t=e(this),o=t.data(a),n=e("#mCSB_"+o.idx),i=e("#mCSB_"+o.idx+"_container"),r=null==o.overflowed?i.height():i.outerHeight(!1),l=null==o.overflowed?i.width():i.outerWidth(!1),s=i[0].scrollHeight,c=i[0].scrollWidth;return s>r&&(r=s),c>l&&(l=c),[r>n.height(),l>n.width()]},B=function(){var t=e(this),o=t.data(a),n=o.opt,i=e("#mCSB_"+o.idx),r=e("#mCSB_"+o.idx+"_container"),l=[e("#mCSB_"+o.idx+"_dragger_vertical"),e("#mCSB_"+o.idx+"_dragger_horizontal")];if(Q(t),("x"!==n.axis&&!o.overflowed[0]||"y"===n.axis&&o.overflowed[0])&&(l[0].add(r).css("top",0),G(t,"_resetY")),"y"!==n.axis&&!o.overflowed[1]||"x"===n.axis&&o.overflowed[1]){var s=dx=0;"rtl"===o.langDir&&(s=i.width()-r.outerWidth(!1),dx=Math.abs(s/o.scrollRatio.x)),r.css("left",s),l[1].css("left",dx),G(t,"_resetX")}},T=function(){function t(){r=setTimeout(function(){e.event.special.mousewheel?(clearTimeout(r),W.call(o[0])):t()},100)}var o=e(this),n=o.data(a),i=n.opt;if(!n.bindEvents){if(I.call(this),i.contentTouchScroll&&D.call(this),E.call(this),i.mouseWheel.enable){var r;t()}P.call(this),U.call(this),i.advanced.autoScrollOnFocus&&H.call(this),i.scrollButtons.enable&&F.call(this),i.keyboard.enable&&q.call(this),n.bindEvents=!0}},k=function(){var t=e(this),o=t.data(a),n=o.opt,i=a+"_"+o.idx,r=".mCSB_"+o.idx+"_scrollbar",l=e("#mCSB_"+o.idx+",#mCSB_"+o.idx+"_container,#mCSB_"+o.idx+"_container_wrapper,"+r+" ."+d[12]+",#mCSB_"+o.idx+"_dragger_vertical,#mCSB_"+o.idx+"_dragger_horizontal,"+r+">a"),s=e("#mCSB_"+o.idx+"_container");n.advanced.releaseDraggableSelectors&&l.add(e(n.advanced.releaseDraggableSelectors)),n.advanced.extraDraggableSelectors&&l.add(e(n.advanced.extraDraggableSelectors)),o.bindEvents&&(e(document).add(e(!A()||top.document)).unbind("."+i),l.each(function(){e(this).unbind("."+i)}),clearTimeout(t[0]._focusTimeout),$(t[0],"_focusTimeout"),clearTimeout(o.sequential.step),$(o.sequential,"step"),clearTimeout(s[0].onCompleteTimeout),$(s[0],"onCompleteTimeout"),o.bindEvents=!1)},M=function(t){var o=e(this),n=o.data(a),i=n.opt,r=e("#mCSB_"+n.idx+"_container_wrapper"),l=r.length?r:e("#mCSB_"+n.idx+"_container"),s=[e("#mCSB_"+n.idx+"_scrollbar_vertical"),e("#mCSB_"+n.idx+"_scrollbar_horizontal")],c=[s[0].find(".mCSB_dragger"),s[1].find(".mCSB_dragger")];"x"!==i.axis&&(n.overflowed[0]&&!t?(s[0].add(c[0]).add(s[0].children("a")).css("display","block"),l.removeClass(d[8]+" "+d[10])):(i.alwaysShowScrollbar?(2!==i.alwaysShowScrollbar&&c[0].css("display","none"),l.removeClass(d[10])):(s[0].css("display","none"),l.addClass(d[10])),l.addClass(d[8]))),"y"!==i.axis&&(n.overflowed[1]&&!t?(s[1].add(c[1]).add(s[1].children("a")).css("display","block"),l.removeClass(d[9]+" "+d[11])):(i.alwaysShowScrollbar?(2!==i.alwaysShowScrollbar&&c[1].css("display","none"),l.removeClass(d[11])):(s[1].css("display","none"),l.addClass(d[11])),l.addClass(d[9]))),n.overflowed[0]||n.overflowed[1]?o.removeClass(d[5]):o.addClass(d[5])},O=function(t){var o=t.type,a=t.target.ownerDocument!==document&&null!==frameElement?[e(frameElement).offset().top,e(frameElement).offset().left]:null,n=A()&&t.target.ownerDocument!==top.document&&null!==frameElement?[e(t.view.frameElement).offset().top,e(t.view.frameElement).offset().left]:[0,0];switch(o){case"pointerdown":case"MSPointerDown":case"pointermove":case"MSPointerMove":case"pointerup":case"MSPointerUp":return a?[t.originalEvent.pageY-a[0]+n[0],t.originalEvent.pageX-a[1]+n[1],!1]:[t.originalEvent.pageY,t.originalEvent.pageX,!1];case"touchstart":case"touchmove":case"touchend":var i=t.originalEvent.touches[0]||t.originalEvent.changedTouches[0],r=t.originalEvent.touches.length||t.originalEvent.changedTouches.length;return t.target.ownerDocument!==document?[i.screenY,i.screenX,r>1]:[i.pageY,i.pageX,r>1];default:return a?[t.pageY-a[0]+n[0],t.pageX-a[1]+n[1],!1]:[t.pageY,t.pageX,!1]}},I=function(){function t(e,t,a,n){if(h[0].idleTimer=d.scrollInertia<233?250:0,o.attr("id")===f[1])var i="x",s=(o[0].offsetLeft-t+n)*l.scrollRatio.x;else var i="y",s=(o[0].offsetTop-e+a)*l.scrollRatio.y;G(r,s.toString(),{dir:i,drag:!0})}var o,n,i,r=e(this),l=r.data(a),d=l.opt,u=a+"_"+l.idx,f=["mCSB_"+l.idx+"_dragger_vertical","mCSB_"+l.idx+"_dragger_horizontal"],h=e("#mCSB_"+l.idx+"_container"),m=e("#"+f[0]+",#"+f[1]),p=d.advanced.releaseDraggableSelectors?m.add(e(d.advanced.releaseDraggableSelectors)):m,g=d.advanced.extraDraggableSelectors?e(!A()||top.document).add(e(d.advanced.extraDraggableSelectors)):e(!A()||top.document);m.bind("contextmenu."+u,function(e){e.preventDefault()}).bind("mousedown."+u+" touchstart."+u+" pointerdown."+u+" MSPointerDown."+u,function(t){if(t.stopImmediatePropagation(),t.preventDefault(),ee(t)){c=!0,s&&(document.onselectstart=function(){return!1}),L.call(h,!1),Q(r),o=e(this);var a=o.offset(),l=O(t)[0]-a.top,u=O(t)[1]-a.left,f=o.height()+a.top,m=o.width()+a.left;f>l&&l>0&&m>u&&u>0&&(n=l,i=u),C(o,"active",d.autoExpandScrollbar)}}).bind("touchmove."+u,function(e){e.stopImmediatePropagation(),e.preventDefault();var a=o.offset(),r=O(e)[0]-a.top,l=O(e)[1]-a.left;t(n,i,r,l)}),e(document).add(g).bind("mousemove."+u+" pointermove."+u+" MSPointerMove."+u,function(e){if(o){var a=o.offset(),r=O(e)[0]-a.top,l=O(e)[1]-a.left;if(n===r&&i===l)return;t(n,i,r,l)}}).add(p).bind("mouseup."+u+" touchend."+u+" pointerup."+u+" MSPointerUp."+u,function(){o&&(C(o,"active",d.autoExpandScrollbar),o=null),c=!1,s&&(document.onselectstart=null),L.call(h,!0)})},D=function(){function o(e){if(!te(e)||c||O(e)[2])return void(t=0);t=1,b=0,C=0,d=1,y.removeClass("mCS_touch_action");var o=I.offset();u=O(e)[0]-o.top,f=O(e)[1]-o.left,z=[O(e)[0],O(e)[1]]}function n(e){if(te(e)&&!c&&!O(e)[2]&&(T.documentTouchScroll||e.preventDefault(),e.stopImmediatePropagation(),(!C||b)&&d)){g=K();var t=M.offset(),o=O(e)[0]-t.top,a=O(e)[1]-t.left,n="mcsLinearOut";if(E.push(o),W.push(a),z[2]=Math.abs(O(e)[0]-z[0]),z[3]=Math.abs(O(e)[1]-z[1]),B.overflowed[0])var i=D[0].parent().height()-D[0].height(),r=u-o>0&&o-u>-(i*B.scrollRatio.y)&&(2*z[3]<z[2]||"yx"===T.axis);if(B.overflowed[1])var l=D[1].parent().width()-D[1].width(),h=f-a>0&&a-f>-(l*B.scrollRatio.x)&&(2*z[2]<z[3]||"yx"===T.axis);r||h?(U||e.preventDefault(),b=1):(C=1,y.addClass("mCS_touch_action")),U&&e.preventDefault(),w="yx"===T.axis?[u-o,f-a]:"x"===T.axis?[null,f-a]:[u-o,null],I[0].idleTimer=250,B.overflowed[0]&&s(w[0],R,n,"y","all",!0),B.overflowed[1]&&s(w[1],R,n,"x",L,!0)}}function i(e){if(!te(e)||c||O(e)[2])return void(t=0);t=1,e.stopImmediatePropagation(),Q(y),p=K();var o=M.offset();h=O(e)[0]-o.top,m=O(e)[1]-o.left,E=[],W=[]}function r(e){if(te(e)&&!c&&!O(e)[2]){d=0,e.stopImmediatePropagation(),b=0,C=0,v=K();var t=M.offset(),o=O(e)[0]-t.top,a=O(e)[1]-t.left;if(!(v-g>30)){_=1e3/(v-p);var n="mcsEaseOut",i=2.5>_,r=i?[E[E.length-2],W[W.length-2]]:[0,0];x=i?[o-r[0],a-r[1]]:[o-h,a-m];var u=[Math.abs(x[0]),Math.abs(x[1])];_=i?[Math.abs(x[0]/4),Math.abs(x[1]/4)]:[_,_];var f=[Math.abs(I[0].offsetTop)-x[0]*l(u[0]/_[0],_[0]),Math.abs(I[0].offsetLeft)-x[1]*l(u[1]/_[1],_[1])];w="yx"===T.axis?[f[0],f[1]]:"x"===T.axis?[null,f[1]]:[f[0],null],S=[4*u[0]+T.scrollInertia,4*u[1]+T.scrollInertia];var y=parseInt(T.contentTouchScroll)||0;w[0]=u[0]>y?w[0]:0,w[1]=u[1]>y?w[1]:0,B.overflowed[0]&&s(w[0],S[0],n,"y",L,!1),B.overflowed[1]&&s(w[1],S[1],n,"x",L,!1)}}}function l(e,t){var o=[1.5*t,2*t,t/1.5,t/2];return e>90?t>4?o[0]:o[3]:e>60?t>3?o[3]:o[2]:e>30?t>8?o[1]:t>6?o[0]:t>4?t:o[2]:t>8?t:o[3]}function s(e,t,o,a,n,i){e&&G(y,e.toString(),{dur:t,scrollEasing:o,dir:a,overwrite:n,drag:i})}var d,u,f,h,m,p,g,v,x,_,w,S,b,C,y=e(this),B=y.data(a),T=B.opt,k=a+"_"+B.idx,M=e("#mCSB_"+B.idx),I=e("#mCSB_"+B.idx+"_container"),D=[e("#mCSB_"+B.idx+"_dragger_vertical"),e("#mCSB_"+B.idx+"_dragger_horizontal")],E=[],W=[],R=0,L="yx"===T.axis?"none":"all",z=[],P=I.find("iframe"),H=["touchstart."+k+" pointerdown."+k+" MSPointerDown."+k,"touchmove."+k+" pointermove."+k+" MSPointerMove."+k,"touchend."+k+" pointerup."+k+" MSPointerUp."+k],U=void 0!==document.body.style.touchAction&&""!==document.body.style.touchAction;I.bind(H[0],function(e){o(e)}).bind(H[1],function(e){n(e)}),M.bind(H[0],function(e){i(e)}).bind(H[2],function(e){r(e)}),P.length&&P.each(function(){e(this).bind("load",function(){A(this)&&e(this.contentDocument||this.contentWindow.document).bind(H[0],function(e){o(e),i(e)}).bind(H[1],function(e){n(e)}).bind(H[2],function(e){r(e)})})})},E=function(){function o(){return window.getSelection?window.getSelection().toString():document.selection&&"Control"!=document.selection.type?document.selection.createRange().text:0}function n(e,t,o){d.type=o&&i?"stepped":"stepless",d.scrollAmount=10,j(r,e,t,"mcsLinearOut",o?60:null)}var i,r=e(this),l=r.data(a),s=l.opt,d=l.sequential,u=a+"_"+l.idx,f=e("#mCSB_"+l.idx+"_container"),h=f.parent();f.bind("mousedown."+u,function(){t||i||(i=1,c=!0)}).add(document).bind("mousemove."+u,function(e){if(!t&&i&&o()){var a=f.offset(),r=O(e)[0]-a.top+f[0].offsetTop,c=O(e)[1]-a.left+f[0].offsetLeft;r>0&&r<h.height()&&c>0&&c<h.width()?d.step&&n("off",null,"stepped"):("x"!==s.axis&&l.overflowed[0]&&(0>r?n("on",38):r>h.height()&&n("on",40)),"y"!==s.axis&&l.overflowed[1]&&(0>c?n("on",37):c>h.width()&&n("on",39)))}}).bind("mouseup."+u+" dragend."+u,function(){t||(i&&(i=0,n("off",null)),c=!1)})},W=function(){function t(t,a){if(Q(o),!z(o,t.target)){var r="auto"!==i.mouseWheel.deltaFactor?parseInt(i.mouseWheel.deltaFactor):s&&t.deltaFactor<100?100:t.deltaFactor||100,d=i.scrollInertia;if("x"===i.axis||"x"===i.mouseWheel.axis)var u="x",f=[Math.round(r*n.scrollRatio.x),parseInt(i.mouseWheel.scrollAmount)],h="auto"!==i.mouseWheel.scrollAmount?f[1]:f[0]>=l.width()?.9*l.width():f[0],m=Math.abs(e("#mCSB_"+n.idx+"_container")[0].offsetLeft),p=c[1][0].offsetLeft,g=c[1].parent().width()-c[1].width(),v="y"===i.mouseWheel.axis?t.deltaY||a:t.deltaX;else var u="y",f=[Math.round(r*n.scrollRatio.y),parseInt(i.mouseWheel.scrollAmount)],h="auto"!==i.mouseWheel.scrollAmount?f[1]:f[0]>=l.height()?.9*l.height():f[0],m=Math.abs(e("#mCSB_"+n.idx+"_container")[0].offsetTop),p=c[0][0].offsetTop,g=c[0].parent().height()-c[0].height(),v=t.deltaY||a;"y"===u&&!n.overflowed[0]||"x"===u&&!n.overflowed[1]||((i.mouseWheel.invert||t.webkitDirectionInvertedFromDevice)&&(v=-v),i.mouseWheel.normalizeDelta&&(v=0>v?-1:1),(v>0&&0!==p||0>v&&p!==g||i.mouseWheel.preventDefault)&&(t.stopImmediatePropagation(),t.preventDefault()),t.deltaFactor<5&&!i.mouseWheel.normalizeDelta&&(h=t.deltaFactor,d=17),G(o,(m-v*h).toString(),{dir:u,dur:d}))}}if(e(this).data(a)){var o=e(this),n=o.data(a),i=n.opt,r=a+"_"+n.idx,l=e("#mCSB_"+n.idx),c=[e("#mCSB_"+n.idx+"_dragger_vertical"),e("#mCSB_"+n.idx+"_dragger_horizontal")],d=e("#mCSB_"+n.idx+"_container").find("iframe");d.length&&d.each(function(){e(this).bind("load",function(){A(this)&&e(this.contentDocument||this.contentWindow.document).bind("mousewheel."+r,function(e,o){t(e,o)})})}),l.bind("mousewheel."+r,function(e,o){t(e,o)})}},R=new Object,A=function(t){var o=!1,a=!1,n=null;if(void 0===t?a="#empty":void 0!==e(t).attr("id")&&(a=e(t).attr("id")),a!==!1&&void 0!==R[a])return R[a];if(t){try{var i=t.contentDocument||t.contentWindow.document;n=i.body.innerHTML}catch(r){}o=null!==n}else{try{var i=top.document;n=i.body.innerHTML}catch(r){}o=null!==n}return a!==!1&&(R[a]=o),o},L=function(e){var t=this.find("iframe");if(t.length){var o=e?"auto":"none";t.css("pointer-events",o)}},z=function(t,o){var n=o.nodeName.toLowerCase(),i=t.data(a).opt.mouseWheel.disableOver,r=["select","textarea"];return e.inArray(n,i)>-1&&!(e.inArray(n,r)>-1&&!e(o).is(":focus"))},P=function(){var t,o=e(this),n=o.data(a),i=a+"_"+n.idx,r=e("#mCSB_"+n.idx+"_container"),l=r.parent(),s=e(".mCSB_"+n.idx+"_scrollbar ."+d[12]);s.bind("mousedown."+i+" touchstart."+i+" pointerdown."+i+" MSPointerDown."+i,function(o){c=!0,e(o.target).hasClass("mCSB_dragger")||(t=1)}).bind("touchend."+i+" pointerup."+i+" MSPointerUp."+i,function(){c=!1}).bind("click."+i,function(a){if(t&&(t=0,e(a.target).hasClass(d[12])||e(a.target).hasClass("mCSB_draggerRail"))){Q(o);var i=e(this),s=i.find(".mCSB_dragger");if(i.parent(".mCSB_scrollTools_horizontal").length>0){if(!n.overflowed[1])return;var c="x",u=a.pageX>s.offset().left?-1:1,f=Math.abs(r[0].offsetLeft)-u*(.9*l.width())}else{if(!n.overflowed[0])return;var c="y",u=a.pageY>s.offset().top?-1:1,f=Math.abs(r[0].offsetTop)-u*(.9*l.height())}G(o,f.toString(),{dir:c,scrollEasing:"mcsEaseInOut"})}})},H=function(){var t=e(this),o=t.data(a),n=o.opt,i=a+"_"+o.idx,r=e("#mCSB_"+o.idx+"_container"),l=r.parent();r.bind("focusin."+i,function(){var o=e(document.activeElement),a=r.find(".mCustomScrollBox").length,i=0;o.is(n.advanced.autoScrollOnFocus)&&(Q(t),clearTimeout(t[0]._focusTimeout),t[0]._focusTimer=a?(i+17)*a:0,t[0]._focusTimeout=setTimeout(function(){var e=[ae(o)[0],ae(o)[1]],a=[r[0].offsetTop,r[0].offsetLeft],s=[a[0]+e[0]>=0&&a[0]+e[0]<l.height()-o.outerHeight(!1),a[1]+e[1]>=0&&a[0]+e[1]<l.width()-o.outerWidth(!1)],c="yx"!==n.axis||s[0]||s[1]?"all":"none";"x"===n.axis||s[0]||G(t,e[0].toString(),{dir:"y",scrollEasing:"mcsEaseInOut",overwrite:c,dur:i}),"y"===n.axis||s[1]||G(t,e[1].toString(),{dir:"x",scrollEasing:"mcsEaseInOut",overwrite:c,dur:i})},t[0]._focusTimer))})},U=function(){var t=e(this),o=t.data(a),n=a+"_"+o.idx,i=e("#mCSB_"+o.idx+"_container").parent();i.bind("scroll."+n,function(){0===i.scrollTop()&&0===i.scrollLeft()||e(".mCSB_"+o.idx+"_scrollbar").css("visibility","hidden")})},F=function(){var t=e(this),o=t.data(a),n=o.opt,i=o.sequential,r=a+"_"+o.idx,l=".mCSB_"+o.idx+"_scrollbar",s=e(l+">a");s.bind("contextmenu."+r,function(e){e.preventDefault()}).bind("mousedown."+r+" touchstart."+r+" pointerdown."+r+" MSPointerDown."+r+" mouseup."+r+" touchend."+r+" pointerup."+r+" MSPointerUp."+r+" mouseout."+r+" pointerout."+r+" MSPointerOut."+r+" click."+r,function(a){function r(e,o){i.scrollAmount=n.scrollButtons.scrollAmount,j(t,e,o)}if(a.preventDefault(),ee(a)){var l=e(this).attr("class");switch(i.type=n.scrollButtons.scrollType,a.type){case"mousedown":case"touchstart":case"pointerdown":case"MSPointerDown":if("stepped"===i.type)return;c=!0,o.tweenRunning=!1,r("on",l);break;case"mouseup":case"touchend":case"pointerup":case"MSPointerUp":case"mouseout":case"pointerout":case"MSPointerOut":if("stepped"===i.type)return;c=!1,i.dir&&r("off",l);break;case"click":if("stepped"!==i.type||o.tweenRunning)return;r("on",l)}}})},q=function(){function t(t){function a(e,t){r.type=i.keyboard.scrollType,r.scrollAmount=i.keyboard.scrollAmount,"stepped"===r.type&&n.tweenRunning||j(o,e,t)}switch(t.type){case"blur":n.tweenRunning&&r.dir&&a("off",null);break;case"keydown":case"keyup":var l=t.keyCode?t.keyCode:t.which,s="on";if("x"!==i.axis&&(38===l||40===l)||"y"!==i.axis&&(37===l||39===l)){if((38===l||40===l)&&!n.overflowed[0]||(37===l||39===l)&&!n.overflowed[1])return;"keyup"===t.type&&(s="off"),e(document.activeElement).is(u)||(t.preventDefault(),t.stopImmediatePropagation(),a(s,l))}else if(33===l||34===l){if((n.overflowed[0]||n.overflowed[1])&&(t.preventDefault(),t.stopImmediatePropagation()),"keyup"===t.type){Q(o);var f=34===l?-1:1;if("x"===i.axis||"yx"===i.axis&&n.overflowed[1]&&!n.overflowed[0])var h="x",m=Math.abs(c[0].offsetLeft)-f*(.9*d.width());else var h="y",m=Math.abs(c[0].offsetTop)-f*(.9*d.height());G(o,m.toString(),{dir:h,scrollEasing:"mcsEaseInOut"})}}else if((35===l||36===l)&&!e(document.activeElement).is(u)&&((n.overflowed[0]||n.overflowed[1])&&(t.preventDefault(),t.stopImmediatePropagation()),"keyup"===t.type)){if("x"===i.axis||"yx"===i.axis&&n.overflowed[1]&&!n.overflowed[0])var h="x",m=35===l?Math.abs(d.width()-c.outerWidth(!1)):0;else var h="y",m=35===l?Math.abs(d.height()-c.outerHeight(!1)):0;G(o,m.toString(),{dir:h,scrollEasing:"mcsEaseInOut"})}}}var o=e(this),n=o.data(a),i=n.opt,r=n.sequential,l=a+"_"+n.idx,s=e("#mCSB_"+n.idx),c=e("#mCSB_"+n.idx+"_container"),d=c.parent(),u="input,textarea,select,datalist,keygen,[contenteditable='true']",f=c.find("iframe"),h=["blur."+l+" keydown."+l+" keyup."+l];f.length&&f.each(function(){e(this).bind("load",function(){A(this)&&e(this.contentDocument||this.contentWindow.document).bind(h[0],function(e){t(e)})})}),s.attr("tabindex","0").bind(h[0],function(e){t(e)})},j=function(t,o,n,i,r){function l(e){u.snapAmount&&(f.scrollAmount=u.snapAmount instanceof Array?"x"===f.dir[0]?u.snapAmount[1]:u.snapAmount[0]:u.snapAmount);var o="stepped"!==f.type,a=r?r:e?o?p/1.5:g:1e3/60,n=e?o?7.5:40:2.5,s=[Math.abs(h[0].offsetTop),Math.abs(h[0].offsetLeft)],d=[c.scrollRatio.y>10?10:c.scrollRatio.y,c.scrollRatio.x>10?10:c.scrollRatio.x],m="x"===f.dir[0]?s[1]+f.dir[1]*(d[1]*n):s[0]+f.dir[1]*(d[0]*n),v="x"===f.dir[0]?s[1]+f.dir[1]*parseInt(f.scrollAmount):s[0]+f.dir[1]*parseInt(f.scrollAmount),x="auto"!==f.scrollAmount?v:m,_=i?i:e?o?"mcsLinearOut":"mcsEaseInOut":"mcsLinear",w=!!e;return e&&17>a&&(x="x"===f.dir[0]?s[1]:s[0]),G(t,x.toString(),{dir:f.dir[0],scrollEasing:_,dur:a,onComplete:w}),e?void(f.dir=!1):(clearTimeout(f.step),void(f.step=setTimeout(function(){l()},a)))}function s(){clearTimeout(f.step),$(f,"step"),Q(t)}var c=t.data(a),u=c.opt,f=c.sequential,h=e("#mCSB_"+c.idx+"_container"),m="stepped"===f.type,p=u.scrollInertia<26?26:u.scrollInertia,g=u.scrollInertia<1?17:u.scrollInertia;switch(o){case"on":if(f.dir=[n===d[16]||n===d[15]||39===n||37===n?"x":"y",n===d[13]||n===d[15]||38===n||37===n?-1:1],Q(t),oe(n)&&"stepped"===f.type)return;l(m);break;case"off":s(),(m||c.tweenRunning&&f.dir)&&l(!0)}},Y=function(t){var o=e(this).data(a).opt,n=[];return"function"==typeof t&&(t=t()),t instanceof Array?n=t.length>1?[t[0],t[1]]:"x"===o.axis?[null,t[0]]:[t[0],null]:(n[0]=t.y?t.y:t.x||"x"===o.axis?null:t,n[1]=t.x?t.x:t.y||"y"===o.axis?null:t),"function"==typeof n[0]&&(n[0]=n[0]()),"function"==typeof n[1]&&(n[1]=n[1]()),n},X=function(t,o){if(null!=t&&"undefined"!=typeof t){var n=e(this),i=n.data(a),r=i.opt,l=e("#mCSB_"+i.idx+"_container"),s=l.parent(),c=typeof t;o||(o="x"===r.axis?"x":"y");var d="x"===o?l.outerWidth(!1)-s.width():l.outerHeight(!1)-s.height(),f="x"===o?l[0].offsetLeft:l[0].offsetTop,h="x"===o?"left":"top";switch(c){case"function":return t();case"object":var m=t.jquery?t:e(t);if(!m.length)return;return"x"===o?ae(m)[1]:ae(m)[0];case"string":case"number":if(oe(t))return Math.abs(t);if(-1!==t.indexOf("%"))return Math.abs(d*parseInt(t)/100);if(-1!==t.indexOf("-="))return Math.abs(f-parseInt(t.split("-=")[1]));if(-1!==t.indexOf("+=")){var p=f+parseInt(t.split("+=")[1]);return p>=0?0:Math.abs(p)}if(-1!==t.indexOf("px")&&oe(t.split("px")[0]))return Math.abs(t.split("px")[0]);if("top"===t||"left"===t)return 0;if("bottom"===t)return Math.abs(s.height()-l.outerHeight(!1));if("right"===t)return Math.abs(s.width()-l.outerWidth(!1));if("first"===t||"last"===t){var m=l.find(":"+t);return"x"===o?ae(m)[1]:ae(m)[0]}return e(t).length?"x"===o?ae(e(t))[1]:ae(e(t))[0]:(l.css(h,t),void u.update.call(null,n[0]))}}},N=function(t){function o(){return clearTimeout(f[0].autoUpdate),0===l.parents("html").length?void(l=null):void(f[0].autoUpdate=setTimeout(function(){return c.advanced.updateOnSelectorChange&&(s.poll.change.n=i(),s.poll.change.n!==s.poll.change.o)?(s.poll.change.o=s.poll.change.n,void r(3)):c.advanced.updateOnContentResize&&(s.poll.size.n=l[0].scrollHeight+l[0].scrollWidth+f[0].offsetHeight+l[0].offsetHeight+l[0].offsetWidth,s.poll.size.n!==s.poll.size.o)?(s.poll.size.o=s.poll.size.n,void r(1)):!c.advanced.updateOnImageLoad||"auto"===c.advanced.updateOnImageLoad&&"y"===c.axis||(s.poll.img.n=f.find("img").length,s.poll.img.n===s.poll.img.o)?void((c.advanced.updateOnSelectorChange||c.advanced.updateOnContentResize||c.advanced.updateOnImageLoad)&&o()):(s.poll.img.o=s.poll.img.n,void f.find("img").each(function(){n(this)}))},c.advanced.autoUpdateTimeout))}function n(t){function o(e,t){return function(){
return t.apply(e,arguments)}}function a(){this.onload=null,e(t).addClass(d[2]),r(2)}if(e(t).hasClass(d[2]))return void r();var n=new Image;n.onload=o(n,a),n.src=t.src}function i(){c.advanced.updateOnSelectorChange===!0&&(c.advanced.updateOnSelectorChange="*");var e=0,t=f.find(c.advanced.updateOnSelectorChange);return c.advanced.updateOnSelectorChange&&t.length>0&&t.each(function(){e+=this.offsetHeight+this.offsetWidth}),e}function r(e){clearTimeout(f[0].autoUpdate),u.update.call(null,l[0],e)}var l=e(this),s=l.data(a),c=s.opt,f=e("#mCSB_"+s.idx+"_container");return t?(clearTimeout(f[0].autoUpdate),void $(f[0],"autoUpdate")):void o()},V=function(e,t,o){return Math.round(e/t)*t-o},Q=function(t){var o=t.data(a),n=e("#mCSB_"+o.idx+"_container,#mCSB_"+o.idx+"_container_wrapper,#mCSB_"+o.idx+"_dragger_vertical,#mCSB_"+o.idx+"_dragger_horizontal");n.each(function(){Z.call(this)})},G=function(t,o,n){function i(e){return s&&c.callbacks[e]&&"function"==typeof c.callbacks[e]}function r(){return[c.callbacks.alwaysTriggerOffsets||w>=S[0]+y,c.callbacks.alwaysTriggerOffsets||-B>=w]}function l(){var e=[h[0].offsetTop,h[0].offsetLeft],o=[x[0].offsetTop,x[0].offsetLeft],a=[h.outerHeight(!1),h.outerWidth(!1)],i=[f.height(),f.width()];t[0].mcs={content:h,top:e[0],left:e[1],draggerTop:o[0],draggerLeft:o[1],topPct:Math.round(100*Math.abs(e[0])/(Math.abs(a[0])-i[0])),leftPct:Math.round(100*Math.abs(e[1])/(Math.abs(a[1])-i[1])),direction:n.dir}}var s=t.data(a),c=s.opt,d={trigger:"internal",dir:"y",scrollEasing:"mcsEaseOut",drag:!1,dur:c.scrollInertia,overwrite:"all",callbacks:!0,onStart:!0,onUpdate:!0,onComplete:!0},n=e.extend(d,n),u=[n.dur,n.drag?0:n.dur],f=e("#mCSB_"+s.idx),h=e("#mCSB_"+s.idx+"_container"),m=h.parent(),p=c.callbacks.onTotalScrollOffset?Y.call(t,c.callbacks.onTotalScrollOffset):[0,0],g=c.callbacks.onTotalScrollBackOffset?Y.call(t,c.callbacks.onTotalScrollBackOffset):[0,0];if(s.trigger=n.trigger,0===m.scrollTop()&&0===m.scrollLeft()||(e(".mCSB_"+s.idx+"_scrollbar").css("visibility","visible"),m.scrollTop(0).scrollLeft(0)),"_resetY"!==o||s.contentReset.y||(i("onOverflowYNone")&&c.callbacks.onOverflowYNone.call(t[0]),s.contentReset.y=1),"_resetX"!==o||s.contentReset.x||(i("onOverflowXNone")&&c.callbacks.onOverflowXNone.call(t[0]),s.contentReset.x=1),"_resetY"!==o&&"_resetX"!==o){if(!s.contentReset.y&&t[0].mcs||!s.overflowed[0]||(i("onOverflowY")&&c.callbacks.onOverflowY.call(t[0]),s.contentReset.x=null),!s.contentReset.x&&t[0].mcs||!s.overflowed[1]||(i("onOverflowX")&&c.callbacks.onOverflowX.call(t[0]),s.contentReset.x=null),c.snapAmount){var v=c.snapAmount instanceof Array?"x"===n.dir?c.snapAmount[1]:c.snapAmount[0]:c.snapAmount;o=V(o,v,c.snapOffset)}switch(n.dir){case"x":var x=e("#mCSB_"+s.idx+"_dragger_horizontal"),_="left",w=h[0].offsetLeft,S=[f.width()-h.outerWidth(!1),x.parent().width()-x.width()],b=[o,0===o?0:o/s.scrollRatio.x],y=p[1],B=g[1],T=y>0?y/s.scrollRatio.x:0,k=B>0?B/s.scrollRatio.x:0;break;case"y":var x=e("#mCSB_"+s.idx+"_dragger_vertical"),_="top",w=h[0].offsetTop,S=[f.height()-h.outerHeight(!1),x.parent().height()-x.height()],b=[o,0===o?0:o/s.scrollRatio.y],y=p[0],B=g[0],T=y>0?y/s.scrollRatio.y:0,k=B>0?B/s.scrollRatio.y:0}b[1]<0||0===b[0]&&0===b[1]?b=[0,0]:b[1]>=S[1]?b=[S[0],S[1]]:b[0]=-b[0],t[0].mcs||(l(),i("onInit")&&c.callbacks.onInit.call(t[0])),clearTimeout(h[0].onCompleteTimeout),J(x[0],_,Math.round(b[1]),u[1],n.scrollEasing),!s.tweenRunning&&(0===w&&b[0]>=0||w===S[0]&&b[0]<=S[0])||J(h[0],_,Math.round(b[0]),u[0],n.scrollEasing,n.overwrite,{onStart:function(){n.callbacks&&n.onStart&&!s.tweenRunning&&(i("onScrollStart")&&(l(),c.callbacks.onScrollStart.call(t[0])),s.tweenRunning=!0,C(x),s.cbOffsets=r())},onUpdate:function(){n.callbacks&&n.onUpdate&&i("whileScrolling")&&(l(),c.callbacks.whileScrolling.call(t[0]))},onComplete:function(){if(n.callbacks&&n.onComplete){"yx"===c.axis&&clearTimeout(h[0].onCompleteTimeout);var e=h[0].idleTimer||0;h[0].onCompleteTimeout=setTimeout(function(){i("onScroll")&&(l(),c.callbacks.onScroll.call(t[0])),i("onTotalScroll")&&b[1]>=S[1]-T&&s.cbOffsets[0]&&(l(),c.callbacks.onTotalScroll.call(t[0])),i("onTotalScrollBack")&&b[1]<=k&&s.cbOffsets[1]&&(l(),c.callbacks.onTotalScrollBack.call(t[0])),s.tweenRunning=!1,h[0].idleTimer=0,C(x,"hide")},e)}}})}},J=function(e,t,o,a,n,i,r){function l(){S.stop||(x||m.call(),x=K()-v,s(),x>=S.time&&(S.time=x>S.time?x+f-(x-S.time):x+f-1,S.time<x+1&&(S.time=x+1)),S.time<a?S.id=h(l):g.call())}function s(){a>0?(S.currVal=u(S.time,_,b,a,n),w[t]=Math.round(S.currVal)+"px"):w[t]=o+"px",p.call()}function c(){f=1e3/60,S.time=x+f,h=window.requestAnimationFrame?window.requestAnimationFrame:function(e){return s(),setTimeout(e,.01)},S.id=h(l)}function d(){null!=S.id&&(window.requestAnimationFrame?window.cancelAnimationFrame(S.id):clearTimeout(S.id),S.id=null)}function u(e,t,o,a,n){switch(n){case"linear":case"mcsLinear":return o*e/a+t;case"mcsLinearOut":return e/=a,e--,o*Math.sqrt(1-e*e)+t;case"easeInOutSmooth":return e/=a/2,1>e?o/2*e*e+t:(e--,-o/2*(e*(e-2)-1)+t);case"easeInOutStrong":return e/=a/2,1>e?o/2*Math.pow(2,10*(e-1))+t:(e--,o/2*(-Math.pow(2,-10*e)+2)+t);case"easeInOut":case"mcsEaseInOut":return e/=a/2,1>e?o/2*e*e*e+t:(e-=2,o/2*(e*e*e+2)+t);case"easeOutSmooth":return e/=a,e--,-o*(e*e*e*e-1)+t;case"easeOutStrong":return o*(-Math.pow(2,-10*e/a)+1)+t;case"easeOut":case"mcsEaseOut":default:var i=(e/=a)*e,r=i*e;return t+o*(.499999999999997*r*i+-2.5*i*i+5.5*r+-6.5*i+4*e)}}e._mTween||(e._mTween={top:{},left:{}});var f,h,r=r||{},m=r.onStart||function(){},p=r.onUpdate||function(){},g=r.onComplete||function(){},v=K(),x=0,_=e.offsetTop,w=e.style,S=e._mTween[t];"left"===t&&(_=e.offsetLeft);var b=o-_;S.stop=0,"none"!==i&&d(),c()},K=function(){return window.performance&&window.performance.now?window.performance.now():window.performance&&window.performance.webkitNow?window.performance.webkitNow():Date.now?Date.now():(new Date).getTime()},Z=function(){var e=this;e._mTween||(e._mTween={top:{},left:{}});for(var t=["top","left"],o=0;o<t.length;o++){var a=t[o];e._mTween[a].id&&(window.requestAnimationFrame?window.cancelAnimationFrame(e._mTween[a].id):clearTimeout(e._mTween[a].id),e._mTween[a].id=null,e._mTween[a].stop=1)}},$=function(e,t){try{delete e[t]}catch(o){e[t]=null}},ee=function(e){return!(e.which&&1!==e.which)},te=function(e){var t=e.originalEvent.pointerType;return!(t&&"touch"!==t&&2!==t)},oe=function(e){return!isNaN(parseFloat(e))&&isFinite(e)},ae=function(e){var t=e.parents(".mCSB_container");return[e.offset().top-t.offset().top,e.offset().left-t.offset().left]},ne=function(){function e(){var e=["webkit","moz","ms","o"];if("hidden"in document)return"hidden";for(var t=0;t<e.length;t++)if(e[t]+"Hidden"in document)return e[t]+"Hidden";return null}var t=e();return t?document[t]:!1};e.fn[o]=function(t){return u[t]?u[t].apply(this,Array.prototype.slice.call(arguments,1)):"object"!=typeof t&&t?void e.error("Method "+t+" does not exist"):u.init.apply(this,arguments)},e[o]=function(t){return u[t]?u[t].apply(this,Array.prototype.slice.call(arguments,1)):"object"!=typeof t&&t?void e.error("Method "+t+" does not exist"):u.init.apply(this,arguments)},e[o].defaults=i,window[o]=!0,e(window).bind("load",function(){e(n)[o](),e.extend(e.expr[":"],{mcsInView:e.expr[":"].mcsInView||function(t){var o,a,n=e(t),i=n.parents(".mCSB_container");if(i.length)return o=i.parent(),a=[i[0].offsetTop,i[0].offsetLeft],a[0]+ae(n)[0]>=0&&a[0]+ae(n)[0]<o.height()-n.outerHeight(!1)&&a[1]+ae(n)[1]>=0&&a[1]+ae(n)[1]<o.width()-n.outerWidth(!1)},mcsInSight:e.expr[":"].mcsInSight||function(t,o,a){var n,i,r,l,s=e(t),c=s.parents(".mCSB_container"),d="exact"===a[3]?[[1,0],[1,0]]:[[.9,.1],[.6,.4]];if(c.length)return n=[s.outerHeight(!1),s.outerWidth(!1)],r=[c[0].offsetTop+ae(s)[0],c[0].offsetLeft+ae(s)[1]],i=[c.parent()[0].offsetHeight,c.parent()[0].offsetWidth],l=[n[0]<i[0]?d[0]:d[1],n[1]<i[1]?d[0]:d[1]],r[0]-i[0]*l[0][0]<0&&r[0]+n[0]-i[0]*l[0][1]>=0&&r[1]-i[1]*l[1][0]<0&&r[1]+n[1]-i[1]*l[1][1]>=0},mcsOverflow:e.expr[":"].mcsOverflow||function(t){var o=e(t).data(a);if(o)return o.overflowed[0]||o.overflowed[1]}})})})});
/*
     _ _      _       _
 ___| (_) ___| | __  (_)___
/ __| | |/ __| |/ /  | / __|
\__ \ | | (__|   < _ | \__ \
|___/_|_|\___|_|\_(_)/ |___/
                   |__/

 Version: 1.6.0
  Author: Ken Wheeler
 Website: http://kenwheeler.github.io
    Docs: http://kenwheeler.github.io/slick
    Repo: http://github.com/kenwheeler/slick
  Issues: http://github.com/kenwheeler/slick/issues

 */
/* global window, document, define, jQuery, setInterval, clearInterval */
(function(factory) {
    'use strict';
    if (typeof define === 'function' && define.amd) {
        define(['jquery'], factory);
    } else if (typeof exports !== 'undefined') {
        module.exports = factory(require('jquery'));
    } else {
        factory(jQuery);
    }

}(function($) {
    'use strict';
    var Slick = window.Slick || {};

    Slick = (function() {

        var instanceUid = 0;

        function Slick(element, settings) {

            var _ = this,
                dataSettings;

            _.defaults = {
                accessibility: true,
                adaptiveHeight: false,
                appendArrows: $(element),
                appendDots: $(element),
                arrows: true,
                asNavFor: null,
                prevArrow: '<button type="button" data-role="none" class="slick-prev" aria-label="Previous" tabindex="0" role="button">Previous</button>',
                nextArrow: '<button type="button" data-role="none" class="slick-next" aria-label="Next" tabindex="0" role="button">Next</button>',
                autoplay: false,
                autoplaySpeed: 3000,
                centerMode: false,
                centerPadding: '50px',
                cssEase: 'ease',
                customPaging: function(slider, i) {
                    return $('<button type="button" data-role="none" role="button" tabindex="0" />').text(i + 1);
                },
                dots: false,
                dotsClass: 'slick-dots',
                draggable: true,
                easing: 'linear',
                edgeFriction: 0.35,
                fade: false,
                focusOnSelect: false,
                infinite: true,
                initialSlide: 0,
                lazyLoad: 'ondemand',
                mobileFirst: false,
                pauseOnHover: true,
                pauseOnFocus: true,
                pauseOnDotsHover: false,
                respondTo: 'window',
                responsive: null,
                rows: 1,
                rtl: false,
                slide: '',
                slidesPerRow: 1,
                slidesToShow: 1,
                slidesToScroll: 1,
                speed: 500,
                swipe: true,
                swipeToSlide: false,
                touchMove: true,
                touchThreshold: 5,
                useCSS: true,
                useTransform: true,
                variableWidth: false,
                vertical: false,
                verticalSwiping: false,
                waitForAnimate: true,
                zIndex: 1000
            };

            _.initials = {
                animating: false,
                dragging: false,
                autoPlayTimer: null,
                currentDirection: 0,
                currentLeft: null,
                currentSlide: 0,
                direction: 1,
                $dots: null,
                listWidth: null,
                listHeight: null,
                loadIndex: 0,
                $nextArrow: null,
                $prevArrow: null,
                slideCount: null,
                slideWidth: null,
                $slideTrack: null,
                $slides: null,
                sliding: false,
                slideOffset: 0,
                swipeLeft: null,
                $list: null,
                touchObject: {},
                transformsEnabled: false,
                unslicked: false
            };

            $.extend(_, _.initials);

            _.activeBreakpoint = null;
            _.animType = null;
            _.animProp = null;
            _.breakpoints = [];
            _.breakpointSettings = [];
            _.cssTransitions = false;
            _.focussed = false;
            _.interrupted = false;
            _.hidden = 'hidden';
            _.paused = true;
            _.positionProp = null;
            _.respondTo = null;
            _.rowCount = 1;
            _.shouldClick = true;
            _.$slider = $(element);
            _.$slidesCache = null;
            _.transformType = null;
            _.transitionType = null;
            _.visibilityChange = 'visibilitychange';
            _.windowWidth = 0;
            _.windowTimer = null;

            dataSettings = $(element).data('slick') || {};

            _.options = $.extend({}, _.defaults, settings, dataSettings);

            _.currentSlide = _.options.initialSlide;

            _.originalSettings = _.options;

            if (typeof document.mozHidden !== 'undefined') {
                _.hidden = 'mozHidden';
                _.visibilityChange = 'mozvisibilitychange';
            } else if (typeof document.webkitHidden !== 'undefined') {
                _.hidden = 'webkitHidden';
                _.visibilityChange = 'webkitvisibilitychange';
            }

            _.autoPlay = $.proxy(_.autoPlay, _);
            _.autoPlayClear = $.proxy(_.autoPlayClear, _);
            _.autoPlayIterator = $.proxy(_.autoPlayIterator, _);
            _.changeSlide = $.proxy(_.changeSlide, _);
            _.clickHandler = $.proxy(_.clickHandler, _);
            _.selectHandler = $.proxy(_.selectHandler, _);
            _.setPosition = $.proxy(_.setPosition, _);
            _.swipeHandler = $.proxy(_.swipeHandler, _);
            _.dragHandler = $.proxy(_.dragHandler, _);
            _.keyHandler = $.proxy(_.keyHandler, _);

            _.instanceUid = instanceUid++;

            // A simple way to check for HTML strings
            // Strict HTML recognition (must start with <)
            // Extracted from jQuery v1.11 source
            _.htmlExpr = /^(?:\s*(<[\w\W]+>)[^>]*)$/;


            _.registerBreakpoints();
            _.init(true);

        }

        return Slick;

    }());

    Slick.prototype.activateADA = function() {
        var _ = this;

        _.$slideTrack.find('.slick-active').attr({
            'aria-hidden': 'false'
        }).find('a, input, button, select').attr({
            'tabindex': '0'
        });

    };

    Slick.prototype.addSlide = Slick.prototype.slickAdd = function(markup, index, addBefore) {

        var _ = this;

        if (typeof(index) === 'boolean') {
            addBefore = index;
            index = null;
        } else if (index < 0 || (index >= _.slideCount)) {
            return false;
        }

        _.unload();

        if (typeof(index) === 'number') {
            if (index === 0 && _.$slides.length === 0) {
                $(markup).appendTo(_.$slideTrack);
            } else if (addBefore) {
                $(markup).insertBefore(_.$slides.eq(index));
            } else {
                $(markup).insertAfter(_.$slides.eq(index));
            }
        } else {
            if (addBefore === true) {
                $(markup).prependTo(_.$slideTrack);
            } else {
                $(markup).appendTo(_.$slideTrack);
            }
        }

        _.$slides = _.$slideTrack.children(this.options.slide);

        _.$slideTrack.children(this.options.slide).detach();

        _.$slideTrack.append(_.$slides);

        _.$slides.each(function(index, element) {
            $(element).attr('data-slick-index', index);
        });

        _.$slidesCache = _.$slides;

        _.reinit();

    };

    Slick.prototype.animateHeight = function() {
        var _ = this;
        if (_.options.slidesToShow === 1 && _.options.adaptiveHeight === true && _.options.vertical === false) {
            var targetHeight = _.$slides.eq(_.currentSlide).outerHeight(true);
            _.$list.animate({
                height: targetHeight
            }, _.options.speed);
        }
    };

    Slick.prototype.animateSlide = function(targetLeft, callback) {

        var animProps = {},
            _ = this;

        _.animateHeight();

        if (_.options.rtl === true && _.options.vertical === false) {
            targetLeft = -targetLeft;
        }
        if (_.transformsEnabled === false) {
            if (_.options.vertical === false) {
                _.$slideTrack.animate({
                    left: targetLeft
                }, _.options.speed, _.options.easing, callback);
            } else {
                _.$slideTrack.animate({
                    top: targetLeft
                }, _.options.speed, _.options.easing, callback);
            }

        } else {

            if (_.cssTransitions === false) {
                if (_.options.rtl === true) {
                    _.currentLeft = -(_.currentLeft);
                }
                $({
                    animStart: _.currentLeft
                }).animate({
                    animStart: targetLeft
                }, {
                    duration: _.options.speed,
                    easing: _.options.easing,
                    step: function(now) {
                        now = Math.ceil(now);
                        if (_.options.vertical === false) {
                            animProps[_.animType] = 'translate(' +
                                now + 'px, 0px)';
                            _.$slideTrack.css(animProps);
                        } else {
                            animProps[_.animType] = 'translate(0px,' +
                                now + 'px)';
                            _.$slideTrack.css(animProps);
                        }
                    },
                    complete: function() {
                        if (callback) {
                            callback.call();
                        }
                    }
                });

            } else {

                _.applyTransition();
                targetLeft = Math.ceil(targetLeft);

                if (_.options.vertical === false) {
                    animProps[_.animType] = 'translate3d(' + targetLeft + 'px, 0px, 0px)';
                } else {
                    animProps[_.animType] = 'translate3d(0px,' + targetLeft + 'px, 0px)';
                }
                _.$slideTrack.css(animProps);

                if (callback) {
                    setTimeout(function() {

                        _.disableTransition();

                        callback.call();
                    }, _.options.speed);
                }

            }

        }

    };

    Slick.prototype.getNavTarget = function() {

        var _ = this,
            asNavFor = _.options.asNavFor;

        if (asNavFor && asNavFor !== null) {
            asNavFor = $(asNavFor).not(_.$slider);
        }

        return asNavFor;

    };

    Slick.prototype.asNavFor = function(index) {

        var _ = this,
            asNavFor = _.getNavTarget();

        if (asNavFor !== null && typeof asNavFor === 'object') {
            asNavFor.each(function() {
                var target = $(this).slick('getSlick');
                if (!target.unslicked) {
                    target.slideHandler(index, true);
                }
            });
        }

    };

    Slick.prototype.applyTransition = function(slide) {

        var _ = this,
            transition = {};

        if (_.options.fade === false) {
            transition[_.transitionType] = _.transformType + ' ' + _.options.speed + 'ms ' + _.options.cssEase;
        } else {
            transition[_.transitionType] = 'opacity ' + _.options.speed + 'ms ' + _.options.cssEase;
        }

        if (_.options.fade === false) {
            _.$slideTrack.css(transition);
        } else {
            _.$slides.eq(slide).css(transition);
        }

    };

    Slick.prototype.autoPlay = function() {

        var _ = this;

        _.autoPlayClear();

        if (_.slideCount > _.options.slidesToShow) {
            _.autoPlayTimer = setInterval(_.autoPlayIterator, _.options.autoplaySpeed);
        }

    };

    Slick.prototype.autoPlayClear = function() {

        var _ = this;

        if (_.autoPlayTimer) {
            clearInterval(_.autoPlayTimer);
        }

    };

    Slick.prototype.autoPlayIterator = function() {

        var _ = this,
            slideTo = _.currentSlide + _.options.slidesToScroll;

        if (!_.paused && !_.interrupted && !_.focussed) {

            if (_.options.infinite === false) {

                if (_.direction === 1 && (_.currentSlide + 1) === (_.slideCount - 1)) {
                    _.direction = 0;
                } else if (_.direction === 0) {

                    slideTo = _.currentSlide - _.options.slidesToScroll;

                    if (_.currentSlide - 1 === 0) {
                        _.direction = 1;
                    }

                }

            }

            _.slideHandler(slideTo);

        }

    };

    Slick.prototype.buildArrows = function() {

        var _ = this;

        if (_.options.arrows === true) {

            _.$prevArrow = $(_.options.prevArrow).addClass('slick-arrow');
            _.$nextArrow = $(_.options.nextArrow).addClass('slick-arrow');

            if (_.slideCount > _.options.slidesToShow) {

                _.$prevArrow.removeClass('slick-hidden').removeAttr('aria-hidden tabindex');
                _.$nextArrow.removeClass('slick-hidden').removeAttr('aria-hidden tabindex');

                if (_.htmlExpr.test(_.options.prevArrow)) {
                    _.$prevArrow.prependTo(_.options.appendArrows);
                }

                if (_.htmlExpr.test(_.options.nextArrow)) {
                    _.$nextArrow.appendTo(_.options.appendArrows);
                }

                if (_.options.infinite !== true) {
                    _.$prevArrow
                        .addClass('slick-disabled')
                        .attr('aria-disabled', 'true');
                }

            } else {

                _.$prevArrow.add(_.$nextArrow)

                .addClass('slick-hidden')
                    .attr({
                        'aria-disabled': 'true',
                        'tabindex': '-1'
                    });

            }

        }

    };

    Slick.prototype.buildDots = function() {

        var _ = this,
            i, dot;

        if (_.options.dots === true && _.slideCount > _.options.slidesToShow) {

            _.$slider.addClass('slick-dotted');

            dot = $('<ul />').addClass(_.options.dotsClass);

            for (i = 0; i <= _.getDotCount(); i += 1) {
                dot.append($('<li />').append(_.options.customPaging.call(this, _, i)));
            }

            _.$dots = dot.appendTo(_.options.appendDots);

            _.$dots.find('li').first().addClass('slick-active').attr('aria-hidden', 'false');

        }

    };

    Slick.prototype.buildOut = function() {

        var _ = this;

        _.$slides =
            _.$slider
            .children(_.options.slide + ':not(.slick-cloned)')
            .addClass('slick-slide');

        _.slideCount = _.$slides.length;

        _.$slides.each(function(index, element) {
            $(element)
                .attr('data-slick-index', index)
                .data('originalStyling', $(element).attr('style') || '');
        });

        _.$slider.addClass('slick-slider');

        _.$slideTrack = (_.slideCount === 0) ?
            $('<div class="slick-track"/>').appendTo(_.$slider) :
            _.$slides.wrapAll('<div class="slick-track"/>').parent();

        _.$list = _.$slideTrack.wrap(
            '<div aria-live="polite" class="slick-list"/>').parent();
        _.$slideTrack.css('opacity', 0);

        if (_.options.centerMode === true || _.options.swipeToSlide === true) {
            _.options.slidesToScroll = 1;
        }

        $('img[data-lazy]', _.$slider).not('[src]').addClass('slick-loading');

        _.setupInfinite();

        _.buildArrows();

        _.buildDots();

        _.updateDots();


        _.setSlideClasses(typeof _.currentSlide === 'number' ? _.currentSlide : 0);

        if (_.options.draggable === true) {
            _.$list.addClass('draggable');
        }

    };

    Slick.prototype.buildRows = function() {

        var _ = this,
            a, b, c, newSlides, numOfSlides, originalSlides, slidesPerSection;

        newSlides = document.createDocumentFragment();
        originalSlides = _.$slider.children();

        if (_.options.rows > 1) {

            slidesPerSection = _.options.slidesPerRow * _.options.rows;
            numOfSlides = Math.ceil(
                originalSlides.length / slidesPerSection
            );

            for (a = 0; a < numOfSlides; a++) {
                var slide = document.createElement('div');
                for (b = 0; b < _.options.rows; b++) {
                    var row = document.createElement('div');
                    for (c = 0; c < _.options.slidesPerRow; c++) {
                        var target = (a * slidesPerSection + ((b * _.options.slidesPerRow) + c));
                        if (originalSlides.get(target)) {
                            row.appendChild(originalSlides.get(target));
                        }
                    }
                    slide.appendChild(row);
                }
                newSlides.appendChild(slide);
            }

            _.$slider.empty().append(newSlides);
            _.$slider.children().children().children()
                .css({
                    'width': (100 / _.options.slidesPerRow) + '%',
                    'display': 'inline-block'
                });

        }

    };

    Slick.prototype.checkResponsive = function(initial, forceUpdate) {

        var _ = this,
            breakpoint, targetBreakpoint, respondToWidth, triggerBreakpoint = false;
        var sliderWidth = _.$slider.width();
        var windowWidth = window.innerWidth || $(window).width();

        if (_.respondTo === 'window') {
            respondToWidth = windowWidth;
        } else if (_.respondTo === 'slider') {
            respondToWidth = sliderWidth;
        } else if (_.respondTo === 'min') {
            respondToWidth = Math.min(windowWidth, sliderWidth);
        }

        if (_.options.responsive &&
            _.options.responsive.length &&
            _.options.responsive !== null) {

            targetBreakpoint = null;

            for (breakpoint in _.breakpoints) {
                if (_.breakpoints.hasOwnProperty(breakpoint)) {
                    if (_.originalSettings.mobileFirst === false) {
                        if (respondToWidth < _.breakpoints[breakpoint]) {
                            targetBreakpoint = _.breakpoints[breakpoint];
                        }
                    } else {
                        if (respondToWidth > _.breakpoints[breakpoint]) {
                            targetBreakpoint = _.breakpoints[breakpoint];
                        }
                    }
                }
            }

            if (targetBreakpoint !== null) {
                if (_.activeBreakpoint !== null) {
                    if (targetBreakpoint !== _.activeBreakpoint || forceUpdate) {
                        _.activeBreakpoint =
                            targetBreakpoint;
                        if (_.breakpointSettings[targetBreakpoint] === 'unslick') {
                            _.unslick(targetBreakpoint);
                        } else {
                            _.options = $.extend({}, _.originalSettings,
                                _.breakpointSettings[
                                    targetBreakpoint]);
                            if (initial === true) {
                                _.currentSlide = _.options.initialSlide;
                            }
                            _.refresh(initial);
                        }
                        triggerBreakpoint = targetBreakpoint;
                    }
                } else {
                    _.activeBreakpoint = targetBreakpoint;
                    if (_.breakpointSettings[targetBreakpoint] === 'unslick') {
                        _.unslick(targetBreakpoint);
                    } else {
                        _.options = $.extend({}, _.originalSettings,
                            _.breakpointSettings[
                                targetBreakpoint]);
                        if (initial === true) {
                            _.currentSlide = _.options.initialSlide;
                        }
                        _.refresh(initial);
                    }
                    triggerBreakpoint = targetBreakpoint;
                }
            } else {
                if (_.activeBreakpoint !== null) {
                    _.activeBreakpoint = null;
                    _.options = _.originalSettings;
                    if (initial === true) {
                        _.currentSlide = _.options.initialSlide;
                    }
                    _.refresh(initial);
                    triggerBreakpoint = targetBreakpoint;
                }
            }

            // only trigger breakpoints during an actual break. not on initialize.
            if (!initial && triggerBreakpoint !== false) {
                _.$slider.trigger('breakpoint', [_, triggerBreakpoint]);
            }
        }

    };

    Slick.prototype.changeSlide = function(event, dontAnimate) {

        var _ = this,
            $target = $(event.currentTarget),
            indexOffset, slideOffset, unevenOffset;

        // If target is a link, prevent default action.
        if ($target.is('a')) {
            event.preventDefault();
        }

        // If target is not the <li> element (ie: a child), find the <li>.
        if (!$target.is('li')) {
            $target = $target.closest('li');
        }

        unevenOffset = (_.slideCount % _.options.slidesToScroll !== 0);
        indexOffset = unevenOffset ? 0 : (_.slideCount - _.currentSlide) % _.options.slidesToScroll;

        switch (event.data.message) {

            case 'previous':
                slideOffset = indexOffset === 0 ? _.options.slidesToScroll : _.options.slidesToShow - indexOffset;
                if (_.slideCount > _.options.slidesToShow) {
                    _.slideHandler(_.currentSlide - slideOffset, false, dontAnimate);
                }
                break;

            case 'next':
                slideOffset = indexOffset === 0 ? _.options.slidesToScroll : indexOffset;
                if (_.slideCount > _.options.slidesToShow) {
                    _.slideHandler(_.currentSlide + slideOffset, false, dontAnimate);
                }
                break;

            case 'index':
                var index = event.data.index === 0 ? 0 :
                    event.data.index || $target.index() * _.options.slidesToScroll;

                _.slideHandler(_.checkNavigable(index), false, dontAnimate);
                $target.children().trigger('focus');
                break;

            default:
                return;
        }

    };

    Slick.prototype.checkNavigable = function(index) {

        var _ = this,
            navigables, prevNavigable;

        navigables = _.getNavigableIndexes();
        prevNavigable = 0;
        if (index > navigables[navigables.length - 1]) {
            index = navigables[navigables.length - 1];
        } else {
            for (var n in navigables) {
                if (index < navigables[n]) {
                    index = prevNavigable;
                    break;
                }
                prevNavigable = navigables[n];
            }
        }

        return index;
    };

    Slick.prototype.cleanUpEvents = function() {

        var _ = this;

        if (_.options.dots && _.$dots !== null) {

            $('li', _.$dots)
                .off('click.slick', _.changeSlide)
                .off('mouseenter.slick', $.proxy(_.interrupt, _, true))
                .off('mouseleave.slick', $.proxy(_.interrupt, _, false));

        }

        _.$slider.off('focus.slick blur.slick');

        if (_.options.arrows === true && _.slideCount > _.options.slidesToShow) {
            _.$prevArrow && _.$prevArrow.off('click.slick', _.changeSlide);
            _.$nextArrow && _.$nextArrow.off('click.slick', _.changeSlide);
        }

        _.$list.off('touchstart.slick mousedown.slick', _.swipeHandler);
        _.$list.off('touchmove.slick mousemove.slick', _.swipeHandler);
        _.$list.off('touchend.slick mouseup.slick', _.swipeHandler);
        _.$list.off('touchcancel.slick mouseleave.slick', _.swipeHandler);

        _.$list.off('click.slick', _.clickHandler);

        $(document).off(_.visibilityChange, _.visibility);

        _.cleanUpSlideEvents();

        if (_.options.accessibility === true) {
            _.$list.off('keydown.slick', _.keyHandler);
        }

        if (_.options.focusOnSelect === true) {
            $(_.$slideTrack).children().off('click.slick', _.selectHandler);
        }

        $(window).off('orientationchange.slick.slick-' + _.instanceUid, _.orientationChange);

        $(window).off('resize.slick.slick-' + _.instanceUid, _.resize);

        $('[draggable!=true]', _.$slideTrack).off('dragstart', _.preventDefault);

        $(window).off('load.slick.slick-' + _.instanceUid, _.setPosition);
        $(document).off('ready.slick.slick-' + _.instanceUid, _.setPosition);

    };

    Slick.prototype.cleanUpSlideEvents = function() {

        var _ = this;

        _.$list.off('mouseenter.slick', $.proxy(_.interrupt, _, true));
        _.$list.off('mouseleave.slick', $.proxy(_.interrupt, _, false));

    };

    Slick.prototype.cleanUpRows = function() {

        var _ = this,
            originalSlides;

        if (_.options.rows > 1) {
            originalSlides = _.$slides.children().children();
            originalSlides.removeAttr('style');
            _.$slider.empty().append(originalSlides);
        }

    };

    Slick.prototype.clickHandler = function(event) {

        var _ = this;

        if (_.shouldClick === false) {
            event.stopImmediatePropagation();
            event.stopPropagation();
            event.preventDefault();
        }

    };

    Slick.prototype.destroy = function(refresh) {

        var _ = this;

        _.autoPlayClear();

        _.touchObject = {};

        _.cleanUpEvents();

        $('.slick-cloned', _.$slider).detach();

        if (_.$dots) {
            _.$dots.remove();
        }


        if (_.$prevArrow && _.$prevArrow.length) {

            _.$prevArrow
                .removeClass('slick-disabled slick-arrow slick-hidden')
                .removeAttr('aria-hidden aria-disabled tabindex')
                .css('display', '');

            if (_.htmlExpr.test(_.options.prevArrow)) {
                _.$prevArrow.remove();
            }
        }

        if (_.$nextArrow && _.$nextArrow.length) {

            _.$nextArrow
                .removeClass('slick-disabled slick-arrow slick-hidden')
                .removeAttr('aria-hidden aria-disabled tabindex')
                .css('display', '');

            if (_.htmlExpr.test(_.options.nextArrow)) {
                _.$nextArrow.remove();
            }

        }


        if (_.$slides) {

            _.$slides
                .removeClass('slick-slide slick-active slick-center slick-visible slick-current')
                .removeAttr('aria-hidden')
                .removeAttr('data-slick-index')
                .each(function() {
                    $(this).attr('style', $(this).data('originalStyling'));
                });

            _.$slideTrack.children(this.options.slide).detach();

            _.$slideTrack.detach();

            _.$list.detach();

            _.$slider.append(_.$slides);
        }

        _.cleanUpRows();

        _.$slider.removeClass('slick-slider');
        _.$slider.removeClass('slick-initialized');
        _.$slider.removeClass('slick-dotted');

        _.unslicked = true;

        if (!refresh) {
            _.$slider.trigger('destroy', [_]);
        }

    };

    Slick.prototype.disableTransition = function(slide) {

        var _ = this,
            transition = {};

        transition[_.transitionType] = '';

        if (_.options.fade === false) {
            _.$slideTrack.css(transition);
        } else {
            _.$slides.eq(slide).css(transition);
        }

    };

    Slick.prototype.fadeSlide = function(slideIndex, callback) {

        var _ = this;

        if (_.cssTransitions === false) {

            _.$slides.eq(slideIndex).css({
                zIndex: _.options.zIndex
            });

            _.$slides.eq(slideIndex).animate({
                opacity: 1
            }, _.options.speed, _.options.easing, callback);

        } else {

            _.applyTransition(slideIndex);

            _.$slides.eq(slideIndex).css({
                opacity: 1,
                zIndex: _.options.zIndex
            });

            if (callback) {
                setTimeout(function() {

                    _.disableTransition(slideIndex);

                    callback.call();
                }, _.options.speed);
            }

        }

    };

    Slick.prototype.fadeSlideOut = function(slideIndex) {

        var _ = this;

        if (_.cssTransitions === false) {

            _.$slides.eq(slideIndex).animate({
                opacity: 0,
                zIndex: _.options.zIndex - 2
            }, _.options.speed, _.options.easing);

        } else {

            _.applyTransition(slideIndex);

            _.$slides.eq(slideIndex).css({
                opacity: 0,
                zIndex: _.options.zIndex - 2
            });

        }

    };

    Slick.prototype.filterSlides = Slick.prototype.slickFilter = function(filter) {

        var _ = this;

        if (filter !== null) {

            _.$slidesCache = _.$slides;

            _.unload();

            _.$slideTrack.children(this.options.slide).detach();

            _.$slidesCache.filter(filter).appendTo(_.$slideTrack);

            _.reinit();

        }

    };

    Slick.prototype.focusHandler = function() {

        var _ = this;

        _.$slider
            .off('focus.slick blur.slick')
            .on('focus.slick blur.slick',
                '*:not(.slick-arrow)',
                function(event) {

                    event.stopImmediatePropagation();
                    var $sf = $(this);

                    setTimeout(function() {

                        if (_.options.pauseOnFocus) {
                            _.focussed = $sf.is(':focus');
                            _.autoPlay();
                        }

                    }, 0);

                });
    };

    Slick.prototype.getCurrent = Slick.prototype.slickCurrentSlide = function() {

        var _ = this;
        return _.currentSlide;

    };

    Slick.prototype.getDotCount = function() {

        var _ = this;

        var breakPoint = 0;
        var counter = 0;
        var pagerQty = 0;

        if (_.options.infinite === true) {
            while (breakPoint < _.slideCount) {
                ++pagerQty;
                breakPoint = counter + _.options.slidesToScroll;
                counter += _.options.slidesToScroll <= _.options.slidesToShow ? _.options.slidesToScroll : _.options.slidesToShow;
            }
        } else if (_.options.centerMode === true) {
            pagerQty = _.slideCount;
        } else if (!_.options.asNavFor) {
            pagerQty = 1 + Math.ceil((_.slideCount - _.options.slidesToShow) / _.options.slidesToScroll);
        } else {
            while (breakPoint < _.slideCount) {
                ++pagerQty;
                breakPoint = counter + _.options.slidesToScroll;
                counter += _.options.slidesToScroll <= _.options.slidesToShow ? _.options.slidesToScroll : _.options.slidesToShow;
            }
        }

        return pagerQty - 1;

    };

    Slick.prototype.getLeft = function(slideIndex) {

        var _ = this,
            targetLeft,
            verticalHeight,
            verticalOffset = 0,
            targetSlide;

        _.slideOffset = 0;
        verticalHeight = _.$slides.first().outerHeight(true);

        if (_.options.infinite === true) {
            if (_.slideCount > _.options.slidesToShow) {
                _.slideOffset = (_.slideWidth * _.options.slidesToShow) * -1;
                verticalOffset = (verticalHeight * _.options.slidesToShow) * -1;
            }
            if (_.slideCount % _.options.slidesToScroll !== 0) {
                if (slideIndex + _.options.slidesToScroll > _.slideCount && _.slideCount > _.options.slidesToShow) {
                    if (slideIndex > _.slideCount) {
                        _.slideOffset = ((_.options.slidesToShow - (slideIndex - _.slideCount)) * _.slideWidth) * -1;
                        verticalOffset = ((_.options.slidesToShow - (slideIndex - _.slideCount)) * verticalHeight) * -1;
                    } else {
                        _.slideOffset = ((_.slideCount % _.options.slidesToScroll) * _.slideWidth) * -1;
                        verticalOffset = ((_.slideCount % _.options.slidesToScroll) * verticalHeight) * -1;
                    }
                }
            }
        } else {
            if (slideIndex + _.options.slidesToShow > _.slideCount) {
                _.slideOffset = ((slideIndex + _.options.slidesToShow) - _.slideCount) * _.slideWidth;
                verticalOffset = ((slideIndex + _.options.slidesToShow) - _.slideCount) * verticalHeight;
            }
        }

        if (_.slideCount <= _.options.slidesToShow) {
            _.slideOffset = 0;
            verticalOffset = 0;
        }

        if (_.options.centerMode === true && _.options.infinite === true) {
            _.slideOffset += _.slideWidth * Math.floor(_.options.slidesToShow / 2) - _.slideWidth;
        } else if (_.options.centerMode === true) {
            _.slideOffset = 0;
            _.slideOffset += _.slideWidth * Math.floor(_.options.slidesToShow / 2);
        }

        if (_.options.vertical === false) {
            targetLeft = ((slideIndex * _.slideWidth) * -1) + _.slideOffset;
        } else {
            targetLeft = ((slideIndex * verticalHeight) * -1) + verticalOffset;
        }

        if (_.options.variableWidth === true) {

            if (_.slideCount <= _.options.slidesToShow || _.options.infinite === false) {
                targetSlide = _.$slideTrack.children('.slick-slide').eq(slideIndex);
            } else {
                targetSlide = _.$slideTrack.children('.slick-slide').eq(slideIndex + _.options.slidesToShow);
            }

            if (_.options.rtl === true) {
                if (targetSlide[0]) {
                    targetLeft = (_.$slideTrack.width() - targetSlide[0].offsetLeft - targetSlide.width()) * -1;
                } else {
                    targetLeft = 0;
                }
            } else {
                targetLeft = targetSlide[0] ? targetSlide[0].offsetLeft * -1 : 0;
            }

            if (_.options.centerMode === true) {
                if (_.slideCount <= _.options.slidesToShow || _.options.infinite === false) {
                    targetSlide = _.$slideTrack.children('.slick-slide').eq(slideIndex);
                } else {
                    targetSlide = _.$slideTrack.children('.slick-slide').eq(slideIndex + _.options.slidesToShow + 1);
                }

                if (_.options.rtl === true) {
                    if (targetSlide[0]) {
                        targetLeft = (_.$slideTrack.width() - targetSlide[0].offsetLeft - targetSlide.width()) * -1;
                    } else {
                        targetLeft = 0;
                    }
                } else {
                    targetLeft = targetSlide[0] ? targetSlide[0].offsetLeft * -1 : 0;
                }

                targetLeft += (_.$list.width() - targetSlide.outerWidth()) / 2;
            }
        }

        return targetLeft;

    };

    Slick.prototype.getOption = Slick.prototype.slickGetOption = function(option) {

        var _ = this;

        return _.options[option];

    };

    Slick.prototype.getNavigableIndexes = function() {

        var _ = this,
            breakPoint = 0,
            counter = 0,
            indexes = [],
            max;

        if (_.options.infinite === false) {
            max = _.slideCount;
        } else {
            breakPoint = _.options.slidesToScroll * -1;
            counter = _.options.slidesToScroll * -1;
            max = _.slideCount * 2;
        }

        while (breakPoint < max) {
            indexes.push(breakPoint);
            breakPoint = counter + _.options.slidesToScroll;
            counter += _.options.slidesToScroll <= _.options.slidesToShow ? _.options.slidesToScroll : _.options.slidesToShow;
        }

        return indexes;

    };

    Slick.prototype.getSlick = function() {

        return this;

    };

    Slick.prototype.getSlideCount = function() {

        var _ = this,
            slidesTraversed, swipedSlide, centerOffset;

        centerOffset = _.options.centerMode === true ? _.slideWidth * Math.floor(_.options.slidesToShow / 2) : 0;

        if (_.options.swipeToSlide === true) {
            _.$slideTrack.find('.slick-slide').each(function(index, slide) {
                if (slide.offsetLeft - centerOffset + ($(slide).outerWidth() / 2) > (_.swipeLeft * -1)) {
                    swipedSlide = slide;
                    return false;
                }
            });

            slidesTraversed = Math.abs($(swipedSlide).attr('data-slick-index') - _.currentSlide) || 1;

            return slidesTraversed;

        } else {
            return _.options.slidesToScroll;
        }

    };

    Slick.prototype.goTo = Slick.prototype.slickGoTo = function(slide, dontAnimate) {

        var _ = this;

        _.changeSlide({
            data: {
                message: 'index',
                index: parseInt(slide)
            }
        }, dontAnimate);

    };

    Slick.prototype.init = function(creation) {

        var _ = this;

        if (!$(_.$slider).hasClass('slick-initialized')) {

            $(_.$slider).addClass('slick-initialized');

            _.buildRows();
            _.buildOut();
            _.setProps();
            _.startLoad();
            _.loadSlider();
            _.initializeEvents();
            _.updateArrows();
            _.updateDots();
            _.checkResponsive(true);
            _.focusHandler();

        }

        if (creation) {
            _.$slider.trigger('init', [_]);
        }

        if (_.options.accessibility === true) {
            _.initADA();
        }

        if (_.options.autoplay) {

            _.paused = false;
            _.autoPlay();

        }

    };

    Slick.prototype.initADA = function() {
        var _ = this;
        _.$slides.add(_.$slideTrack.find('.slick-cloned')).attr({
            'aria-hidden': 'true',
            'tabindex': '-1'
        }).find('a, input, button, select').attr({
            'tabindex': '-1'
        });

        _.$slideTrack.attr('role', 'listbox');

        _.$slides.not(_.$slideTrack.find('.slick-cloned')).each(function(i) {
            $(this).attr({
                'role': 'option',
                'aria-describedby': 'slick-slide' + _.instanceUid + i + ''
            });
        });

        if (_.$dots !== null) {
            _.$dots.attr('role', 'tablist').find('li').each(function(i) {
                    $(this).attr({
                        'role': 'presentation',
                        'aria-selected': 'false',
                        'aria-controls': 'navigation' + _.instanceUid + i + '',
                        'id': 'slick-slide' + _.instanceUid + i + ''
                    });
                })
                .first().attr('aria-selected', 'true').end()
                .find('button').attr('role', 'button').end()
                .closest('div').attr('role', 'toolbar');
        }
        _.activateADA();

    };

    Slick.prototype.initArrowEvents = function() {

        var _ = this;

        if (_.options.arrows === true && _.slideCount > _.options.slidesToShow) {
            _.$prevArrow
                .off('click.slick')
                .on('click.slick', {
                    message: 'previous'
                }, _.changeSlide);
            _.$nextArrow
                .off('click.slick')
                .on('click.slick', {
                    message: 'next'
                }, _.changeSlide);
        }

    };

    Slick.prototype.initDotEvents = function() {

        var _ = this;

        if (_.options.dots === true && _.slideCount > _.options.slidesToShow) {
            $('li', _.$dots).on('click.slick', {
                message: 'index'
            }, _.changeSlide);
        }

        if (_.options.dots === true && _.options.pauseOnDotsHover === true) {

            $('li', _.$dots)
                .on('mouseenter.slick', $.proxy(_.interrupt, _, true))
                .on('mouseleave.slick', $.proxy(_.interrupt, _, false));

        }

    };

    Slick.prototype.initSlideEvents = function() {

        var _ = this;

        if (_.options.pauseOnHover) {

            _.$list.on('mouseenter.slick', $.proxy(_.interrupt, _, true));
            _.$list.on('mouseleave.slick', $.proxy(_.interrupt, _, false));

        }

    };

    Slick.prototype.initializeEvents = function() {

        var _ = this;

        _.initArrowEvents();

        _.initDotEvents();
        _.initSlideEvents();

        _.$list.on('touchstart.slick mousedown.slick', {
            action: 'start'
        }, _.swipeHandler);
        _.$list.on('touchmove.slick mousemove.slick', {
            action: 'move'
        }, _.swipeHandler);
        _.$list.on('touchend.slick mouseup.slick', {
            action: 'end'
        }, _.swipeHandler);
        _.$list.on('touchcancel.slick mouseleave.slick', {
            action: 'end'
        }, _.swipeHandler);

        _.$list.on('click.slick', _.clickHandler);

        $(document).on(_.visibilityChange, $.proxy(_.visibility, _));

        if (_.options.accessibility === true) {
            _.$list.on('keydown.slick', _.keyHandler);
        }

        if (_.options.focusOnSelect === true) {
            $(_.$slideTrack).children().on('click.slick', _.selectHandler);
        }

        $(window).on('orientationchange.slick.slick-' + _.instanceUid, $.proxy(_.orientationChange, _));

        $(window).on('resize.slick.slick-' + _.instanceUid, $.proxy(_.resize, _));

        $('[draggable!=true]', _.$slideTrack).on('dragstart', _.preventDefault);

        $(window).on('load.slick.slick-' + _.instanceUid, _.setPosition);
        $(document).on('ready.slick.slick-' + _.instanceUid, _.setPosition);

    };

    Slick.prototype.initUI = function() {

        var _ = this;

        if (_.options.arrows === true && _.slideCount > _.options.slidesToShow) {

            _.$prevArrow.show();
            _.$nextArrow.show();

        }

        if (_.options.dots === true && _.slideCount > _.options.slidesToShow) {

            _.$dots.show();

        }

    };

    Slick.prototype.keyHandler = function(event) {

        var _ = this;
        //Dont slide if the cursor is inside the form fields and arrow keys are pressed
        if (!event.target.tagName.match('TEXTAREA|INPUT|SELECT')) {
            if (event.keyCode === 37 && _.options.accessibility === true) {
                _.changeSlide({
                    data: {
                        message: _.options.rtl === true ? 'next' : 'previous'
                    }
                });
            } else if (event.keyCode === 39 && _.options.accessibility === true) {
                _.changeSlide({
                    data: {
                        message: _.options.rtl === true ? 'previous' : 'next'
                    }
                });
            }
        }

    };

    Slick.prototype.lazyLoad = function() {

        var _ = this,
            loadRange, cloneRange, rangeStart, rangeEnd;

        function loadImages(imagesScope) {

            $('img[data-lazy]', imagesScope).each(function() {

                var image = $(this),
                    imageSource = $(this).attr('data-lazy'),
                    imageToLoad = document.createElement('img');

                imageToLoad.onload = function() {

                    image
                        .animate({ opacity: 0 }, 100, function() {
                            image
                                .attr('src', imageSource)
                                .animate({ opacity: 1 }, 200, function() {
                                    image
                                        .removeAttr('data-lazy')
                                        .removeClass('slick-loading');
                                });
                            _.$slider.trigger('lazyLoaded', [_, image, imageSource]);
                        });

                };

                imageToLoad.onerror = function() {

                    image
                        .removeAttr('data-lazy')
                        .removeClass('slick-loading')
                        .addClass('slick-lazyload-error');

                    _.$slider.trigger('lazyLoadError', [_, image, imageSource]);

                };

                imageToLoad.src = imageSource;

            });

        }

        if (_.options.centerMode === true) {
            if (_.options.infinite === true) {
                rangeStart = _.currentSlide + (_.options.slidesToShow / 2 + 1);
                rangeEnd = rangeStart + _.options.slidesToShow + 2;
            } else {
                rangeStart = Math.max(0, _.currentSlide - (_.options.slidesToShow / 2 + 1));
                rangeEnd = 2 + (_.options.slidesToShow / 2 + 1) + _.currentSlide;
            }
        } else {
            rangeStart = _.options.infinite ? _.options.slidesToShow + _.currentSlide : _.currentSlide;
            rangeEnd = Math.ceil(rangeStart + _.options.slidesToShow);
            if (_.options.fade === true) {
                if (rangeStart > 0) rangeStart--;
                if (rangeEnd <= _.slideCount) rangeEnd++;
            }
        }

        loadRange = _.$slider.find('.slick-slide').slice(rangeStart, rangeEnd);
        loadImages(loadRange);

        if (_.slideCount <= _.options.slidesToShow) {
            cloneRange = _.$slider.find('.slick-slide');
            loadImages(cloneRange);
        } else
        if (_.currentSlide >= _.slideCount - _.options.slidesToShow) {
            cloneRange = _.$slider.find('.slick-cloned').slice(0, _.options.slidesToShow);
            loadImages(cloneRange);
        } else if (_.currentSlide === 0) {
            cloneRange = _.$slider.find('.slick-cloned').slice(_.options.slidesToShow * -1);
            loadImages(cloneRange);
        }

    };

    Slick.prototype.loadSlider = function() {

        var _ = this;

        _.setPosition();

        _.$slideTrack.css({
            opacity: 1
        });

        _.$slider.removeClass('slick-loading');

        _.initUI();

        if (_.options.lazyLoad === 'progressive') {
            _.progressiveLazyLoad();
        }

    };

    Slick.prototype.next = Slick.prototype.slickNext = function() {

        var _ = this;

        _.changeSlide({
            data: {
                message: 'next'
            }
        });

    };

    Slick.prototype.orientationChange = function() {

        var _ = this;

        _.checkResponsive();
        _.setPosition();

    };

    Slick.prototype.pause = Slick.prototype.slickPause = function() {

        var _ = this;

        _.autoPlayClear();
        _.paused = true;

    };

    Slick.prototype.play = Slick.prototype.slickPlay = function() {

        var _ = this;

        _.autoPlay();
        _.options.autoplay = true;
        _.paused = false;
        _.focussed = false;
        _.interrupted = false;

    };

    Slick.prototype.postSlide = function(index) {

        var _ = this;

        if (!_.unslicked) {

            _.$slider.trigger('afterChange', [_, index]);

            _.animating = false;

            _.setPosition();

            _.swipeLeft = null;

            if (_.options.autoplay) {
                _.autoPlay();
            }

            if (_.options.accessibility === true) {
                _.initADA();
            }

        }

    };

    Slick.prototype.prev = Slick.prototype.slickPrev = function() {

        var _ = this;

        _.changeSlide({
            data: {
                message: 'previous'
            }
        });

    };

    Slick.prototype.preventDefault = function(event) {

        event.preventDefault();

    };

    Slick.prototype.progressiveLazyLoad = function(tryCount) {

        tryCount = tryCount || 1;

        var _ = this,
            $imgsToLoad = $('img[data-lazy]', _.$slider),
            image,
            imageSource,
            imageToLoad;

        if ($imgsToLoad.length) {

            image = $imgsToLoad.first();
            imageSource = image.attr('data-lazy');
            imageToLoad = document.createElement('img');

            imageToLoad.onload = function() {

                image
                    .attr('src', imageSource)
                    .removeAttr('data-lazy')
                    .removeClass('slick-loading');

                if (_.options.adaptiveHeight === true) {
                    _.setPosition();
                }

                _.$slider.trigger('lazyLoaded', [_, image, imageSource]);
                _.progressiveLazyLoad();

            };

            imageToLoad.onerror = function() {

                if (tryCount < 3) {

                    /**
                     * try to load the image 3 times,
                     * leave a slight delay so we don't get
                     * servers blocking the request.
                     */
                    setTimeout(function() {
                        _.progressiveLazyLoad(tryCount + 1);
                    }, 500);

                } else {

                    image
                        .removeAttr('data-lazy')
                        .removeClass('slick-loading')
                        .addClass('slick-lazyload-error');

                    _.$slider.trigger('lazyLoadError', [_, image, imageSource]);

                    _.progressiveLazyLoad();

                }

            };

            imageToLoad.src = imageSource;

        } else {

            _.$slider.trigger('allImagesLoaded', [_]);

        }

    };

    Slick.prototype.refresh = function(initializing) {

        var _ = this,
            currentSlide, lastVisibleIndex;

        lastVisibleIndex = _.slideCount - _.options.slidesToShow;

        // in non-infinite sliders, we don't want to go past the
        // last visible index.
        if (!_.options.infinite && (_.currentSlide > lastVisibleIndex)) {
            _.currentSlide = lastVisibleIndex;
        }

        // if less slides than to show, go to start.
        if (_.slideCount <= _.options.slidesToShow) {
            _.currentSlide = 0;

        }

        currentSlide = _.currentSlide;

        _.destroy(true);

        $.extend(_, _.initials, { currentSlide: currentSlide });

        _.init();

        if (!initializing) {

            _.changeSlide({
                data: {
                    message: 'index',
                    index: currentSlide
                }
            }, false);

        }

    };

    Slick.prototype.registerBreakpoints = function() {

        var _ = this,
            breakpoint, currentBreakpoint, l,
            responsiveSettings = _.options.responsive || null;

        if ($.type(responsiveSettings) === 'array' && responsiveSettings.length) {

            _.respondTo = _.options.respondTo || 'window';

            for (breakpoint in responsiveSettings) {

                l = _.breakpoints.length - 1;
                currentBreakpoint = responsiveSettings[breakpoint].breakpoint;

                if (responsiveSettings.hasOwnProperty(breakpoint)) {

                    // loop through the breakpoints and cut out any existing
                    // ones with the same breakpoint number, we don't want dupes.
                    while (l >= 0) {
                        if (_.breakpoints[l] && _.breakpoints[l] === currentBreakpoint) {
                            _.breakpoints.splice(l, 1);
                        }
                        l--;
                    }

                    _.breakpoints.push(currentBreakpoint);
                    _.breakpointSettings[currentBreakpoint] = responsiveSettings[breakpoint].settings;

                }

            }

            _.breakpoints.sort(function(a, b) {
                return (_.options.mobileFirst) ? a - b : b - a;
            });

        }

    };

    Slick.prototype.reinit = function() {

        var _ = this;

        _.$slides =
            _.$slideTrack
            .children(_.options.slide)
            .addClass('slick-slide');

        _.slideCount = _.$slides.length;

        if (_.currentSlide >= _.slideCount && _.currentSlide !== 0) {
            _.currentSlide = _.currentSlide - _.options.slidesToScroll;
        }

        if (_.slideCount <= _.options.slidesToShow) {
            _.currentSlide = 0;
        }

        _.registerBreakpoints();

        _.setProps();
        _.setupInfinite();
        _.buildArrows();
        _.updateArrows();
        _.initArrowEvents();
        _.buildDots();
        _.updateDots();
        _.initDotEvents();
        _.cleanUpSlideEvents();
        _.initSlideEvents();

        _.checkResponsive(false, true);

        if (_.options.focusOnSelect === true) {
            $(_.$slideTrack).children().on('click.slick', _.selectHandler);
        }

        _.setSlideClasses(typeof _.currentSlide === 'number' ? _.currentSlide : 0);

        _.setPosition();
        _.focusHandler();

        _.paused = !_.options.autoplay;
        _.autoPlay();

        _.$slider.trigger('reInit', [_]);

    };

    Slick.prototype.resize = function() {

        var _ = this;

        if ($(window).width() !== _.windowWidth) {
            clearTimeout(_.windowDelay);
            _.windowDelay = window.setTimeout(function() {
                _.windowWidth = $(window).width();
                _.checkResponsive();
                if (!_.unslicked) { _.setPosition(); }
            }, 50);
        }
    };

    Slick.prototype.removeSlide = Slick.prototype.slickRemove = function(index, removeBefore, removeAll) {

        var _ = this;

        if (typeof(index) === 'boolean') {
            removeBefore = index;
            index = removeBefore === true ? 0 : _.slideCount - 1;
        } else {
            index = removeBefore === true ? --index : index;
        }

        if (_.slideCount < 1 || index < 0 || index > _.slideCount - 1) {
            return false;
        }

        _.unload();

        if (removeAll === true) {
            _.$slideTrack.children().remove();
        } else {
            _.$slideTrack.children(this.options.slide).eq(index).remove();
        }

        _.$slides = _.$slideTrack.children(this.options.slide);

        _.$slideTrack.children(this.options.slide).detach();

        _.$slideTrack.append(_.$slides);

        _.$slidesCache = _.$slides;

        _.reinit();

    };

    Slick.prototype.setCSS = function(position) {

        var _ = this,
            positionProps = {},
            x, y;

        if (_.options.rtl === true) {
            position = -position;
        }
        x = _.positionProp == 'left' ? Math.ceil(position) + 'px' : '0px';
        y = _.positionProp == 'top' ? Math.ceil(position) + 'px' : '0px';

        positionProps[_.positionProp] = position;

        if (_.transformsEnabled === false) {
            _.$slideTrack.css(positionProps);
        } else {
            positionProps = {};
            if (_.cssTransitions === false) {
                positionProps[_.animType] = 'translate(' + x + ', ' + y + ')';
                _.$slideTrack.css(positionProps);
            } else {
                positionProps[_.animType] = 'translate3d(' + x + ', ' + y + ', 0px)';
                _.$slideTrack.css(positionProps);
            }
        }

    };

    Slick.prototype.setDimensions = function() {

        var _ = this;

        if (_.options.vertical === false) {
            if (_.options.centerMode === true) {
                _.$list.css({
                    padding: ('0px ' + _.options.centerPadding)
                });
            }
        } else {
            _.$list.height(_.$slides.first().outerHeight(true) * _.options.slidesToShow);
            if (_.options.centerMode === true) {
                _.$list.css({
                    padding: (_.options.centerPadding + ' 0px')
                });
            }
        }

        _.listWidth = _.$list.width();
        _.listHeight = _.$list.height();


        if (_.options.vertical === false && _.options.variableWidth === false) {
            _.slideWidth = Math.ceil(_.listWidth / _.options.slidesToShow);
            _.$slideTrack.width(Math.ceil((_.slideWidth * _.$slideTrack.children('.slick-slide').length)));

        } else if (_.options.variableWidth === true) {
            _.$slideTrack.width(5000 * _.slideCount);
        } else {
            _.slideWidth = Math.ceil(_.listWidth);
            _.$slideTrack.height(Math.ceil((_.$slides.first().outerHeight(true) * _.$slideTrack.children('.slick-slide').length)));
        }

        var offset = _.$slides.first().outerWidth(true) - _.$slides.first().width();
        if (_.options.variableWidth === false) _.$slideTrack.children('.slick-slide').width(_.slideWidth - offset);

    };

    Slick.prototype.setFade = function() {

        var _ = this,
            targetLeft;

        _.$slides.each(function(index, element) {
            targetLeft = (_.slideWidth * index) * -1;
            if (_.options.rtl === true) {
                $(element).css({
                    position: 'relative',
                    right: targetLeft,
                    top: 0,
                    zIndex: _.options.zIndex - 2,
                    opacity: 0
                });
            } else {
                $(element).css({
                    position: 'relative',
                    left: targetLeft,
                    top: 0,
                    zIndex: _.options.zIndex - 2,
                    opacity: 0
                });
            }
        });

        _.$slides.eq(_.currentSlide).css({
            zIndex: _.options.zIndex - 1,
            opacity: 1
        });

    };

    Slick.prototype.setHeight = function() {

        var _ = this;

        if (_.options.slidesToShow === 1 && _.options.adaptiveHeight === true && _.options.vertical === false) {
            var targetHeight = _.$slides.eq(_.currentSlide).outerHeight(true);
            _.$list.css('height', targetHeight);
        }

    };

    Slick.prototype.setOption =
        Slick.prototype.slickSetOption = function() {

            /**
             * accepts arguments in format of:
             *
             *  - for changing a single option's value:
             *     .slick("setOption", option, value, refresh )
             *
             *  - for changing a set of responsive options:
             *     .slick("setOption", 'responsive', [{}, ...], refresh )
             *
             *  - for updating multiple values at once (not responsive)
             *     .slick("setOption", { 'option': value, ... }, refresh )
             */

            var _ = this,
                l, item, option, value, refresh = false,
                type;

            if ($.type(arguments[0]) === 'object') {

                option = arguments[0];
                refresh = arguments[1];
                type = 'multiple';

            } else if ($.type(arguments[0]) === 'string') {

                option = arguments[0];
                value = arguments[1];
                refresh = arguments[2];

                if (arguments[0] === 'responsive' && $.type(arguments[1]) === 'array') {

                    type = 'responsive';

                } else if (typeof arguments[1] !== 'undefined') {

                    type = 'single';

                }

            }

            if (type === 'single') {

                _.options[option] = value;


            } else if (type === 'multiple') {

                $.each(option, function(opt, val) {

                    _.options[opt] = val;

                });


            } else if (type === 'responsive') {

                for (item in value) {

                    if ($.type(_.options.responsive) !== 'array') {

                        _.options.responsive = [value[item]];

                    } else {

                        l = _.options.responsive.length - 1;

                        // loop through the responsive object and splice out duplicates.
                        while (l >= 0) {

                            if (_.options.responsive[l].breakpoint === value[item].breakpoint) {

                                _.options.responsive.splice(l, 1);

                            }

                            l--;

                        }

                        _.options.responsive.push(value[item]);

                    }

                }

            }

            if (refresh) {

                _.unload();
                _.reinit();

            }

        };

    Slick.prototype.setPosition = function() {

        var _ = this;

        _.setDimensions();

        _.setHeight();

        if (_.options.fade === false) {
            _.setCSS(_.getLeft(_.currentSlide));
        } else {
            _.setFade();
        }

        _.$slider.trigger('setPosition', [_]);

    };

    Slick.prototype.setProps = function() {

        var _ = this,
            bodyStyle = document.body.style;

        _.positionProp = _.options.vertical === true ? 'top' : 'left';

        if (_.positionProp === 'top') {
            _.$slider.addClass('slick-vertical');
        } else {
            _.$slider.removeClass('slick-vertical');
        }

        if (bodyStyle.WebkitTransition !== undefined ||
            bodyStyle.MozTransition !== undefined ||
            bodyStyle.msTransition !== undefined) {
            if (_.options.useCSS === true) {
                _.cssTransitions = true;
            }
        }

        if (_.options.fade) {
            if (typeof _.options.zIndex === 'number') {
                if (_.options.zIndex < 3) {
                    _.options.zIndex = 3;
                }
            } else {
                _.options.zIndex = _.defaults.zIndex;
            }
        }

        if (bodyStyle.OTransform !== undefined) {
            _.animType = 'OTransform';
            _.transformType = '-o-transform';
            _.transitionType = 'OTransition';
            if (bodyStyle.perspectiveProperty === undefined && bodyStyle.webkitPerspective === undefined) _.animType = false;
        }
        if (bodyStyle.MozTransform !== undefined) {
            _.animType = 'MozTransform';
            _.transformType = '-moz-transform';
            _.transitionType = 'MozTransition';
            if (bodyStyle.perspectiveProperty === undefined && bodyStyle.MozPerspective === undefined) _.animType = false;
        }
        if (bodyStyle.webkitTransform !== undefined) {
            _.animType = 'webkitTransform';
            _.transformType = '-webkit-transform';
            _.transitionType = 'webkitTransition';
            if (bodyStyle.perspectiveProperty === undefined && bodyStyle.webkitPerspective === undefined) _.animType = false;
        }
        if (bodyStyle.msTransform !== undefined) {
            _.animType = 'msTransform';
            _.transformType = '-ms-transform';
            _.transitionType = 'msTransition';
            if (bodyStyle.msTransform === undefined) _.animType = false;
        }
        if (bodyStyle.transform !== undefined && _.animType !== false) {
            _.animType = 'transform';
            _.transformType = 'transform';
            _.transitionType = 'transition';
        }
        _.transformsEnabled = _.options.useTransform && (_.animType !== null && _.animType !== false);
    };


    Slick.prototype.setSlideClasses = function(index) {

        var _ = this,
            centerOffset, allSlides, indexOffset, remainder;

        allSlides = _.$slider
            .find('.slick-slide')
            .removeClass('slick-active slick-center slick-current')
            .attr('aria-hidden', 'true');

        _.$slides
            .eq(index)
            .addClass('slick-current');

        if (_.options.centerMode === true) {

            centerOffset = Math.floor(_.options.slidesToShow / 2);

            if (_.options.infinite === true) {

                if (index >= centerOffset && index <= (_.slideCount - 1) - centerOffset) {

                    _.$slides
                        .slice(index - centerOffset, index + centerOffset + 1)
                        .addClass('slick-active')
                        .attr('aria-hidden', 'false');

                } else {

                    indexOffset = _.options.slidesToShow + index;
                    allSlides
                        .slice(indexOffset - centerOffset + 1, indexOffset + centerOffset + 2)
                        .addClass('slick-active')
                        .attr('aria-hidden', 'false');

                }

                if (index === 0) {

                    allSlides
                        .eq(allSlides.length - 1 - _.options.slidesToShow)
                        .addClass('slick-center');

                } else if (index === _.slideCount - 1) {

                    allSlides
                        .eq(_.options.slidesToShow)
                        .addClass('slick-center');

                }

            }

            _.$slides
                .eq(index)
                .addClass('slick-center');

        } else {

            if (index >= 0 && index <= (_.slideCount - _.options.slidesToShow)) {

                _.$slides
                    .slice(index, index + _.options.slidesToShow)
                    .addClass('slick-active')
                    .attr('aria-hidden', 'false');

            } else if (allSlides.length <= _.options.slidesToShow) {

                allSlides
                    .addClass('slick-active')
                    .attr('aria-hidden', 'false');

            } else {

                remainder = _.slideCount % _.options.slidesToShow;
                indexOffset = _.options.infinite === true ? _.options.slidesToShow + index : index;

                if (_.options.slidesToShow == _.options.slidesToScroll && (_.slideCount - index) < _.options.slidesToShow) {

                    allSlides
                        .slice(indexOffset - (_.options.slidesToShow - remainder), indexOffset + remainder)
                        .addClass('slick-active')
                        .attr('aria-hidden', 'false');

                } else {

                    allSlides
                        .slice(indexOffset, indexOffset + _.options.slidesToShow)
                        .addClass('slick-active')
                        .attr('aria-hidden', 'false');

                }

            }

        }

        if (_.options.lazyLoad === 'ondemand') {
            _.lazyLoad();
        }

    };

    Slick.prototype.setupInfinite = function() {

        var _ = this,
            i, slideIndex, infiniteCount;

        if (_.options.fade === true) {
            _.options.centerMode = false;
        }

        if (_.options.infinite === true && _.options.fade === false) {

            slideIndex = null;

            if (_.slideCount > _.options.slidesToShow) {

                if (_.options.centerMode === true) {
                    infiniteCount = _.options.slidesToShow + 1;
                } else {
                    infiniteCount = _.options.slidesToShow;
                }

                for (i = _.slideCount; i > (_.slideCount -
                        infiniteCount); i -= 1) {
                    slideIndex = i - 1;
                    $(_.$slides[slideIndex]).clone(true).attr('id', '')
                        .attr('data-slick-index', slideIndex - _.slideCount)
                        .prependTo(_.$slideTrack).addClass('slick-cloned');
                }
                for (i = 0; i < infiniteCount; i += 1) {
                    slideIndex = i;
                    $(_.$slides[slideIndex]).clone(true).attr('id', '')
                        .attr('data-slick-index', slideIndex + _.slideCount)
                        .appendTo(_.$slideTrack).addClass('slick-cloned');
                }
                _.$slideTrack.find('.slick-cloned').find('[id]').each(function() {
                    $(this).attr('id', '');
                });

            }

        }

    };

    Slick.prototype.interrupt = function(toggle) {

        var _ = this;

        if (!toggle) {
            _.autoPlay();
        }
        _.interrupted = toggle;

    };

    Slick.prototype.selectHandler = function(event) {

        var _ = this;

        var targetElement =
            $(event.target).is('.slick-slide') ?
            $(event.target) :
            $(event.target).parents('.slick-slide');

        var index = parseInt(targetElement.attr('data-slick-index'));

        if (!index) index = 0;

        if (_.slideCount <= _.options.slidesToShow) {

            _.setSlideClasses(index);
            _.asNavFor(index);
            return;

        }

        _.slideHandler(index);

    };

    Slick.prototype.slideHandler = function(index, sync, dontAnimate) {

        var targetSlide, animSlide, oldSlide, slideLeft, targetLeft = null,
            _ = this,
            navTarget;

        sync = sync || false;

        if (_.animating === true && _.options.waitForAnimate === true) {
            return;
        }

        if (_.options.fade === true && _.currentSlide === index) {
            return;
        }

        if (_.slideCount <= _.options.slidesToShow) {
            return;
        }

        if (sync === false) {
            _.asNavFor(index);
        }

        targetSlide = index;
        targetLeft = _.getLeft(targetSlide);
        slideLeft = _.getLeft(_.currentSlide);

        _.currentLeft = _.swipeLeft === null ? slideLeft : _.swipeLeft;

        if (_.options.infinite === false && _.options.centerMode === false && (index < 0 || index > _.getDotCount() * _.options.slidesToScroll)) {
            if (_.options.fade === false) {
                targetSlide = _.currentSlide;
                if (dontAnimate !== true) {
                    _.animateSlide(slideLeft, function() {
                        _.postSlide(targetSlide);
                    });
                } else {
                    _.postSlide(targetSlide);
                }
            }
            return;
        } else if (_.options.infinite === false && _.options.centerMode === true && (index < 0 || index > (_.slideCount - _.options.slidesToScroll))) {
            if (_.options.fade === false) {
                targetSlide = _.currentSlide;
                if (dontAnimate !== true) {
                    _.animateSlide(slideLeft, function() {
                        _.postSlide(targetSlide);
                    });
                } else {
                    _.postSlide(targetSlide);
                }
            }
            return;
        }

        if (_.options.autoplay) {
            clearInterval(_.autoPlayTimer);
        }

        if (targetSlide < 0) {
            if (_.slideCount % _.options.slidesToScroll !== 0) {
                animSlide = _.slideCount - (_.slideCount % _.options.slidesToScroll);
            } else {
                animSlide = _.slideCount + targetSlide;
            }
        } else if (targetSlide >= _.slideCount) {
            if (_.slideCount % _.options.slidesToScroll !== 0) {
                animSlide = 0;
            } else {
                animSlide = targetSlide - _.slideCount;
            }
        } else {
            animSlide = targetSlide;
        }

        _.animating = true;

        _.$slider.trigger('beforeChange', [_, _.currentSlide, animSlide]);

        oldSlide = _.currentSlide;
        _.currentSlide = animSlide;

        _.setSlideClasses(_.currentSlide);

        if (_.options.asNavFor) {

            navTarget = _.getNavTarget();
            navTarget = navTarget.slick('getSlick');

            if (navTarget.slideCount <= navTarget.options.slidesToShow) {
                navTarget.setSlideClasses(_.currentSlide);
            }

        }

        _.updateDots();
        _.updateArrows();

        if (_.options.fade === true) {
            if (dontAnimate !== true) {

                _.fadeSlideOut(oldSlide);

                _.fadeSlide(animSlide, function() {
                    _.postSlide(animSlide);
                });

            } else {
                _.postSlide(animSlide);
            }
            _.animateHeight();
            return;
        }

        if (dontAnimate !== true) {
            _.animateSlide(targetLeft, function() {
                _.postSlide(animSlide);
            });
        } else {
            _.postSlide(animSlide);
        }

    };

    Slick.prototype.startLoad = function() {

        var _ = this;

        if (_.options.arrows === true && _.slideCount > _.options.slidesToShow) {

            _.$prevArrow.hide();
            _.$nextArrow.hide();

        }

        if (_.options.dots === true && _.slideCount > _.options.slidesToShow) {

            _.$dots.hide();

        }

        _.$slider.addClass('slick-loading');

    };

    Slick.prototype.swipeDirection = function() {

        var xDist, yDist, r, swipeAngle, _ = this;

        xDist = _.touchObject.startX - _.touchObject.curX;
        yDist = _.touchObject.startY - _.touchObject.curY;
        r = Math.atan2(yDist, xDist);

        swipeAngle = Math.round(r * 180 / Math.PI);
        if (swipeAngle < 0) {
            swipeAngle = 360 - Math.abs(swipeAngle);
        }

        if ((swipeAngle <= 45) && (swipeAngle >= 0)) {
            return (_.options.rtl === false ? 'left' : 'right');
        }
        if ((swipeAngle <= 360) && (swipeAngle >= 315)) {
            return (_.options.rtl === false ? 'left' : 'right');
        }
        if ((swipeAngle >= 135) && (swipeAngle <= 225)) {
            return (_.options.rtl === false ? 'right' : 'left');
        }
        if (_.options.verticalSwiping === true) {
            if ((swipeAngle >= 35) && (swipeAngle <= 135)) {
                return 'down';
            } else {
                return 'up';
            }
        }

        return 'vertical';

    };

    Slick.prototype.swipeEnd = function(event) {

        var _ = this,
            slideCount,
            direction;

        _.dragging = false;
        _.interrupted = false;
        _.shouldClick = (_.touchObject.swipeLength > 10) ? false : true;

        if (_.touchObject.curX === undefined) {
            return false;
        }

        if (_.touchObject.edgeHit === true) {
            _.$slider.trigger('edge', [_, _.swipeDirection()]);
        }

        if (_.touchObject.swipeLength >= _.touchObject.minSwipe) {

            direction = _.swipeDirection();

            switch (direction) {

                case 'left':
                case 'down':

                    slideCount =
                        _.options.swipeToSlide ?
                        _.checkNavigable(_.currentSlide + _.getSlideCount()) :
                        _.currentSlide + _.getSlideCount();

                    _.currentDirection = 0;

                    break;

                case 'right':
                case 'up':

                    slideCount =
                        _.options.swipeToSlide ?
                        _.checkNavigable(_.currentSlide - _.getSlideCount()) :
                        _.currentSlide - _.getSlideCount();

                    _.currentDirection = 1;

                    break;

                default:


            }

            if (direction != 'vertical') {

                _.slideHandler(slideCount);
                _.touchObject = {};
                _.$slider.trigger('swipe', [_, direction]);

            }

        } else {

            if (_.touchObject.startX !== _.touchObject.curX) {

                _.slideHandler(_.currentSlide);
                _.touchObject = {};

            }

        }

    };

    Slick.prototype.swipeHandler = function(event) {

        var _ = this;

        if ((_.options.swipe === false) || ('ontouchend' in document && _.options.swipe === false)) {
            return;
        } else if (_.options.draggable === false && event.type.indexOf('mouse') !== -1) {
            return;
        }

        _.touchObject.fingerCount = event.originalEvent && event.originalEvent.touches !== undefined ?
            event.originalEvent.touches.length : 1;

        _.touchObject.minSwipe = _.listWidth / _.options
            .touchThreshold;

        if (_.options.verticalSwiping === true) {
            _.touchObject.minSwipe = _.listHeight / _.options
                .touchThreshold;
        }

        switch (event.data.action) {

            case 'start':
                _.swipeStart(event);
                break;

            case 'move':
                _.swipeMove(event);
                break;

            case 'end':
                _.swipeEnd(event);
                break;

        }

    };

    Slick.prototype.swipeMove = function(event) {

        var _ = this,
            edgeWasHit = false,
            curLeft, swipeDirection, swipeLength, positionOffset, touches;

        touches = event.originalEvent !== undefined ? event.originalEvent.touches : null;

        if (!_.dragging || touches && touches.length !== 1) {
            return false;
        }

        curLeft = _.getLeft(_.currentSlide);

        _.touchObject.curX = touches !== undefined ? touches[0].pageX : event.clientX;
        _.touchObject.curY = touches !== undefined ? touches[0].pageY : event.clientY;

        _.touchObject.swipeLength = Math.round(Math.sqrt(
            Math.pow(_.touchObject.curX - _.touchObject.startX, 2)));

        if (_.options.verticalSwiping === true) {
            _.touchObject.swipeLength = Math.round(Math.sqrt(
                Math.pow(_.touchObject.curY - _.touchObject.startY, 2)));
        }

        swipeDirection = _.swipeDirection();

        if (swipeDirection === 'vertical') {
            return;
        }

        if (event.originalEvent !== undefined && _.touchObject.swipeLength > 4) {
            event.preventDefault();
        }

        positionOffset = (_.options.rtl === false ? 1 : -1) * (_.touchObject.curX > _.touchObject.startX ? 1 : -1);
        if (_.options.verticalSwiping === true) {
            positionOffset = _.touchObject.curY > _.touchObject.startY ? 1 : -1;
        }


        swipeLength = _.touchObject.swipeLength;

        _.touchObject.edgeHit = false;

        if (_.options.infinite === false) {
            if ((_.currentSlide === 0 && swipeDirection === 'right') || (_.currentSlide >= _.getDotCount() && swipeDirection === 'left')) {
                swipeLength = _.touchObject.swipeLength * _.options.edgeFriction;
                _.touchObject.edgeHit = true;
            }
        }

        if (_.options.vertical === false) {
            _.swipeLeft = curLeft + swipeLength * positionOffset;
        } else {
            _.swipeLeft = curLeft + (swipeLength * (_.$list.height() / _.listWidth)) * positionOffset;
        }
        if (_.options.verticalSwiping === true) {
            _.swipeLeft = curLeft + swipeLength * positionOffset;
        }

        if (_.options.fade === true || _.options.touchMove === false) {
            return false;
        }

        if (_.animating === true) {
            _.swipeLeft = null;
            return false;
        }

        _.setCSS(_.swipeLeft);

    };

    Slick.prototype.swipeStart = function(event) {

        var _ = this,
            touches;

        _.interrupted = true;

        if (_.touchObject.fingerCount !== 1 || _.slideCount <= _.options.slidesToShow) {
            _.touchObject = {};
            return false;
        }

        if (event.originalEvent !== undefined && event.originalEvent.touches !== undefined) {
            touches = event.originalEvent.touches[0];
        }

        _.touchObject.startX = _.touchObject.curX = touches !== undefined ? touches.pageX : event.clientX;
        _.touchObject.startY = _.touchObject.curY = touches !== undefined ? touches.pageY : event.clientY;

        _.dragging = true;

    };

    Slick.prototype.unfilterSlides = Slick.prototype.slickUnfilter = function() {

        var _ = this;

        if (_.$slidesCache !== null) {

            _.unload();

            _.$slideTrack.children(this.options.slide).detach();

            _.$slidesCache.appendTo(_.$slideTrack);

            _.reinit();

        }

    };

    Slick.prototype.unload = function() {

        var _ = this;

        $('.slick-cloned', _.$slider).remove();

        if (_.$dots) {
            _.$dots.remove();
        }

        if (_.$prevArrow && _.htmlExpr.test(_.options.prevArrow)) {
            _.$prevArrow.remove();
        }

        if (_.$nextArrow && _.htmlExpr.test(_.options.nextArrow)) {
            _.$nextArrow.remove();
        }

        _.$slides
            .removeClass('slick-slide slick-active slick-visible slick-current')
            .attr('aria-hidden', 'true')
            .css('width', '');

    };

    Slick.prototype.unslick = function(fromBreakpoint) {

        var _ = this;
        _.$slider.trigger('unslick', [_, fromBreakpoint]);
        _.destroy();

    };

    Slick.prototype.updateArrows = function() {

        var _ = this,
            centerOffset;

        centerOffset = Math.floor(_.options.slidesToShow / 2);

        if (_.options.arrows === true &&
            _.slideCount > _.options.slidesToShow &&
            !_.options.infinite) {

            _.$prevArrow.removeClass('slick-disabled').attr('aria-disabled', 'false');
            _.$nextArrow.removeClass('slick-disabled').attr('aria-disabled', 'false');

            if (_.currentSlide === 0) {

                _.$prevArrow.addClass('slick-disabled').attr('aria-disabled', 'true');
                _.$nextArrow.removeClass('slick-disabled').attr('aria-disabled', 'false');

            } else if (_.currentSlide >= _.slideCount - _.options.slidesToShow && _.options.centerMode === false) {

                _.$nextArrow.addClass('slick-disabled').attr('aria-disabled', 'true');
                _.$prevArrow.removeClass('slick-disabled').attr('aria-disabled', 'false');

            } else if (_.currentSlide >= _.slideCount - 1 && _.options.centerMode === true) {

                _.$nextArrow.addClass('slick-disabled').attr('aria-disabled', 'true');
                _.$prevArrow.removeClass('slick-disabled').attr('aria-disabled', 'false');

            }

        }

    };

    Slick.prototype.updateDots = function() {

        var _ = this;

        if (_.$dots !== null) {

            _.$dots
                .find('li')
                .removeClass('slick-active')
                .attr('aria-hidden', 'true');

            _.$dots
                .find('li')
                .eq(Math.floor(_.currentSlide / _.options.slidesToScroll))
                .addClass('slick-active')
                .attr('aria-hidden', 'false');

        }

    };

    Slick.prototype.visibility = function() {

        var _ = this;

        if (_.options.autoplay) {

            if (document[_.hidden]) {

                _.interrupted = true;

            } else {

                _.interrupted = false;

            }

        }

    };

    $.fn.slick = function() {
        var _ = this,
            opt = arguments[0],
            args = Array.prototype.slice.call(arguments, 1),
            l = _.length,
            i,
            ret;
        for (i = 0; i < l; i++) {
            if (typeof opt == 'object' || typeof opt == 'undefined')
                _[i].slick = new Slick(_[i], opt);
            else
                ret = _[i].slick[opt].apply(_[i].slick, args);
            if (typeof ret != 'undefined') return ret;
        }
        return _;
    };

}));

!function(a,b){"object"==typeof exports&&"undefined"!=typeof module?module.exports=b():"function"==typeof define&&define.amd?define(b):a.moment=b()}(this,function(){"use strict";function a(){return Md.apply(null,arguments)}function b(a){Md=a}function c(a){return"[object Array]"===Object.prototype.toString.call(a)}function d(a){return a instanceof Date||"[object Date]"===Object.prototype.toString.call(a)}function e(a,b){var c,d=[];for(c=0;c<a.length;++c)d.push(b(a[c],c));return d}function f(a,b){return Object.prototype.hasOwnProperty.call(a,b)}function g(a,b){for(var c in b)f(b,c)&&(a[c]=b[c]);return f(b,"toString")&&(a.toString=b.toString),f(b,"valueOf")&&(a.valueOf=b.valueOf),a}function h(a,b,c,d){return Ca(a,b,c,d,!0).utc()}function i(){return{empty:!1,unusedTokens:[],unusedInput:[],overflow:-2,charsLeftOver:0,nullInput:!1,invalidMonth:null,invalidFormat:!1,userInvalidated:!1,iso:!1}}function j(a){return null==a._pf&&(a._pf=i()),a._pf}function k(a){if(null==a._isValid){var b=j(a);a._isValid=!(isNaN(a._d.getTime())||!(b.overflow<0)||b.empty||b.invalidMonth||b.invalidWeekday||b.nullInput||b.invalidFormat||b.userInvalidated),a._strict&&(a._isValid=a._isValid&&0===b.charsLeftOver&&0===b.unusedTokens.length&&void 0===b.bigHour)}return a._isValid}function l(a){var b=h(NaN);return null!=a?g(j(b),a):j(b).userInvalidated=!0,b}function m(a,b){var c,d,e;if("undefined"!=typeof b._isAMomentObject&&(a._isAMomentObject=b._isAMomentObject),"undefined"!=typeof b._i&&(a._i=b._i),"undefined"!=typeof b._f&&(a._f=b._f),"undefined"!=typeof b._l&&(a._l=b._l),"undefined"!=typeof b._strict&&(a._strict=b._strict),"undefined"!=typeof b._tzm&&(a._tzm=b._tzm),"undefined"!=typeof b._isUTC&&(a._isUTC=b._isUTC),"undefined"!=typeof b._offset&&(a._offset=b._offset),"undefined"!=typeof b._pf&&(a._pf=j(b)),"undefined"!=typeof b._locale&&(a._locale=b._locale),Od.length>0)for(c in Od)d=Od[c],e=b[d],"undefined"!=typeof e&&(a[d]=e);return a}function n(b){m(this,b),this._d=new Date(null!=b._d?b._d.getTime():NaN),Pd===!1&&(Pd=!0,a.updateOffset(this),Pd=!1)}function o(a){return a instanceof n||null!=a&&null!=a._isAMomentObject}function p(a){return 0>a?Math.ceil(a):Math.floor(a)}function q(a){var b=+a,c=0;return 0!==b&&isFinite(b)&&(c=p(b)),c}function r(a,b,c){var d,e=Math.min(a.length,b.length),f=Math.abs(a.length-b.length),g=0;for(d=0;e>d;d++)(c&&a[d]!==b[d]||!c&&q(a[d])!==q(b[d]))&&g++;return g+f}function s(){}function t(a){return a?a.toLowerCase().replace("_","-"):a}function u(a){for(var b,c,d,e,f=0;f<a.length;){for(e=t(a[f]).split("-"),b=e.length,c=t(a[f+1]),c=c?c.split("-"):null;b>0;){if(d=v(e.slice(0,b).join("-")))return d;if(c&&c.length>=b&&r(e,c,!0)>=b-1)break;b--}f++}return null}function v(a){var b=null;if(!Qd[a]&&"undefined"!=typeof module&&module&&module.exports)try{b=Nd._abbr,require("./locale/"+a),w(b)}catch(c){}return Qd[a]}function w(a,b){var c;return a&&(c="undefined"==typeof b?y(a):x(a,b),c&&(Nd=c)),Nd._abbr}function x(a,b){return null!==b?(b.abbr=a,Qd[a]=Qd[a]||new s,Qd[a].set(b),w(a),Qd[a]):(delete Qd[a],null)}function y(a){var b;if(a&&a._locale&&a._locale._abbr&&(a=a._locale._abbr),!a)return Nd;if(!c(a)){if(b=v(a))return b;a=[a]}return u(a)}function z(a,b){var c=a.toLowerCase();Rd[c]=Rd[c+"s"]=Rd[b]=a}function A(a){return"string"==typeof a?Rd[a]||Rd[a.toLowerCase()]:void 0}function B(a){var b,c,d={};for(c in a)f(a,c)&&(b=A(c),b&&(d[b]=a[c]));return d}function C(b,c){return function(d){return null!=d?(E(this,b,d),a.updateOffset(this,c),this):D(this,b)}}function D(a,b){return a._d["get"+(a._isUTC?"UTC":"")+b]()}function E(a,b,c){return a._d["set"+(a._isUTC?"UTC":"")+b](c)}function F(a,b){var c;if("object"==typeof a)for(c in a)this.set(c,a[c]);else if(a=A(a),"function"==typeof this[a])return this[a](b);return this}function G(a,b,c){var d=""+Math.abs(a),e=b-d.length,f=a>=0;return(f?c?"+":"":"-")+Math.pow(10,Math.max(0,e)).toString().substr(1)+d}function H(a,b,c,d){var e=d;"string"==typeof d&&(e=function(){return this[d]()}),a&&(Vd[a]=e),b&&(Vd[b[0]]=function(){return G(e.apply(this,arguments),b[1],b[2])}),c&&(Vd[c]=function(){return this.localeData().ordinal(e.apply(this,arguments),a)})}function I(a){return a.match(/\[[\s\S]/)?a.replace(/^\[|\]$/g,""):a.replace(/\\/g,"")}function J(a){var b,c,d=a.match(Sd);for(b=0,c=d.length;c>b;b++)Vd[d[b]]?d[b]=Vd[d[b]]:d[b]=I(d[b]);return function(e){var f="";for(b=0;c>b;b++)f+=d[b]instanceof Function?d[b].call(e,a):d[b];return f}}function K(a,b){return a.isValid()?(b=L(b,a.localeData()),Ud[b]=Ud[b]||J(b),Ud[b](a)):a.localeData().invalidDate()}function L(a,b){function c(a){return b.longDateFormat(a)||a}var d=5;for(Td.lastIndex=0;d>=0&&Td.test(a);)a=a.replace(Td,c),Td.lastIndex=0,d-=1;return a}function M(a){return"function"==typeof a&&"[object Function]"===Object.prototype.toString.call(a)}function N(a,b,c){ie[a]=M(b)?b:function(a){return a&&c?c:b}}function O(a,b){return f(ie,a)?ie[a](b._strict,b._locale):new RegExp(P(a))}function P(a){return a.replace("\\","").replace(/\\(\[)|\\(\])|\[([^\]\[]*)\]|\\(.)/g,function(a,b,c,d,e){return b||c||d||e}).replace(/[-\/\\^$*+?.()|[\]{}]/g,"\\$&")}function Q(a,b){var c,d=b;for("string"==typeof a&&(a=[a]),"number"==typeof b&&(d=function(a,c){c[b]=q(a)}),c=0;c<a.length;c++)je[a[c]]=d}function R(a,b){Q(a,function(a,c,d,e){d._w=d._w||{},b(a,d._w,d,e)})}function S(a,b,c){null!=b&&f(je,a)&&je[a](b,c._a,c,a)}function T(a,b){return new Date(Date.UTC(a,b+1,0)).getUTCDate()}function U(a){return this._months[a.month()]}function V(a){return this._monthsShort[a.month()]}function W(a,b,c){var d,e,f;for(this._monthsParse||(this._monthsParse=[],this._longMonthsParse=[],this._shortMonthsParse=[]),d=0;12>d;d++){if(e=h([2e3,d]),c&&!this._longMonthsParse[d]&&(this._longMonthsParse[d]=new RegExp("^"+this.months(e,"").replace(".","")+"$","i"),this._shortMonthsParse[d]=new RegExp("^"+this.monthsShort(e,"").replace(".","")+"$","i")),c||this._monthsParse[d]||(f="^"+this.months(e,"")+"|^"+this.monthsShort(e,""),this._monthsParse[d]=new RegExp(f.replace(".",""),"i")),c&&"MMMM"===b&&this._longMonthsParse[d].test(a))return d;if(c&&"MMM"===b&&this._shortMonthsParse[d].test(a))return d;if(!c&&this._monthsParse[d].test(a))return d}}function X(a,b){var c;return"string"==typeof b&&(b=a.localeData().monthsParse(b),"number"!=typeof b)?a:(c=Math.min(a.date(),T(a.year(),b)),a._d["set"+(a._isUTC?"UTC":"")+"Month"](b,c),a)}function Y(b){return null!=b?(X(this,b),a.updateOffset(this,!0),this):D(this,"Month")}function Z(){return T(this.year(),this.month())}function $(a){var b,c=a._a;return c&&-2===j(a).overflow&&(b=c[le]<0||c[le]>11?le:c[me]<1||c[me]>T(c[ke],c[le])?me:c[ne]<0||c[ne]>24||24===c[ne]&&(0!==c[oe]||0!==c[pe]||0!==c[qe])?ne:c[oe]<0||c[oe]>59?oe:c[pe]<0||c[pe]>59?pe:c[qe]<0||c[qe]>999?qe:-1,j(a)._overflowDayOfYear&&(ke>b||b>me)&&(b=me),j(a).overflow=b),a}function _(b){a.suppressDeprecationWarnings===!1&&"undefined"!=typeof console&&console.warn&&console.warn("Deprecation warning: "+b)}function aa(a,b){var c=!0;return g(function(){return c&&(_(a+"\n"+(new Error).stack),c=!1),b.apply(this,arguments)},b)}function ba(a,b){te[a]||(_(b),te[a]=!0)}function ca(a){var b,c,d=a._i,e=ue.exec(d);if(e){for(j(a).iso=!0,b=0,c=ve.length;c>b;b++)if(ve[b][1].exec(d)){a._f=ve[b][0];break}for(b=0,c=we.length;c>b;b++)if(we[b][1].exec(d)){a._f+=(e[6]||" ")+we[b][0];break}d.match(fe)&&(a._f+="Z"),va(a)}else a._isValid=!1}function da(b){var c=xe.exec(b._i);return null!==c?void(b._d=new Date(+c[1])):(ca(b),void(b._isValid===!1&&(delete b._isValid,a.createFromInputFallback(b))))}function ea(a,b,c,d,e,f,g){var h=new Date(a,b,c,d,e,f,g);return 1970>a&&h.setFullYear(a),h}function fa(a){var b=new Date(Date.UTC.apply(null,arguments));return 1970>a&&b.setUTCFullYear(a),b}function ga(a){return ha(a)?366:365}function ha(a){return a%4===0&&a%100!==0||a%400===0}function ia(){return ha(this.year())}function ja(a,b,c){var d,e=c-b,f=c-a.day();return f>e&&(f-=7),e-7>f&&(f+=7),d=Da(a).add(f,"d"),{week:Math.ceil(d.dayOfYear()/7),year:d.year()}}function ka(a){return ja(a,this._week.dow,this._week.doy).week}function la(){return this._week.dow}function ma(){return this._week.doy}function na(a){var b=this.localeData().week(this);return null==a?b:this.add(7*(a-b),"d")}function oa(a){var b=ja(this,1,4).week;return null==a?b:this.add(7*(a-b),"d")}function pa(a,b,c,d,e){var f,g=6+e-d,h=fa(a,0,1+g),i=h.getUTCDay();return e>i&&(i+=7),c=null!=c?1*c:e,f=1+g+7*(b-1)-i+c,{year:f>0?a:a-1,dayOfYear:f>0?f:ga(a-1)+f}}function qa(a){var b=Math.round((this.clone().startOf("day")-this.clone().startOf("year"))/864e5)+1;return null==a?b:this.add(a-b,"d")}function ra(a,b,c){return null!=a?a:null!=b?b:c}function sa(a){var b=new Date;return a._useUTC?[b.getUTCFullYear(),b.getUTCMonth(),b.getUTCDate()]:[b.getFullYear(),b.getMonth(),b.getDate()]}function ta(a){var b,c,d,e,f=[];if(!a._d){for(d=sa(a),a._w&&null==a._a[me]&&null==a._a[le]&&ua(a),a._dayOfYear&&(e=ra(a._a[ke],d[ke]),a._dayOfYear>ga(e)&&(j(a)._overflowDayOfYear=!0),c=fa(e,0,a._dayOfYear),a._a[le]=c.getUTCMonth(),a._a[me]=c.getUTCDate()),b=0;3>b&&null==a._a[b];++b)a._a[b]=f[b]=d[b];for(;7>b;b++)a._a[b]=f[b]=null==a._a[b]?2===b?1:0:a._a[b];24===a._a[ne]&&0===a._a[oe]&&0===a._a[pe]&&0===a._a[qe]&&(a._nextDay=!0,a._a[ne]=0),a._d=(a._useUTC?fa:ea).apply(null,f),null!=a._tzm&&a._d.setUTCMinutes(a._d.getUTCMinutes()-a._tzm),a._nextDay&&(a._a[ne]=24)}}function ua(a){var b,c,d,e,f,g,h;b=a._w,null!=b.GG||null!=b.W||null!=b.E?(f=1,g=4,c=ra(b.GG,a._a[ke],ja(Da(),1,4).year),d=ra(b.W,1),e=ra(b.E,1)):(f=a._locale._week.dow,g=a._locale._week.doy,c=ra(b.gg,a._a[ke],ja(Da(),f,g).year),d=ra(b.w,1),null!=b.d?(e=b.d,f>e&&++d):e=null!=b.e?b.e+f:f),h=pa(c,d,e,g,f),a._a[ke]=h.year,a._dayOfYear=h.dayOfYear}function va(b){if(b._f===a.ISO_8601)return void ca(b);b._a=[],j(b).empty=!0;var c,d,e,f,g,h=""+b._i,i=h.length,k=0;for(e=L(b._f,b._locale).match(Sd)||[],c=0;c<e.length;c++)f=e[c],d=(h.match(O(f,b))||[])[0],d&&(g=h.substr(0,h.indexOf(d)),g.length>0&&j(b).unusedInput.push(g),h=h.slice(h.indexOf(d)+d.length),k+=d.length),Vd[f]?(d?j(b).empty=!1:j(b).unusedTokens.push(f),S(f,d,b)):b._strict&&!d&&j(b).unusedTokens.push(f);j(b).charsLeftOver=i-k,h.length>0&&j(b).unusedInput.push(h),j(b).bigHour===!0&&b._a[ne]<=12&&b._a[ne]>0&&(j(b).bigHour=void 0),b._a[ne]=wa(b._locale,b._a[ne],b._meridiem),ta(b),$(b)}function wa(a,b,c){var d;return null==c?b:null!=a.meridiemHour?a.meridiemHour(b,c):null!=a.isPM?(d=a.isPM(c),d&&12>b&&(b+=12),d||12!==b||(b=0),b):b}function xa(a){var b,c,d,e,f;if(0===a._f.length)return j(a).invalidFormat=!0,void(a._d=new Date(NaN));for(e=0;e<a._f.length;e++)f=0,b=m({},a),null!=a._useUTC&&(b._useUTC=a._useUTC),b._f=a._f[e],va(b),k(b)&&(f+=j(b).charsLeftOver,f+=10*j(b).unusedTokens.length,j(b).score=f,(null==d||d>f)&&(d=f,c=b));g(a,c||b)}function ya(a){if(!a._d){var b=B(a._i);a._a=[b.year,b.month,b.day||b.date,b.hour,b.minute,b.second,b.millisecond],ta(a)}}function za(a){var b=new n($(Aa(a)));return b._nextDay&&(b.add(1,"d"),b._nextDay=void 0),b}function Aa(a){var b=a._i,e=a._f;return a._locale=a._locale||y(a._l),null===b||void 0===e&&""===b?l({nullInput:!0}):("string"==typeof b&&(a._i=b=a._locale.preparse(b)),o(b)?new n($(b)):(c(e)?xa(a):e?va(a):d(b)?a._d=b:Ba(a),a))}function Ba(b){var f=b._i;void 0===f?b._d=new Date:d(f)?b._d=new Date(+f):"string"==typeof f?da(b):c(f)?(b._a=e(f.slice(0),function(a){return parseInt(a,10)}),ta(b)):"object"==typeof f?ya(b):"number"==typeof f?b._d=new Date(f):a.createFromInputFallback(b)}function Ca(a,b,c,d,e){var f={};return"boolean"==typeof c&&(d=c,c=void 0),f._isAMomentObject=!0,f._useUTC=f._isUTC=e,f._l=c,f._i=a,f._f=b,f._strict=d,za(f)}function Da(a,b,c,d){return Ca(a,b,c,d,!1)}function Ea(a,b){var d,e;if(1===b.length&&c(b[0])&&(b=b[0]),!b.length)return Da();for(d=b[0],e=1;e<b.length;++e)(!b[e].isValid()||b[e][a](d))&&(d=b[e]);return d}function Fa(){var a=[].slice.call(arguments,0);return Ea("isBefore",a)}function Ga(){var a=[].slice.call(arguments,0);return Ea("isAfter",a)}function Ha(a){var b=B(a),c=b.year||0,d=b.quarter||0,e=b.month||0,f=b.week||0,g=b.day||0,h=b.hour||0,i=b.minute||0,j=b.second||0,k=b.millisecond||0;this._milliseconds=+k+1e3*j+6e4*i+36e5*h,this._days=+g+7*f,this._months=+e+3*d+12*c,this._data={},this._locale=y(),this._bubble()}function Ia(a){return a instanceof Ha}function Ja(a,b){H(a,0,0,function(){var a=this.utcOffset(),c="+";return 0>a&&(a=-a,c="-"),c+G(~~(a/60),2)+b+G(~~a%60,2)})}function Ka(a){var b=(a||"").match(fe)||[],c=b[b.length-1]||[],d=(c+"").match(Ce)||["-",0,0],e=+(60*d[1])+q(d[2]);return"+"===d[0]?e:-e}function La(b,c){var e,f;return c._isUTC?(e=c.clone(),f=(o(b)||d(b)?+b:+Da(b))-+e,e._d.setTime(+e._d+f),a.updateOffset(e,!1),e):Da(b).local()}function Ma(a){return 15*-Math.round(a._d.getTimezoneOffset()/15)}function Na(b,c){var d,e=this._offset||0;return null!=b?("string"==typeof b&&(b=Ka(b)),Math.abs(b)<16&&(b=60*b),!this._isUTC&&c&&(d=Ma(this)),this._offset=b,this._isUTC=!0,null!=d&&this.add(d,"m"),e!==b&&(!c||this._changeInProgress?bb(this,Ya(b-e,"m"),1,!1):this._changeInProgress||(this._changeInProgress=!0,a.updateOffset(this,!0),this._changeInProgress=null)),this):this._isUTC?e:Ma(this)}function Oa(a,b){return null!=a?("string"!=typeof a&&(a=-a),this.utcOffset(a,b),this):-this.utcOffset()}function Pa(a){return this.utcOffset(0,a)}function Qa(a){return this._isUTC&&(this.utcOffset(0,a),this._isUTC=!1,a&&this.subtract(Ma(this),"m")),this}function Ra(){return this._tzm?this.utcOffset(this._tzm):"string"==typeof this._i&&this.utcOffset(Ka(this._i)),this}function Sa(a){return a=a?Da(a).utcOffset():0,(this.utcOffset()-a)%60===0}function Ta(){return this.utcOffset()>this.clone().month(0).utcOffset()||this.utcOffset()>this.clone().month(5).utcOffset()}function Ua(){if("undefined"!=typeof this._isDSTShifted)return this._isDSTShifted;var a={};if(m(a,this),a=Aa(a),a._a){var b=a._isUTC?h(a._a):Da(a._a);this._isDSTShifted=this.isValid()&&r(a._a,b.toArray())>0}else this._isDSTShifted=!1;return this._isDSTShifted}function Va(){return!this._isUTC}function Wa(){return this._isUTC}function Xa(){return this._isUTC&&0===this._offset}function Ya(a,b){var c,d,e,g=a,h=null;return Ia(a)?g={ms:a._milliseconds,d:a._days,M:a._months}:"number"==typeof a?(g={},b?g[b]=a:g.milliseconds=a):(h=De.exec(a))?(c="-"===h[1]?-1:1,g={y:0,d:q(h[me])*c,h:q(h[ne])*c,m:q(h[oe])*c,s:q(h[pe])*c,ms:q(h[qe])*c}):(h=Ee.exec(a))?(c="-"===h[1]?-1:1,g={y:Za(h[2],c),M:Za(h[3],c),d:Za(h[4],c),h:Za(h[5],c),m:Za(h[6],c),s:Za(h[7],c),w:Za(h[8],c)}):null==g?g={}:"object"==typeof g&&("from"in g||"to"in g)&&(e=_a(Da(g.from),Da(g.to)),g={},g.ms=e.milliseconds,g.M=e.months),d=new Ha(g),Ia(a)&&f(a,"_locale")&&(d._locale=a._locale),d}function Za(a,b){var c=a&&parseFloat(a.replace(",","."));return(isNaN(c)?0:c)*b}function $a(a,b){var c={milliseconds:0,months:0};return c.months=b.month()-a.month()+12*(b.year()-a.year()),a.clone().add(c.months,"M").isAfter(b)&&--c.months,c.milliseconds=+b-+a.clone().add(c.months,"M"),c}function _a(a,b){var c;return b=La(b,a),a.isBefore(b)?c=$a(a,b):(c=$a(b,a),c.milliseconds=-c.milliseconds,c.months=-c.months),c}function ab(a,b){return function(c,d){var e,f;return null===d||isNaN(+d)||(ba(b,"moment()."+b+"(period, number) is deprecated. Please use moment()."+b+"(number, period)."),f=c,c=d,d=f),c="string"==typeof c?+c:c,e=Ya(c,d),bb(this,e,a),this}}function bb(b,c,d,e){var f=c._milliseconds,g=c._days,h=c._months;e=null==e?!0:e,f&&b._d.setTime(+b._d+f*d),g&&E(b,"Date",D(b,"Date")+g*d),h&&X(b,D(b,"Month")+h*d),e&&a.updateOffset(b,g||h)}function cb(a,b){var c=a||Da(),d=La(c,this).startOf("day"),e=this.diff(d,"days",!0),f=-6>e?"sameElse":-1>e?"lastWeek":0>e?"lastDay":1>e?"sameDay":2>e?"nextDay":7>e?"nextWeek":"sameElse";return this.format(b&&b[f]||this.localeData().calendar(f,this,Da(c)))}function db(){return new n(this)}function eb(a,b){var c;return b=A("undefined"!=typeof b?b:"millisecond"),"millisecond"===b?(a=o(a)?a:Da(a),+this>+a):(c=o(a)?+a:+Da(a),c<+this.clone().startOf(b))}function fb(a,b){var c;return b=A("undefined"!=typeof b?b:"millisecond"),"millisecond"===b?(a=o(a)?a:Da(a),+a>+this):(c=o(a)?+a:+Da(a),+this.clone().endOf(b)<c)}function gb(a,b,c){return this.isAfter(a,c)&&this.isBefore(b,c)}function hb(a,b){var c;return b=A(b||"millisecond"),"millisecond"===b?(a=o(a)?a:Da(a),+this===+a):(c=+Da(a),+this.clone().startOf(b)<=c&&c<=+this.clone().endOf(b))}function ib(a,b,c){var d,e,f=La(a,this),g=6e4*(f.utcOffset()-this.utcOffset());return b=A(b),"year"===b||"month"===b||"quarter"===b?(e=jb(this,f),"quarter"===b?e/=3:"year"===b&&(e/=12)):(d=this-f,e="second"===b?d/1e3:"minute"===b?d/6e4:"hour"===b?d/36e5:"day"===b?(d-g)/864e5:"week"===b?(d-g)/6048e5:d),c?e:p(e)}function jb(a,b){var c,d,e=12*(b.year()-a.year())+(b.month()-a.month()),f=a.clone().add(e,"months");return 0>b-f?(c=a.clone().add(e-1,"months"),d=(b-f)/(f-c)):(c=a.clone().add(e+1,"months"),d=(b-f)/(c-f)),-(e+d)}function kb(){return this.clone().locale("en").format("ddd MMM DD YYYY HH:mm:ss [GMT]ZZ")}function lb(){var a=this.clone().utc();return 0<a.year()&&a.year()<=9999?"function"==typeof Date.prototype.toISOString?this.toDate().toISOString():K(a,"YYYY-MM-DD[T]HH:mm:ss.SSS[Z]"):K(a,"YYYYYY-MM-DD[T]HH:mm:ss.SSS[Z]")}function mb(b){var c=K(this,b||a.defaultFormat);return this.localeData().postformat(c)}function nb(a,b){return this.isValid()?Ya({to:this,from:a}).locale(this.locale()).humanize(!b):this.localeData().invalidDate()}function ob(a){return this.from(Da(),a)}function pb(a,b){return this.isValid()?Ya({from:this,to:a}).locale(this.locale()).humanize(!b):this.localeData().invalidDate()}function qb(a){return this.to(Da(),a)}function rb(a){var b;return void 0===a?this._locale._abbr:(b=y(a),null!=b&&(this._locale=b),this)}function sb(){return this._locale}function tb(a){switch(a=A(a)){case"year":this.month(0);case"quarter":case"month":this.date(1);case"week":case"isoWeek":case"day":this.hours(0);case"hour":this.minutes(0);case"minute":this.seconds(0);case"second":this.milliseconds(0)}return"week"===a&&this.weekday(0),"isoWeek"===a&&this.isoWeekday(1),"quarter"===a&&this.month(3*Math.floor(this.month()/3)),this}function ub(a){return a=A(a),void 0===a||"millisecond"===a?this:this.startOf(a).add(1,"isoWeek"===a?"week":a).subtract(1,"ms")}function vb(){return+this._d-6e4*(this._offset||0)}function wb(){return Math.floor(+this/1e3)}function xb(){return this._offset?new Date(+this):this._d}function yb(){var a=this;return[a.year(),a.month(),a.date(),a.hour(),a.minute(),a.second(),a.millisecond()]}function zb(){var a=this;return{years:a.year(),months:a.month(),date:a.date(),hours:a.hours(),minutes:a.minutes(),seconds:a.seconds(),milliseconds:a.milliseconds()}}function Ab(){return k(this)}function Bb(){return g({},j(this))}function Cb(){return j(this).overflow}function Db(a,b){H(0,[a,a.length],0,b)}function Eb(a,b,c){return ja(Da([a,11,31+b-c]),b,c).week}function Fb(a){var b=ja(this,this.localeData()._week.dow,this.localeData()._week.doy).year;return null==a?b:this.add(a-b,"y")}function Gb(a){var b=ja(this,1,4).year;return null==a?b:this.add(a-b,"y")}function Hb(){return Eb(this.year(),1,4)}function Ib(){var a=this.localeData()._week;return Eb(this.year(),a.dow,a.doy)}function Jb(a){return null==a?Math.ceil((this.month()+1)/3):this.month(3*(a-1)+this.month()%3)}function Kb(a,b){return"string"!=typeof a?a:isNaN(a)?(a=b.weekdaysParse(a),"number"==typeof a?a:null):parseInt(a,10)}function Lb(a){return this._weekdays[a.day()]}function Mb(a){return this._weekdaysShort[a.day()]}function Nb(a){return this._weekdaysMin[a.day()]}function Ob(a){var b,c,d;for(this._weekdaysParse=this._weekdaysParse||[],b=0;7>b;b++)if(this._weekdaysParse[b]||(c=Da([2e3,1]).day(b),d="^"+this.weekdays(c,"")+"|^"+this.weekdaysShort(c,"")+"|^"+this.weekdaysMin(c,""),this._weekdaysParse[b]=new RegExp(d.replace(".",""),"i")),this._weekdaysParse[b].test(a))return b}function Pb(a){var b=this._isUTC?this._d.getUTCDay():this._d.getDay();return null!=a?(a=Kb(a,this.localeData()),this.add(a-b,"d")):b}function Qb(a){var b=(this.day()+7-this.localeData()._week.dow)%7;return null==a?b:this.add(a-b,"d")}function Rb(a){return null==a?this.day()||7:this.day(this.day()%7?a:a-7)}function Sb(a,b){H(a,0,0,function(){return this.localeData().meridiem(this.hours(),this.minutes(),b)})}function Tb(a,b){return b._meridiemParse}function Ub(a){return"p"===(a+"").toLowerCase().charAt(0)}function Vb(a,b,c){return a>11?c?"pm":"PM":c?"am":"AM"}function Wb(a,b){b[qe]=q(1e3*("0."+a))}function Xb(){return this._isUTC?"UTC":""}function Yb(){return this._isUTC?"Coordinated Universal Time":""}function Zb(a){return Da(1e3*a)}function $b(){return Da.apply(null,arguments).parseZone()}function _b(a,b,c){var d=this._calendar[a];return"function"==typeof d?d.call(b,c):d}function ac(a){var b=this._longDateFormat[a],c=this._longDateFormat[a.toUpperCase()];return b||!c?b:(this._longDateFormat[a]=c.replace(/MMMM|MM|DD|dddd/g,function(a){return a.slice(1)}),this._longDateFormat[a])}function bc(){return this._invalidDate}function cc(a){return this._ordinal.replace("%d",a)}function dc(a){return a}function ec(a,b,c,d){var e=this._relativeTime[c];return"function"==typeof e?e(a,b,c,d):e.replace(/%d/i,a)}function fc(a,b){var c=this._relativeTime[a>0?"future":"past"];return"function"==typeof c?c(b):c.replace(/%s/i,b)}function gc(a){var b,c;for(c in a)b=a[c],"function"==typeof b?this[c]=b:this["_"+c]=b;this._ordinalParseLenient=new RegExp(this._ordinalParse.source+"|"+/\d{1,2}/.source)}function hc(a,b,c,d){var e=y(),f=h().set(d,b);return e[c](f,a)}function ic(a,b,c,d,e){if("number"==typeof a&&(b=a,a=void 0),a=a||"",null!=b)return hc(a,b,c,e);var f,g=[];for(f=0;d>f;f++)g[f]=hc(a,f,c,e);return g}function jc(a,b){return ic(a,b,"months",12,"month")}function kc(a,b){return ic(a,b,"monthsShort",12,"month")}function lc(a,b){return ic(a,b,"weekdays",7,"day")}function mc(a,b){return ic(a,b,"weekdaysShort",7,"day")}function nc(a,b){return ic(a,b,"weekdaysMin",7,"day")}function oc(){var a=this._data;return this._milliseconds=_e(this._milliseconds),this._days=_e(this._days),this._months=_e(this._months),a.milliseconds=_e(a.milliseconds),a.seconds=_e(a.seconds),a.minutes=_e(a.minutes),a.hours=_e(a.hours),a.months=_e(a.months),a.years=_e(a.years),this}function pc(a,b,c,d){var e=Ya(b,c);return a._milliseconds+=d*e._milliseconds,a._days+=d*e._days,a._months+=d*e._months,a._bubble()}function qc(a,b){return pc(this,a,b,1)}function rc(a,b){return pc(this,a,b,-1)}function sc(a){return 0>a?Math.floor(a):Math.ceil(a)}function tc(){var a,b,c,d,e,f=this._milliseconds,g=this._days,h=this._months,i=this._data;return f>=0&&g>=0&&h>=0||0>=f&&0>=g&&0>=h||(f+=864e5*sc(vc(h)+g),g=0,h=0),i.milliseconds=f%1e3,a=p(f/1e3),i.seconds=a%60,b=p(a/60),i.minutes=b%60,c=p(b/60),i.hours=c%24,g+=p(c/24),e=p(uc(g)),h+=e,g-=sc(vc(e)),d=p(h/12),h%=12,i.days=g,i.months=h,i.years=d,this}function uc(a){return 4800*a/146097}function vc(a){return 146097*a/4800}function wc(a){var b,c,d=this._milliseconds;if(a=A(a),"month"===a||"year"===a)return b=this._days+d/864e5,c=this._months+uc(b),"month"===a?c:c/12;switch(b=this._days+Math.round(vc(this._months)),a){case"week":return b/7+d/6048e5;case"day":return b+d/864e5;case"hour":return 24*b+d/36e5;case"minute":return 1440*b+d/6e4;case"second":return 86400*b+d/1e3;case"millisecond":return Math.floor(864e5*b)+d;default:throw new Error("Unknown unit "+a)}}function xc(){return this._milliseconds+864e5*this._days+this._months%12*2592e6+31536e6*q(this._months/12)}function yc(a){return function(){return this.as(a)}}function zc(a){return a=A(a),this[a+"s"]()}function Ac(a){return function(){return this._data[a]}}function Bc(){return p(this.days()/7)}function Cc(a,b,c,d,e){return e.relativeTime(b||1,!!c,a,d)}function Dc(a,b,c){var d=Ya(a).abs(),e=qf(d.as("s")),f=qf(d.as("m")),g=qf(d.as("h")),h=qf(d.as("d")),i=qf(d.as("M")),j=qf(d.as("y")),k=e<rf.s&&["s",e]||1===f&&["m"]||f<rf.m&&["mm",f]||1===g&&["h"]||g<rf.h&&["hh",g]||1===h&&["d"]||h<rf.d&&["dd",h]||1===i&&["M"]||i<rf.M&&["MM",i]||1===j&&["y"]||["yy",j];return k[2]=b,k[3]=+a>0,k[4]=c,Cc.apply(null,k)}function Ec(a,b){return void 0===rf[a]?!1:void 0===b?rf[a]:(rf[a]=b,!0)}function Fc(a){var b=this.localeData(),c=Dc(this,!a,b);return a&&(c=b.pastFuture(+this,c)),b.postformat(c)}function Gc(){var a,b,c,d=sf(this._milliseconds)/1e3,e=sf(this._days),f=sf(this._months);a=p(d/60),b=p(a/60),d%=60,a%=60,c=p(f/12),f%=12;var g=c,h=f,i=e,j=b,k=a,l=d,m=this.asSeconds();return m?(0>m?"-":"")+"P"+(g?g+"Y":"")+(h?h+"M":"")+(i?i+"D":"")+(j||k||l?"T":"")+(j?j+"H":"")+(k?k+"M":"")+(l?l+"S":""):"P0D"}
//! moment.js locale configuration
//! locale : belarusian (be)
//! author : Dmitry Demidov : https://github.com/demidov91
//! author: Praleska: http://praleska.pro/
//! Author : Menelion Elensúle : https://github.com/Oire
function Hc(a,b){var c=a.split("_");return b%10===1&&b%100!==11?c[0]:b%10>=2&&4>=b%10&&(10>b%100||b%100>=20)?c[1]:c[2]}function Ic(a,b,c){var d={mm:b?"хвіліна_хвіліны_хвілін":"хвіліну_хвіліны_хвілін",hh:b?"гадзіна_гадзіны_гадзін":"гадзіну_гадзіны_гадзін",dd:"дзень_дні_дзён",MM:"месяц_месяцы_месяцаў",yy:"год_гады_гадоў"};return"m"===c?b?"хвіліна":"хвіліну":"h"===c?b?"гадзіна":"гадзіну":a+" "+Hc(d[c],+a)}function Jc(a,b){var c={nominative:"студзень_люты_сакавік_красавік_травень_чэрвень_ліпень_жнівень_верасень_кастрычнік_лістапад_снежань".split("_"),accusative:"студзеня_лютага_сакавіка_красавіка_траўня_чэрвеня_ліпеня_жніўня_верасня_кастрычніка_лістапада_снежня".split("_")},d=/D[oD]?(\[[^\[\]]*\]|\s+)+MMMM?/.test(b)?"accusative":"nominative";return c[d][a.month()]}function Kc(a,b){var c={nominative:"нядзеля_панядзелак_аўторак_серада_чацвер_пятніца_субота".split("_"),accusative:"нядзелю_панядзелак_аўторак_сераду_чацвер_пятніцу_суботу".split("_")},d=/\[ ?[Вв] ?(?:мінулую|наступную)? ?\] ?dddd/.test(b)?"accusative":"nominative";return c[d][a.day()]}
//! moment.js locale configuration
//! locale : breton (br)
//! author : Jean-Baptiste Le Duigou : https://github.com/jbleduigou
function Lc(a,b,c){var d={mm:"munutenn",MM:"miz",dd:"devezh"};return a+" "+Oc(d[c],a)}function Mc(a){switch(Nc(a)){case 1:case 3:case 4:case 5:case 9:return a+" bloaz";default:return a+" vloaz"}}function Nc(a){return a>9?Nc(a%10):a}function Oc(a,b){return 2===b?Pc(a):a}function Pc(a){var b={m:"v",b:"v",d:"z"};return void 0===b[a.charAt(0)]?a:b[a.charAt(0)]+a.substring(1)}
//! moment.js locale configuration
//! locale : bosnian (bs)
//! author : Nedim Cholich : https://github.com/frontyard
//! based on (hr) translation by Bojan Marković
function Qc(a,b,c){var d=a+" ";switch(c){case"m":return b?"jedna minuta":"jedne minute";case"mm":return d+=1===a?"minuta":2===a||3===a||4===a?"minute":"minuta";case"h":return b?"jedan sat":"jednog sata";case"hh":return d+=1===a?"sat":2===a||3===a||4===a?"sata":"sati";case"dd":return d+=1===a?"dan":"dana";case"MM":return d+=1===a?"mjesec":2===a||3===a||4===a?"mjeseca":"mjeseci";case"yy":return d+=1===a?"godina":2===a||3===a||4===a?"godine":"godina"}}function Rc(a){return a>1&&5>a&&1!==~~(a/10)}function Sc(a,b,c,d){var e=a+" ";switch(c){case"s":return b||d?"pár sekund":"pár sekundami";case"m":return b?"minuta":d?"minutu":"minutou";case"mm":return b||d?e+(Rc(a)?"minuty":"minut"):e+"minutami";break;case"h":return b?"hodina":d?"hodinu":"hodinou";case"hh":return b||d?e+(Rc(a)?"hodiny":"hodin"):e+"hodinami";break;case"d":return b||d?"den":"dnem";case"dd":return b||d?e+(Rc(a)?"dny":"dní"):e+"dny";break;case"M":return b||d?"měsíc":"měsícem";case"MM":return b||d?e+(Rc(a)?"měsíce":"měsíců"):e+"měsíci";break;case"y":return b||d?"rok":"rokem";case"yy":return b||d?e+(Rc(a)?"roky":"let"):e+"lety"}}
//! moment.js locale configuration
//! locale : austrian german (de-at)
//! author : lluchs : https://github.com/lluchs
//! author: Menelion Elensúle: https://github.com/Oire
//! author : Martin Groller : https://github.com/MadMG
function Tc(a,b,c,d){var e={m:["eine Minute","einer Minute"],h:["eine Stunde","einer Stunde"],d:["ein Tag","einem Tag"],dd:[a+" Tage",a+" Tagen"],M:["ein Monat","einem Monat"],MM:[a+" Monate",a+" Monaten"],y:["ein Jahr","einem Jahr"],yy:[a+" Jahre",a+" Jahren"]};return b?e[c][0]:e[c][1]}
//! moment.js locale configuration
//! locale : german (de)
//! author : lluchs : https://github.com/lluchs
//! author: Menelion Elensúle: https://github.com/Oire
function Uc(a,b,c,d){var e={m:["eine Minute","einer Minute"],h:["eine Stunde","einer Stunde"],d:["ein Tag","einem Tag"],dd:[a+" Tage",a+" Tagen"],M:["ein Monat","einem Monat"],MM:[a+" Monate",a+" Monaten"],y:["ein Jahr","einem Jahr"],yy:[a+" Jahre",a+" Jahren"]};return b?e[c][0]:e[c][1]}
//! moment.js locale configuration
//! locale : estonian (et)
//! author : Henry Kehlmann : https://github.com/madhenry
//! improvements : Illimar Tambek : https://github.com/ragulka
function Vc(a,b,c,d){var e={s:["mõne sekundi","mõni sekund","paar sekundit"],m:["ühe minuti","üks minut"],mm:[a+" minuti",a+" minutit"],h:["ühe tunni","tund aega","üks tund"],hh:[a+" tunni",a+" tundi"],d:["ühe päeva","üks päev"],M:["kuu aja","kuu aega","üks kuu"],MM:[a+" kuu",a+" kuud"],y:["ühe aasta","aasta","üks aasta"],yy:[a+" aasta",a+" aastat"]};return b?e[c][2]?e[c][2]:e[c][1]:d?e[c][0]:e[c][1]}function Wc(a,b,c,d){var e="";switch(c){case"s":return d?"muutaman sekunnin":"muutama sekunti";case"m":return d?"minuutin":"minuutti";case"mm":e=d?"minuutin":"minuuttia";break;case"h":return d?"tunnin":"tunti";case"hh":e=d?"tunnin":"tuntia";break;case"d":return d?"päivän":"päivä";case"dd":e=d?"päivän":"päivää";break;case"M":return d?"kuukauden":"kuukausi";case"MM":e=d?"kuukauden":"kuukautta";break;case"y":return d?"vuoden":"vuosi";case"yy":e=d?"vuoden":"vuotta"}return e=Xc(a,d)+" "+e}function Xc(a,b){return 10>a?b?Pf[a]:Of[a]:a}
//! moment.js locale configuration
//! locale : hrvatski (hr)
//! author : Bojan Marković : https://github.com/bmarkovic
function Yc(a,b,c){var d=a+" ";switch(c){case"m":return b?"jedna minuta":"jedne minute";case"mm":return d+=1===a?"minuta":2===a||3===a||4===a?"minute":"minuta";case"h":return b?"jedan sat":"jednog sata";case"hh":return d+=1===a?"sat":2===a||3===a||4===a?"sata":"sati";case"dd":return d+=1===a?"dan":"dana";case"MM":return d+=1===a?"mjesec":2===a||3===a||4===a?"mjeseca":"mjeseci";case"yy":return d+=1===a?"godina":2===a||3===a||4===a?"godine":"godina"}}function Zc(a,b,c,d){var e=a;switch(c){case"s":return d||b?"néhány másodperc":"néhány másodperce";case"m":return"egy"+(d||b?" perc":" perce");case"mm":return e+(d||b?" perc":" perce");case"h":return"egy"+(d||b?" óra":" órája");case"hh":return e+(d||b?" óra":" órája");case"d":return"egy"+(d||b?" nap":" napja");case"dd":return e+(d||b?" nap":" napja");case"M":return"egy"+(d||b?" hónap":" hónapja");case"MM":return e+(d||b?" hónap":" hónapja");case"y":return"egy"+(d||b?" év":" éve");case"yy":return e+(d||b?" év":" éve")}return""}function $c(a){return(a?"":"[múlt] ")+"["+Uf[this.day()]+"] LT[-kor]"}
//! moment.js locale configuration
//! locale : Armenian (hy-am)
//! author : Armendarabyan : https://github.com/armendarabyan
function _c(a,b){var c={nominative:"հունվար_փետրվար_մարտ_ապրիլ_մայիս_հունիս_հուլիս_օգոստոս_սեպտեմբեր_հոկտեմբեր_նոյեմբեր_դեկտեմբեր".split("_"),accusative:"հունվարի_փետրվարի_մարտի_ապրիլի_մայիսի_հունիսի_հուլիսի_օգոստոսի_սեպտեմբերի_հոկտեմբերի_նոյեմբերի_դեկտեմբերի".split("_")},d=/D[oD]?(\[[^\[\]]*\]|\s+)+MMMM?/.test(b)?"accusative":"nominative";return c[d][a.month()]}function ad(a,b){var c="հնվ_փտր_մրտ_ապր_մյս_հնս_հլս_օգս_սպտ_հկտ_նմբ_դկտ".split("_");return c[a.month()]}function bd(a,b){var c="կիրակի_երկուշաբթի_երեքշաբթի_չորեքշաբթի_հինգշաբթի_ուրբաթ_շաբաթ".split("_");return c[a.day()]}
//! moment.js locale configuration
//! locale : icelandic (is)
//! author : Hinrik Örn Sigurðsson : https://github.com/hinrik
function cd(a){return a%100===11?!0:a%10===1?!1:!0}function dd(a,b,c,d){var e=a+" ";switch(c){case"s":return b||d?"nokkrar sekúndur":"nokkrum sekúndum";case"m":return b?"mínúta":"mínútu";case"mm":return cd(a)?e+(b||d?"mínútur":"mínútum"):b?e+"mínúta":e+"mínútu";case"hh":return cd(a)?e+(b||d?"klukkustundir":"klukkustundum"):e+"klukkustund";case"d":return b?"dagur":d?"dag":"degi";case"dd":return cd(a)?b?e+"dagar":e+(d?"daga":"dögum"):b?e+"dagur":e+(d?"dag":"degi");case"M":return b?"mánuður":d?"mánuð":"mánuði";case"MM":return cd(a)?b?e+"mánuðir":e+(d?"mánuði":"mánuðum"):b?e+"mánuður":e+(d?"mánuð":"mánuði");case"y":return b||d?"ár":"ári";case"yy":return cd(a)?e+(b||d?"ár":"árum"):e+(b||d?"ár":"ári")}}
//! moment.js locale configuration
//! locale : Georgian (ka)
//! author : Irakli Janiashvili : https://github.com/irakli-janiashvili
function ed(a,b){var c={nominative:"იანვარი_თებერვალი_მარტი_აპრილი_მაისი_ივნისი_ივლისი_აგვისტო_სექტემბერი_ოქტომბერი_ნოემბერი_დეკემბერი".split("_"),accusative:"იანვარს_თებერვალს_მარტს_აპრილის_მაისს_ივნისს_ივლისს_აგვისტს_სექტემბერს_ოქტომბერს_ნოემბერს_დეკემბერს".split("_")},d=/D[oD] *MMMM?/.test(b)?"accusative":"nominative";return c[d][a.month()]}function fd(a,b){var c={nominative:"კვირა_ორშაბათი_სამშაბათი_ოთხშაბათი_ხუთშაბათი_პარასკევი_შაბათი".split("_"),accusative:"კვირას_ორშაბათს_სამშაბათს_ოთხშაბათს_ხუთშაბათს_პარასკევს_შაბათს".split("_")},d=/(წინა|შემდეგ)/.test(b)?"accusative":"nominative";return c[d][a.day()]}
//! moment.js locale configuration
//! locale : Luxembourgish (lb)
//! author : mweimerskirch : https://github.com/mweimerskirch, David Raison : https://github.com/kwisatz
function gd(a,b,c,d){var e={m:["eng Minutt","enger Minutt"],h:["eng Stonn","enger Stonn"],d:["een Dag","engem Dag"],M:["ee Mount","engem Mount"],y:["ee Joer","engem Joer"]};return b?e[c][0]:e[c][1]}function hd(a){var b=a.substr(0,a.indexOf(" "));return jd(b)?"a "+a:"an "+a}function id(a){var b=a.substr(0,a.indexOf(" "));return jd(b)?"viru "+a:"virun "+a}function jd(a){if(a=parseInt(a,10),isNaN(a))return!1;if(0>a)return!0;if(10>a)return a>=4&&7>=a?!0:!1;if(100>a){var b=a%10,c=a/10;return jd(0===b?c:b)}if(1e4>a){for(;a>=10;)a/=10;return jd(a)}return a/=1e3,jd(a)}function kd(a,b,c,d){return b?"kelios sekundės":d?"kelių sekundžių":"kelias sekundes"}function ld(a,b){var c={nominative:"sausis_vasaris_kovas_balandis_gegužė_birželis_liepa_rugpjūtis_rugsėjis_spalis_lapkritis_gruodis".split("_"),accusative:"sausio_vasario_kovo_balandžio_gegužės_birželio_liepos_rugpjūčio_rugsėjo_spalio_lapkričio_gruodžio".split("_")},d=/D[oD]?(\[[^\[\]]*\]|\s+)+MMMM?/.test(b)?"accusative":"nominative";return c[d][a.month()]}function md(a,b,c,d){return b?od(c)[0]:d?od(c)[1]:od(c)[2]}function nd(a){return a%10===0||a>10&&20>a}function od(a){return Vf[a].split("_")}function pd(a,b,c,d){var e=a+" ";return 1===a?e+md(a,b,c[0],d):b?e+(nd(a)?od(c)[1]:od(c)[0]):d?e+od(c)[1]:e+(nd(a)?od(c)[1]:od(c)[2])}function qd(a,b){var c=-1===b.indexOf("dddd HH:mm"),d=Wf[a.day()];return c?d:d.substring(0,d.length-2)+"į"}function rd(a,b,c){return c?b%10===1&&11!==b?a[2]:a[3]:b%10===1&&11!==b?a[0]:a[1]}function sd(a,b,c){return a+" "+rd(Xf[c],a,b)}function td(a,b,c){return rd(Xf[c],a,b)}function ud(a,b){return b?"dažas sekundes":"dažām sekundēm"}function vd(a){return 5>a%10&&a%10>1&&~~(a/10)%10!==1}function wd(a,b,c){var d=a+" ";switch(c){case"m":return b?"minuta":"minutę";case"mm":return d+(vd(a)?"minuty":"minut");case"h":return b?"godzina":"godzinę";case"hh":return d+(vd(a)?"godziny":"godzin");case"MM":return d+(vd(a)?"miesiące":"miesięcy");case"yy":return d+(vd(a)?"lata":"lat")}}
//! moment.js locale configuration
//! locale : romanian (ro)
//! author : Vlad Gurdiga : https://github.com/gurdiga
//! author : Valentin Agachi : https://github.com/avaly
function xd(a,b,c){var d={mm:"minute",hh:"ore",dd:"zile",MM:"luni",yy:"ani"},e=" ";return(a%100>=20||a>=100&&a%100===0)&&(e=" de "),a+e+d[c]}
//! moment.js locale configuration
//! locale : russian (ru)
//! author : Viktorminator : https://github.com/Viktorminator
//! Author : Menelion Elensúle : https://github.com/Oire
function yd(a,b){var c=a.split("_");return b%10===1&&b%100!==11?c[0]:b%10>=2&&4>=b%10&&(10>b%100||b%100>=20)?c[1]:c[2]}function zd(a,b,c){var d={mm:b?"минута_минуты_минут":"минуту_минуты_минут",hh:"час_часа_часов",dd:"день_дня_дней",MM:"месяц_месяца_месяцев",yy:"год_года_лет"};return"m"===c?b?"минута":"минуту":a+" "+yd(d[c],+a)}function Ad(a,b){var c={nominative:"январь_февраль_март_апрель_май_июнь_июль_август_сентябрь_октябрь_ноябрь_декабрь".split("_"),accusative:"января_февраля_марта_апреля_мая_июня_июля_августа_сентября_октября_ноября_декабря".split("_")},d=/D[oD]?(\[[^\[\]]*\]|\s+)+MMMM?/.test(b)?"accusative":"nominative";return c[d][a.month()]}function Bd(a,b){var c={nominative:"янв_фев_март_апр_май_июнь_июль_авг_сен_окт_ноя_дек".split("_"),accusative:"янв_фев_мар_апр_мая_июня_июля_авг_сен_окт_ноя_дек".split("_")},d=/D[oD]?(\[[^\[\]]*\]|\s+)+MMMM?/.test(b)?"accusative":"nominative";return c[d][a.month()]}function Cd(a,b){var c={nominative:"воскресенье_понедельник_вторник_среда_четверг_пятница_суббота".split("_"),accusative:"воскресенье_понедельник_вторник_среду_четверг_пятницу_субботу".split("_")},d=/\[ ?[Вв] ?(?:прошлую|следующую|эту)? ?\] ?dddd/.test(b)?"accusative":"nominative";return c[d][a.day()]}function Dd(a){return a>1&&5>a}function Ed(a,b,c,d){var e=a+" ";switch(c){case"s":return b||d?"pár sekúnd":"pár sekundami";case"m":return b?"minúta":d?"minútu":"minútou";case"mm":return b||d?e+(Dd(a)?"minúty":"minút"):e+"minútami";break;case"h":return b?"hodina":d?"hodinu":"hodinou";case"hh":return b||d?e+(Dd(a)?"hodiny":"hodín"):e+"hodinami";break;case"d":return b||d?"deň":"dňom";case"dd":return b||d?e+(Dd(a)?"dni":"dní"):e+"dňami";break;case"M":return b||d?"mesiac":"mesiacom";case"MM":return b||d?e+(Dd(a)?"mesiace":"mesiacov"):e+"mesiacmi";break;case"y":return b||d?"rok":"rokom";case"yy":return b||d?e+(Dd(a)?"roky":"rokov"):e+"rokmi"}}
//! moment.js locale configuration
//! locale : slovenian (sl)
//! author : Robert Sedovšek : https://github.com/sedovsek
function Fd(a,b,c,d){var e=a+" ";switch(c){case"s":return b||d?"nekaj sekund":"nekaj sekundami";case"m":return b?"ena minuta":"eno minuto";case"mm":return e+=1===a?b?"minuta":"minuto":2===a?b||d?"minuti":"minutama":5>a?b||d?"minute":"minutami":b||d?"minut":"minutami";case"h":return b?"ena ura":"eno uro";case"hh":return e+=1===a?b?"ura":"uro":2===a?b||d?"uri":"urama":5>a?b||d?"ure":"urami":b||d?"ur":"urami";case"d":return b||d?"en dan":"enim dnem";case"dd":return e+=1===a?b||d?"dan":"dnem":2===a?b||d?"dni":"dnevoma":b||d?"dni":"dnevi";case"M":return b||d?"en mesec":"enim mesecem";case"MM":return e+=1===a?b||d?"mesec":"mesecem":2===a?b||d?"meseca":"mesecema":5>a?b||d?"mesece":"meseci":b||d?"mesecev":"meseci";case"y":return b||d?"eno leto":"enim letom";case"yy":return e+=1===a?b||d?"leto":"letom":2===a?b||d?"leti":"letoma":5>a?b||d?"leta":"leti":b||d?"let":"leti"}}function Gd(a,b,c,d){var e={s:["viensas secunds","'iensas secunds"],m:["'n míut","'iens míut"],mm:[a+" míuts"," "+a+" míuts"],h:["'n þora","'iensa þora"],hh:[a+" þoras"," "+a+" þoras"],d:["'n ziua","'iensa ziua"],dd:[a+" ziuas"," "+a+" ziuas"],M:["'n mes","'iens mes"],MM:[a+" mesen"," "+a+" mesen"],y:["'n ar","'iens ar"],yy:[a+" ars"," "+a+" ars"]};return d?e[c][0]:b?e[c][0]:e[c][1].trim()}
//! moment.js locale configuration
//! locale : ukrainian (uk)
//! author : zemlanin : https://github.com/zemlanin
//! Author : Menelion Elensúle : https://github.com/Oire
function Hd(a,b){var c=a.split("_");return b%10===1&&b%100!==11?c[0]:b%10>=2&&4>=b%10&&(10>b%100||b%100>=20)?c[1]:c[2]}function Id(a,b,c){var d={mm:"хвилина_хвилини_хвилин",hh:"година_години_годин",dd:"день_дні_днів",MM:"місяць_місяці_місяців",yy:"рік_роки_років"};return"m"===c?b?"хвилина":"хвилину":"h"===c?b?"година":"годину":a+" "+Hd(d[c],+a)}function Jd(a,b){var c={nominative:"січень_лютий_березень_квітень_травень_червень_липень_серпень_вересень_жовтень_листопад_грудень".split("_"),accusative:"січня_лютого_березня_квітня_травня_червня_липня_серпня_вересня_жовтня_листопада_грудня".split("_")},d=/D[oD]? *MMMM?/.test(b)?"accusative":"nominative";return c[d][a.month()]}function Kd(a,b){var c={nominative:"неділя_понеділок_вівторок_середа_четвер_п’ятниця_субота".split("_"),accusative:"неділю_понеділок_вівторок_середу_четвер_п’ятницю_суботу".split("_"),genitive:"неділі_понеділка_вівторка_середи_четверга_п’ятниці_суботи".split("_")},d=/(\[[ВвУу]\]) ?dddd/.test(b)?"accusative":/\[?(?:минулої|наступної)? ?\] ?dddd/.test(b)?"genitive":"nominative";return c[d][a.day()]}function Ld(a){return function(){return a+"о"+(11===this.hours()?"б":"")+"] LT"}}var Md,Nd,Od=a.momentProperties=[],Pd=!1,Qd={},Rd={},Sd=/(\[[^\[]*\])|(\\)?(Mo|MM?M?M?|Do|DDDo|DD?D?D?|ddd?d?|do?|w[o|w]?|W[o|W]?|Q|YYYYYY|YYYYY|YYYY|YY|gg(ggg?)?|GG(GGG?)?|e|E|a|A|hh?|HH?|mm?|ss?|S{1,9}|x|X|zz?|ZZ?|.)/g,Td=/(\[[^\[]*\])|(\\)?(LTS|LT|LL?L?L?|l{1,4})/g,Ud={},Vd={},Wd=/\d/,Xd=/\d\d/,Yd=/\d{3}/,Zd=/\d{4}/,$d=/[+-]?\d{6}/,_d=/\d\d?/,ae=/\d{1,3}/,be=/\d{1,4}/,ce=/[+-]?\d{1,6}/,de=/\d+/,ee=/[+-]?\d+/,fe=/Z|[+-]\d\d:?\d\d/gi,ge=/[+-]?\d+(\.\d{1,3})?/,he=/[0-9]*['a-z\u00A0-\u05FF\u0700-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+|[\u0600-\u06FF\/]+(\s*?[\u0600-\u06FF]+){1,2}/i,ie={},je={},ke=0,le=1,me=2,ne=3,oe=4,pe=5,qe=6;H("M",["MM",2],"Mo",function(){return this.month()+1}),H("MMM",0,0,function(a){return this.localeData().monthsShort(this,a)}),H("MMMM",0,0,function(a){return this.localeData().months(this,a)}),z("month","M"),N("M",_d),N("MM",_d,Xd),N("MMM",he),N("MMMM",he),Q(["M","MM"],function(a,b){b[le]=q(a)-1}),Q(["MMM","MMMM"],function(a,b,c,d){var e=c._locale.monthsParse(a,d,c._strict);null!=e?b[le]=e:j(c).invalidMonth=a});var re="January_February_March_April_May_June_July_August_September_October_November_December".split("_"),se="Jan_Feb_Mar_Apr_May_Jun_Jul_Aug_Sep_Oct_Nov_Dec".split("_"),te={};a.suppressDeprecationWarnings=!1;var ue=/^\s*(?:[+-]\d{6}|\d{4})-(?:(\d\d-\d\d)|(W\d\d$)|(W\d\d-\d)|(\d\d\d))((T| )(\d\d(:\d\d(:\d\d(\.\d+)?)?)?)?([\+\-]\d\d(?::?\d\d)?|\s*Z)?)?$/,ve=[["YYYYYY-MM-DD",/[+-]\d{6}-\d{2}-\d{2}/],["YYYY-MM-DD",/\d{4}-\d{2}-\d{2}/],["GGGG-[W]WW-E",/\d{4}-W\d{2}-\d/],["GGGG-[W]WW",/\d{4}-W\d{2}/],["YYYY-DDD",/\d{4}-\d{3}/]],we=[["HH:mm:ss.SSSS",/(T| )\d\d:\d\d:\d\d\.\d+/],["HH:mm:ss",/(T| )\d\d:\d\d:\d\d/],["HH:mm",/(T| )\d\d:\d\d/],["HH",/(T| )\d\d/]],xe=/^\/?Date\((\-?\d+)/i;a.createFromInputFallback=aa("moment construction falls back to js Date. This is discouraged and will be removed in upcoming major release. Please refer to https://github.com/moment/moment/issues/1407 for more info.",function(a){a._d=new Date(a._i+(a._useUTC?" UTC":""))}),H(0,["YY",2],0,function(){return this.year()%100}),H(0,["YYYY",4],0,"year"),H(0,["YYYYY",5],0,"year"),H(0,["YYYYYY",6,!0],0,"year"),z("year","y"),N("Y",ee),N("YY",_d,Xd),N("YYYY",be,Zd),N("YYYYY",ce,$d),N("YYYYYY",ce,$d),Q(["YYYYY","YYYYYY"],ke),Q("YYYY",function(b,c){c[ke]=2===b.length?a.parseTwoDigitYear(b):q(b)}),Q("YY",function(b,c){c[ke]=a.parseTwoDigitYear(b)}),a.parseTwoDigitYear=function(a){return q(a)+(q(a)>68?1900:2e3)};var ye=C("FullYear",!1);H("w",["ww",2],"wo","week"),H("W",["WW",2],"Wo","isoWeek"),z("week","w"),z("isoWeek","W"),N("w",_d),N("ww",_d,Xd),N("W",_d),N("WW",_d,Xd),R(["w","ww","W","WW"],function(a,b,c,d){b[d.substr(0,1)]=q(a)});var ze={dow:0,doy:6};H("DDD",["DDDD",3],"DDDo","dayOfYear"),z("dayOfYear","DDD"),N("DDD",ae),N("DDDD",Yd),Q(["DDD","DDDD"],function(a,b,c){c._dayOfYear=q(a)}),a.ISO_8601=function(){};var Ae=aa("moment().min is deprecated, use moment.min instead. https://github.com/moment/moment/issues/1548",function(){var a=Da.apply(null,arguments);return this>a?this:a}),Be=aa("moment().max is deprecated, use moment.max instead. https://github.com/moment/moment/issues/1548",function(){var a=Da.apply(null,arguments);return a>this?this:a});Ja("Z",":"),Ja("ZZ",""),N("Z",fe),N("ZZ",fe),Q(["Z","ZZ"],function(a,b,c){c._useUTC=!0,c._tzm=Ka(a)});var Ce=/([\+\-]|\d\d)/gi;a.updateOffset=function(){};var De=/(\-)?(?:(\d*)\.)?(\d+)\:(\d+)(?:\:(\d+)\.?(\d{3})?)?/,Ee=/^(-)?P(?:(?:([0-9,.]*)Y)?(?:([0-9,.]*)M)?(?:([0-9,.]*)D)?(?:T(?:([0-9,.]*)H)?(?:([0-9,.]*)M)?(?:([0-9,.]*)S)?)?|([0-9,.]*)W)$/;Ya.fn=Ha.prototype;var Fe=ab(1,"add"),Ge=ab(-1,"subtract");a.defaultFormat="YYYY-MM-DDTHH:mm:ssZ";var He=aa("moment().lang() is deprecated. Instead, use moment().localeData() to get the language configuration. Use moment().locale() to change languages.",function(a){return void 0===a?this.localeData():this.locale(a)});H(0,["gg",2],0,function(){return this.weekYear()%100}),H(0,["GG",2],0,function(){return this.isoWeekYear()%100}),Db("gggg","weekYear"),Db("ggggg","weekYear"),Db("GGGG","isoWeekYear"),Db("GGGGG","isoWeekYear"),z("weekYear","gg"),z("isoWeekYear","GG"),N("G",ee),N("g",ee),N("GG",_d,Xd),N("gg",_d,Xd),N("GGGG",be,Zd),N("gggg",be,Zd),N("GGGGG",ce,$d),N("ggggg",ce,$d),R(["gggg","ggggg","GGGG","GGGGG"],function(a,b,c,d){b[d.substr(0,2)]=q(a)}),R(["gg","GG"],function(b,c,d,e){c[e]=a.parseTwoDigitYear(b)}),H("Q",0,0,"quarter"),z("quarter","Q"),N("Q",Wd),Q("Q",function(a,b){b[le]=3*(q(a)-1)}),H("D",["DD",2],"Do","date"),z("date","D"),N("D",_d),N("DD",_d,Xd),N("Do",function(a,b){return a?b._ordinalParse:b._ordinalParseLenient}),Q(["D","DD"],me),Q("Do",function(a,b){b[me]=q(a.match(_d)[0],10)});var Ie=C("Date",!0);H("d",0,"do","day"),H("dd",0,0,function(a){return this.localeData().weekdaysMin(this,a)}),H("ddd",0,0,function(a){return this.localeData().weekdaysShort(this,a)}),H("dddd",0,0,function(a){return this.localeData().weekdays(this,a)}),H("e",0,0,"weekday"),H("E",0,0,"isoWeekday"),z("day","d"),z("weekday","e"),z("isoWeekday","E"),N("d",_d),N("e",_d),N("E",_d),N("dd",he),N("ddd",he),N("dddd",he),R(["dd","ddd","dddd"],function(a,b,c){var d=c._locale.weekdaysParse(a);null!=d?b.d=d:j(c).invalidWeekday=a}),R(["d","e","E"],function(a,b,c,d){b[d]=q(a)});var Je="Sunday_Monday_Tuesday_Wednesday_Thursday_Friday_Saturday".split("_"),Ke="Sun_Mon_Tue_Wed_Thu_Fri_Sat".split("_"),Le="Su_Mo_Tu_We_Th_Fr_Sa".split("_");H("H",["HH",2],0,"hour"),H("h",["hh",2],0,function(){return this.hours()%12||12}),Sb("a",!0),Sb("A",!1),z("hour","h"),N("a",Tb),N("A",Tb),N("H",_d),N("h",_d),N("HH",_d,Xd),N("hh",_d,Xd),Q(["H","HH"],ne),Q(["a","A"],function(a,b,c){c._isPm=c._locale.isPM(a),c._meridiem=a}),Q(["h","hh"],function(a,b,c){b[ne]=q(a),j(c).bigHour=!0});var Me=/[ap]\.?m?\.?/i,Ne=C("Hours",!0);H("m",["mm",2],0,"minute"),z("minute","m"),N("m",_d),N("mm",_d,Xd),Q(["m","mm"],oe);var Oe=C("Minutes",!1);H("s",["ss",2],0,"second"),z("second","s"),N("s",_d),N("ss",_d,Xd),Q(["s","ss"],pe);var Pe=C("Seconds",!1);H("S",0,0,function(){return~~(this.millisecond()/100)}),H(0,["SS",2],0,function(){return~~(this.millisecond()/10)}),H(0,["SSS",3],0,"millisecond"),H(0,["SSSS",4],0,function(){return 10*this.millisecond()}),H(0,["SSSSS",5],0,function(){return 100*this.millisecond()}),H(0,["SSSSSS",6],0,function(){return 1e3*this.millisecond()}),H(0,["SSSSSSS",7],0,function(){return 1e4*this.millisecond()}),H(0,["SSSSSSSS",8],0,function(){return 1e5*this.millisecond()}),H(0,["SSSSSSSSS",9],0,function(){return 1e6*this.millisecond()}),z("millisecond","ms"),N("S",ae,Wd),N("SS",ae,Xd),N("SSS",ae,Yd);var Qe;for(Qe="SSSS";Qe.length<=9;Qe+="S")N(Qe,de);for(Qe="S";Qe.length<=9;Qe+="S")Q(Qe,Wb);var Re=C("Milliseconds",!1);H("z",0,0,"zoneAbbr"),H("zz",0,0,"zoneName");var Se=n.prototype;Se.add=Fe,Se.calendar=cb,Se.clone=db,Se.diff=ib,Se.endOf=ub,Se.format=mb,Se.from=nb,Se.fromNow=ob,Se.to=pb,Se.toNow=qb,Se.get=F,Se.invalidAt=Cb,Se.isAfter=eb,Se.isBefore=fb,Se.isBetween=gb,Se.isSame=hb,Se.isValid=Ab,Se.lang=He,Se.locale=rb,Se.localeData=sb,Se.max=Be,Se.min=Ae,Se.parsingFlags=Bb,Se.set=F,Se.startOf=tb,Se.subtract=Ge,Se.toArray=yb,Se.toObject=zb,Se.toDate=xb,Se.toISOString=lb,Se.toJSON=lb,Se.toString=kb,Se.unix=wb,Se.valueOf=vb,Se.year=ye,Se.isLeapYear=ia,Se.weekYear=Fb,Se.isoWeekYear=Gb,Se.quarter=Se.quarters=Jb,Se.month=Y,Se.daysInMonth=Z,Se.week=Se.weeks=na,Se.isoWeek=Se.isoWeeks=oa,Se.weeksInYear=Ib,Se.isoWeeksInYear=Hb,Se.date=Ie,Se.day=Se.days=Pb,Se.weekday=Qb,Se.isoWeekday=Rb,Se.dayOfYear=qa,Se.hour=Se.hours=Ne,Se.minute=Se.minutes=Oe,Se.second=Se.seconds=Pe,Se.millisecond=Se.milliseconds=Re,Se.utcOffset=Na,Se.utc=Pa,Se.local=Qa,Se.parseZone=Ra,Se.hasAlignedHourOffset=Sa,Se.isDST=Ta,Se.isDSTShifted=Ua,Se.isLocal=Va,Se.isUtcOffset=Wa,Se.isUtc=Xa,Se.isUTC=Xa,Se.zoneAbbr=Xb,Se.zoneName=Yb,Se.dates=aa("dates accessor is deprecated. Use date instead.",Ie),Se.months=aa("months accessor is deprecated. Use month instead",Y),Se.years=aa("years accessor is deprecated. Use year instead",ye),Se.zone=aa("moment().zone is deprecated, use moment().utcOffset instead. https://github.com/moment/moment/issues/1779",Oa);var Te=Se,Ue={sameDay:"[Today at] LT",nextDay:"[Tomorrow at] LT",nextWeek:"dddd [at] LT",lastDay:"[Yesterday at] LT",lastWeek:"[Last] dddd [at] LT",sameElse:"L"},Ve={LTS:"h:mm:ss A",LT:"h:mm A",L:"MM/DD/YYYY",LL:"MMMM D, YYYY",LLL:"MMMM D, YYYY h:mm A",LLLL:"dddd, MMMM D, YYYY h:mm A"},We="Invalid date",Xe="%d",Ye=/\d{1,2}/,Ze={future:"in %s",past:"%s ago",s:"a few seconds",m:"a minute",mm:"%d minutes",h:"an hour",hh:"%d hours",d:"a day",dd:"%d days",M:"a month",MM:"%d months",y:"a year",yy:"%d years"},$e=s.prototype;$e._calendar=Ue,$e.calendar=_b,$e._longDateFormat=Ve,$e.longDateFormat=ac,$e._invalidDate=We,$e.invalidDate=bc,$e._ordinal=Xe,$e.ordinal=cc,$e._ordinalParse=Ye,$e.preparse=dc,$e.postformat=dc,$e._relativeTime=Ze,$e.relativeTime=ec,$e.pastFuture=fc,$e.set=gc,$e.months=U,$e._months=re,$e.monthsShort=V,$e._monthsShort=se,$e.monthsParse=W,$e.week=ka,$e._week=ze,$e.firstDayOfYear=ma,$e.firstDayOfWeek=la,$e.weekdays=Lb,$e._weekdays=Je,$e.weekdaysMin=Nb,$e._weekdaysMin=Le,$e.weekdaysShort=Mb,$e._weekdaysShort=Ke,$e.weekdaysParse=Ob,$e.isPM=Ub,$e._meridiemParse=Me,$e.meridiem=Vb,w("en",{ordinalParse:/\d{1,2}(th|st|nd|rd)/,ordinal:function(a){var b=a%10,c=1===q(a%100/10)?"th":1===b?"st":2===b?"nd":3===b?"rd":"th";return a+c}}),a.lang=aa("moment.lang is deprecated. Use moment.locale instead.",w),a.langData=aa("moment.langData is deprecated. Use moment.localeData instead.",y);var _e=Math.abs,af=yc("ms"),bf=yc("s"),cf=yc("m"),df=yc("h"),ef=yc("d"),ff=yc("w"),gf=yc("M"),hf=yc("y"),jf=Ac("milliseconds"),kf=Ac("seconds"),lf=Ac("minutes"),mf=Ac("hours"),nf=Ac("days"),of=Ac("months"),pf=Ac("years"),qf=Math.round,rf={s:45,m:45,h:22,d:26,M:11},sf=Math.abs,tf=Ha.prototype;tf.abs=oc,tf.add=qc,tf.subtract=rc,tf.as=wc,tf.asMilliseconds=af,tf.asSeconds=bf,tf.asMinutes=cf,tf.asHours=df,tf.asDays=ef,tf.asWeeks=ff,tf.asMonths=gf,tf.asYears=hf,tf.valueOf=xc,tf._bubble=tc,tf.get=zc,tf.milliseconds=jf,tf.seconds=kf,tf.minutes=lf,tf.hours=mf,tf.days=nf,tf.weeks=Bc,tf.months=of,tf.years=pf,tf.humanize=Fc,tf.toISOString=Gc,tf.toString=Gc,tf.toJSON=Gc,tf.locale=rb,tf.localeData=sb,tf.toIsoString=aa("toIsoString() is deprecated. Please use toISOString() instead (notice the capitals)",Gc),tf.lang=He,H("X",0,0,"unix"),H("x",0,0,"valueOf"),N("x",ee),N("X",ge),Q("X",function(a,b,c){c._d=new Date(1e3*parseFloat(a,10))}),Q("x",function(a,b,c){c._d=new Date(q(a))}),
//! moment.js
//! version : 2.10.6
//! authors : Tim Wood, Iskren Chernev, Moment.js contributors
//! license : MIT
//! momentjs.com
a.version="2.10.6",b(Da),a.fn=Te,a.min=Fa,a.max=Ga,a.utc=h,a.unix=Zb,a.months=jc,a.isDate=d,a.locale=w,a.invalid=l,a.duration=Ya,a.isMoment=o,a.weekdays=lc,a.parseZone=$b,a.localeData=y,a.isDuration=Ia,a.monthsShort=kc,a.weekdaysMin=nc,a.defineLocale=x,a.weekdaysShort=mc,a.normalizeUnits=A,a.relativeTimeThreshold=Ec;var uf=a,vf=(uf.defineLocale("af",{months:"Januarie_Februarie_Maart_April_Mei_Junie_Julie_Augustus_September_Oktober_November_Desember".split("_"),monthsShort:"Jan_Feb_Mar_Apr_Mei_Jun_Jul_Aug_Sep_Okt_Nov_Des".split("_"),weekdays:"Sondag_Maandag_Dinsdag_Woensdag_Donderdag_Vrydag_Saterdag".split("_"),weekdaysShort:"Son_Maa_Din_Woe_Don_Vry_Sat".split("_"),weekdaysMin:"So_Ma_Di_Wo_Do_Vr_Sa".split("_"),meridiemParse:/vm|nm/i,isPM:function(a){return/^nm$/i.test(a)},meridiem:function(a,b,c){return 12>a?c?"vm":"VM":c?"nm":"NM"},longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd, D MMMM YYYY HH:mm"},calendar:{sameDay:"[Vandag om] LT",nextDay:"[Môre om] LT",nextWeek:"dddd [om] LT",lastDay:"[Gister om] LT",lastWeek:"[Laas] dddd [om] LT",sameElse:"L"},relativeTime:{future:"oor %s",past:"%s gelede",s:"'n paar sekondes",m:"'n minuut",mm:"%d minute",h:"'n uur",hh:"%d ure",d:"'n dag",dd:"%d dae",M:"'n maand",MM:"%d maande",y:"'n jaar",yy:"%d jaar"},ordinalParse:/\d{1,2}(ste|de)/,ordinal:function(a){return a+(1===a||8===a||a>=20?"ste":"de")},week:{dow:1,doy:4}}),uf.defineLocale("ar-ma",{months:"يناير_فبراير_مارس_أبريل_ماي_يونيو_يوليوز_غشت_شتنبر_أكتوبر_نونبر_دجنبر".split("_"),monthsShort:"يناير_فبراير_مارس_أبريل_ماي_يونيو_يوليوز_غشت_شتنبر_أكتوبر_نونبر_دجنبر".split("_"),weekdays:"الأحد_الإتنين_الثلاثاء_الأربعاء_الخميس_الجمعة_السبت".split("_"),weekdaysShort:"احد_اتنين_ثلاثاء_اربعاء_خميس_جمعة_سبت".split("_"),weekdaysMin:"ح_ن_ث_ر_خ_ج_س".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd D MMMM YYYY HH:mm"},calendar:{sameDay:"[اليوم على الساعة] LT",nextDay:"[غدا على الساعة] LT",nextWeek:"dddd [على الساعة] LT",lastDay:"[أمس على الساعة] LT",lastWeek:"dddd [على الساعة] LT",sameElse:"L"},relativeTime:{future:"في %s",past:"منذ %s",s:"ثوان",m:"دقيقة",mm:"%d دقائق",h:"ساعة",hh:"%d ساعات",d:"يوم",dd:"%d أيام",M:"شهر",MM:"%d أشهر",y:"سنة",yy:"%d سنوات"},week:{dow:6,doy:12}}),{1:"١",2:"٢",3:"٣",4:"٤",5:"٥",6:"٦",7:"٧",8:"٨",9:"٩",0:"٠"}),wf={"١":"1","٢":"2","٣":"3","٤":"4","٥":"5","٦":"6","٧":"7","٨":"8","٩":"9","٠":"0"},xf=(uf.defineLocale("ar-sa",{months:"يناير_فبراير_مارس_أبريل_مايو_يونيو_يوليو_أغسطس_سبتمبر_أكتوبر_نوفمبر_ديسمبر".split("_"),monthsShort:"يناير_فبراير_مارس_أبريل_مايو_يونيو_يوليو_أغسطس_سبتمبر_أكتوبر_نوفمبر_ديسمبر".split("_"),weekdays:"الأحد_الإثنين_الثلاثاء_الأربعاء_الخميس_الجمعة_السبت".split("_"),weekdaysShort:"أحد_إثنين_ثلاثاء_أربعاء_خميس_جمعة_سبت".split("_"),weekdaysMin:"ح_ن_ث_ر_خ_ج_س".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd D MMMM YYYY HH:mm"},meridiemParse:/ص|م/,isPM:function(a){return"م"===a},meridiem:function(a,b,c){return 12>a?"ص":"م"},calendar:{sameDay:"[اليوم على الساعة] LT",nextDay:"[غدا على الساعة] LT",nextWeek:"dddd [على الساعة] LT",lastDay:"[أمس على الساعة] LT",lastWeek:"dddd [على الساعة] LT",sameElse:"L"},relativeTime:{future:"في %s",past:"منذ %s",s:"ثوان",m:"دقيقة",mm:"%d دقائق",h:"ساعة",hh:"%d ساعات",d:"يوم",dd:"%d أيام",M:"شهر",MM:"%d أشهر",y:"سنة",yy:"%d سنوات"},preparse:function(a){return a.replace(/[١٢٣٤٥٦٧٨٩٠]/g,function(a){return wf[a]}).replace(/،/g,",")},postformat:function(a){return a.replace(/\d/g,function(a){return vf[a]}).replace(/,/g,"،")},week:{dow:6,doy:12}}),uf.defineLocale("ar-tn",{months:"جانفي_فيفري_مارس_أفريل_ماي_جوان_جويلية_أوت_سبتمبر_أكتوبر_نوفمبر_ديسمبر".split("_"),monthsShort:"جانفي_فيفري_مارس_أفريل_ماي_جوان_جويلية_أوت_سبتمبر_أكتوبر_نوفمبر_ديسمبر".split("_"),weekdays:"الأحد_الإثنين_الثلاثاء_الأربعاء_الخميس_الجمعة_السبت".split("_"),weekdaysShort:"أحد_إثنين_ثلاثاء_أربعاء_خميس_جمعة_سبت".split("_"),weekdaysMin:"ح_ن_ث_ر_خ_ج_س".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd D MMMM YYYY HH:mm"},calendar:{sameDay:"[اليوم على الساعة] LT",nextDay:"[غدا على الساعة] LT",nextWeek:"dddd [على الساعة] LT",lastDay:"[أمس على الساعة] LT",lastWeek:"dddd [على الساعة] LT",sameElse:"L"},relativeTime:{future:"في %s",past:"منذ %s",s:"ثوان",m:"دقيقة",mm:"%d دقائق",h:"ساعة",hh:"%d ساعات",d:"يوم",dd:"%d أيام",M:"شهر",MM:"%d أشهر",y:"سنة",yy:"%d سنوات"},week:{dow:1,doy:4}}),{1:"١",2:"٢",3:"٣",4:"٤",5:"٥",6:"٦",7:"٧",8:"٨",9:"٩",0:"٠"}),yf={"١":"1","٢":"2","٣":"3","٤":"4","٥":"5","٦":"6","٧":"7","٨":"8","٩":"9","٠":"0"},zf=function(a){return 0===a?0:1===a?1:2===a?2:a%100>=3&&10>=a%100?3:a%100>=11?4:5},Af={s:["أقل من ثانية","ثانية واحدة",["ثانيتان","ثانيتين"],"%d ثوان","%d ثانية","%d ثانية"],m:["أقل من دقيقة","دقيقة واحدة",["دقيقتان","دقيقتين"],"%d دقائق","%d دقيقة","%d دقيقة"],h:["أقل من ساعة","ساعة واحدة",["ساعتان","ساعتين"],"%d ساعات","%d ساعة","%d ساعة"],d:["أقل من يوم","يوم واحد",["يومان","يومين"],"%d أيام","%d يومًا","%d يوم"],M:["أقل من شهر","شهر واحد",["شهران","شهرين"],"%d أشهر","%d شهرا","%d شهر"],y:["أقل من عام","عام واحد",["عامان","عامين"],"%d أعوام","%d عامًا","%d عام"]},Bf=function(a){return function(b,c,d,e){var f=zf(b),g=Af[a][zf(b)];return 2===f&&(g=g[c?0:1]),g.replace(/%d/i,b)}},Cf=["كانون الثاني يناير","شباط فبراير","آذار مارس","نيسان أبريل","أيار مايو","حزيران يونيو","تموز يوليو","آب أغسطس","أيلول سبتمبر","تشرين الأول أكتوبر","تشرين الثاني نوفمبر","كانون الأول ديسمبر"],Df=(uf.defineLocale("ar",{months:Cf,monthsShort:Cf,weekdays:"الأحد_الإثنين_الثلاثاء_الأربعاء_الخميس_الجمعة_السبت".split("_"),weekdaysShort:"أحد_إثنين_ثلاثاء_أربعاء_خميس_جمعة_سبت".split("_"),weekdaysMin:"ح_ن_ث_ر_خ_ج_س".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"D/‏M/‏YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd D MMMM YYYY HH:mm"},meridiemParse:/ص|م/,isPM:function(a){return"م"===a},meridiem:function(a,b,c){return 12>a?"ص":"م"},calendar:{sameDay:"[اليوم عند الساعة] LT",nextDay:"[غدًا عند الساعة] LT",nextWeek:"dddd [عند الساعة] LT",lastDay:"[أمس عند الساعة] LT",lastWeek:"dddd [عند الساعة] LT",sameElse:"L"},relativeTime:{future:"بعد %s",past:"منذ %s",s:Bf("s"),m:Bf("m"),mm:Bf("m"),h:Bf("h"),hh:Bf("h"),d:Bf("d"),dd:Bf("d"),M:Bf("M"),MM:Bf("M"),y:Bf("y"),yy:Bf("y")},preparse:function(a){return a.replace(/\u200f/g,"").replace(/[١٢٣٤٥٦٧٨٩٠]/g,function(a){return yf[a]}).replace(/،/g,",")},postformat:function(a){return a.replace(/\d/g,function(a){return xf[a]}).replace(/,/g,"،")},week:{dow:6,doy:12}}),{1:"-inci",5:"-inci",8:"-inci",70:"-inci",80:"-inci",2:"-nci",7:"-nci",20:"-nci",50:"-nci",3:"-üncü",4:"-üncü",100:"-üncü",6:"-ncı",9:"-uncu",10:"-uncu",30:"-uncu",60:"-ıncı",90:"-ıncı"}),Ef=(uf.defineLocale("az",{months:"yanvar_fevral_mart_aprel_may_iyun_iyul_avqust_sentyabr_oktyabr_noyabr_dekabr".split("_"),monthsShort:"yan_fev_mar_apr_may_iyn_iyl_avq_sen_okt_noy_dek".split("_"),weekdays:"Bazar_Bazar ertəsi_Çərşənbə axşamı_Çərşənbə_Cümə axşamı_Cümə_Şənbə".split("_"),weekdaysShort:"Baz_BzE_ÇAx_Çər_CAx_Cüm_Şən".split("_"),weekdaysMin:"Bz_BE_ÇA_Çə_CA_Cü_Şə".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD.MM.YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd, D MMMM YYYY HH:mm"},calendar:{sameDay:"[bugün saat] LT",nextDay:"[sabah saat] LT",nextWeek:"[gələn həftə] dddd [saat] LT",lastDay:"[dünən] LT",lastWeek:"[keçən həftə] dddd [saat] LT",sameElse:"L"},relativeTime:{future:"%s sonra",past:"%s əvvəl",s:"birneçə saniyyə",m:"bir dəqiqə",mm:"%d dəqiqə",h:"bir saat",hh:"%d saat",d:"bir gün",dd:"%d gün",M:"bir ay",MM:"%d ay",y:"bir il",yy:"%d il"},meridiemParse:/gecə|səhər|gündüz|axşam/,isPM:function(a){return/^(gündüz|axşam)$/.test(a)},meridiem:function(a,b,c){return 4>a?"gecə":12>a?"səhər":17>a?"gündüz":"axşam"},ordinalParse:/\d{1,2}-(ıncı|inci|nci|üncü|ncı|uncu)/,ordinal:function(a){if(0===a)return a+"-ıncı";var b=a%10,c=a%100-b,d=a>=100?100:null;return a+(Df[b]||Df[c]||Df[d])},week:{dow:1,doy:7}}),uf.defineLocale("be",{months:Jc,monthsShort:"студ_лют_сак_крас_трав_чэрв_ліп_жнів_вер_каст_ліст_снеж".split("_"),weekdays:Kc,weekdaysShort:"нд_пн_ат_ср_чц_пт_сб".split("_"),weekdaysMin:"нд_пн_ат_ср_чц_пт_сб".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD.MM.YYYY",LL:"D MMMM YYYY г.",LLL:"D MMMM YYYY г., HH:mm",LLLL:"dddd, D MMMM YYYY г., HH:mm"},calendar:{sameDay:"[Сёння ў] LT",nextDay:"[Заўтра ў] LT",lastDay:"[Учора ў] LT",nextWeek:function(){return"[У] dddd [ў] LT"},lastWeek:function(){switch(this.day()){case 0:case 3:case 5:case 6:return"[У мінулую] dddd [ў] LT";case 1:case 2:case 4:return"[У мінулы] dddd [ў] LT"}},sameElse:"L"},relativeTime:{future:"праз %s",past:"%s таму",s:"некалькі секунд",m:Ic,mm:Ic,h:Ic,hh:Ic,d:"дзень",dd:Ic,M:"месяц",MM:Ic,y:"год",yy:Ic},meridiemParse:/ночы|раніцы|дня|вечара/,isPM:function(a){return/^(дня|вечара)$/.test(a)},meridiem:function(a,b,c){return 4>a?"ночы":12>a?"раніцы":17>a?"дня":"вечара"},ordinalParse:/\d{1,2}-(і|ы|га)/,ordinal:function(a,b){switch(b){case"M":case"d":case"DDD":case"w":case"W":return a%10!==2&&a%10!==3||a%100===12||a%100===13?a+"-ы":a+"-і";case"D":return a+"-га";default:return a}},week:{dow:1,doy:7}}),uf.defineLocale("bg",{months:"януари_февруари_март_април_май_юни_юли_август_септември_октомври_ноември_декември".split("_"),monthsShort:"янр_фев_мар_апр_май_юни_юли_авг_сеп_окт_ное_дек".split("_"),weekdays:"неделя_понеделник_вторник_сряда_четвъртък_петък_събота".split("_"),weekdaysShort:"нед_пон_вто_сря_чет_пет_съб".split("_"),weekdaysMin:"нд_пн_вт_ср_чт_пт_сб".split("_"),longDateFormat:{LT:"H:mm",LTS:"H:mm:ss",L:"D.MM.YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY H:mm",LLLL:"dddd, D MMMM YYYY H:mm"},calendar:{sameDay:"[Днес в] LT",nextDay:"[Утре в] LT",nextWeek:"dddd [в] LT",lastDay:"[Вчера в] LT",lastWeek:function(){switch(this.day()){case 0:case 3:case 6:return"[В изминалата] dddd [в] LT";case 1:case 2:case 4:case 5:return"[В изминалия] dddd [в] LT"}},sameElse:"L"},relativeTime:{future:"след %s",past:"преди %s",s:"няколко секунди",m:"минута",mm:"%d минути",h:"час",hh:"%d часа",d:"ден",dd:"%d дни",M:"месец",MM:"%d месеца",y:"година",yy:"%d години"},ordinalParse:/\d{1,2}-(ев|ен|ти|ви|ри|ми)/,ordinal:function(a){var b=a%10,c=a%100;return 0===a?a+"-ев":0===c?a+"-ен":c>10&&20>c?a+"-ти":1===b?a+"-ви":2===b?a+"-ри":7===b||8===b?a+"-ми":a+"-ти"},week:{dow:1,doy:7}}),{1:"১",2:"২",3:"৩",4:"৪",5:"৫",6:"৬",7:"৭",8:"৮",9:"৯",0:"০"}),Ff={"১":"1","২":"2","৩":"3","৪":"4","৫":"5","৬":"6","৭":"7","৮":"8","৯":"9","০":"0"},Gf=(uf.defineLocale("bn",{months:"জানুয়ারী_ফেবুয়ারী_মার্চ_এপ্রিল_মে_জুন_জুলাই_অগাস্ট_সেপ্টেম্বর_অক্টোবর_নভেম্বর_ডিসেম্বর".split("_"),monthsShort:"জানু_ফেব_মার্চ_এপর_মে_জুন_জুল_অগ_সেপ্ট_অক্টো_নভ_ডিসেম্".split("_"),weekdays:"রবিবার_সোমবার_মঙ্গলবার_বুধবার_বৃহস্পত্তিবার_শুক্রুবার_শনিবার".split("_"),weekdaysShort:"রবি_সোম_মঙ্গল_বুধ_বৃহস্পত্তি_শুক্রু_শনি".split("_"),weekdaysMin:"রব_সম_মঙ্গ_বু_ব্রিহ_শু_শনি".split("_"),longDateFormat:{LT:"A h:mm সময়",LTS:"A h:mm:ss সময়",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY, A h:mm সময়",LLLL:"dddd, D MMMM YYYY, A h:mm সময়"},calendar:{sameDay:"[আজ] LT",nextDay:"[আগামীকাল] LT",nextWeek:"dddd, LT",lastDay:"[গতকাল] LT",lastWeek:"[গত] dddd, LT",sameElse:"L"},relativeTime:{future:"%s পরে",past:"%s আগে",s:"কএক সেকেন্ড",m:"এক মিনিট",mm:"%d মিনিট",h:"এক ঘন্টা",hh:"%d ঘন্টা",d:"এক দিন",dd:"%d দিন",M:"এক মাস",MM:"%d মাস",y:"এক বছর",yy:"%d বছর"},preparse:function(a){return a.replace(/[১২৩৪৫৬৭৮৯০]/g,function(a){return Ff[a]})},postformat:function(a){return a.replace(/\d/g,function(a){return Ef[a]})},meridiemParse:/রাত|সকাল|দুপুর|বিকেল|রাত/,isPM:function(a){return/^(দুপুর|বিকেল|রাত)$/.test(a)},meridiem:function(a,b,c){return 4>a?"রাত":10>a?"সকাল":17>a?"দুপুর":20>a?"বিকেল":"রাত"},week:{dow:0,doy:6}}),{1:"༡",2:"༢",3:"༣",4:"༤",5:"༥",6:"༦",7:"༧",8:"༨",9:"༩",0:"༠"}),Hf={"༡":"1","༢":"2","༣":"3","༤":"4","༥":"5","༦":"6","༧":"7","༨":"8","༩":"9","༠":"0"},If=(uf.defineLocale("bo",{months:"ཟླ་བ་དང་པོ_ཟླ་བ་གཉིས་པ_ཟླ་བ་གསུམ་པ_ཟླ་བ་བཞི་པ_ཟླ་བ་ལྔ་པ_ཟླ་བ་དྲུག་པ_ཟླ་བ་བདུན་པ_ཟླ་བ་བརྒྱད་པ_ཟླ་བ་དགུ་པ_ཟླ་བ་བཅུ་པ_ཟླ་བ་བཅུ་གཅིག་པ_ཟླ་བ་བཅུ་གཉིས་པ".split("_"),monthsShort:"ཟླ་བ་དང་པོ_ཟླ་བ་གཉིས་པ_ཟླ་བ་གསུམ་པ_ཟླ་བ་བཞི་པ_ཟླ་བ་ལྔ་པ_ཟླ་བ་དྲུག་པ_ཟླ་བ་བདུན་པ_ཟླ་བ་བརྒྱད་པ_ཟླ་བ་དགུ་པ_ཟླ་བ་བཅུ་པ_ཟླ་བ་བཅུ་གཅིག་པ_ཟླ་བ་བཅུ་གཉིས་པ".split("_"),weekdays:"གཟའ་ཉི་མ་_གཟའ་ཟླ་བ་_གཟའ་མིག་དམར་_གཟའ་ལྷག་པ་_གཟའ་ཕུར་བུ_གཟའ་པ་སངས་_གཟའ་སྤེན་པ་".split("_"),weekdaysShort:"ཉི་མ་_ཟླ་བ་_མིག་དམར་_ལྷག་པ་_ཕུར་བུ_པ་སངས་_སྤེན་པ་".split("_"),weekdaysMin:"ཉི་མ་_ཟླ་བ་_མིག་དམར་_ལྷག་པ་_ཕུར་བུ_པ་སངས་_སྤེན་པ་".split("_"),longDateFormat:{LT:"A h:mm",LTS:"A h:mm:ss",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY, A h:mm",LLLL:"dddd, D MMMM YYYY, A h:mm"},calendar:{sameDay:"[དི་རིང] LT",nextDay:"[སང་ཉིན] LT",nextWeek:"[བདུན་ཕྲག་རྗེས་མ], LT",lastDay:"[ཁ་སང] LT",lastWeek:"[བདུན་ཕྲག་མཐའ་མ] dddd, LT",sameElse:"L"},relativeTime:{future:"%s ལ་",past:"%s སྔན་ལ",s:"ལམ་སང",m:"སྐར་མ་གཅིག",mm:"%d སྐར་མ",h:"ཆུ་ཚོད་གཅིག",hh:"%d ཆུ་ཚོད",d:"ཉིན་གཅིག",dd:"%d ཉིན་",M:"ཟླ་བ་གཅིག",MM:"%d ཟླ་བ",y:"ལོ་གཅིག",yy:"%d ལོ"},preparse:function(a){return a.replace(/[༡༢༣༤༥༦༧༨༩༠]/g,function(a){return Hf[a]})},postformat:function(a){return a.replace(/\d/g,function(a){return Gf[a]})},meridiemParse:/མཚན་མོ|ཞོགས་ཀས|ཉིན་གུང|དགོང་དག|མཚན་མོ/,isPM:function(a){return/^(ཉིན་གུང|དགོང་དག|མཚན་མོ)$/.test(a)},meridiem:function(a,b,c){return 4>a?"མཚན་མོ":10>a?"ཞོགས་ཀས":17>a?"ཉིན་གུང":20>a?"དགོང་དག":"མཚན་མོ"},week:{dow:0,doy:6}}),uf.defineLocale("br",{months:"Genver_C'hwevrer_Meurzh_Ebrel_Mae_Mezheven_Gouere_Eost_Gwengolo_Here_Du_Kerzu".split("_"),monthsShort:"Gen_C'hwe_Meu_Ebr_Mae_Eve_Gou_Eos_Gwe_Her_Du_Ker".split("_"),weekdays:"Sul_Lun_Meurzh_Merc'her_Yaou_Gwener_Sadorn".split("_"),weekdaysShort:"Sul_Lun_Meu_Mer_Yao_Gwe_Sad".split("_"),weekdaysMin:"Su_Lu_Me_Mer_Ya_Gw_Sa".split("_"),longDateFormat:{LT:"h[e]mm A",LTS:"h[e]mm:ss A",L:"DD/MM/YYYY",LL:"D [a viz] MMMM YYYY",LLL:"D [a viz] MMMM YYYY h[e]mm A",LLLL:"dddd, D [a viz] MMMM YYYY h[e]mm A"},calendar:{sameDay:"[Hiziv da] LT",nextDay:"[Warc'hoazh da] LT",nextWeek:"dddd [da] LT",lastDay:"[Dec'h da] LT",lastWeek:"dddd [paset da] LT",sameElse:"L"},relativeTime:{future:"a-benn %s",past:"%s 'zo",s:"un nebeud segondennoù",m:"ur vunutenn",mm:Lc,h:"un eur",hh:"%d eur",d:"un devezh",dd:Lc,M:"ur miz",MM:Lc,y:"ur bloaz",yy:Mc},ordinalParse:/\d{1,2}(añ|vet)/,ordinal:function(a){var b=1===a?"añ":"vet";return a+b},week:{dow:1,doy:4}}),uf.defineLocale("bs",{months:"januar_februar_mart_april_maj_juni_juli_august_septembar_oktobar_novembar_decembar".split("_"),monthsShort:"jan._feb._mar._apr._maj._jun._jul._aug._sep._okt._nov._dec.".split("_"),weekdays:"nedjelja_ponedjeljak_utorak_srijeda_četvrtak_petak_subota".split("_"),weekdaysShort:"ned._pon._uto._sri._čet._pet._sub.".split("_"),weekdaysMin:"ne_po_ut_sr_če_pe_su".split("_"),longDateFormat:{LT:"H:mm",LTS:"H:mm:ss",L:"DD. MM. YYYY",LL:"D. MMMM YYYY",LLL:"D. MMMM YYYY H:mm",LLLL:"dddd, D. MMMM YYYY H:mm"},calendar:{sameDay:"[danas u] LT",nextDay:"[sutra u] LT",nextWeek:function(){switch(this.day()){case 0:return"[u] [nedjelju] [u] LT";case 3:return"[u] [srijedu] [u] LT";case 6:return"[u] [subotu] [u] LT";case 1:case 2:case 4:case 5:return"[u] dddd [u] LT"}},lastDay:"[jučer u] LT",lastWeek:function(){switch(this.day()){case 0:case 3:return"[prošlu] dddd [u] LT";case 6:return"[prošle] [subote] [u] LT";case 1:case 2:case 4:case 5:return"[prošli] dddd [u] LT"}},sameElse:"L"},relativeTime:{future:"za %s",past:"prije %s",s:"par sekundi",m:Qc,mm:Qc,h:Qc,hh:Qc,d:"dan",dd:Qc,M:"mjesec",MM:Qc,y:"godinu",yy:Qc},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:7}}),uf.defineLocale("ca",{months:"gener_febrer_març_abril_maig_juny_juliol_agost_setembre_octubre_novembre_desembre".split("_"),monthsShort:"gen._febr._mar._abr._mai._jun._jul._ag._set._oct._nov._des.".split("_"),weekdays:"diumenge_dilluns_dimarts_dimecres_dijous_divendres_dissabte".split("_"),weekdaysShort:"dg._dl._dt._dc._dj._dv._ds.".split("_"),weekdaysMin:"Dg_Dl_Dt_Dc_Dj_Dv_Ds".split("_"),longDateFormat:{LT:"H:mm",LTS:"LT:ss",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY H:mm",LLLL:"dddd D MMMM YYYY H:mm"},calendar:{sameDay:function(){return"[avui a "+(1!==this.hours()?"les":"la")+"] LT"},nextDay:function(){return"[demà a "+(1!==this.hours()?"les":"la")+"] LT"},nextWeek:function(){return"dddd [a "+(1!==this.hours()?"les":"la")+"] LT"},lastDay:function(){return"[ahir a "+(1!==this.hours()?"les":"la")+"] LT"},lastWeek:function(){return"[el] dddd [passat a "+(1!==this.hours()?"les":"la")+"] LT"},sameElse:"L"},relativeTime:{future:"en %s",past:"fa %s",s:"uns segons",m:"un minut",mm:"%d minuts",h:"una hora",hh:"%d hores",d:"un dia",dd:"%d dies",M:"un mes",MM:"%d mesos",y:"un any",yy:"%d anys"},ordinalParse:/\d{1,2}(r|n|t|è|a)/,ordinal:function(a,b){var c=1===a?"r":2===a?"n":3===a?"r":4===a?"t":"è";return("w"===b||"W"===b)&&(c="a"),a+c},week:{dow:1,doy:4}}),"leden_únor_březen_duben_květen_červen_červenec_srpen_září_říjen_listopad_prosinec".split("_")),Jf="led_úno_bře_dub_kvě_čvn_čvc_srp_zář_říj_lis_pro".split("_"),Kf=(uf.defineLocale("cs",{months:If,monthsShort:Jf,monthsParse:function(a,b){var c,d=[];for(c=0;12>c;c++)d[c]=new RegExp("^"+a[c]+"$|^"+b[c]+"$","i");return d}(If,Jf),weekdays:"neděle_pondělí_úterý_středa_čtvrtek_pátek_sobota".split("_"),weekdaysShort:"ne_po_út_st_čt_pá_so".split("_"),weekdaysMin:"ne_po_út_st_čt_pá_so".split("_"),longDateFormat:{LT:"H:mm",LTS:"H:mm:ss",L:"DD.MM.YYYY",LL:"D. MMMM YYYY",LLL:"D. MMMM YYYY H:mm",LLLL:"dddd D. MMMM YYYY H:mm"},calendar:{sameDay:"[dnes v] LT",nextDay:"[zítra v] LT",nextWeek:function(){switch(this.day()){case 0:return"[v neděli v] LT";case 1:case 2:return"[v] dddd [v] LT";case 3:return"[ve středu v] LT";case 4:return"[ve čtvrtek v] LT";case 5:return"[v pátek v] LT";case 6:return"[v sobotu v] LT"}},lastDay:"[včera v] LT",lastWeek:function(){switch(this.day()){case 0:return"[minulou neděli v] LT";case 1:case 2:return"[minulé] dddd [v] LT";case 3:return"[minulou středu v] LT";case 4:case 5:return"[minulý] dddd [v] LT";case 6:return"[minulou sobotu v] LT"}},sameElse:"L"},relativeTime:{future:"za %s",past:"před %s",s:Sc,m:Sc,mm:Sc,h:Sc,hh:Sc,d:Sc,dd:Sc,M:Sc,MM:Sc,y:Sc,yy:Sc},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:4}}),uf.defineLocale("cv",{months:"кӑрлач_нарӑс_пуш_ака_май_ҫӗртме_утӑ_ҫурла_авӑн_юпа_чӳк_раштав".split("_"),monthsShort:"кӑр_нар_пуш_ака_май_ҫӗр_утӑ_ҫур_авн_юпа_чӳк_раш".split("_"),weekdays:"вырсарникун_тунтикун_ытларикун_юнкун_кӗҫнерникун_эрнекун_шӑматкун".split("_"),weekdaysShort:"выр_тун_ытл_юн_кӗҫ_эрн_шӑм".split("_"),weekdaysMin:"вр_тн_ыт_юн_кҫ_эр_шм".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD-MM-YYYY",LL:"YYYY [ҫулхи] MMMM [уйӑхӗн] D[-мӗшӗ]",LLL:"YYYY [ҫулхи] MMMM [уйӑхӗн] D[-мӗшӗ], HH:mm",LLLL:"dddd, YYYY [ҫулхи] MMMM [уйӑхӗн] D[-мӗшӗ], HH:mm"},calendar:{sameDay:"[Паян] LT [сехетре]",nextDay:"[Ыран] LT [сехетре]",lastDay:"[Ӗнер] LT [сехетре]",nextWeek:"[Ҫитес] dddd LT [сехетре]",lastWeek:"[Иртнӗ] dddd LT [сехетре]",sameElse:"L"},relativeTime:{future:function(a){var b=/сехет$/i.exec(a)?"рен":/ҫул$/i.exec(a)?"тан":"ран";return a+b},past:"%s каялла",s:"пӗр-ик ҫеккунт",m:"пӗр минут",mm:"%d минут",h:"пӗр сехет",hh:"%d сехет",d:"пӗр кун",dd:"%d кун",M:"пӗр уйӑх",MM:"%d уйӑх",y:"пӗр ҫул",yy:"%d ҫул"},ordinalParse:/\d{1,2}-мӗш/,ordinal:"%d-мӗш",week:{dow:1,doy:7}}),uf.defineLocale("cy",{months:"Ionawr_Chwefror_Mawrth_Ebrill_Mai_Mehefin_Gorffennaf_Awst_Medi_Hydref_Tachwedd_Rhagfyr".split("_"),monthsShort:"Ion_Chwe_Maw_Ebr_Mai_Meh_Gor_Aws_Med_Hyd_Tach_Rhag".split("_"),weekdays:"Dydd Sul_Dydd Llun_Dydd Mawrth_Dydd Mercher_Dydd Iau_Dydd Gwener_Dydd Sadwrn".split("_"),weekdaysShort:"Sul_Llun_Maw_Mer_Iau_Gwe_Sad".split("_"),weekdaysMin:"Su_Ll_Ma_Me_Ia_Gw_Sa".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd, D MMMM YYYY HH:mm"},calendar:{sameDay:"[Heddiw am] LT",nextDay:"[Yfory am] LT",nextWeek:"dddd [am] LT",lastDay:"[Ddoe am] LT",lastWeek:"dddd [diwethaf am] LT",sameElse:"L"},relativeTime:{future:"mewn %s",past:"%s yn ôl",s:"ychydig eiliadau",m:"munud",mm:"%d munud",h:"awr",hh:"%d awr",d:"diwrnod",dd:"%d diwrnod",M:"mis",MM:"%d mis",y:"blwyddyn",yy:"%d flynedd"},ordinalParse:/\d{1,2}(fed|ain|af|il|ydd|ed|eg)/,ordinal:function(a){var b=a,c="",d=["","af","il","ydd","ydd","ed","ed","ed","fed","fed","fed","eg","fed","eg","eg","fed","eg","eg","fed","eg","fed"];return b>20?c=40===b||50===b||60===b||80===b||100===b?"fed":"ain":b>0&&(c=d[b]),a+c},week:{dow:1,doy:4}}),uf.defineLocale("da",{months:"januar_februar_marts_april_maj_juni_juli_august_september_oktober_november_december".split("_"),monthsShort:"jan_feb_mar_apr_maj_jun_jul_aug_sep_okt_nov_dec".split("_"),weekdays:"søndag_mandag_tirsdag_onsdag_torsdag_fredag_lørdag".split("_"),weekdaysShort:"søn_man_tir_ons_tor_fre_lør".split("_"),weekdaysMin:"sø_ma_ti_on_to_fr_lø".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD/MM/YYYY",LL:"D. MMMM YYYY",LLL:"D. MMMM YYYY HH:mm",LLLL:"dddd [d.] D. MMMM YYYY HH:mm"},calendar:{sameDay:"[I dag kl.] LT",nextDay:"[I morgen kl.] LT",nextWeek:"dddd [kl.] LT",lastDay:"[I går kl.] LT",lastWeek:"[sidste] dddd [kl] LT",sameElse:"L"},relativeTime:{future:"om %s",past:"%s siden",s:"få sekunder",m:"et minut",mm:"%d minutter",h:"en time",hh:"%d timer",d:"en dag",dd:"%d dage",M:"en måned",MM:"%d måneder",y:"et år",yy:"%d år"},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:4}}),uf.defineLocale("de-at",{months:"Jänner_Februar_März_April_Mai_Juni_Juli_August_September_Oktober_November_Dezember".split("_"),monthsShort:"Jän._Febr._Mrz._Apr._Mai_Jun._Jul._Aug._Sept._Okt._Nov._Dez.".split("_"),weekdays:"Sonntag_Montag_Dienstag_Mittwoch_Donnerstag_Freitag_Samstag".split("_"),weekdaysShort:"So._Mo._Di._Mi._Do._Fr._Sa.".split("_"),weekdaysMin:"So_Mo_Di_Mi_Do_Fr_Sa".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD.MM.YYYY",LL:"D. MMMM YYYY",LLL:"D. MMMM YYYY HH:mm",LLLL:"dddd, D. MMMM YYYY HH:mm"},calendar:{sameDay:"[Heute um] LT [Uhr]",sameElse:"L",nextDay:"[Morgen um] LT [Uhr]",nextWeek:"dddd [um] LT [Uhr]",lastDay:"[Gestern um] LT [Uhr]",lastWeek:"[letzten] dddd [um] LT [Uhr]"},relativeTime:{future:"in %s",past:"vor %s",s:"ein paar Sekunden",m:Tc,mm:"%d Minuten",h:Tc,hh:"%d Stunden",d:Tc,dd:Tc,M:Tc,MM:Tc,y:Tc,yy:Tc},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:4}}),uf.defineLocale("de",{months:"Januar_Februar_März_April_Mai_Juni_Juli_August_September_Oktober_November_Dezember".split("_"),monthsShort:"Jan._Febr._Mrz._Apr._Mai_Jun._Jul._Aug._Sept._Okt._Nov._Dez.".split("_"),weekdays:"Sonntag_Montag_Dienstag_Mittwoch_Donnerstag_Freitag_Samstag".split("_"),weekdaysShort:"So._Mo._Di._Mi._Do._Fr._Sa.".split("_"),weekdaysMin:"So_Mo_Di_Mi_Do_Fr_Sa".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD.MM.YYYY",LL:"D. MMMM YYYY",LLL:"D. MMMM YYYY HH:mm",LLLL:"dddd, D. MMMM YYYY HH:mm"},calendar:{sameDay:"[Heute um] LT [Uhr]",sameElse:"L",nextDay:"[Morgen um] LT [Uhr]",nextWeek:"dddd [um] LT [Uhr]",lastDay:"[Gestern um] LT [Uhr]",lastWeek:"[letzten] dddd [um] LT [Uhr]"},relativeTime:{future:"in %s",past:"vor %s",s:"ein paar Sekunden",m:Uc,mm:"%d Minuten",h:Uc,hh:"%d Stunden",d:Uc,dd:Uc,M:Uc,MM:Uc,y:Uc,yy:Uc},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:4}}),uf.defineLocale("el",{monthsNominativeEl:"Ιανουάριος_Φεβρουάριος_Μάρτιος_Απρίλιος_Μάιος_Ιούνιος_Ιούλιος_Αύγουστος_Σεπτέμβριος_Οκτώβριος_Νοέμβριος_Δεκέμβριος".split("_"),monthsGenitiveEl:"Ιανουαρίου_Φεβρουαρίου_Μαρτίου_Απριλίου_Μαΐου_Ιουνίου_Ιουλίου_Αυγούστου_Σεπτεμβρίου_Οκτωβρίου_Νοεμβρίου_Δεκεμβρίου".split("_"),months:function(a,b){return/D/.test(b.substring(0,b.indexOf("MMMM")))?this._monthsGenitiveEl[a.month()]:this._monthsNominativeEl[a.month()]},monthsShort:"Ιαν_Φεβ_Μαρ_Απρ_Μαϊ_Ιουν_Ιουλ_Αυγ_Σεπ_Οκτ_Νοε_Δεκ".split("_"),weekdays:"Κυριακή_Δευτέρα_Τρίτη_Τετάρτη_Πέμπτη_Παρασκευή_Σάββατο".split("_"),weekdaysShort:"Κυρ_Δευ_Τρι_Τετ_Πεμ_Παρ_Σαβ".split("_"),weekdaysMin:"Κυ_Δε_Τρ_Τε_Πε_Πα_Σα".split("_"),meridiem:function(a,b,c){return a>11?c?"μμ":"ΜΜ":c?"πμ":"ΠΜ"},isPM:function(a){return"μ"===(a+"").toLowerCase()[0]},meridiemParse:/[ΠΜ]\.?Μ?\.?/i,longDateFormat:{LT:"h:mm A",LTS:"h:mm:ss A",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY h:mm A",LLLL:"dddd, D MMMM YYYY h:mm A"},calendarEl:{sameDay:"[Σήμερα {}] LT",nextDay:"[Αύριο {}] LT",nextWeek:"dddd [{}] LT",lastDay:"[Χθες {}] LT",lastWeek:function(){switch(this.day()){case 6:return"[το προηγούμενο] dddd [{}] LT";default:return"[την προηγούμενη] dddd [{}] LT"}},sameElse:"L"},calendar:function(a,b){var c=this._calendarEl[a],d=b&&b.hours();return"function"==typeof c&&(c=c.apply(b)),c.replace("{}",d%12===1?"στη":"στις")},relativeTime:{future:"σε %s",past:"%s πριν",s:"λίγα δευτερόλεπτα",m:"ένα λεπτό",mm:"%d λεπτά",h:"μία ώρα",hh:"%d ώρες",d:"μία μέρα",dd:"%d μέρες",M:"ένας μήνας",MM:"%d μήνες",y:"ένας χρόνος",yy:"%d χρόνια"},ordinalParse:/\d{1,2}η/,ordinal:"%dη",week:{dow:1,doy:4}}),uf.defineLocale("en-au",{months:"January_February_March_April_May_June_July_August_September_October_November_December".split("_"),monthsShort:"Jan_Feb_Mar_Apr_May_Jun_Jul_Aug_Sep_Oct_Nov_Dec".split("_"),weekdays:"Sunday_Monday_Tuesday_Wednesday_Thursday_Friday_Saturday".split("_"),weekdaysShort:"Sun_Mon_Tue_Wed_Thu_Fri_Sat".split("_"),weekdaysMin:"Su_Mo_Tu_We_Th_Fr_Sa".split("_"),longDateFormat:{LT:"h:mm A",LTS:"h:mm:ss A",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY h:mm A",LLLL:"dddd, D MMMM YYYY h:mm A"},calendar:{sameDay:"[Today at] LT",nextDay:"[Tomorrow at] LT",nextWeek:"dddd [at] LT",lastDay:"[Yesterday at] LT",lastWeek:"[Last] dddd [at] LT",sameElse:"L"},relativeTime:{future:"in %s",past:"%s ago",s:"a few seconds",m:"a minute",mm:"%d minutes",h:"an hour",hh:"%d hours",d:"a day",dd:"%d days",M:"a month",MM:"%d months",y:"a year",yy:"%d years"},ordinalParse:/\d{1,2}(st|nd|rd|th)/,ordinal:function(a){var b=a%10,c=1===~~(a%100/10)?"th":1===b?"st":2===b?"nd":3===b?"rd":"th";return a+c},week:{dow:1,doy:4}}),uf.defineLocale("en-ca",{months:"January_February_March_April_May_June_July_August_September_October_November_December".split("_"),monthsShort:"Jan_Feb_Mar_Apr_May_Jun_Jul_Aug_Sep_Oct_Nov_Dec".split("_"),weekdays:"Sunday_Monday_Tuesday_Wednesday_Thursday_Friday_Saturday".split("_"),weekdaysShort:"Sun_Mon_Tue_Wed_Thu_Fri_Sat".split("_"),weekdaysMin:"Su_Mo_Tu_We_Th_Fr_Sa".split("_"),longDateFormat:{LT:"h:mm A",LTS:"h:mm:ss A",L:"YYYY-MM-DD",LL:"D MMMM, YYYY",LLL:"D MMMM, YYYY h:mm A",LLLL:"dddd, D MMMM, YYYY h:mm A"},calendar:{sameDay:"[Today at] LT",nextDay:"[Tomorrow at] LT",nextWeek:"dddd [at] LT",lastDay:"[Yesterday at] LT",lastWeek:"[Last] dddd [at] LT",sameElse:"L"},relativeTime:{future:"in %s",past:"%s ago",s:"a few seconds",m:"a minute",mm:"%d minutes",h:"an hour",hh:"%d hours",d:"a day",dd:"%d days",M:"a month",MM:"%d months",y:"a year",yy:"%d years"},ordinalParse:/\d{1,2}(st|nd|rd|th)/,ordinal:function(a){var b=a%10,c=1===~~(a%100/10)?"th":1===b?"st":2===b?"nd":3===b?"rd":"th";return a+c}}),uf.defineLocale("en-gb",{months:"January_February_March_April_May_June_July_August_September_October_November_December".split("_"),monthsShort:"Jan_Feb_Mar_Apr_May_Jun_Jul_Aug_Sep_Oct_Nov_Dec".split("_"),weekdays:"Sunday_Monday_Tuesday_Wednesday_Thursday_Friday_Saturday".split("_"),weekdaysShort:"Sun_Mon_Tue_Wed_Thu_Fri_Sat".split("_"),weekdaysMin:"Su_Mo_Tu_We_Th_Fr_Sa".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd, D MMMM YYYY HH:mm"},calendar:{sameDay:"[Today at] LT",nextDay:"[Tomorrow at] LT",nextWeek:"dddd [at] LT",lastDay:"[Yesterday at] LT",lastWeek:"[Last] dddd [at] LT",sameElse:"L"},relativeTime:{future:"in %s",past:"%s ago",s:"a few seconds",m:"a minute",mm:"%d minutes",h:"an hour",hh:"%d hours",d:"a day",dd:"%d days",M:"a month",MM:"%d months",y:"a year",yy:"%d years"},ordinalParse:/\d{1,2}(st|nd|rd|th)/,ordinal:function(a){var b=a%10,c=1===~~(a%100/10)?"th":1===b?"st":2===b?"nd":3===b?"rd":"th";return a+c},week:{dow:1,doy:4}}),uf.defineLocale("eo",{months:"januaro_februaro_marto_aprilo_majo_junio_julio_aŭgusto_septembro_oktobro_novembro_decembro".split("_"),monthsShort:"jan_feb_mar_apr_maj_jun_jul_aŭg_sep_okt_nov_dec".split("_"),weekdays:"Dimanĉo_Lundo_Mardo_Merkredo_Ĵaŭdo_Vendredo_Sabato".split("_"),weekdaysShort:"Dim_Lun_Mard_Merk_Ĵaŭ_Ven_Sab".split("_"),weekdaysMin:"Di_Lu_Ma_Me_Ĵa_Ve_Sa".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"YYYY-MM-DD",LL:"D[-an de] MMMM, YYYY",LLL:"D[-an de] MMMM, YYYY HH:mm",LLLL:"dddd, [la] D[-an de] MMMM, YYYY HH:mm"},meridiemParse:/[ap]\.t\.m/i,isPM:function(a){return"p"===a.charAt(0).toLowerCase()},meridiem:function(a,b,c){return a>11?c?"p.t.m.":"P.T.M.":c?"a.t.m.":"A.T.M."},calendar:{sameDay:"[Hodiaŭ je] LT",nextDay:"[Morgaŭ je] LT",nextWeek:"dddd [je] LT",lastDay:"[Hieraŭ je] LT",lastWeek:"[pasinta] dddd [je] LT",sameElse:"L"},relativeTime:{future:"je %s",past:"antaŭ %s",s:"sekundoj",m:"minuto",mm:"%d minutoj",h:"horo",hh:"%d horoj",d:"tago",dd:"%d tagoj",M:"monato",MM:"%d monatoj",y:"jaro",yy:"%d jaroj"},ordinalParse:/\d{1,2}a/,ordinal:"%da",week:{dow:1,doy:7}}),"Ene._Feb._Mar._Abr._May._Jun._Jul._Ago._Sep._Oct._Nov._Dic.".split("_")),Lf="Ene_Feb_Mar_Abr_May_Jun_Jul_Ago_Sep_Oct_Nov_Dic".split("_"),Mf=(uf.defineLocale("es",{months:"Enero_Febrero_Marzo_Abril_Mayo_Junio_Julio_Agosto_Septiembre_Octubre_Noviembre_Diciembre".split("_"),monthsShort:function(a,b){return/-MMM-/.test(b)?Lf[a.month()]:Kf[a.month()]},weekdays:"Domingo_Lunes_Martes_Miércoles_Jueves_Viernes_Sábado".split("_"),weekdaysShort:"Dom._Lun._Mar._Mié._Jue._Vie._Sáb.".split("_"),weekdaysMin:"Do_Lu_Ma_Mi_Ju_Vi_Sá".split("_"),longDateFormat:{LT:"H:mm",LTS:"H:mm:ss",L:"DD/MM/YYYY",LL:"D [de] MMMM [de] YYYY",LLL:"D [de] MMMM [de] YYYY H:mm",LLLL:"dddd, D [de] MMMM [de] YYYY H:mm"},calendar:{sameDay:function(){return"[hoy a la"+(1!==this.hours()?"s":"")+"] LT"},nextDay:function(){return"[mañana a la"+(1!==this.hours()?"s":"")+"] LT"},nextWeek:function(){return"dddd [a la"+(1!==this.hours()?"s":"")+"] LT"},lastDay:function(){return"[ayer a la"+(1!==this.hours()?"s":"")+"] LT"},lastWeek:function(){return"[el] dddd [pasado a la"+(1!==this.hours()?"s":"")+"] LT"},sameElse:"L"},relativeTime:{future:"en %s",past:"hace %s",s:"unos segundos",m:"un minuto",mm:"%d minutos",h:"una hora",hh:"%d horas",d:"un día",dd:"%d días",M:"un mes",MM:"%d meses",y:"un año",yy:"%d años"},ordinalParse:/\d{1,2}º/,ordinal:"%dº",week:{dow:1,doy:4}}),uf.defineLocale("et",{months:"jaanuar_veebruar_märts_aprill_mai_juuni_juuli_august_september_oktoober_november_detsember".split("_"),monthsShort:"jaan_veebr_märts_apr_mai_juuni_juuli_aug_sept_okt_nov_dets".split("_"),weekdays:"pühapäev_esmaspäev_teisipäev_kolmapäev_neljapäev_reede_laupäev".split("_"),weekdaysShort:"P_E_T_K_N_R_L".split("_"),weekdaysMin:"P_E_T_K_N_R_L".split("_"),longDateFormat:{LT:"H:mm",LTS:"H:mm:ss",L:"DD.MM.YYYY",LL:"D. MMMM YYYY",LLL:"D. MMMM YYYY H:mm",LLLL:"dddd, D. MMMM YYYY H:mm"},calendar:{sameDay:"[Täna,] LT",nextDay:"[Homme,] LT",nextWeek:"[Järgmine] dddd LT",lastDay:"[Eile,] LT",lastWeek:"[Eelmine] dddd LT",sameElse:"L"},relativeTime:{future:"%s pärast",past:"%s tagasi",s:Vc,m:Vc,mm:Vc,h:Vc,hh:Vc,d:Vc,dd:"%d päeva",M:Vc,MM:Vc,y:Vc,yy:Vc},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:4}}),uf.defineLocale("eu",{months:"urtarrila_otsaila_martxoa_apirila_maiatza_ekaina_uztaila_abuztua_iraila_urria_azaroa_abendua".split("_"),monthsShort:"urt._ots._mar._api._mai._eka._uzt._abu._ira._urr._aza._abe.".split("_"),weekdays:"igandea_astelehena_asteartea_asteazkena_osteguna_ostirala_larunbata".split("_"),weekdaysShort:"ig._al._ar._az._og._ol._lr.".split("_"),weekdaysMin:"ig_al_ar_az_og_ol_lr".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"YYYY-MM-DD",LL:"YYYY[ko] MMMM[ren] D[a]",LLL:"YYYY[ko] MMMM[ren] D[a] HH:mm",LLLL:"dddd, YYYY[ko] MMMM[ren] D[a] HH:mm",l:"YYYY-M-D",ll:"YYYY[ko] MMM D[a]",lll:"YYYY[ko] MMM D[a] HH:mm",llll:"ddd, YYYY[ko] MMM D[a] HH:mm"},calendar:{sameDay:"[gaur] LT[etan]",nextDay:"[bihar] LT[etan]",nextWeek:"dddd LT[etan]",
lastDay:"[atzo] LT[etan]",lastWeek:"[aurreko] dddd LT[etan]",sameElse:"L"},relativeTime:{future:"%s barru",past:"duela %s",s:"segundo batzuk",m:"minutu bat",mm:"%d minutu",h:"ordu bat",hh:"%d ordu",d:"egun bat",dd:"%d egun",M:"hilabete bat",MM:"%d hilabete",y:"urte bat",yy:"%d urte"},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:7}}),{1:"۱",2:"۲",3:"۳",4:"۴",5:"۵",6:"۶",7:"۷",8:"۸",9:"۹",0:"۰"}),Nf={"۱":"1","۲":"2","۳":"3","۴":"4","۵":"5","۶":"6","۷":"7","۸":"8","۹":"9","۰":"0"},Of=(uf.defineLocale("fa",{months:"ژانویه_فوریه_مارس_آوریل_مه_ژوئن_ژوئیه_اوت_سپتامبر_اکتبر_نوامبر_دسامبر".split("_"),monthsShort:"ژانویه_فوریه_مارس_آوریل_مه_ژوئن_ژوئیه_اوت_سپتامبر_اکتبر_نوامبر_دسامبر".split("_"),weekdays:"یک‌شنبه_دوشنبه_سه‌شنبه_چهارشنبه_پنج‌شنبه_جمعه_شنبه".split("_"),weekdaysShort:"یک‌شنبه_دوشنبه_سه‌شنبه_چهارشنبه_پنج‌شنبه_جمعه_شنبه".split("_"),weekdaysMin:"ی_د_س_چ_پ_ج_ش".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd, D MMMM YYYY HH:mm"},meridiemParse:/قبل از ظهر|بعد از ظهر/,isPM:function(a){return/بعد از ظهر/.test(a)},meridiem:function(a,b,c){return 12>a?"قبل از ظهر":"بعد از ظهر"},calendar:{sameDay:"[امروز ساعت] LT",nextDay:"[فردا ساعت] LT",nextWeek:"dddd [ساعت] LT",lastDay:"[دیروز ساعت] LT",lastWeek:"dddd [پیش] [ساعت] LT",sameElse:"L"},relativeTime:{future:"در %s",past:"%s پیش",s:"چندین ثانیه",m:"یک دقیقه",mm:"%d دقیقه",h:"یک ساعت",hh:"%d ساعت",d:"یک روز",dd:"%d روز",M:"یک ماه",MM:"%d ماه",y:"یک سال",yy:"%d سال"},preparse:function(a){return a.replace(/[۰-۹]/g,function(a){return Nf[a]}).replace(/،/g,",")},postformat:function(a){return a.replace(/\d/g,function(a){return Mf[a]}).replace(/,/g,"،")},ordinalParse:/\d{1,2}م/,ordinal:"%dم",week:{dow:6,doy:12}}),"nolla yksi kaksi kolme neljä viisi kuusi seitsemän kahdeksan yhdeksän".split(" ")),Pf=["nolla","yhden","kahden","kolmen","neljän","viiden","kuuden",Of[7],Of[8],Of[9]],Qf=(uf.defineLocale("fi",{months:"tammikuu_helmikuu_maaliskuu_huhtikuu_toukokuu_kesäkuu_heinäkuu_elokuu_syyskuu_lokakuu_marraskuu_joulukuu".split("_"),monthsShort:"tammi_helmi_maalis_huhti_touko_kesä_heinä_elo_syys_loka_marras_joulu".split("_"),weekdays:"sunnuntai_maanantai_tiistai_keskiviikko_torstai_perjantai_lauantai".split("_"),weekdaysShort:"su_ma_ti_ke_to_pe_la".split("_"),weekdaysMin:"su_ma_ti_ke_to_pe_la".split("_"),longDateFormat:{LT:"HH.mm",LTS:"HH.mm.ss",L:"DD.MM.YYYY",LL:"Do MMMM[ta] YYYY",LLL:"Do MMMM[ta] YYYY, [klo] HH.mm",LLLL:"dddd, Do MMMM[ta] YYYY, [klo] HH.mm",l:"D.M.YYYY",ll:"Do MMM YYYY",lll:"Do MMM YYYY, [klo] HH.mm",llll:"ddd, Do MMM YYYY, [klo] HH.mm"},calendar:{sameDay:"[tänään] [klo] LT",nextDay:"[huomenna] [klo] LT",nextWeek:"dddd [klo] LT",lastDay:"[eilen] [klo] LT",lastWeek:"[viime] dddd[na] [klo] LT",sameElse:"L"},relativeTime:{future:"%s päästä",past:"%s sitten",s:Wc,m:Wc,mm:Wc,h:Wc,hh:Wc,d:Wc,dd:Wc,M:Wc,MM:Wc,y:Wc,yy:Wc},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:4}}),uf.defineLocale("fo",{months:"januar_februar_mars_apríl_mai_juni_juli_august_september_oktober_november_desember".split("_"),monthsShort:"jan_feb_mar_apr_mai_jun_jul_aug_sep_okt_nov_des".split("_"),weekdays:"sunnudagur_mánadagur_týsdagur_mikudagur_hósdagur_fríggjadagur_leygardagur".split("_"),weekdaysShort:"sun_mán_týs_mik_hós_frí_ley".split("_"),weekdaysMin:"su_má_tý_mi_hó_fr_le".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd D. MMMM, YYYY HH:mm"},calendar:{sameDay:"[Í dag kl.] LT",nextDay:"[Í morgin kl.] LT",nextWeek:"dddd [kl.] LT",lastDay:"[Í gjár kl.] LT",lastWeek:"[síðstu] dddd [kl] LT",sameElse:"L"},relativeTime:{future:"um %s",past:"%s síðani",s:"fá sekund",m:"ein minutt",mm:"%d minuttir",h:"ein tími",hh:"%d tímar",d:"ein dagur",dd:"%d dagar",M:"ein mánaði",MM:"%d mánaðir",y:"eitt ár",yy:"%d ár"},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:4}}),uf.defineLocale("fr-ca",{months:"janvier_février_mars_avril_mai_juin_juillet_août_septembre_octobre_novembre_décembre".split("_"),monthsShort:"janv._févr._mars_avr._mai_juin_juil._août_sept._oct._nov._déc.".split("_"),weekdays:"dimanche_lundi_mardi_mercredi_jeudi_vendredi_samedi".split("_"),weekdaysShort:"dim._lun._mar._mer._jeu._ven._sam.".split("_"),weekdaysMin:"Di_Lu_Ma_Me_Je_Ve_Sa".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"YYYY-MM-DD",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd D MMMM YYYY HH:mm"},calendar:{sameDay:"[Aujourd'hui à] LT",nextDay:"[Demain à] LT",nextWeek:"dddd [à] LT",lastDay:"[Hier à] LT",lastWeek:"dddd [dernier à] LT",sameElse:"L"},relativeTime:{future:"dans %s",past:"il y a %s",s:"quelques secondes",m:"une minute",mm:"%d minutes",h:"une heure",hh:"%d heures",d:"un jour",dd:"%d jours",M:"un mois",MM:"%d mois",y:"un an",yy:"%d ans"},ordinalParse:/\d{1,2}(er|e)/,ordinal:function(a){return a+(1===a?"er":"e")}}),uf.defineLocale("fr",{months:"janvier_février_mars_avril_mai_juin_juillet_août_septembre_octobre_novembre_décembre".split("_"),monthsShort:"janv._févr._mars_avr._mai_juin_juil._août_sept._oct._nov._déc.".split("_"),weekdays:"dimanche_lundi_mardi_mercredi_jeudi_vendredi_samedi".split("_"),weekdaysShort:"dim._lun._mar._mer._jeu._ven._sam.".split("_"),weekdaysMin:"Di_Lu_Ma_Me_Je_Ve_Sa".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd D MMMM YYYY HH:mm"},calendar:{sameDay:"[Aujourd'hui à] LT",nextDay:"[Demain à] LT",nextWeek:"dddd [à] LT",lastDay:"[Hier à] LT",lastWeek:"dddd [dernier à] LT",sameElse:"L"},relativeTime:{future:"dans %s",past:"il y a %s",s:"quelques secondes",m:"une minute",mm:"%d minutes",h:"une heure",hh:"%d heures",d:"un jour",dd:"%d jours",M:"un mois",MM:"%d mois",y:"un an",yy:"%d ans"},ordinalParse:/\d{1,2}(er|)/,ordinal:function(a){return a+(1===a?"er":"")},week:{dow:1,doy:4}}),"jan._feb._mrt._apr._mai_jun._jul._aug._sep._okt._nov._des.".split("_")),Rf="jan_feb_mrt_apr_mai_jun_jul_aug_sep_okt_nov_des".split("_"),Sf=(uf.defineLocale("fy",{months:"jannewaris_febrewaris_maart_april_maaie_juny_july_augustus_septimber_oktober_novimber_desimber".split("_"),monthsShort:function(a,b){return/-MMM-/.test(b)?Rf[a.month()]:Qf[a.month()]},weekdays:"snein_moandei_tiisdei_woansdei_tongersdei_freed_sneon".split("_"),weekdaysShort:"si._mo._ti._wo._to._fr._so.".split("_"),weekdaysMin:"Si_Mo_Ti_Wo_To_Fr_So".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD-MM-YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd D MMMM YYYY HH:mm"},calendar:{sameDay:"[hjoed om] LT",nextDay:"[moarn om] LT",nextWeek:"dddd [om] LT",lastDay:"[juster om] LT",lastWeek:"[ôfrûne] dddd [om] LT",sameElse:"L"},relativeTime:{future:"oer %s",past:"%s lyn",s:"in pear sekonden",m:"ien minút",mm:"%d minuten",h:"ien oere",hh:"%d oeren",d:"ien dei",dd:"%d dagen",M:"ien moanne",MM:"%d moannen",y:"ien jier",yy:"%d jierren"},ordinalParse:/\d{1,2}(ste|de)/,ordinal:function(a){return a+(1===a||8===a||a>=20?"ste":"de")},week:{dow:1,doy:4}}),uf.defineLocale("gl",{months:"Xaneiro_Febreiro_Marzo_Abril_Maio_Xuño_Xullo_Agosto_Setembro_Outubro_Novembro_Decembro".split("_"),monthsShort:"Xan._Feb._Mar._Abr._Mai._Xuñ._Xul._Ago._Set._Out._Nov._Dec.".split("_"),weekdays:"Domingo_Luns_Martes_Mércores_Xoves_Venres_Sábado".split("_"),weekdaysShort:"Dom._Lun._Mar._Mér._Xov._Ven._Sáb.".split("_"),weekdaysMin:"Do_Lu_Ma_Mé_Xo_Ve_Sá".split("_"),longDateFormat:{LT:"H:mm",LTS:"H:mm:ss",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY H:mm",LLLL:"dddd D MMMM YYYY H:mm"},calendar:{sameDay:function(){return"[hoxe "+(1!==this.hours()?"ás":"á")+"] LT"},nextDay:function(){return"[mañá "+(1!==this.hours()?"ás":"á")+"] LT"},nextWeek:function(){return"dddd ["+(1!==this.hours()?"ás":"a")+"] LT"},lastDay:function(){return"[onte "+(1!==this.hours()?"á":"a")+"] LT"},lastWeek:function(){return"[o] dddd [pasado "+(1!==this.hours()?"ás":"a")+"] LT"},sameElse:"L"},relativeTime:{future:function(a){return"uns segundos"===a?"nuns segundos":"en "+a},past:"hai %s",s:"uns segundos",m:"un minuto",mm:"%d minutos",h:"unha hora",hh:"%d horas",d:"un día",dd:"%d días",M:"un mes",MM:"%d meses",y:"un ano",yy:"%d anos"},ordinalParse:/\d{1,2}º/,ordinal:"%dº",week:{dow:1,doy:7}}),uf.defineLocale("he",{months:"ינואר_פברואר_מרץ_אפריל_מאי_יוני_יולי_אוגוסט_ספטמבר_אוקטובר_נובמבר_דצמבר".split("_"),monthsShort:"ינו׳_פבר׳_מרץ_אפר׳_מאי_יוני_יולי_אוג׳_ספט׳_אוק׳_נוב׳_דצמ׳".split("_"),weekdays:"ראשון_שני_שלישי_רביעי_חמישי_שישי_שבת".split("_"),weekdaysShort:"א׳_ב׳_ג׳_ד׳_ה׳_ו׳_ש׳".split("_"),weekdaysMin:"א_ב_ג_ד_ה_ו_ש".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD/MM/YYYY",LL:"D [ב]MMMM YYYY",LLL:"D [ב]MMMM YYYY HH:mm",LLLL:"dddd, D [ב]MMMM YYYY HH:mm",l:"D/M/YYYY",ll:"D MMM YYYY",lll:"D MMM YYYY HH:mm",llll:"ddd, D MMM YYYY HH:mm"},calendar:{sameDay:"[היום ב־]LT",nextDay:"[מחר ב־]LT",nextWeek:"dddd [בשעה] LT",lastDay:"[אתמול ב־]LT",lastWeek:"[ביום] dddd [האחרון בשעה] LT",sameElse:"L"},relativeTime:{future:"בעוד %s",past:"לפני %s",s:"מספר שניות",m:"דקה",mm:"%d דקות",h:"שעה",hh:function(a){return 2===a?"שעתיים":a+" שעות"},d:"יום",dd:function(a){return 2===a?"יומיים":a+" ימים"},M:"חודש",MM:function(a){return 2===a?"חודשיים":a+" חודשים"},y:"שנה",yy:function(a){return 2===a?"שנתיים":a%10===0&&10!==a?a+" שנה":a+" שנים"}}}),{1:"१",2:"२",3:"३",4:"४",5:"५",6:"६",7:"७",8:"८",9:"९",0:"०"}),Tf={"१":"1","२":"2","३":"3","४":"4","५":"5","६":"6","७":"7","८":"8","९":"9","०":"0"},Uf=(uf.defineLocale("hi",{months:"जनवरी_फ़रवरी_मार्च_अप्रैल_मई_जून_जुलाई_अगस्त_सितम्बर_अक्टूबर_नवम्बर_दिसम्बर".split("_"),monthsShort:"जन._फ़र._मार्च_अप्रै._मई_जून_जुल._अग._सित._अक्टू._नव._दिस.".split("_"),weekdays:"रविवार_सोमवार_मंगलवार_बुधवार_गुरूवार_शुक्रवार_शनिवार".split("_"),weekdaysShort:"रवि_सोम_मंगल_बुध_गुरू_शुक्र_शनि".split("_"),weekdaysMin:"र_सो_मं_बु_गु_शु_श".split("_"),longDateFormat:{LT:"A h:mm बजे",LTS:"A h:mm:ss बजे",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY, A h:mm बजे",LLLL:"dddd, D MMMM YYYY, A h:mm बजे"},calendar:{sameDay:"[आज] LT",nextDay:"[कल] LT",nextWeek:"dddd, LT",lastDay:"[कल] LT",lastWeek:"[पिछले] dddd, LT",sameElse:"L"},relativeTime:{future:"%s में",past:"%s पहले",s:"कुछ ही क्षण",m:"एक मिनट",mm:"%d मिनट",h:"एक घंटा",hh:"%d घंटे",d:"एक दिन",dd:"%d दिन",M:"एक महीने",MM:"%d महीने",y:"एक वर्ष",yy:"%d वर्ष"},preparse:function(a){return a.replace(/[१२३४५६७८९०]/g,function(a){return Tf[a]})},postformat:function(a){return a.replace(/\d/g,function(a){return Sf[a]})},meridiemParse:/रात|सुबह|दोपहर|शाम/,meridiemHour:function(a,b){return 12===a&&(a=0),"रात"===b?4>a?a:a+12:"सुबह"===b?a:"दोपहर"===b?a>=10?a:a+12:"शाम"===b?a+12:void 0},meridiem:function(a,b,c){return 4>a?"रात":10>a?"सुबह":17>a?"दोपहर":20>a?"शाम":"रात"},week:{dow:0,doy:6}}),uf.defineLocale("hr",{months:"siječanj_veljača_ožujak_travanj_svibanj_lipanj_srpanj_kolovoz_rujan_listopad_studeni_prosinac".split("_"),monthsShort:"sij._velj._ožu._tra._svi._lip._srp._kol._ruj._lis._stu._pro.".split("_"),weekdays:"nedjelja_ponedjeljak_utorak_srijeda_četvrtak_petak_subota".split("_"),weekdaysShort:"ned._pon._uto._sri._čet._pet._sub.".split("_"),weekdaysMin:"ne_po_ut_sr_če_pe_su".split("_"),longDateFormat:{LT:"H:mm",LTS:"H:mm:ss",L:"DD. MM. YYYY",LL:"D. MMMM YYYY",LLL:"D. MMMM YYYY H:mm",LLLL:"dddd, D. MMMM YYYY H:mm"},calendar:{sameDay:"[danas u] LT",nextDay:"[sutra u] LT",nextWeek:function(){switch(this.day()){case 0:return"[u] [nedjelju] [u] LT";case 3:return"[u] [srijedu] [u] LT";case 6:return"[u] [subotu] [u] LT";case 1:case 2:case 4:case 5:return"[u] dddd [u] LT"}},lastDay:"[jučer u] LT",lastWeek:function(){switch(this.day()){case 0:case 3:return"[prošlu] dddd [u] LT";case 6:return"[prošle] [subote] [u] LT";case 1:case 2:case 4:case 5:return"[prošli] dddd [u] LT"}},sameElse:"L"},relativeTime:{future:"za %s",past:"prije %s",s:"par sekundi",m:Yc,mm:Yc,h:Yc,hh:Yc,d:"dan",dd:Yc,M:"mjesec",MM:Yc,y:"godinu",yy:Yc},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:7}}),"vasárnap hétfőn kedden szerdán csütörtökön pénteken szombaton".split(" ")),Vf=(uf.defineLocale("hu",{months:"január_február_március_április_május_június_július_augusztus_szeptember_október_november_december".split("_"),monthsShort:"jan_feb_márc_ápr_máj_jún_júl_aug_szept_okt_nov_dec".split("_"),weekdays:"vasárnap_hétfő_kedd_szerda_csütörtök_péntek_szombat".split("_"),weekdaysShort:"vas_hét_kedd_sze_csüt_pén_szo".split("_"),weekdaysMin:"v_h_k_sze_cs_p_szo".split("_"),longDateFormat:{LT:"H:mm",LTS:"H:mm:ss",L:"YYYY.MM.DD.",LL:"YYYY. MMMM D.",LLL:"YYYY. MMMM D. H:mm",LLLL:"YYYY. MMMM D., dddd H:mm"},meridiemParse:/de|du/i,isPM:function(a){return"u"===a.charAt(1).toLowerCase()},meridiem:function(a,b,c){return 12>a?c===!0?"de":"DE":c===!0?"du":"DU"},calendar:{sameDay:"[ma] LT[-kor]",nextDay:"[holnap] LT[-kor]",nextWeek:function(){return $c.call(this,!0)},lastDay:"[tegnap] LT[-kor]",lastWeek:function(){return $c.call(this,!1)},sameElse:"L"},relativeTime:{future:"%s múlva",past:"%s",s:Zc,m:Zc,mm:Zc,h:Zc,hh:Zc,d:Zc,dd:Zc,M:Zc,MM:Zc,y:Zc,yy:Zc},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:7}}),uf.defineLocale("hy-am",{months:_c,monthsShort:ad,weekdays:bd,weekdaysShort:"կրկ_երկ_երք_չրք_հնգ_ուրբ_շբթ".split("_"),weekdaysMin:"կրկ_երկ_երք_չրք_հնգ_ուրբ_շբթ".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD.MM.YYYY",LL:"D MMMM YYYY թ.",LLL:"D MMMM YYYY թ., HH:mm",LLLL:"dddd, D MMMM YYYY թ., HH:mm"},calendar:{sameDay:"[այսօր] LT",nextDay:"[վաղը] LT",lastDay:"[երեկ] LT",nextWeek:function(){return"dddd [օրը ժամը] LT"},lastWeek:function(){return"[անցած] dddd [օրը ժամը] LT"},sameElse:"L"},relativeTime:{future:"%s հետո",past:"%s առաջ",s:"մի քանի վայրկյան",m:"րոպե",mm:"%d րոպե",h:"ժամ",hh:"%d ժամ",d:"օր",dd:"%d օր",M:"ամիս",MM:"%d ամիս",y:"տարի",yy:"%d տարի"},meridiemParse:/գիշերվա|առավոտվա|ցերեկվա|երեկոյան/,isPM:function(a){return/^(ցերեկվա|երեկոյան)$/.test(a)},meridiem:function(a){return 4>a?"գիշերվա":12>a?"առավոտվա":17>a?"ցերեկվա":"երեկոյան"},ordinalParse:/\d{1,2}|\d{1,2}-(ին|րդ)/,ordinal:function(a,b){switch(b){case"DDD":case"w":case"W":case"DDDo":return 1===a?a+"-ին":a+"-րդ";default:return a}},week:{dow:1,doy:7}}),uf.defineLocale("id",{months:"Januari_Februari_Maret_April_Mei_Juni_Juli_Agustus_September_Oktober_November_Desember".split("_"),monthsShort:"Jan_Feb_Mar_Apr_Mei_Jun_Jul_Ags_Sep_Okt_Nov_Des".split("_"),weekdays:"Minggu_Senin_Selasa_Rabu_Kamis_Jumat_Sabtu".split("_"),weekdaysShort:"Min_Sen_Sel_Rab_Kam_Jum_Sab".split("_"),weekdaysMin:"Mg_Sn_Sl_Rb_Km_Jm_Sb".split("_"),longDateFormat:{LT:"HH.mm",LTS:"HH.mm.ss",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY [pukul] HH.mm",LLLL:"dddd, D MMMM YYYY [pukul] HH.mm"},meridiemParse:/pagi|siang|sore|malam/,meridiemHour:function(a,b){return 12===a&&(a=0),"pagi"===b?a:"siang"===b?a>=11?a:a+12:"sore"===b||"malam"===b?a+12:void 0},meridiem:function(a,b,c){return 11>a?"pagi":15>a?"siang":19>a?"sore":"malam"},calendar:{sameDay:"[Hari ini pukul] LT",nextDay:"[Besok pukul] LT",nextWeek:"dddd [pukul] LT",lastDay:"[Kemarin pukul] LT",lastWeek:"dddd [lalu pukul] LT",sameElse:"L"},relativeTime:{future:"dalam %s",past:"%s yang lalu",s:"beberapa detik",m:"semenit",mm:"%d menit",h:"sejam",hh:"%d jam",d:"sehari",dd:"%d hari",M:"sebulan",MM:"%d bulan",y:"setahun",yy:"%d tahun"},week:{dow:1,doy:7}}),uf.defineLocale("is",{months:"janúar_febrúar_mars_apríl_maí_júní_júlí_ágúst_september_október_nóvember_desember".split("_"),monthsShort:"jan_feb_mar_apr_maí_jún_júl_ágú_sep_okt_nóv_des".split("_"),weekdays:"sunnudagur_mánudagur_þriðjudagur_miðvikudagur_fimmtudagur_föstudagur_laugardagur".split("_"),weekdaysShort:"sun_mán_þri_mið_fim_fös_lau".split("_"),weekdaysMin:"Su_Má_Þr_Mi_Fi_Fö_La".split("_"),longDateFormat:{LT:"H:mm",LTS:"H:mm:ss",L:"DD/MM/YYYY",LL:"D. MMMM YYYY",LLL:"D. MMMM YYYY [kl.] H:mm",LLLL:"dddd, D. MMMM YYYY [kl.] H:mm"},calendar:{sameDay:"[í dag kl.] LT",nextDay:"[á morgun kl.] LT",nextWeek:"dddd [kl.] LT",lastDay:"[í gær kl.] LT",lastWeek:"[síðasta] dddd [kl.] LT",sameElse:"L"},relativeTime:{future:"eftir %s",past:"fyrir %s síðan",s:dd,m:dd,mm:dd,h:"klukkustund",hh:dd,d:dd,dd:dd,M:dd,MM:dd,y:dd,yy:dd},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:4}}),uf.defineLocale("it",{months:"gennaio_febbraio_marzo_aprile_maggio_giugno_luglio_agosto_settembre_ottobre_novembre_dicembre".split("_"),monthsShort:"gen_feb_mar_apr_mag_giu_lug_ago_set_ott_nov_dic".split("_"),weekdays:"Domenica_Lunedì_Martedì_Mercoledì_Giovedì_Venerdì_Sabato".split("_"),weekdaysShort:"Dom_Lun_Mar_Mer_Gio_Ven_Sab".split("_"),weekdaysMin:"D_L_Ma_Me_G_V_S".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd, D MMMM YYYY HH:mm"},calendar:{sameDay:"[Oggi alle] LT",nextDay:"[Domani alle] LT",nextWeek:"dddd [alle] LT",lastDay:"[Ieri alle] LT",lastWeek:function(){switch(this.day()){case 0:return"[la scorsa] dddd [alle] LT";default:return"[lo scorso] dddd [alle] LT"}},sameElse:"L"},relativeTime:{future:function(a){return(/^[0-9].+$/.test(a)?"tra":"in")+" "+a},past:"%s fa",s:"alcuni secondi",m:"un minuto",mm:"%d minuti",h:"un'ora",hh:"%d ore",d:"un giorno",dd:"%d giorni",M:"un mese",MM:"%d mesi",y:"un anno",yy:"%d anni"},ordinalParse:/\d{1,2}º/,ordinal:"%dº",week:{dow:1,doy:4}}),uf.defineLocale("ja",{months:"1月_2月_3月_4月_5月_6月_7月_8月_9月_10月_11月_12月".split("_"),monthsShort:"1月_2月_3月_4月_5月_6月_7月_8月_9月_10月_11月_12月".split("_"),weekdays:"日曜日_月曜日_火曜日_水曜日_木曜日_金曜日_土曜日".split("_"),weekdaysShort:"日_月_火_水_木_金_土".split("_"),weekdaysMin:"日_月_火_水_木_金_土".split("_"),longDateFormat:{LT:"Ah時m分",LTS:"Ah時m分s秒",L:"YYYY/MM/DD",LL:"YYYY年M月D日",LLL:"YYYY年M月D日Ah時m分",LLLL:"YYYY年M月D日Ah時m分 dddd"},meridiemParse:/午前|午後/i,isPM:function(a){return"午後"===a},meridiem:function(a,b,c){return 12>a?"午前":"午後"},calendar:{sameDay:"[今日] LT",nextDay:"[明日] LT",nextWeek:"[来週]dddd LT",lastDay:"[昨日] LT",lastWeek:"[前週]dddd LT",sameElse:"L"},relativeTime:{future:"%s後",past:"%s前",s:"数秒",m:"1分",mm:"%d分",h:"1時間",hh:"%d時間",d:"1日",dd:"%d日",M:"1ヶ月",MM:"%dヶ月",y:"1年",yy:"%d年"}}),uf.defineLocale("jv",{months:"Januari_Februari_Maret_April_Mei_Juni_Juli_Agustus_September_Oktober_Nopember_Desember".split("_"),monthsShort:"Jan_Feb_Mar_Apr_Mei_Jun_Jul_Ags_Sep_Okt_Nop_Des".split("_"),weekdays:"Minggu_Senen_Seloso_Rebu_Kemis_Jemuwah_Septu".split("_"),weekdaysShort:"Min_Sen_Sel_Reb_Kem_Jem_Sep".split("_"),weekdaysMin:"Mg_Sn_Sl_Rb_Km_Jm_Sp".split("_"),longDateFormat:{LT:"HH.mm",LTS:"HH.mm.ss",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY [pukul] HH.mm",LLLL:"dddd, D MMMM YYYY [pukul] HH.mm"},meridiemParse:/enjing|siyang|sonten|ndalu/,meridiemHour:function(a,b){return 12===a&&(a=0),"enjing"===b?a:"siyang"===b?a>=11?a:a+12:"sonten"===b||"ndalu"===b?a+12:void 0},meridiem:function(a,b,c){return 11>a?"enjing":15>a?"siyang":19>a?"sonten":"ndalu"},calendar:{sameDay:"[Dinten puniko pukul] LT",nextDay:"[Mbenjang pukul] LT",nextWeek:"dddd [pukul] LT",lastDay:"[Kala wingi pukul] LT",lastWeek:"dddd [kepengker pukul] LT",sameElse:"L"},relativeTime:{future:"wonten ing %s",past:"%s ingkang kepengker",s:"sawetawis detik",m:"setunggal menit",mm:"%d menit",h:"setunggal jam",hh:"%d jam",d:"sedinten",dd:"%d dinten",M:"sewulan",MM:"%d wulan",y:"setaun",yy:"%d taun"},week:{dow:1,doy:7}}),uf.defineLocale("ka",{months:ed,monthsShort:"იან_თებ_მარ_აპრ_მაი_ივნ_ივლ_აგვ_სექ_ოქტ_ნოე_დეკ".split("_"),weekdays:fd,weekdaysShort:"კვი_ორშ_სამ_ოთხ_ხუთ_პარ_შაბ".split("_"),weekdaysMin:"კვ_ორ_სა_ოთ_ხუ_პა_შა".split("_"),longDateFormat:{LT:"h:mm A",LTS:"h:mm:ss A",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY h:mm A",LLLL:"dddd, D MMMM YYYY h:mm A"},calendar:{sameDay:"[დღეს] LT[-ზე]",nextDay:"[ხვალ] LT[-ზე]",lastDay:"[გუშინ] LT[-ზე]",nextWeek:"[შემდეგ] dddd LT[-ზე]",lastWeek:"[წინა] dddd LT-ზე",sameElse:"L"},relativeTime:{future:function(a){return/(წამი|წუთი|საათი|წელი)/.test(a)?a.replace(/ი$/,"ში"):a+"ში"},past:function(a){return/(წამი|წუთი|საათი|დღე|თვე)/.test(a)?a.replace(/(ი|ე)$/,"ის წინ"):/წელი/.test(a)?a.replace(/წელი$/,"წლის წინ"):void 0},s:"რამდენიმე წამი",m:"წუთი",mm:"%d წუთი",h:"საათი",hh:"%d საათი",d:"დღე",dd:"%d დღე",M:"თვე",MM:"%d თვე",y:"წელი",yy:"%d წელი"},ordinalParse:/0|1-ლი|მე-\d{1,2}|\d{1,2}-ე/,ordinal:function(a){return 0===a?a:1===a?a+"-ლი":20>a||100>=a&&a%20===0||a%100===0?"მე-"+a:a+"-ე"},week:{dow:1,doy:7}}),uf.defineLocale("km",{months:"មករា_កុម្ភៈ_មិនា_មេសា_ឧសភា_មិថុនា_កក្កដា_សីហា_កញ្ញា_តុលា_វិច្ឆិកា_ធ្នូ".split("_"),monthsShort:"មករា_កុម្ភៈ_មិនា_មេសា_ឧសភា_មិថុនា_កក្កដា_សីហា_កញ្ញា_តុលា_វិច្ឆិកា_ធ្នូ".split("_"),weekdays:"អាទិត្យ_ច័ន្ទ_អង្គារ_ពុធ_ព្រហស្បតិ៍_សុក្រ_សៅរ៍".split("_"),weekdaysShort:"អាទិត្យ_ច័ន្ទ_អង្គារ_ពុធ_ព្រហស្បតិ៍_សុក្រ_សៅរ៍".split("_"),weekdaysMin:"អាទិត្យ_ច័ន្ទ_អង្គារ_ពុធ_ព្រហស្បតិ៍_សុក្រ_សៅរ៍".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd, D MMMM YYYY HH:mm"},calendar:{sameDay:"[ថ្ងៃនៈ ម៉ោង] LT",nextDay:"[ស្អែក ម៉ោង] LT",nextWeek:"dddd [ម៉ោង] LT",lastDay:"[ម្សិលមិញ ម៉ោង] LT",lastWeek:"dddd [សប្តាហ៍មុន] [ម៉ោង] LT",sameElse:"L"},relativeTime:{future:"%sទៀត",past:"%sមុន",s:"ប៉ុន្មានវិនាទី",m:"មួយនាទី",mm:"%d នាទី",h:"មួយម៉ោង",hh:"%d ម៉ោង",d:"មួយថ្ងៃ",dd:"%d ថ្ងៃ",M:"មួយខែ",MM:"%d ខែ",y:"មួយឆ្នាំ",yy:"%d ឆ្នាំ"},week:{dow:1,doy:4}}),uf.defineLocale("ko",{months:"1월_2월_3월_4월_5월_6월_7월_8월_9월_10월_11월_12월".split("_"),monthsShort:"1월_2월_3월_4월_5월_6월_7월_8월_9월_10월_11월_12월".split("_"),weekdays:"일요일_월요일_화요일_수요일_목요일_금요일_토요일".split("_"),weekdaysShort:"일_월_화_수_목_금_토".split("_"),weekdaysMin:"일_월_화_수_목_금_토".split("_"),longDateFormat:{LT:"A h시 m분",LTS:"A h시 m분 s초",L:"YYYY.MM.DD",LL:"YYYY년 MMMM D일",LLL:"YYYY년 MMMM D일 A h시 m분",LLLL:"YYYY년 MMMM D일 dddd A h시 m분"},calendar:{sameDay:"오늘 LT",nextDay:"내일 LT",nextWeek:"dddd LT",lastDay:"어제 LT",lastWeek:"지난주 dddd LT",sameElse:"L"},relativeTime:{future:"%s 후",past:"%s 전",s:"몇초",ss:"%d초",m:"일분",mm:"%d분",h:"한시간",hh:"%d시간",d:"하루",dd:"%d일",M:"한달",MM:"%d달",y:"일년",yy:"%d년"},ordinalParse:/\d{1,2}일/,ordinal:"%d일",meridiemParse:/오전|오후/,isPM:function(a){return"오후"===a},meridiem:function(a,b,c){return 12>a?"오전":"오후"}}),uf.defineLocale("lb",{months:"Januar_Februar_Mäerz_Abrëll_Mee_Juni_Juli_August_September_Oktober_November_Dezember".split("_"),monthsShort:"Jan._Febr._Mrz._Abr._Mee_Jun._Jul._Aug._Sept._Okt._Nov._Dez.".split("_"),weekdays:"Sonndeg_Méindeg_Dënschdeg_Mëttwoch_Donneschdeg_Freideg_Samschdeg".split("_"),weekdaysShort:"So._Mé._Dë._Më._Do._Fr._Sa.".split("_"),weekdaysMin:"So_Mé_Dë_Më_Do_Fr_Sa".split("_"),longDateFormat:{LT:"H:mm [Auer]",LTS:"H:mm:ss [Auer]",L:"DD.MM.YYYY",LL:"D. MMMM YYYY",LLL:"D. MMMM YYYY H:mm [Auer]",LLLL:"dddd, D. MMMM YYYY H:mm [Auer]"},calendar:{sameDay:"[Haut um] LT",sameElse:"L",nextDay:"[Muer um] LT",nextWeek:"dddd [um] LT",lastDay:"[Gëschter um] LT",lastWeek:function(){switch(this.day()){case 2:case 4:return"[Leschten] dddd [um] LT";default:return"[Leschte] dddd [um] LT"}}},relativeTime:{future:hd,past:id,s:"e puer Sekonnen",m:gd,mm:"%d Minutten",h:gd,hh:"%d Stonnen",d:gd,dd:"%d Deeg",M:gd,MM:"%d Méint",y:gd,yy:"%d Joer"},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:4}}),{m:"minutė_minutės_minutę",mm:"minutės_minučių_minutes",h:"valanda_valandos_valandą",hh:"valandos_valandų_valandas",d:"diena_dienos_dieną",dd:"dienos_dienų_dienas",M:"mėnuo_mėnesio_mėnesį",MM:"mėnesiai_mėnesių_mėnesius",y:"metai_metų_metus",yy:"metai_metų_metus"}),Wf="sekmadienis_pirmadienis_antradienis_trečiadienis_ketvirtadienis_penktadienis_šeštadienis".split("_"),Xf=(uf.defineLocale("lt",{months:ld,monthsShort:"sau_vas_kov_bal_geg_bir_lie_rgp_rgs_spa_lap_grd".split("_"),weekdays:qd,weekdaysShort:"Sek_Pir_Ant_Tre_Ket_Pen_Šeš".split("_"),weekdaysMin:"S_P_A_T_K_Pn_Š".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"YYYY-MM-DD",LL:"YYYY [m.] MMMM D [d.]",LLL:"YYYY [m.] MMMM D [d.], HH:mm [val.]",LLLL:"YYYY [m.] MMMM D [d.], dddd, HH:mm [val.]",l:"YYYY-MM-DD",ll:"YYYY [m.] MMMM D [d.]",lll:"YYYY [m.] MMMM D [d.], HH:mm [val.]",llll:"YYYY [m.] MMMM D [d.], ddd, HH:mm [val.]"},calendar:{sameDay:"[Šiandien] LT",nextDay:"[Rytoj] LT",nextWeek:"dddd LT",lastDay:"[Vakar] LT",lastWeek:"[Praėjusį] dddd LT",sameElse:"L"},relativeTime:{future:"po %s",past:"prieš %s",s:kd,m:md,mm:pd,h:md,hh:pd,d:md,dd:pd,M:md,MM:pd,y:md,yy:pd},ordinalParse:/\d{1,2}-oji/,ordinal:function(a){return a+"-oji"},week:{dow:1,doy:4}}),{m:"minūtes_minūtēm_minūte_minūtes".split("_"),mm:"minūtes_minūtēm_minūte_minūtes".split("_"),h:"stundas_stundām_stunda_stundas".split("_"),hh:"stundas_stundām_stunda_stundas".split("_"),d:"dienas_dienām_diena_dienas".split("_"),dd:"dienas_dienām_diena_dienas".split("_"),M:"mēneša_mēnešiem_mēnesis_mēneši".split("_"),MM:"mēneša_mēnešiem_mēnesis_mēneši".split("_"),y:"gada_gadiem_gads_gadi".split("_"),yy:"gada_gadiem_gads_gadi".split("_")}),Yf=(uf.defineLocale("lv",{months:"janvāris_februāris_marts_aprīlis_maijs_jūnijs_jūlijs_augusts_septembris_oktobris_novembris_decembris".split("_"),monthsShort:"jan_feb_mar_apr_mai_jūn_jūl_aug_sep_okt_nov_dec".split("_"),weekdays:"svētdiena_pirmdiena_otrdiena_trešdiena_ceturtdiena_piektdiena_sestdiena".split("_"),weekdaysShort:"Sv_P_O_T_C_Pk_S".split("_"),weekdaysMin:"Sv_P_O_T_C_Pk_S".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD.MM.YYYY.",LL:"YYYY. [gada] D. MMMM",LLL:"YYYY. [gada] D. MMMM, HH:mm",LLLL:"YYYY. [gada] D. MMMM, dddd, HH:mm"},calendar:{sameDay:"[Šodien pulksten] LT",nextDay:"[Rīt pulksten] LT",nextWeek:"dddd [pulksten] LT",lastDay:"[Vakar pulksten] LT",lastWeek:"[Pagājušā] dddd [pulksten] LT",sameElse:"L"},relativeTime:{future:"pēc %s",past:"pirms %s",s:ud,m:td,mm:sd,h:td,hh:sd,d:td,dd:sd,M:td,MM:sd,y:td,yy:sd},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:4}}),{words:{m:["jedan minut","jednog minuta"],mm:["minut","minuta","minuta"],h:["jedan sat","jednog sata"],hh:["sat","sata","sati"],dd:["dan","dana","dana"],MM:["mjesec","mjeseca","mjeseci"],yy:["godina","godine","godina"]},correctGrammaticalCase:function(a,b){return 1===a?b[0]:a>=2&&4>=a?b[1]:b[2]},translate:function(a,b,c){var d=Yf.words[c];return 1===c.length?b?d[0]:d[1]:a+" "+Yf.correctGrammaticalCase(a,d)}}),Zf=(uf.defineLocale("me",{months:["januar","februar","mart","april","maj","jun","jul","avgust","septembar","oktobar","novembar","decembar"],monthsShort:["jan.","feb.","mar.","apr.","maj","jun","jul","avg.","sep.","okt.","nov.","dec."],weekdays:["nedjelja","ponedjeljak","utorak","srijeda","četvrtak","petak","subota"],weekdaysShort:["ned.","pon.","uto.","sri.","čet.","pet.","sub."],weekdaysMin:["ne","po","ut","sr","če","pe","su"],longDateFormat:{LT:"H:mm",LTS:"H:mm:ss",L:"DD. MM. YYYY",LL:"D. MMMM YYYY",LLL:"D. MMMM YYYY H:mm",LLLL:"dddd, D. MMMM YYYY H:mm"},calendar:{sameDay:"[danas u] LT",nextDay:"[sjutra u] LT",nextWeek:function(){switch(this.day()){case 0:return"[u] [nedjelju] [u] LT";case 3:return"[u] [srijedu] [u] LT";case 6:return"[u] [subotu] [u] LT";case 1:case 2:case 4:case 5:return"[u] dddd [u] LT"}},lastDay:"[juče u] LT",lastWeek:function(){var a=["[prošle] [nedjelje] [u] LT","[prošlog] [ponedjeljka] [u] LT","[prošlog] [utorka] [u] LT","[prošle] [srijede] [u] LT","[prošlog] [četvrtka] [u] LT","[prošlog] [petka] [u] LT","[prošle] [subote] [u] LT"];return a[this.day()]},sameElse:"L"},relativeTime:{future:"za %s",past:"prije %s",s:"nekoliko sekundi",m:Yf.translate,mm:Yf.translate,h:Yf.translate,hh:Yf.translate,d:"dan",dd:Yf.translate,M:"mjesec",MM:Yf.translate,y:"godinu",yy:Yf.translate},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:7}}),uf.defineLocale("mk",{months:"јануари_февруари_март_април_мај_јуни_јули_август_септември_октомври_ноември_декември".split("_"),monthsShort:"јан_фев_мар_апр_мај_јун_јул_авг_сеп_окт_ное_дек".split("_"),weekdays:"недела_понеделник_вторник_среда_четврток_петок_сабота".split("_"),weekdaysShort:"нед_пон_вто_сре_чет_пет_саб".split("_"),weekdaysMin:"нe_пo_вт_ср_че_пе_сa".split("_"),longDateFormat:{LT:"H:mm",LTS:"H:mm:ss",L:"D.MM.YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY H:mm",LLLL:"dddd, D MMMM YYYY H:mm"},calendar:{sameDay:"[Денес во] LT",nextDay:"[Утре во] LT",nextWeek:"dddd [во] LT",lastDay:"[Вчера во] LT",lastWeek:function(){switch(this.day()){case 0:case 3:case 6:return"[Во изминатата] dddd [во] LT";case 1:case 2:case 4:case 5:return"[Во изминатиот] dddd [во] LT"}},sameElse:"L"},relativeTime:{future:"после %s",past:"пред %s",s:"неколку секунди",m:"минута",mm:"%d минути",h:"час",hh:"%d часа",d:"ден",dd:"%d дена",M:"месец",MM:"%d месеци",y:"година",yy:"%d години"},ordinalParse:/\d{1,2}-(ев|ен|ти|ви|ри|ми)/,ordinal:function(a){var b=a%10,c=a%100;return 0===a?a+"-ев":0===c?a+"-ен":c>10&&20>c?a+"-ти":1===b?a+"-ви":2===b?a+"-ри":7===b||8===b?a+"-ми":a+"-ти"},week:{dow:1,doy:7}}),uf.defineLocale("ml",{months:"ജനുവരി_ഫെബ്രുവരി_മാർച്ച്_ഏപ്രിൽ_മേയ്_ജൂൺ_ജൂലൈ_ഓഗസ്റ്റ്_സെപ്റ്റംബർ_ഒക്ടോബർ_നവംബർ_ഡിസംബർ".split("_"),monthsShort:"ജനു._ഫെബ്രു._മാർ._ഏപ്രി._മേയ്_ജൂൺ_ജൂലൈ._ഓഗ._സെപ്റ്റ._ഒക്ടോ._നവം._ഡിസം.".split("_"),weekdays:"ഞായറാഴ്ച_തിങ്കളാഴ്ച_ചൊവ്വാഴ്ച_ബുധനാഴ്ച_വ്യാഴാഴ്ച_വെള്ളിയാഴ്ച_ശനിയാഴ്ച".split("_"),weekdaysShort:"ഞായർ_തിങ്കൾ_ചൊവ്വ_ബുധൻ_വ്യാഴം_വെള്ളി_ശനി".split("_"),weekdaysMin:"ഞാ_തി_ചൊ_ബു_വ്യാ_വെ_ശ".split("_"),longDateFormat:{LT:"A h:mm -നു",LTS:"A h:mm:ss -നു",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY, A h:mm -നു",LLLL:"dddd, D MMMM YYYY, A h:mm -നു"},calendar:{sameDay:"[ഇന്ന്] LT",nextDay:"[നാളെ] LT",nextWeek:"dddd, LT",lastDay:"[ഇന്നലെ] LT",lastWeek:"[കഴിഞ്ഞ] dddd, LT",sameElse:"L"},relativeTime:{future:"%s കഴിഞ്ഞ്",past:"%s മുൻപ്",s:"അൽപ നിമിഷങ്ങൾ",m:"ഒരു മിനിറ്റ്",mm:"%d മിനിറ്റ്",h:"ഒരു മണിക്കൂർ",hh:"%d മണിക്കൂർ",d:"ഒരു ദിവസം",dd:"%d ദിവസം",M:"ഒരു മാസം",MM:"%d മാസം",y:"ഒരു വർഷം",yy:"%d വർഷം"},meridiemParse:/രാത്രി|രാവിലെ|ഉച്ച കഴിഞ്ഞ്|വൈകുന്നേരം|രാത്രി/i,isPM:function(a){return/^(ഉച്ച കഴിഞ്ഞ്|വൈകുന്നേരം|രാത്രി)$/.test(a)},meridiem:function(a,b,c){return 4>a?"രാത്രി":12>a?"രാവിലെ":17>a?"ഉച്ച കഴിഞ്ഞ്":20>a?"വൈകുന്നേരം":"രാത്രി"}}),{1:"१",2:"२",3:"३",4:"४",5:"५",6:"६",7:"७",8:"८",9:"९",0:"०"}),$f={"१":"1","२":"2","३":"3","४":"4","५":"5","६":"6","७":"7","८":"8","९":"9","०":"0"},_f=(uf.defineLocale("mr",{months:"जानेवारी_फेब्रुवारी_मार्च_एप्रिल_मे_जून_जुलै_ऑगस्ट_सप्टेंबर_ऑक्टोबर_नोव्हेंबर_डिसेंबर".split("_"),monthsShort:"जाने._फेब्रु._मार्च._एप्रि._मे._जून._जुलै._ऑग._सप्टें._ऑक्टो._नोव्हें._डिसें.".split("_"),weekdays:"रविवार_सोमवार_मंगळवार_बुधवार_गुरूवार_शुक्रवार_शनिवार".split("_"),weekdaysShort:"रवि_सोम_मंगळ_बुध_गुरू_शुक्र_शनि".split("_"),weekdaysMin:"र_सो_मं_बु_गु_शु_श".split("_"),longDateFormat:{LT:"A h:mm वाजता",LTS:"A h:mm:ss वाजता",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY, A h:mm वाजता",LLLL:"dddd, D MMMM YYYY, A h:mm वाजता"},calendar:{sameDay:"[आज] LT",nextDay:"[उद्या] LT",nextWeek:"dddd, LT",lastDay:"[काल] LT",lastWeek:"[मागील] dddd, LT",sameElse:"L"},relativeTime:{future:"%s नंतर",past:"%s पूर्वी",s:"सेकंद",m:"एक मिनिट",mm:"%d मिनिटे",h:"एक तास",hh:"%d तास",d:"एक दिवस",dd:"%d दिवस",M:"एक महिना",MM:"%d महिने",y:"एक वर्ष",yy:"%d वर्षे"},preparse:function(a){return a.replace(/[१२३४५६७८९०]/g,function(a){return $f[a]})},postformat:function(a){return a.replace(/\d/g,function(a){return Zf[a]})},meridiemParse:/रात्री|सकाळी|दुपारी|सायंकाळी/,meridiemHour:function(a,b){return 12===a&&(a=0),"रात्री"===b?4>a?a:a+12:"सकाळी"===b?a:"दुपारी"===b?a>=10?a:a+12:"सायंकाळी"===b?a+12:void 0},meridiem:function(a,b,c){return 4>a?"रात्री":10>a?"सकाळी":17>a?"दुपारी":20>a?"सायंकाळी":"रात्री"},week:{dow:0,doy:6}}),uf.defineLocale("ms-my",{months:"Januari_Februari_Mac_April_Mei_Jun_Julai_Ogos_September_Oktober_November_Disember".split("_"),monthsShort:"Jan_Feb_Mac_Apr_Mei_Jun_Jul_Ogs_Sep_Okt_Nov_Dis".split("_"),weekdays:"Ahad_Isnin_Selasa_Rabu_Khamis_Jumaat_Sabtu".split("_"),weekdaysShort:"Ahd_Isn_Sel_Rab_Kha_Jum_Sab".split("_"),weekdaysMin:"Ah_Is_Sl_Rb_Km_Jm_Sb".split("_"),longDateFormat:{LT:"HH.mm",LTS:"HH.mm.ss",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY [pukul] HH.mm",LLLL:"dddd, D MMMM YYYY [pukul] HH.mm"},meridiemParse:/pagi|tengahari|petang|malam/,meridiemHour:function(a,b){return 12===a&&(a=0),"pagi"===b?a:"tengahari"===b?a>=11?a:a+12:"petang"===b||"malam"===b?a+12:void 0},meridiem:function(a,b,c){return 11>a?"pagi":15>a?"tengahari":19>a?"petang":"malam"},calendar:{sameDay:"[Hari ini pukul] LT",nextDay:"[Esok pukul] LT",nextWeek:"dddd [pukul] LT",lastDay:"[Kelmarin pukul] LT",
lastWeek:"dddd [lepas pukul] LT",sameElse:"L"},relativeTime:{future:"dalam %s",past:"%s yang lepas",s:"beberapa saat",m:"seminit",mm:"%d minit",h:"sejam",hh:"%d jam",d:"sehari",dd:"%d hari",M:"sebulan",MM:"%d bulan",y:"setahun",yy:"%d tahun"},week:{dow:1,doy:7}}),uf.defineLocale("ms",{months:"Januari_Februari_Mac_April_Mei_Jun_Julai_Ogos_September_Oktober_November_Disember".split("_"),monthsShort:"Jan_Feb_Mac_Apr_Mei_Jun_Jul_Ogs_Sep_Okt_Nov_Dis".split("_"),weekdays:"Ahad_Isnin_Selasa_Rabu_Khamis_Jumaat_Sabtu".split("_"),weekdaysShort:"Ahd_Isn_Sel_Rab_Kha_Jum_Sab".split("_"),weekdaysMin:"Ah_Is_Sl_Rb_Km_Jm_Sb".split("_"),longDateFormat:{LT:"HH.mm",LTS:"HH.mm.ss",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY [pukul] HH.mm",LLLL:"dddd, D MMMM YYYY [pukul] HH.mm"},meridiemParse:/pagi|tengahari|petang|malam/,meridiemHour:function(a,b){return 12===a&&(a=0),"pagi"===b?a:"tengahari"===b?a>=11?a:a+12:"petang"===b||"malam"===b?a+12:void 0},meridiem:function(a,b,c){return 11>a?"pagi":15>a?"tengahari":19>a?"petang":"malam"},calendar:{sameDay:"[Hari ini pukul] LT",nextDay:"[Esok pukul] LT",nextWeek:"dddd [pukul] LT",lastDay:"[Kelmarin pukul] LT",lastWeek:"dddd [lepas pukul] LT",sameElse:"L"},relativeTime:{future:"dalam %s",past:"%s yang lepas",s:"beberapa saat",m:"seminit",mm:"%d minit",h:"sejam",hh:"%d jam",d:"sehari",dd:"%d hari",M:"sebulan",MM:"%d bulan",y:"setahun",yy:"%d tahun"},week:{dow:1,doy:7}}),{1:"၁",2:"၂",3:"၃",4:"၄",5:"၅",6:"၆",7:"၇",8:"၈",9:"၉",0:"၀"}),ag={"၁":"1","၂":"2","၃":"3","၄":"4","၅":"5","၆":"6","၇":"7","၈":"8","၉":"9","၀":"0"},bg=(uf.defineLocale("my",{months:"ဇန်နဝါရီ_ဖေဖော်ဝါရီ_မတ်_ဧပြီ_မေ_ဇွန်_ဇူလိုင်_သြဂုတ်_စက်တင်ဘာ_အောက်တိုဘာ_နိုဝင်ဘာ_ဒီဇင်ဘာ".split("_"),monthsShort:"ဇန်_ဖေ_မတ်_ပြီ_မေ_ဇွန်_လိုင်_သြ_စက်_အောက်_နို_ဒီ".split("_"),weekdays:"တနင်္ဂနွေ_တနင်္လာ_အင်္ဂါ_ဗုဒ္ဓဟူး_ကြာသပတေး_သောကြာ_စနေ".split("_"),weekdaysShort:"နွေ_လာ_ဂါ_ဟူး_ကြာ_သော_နေ".split("_"),weekdaysMin:"နွေ_လာ_ဂါ_ဟူး_ကြာ_သော_နေ".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd D MMMM YYYY HH:mm"},calendar:{sameDay:"[ယနေ.] LT [မှာ]",nextDay:"[မနက်ဖြန်] LT [မှာ]",nextWeek:"dddd LT [မှာ]",lastDay:"[မနေ.က] LT [မှာ]",lastWeek:"[ပြီးခဲ့သော] dddd LT [မှာ]",sameElse:"L"},relativeTime:{future:"လာမည့် %s မှာ",past:"လွန်ခဲ့သော %s က",s:"စက္ကန်.အနည်းငယ်",m:"တစ်မိနစ်",mm:"%d မိနစ်",h:"တစ်နာရီ",hh:"%d နာရီ",d:"တစ်ရက်",dd:"%d ရက်",M:"တစ်လ",MM:"%d လ",y:"တစ်နှစ်",yy:"%d နှစ်"},preparse:function(a){return a.replace(/[၁၂၃၄၅၆၇၈၉၀]/g,function(a){return ag[a]})},postformat:function(a){return a.replace(/\d/g,function(a){return _f[a]})},week:{dow:1,doy:4}}),uf.defineLocale("nb",{months:"januar_februar_mars_april_mai_juni_juli_august_september_oktober_november_desember".split("_"),monthsShort:"jan_feb_mar_apr_mai_jun_jul_aug_sep_okt_nov_des".split("_"),weekdays:"søndag_mandag_tirsdag_onsdag_torsdag_fredag_lørdag".split("_"),weekdaysShort:"søn_man_tirs_ons_tors_fre_lør".split("_"),weekdaysMin:"sø_ma_ti_on_to_fr_lø".split("_"),longDateFormat:{LT:"H.mm",LTS:"H.mm.ss",L:"DD.MM.YYYY",LL:"D. MMMM YYYY",LLL:"D. MMMM YYYY [kl.] H.mm",LLLL:"dddd D. MMMM YYYY [kl.] H.mm"},calendar:{sameDay:"[i dag kl.] LT",nextDay:"[i morgen kl.] LT",nextWeek:"dddd [kl.] LT",lastDay:"[i går kl.] LT",lastWeek:"[forrige] dddd [kl.] LT",sameElse:"L"},relativeTime:{future:"om %s",past:"for %s siden",s:"noen sekunder",m:"ett minutt",mm:"%d minutter",h:"en time",hh:"%d timer",d:"en dag",dd:"%d dager",M:"en måned",MM:"%d måneder",y:"ett år",yy:"%d år"},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:4}}),{1:"१",2:"२",3:"३",4:"४",5:"५",6:"६",7:"७",8:"८",9:"९",0:"०"}),cg={"१":"1","२":"2","३":"3","४":"4","५":"5","६":"6","७":"7","८":"8","९":"9","०":"0"},dg=(uf.defineLocale("ne",{months:"जनवरी_फेब्रुवरी_मार्च_अप्रिल_मई_जुन_जुलाई_अगष्ट_सेप्टेम्बर_अक्टोबर_नोभेम्बर_डिसेम्बर".split("_"),monthsShort:"जन._फेब्रु._मार्च_अप्रि._मई_जुन_जुलाई._अग._सेप्ट._अक्टो._नोभे._डिसे.".split("_"),weekdays:"आइतबार_सोमबार_मङ्गलबार_बुधबार_बिहिबार_शुक्रबार_शनिबार".split("_"),weekdaysShort:"आइत._सोम._मङ्गल._बुध._बिहि._शुक्र._शनि.".split("_"),weekdaysMin:"आइ._सो._मङ्_बु._बि._शु._श.".split("_"),longDateFormat:{LT:"Aको h:mm बजे",LTS:"Aको h:mm:ss बजे",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY, Aको h:mm बजे",LLLL:"dddd, D MMMM YYYY, Aको h:mm बजे"},preparse:function(a){return a.replace(/[१२३४५६७८९०]/g,function(a){return cg[a]})},postformat:function(a){return a.replace(/\d/g,function(a){return bg[a]})},meridiemParse:/राती|बिहान|दिउँसो|बेलुका|साँझ|राती/,meridiemHour:function(a,b){return 12===a&&(a=0),"राती"===b?3>a?a:a+12:"बिहान"===b?a:"दिउँसो"===b?a>=10?a:a+12:"बेलुका"===b||"साँझ"===b?a+12:void 0},meridiem:function(a,b,c){return 3>a?"राती":10>a?"बिहान":15>a?"दिउँसो":18>a?"बेलुका":20>a?"साँझ":"राती"},calendar:{sameDay:"[आज] LT",nextDay:"[भोली] LT",nextWeek:"[आउँदो] dddd[,] LT",lastDay:"[हिजो] LT",lastWeek:"[गएको] dddd[,] LT",sameElse:"L"},relativeTime:{future:"%sमा",past:"%s अगाडी",s:"केही समय",m:"एक मिनेट",mm:"%d मिनेट",h:"एक घण्टा",hh:"%d घण्टा",d:"एक दिन",dd:"%d दिन",M:"एक महिना",MM:"%d महिना",y:"एक बर्ष",yy:"%d बर्ष"},week:{dow:1,doy:7}}),"jan._feb._mrt._apr._mei_jun._jul._aug._sep._okt._nov._dec.".split("_")),eg="jan_feb_mrt_apr_mei_jun_jul_aug_sep_okt_nov_dec".split("_"),fg=(uf.defineLocale("nl",{months:"januari_februari_maart_april_mei_juni_juli_augustus_september_oktober_november_december".split("_"),monthsShort:function(a,b){return/-MMM-/.test(b)?eg[a.month()]:dg[a.month()]},weekdays:"zondag_maandag_dinsdag_woensdag_donderdag_vrijdag_zaterdag".split("_"),weekdaysShort:"zo._ma._di._wo._do._vr._za.".split("_"),weekdaysMin:"Zo_Ma_Di_Wo_Do_Vr_Za".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD-MM-YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd D MMMM YYYY HH:mm"},calendar:{sameDay:"[vandaag om] LT",nextDay:"[morgen om] LT",nextWeek:"dddd [om] LT",lastDay:"[gisteren om] LT",lastWeek:"[afgelopen] dddd [om] LT",sameElse:"L"},relativeTime:{future:"over %s",past:"%s geleden",s:"een paar seconden",m:"één minuut",mm:"%d minuten",h:"één uur",hh:"%d uur",d:"één dag",dd:"%d dagen",M:"één maand",MM:"%d maanden",y:"één jaar",yy:"%d jaar"},ordinalParse:/\d{1,2}(ste|de)/,ordinal:function(a){return a+(1===a||8===a||a>=20?"ste":"de")},week:{dow:1,doy:4}}),uf.defineLocale("nn",{months:"januar_februar_mars_april_mai_juni_juli_august_september_oktober_november_desember".split("_"),monthsShort:"jan_feb_mar_apr_mai_jun_jul_aug_sep_okt_nov_des".split("_"),weekdays:"sundag_måndag_tysdag_onsdag_torsdag_fredag_laurdag".split("_"),weekdaysShort:"sun_mån_tys_ons_tor_fre_lau".split("_"),weekdaysMin:"su_må_ty_on_to_fr_lø".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD.MM.YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd D MMMM YYYY HH:mm"},calendar:{sameDay:"[I dag klokka] LT",nextDay:"[I morgon klokka] LT",nextWeek:"dddd [klokka] LT",lastDay:"[I går klokka] LT",lastWeek:"[Føregåande] dddd [klokka] LT",sameElse:"L"},relativeTime:{future:"om %s",past:"for %s sidan",s:"nokre sekund",m:"eit minutt",mm:"%d minutt",h:"ein time",hh:"%d timar",d:"ein dag",dd:"%d dagar",M:"ein månad",MM:"%d månader",y:"eit år",yy:"%d år"},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:4}}),"styczeń_luty_marzec_kwiecień_maj_czerwiec_lipiec_sierpień_wrzesień_październik_listopad_grudzień".split("_")),gg="stycznia_lutego_marca_kwietnia_maja_czerwca_lipca_sierpnia_września_października_listopada_grudnia".split("_"),hg=(uf.defineLocale("pl",{months:function(a,b){return""===b?"("+gg[a.month()]+"|"+fg[a.month()]+")":/D MMMM/.test(b)?gg[a.month()]:fg[a.month()]},monthsShort:"sty_lut_mar_kwi_maj_cze_lip_sie_wrz_paź_lis_gru".split("_"),weekdays:"niedziela_poniedziałek_wtorek_środa_czwartek_piątek_sobota".split("_"),weekdaysShort:"nie_pon_wt_śr_czw_pt_sb".split("_"),weekdaysMin:"N_Pn_Wt_Śr_Cz_Pt_So".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD.MM.YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd, D MMMM YYYY HH:mm"},calendar:{sameDay:"[Dziś o] LT",nextDay:"[Jutro o] LT",nextWeek:"[W] dddd [o] LT",lastDay:"[Wczoraj o] LT",lastWeek:function(){switch(this.day()){case 0:return"[W zeszłą niedzielę o] LT";case 3:return"[W zeszłą środę o] LT";case 6:return"[W zeszłą sobotę o] LT";default:return"[W zeszły] dddd [o] LT"}},sameElse:"L"},relativeTime:{future:"za %s",past:"%s temu",s:"kilka sekund",m:wd,mm:wd,h:wd,hh:wd,d:"1 dzień",dd:"%d dni",M:"miesiąc",MM:wd,y:"rok",yy:wd},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:4}}),uf.defineLocale("pt-br",{months:"Janeiro_Fevereiro_Março_Abril_Maio_Junho_Julho_Agosto_Setembro_Outubro_Novembro_Dezembro".split("_"),monthsShort:"Jan_Fev_Mar_Abr_Mai_Jun_Jul_Ago_Set_Out_Nov_Dez".split("_"),weekdays:"Domingo_Segunda-Feira_Terça-Feira_Quarta-Feira_Quinta-Feira_Sexta-Feira_Sábado".split("_"),weekdaysShort:"Dom_Seg_Ter_Qua_Qui_Sex_Sáb".split("_"),weekdaysMin:"Dom_2ª_3ª_4ª_5ª_6ª_Sáb".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD/MM/YYYY",LL:"D [de] MMMM [de] YYYY",LLL:"D [de] MMMM [de] YYYY [às] HH:mm",LLLL:"dddd, D [de] MMMM [de] YYYY [às] HH:mm"},calendar:{sameDay:"[Hoje às] LT",nextDay:"[Amanhã às] LT",nextWeek:"dddd [às] LT",lastDay:"[Ontem às] LT",lastWeek:function(){return 0===this.day()||6===this.day()?"[Último] dddd [às] LT":"[Última] dddd [às] LT"},sameElse:"L"},relativeTime:{future:"em %s",past:"%s atrás",s:"poucos segundos",m:"um minuto",mm:"%d minutos",h:"uma hora",hh:"%d horas",d:"um dia",dd:"%d dias",M:"um mês",MM:"%d meses",y:"um ano",yy:"%d anos"},ordinalParse:/\d{1,2}º/,ordinal:"%dº"}),uf.defineLocale("pt",{months:"Janeiro_Fevereiro_Março_Abril_Maio_Junho_Julho_Agosto_Setembro_Outubro_Novembro_Dezembro".split("_"),monthsShort:"Jan_Fev_Mar_Abr_Mai_Jun_Jul_Ago_Set_Out_Nov_Dez".split("_"),weekdays:"Domingo_Segunda-Feira_Terça-Feira_Quarta-Feira_Quinta-Feira_Sexta-Feira_Sábado".split("_"),weekdaysShort:"Dom_Seg_Ter_Qua_Qui_Sex_Sáb".split("_"),weekdaysMin:"Dom_2ª_3ª_4ª_5ª_6ª_Sáb".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD/MM/YYYY",LL:"D [de] MMMM [de] YYYY",LLL:"D [de] MMMM [de] YYYY HH:mm",LLLL:"dddd, D [de] MMMM [de] YYYY HH:mm"},calendar:{sameDay:"[Hoje às] LT",nextDay:"[Amanhã às] LT",nextWeek:"dddd [às] LT",lastDay:"[Ontem às] LT",lastWeek:function(){return 0===this.day()||6===this.day()?"[Último] dddd [às] LT":"[Última] dddd [às] LT"},sameElse:"L"},relativeTime:{future:"em %s",past:"há %s",s:"segundos",m:"um minuto",mm:"%d minutos",h:"uma hora",hh:"%d horas",d:"um dia",dd:"%d dias",M:"um mês",MM:"%d meses",y:"um ano",yy:"%d anos"},ordinalParse:/\d{1,2}º/,ordinal:"%dº",week:{dow:1,doy:4}}),uf.defineLocale("ro",{months:"ianuarie_februarie_martie_aprilie_mai_iunie_iulie_august_septembrie_octombrie_noiembrie_decembrie".split("_"),monthsShort:"ian._febr._mart._apr._mai_iun._iul._aug._sept._oct._nov._dec.".split("_"),weekdays:"duminică_luni_marți_miercuri_joi_vineri_sâmbătă".split("_"),weekdaysShort:"Dum_Lun_Mar_Mie_Joi_Vin_Sâm".split("_"),weekdaysMin:"Du_Lu_Ma_Mi_Jo_Vi_Sâ".split("_"),longDateFormat:{LT:"H:mm",LTS:"H:mm:ss",L:"DD.MM.YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY H:mm",LLLL:"dddd, D MMMM YYYY H:mm"},calendar:{sameDay:"[azi la] LT",nextDay:"[mâine la] LT",nextWeek:"dddd [la] LT",lastDay:"[ieri la] LT",lastWeek:"[fosta] dddd [la] LT",sameElse:"L"},relativeTime:{future:"peste %s",past:"%s în urmă",s:"câteva secunde",m:"un minut",mm:xd,h:"o oră",hh:xd,d:"o zi",dd:xd,M:"o lună",MM:xd,y:"un an",yy:xd},week:{dow:1,doy:7}}),uf.defineLocale("ru",{months:Ad,monthsShort:Bd,weekdays:Cd,weekdaysShort:"вс_пн_вт_ср_чт_пт_сб".split("_"),weekdaysMin:"вс_пн_вт_ср_чт_пт_сб".split("_"),monthsParse:[/^янв/i,/^фев/i,/^мар/i,/^апр/i,/^ма[й|я]/i,/^июн/i,/^июл/i,/^авг/i,/^сен/i,/^окт/i,/^ноя/i,/^дек/i],longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD.MM.YYYY",LL:"D MMMM YYYY г.",LLL:"D MMMM YYYY г., HH:mm",LLLL:"dddd, D MMMM YYYY г., HH:mm"},calendar:{sameDay:"[Сегодня в] LT",nextDay:"[Завтра в] LT",lastDay:"[Вчера в] LT",nextWeek:function(){return 2===this.day()?"[Во] dddd [в] LT":"[В] dddd [в] LT"},lastWeek:function(a){if(a.week()===this.week())return 2===this.day()?"[Во] dddd [в] LT":"[В] dddd [в] LT";switch(this.day()){case 0:return"[В прошлое] dddd [в] LT";case 1:case 2:case 4:return"[В прошлый] dddd [в] LT";case 3:case 5:case 6:return"[В прошлую] dddd [в] LT"}},sameElse:"L"},relativeTime:{future:"через %s",past:"%s назад",s:"несколько секунд",m:zd,mm:zd,h:"час",hh:zd,d:"день",dd:zd,M:"месяц",MM:zd,y:"год",yy:zd},meridiemParse:/ночи|утра|дня|вечера/i,isPM:function(a){return/^(дня|вечера)$/.test(a)},meridiem:function(a,b,c){return 4>a?"ночи":12>a?"утра":17>a?"дня":"вечера"},ordinalParse:/\d{1,2}-(й|го|я)/,ordinal:function(a,b){switch(b){case"M":case"d":case"DDD":return a+"-й";case"D":return a+"-го";case"w":case"W":return a+"-я";default:return a}},week:{dow:1,doy:7}}),uf.defineLocale("si",{months:"ජනවාරි_පෙබරවාරි_මාර්තු_අප්‍රේල්_මැයි_ජූනි_ජූලි_අගෝස්තු_සැප්තැම්බර්_ඔක්තෝබර්_නොවැම්බර්_දෙසැම්බර්".split("_"),monthsShort:"ජන_පෙබ_මාර්_අප්_මැයි_ජූනි_ජූලි_අගෝ_සැප්_ඔක්_නොවැ_දෙසැ".split("_"),weekdays:"ඉරිදා_සඳුදා_අඟහරුවාදා_බදාදා_බ්‍රහස්පතින්දා_සිකුරාදා_සෙනසුරාදා".split("_"),weekdaysShort:"ඉරි_සඳු_අඟ_බදා_බ්‍රහ_සිකු_සෙන".split("_"),weekdaysMin:"ඉ_ස_අ_බ_බ්‍ර_සි_සෙ".split("_"),longDateFormat:{LT:"a h:mm",LTS:"a h:mm:ss",L:"YYYY/MM/DD",LL:"YYYY MMMM D",LLL:"YYYY MMMM D, a h:mm",LLLL:"YYYY MMMM D [වැනි] dddd, a h:mm:ss"},calendar:{sameDay:"[අද] LT[ට]",nextDay:"[හෙට] LT[ට]",nextWeek:"dddd LT[ට]",lastDay:"[ඊයේ] LT[ට]",lastWeek:"[පසුගිය] dddd LT[ට]",sameElse:"L"},relativeTime:{future:"%sකින්",past:"%sකට පෙර",s:"තත්පර කිහිපය",m:"මිනිත්තුව",mm:"මිනිත්තු %d",h:"පැය",hh:"පැය %d",d:"දිනය",dd:"දින %d",M:"මාසය",MM:"මාස %d",y:"වසර",yy:"වසර %d"},ordinalParse:/\d{1,2} වැනි/,ordinal:function(a){return a+" වැනි"},meridiem:function(a,b,c){return a>11?c?"ප.ව.":"පස් වරු":c?"පෙ.ව.":"පෙර වරු"}}),"január_február_marec_apríl_máj_jún_júl_august_september_október_november_december".split("_")),ig="jan_feb_mar_apr_máj_jún_júl_aug_sep_okt_nov_dec".split("_"),jg=(uf.defineLocale("sk",{months:hg,monthsShort:ig,monthsParse:function(a,b){var c,d=[];for(c=0;12>c;c++)d[c]=new RegExp("^"+a[c]+"$|^"+b[c]+"$","i");return d}(hg,ig),weekdays:"nedeľa_pondelok_utorok_streda_štvrtok_piatok_sobota".split("_"),weekdaysShort:"ne_po_ut_st_št_pi_so".split("_"),weekdaysMin:"ne_po_ut_st_št_pi_so".split("_"),longDateFormat:{LT:"H:mm",LTS:"H:mm:ss",L:"DD.MM.YYYY",LL:"D. MMMM YYYY",LLL:"D. MMMM YYYY H:mm",LLLL:"dddd D. MMMM YYYY H:mm"},calendar:{sameDay:"[dnes o] LT",nextDay:"[zajtra o] LT",nextWeek:function(){switch(this.day()){case 0:return"[v nedeľu o] LT";case 1:case 2:return"[v] dddd [o] LT";case 3:return"[v stredu o] LT";case 4:return"[vo štvrtok o] LT";case 5:return"[v piatok o] LT";case 6:return"[v sobotu o] LT"}},lastDay:"[včera o] LT",lastWeek:function(){switch(this.day()){case 0:return"[minulú nedeľu o] LT";case 1:case 2:return"[minulý] dddd [o] LT";case 3:return"[minulú stredu o] LT";case 4:case 5:return"[minulý] dddd [o] LT";case 6:return"[minulú sobotu o] LT"}},sameElse:"L"},relativeTime:{future:"za %s",past:"pred %s",s:Ed,m:Ed,mm:Ed,h:Ed,hh:Ed,d:Ed,dd:Ed,M:Ed,MM:Ed,y:Ed,yy:Ed},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:4}}),uf.defineLocale("sl",{months:"januar_februar_marec_april_maj_junij_julij_avgust_september_oktober_november_december".split("_"),monthsShort:"jan._feb._mar._apr._maj._jun._jul._avg._sep._okt._nov._dec.".split("_"),weekdays:"nedelja_ponedeljek_torek_sreda_četrtek_petek_sobota".split("_"),weekdaysShort:"ned._pon._tor._sre._čet._pet._sob.".split("_"),weekdaysMin:"ne_po_to_sr_če_pe_so".split("_"),longDateFormat:{LT:"H:mm",LTS:"H:mm:ss",L:"DD. MM. YYYY",LL:"D. MMMM YYYY",LLL:"D. MMMM YYYY H:mm",LLLL:"dddd, D. MMMM YYYY H:mm"},calendar:{sameDay:"[danes ob] LT",nextDay:"[jutri ob] LT",nextWeek:function(){switch(this.day()){case 0:return"[v] [nedeljo] [ob] LT";case 3:return"[v] [sredo] [ob] LT";case 6:return"[v] [soboto] [ob] LT";case 1:case 2:case 4:case 5:return"[v] dddd [ob] LT"}},lastDay:"[včeraj ob] LT",lastWeek:function(){switch(this.day()){case 0:return"[prejšnjo] [nedeljo] [ob] LT";case 3:return"[prejšnjo] [sredo] [ob] LT";case 6:return"[prejšnjo] [soboto] [ob] LT";case 1:case 2:case 4:case 5:return"[prejšnji] dddd [ob] LT"}},sameElse:"L"},relativeTime:{future:"čez %s",past:"pred %s",s:Fd,m:Fd,mm:Fd,h:Fd,hh:Fd,d:Fd,dd:Fd,M:Fd,MM:Fd,y:Fd,yy:Fd},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:7}}),uf.defineLocale("sq",{months:"Janar_Shkurt_Mars_Prill_Maj_Qershor_Korrik_Gusht_Shtator_Tetor_Nëntor_Dhjetor".split("_"),monthsShort:"Jan_Shk_Mar_Pri_Maj_Qer_Kor_Gus_Sht_Tet_Nën_Dhj".split("_"),weekdays:"E Diel_E Hënë_E Martë_E Mërkurë_E Enjte_E Premte_E Shtunë".split("_"),weekdaysShort:"Die_Hën_Mar_Mër_Enj_Pre_Sht".split("_"),weekdaysMin:"D_H_Ma_Më_E_P_Sh".split("_"),meridiemParse:/PD|MD/,isPM:function(a){return"M"===a.charAt(0)},meridiem:function(a,b,c){return 12>a?"PD":"MD"},longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd, D MMMM YYYY HH:mm"},calendar:{sameDay:"[Sot në] LT",nextDay:"[Nesër në] LT",nextWeek:"dddd [në] LT",lastDay:"[Dje në] LT",lastWeek:"dddd [e kaluar në] LT",sameElse:"L"},relativeTime:{future:"në %s",past:"%s më parë",s:"disa sekonda",m:"një minutë",mm:"%d minuta",h:"një orë",hh:"%d orë",d:"një ditë",dd:"%d ditë",M:"një muaj",MM:"%d muaj",y:"një vit",yy:"%d vite"},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:4}}),{words:{m:["један минут","једне минуте"],mm:["минут","минуте","минута"],h:["један сат","једног сата"],hh:["сат","сата","сати"],dd:["дан","дана","дана"],MM:["месец","месеца","месеци"],yy:["година","године","година"]},correctGrammaticalCase:function(a,b){return 1===a?b[0]:a>=2&&4>=a?b[1]:b[2]},translate:function(a,b,c){var d=jg.words[c];return 1===c.length?b?d[0]:d[1]:a+" "+jg.correctGrammaticalCase(a,d)}}),kg=(uf.defineLocale("sr-cyrl",{months:["јануар","фебруар","март","април","мај","јун","јул","август","септембар","октобар","новембар","децембар"],monthsShort:["јан.","феб.","мар.","апр.","мај","јун","јул","авг.","сеп.","окт.","нов.","дец."],weekdays:["недеља","понедељак","уторак","среда","четвртак","петак","субота"],weekdaysShort:["нед.","пон.","уто.","сре.","чет.","пет.","суб."],weekdaysMin:["не","по","ут","ср","че","пе","су"],longDateFormat:{LT:"H:mm",LTS:"H:mm:ss",L:"DD. MM. YYYY",LL:"D. MMMM YYYY",LLL:"D. MMMM YYYY H:mm",LLLL:"dddd, D. MMMM YYYY H:mm"},calendar:{sameDay:"[данас у] LT",nextDay:"[сутра у] LT",nextWeek:function(){switch(this.day()){case 0:return"[у] [недељу] [у] LT";case 3:return"[у] [среду] [у] LT";case 6:return"[у] [суботу] [у] LT";case 1:case 2:case 4:case 5:return"[у] dddd [у] LT"}},lastDay:"[јуче у] LT",lastWeek:function(){var a=["[прошле] [недеље] [у] LT","[прошлог] [понедељка] [у] LT","[прошлог] [уторка] [у] LT","[прошле] [среде] [у] LT","[прошлог] [четвртка] [у] LT","[прошлог] [петка] [у] LT","[прошле] [суботе] [у] LT"];return a[this.day()]},sameElse:"L"},relativeTime:{future:"за %s",past:"пре %s",s:"неколико секунди",m:jg.translate,mm:jg.translate,h:jg.translate,hh:jg.translate,d:"дан",dd:jg.translate,M:"месец",MM:jg.translate,y:"годину",yy:jg.translate},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:7}}),{words:{m:["jedan minut","jedne minute"],mm:["minut","minute","minuta"],h:["jedan sat","jednog sata"],hh:["sat","sata","sati"],dd:["dan","dana","dana"],MM:["mesec","meseca","meseci"],yy:["godina","godine","godina"]},correctGrammaticalCase:function(a,b){return 1===a?b[0]:a>=2&&4>=a?b[1]:b[2]},translate:function(a,b,c){var d=kg.words[c];return 1===c.length?b?d[0]:d[1]:a+" "+kg.correctGrammaticalCase(a,d)}}),lg=(uf.defineLocale("sr",{months:["januar","februar","mart","april","maj","jun","jul","avgust","septembar","oktobar","novembar","decembar"],monthsShort:["jan.","feb.","mar.","apr.","maj","jun","jul","avg.","sep.","okt.","nov.","dec."],weekdays:["nedelja","ponedeljak","utorak","sreda","četvrtak","petak","subota"],weekdaysShort:["ned.","pon.","uto.","sre.","čet.","pet.","sub."],weekdaysMin:["ne","po","ut","sr","če","pe","su"],longDateFormat:{LT:"H:mm",LTS:"H:mm:ss",L:"DD. MM. YYYY",LL:"D. MMMM YYYY",LLL:"D. MMMM YYYY H:mm",LLLL:"dddd, D. MMMM YYYY H:mm"},calendar:{sameDay:"[danas u] LT",nextDay:"[sutra u] LT",nextWeek:function(){switch(this.day()){case 0:return"[u] [nedelju] [u] LT";case 3:return"[u] [sredu] [u] LT";case 6:return"[u] [subotu] [u] LT";case 1:case 2:case 4:case 5:return"[u] dddd [u] LT"}},lastDay:"[juče u] LT",lastWeek:function(){var a=["[prošle] [nedelje] [u] LT","[prošlog] [ponedeljka] [u] LT","[prošlog] [utorka] [u] LT","[prošle] [srede] [u] LT","[prošlog] [četvrtka] [u] LT","[prošlog] [petka] [u] LT","[prošle] [subote] [u] LT"];return a[this.day()]},sameElse:"L"},relativeTime:{future:"za %s",past:"pre %s",s:"nekoliko sekundi",m:kg.translate,mm:kg.translate,h:kg.translate,hh:kg.translate,d:"dan",dd:kg.translate,M:"mesec",MM:kg.translate,y:"godinu",yy:kg.translate},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:7}}),uf.defineLocale("sv",{months:"januari_februari_mars_april_maj_juni_juli_augusti_september_oktober_november_december".split("_"),monthsShort:"jan_feb_mar_apr_maj_jun_jul_aug_sep_okt_nov_dec".split("_"),weekdays:"söndag_måndag_tisdag_onsdag_torsdag_fredag_lördag".split("_"),weekdaysShort:"sön_mån_tis_ons_tor_fre_lör".split("_"),weekdaysMin:"sö_må_ti_on_to_fr_lö".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"YYYY-MM-DD",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd D MMMM YYYY HH:mm"},calendar:{sameDay:"[Idag] LT",nextDay:"[Imorgon] LT",lastDay:"[Igår] LT",nextWeek:"[På] dddd LT",lastWeek:"[I] dddd[s] LT",sameElse:"L"},relativeTime:{future:"om %s",past:"för %s sedan",s:"några sekunder",m:"en minut",mm:"%d minuter",h:"en timme",hh:"%d timmar",d:"en dag",dd:"%d dagar",M:"en månad",MM:"%d månader",y:"ett år",yy:"%d år"},ordinalParse:/\d{1,2}(e|a)/,ordinal:function(a){var b=a%10,c=1===~~(a%100/10)?"e":1===b?"a":2===b?"a":"e";return a+c},week:{dow:1,doy:4}}),uf.defineLocale("ta",{months:"ஜனவரி_பிப்ரவரி_மார்ச்_ஏப்ரல்_மே_ஜூன்_ஜூலை_ஆகஸ்ட்_செப்டெம்பர்_அக்டோபர்_நவம்பர்_டிசம்பர்".split("_"),monthsShort:"ஜனவரி_பிப்ரவரி_மார்ச்_ஏப்ரல்_மே_ஜூன்_ஜூலை_ஆகஸ்ட்_செப்டெம்பர்_அக்டோபர்_நவம்பர்_டிசம்பர்".split("_"),weekdays:"ஞாயிற்றுக்கிழமை_திங்கட்கிழமை_செவ்வாய்கிழமை_புதன்கிழமை_வியாழக்கிழமை_வெள்ளிக்கிழமை_சனிக்கிழமை".split("_"),weekdaysShort:"ஞாயிறு_திங்கள்_செவ்வாய்_புதன்_வியாழன்_வெள்ளி_சனி".split("_"),weekdaysMin:"ஞா_தி_செ_பு_வி_வெ_ச".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY, HH:mm",LLLL:"dddd, D MMMM YYYY, HH:mm"},calendar:{sameDay:"[இன்று] LT",nextDay:"[நாளை] LT",nextWeek:"dddd, LT",lastDay:"[நேற்று] LT",lastWeek:"[கடந்த வாரம்] dddd, LT",sameElse:"L"},relativeTime:{future:"%s இல்",past:"%s முன்",s:"ஒரு சில விநாடிகள்",m:"ஒரு நிமிடம்",mm:"%d நிமிடங்கள்",h:"ஒரு மணி நேரம்",hh:"%d மணி நேரம்",d:"ஒரு நாள்",dd:"%d நாட்கள்",M:"ஒரு மாதம்",MM:"%d மாதங்கள்",y:"ஒரு வருடம்",yy:"%d ஆண்டுகள்"},ordinalParse:/\d{1,2}வது/,ordinal:function(a){return a+"வது"},meridiemParse:/யாமம்|வைகறை|காலை|நண்பகல்|எற்பாடு|மாலை/,meridiem:function(a,b,c){return 2>a?" யாமம்":6>a?" வைகறை":10>a?" காலை":14>a?" நண்பகல்":18>a?" எற்பாடு":22>a?" மாலை":" யாமம்"},meridiemHour:function(a,b){return 12===a&&(a=0),"யாமம்"===b?2>a?a:a+12:"வைகறை"===b||"காலை"===b?a:"நண்பகல்"===b&&a>=10?a:a+12},week:{dow:0,doy:6}}),uf.defineLocale("th",{months:"มกราคม_กุมภาพันธ์_มีนาคม_เมษายน_พฤษภาคม_มิถุนายน_กรกฎาคม_สิงหาคม_กันยายน_ตุลาคม_พฤศจิกายน_ธันวาคม".split("_"),monthsShort:"มกรา_กุมภา_มีนา_เมษา_พฤษภา_มิถุนา_กรกฎา_สิงหา_กันยา_ตุลา_พฤศจิกา_ธันวา".split("_"),weekdays:"อาทิตย์_จันทร์_อังคาร_พุธ_พฤหัสบดี_ศุกร์_เสาร์".split("_"),weekdaysShort:"อาทิตย์_จันทร์_อังคาร_พุธ_พฤหัส_ศุกร์_เสาร์".split("_"),weekdaysMin:"อา._จ._อ._พ._พฤ._ศ._ส.".split("_"),longDateFormat:{LT:"H นาฬิกา m นาที",LTS:"H นาฬิกา m นาที s วินาที",L:"YYYY/MM/DD",LL:"D MMMM YYYY",LLL:"D MMMM YYYY เวลา H นาฬิกา m นาที",LLLL:"วันddddที่ D MMMM YYYY เวลา H นาฬิกา m นาที"},meridiemParse:/ก่อนเที่ยง|หลังเที่ยง/,isPM:function(a){return"หลังเที่ยง"===a},meridiem:function(a,b,c){return 12>a?"ก่อนเที่ยง":"หลังเที่ยง"},calendar:{sameDay:"[วันนี้ เวลา] LT",nextDay:"[พรุ่งนี้ เวลา] LT",nextWeek:"dddd[หน้า เวลา] LT",lastDay:"[เมื่อวานนี้ เวลา] LT",lastWeek:"[วัน]dddd[ที่แล้ว เวลา] LT",sameElse:"L"},relativeTime:{future:"อีก %s",past:"%sที่แล้ว",s:"ไม่กี่วินาที",m:"1 นาที",mm:"%d นาที",h:"1 ชั่วโมง",hh:"%d ชั่วโมง",d:"1 วัน",dd:"%d วัน",M:"1 เดือน",MM:"%d เดือน",y:"1 ปี",yy:"%d ปี"}}),uf.defineLocale("tl-ph",{months:"Enero_Pebrero_Marso_Abril_Mayo_Hunyo_Hulyo_Agosto_Setyembre_Oktubre_Nobyembre_Disyembre".split("_"),monthsShort:"Ene_Peb_Mar_Abr_May_Hun_Hul_Ago_Set_Okt_Nob_Dis".split("_"),weekdays:"Linggo_Lunes_Martes_Miyerkules_Huwebes_Biyernes_Sabado".split("_"),weekdaysShort:"Lin_Lun_Mar_Miy_Huw_Biy_Sab".split("_"),weekdaysMin:"Li_Lu_Ma_Mi_Hu_Bi_Sab".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"MM/D/YYYY",LL:"MMMM D, YYYY",LLL:"MMMM D, YYYY HH:mm",LLLL:"dddd, MMMM DD, YYYY HH:mm"},calendar:{sameDay:"[Ngayon sa] LT",nextDay:"[Bukas sa] LT",nextWeek:"dddd [sa] LT",lastDay:"[Kahapon sa] LT",lastWeek:"dddd [huling linggo] LT",sameElse:"L"},relativeTime:{future:"sa loob ng %s",past:"%s ang nakalipas",s:"ilang segundo",m:"isang minuto",mm:"%d minuto",h:"isang oras",hh:"%d oras",d:"isang araw",dd:"%d araw",M:"isang buwan",MM:"%d buwan",y:"isang taon",yy:"%d taon"},ordinalParse:/\d{1,2}/,ordinal:function(a){return a},week:{dow:1,doy:4}}),{1:"'inci",5:"'inci",8:"'inci",70:"'inci",80:"'inci",2:"'nci",7:"'nci",20:"'nci",50:"'nci",3:"'üncü",4:"'üncü",100:"'üncü",6:"'ncı",9:"'uncu",10:"'uncu",30:"'uncu",60:"'ıncı",90:"'ıncı"}),mg=(uf.defineLocale("tr",{months:"Ocak_Şubat_Mart_Nisan_Mayıs_Haziran_Temmuz_Ağustos_Eylül_Ekim_Kasım_Aralık".split("_"),monthsShort:"Oca_Şub_Mar_Nis_May_Haz_Tem_Ağu_Eyl_Eki_Kas_Ara".split("_"),weekdays:"Pazar_Pazartesi_Salı_Çarşamba_Perşembe_Cuma_Cumartesi".split("_"),weekdaysShort:"Paz_Pts_Sal_Çar_Per_Cum_Cts".split("_"),weekdaysMin:"Pz_Pt_Sa_Ça_Pe_Cu_Ct".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD.MM.YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd, D MMMM YYYY HH:mm"},calendar:{sameDay:"[bugün saat] LT",nextDay:"[yarın saat] LT",nextWeek:"[haftaya] dddd [saat] LT",lastDay:"[dün] LT",lastWeek:"[geçen hafta] dddd [saat] LT",sameElse:"L"},relativeTime:{future:"%s sonra",past:"%s önce",s:"birkaç saniye",m:"bir dakika",mm:"%d dakika",h:"bir saat",hh:"%d saat",d:"bir gün",dd:"%d gün",M:"bir ay",MM:"%d ay",y:"bir yıl",yy:"%d yıl"},ordinalParse:/\d{1,2}'(inci|nci|üncü|ncı|uncu|ıncı)/,ordinal:function(a){if(0===a)return a+"'ıncı";var b=a%10,c=a%100-b,d=a>=100?100:null;return a+(lg[b]||lg[c]||lg[d])},week:{dow:1,doy:7}}),uf.defineLocale("tzl",{months:"Januar_Fevraglh_Març_Avrïu_Mai_Gün_Julia_Guscht_Setemvar_Listopäts_Noemvar_Zecemvar".split("_"),monthsShort:"Jan_Fev_Mar_Avr_Mai_Gün_Jul_Gus_Set_Lis_Noe_Zec".split("_"),weekdays:"Súladi_Lúneçi_Maitzi_Márcuri_Xhúadi_Viénerçi_Sáturi".split("_"),weekdaysShort:"Súl_Lún_Mai_Már_Xhú_Vié_Sát".split("_"),weekdaysMin:"Sú_Lú_Ma_Má_Xh_Vi_Sá".split("_"),longDateFormat:{LT:"HH.mm",LTS:"LT.ss",L:"DD.MM.YYYY",LL:"D. MMMM [dallas] YYYY",LLL:"D. MMMM [dallas] YYYY LT",LLLL:"dddd, [li] D. MMMM [dallas] YYYY LT"},meridiem:function(a,b,c){return a>11?c?"d'o":"D'O":c?"d'a":"D'A"},calendar:{sameDay:"[oxhi à] LT",nextDay:"[demà à] LT",nextWeek:"dddd [à] LT",lastDay:"[ieiri à] LT",lastWeek:"[sür el] dddd [lasteu à] LT",sameElse:"L"},relativeTime:{future:"osprei %s",past:"ja%s",s:Gd,m:Gd,mm:Gd,h:Gd,hh:Gd,d:Gd,dd:Gd,M:Gd,MM:Gd,y:Gd,yy:Gd},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:4}}),uf.defineLocale("tzm-latn",{months:"innayr_brˤayrˤ_marˤsˤ_ibrir_mayyw_ywnyw_ywlywz_ɣwšt_šwtanbir_ktˤwbrˤ_nwwanbir_dwjnbir".split("_"),monthsShort:"innayr_brˤayrˤ_marˤsˤ_ibrir_mayyw_ywnyw_ywlywz_ɣwšt_šwtanbir_ktˤwbrˤ_nwwanbir_dwjnbir".split("_"),weekdays:"asamas_aynas_asinas_akras_akwas_asimwas_asiḍyas".split("_"),weekdaysShort:"asamas_aynas_asinas_akras_akwas_asimwas_asiḍyas".split("_"),weekdaysMin:"asamas_aynas_asinas_akras_akwas_asimwas_asiḍyas".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd D MMMM YYYY HH:mm"},calendar:{sameDay:"[asdkh g] LT",nextDay:"[aska g] LT",nextWeek:"dddd [g] LT",lastDay:"[assant g] LT",lastWeek:"dddd [g] LT",sameElse:"L"},relativeTime:{future:"dadkh s yan %s",past:"yan %s",s:"imik",m:"minuḍ",mm:"%d minuḍ",h:"saɛa",hh:"%d tassaɛin",d:"ass",dd:"%d ossan",M:"ayowr",MM:"%d iyyirn",y:"asgas",yy:"%d isgasn"},week:{dow:6,doy:12}}),uf.defineLocale("tzm",{months:"ⵉⵏⵏⴰⵢⵔ_ⴱⵕⴰⵢⵕ_ⵎⴰⵕⵚ_ⵉⴱⵔⵉⵔ_ⵎⴰⵢⵢⵓ_ⵢⵓⵏⵢⵓ_ⵢⵓⵍⵢⵓⵣ_ⵖⵓⵛⵜ_ⵛⵓⵜⴰⵏⴱⵉⵔ_ⴽⵟⵓⴱⵕ_ⵏⵓⵡⴰⵏⴱⵉⵔ_ⴷⵓⵊⵏⴱⵉⵔ".split("_"),monthsShort:"ⵉⵏⵏⴰⵢⵔ_ⴱⵕⴰⵢⵕ_ⵎⴰⵕⵚ_ⵉⴱⵔⵉⵔ_ⵎⴰⵢⵢⵓ_ⵢⵓⵏⵢⵓ_ⵢⵓⵍⵢⵓⵣ_ⵖⵓⵛⵜ_ⵛⵓⵜⴰⵏⴱⵉⵔ_ⴽⵟⵓⴱⵕ_ⵏⵓⵡⴰⵏⴱⵉⵔ_ⴷⵓⵊⵏⴱⵉⵔ".split("_"),weekdays:"ⴰⵙⴰⵎⴰⵙ_ⴰⵢⵏⴰⵙ_ⴰⵙⵉⵏⴰⵙ_ⴰⴽⵔⴰⵙ_ⴰⴽⵡⴰⵙ_ⴰⵙⵉⵎⵡⴰⵙ_ⴰⵙⵉⴹⵢⴰⵙ".split("_"),weekdaysShort:"ⴰⵙⴰⵎⴰⵙ_ⴰⵢⵏⴰⵙ_ⴰⵙⵉⵏⴰⵙ_ⴰⴽⵔⴰⵙ_ⴰⴽⵡⴰⵙ_ⴰⵙⵉⵎⵡⴰⵙ_ⴰⵙⵉⴹⵢⴰⵙ".split("_"),weekdaysMin:"ⴰⵙⴰⵎⴰⵙ_ⴰⵢⵏⴰⵙ_ⴰⵙⵉⵏⴰⵙ_ⴰⴽⵔⴰⵙ_ⴰⴽⵡⴰⵙ_ⴰⵙⵉⵎⵡⴰⵙ_ⴰⵙⵉⴹⵢⴰⵙ".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd D MMMM YYYY HH:mm"},calendar:{sameDay:"[ⴰⵙⴷⵅ ⴴ] LT",nextDay:"[ⴰⵙⴽⴰ ⴴ] LT",nextWeek:"dddd [ⴴ] LT",lastDay:"[ⴰⵚⴰⵏⵜ ⴴ] LT",lastWeek:"dddd [ⴴ] LT",sameElse:"L"},relativeTime:{future:"ⴷⴰⴷⵅ ⵙ ⵢⴰⵏ %s",past:"ⵢⴰⵏ %s",s:"ⵉⵎⵉⴽ",m:"ⵎⵉⵏⵓⴺ",mm:"%d ⵎⵉⵏⵓⴺ",h:"ⵙⴰⵄⴰ",hh:"%d ⵜⴰⵙⵙⴰⵄⵉⵏ",d:"ⴰⵙⵙ",dd:"%d oⵙⵙⴰⵏ",M:"ⴰⵢoⵓⵔ",MM:"%d ⵉⵢⵢⵉⵔⵏ",y:"ⴰⵙⴳⴰⵙ",yy:"%d ⵉⵙⴳⴰⵙⵏ"},week:{dow:6,doy:12}}),uf.defineLocale("uk",{months:Jd,monthsShort:"січ_лют_бер_квіт_трав_черв_лип_серп_вер_жовт_лист_груд".split("_"),weekdays:Kd,weekdaysShort:"нд_пн_вт_ср_чт_пт_сб".split("_"),weekdaysMin:"нд_пн_вт_ср_чт_пт_сб".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD.MM.YYYY",LL:"D MMMM YYYY р.",LLL:"D MMMM YYYY р., HH:mm",LLLL:"dddd, D MMMM YYYY р., HH:mm"},calendar:{sameDay:Ld("[Сьогодні "),nextDay:Ld("[Завтра "),lastDay:Ld("[Вчора "),nextWeek:Ld("[У] dddd ["),lastWeek:function(){switch(this.day()){case 0:case 3:case 5:case 6:return Ld("[Минулої] dddd [").call(this);case 1:case 2:case 4:return Ld("[Минулого] dddd [").call(this)}},sameElse:"L"},relativeTime:{future:"за %s",past:"%s тому",s:"декілька секунд",m:Id,mm:Id,h:"годину",hh:Id,d:"день",dd:Id,M:"місяць",MM:Id,y:"рік",yy:Id},meridiemParse:/ночі|ранку|дня|вечора/,isPM:function(a){return/^(дня|вечора)$/.test(a)},meridiem:function(a,b,c){return 4>a?"ночі":12>a?"ранку":17>a?"дня":"вечора"},ordinalParse:/\d{1,2}-(й|го)/,ordinal:function(a,b){switch(b){case"M":case"d":case"DDD":case"w":case"W":return a+"-й";case"D":return a+"-го";default:return a}},week:{dow:1,doy:7}}),uf.defineLocale("uz",{months:"январь_февраль_март_апрель_май_июнь_июль_август_сентябрь_октябрь_ноябрь_декабрь".split("_"),monthsShort:"янв_фев_мар_апр_май_июн_июл_авг_сен_окт_ноя_дек".split("_"),weekdays:"Якшанба_Душанба_Сешанба_Чоршанба_Пайшанба_Жума_Шанба".split("_"),weekdaysShort:"Якш_Душ_Сеш_Чор_Пай_Жум_Шан".split("_"),weekdaysMin:"Як_Ду_Се_Чо_Па_Жу_Ша".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD/MM/YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"D MMMM YYYY, dddd HH:mm"},calendar:{sameDay:"[Бугун соат] LT [да]",nextDay:"[Эртага] LT [да]",nextWeek:"dddd [куни соат] LT [да]",lastDay:"[Кеча соат] LT [да]",lastWeek:"[Утган] dddd [куни соат] LT [да]",sameElse:"L"},relativeTime:{future:"Якин %s ичида",past:"Бир неча %s олдин",s:"фурсат",m:"бир дакика",mm:"%d дакика",h:"бир соат",hh:"%d соат",d:"бир кун",dd:"%d кун",M:"бир ой",MM:"%d ой",y:"бир йил",yy:"%d йил"},week:{dow:1,doy:7}}),uf.defineLocale("vi",{months:"tháng 1_tháng 2_tháng 3_tháng 4_tháng 5_tháng 6_tháng 7_tháng 8_tháng 9_tháng 10_tháng 11_tháng 12".split("_"),monthsShort:"Th01_Th02_Th03_Th04_Th05_Th06_Th07_Th08_Th09_Th10_Th11_Th12".split("_"),weekdays:"chủ nhật_thứ hai_thứ ba_thứ tư_thứ năm_thứ sáu_thứ bảy".split("_"),weekdaysShort:"CN_T2_T3_T4_T5_T6_T7".split("_"),weekdaysMin:"CN_T2_T3_T4_T5_T6_T7".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD/MM/YYYY",LL:"D MMMM [năm] YYYY",LLL:"D MMMM [năm] YYYY HH:mm",LLLL:"dddd, D MMMM [năm] YYYY HH:mm",l:"DD/M/YYYY",ll:"D MMM YYYY",lll:"D MMM YYYY HH:mm",
llll:"ddd, D MMM YYYY HH:mm"},calendar:{sameDay:"[Hôm nay lúc] LT",nextDay:"[Ngày mai lúc] LT",nextWeek:"dddd [tuần tới lúc] LT",lastDay:"[Hôm qua lúc] LT",lastWeek:"dddd [tuần rồi lúc] LT",sameElse:"L"},relativeTime:{future:"%s tới",past:"%s trước",s:"vài giây",m:"một phút",mm:"%d phút",h:"một giờ",hh:"%d giờ",d:"một ngày",dd:"%d ngày",M:"một tháng",MM:"%d tháng",y:"một năm",yy:"%d năm"},ordinalParse:/\d{1,2}/,ordinal:function(a){return a},week:{dow:1,doy:4}}),uf.defineLocale("zh-cn",{months:"一月_二月_三月_四月_五月_六月_七月_八月_九月_十月_十一月_十二月".split("_"),monthsShort:"1月_2月_3月_4月_5月_6月_7月_8月_9月_10月_11月_12月".split("_"),weekdays:"星期日_星期一_星期二_星期三_星期四_星期五_星期六".split("_"),weekdaysShort:"周日_周一_周二_周三_周四_周五_周六".split("_"),weekdaysMin:"日_一_二_三_四_五_六".split("_"),longDateFormat:{LT:"Ah点mm分",LTS:"Ah点m分s秒",L:"YYYY-MM-DD",LL:"YYYY年MMMD日",LLL:"YYYY年MMMD日Ah点mm分",LLLL:"YYYY年MMMD日ddddAh点mm分",l:"YYYY-MM-DD",ll:"YYYY年MMMD日",lll:"YYYY年MMMD日Ah点mm分",llll:"YYYY年MMMD日ddddAh点mm分"},meridiemParse:/凌晨|早上|上午|中午|下午|晚上/,meridiemHour:function(a,b){return 12===a&&(a=0),"凌晨"===b||"早上"===b||"上午"===b?a:"下午"===b||"晚上"===b?a+12:a>=11?a:a+12},meridiem:function(a,b,c){var d=100*a+b;return 600>d?"凌晨":900>d?"早上":1130>d?"上午":1230>d?"中午":1800>d?"下午":"晚上"},calendar:{sameDay:function(){return 0===this.minutes()?"[今天]Ah[点整]":"[今天]LT"},nextDay:function(){return 0===this.minutes()?"[明天]Ah[点整]":"[明天]LT"},lastDay:function(){return 0===this.minutes()?"[昨天]Ah[点整]":"[昨天]LT"},nextWeek:function(){var a,b;return a=uf().startOf("week"),b=this.unix()-a.unix()>=604800?"[下]":"[本]",0===this.minutes()?b+"dddAh点整":b+"dddAh点mm"},lastWeek:function(){var a,b;return a=uf().startOf("week"),b=this.unix()<a.unix()?"[上]":"[本]",0===this.minutes()?b+"dddAh点整":b+"dddAh点mm"},sameElse:"LL"},ordinalParse:/\d{1,2}(日|月|周)/,ordinal:function(a,b){switch(b){case"d":case"D":case"DDD":return a+"日";case"M":return a+"月";case"w":case"W":return a+"周";default:return a}},relativeTime:{future:"%s内",past:"%s前",s:"几秒",m:"1 分钟",mm:"%d 分钟",h:"1 小时",hh:"%d 小时",d:"1 天",dd:"%d 天",M:"1 个月",MM:"%d 个月",y:"1 年",yy:"%d 年"},week:{dow:1,doy:4}}),uf.defineLocale("zh-tw",{months:"一月_二月_三月_四月_五月_六月_七月_八月_九月_十月_十一月_十二月".split("_"),monthsShort:"1月_2月_3月_4月_5月_6月_7月_8月_9月_10月_11月_12月".split("_"),weekdays:"星期日_星期一_星期二_星期三_星期四_星期五_星期六".split("_"),weekdaysShort:"週日_週一_週二_週三_週四_週五_週六".split("_"),weekdaysMin:"日_一_二_三_四_五_六".split("_"),longDateFormat:{LT:"Ah點mm分",LTS:"Ah點m分s秒",L:"YYYY年MMMD日",LL:"YYYY年MMMD日",LLL:"YYYY年MMMD日Ah點mm分",LLLL:"YYYY年MMMD日ddddAh點mm分",l:"YYYY年MMMD日",ll:"YYYY年MMMD日",lll:"YYYY年MMMD日Ah點mm分",llll:"YYYY年MMMD日ddddAh點mm分"},meridiemParse:/早上|上午|中午|下午|晚上/,meridiemHour:function(a,b){return 12===a&&(a=0),"早上"===b||"上午"===b?a:"中午"===b?a>=11?a:a+12:"下午"===b||"晚上"===b?a+12:void 0},meridiem:function(a,b,c){var d=100*a+b;return 900>d?"早上":1130>d?"上午":1230>d?"中午":1800>d?"下午":"晚上"},calendar:{sameDay:"[今天]LT",nextDay:"[明天]LT",nextWeek:"[下]ddddLT",lastDay:"[昨天]LT",lastWeek:"[上]ddddLT",sameElse:"L"},ordinalParse:/\d{1,2}(日|月|週)/,ordinal:function(a,b){switch(b){case"d":case"D":case"DDD":return a+"日";case"M":return a+"月";case"w":case"W":return a+"週";default:return a}},relativeTime:{future:"%s內",past:"%s前",s:"幾秒",m:"一分鐘",mm:"%d分鐘",h:"一小時",hh:"%d小時",d:"一天",dd:"%d天",M:"一個月",MM:"%d個月",y:"一年",yy:"%d年"}}),uf);return mg.locale("en"),mg});
// ==================================================
// fancyBox v3.0.47
//
// Licensed GPLv3 for open source use
// or fancyBox Commercial License for commercial use
//
// http://fancyapps.com/fancybox/
// Copyright 2017 fancyApps
//
// ==================================================
;(function (window, document, $, undefined) {
    'use strict';

    // If there's no jQuery, fancyBox can't work
    // =========================================

    if ( !$ ) {
        return undefined;
    }

    // Private default settings
    // ========================

    var defaults = {

        // Animation duration in ms
        speed : 330,

        // Enable infinite gallery navigation
        loop : true,

        // Should zoom animation change opacity, too
        // If opacity is 'auto', then fade-out if image and thumbnail have different aspect ratios
        opacity : 'auto',

        // Space around image, ignored if zoomed-in or viewport smaller than 800px
        margin : [44, 0],

        // Horizontal space between slides
        gutter : 30,

        // Should display toolbars
        infobar : true,
        buttons : true,

        // What buttons should appear in the toolbar
        slideShow  : true,
        fullScreen : true,
        thumbs     : true,
        closeBtn   : true,

        // Should apply small close button at top right corner of the content
        // If 'auto' - will be set for content having type 'html', 'inline' or 'ajax'
        smallBtn : 'auto',

        image : {

            // Wait for images to load before displaying
            // Requires predefined image dimensions
            // If 'auto' - will zoom in thumbnail if 'width' and 'height' attributes are found
            preload : "auto",

            // Protect an image from downloading by right-click
            protect : false

        },

        ajax : {

            // Object containing settings for ajax request
            settings : {

                // This helps to indicate that request comes from the modal
                // Feel free to change naming
                data : {
                    fancybox : true
                }
            }

        },

        iframe : {

            // Iframe template
            tpl : '<iframe id="fancybox-frame{rnd}" name="fancybox-frame{rnd}" class="fancybox-iframe" frameborder="0" vspace="0" hspace="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen allowtransparency="true" src=""></iframe>',

            // Preload iframe before displaying it
            // This allows to calculate iframe content width and height
            // (note: Due to "Same Origin Policy", you can't get cross domain data).
            preload : true,

            // Scrolling attribute for iframe tag
            scrolling : 'no',

            // Custom CSS styling for iframe wrapping element
            css : {}

        },

        // Custom CSS class for layout
        baseClass : '',

        // Custom CSS class for slide element
        slideClass : '',

        // Base template for layout
        baseTpl	: '<div class="fancybox-container" role="dialog" tabindex="-1">' +
                '<div class="fancybox-bg"></div>' +
                '<div class="fancybox-controls">' +
                    '<div class="fancybox-infobar">' +
                        '<button data-fancybox-previous class="fancybox-button fancybox-button--left" title="Previous"></button>' +
                        '<div class="fancybox-infobar__body">' +
                            '<span class="js-fancybox-index"></span>&nbsp;/&nbsp;<span class="js-fancybox-count"></span>' +
                        '</div>' +
                        '<button data-fancybox-next class="fancybox-button fancybox-button--right" title="Next"></button>' +
                    '</div>' +
                    '<div class="fancybox-buttons">' +
                        '<button data-fancybox-close class="fancybox-button fancybox-button--close" title="Close (Esc)"></button>' +
                    '</div>' +
                '</div>' +
                '<div class="fancybox-slider-wrap">' +
                    '<div class="fancybox-slider"></div>' +
                '</div>' +
                '<div class="fancybox-caption-wrap"><div class="fancybox-caption"></div></div>' +
            '</div>',

        // Loading indicator template
        spinnerTpl : '<div class="fancybox-loading"></div>',

        // Error message template
        errorTpl : '<div class="fancybox-error"><p>The requested content cannot be loaded. <br /> Please try again later.<p></div>',

        // This will be appended to html content, if "smallBtn" option is not set to false
        closeTpl : '<button data-fancybox-close class="fancybox-close-small"></button>',

        // Container is injected into this element
        parentEl : 'body',

        // Enable gestures (tap, zoom, pan and pinch)
        touch : true,

        // Enable keyboard navigation
        keyboard : true,

        // Try to focus on first focusable element after opening
        focus : true,

        // Close when clicked outside of the content
        closeClickOutside : true,

        // Callbacks
        beforeLoad	 : $.noop,
        afterLoad    : $.noop,
        beforeMove 	 : $.noop,
        afterMove    : $.noop,
        onComplete	 : $.noop,

        onInit       : $.noop,
        beforeClose	 : $.noop,
        afterClose	 : $.noop,
        onActivate   : $.noop,
        onDeactivate : $.noop

    };

    var $W = $(window);
    var $D = $(document);

    var called = 0;

    // Check if an object is a jQuery object and not a native JavaScript object
    // ========================================================================

    var isQuery = function (obj) {
        return obj && obj.hasOwnProperty && obj instanceof $;
    };

    // Handle multiple browsers for requestAnimationFrame()
    // ====================================================

    var requestAFrame = (function() {
        return  window.requestAnimationFrame ||
                window.webkitRequestAnimationFrame ||
                window.mozRequestAnimationFrame ||
                function( callback ) {
                    window.setTimeout(callback, 1000 / 60); };
                })();


    // Check if element is inside the viewport by at least 1 pixel
    // ===========================================================

    var isElementInViewport = function( el ) {
        var rect;

        if ( typeof $ === "function" && el instanceof $ ) {
            el = el[0];
        }

        rect = el.getBoundingClientRect();

        return rect.bottom > 0 && rect.right > 0 &&
                rect.left < (window.innerWidth || document.documentElement.clientWidth)  &&
                rect.top < (window.innerHeight || document.documentElement.clientHeight);
    };


    // Class definition
    // ================

    var FancyBox = function( content, opts, index ) {
        var self = this;

        self.opts  = $.extend( true, { index : index }, defaults, opts || {} );
        self.id    = self.opts.id || ++called;
        self.group = [];

        self.currIndex = parseInt( self.opts.index, 10 ) || 0;
        self.prevIndex = null;

        self.prevPos = null;
        self.currPos = 0;

        self.firstRun = null;

        // Create group elements from original item collection
        self.createGroup( content );

        if ( !self.group.length ) {
            return;
        }

        // Save last active element and current scroll position
        self.$lastFocus = $(document.activeElement).blur();

        // Collection of gallery objects
        self.slides = {};

        self.init( content );

    };

    $.extend(FancyBox.prototype, {

        // Create DOM structure
        // ====================

        init : function() {
            var self = this;

            var galleryHasHtml = false;

            var testWidth;
            var $container;

            self.scrollTop  = $D.scrollTop();
            self.scrollLeft = $D.scrollLeft();

            if ( !$.fancybox.getInstance() ) {
                testWidth = $( 'body' ).width();

                $( 'html' ).addClass( 'fancybox-enabled' );

                if ( $.fancybox.isTouch ) {

                    // Ugly workaround for iOS page shifting issue (when inputs get focus)
                    // Do not apply for images, otherwise top/bottom bars will appear
                    $.each( self.group, function( key, item ) {
                        if ( item.type !== 'image' && item.type !== 'iframe' ) {
                            galleryHasHtml = true;
                            return false;
                        }
                    });

                    if ( galleryHasHtml ) {
                        $('body').css({
                            position : 'fixed',
                            width    : testWidth,
                            top      : self.scrollTop * -1
                        });
                    }

                } else {

                    // Compare page width after adding "overflow:hidden"
                    testWidth = $( 'body' ).width() - testWidth;

                    // Width has changed - compensate missing scrollbars
                    if ( testWidth > 1 ) {
                        $( '<style id="fancybox-noscroll" type="text/css">' ).html( '.compensate-for-scrollbar, .fancybox-enabled body { margin-right: ' + testWidth + 'px; }' ).appendTo( 'head' );
                    }

                }
            }

            $container = $( self.opts.baseTpl )
                .attr('id', 'fancybox-container-' + self.id)
                .data( 'FancyBox', self )
                .addClass( self.opts.baseClass )
                .hide()
                .prependTo( self.opts.parentEl );

            // Create object holding references to jQuery wrapped nodes
            self.$refs = {
                container   : $container,
                bg          : $container.find('.fancybox-bg'),
                controls    : $container.find('.fancybox-controls'),
                buttons     : $container.find('.fancybox-buttons'),
                slider_wrap : $container.find('.fancybox-slider-wrap'),
                slider      : $container.find('.fancybox-slider'),
                caption     : $container.find('.fancybox-caption')
            };

            self.trigger( 'onInit' );

            // Bring to front and enable events
            self.activate();

            // Try to avoid running multiple times
            if ( self.current ) {
                return;
            }

            self.jumpTo( self.currIndex );

        },


        // Create array of gally item objects
        // Check if each object has valid type and content
        // ===============================================

        createGroup : function ( content ) {
            var self  = this;
            var items = $.makeArray( content );

            $.each(items, function( i, item ) {
                var obj  = {},
                    opts = {},
                    data = [],
                    $item,
                    type,
                    src,
                    srcParts;

                // Step 1 - Make sure we have an object

                if ( $.isPlainObject( item ) ) {

                    obj  = item;
                    opts = item.opts || {};

                } else if ( $.type( item ) === 'object' && $( item ).length ) {

                    $item = $( item );
                    data  = $item.data();

                    opts = 'options' in data ? data.options : {};

                    opts = $.type( opts ) === 'object' ? opts : {};

                    obj.type = 'type' in data ? data.type : opts.type;
                    obj.src  = 'src'  in data ? data.src  : ( opts.src || $item.attr( 'href' ) );

                    opts.width   = 'width'   in data ? data.width   : opts.width;
                    opts.height  = 'height'  in data ? data.height  : opts.height;
                    opts.thumb   = 'thumb'   in data ? data.thumb   : opts.thumb;

                    opts.selector = 'selector'  in data ? data.selector  : opts.selector;

                    if ( 'srcset' in data ) {
                        opts.image = { srcset : data.srcset };
                    }

                    opts.$orig = $item;

                } else {

                    obj = {
                        type    : 'html',
                        content : item + ''
                    };

                }

                obj.opts = $.extend( true, {}, self.opts, opts );

                // Step 2 - Make sure we have supported content type

                type = obj.type;
                src  = obj.src || '';

                if ( !type ) {

                    if ( obj.content ) {
                        type = 'html';

                    } else if ( src.match(/(^data:image\/[a-z0-9+\/=]*,)|(\.(jp(e|g|eg)|gif|png|bmp|webp|svg|ico)((\?|#).*)?$)/i) ) {
                        type = 'image';

                    } else if ( src.match(/\.(pdf)((\?|#).*)?$/i) ) {
                        type = 'pdf';

                    } else if ( src.charAt(0) === '#' ) {
                        type = 'inline';

                    }

                    obj.type = type;

                }

                // Step 3 - Some adjustments

                obj.index = self.group.length;

                // Check if $orig and $thumb objects exist
                if ( obj.opts.$orig && !obj.opts.$orig.length ) {
                    delete obj.opts.$orig;
                }

                if ( !obj.opts.$thumb && obj.opts.$orig ) {
                    obj.opts.$thumb = obj.opts.$orig.find( 'img:first' );
                }

                if ( obj.opts.$thumb && !obj.opts.$thumb.length ) {
                    delete obj.opts.$thumb;
                }

                // Caption is a "special" option, it can be passed as a method
                if ( $.type( obj.opts.caption ) === 'function' ) {
                    obj.opts.caption = obj.opts.caption.apply( item, [ self, obj ] );

                } else if ( 'caption' in data ) {
                    obj.opts.caption = data.caption;

                } else if ( opts.$orig ) {
                    obj.opts.caption = $item.attr( 'title' );
                }

                // Make sure we have caption as a string
                obj.opts.caption = obj.opts.caption === undefined ? '' : obj.opts.caption + '';

                // Check if url contains selector used to filter the content
                // Example: "ajax.html #something"
                if ( type === 'ajax' ) {
                    srcParts = src.split(/\s+/, 2);

                    if ( srcParts.length > 1 ) {
                        obj.src = srcParts.shift();

                        obj.opts.selector = srcParts.shift();
                    }
                }

                if ( obj.opts.smallBtn == 'auto' ) {

                    if ( $.inArray( type, ['html', 'inline', 'ajax'] ) > -1 ) {
                        obj.opts.buttons  = false;
                        obj.opts.smallBtn = true;

                    } else {
                        obj.opts.smallBtn = false;
                    }

                }

                if ( type === 'pdf' ) {

                    obj.type = 'iframe';

                    obj.opts.closeBtn = true;
                    obj.opts.smallBtn = false;

                    obj.opts.iframe.preload = false;

                }

                if ( obj.opts.modal ) {

                    $.extend(true, obj.opts, {
                        infobar		: 0,
                        buttons		: 0,
                        keyboard	: 0,
                        slideShow	: 0,
                        fullScreen	: 0,
                        closeClickOutside	: 0
                    });

                }

                self.group.push( obj );

            });

        },


        // Attach an event handler functions for:
        //   - navigation elements
        //   - browser scrolling, resizing;
        //   - focusing
        //   - keyboard
        // =================

        addEvents : function() {
            var self = this;

            self.removeEvents();

            // Make navigation elements clickable

            self.$refs.container.on('click.fb-close', '[data-fancybox-close]', function(e) {
                e.stopPropagation();
                e.preventDefault();

                self.close( e );

            }).on('click.fb-previous', '[data-fancybox-previous]', function(e) {
                e.stopPropagation();
                e.preventDefault();

                self.previous();

            }).on('click.fb-next', '[data-fancybox-next]', function(e) {
                e.stopPropagation();
                e.preventDefault();

                self.next();
            });


            // Handle page scrolling and browser resizing

            $( window ).on('orientationchange.fb resize.fb', function(e) {
                requestAFrame(function() {

                    if ( e && e.originalEvent && e.originalEvent.type === "resize" ) {
                        self.update();

                    } else {
                        self.$refs.slider_wrap.hide();

                        requestAFrame(function () {
                            self.$refs.slider_wrap.show();

                            self.update();
                        });

                    }

                });
            });


            // Trap focus

            $D.on('focusin.fb', function(e) {
                var instance = $.fancybox ? $.fancybox.getInstance() : null;

                if ( instance && !$( e.target ).hasClass( 'fancybox-container' ) && !$.contains( instance.$refs.container[0], e.target ) ) {
                    e.stopPropagation();

                    instance.focus();

                    // Sometimes page gets scrolled, set it back
                    $W.scrollTop( self.scrollTop ).scrollLeft( self.scrollLeft );
                }

            });

            // Enable keyboard navigation

            $D.on('keydown.fb', function (e) {
                var current = self.current,
                    keycode = e.keyCode || e.which;

                if ( !current || !current.opts.keyboard ) {
                    return;
                }

                if ( $(e.target).is('input') || $(e.target).is('textarea') ) {
                    return;
                }

                // Backspace and Esc keys
                if ( keycode === 8 || keycode === 27 ) {
                    e.preventDefault();

                    self.close( e );

                    return;
                }

                switch ( keycode ) {

                    case 37: // Left arrow
                    case 38: // Up arrow

                        e.preventDefault();

                        self.previous();

                    break;

                    case 39: // Right arrow
                    case 40: // Down arrow

                        e.preventDefault();

                        self.next();

                    break;

                    case 80: // "P"
					case 32: // Spacebar

						e.preventDefault();

						if ( self.SlideShow ) {
							e.preventDefault();

							self.SlideShow.toggle();
						}

					break;

                    case 70: // "F"

						if ( self.FullScreen ) {
							e.preventDefault();

							self.FullScreen.toggle();
						}

					break;

                    case 71: // "G"

						if ( self.Thumbs ) {
							e.preventDefault();

							self.Thumbs.toggle();
						}

					break;
                }
            });


        },


        // Remove events added by the core
        // ===============================

        removeEvents : function () {

            $W.off( 'scroll.fb resize.fb orientationchange.fb' );
            $D.off( 'keydown.fb focusin.fb click.fb-close' );

            this.$refs.container.off('click.fb-close click.fb-previous click.fb-next');
        },


        // Slide to left
        // ==================

        previous : function( duration ) {
            this.jumpTo( this.currIndex - 1, duration );
        },


        // Slide to right
        // ===================

        next : function( duration ) {
            this.jumpTo( this.currIndex + 1, duration );
        },


        // Display current gallery item, move slider to current position
        // =============================================================

        jumpTo : function ( to, duration ) {
            var self = this,
                firstRun,
                index,
                pos,
                loop;

            firstRun = self.firstRun = ( self.firstRun === null );

            index = pos = to = parseInt( to, 10 );
            loop  = self.current ? self.current.opts.loop : false;

            if ( self.isAnimating || ( index == self.currIndex && !firstRun ) ) {
                return;
            }

            if ( self.group.length > 1 && loop ) {

                index = index % self.group.length;
                index = index < 0 ? self.group.length + index : index;

                // Calculate closest position of upcoming item from the current one
                if ( self.group.length == 2 ) {
                    pos = to - self.currIndex + self.currPos;

                } else {
                    pos = index - self.currIndex + self.currPos;

                    if ( Math.abs( self.currPos - ( pos + self.group.length ) ) < Math.abs( self.currPos - pos ) ) {
                        pos = pos + self.group.length;

                    } else if ( Math.abs( self.currPos - ( pos - self.group.length ) ) < Math.abs( self.currPos - pos ) ) {
                        pos = pos - self.group.length;

                    }
                }

            } else if ( !self.group[ index ] ) {
                self.update( false, false, duration );

                return;
            }

            if ( self.current ) {
                self.current.$slide.removeClass('fancybox-slide--current fancybox-slide--complete');

                self.updateSlide( self.current, true );
            }

            self.prevIndex = self.currIndex;
            self.prevPos   = self.currPos;

            self.currIndex = index;
            self.currPos   = pos;

            // Create slides

            self.current = self.createSlide( pos );

            if ( self.group.length > 1 ) {

                if ( self.opts.loop || pos - 1 >= 0 ) {
                    self.createSlide( pos - 1 );
                }

                if ( self.opts.loop || pos + 1 < self.group.length ) {
                    self.createSlide( pos + 1 );
                }
            }

            self.current.isMoved    = false;
            self.current.isComplete = false;

            duration = parseInt( duration === undefined ? self.current.opts.speed * 1.5 : duration, 10 );

            // Move slider to the next position
            // Note: the content might still be loading
            self.trigger( 'beforeMove' );

            self.updateControls();

            if ( firstRun ) {
                self.current.$slide.addClass('fancybox-slide--current');

                self.$refs.container.show();

                requestAFrame(function() {
                    self.$refs.bg.css('transition-duration', self.current.opts.speed + 'ms');

                    self.$refs.container.addClass( 'fancybox-container--ready' );
                });
            }

            // Set position immediately on first opening
            self.update( true, false, firstRun ? 0 : duration, function() {
                self.afterMove();
            });

            self.loadSlide( self.current );

            if ( !( firstRun && self.current.$ghost ) ) {
                self.preload();
            }

        },


        // Create new "slide" element
        // These are gallery items  that are actually added to DOM
        // =======================================================

        createSlide : function( pos ) {

            var self = this;
            var $slide;
            var index;
            var found;

            index = pos % self.group.length;
            index = index < 0 ? self.group.length + index : index;

            if ( !self.slides[ pos ] && self.group[ index ] ) {

                // If we are looping and slide with that index already exists, then reuse it
                if ( self.opts.loop && self.group.length > 2 ) {
                    for (var key in self.slides) {
                        if ( self.slides[ key ].index === index ) {
                            found = self.slides[ key ];
                            found.pos = pos;

                            self.slides[ pos ] = found;

                            delete self.slides[ key ];

                            self.updateSlide( found );

                            return found;
                        }
                    }
                }

                $slide = $('<div class="fancybox-slide"></div>').appendTo( self.$refs.slider );

                self.slides[ pos ] = $.extend( true, {}, self.group[ index ], {
                    pos      : pos,
                    $slide   : $slide,
                    isMoved  : false,
                    isLoaded : false
                });

            }

            return self.slides[ pos ];

        },

        zoomInOut : function( type, duration, callback ) {

            var self     = this;
            var current  = self.current;
            var $what    = current.$placeholder;
            var opacity  = current.opts.opacity;
            var $thumb   = current.opts.$thumb;
            var thumbPos = $thumb ? $thumb.offset() : 0;
            var slidePos = current.$slide.offset();
            var props;
            var start;
            var end;

            if ( !$what || !current.isMoved || !thumbPos || !isElementInViewport( $thumb ) ) {
                return false;
            }

            if ( type === 'In' && !self.firstRun ) {
                return false;
            }

            $.fancybox.stop( $what );

            self.isAnimating = true;

            props = {
                top    : thumbPos.top  - slidePos.top  + parseFloat( $thumb.css( "border-top-width" ) || 0 ),
                left   : thumbPos.left - slidePos.left + parseFloat( $thumb.css( "border-left-width" ) || 0 ),
                width  : $thumb.width(),
                height : $thumb.height(),
                scaleX : 1,
                scaleY : 1
            };

            // Check if we need to animate opacity
            if ( opacity == 'auto' ) {
                opacity = Math.abs( current.width / current.height - props.width / props.height ) > 0.1;
            }

            if ( type === 'In' ) {
                start = props;
                end   = self.getFitPos( current );

                end.scaleX = end.width  / start.width;
                end.scaleY = end.height / start.height;

                if ( opacity ) {
                    start.opacity = 0.1;
                    end.opacity   = 1;
                }

            } else {

                start = $.fancybox.getTranslate( $what );
                end   = props;

                // Switch to thumbnail image to improve animation performance
                if ( current.$ghost ) {
                    current.$ghost.show();

                    if ( current.$image ) {
                        current.$image.remove();
                    }
                }

                start.scaleX = start.width  / end.width;
                start.scaleY = start.height / end.height;

                start.width  = end.width;
                start.height = end.height;

                if ( opacity ) {
                    end.opacity = 0;
                }

            }

            self.updateCursor( end.width, end.height );

            // There is no need to animate width/height properties
            delete end.width;
            delete end.height;

            $.fancybox.setTranslate( $what, start );

            $what.show();

            self.trigger( 'beforeZoom' + type );

            $what.css( 'transition', 'all ' + duration + 'ms' );

            $.fancybox.setTranslate( $what, end );

            setTimeout(function() {
                var reset;

                $what.css( 'transition', 'none' );

                reset = $.fancybox.getTranslate( $what );

                reset.scaleX = 1;
                reset.scaleY = 1;

                // Reset scalex/scaleY values; this helps for perfomance
                $.fancybox.setTranslate( $what, reset );

                self.trigger( 'afterZoom' + type );

                callback.apply( self );

                self.isAnimating = false;

            }, duration);


            return true;

        },

        // Check if image dimensions exceed parent element
        // ===============================================

        canPan : function() {

            var self = this;

            var current = self.current;
            var $what   = current.$placeholder;

            var rez = false;

            if ( $what ) {
                rez = self.getFitPos( current );
                rez = Math.abs( $what.width() - rez.width ) > 1  || Math.abs( $what.height() - rez.height ) > 1;

            }

            return rez;

        },


        // Check if current image dimensions are smaller than actual
        // =========================================================

        isScaledDown : function() {

            var self = this;

            var current = self.current;
            var $what   = current.$placeholder;

            var rez = false;

            if ( $what ) {
                rez = $.fancybox.getTranslate( $what );
                rez = rez.width < current.width || rez.height < current.height;
            }

            return rez;

        },


        // Scale image to the actual size of the image
        // ===========================================

        scaleToActual : function( x, y, duration ) {

            var self = this;

            var current = self.current;
            var $what   = current.$placeholder;

            var imgPos, posX, posY, scaleX, scaleY;

            var canvasWidth  = parseInt( current.$slide.width(), 10 );
            var canvasHeight = parseInt( current.$slide.height(), 10 );

            var newImgWidth  = current.width;
            var newImgHeight = current.height;

            if ( !$what ) {
                return;
            }

            self.isAnimating = true;

            x = x === undefined ? canvasWidth  * 0.5  : x;
            y = y === undefined ? canvasHeight * 0.5  : y;

            imgPos = $.fancybox.getTranslate( $what );

            scaleX  = newImgWidth  / imgPos.width;
            scaleY  = newImgHeight / imgPos.height;

            // Get center position for original image
            posX = ( canvasWidth * 0.5  - newImgWidth * 0.5 );
            posY = ( canvasHeight * 0.5 - newImgHeight * 0.5 );

            // Make sure image does not move away from edges

            if ( newImgWidth > canvasWidth ) {
                posX = imgPos.left * scaleX - ( ( x * scaleX ) - x );

                if ( posX > 0 ) {
                    posX = 0;
                }

                if ( posX <  canvasWidth - newImgWidth ) {
                    posX = canvasWidth - newImgWidth;
                }
            }

            if ( newImgHeight > canvasHeight) {
                posY = imgPos.top  * scaleY - ( ( y * scaleY ) - y );

                if ( posY > 0 ) {
                    posY = 0;
                }

                if ( posY <  canvasHeight - newImgHeight ) {
                    posY = canvasHeight - newImgHeight;
                }
            }

            self.updateCursor( newImgWidth, newImgHeight );

            $.fancybox.animate( $what, null, {
                top    : posY,
                left   : posX,
                scaleX : scaleX,
                scaleY : scaleY
            }, duration || current.opts.speed, function() {
                self.isAnimating = false;
            });

        },


        // Scale image to fit inside parent element
        // ========================================

        scaleToFit : function( duration ) {

            var self = this;

            var current = self.current;
            var $what   = current.$placeholder;
            var end;

            if ( !$what ) {
                return;
            }

            self.isAnimating = true;

            end = self.getFitPos( current );

            self.updateCursor( end.width, end.height );

            $.fancybox.animate( $what, null, {
                top    : end.top,
                left   : end.left,
                scaleX : end.width  / $what.width(),
                scaleY : end.height / $what.height()
            }, duration || current.opts.speed, function() {
                self.isAnimating = false;
            });

        },

        // Calculate image size to fit inside viewport
        // ===========================================

        getFitPos : function( slide ) {
            var $what = slide.$placeholder || slide.$content;

            var imgWidth  = slide.width;
            var imgHeight = slide.height;

            var margin = slide.opts.margin;

            var canvasWidth, canvasHeight, minRatio, top, left, width, height;

            if ( !$what || !$what.length || ( !imgWidth && !imgHeight) ) {
                return false;
            }

            // Convert "margin to CSS style: [ top, right, bottom, left ]
            if ( $.type( margin ) === "number" ) {
                margin = [ margin, margin ];
            }

            if ( margin.length == 2 ) {
                margin = [ margin[0], margin[1], margin[0], margin[1] ];
            }

            if ( $W.width() < 800 ) {
                margin = [0, 0, 0, 0];
            }

            canvasWidth  = parseInt( slide.$slide.width(), 10 )  - ( margin[ 1 ] + margin[ 3 ] );
            canvasHeight = parseInt( slide.$slide.height(), 10 ) - ( margin[ 0 ] + margin[ 2 ] );

            minRatio = Math.min(1, canvasWidth / imgWidth, canvasHeight / imgHeight );

            // Use floor rounding to make sure it really fits

            width  = Math.floor( minRatio * imgWidth );
            height = Math.floor( minRatio * imgHeight );

            top  = Math.floor( ( canvasHeight - height ) * 0.5 ) + margin[ 0 ];
            left = Math.floor( ( canvasWidth  - width )  * 0.5 ) + margin[ 3 ];

            return {
                top    : top,
                left   : left,
                width  : width,
                height : height
            };

        },

        // Move slider to current position
        // Update all slides (and their content)
        // =====================================

        update : function( andSlides, andContent, duration, callback ) {

            var self = this;
            var leftValue;

            if ( self.isAnimating === true || !self.current ) {
                return;
            }

            leftValue = ( self.current.pos * Math.floor( self.current.$slide.width() ) * -1 ) - ( self.current.pos * self.current.opts.gutter );
            duration  = parseInt( duration, 10 ) || 0;

            $.fancybox.stop( self.$refs.slider );

            if ( andSlides === false ) {
                self.updateSlide( self.current, andContent );

            } else {

                $.each( self.slides, function( key, slide ) {
                    self.updateSlide( slide, andContent );
                });

            }

            if ( duration ) {

                $.fancybox.animate( self.$refs.slider, null, {
                    top  : 0,
                    left : leftValue
                }, duration, function() {
                    self.current.isMoved = true;

                    if ( $.type( callback ) === 'function' ) {
                        callback.apply( self );
                    }

                });

            } else {

                $.fancybox.setTranslate( self.$refs.slider, { top : 0, left : leftValue } );

                self.current.isMoved = true;

                if ( $.type( callback ) === 'function' ) {
                    callback.apply( self );
                }

            }

        },


        // Update slide position and scale content to fit
        // ==============================================

        updateSlide : function( slide, andContent ) {

            var self  = this;
            var $what = slide.$placeholder;
            var leftPos;

            slide = slide || self.current;

            if ( !slide || self.isClosing ) {
                return;
            }

            leftPos = ( slide.pos * Math.floor( slide.$slide.width() )  ) + ( slide.pos * slide.opts.gutter);

            if ( leftPos !== slide.leftPos ) {
                $.fancybox.setTranslate( slide.$slide, { top: 0, left : leftPos } );

                slide.leftPos = leftPos;
            }

            if ( andContent !== false && $what ) {
                $.fancybox.setTranslate( $what, self.getFitPos( slide ) );

                if ( slide.pos === self.currPos ) {
                    self.updateCursor();
                }
            }

            slide.$slide.trigger( 'refresh' );

            self.trigger( 'onUpdate', slide );
        },

        // Update cursor style depending if content can be zoomed
        // ======================================================

        updateCursor : function( nextWidth, nextHeight ) {

            var self = this;
            var canScale;

            var $container = self.$refs.container.removeClass('fancybox-controls--canzoomIn fancybox-controls--canzoomOut fancybox-controls--canGrab');

            if ( self.isClosing || !self.opts.touch ) {
                return;
            }

            if ( nextWidth !== undefined && nextHeight !== undefined ) {
                canScale = nextWidth < self.current.width && nextHeight < self.current.height;

            } else {
                canScale = self.isScaledDown();
            }

            if ( canScale ) {
                $container.addClass('fancybox-controls--canzoomIn');

            } else if ( self.group.length < 2 ) {
                $container.addClass('fancybox-controls--canzoomOut');

            } else {
                $container.addClass('fancybox-controls--canGrab');
            }

        },

        // Load content into the slide
        // ===========================

        loadSlide : function( slide ) {

            var self = this, type, $slide;
            var ajaxLoad;

            if ( !slide || slide.isLoaded || slide.isLoading ) {
                return;
            }

            slide.isLoading = true;

            self.trigger( 'beforeLoad', slide );

            type   = slide.type;
            $slide = slide.$slide;

            $slide
                .off( 'refresh' )
                .trigger( 'onReset' )
                .addClass( 'fancybox-slide--' + ( type || 'unknown' ) )
                .addClass( slide.opts.slideClass );

            // Create content depending on the type

            switch ( type ) {

                case 'image':

                    self.setImage( slide );

                break;

                case 'iframe':

                    self.setIframe( slide );

                break;

                case 'html':

                    self.setContent( slide, slide.content );

                break;

                case 'inline':

                    if ( $( slide.src ).length ) {
                        self.setContent( slide, $( slide.src ) );

                    } else {
                        self.setError( slide );
                    }

                break;

                case 'ajax':

                    self.showLoading( slide );

                    ajaxLoad = $.ajax( $.extend( {}, slide.opts.ajax.settings, {

                        url: slide.src,

                        success: function ( data, textStatus ) {

                            if ( textStatus === 'success' ) {
                                self.setContent( slide, data );
                            }

                        },

                        error: function ( jqXHR, textStatus ) {

                            if ( jqXHR && textStatus !== 'abort' ) {
                                self.setError( slide );
                            }

                        }

                    }));

                    $slide.one( 'onReset', function () {
                        ajaxLoad.abort();
                    });

                break;

                default:

                    self.setError( slide );

                break;

            }

            return true;

        },


        // Use thumbnail image, if possible
        // ================================

        setImage : function( slide ) {

            var self   = this;
            var srcset = slide.opts.image.srcset;

            var found, temp, pxRatio, windowWidth;

            if ( slide.isLoaded && !slide.hasError ) {
                self.afterLoad( slide );

                return;
            }

            // If we have "srcset", then we need to find matching "src" value.
            // This is necessary, because when you set an src attribute, the browser will preload the image
            // before any javascript or even CSS is applied.
            if ( srcset ) {
                pxRatio     = window.devicePixelRatio || 1;
                windowWidth = window.innerWidth  * pxRatio;

                temp = srcset.split(',').map(function (el) {
            		var ret = {};

            		el.trim().split(/\s+/).forEach(function (el, i) {
                        var value = parseInt(el.substring(0, el.length - 1), 10);

            			if ( i === 0 ) {
            				return (ret.url = el);
            			}

                        if ( value ) {
                            ret.value   = value;
                            ret.postfix = el[el.length - 1];
                        }

            		});

            		return ret;
            	});

                // Sort by value
                temp.sort(function (a, b) {
                  return a.value - b.value;
                });

                // Ok, now we have an array of all srcset values
                for ( var j = 0; j < temp.length; j++ ) {
                    var el = temp[ j ];

                    if ( ( el.postfix === 'w' && el.value >= windowWidth ) || ( el.postfix === 'x' && el.value >= pxRatio ) ) {
                        found = el;
                        break;
                    }
                }

                // If not found, take the last one
                if ( !found && temp.length ) {
                    found = temp[ temp.length - 1 ];
                }

                if ( found ) {
                    slide.src = found.url;

                    // If we have default width/height values, we can calculate height for matching source
                    if ( slide.width && slide.height && found.postfix == 'w' ) {
                        slide.height = ( slide.width / slide.height ) * found.value;
                        slide.width  = found.value;
                    }
                }
            }

            slide.$placeholder = $('<div class="fancybox-placeholder"></div>')
                .hide()
                .appendTo( slide.$slide );

            if ( slide.opts.preload !== false && slide.opts.width && slide.opts.height && ( slide.opts.thumb || slide.opts.$thumb ) ) {

                slide.width  = slide.opts.width;
                slide.height = slide.opts.height;

                slide.$ghost = $('<img />')
                    .one('load error', function() {

                        if ( self.isClosing ) {
                            return;
                        }

                        // Start preloading full size image
                        $('<img/>')[0].src = slide.src;

                        // zoomIn or just show
                        self.revealImage( slide, function() {

                            self.setBigImage( slide );

                            if ( self.firstRun && slide.index === self.currIndex ) {
                                self.preload();
                            }
                        });

                    })
                    .addClass( 'fancybox-image' )
                    .appendTo( slide.$placeholder )
                    .attr( 'src', slide.opts.thumb || slide.opts.$thumb.attr( 'src' ) );

            } else {

                self.setBigImage( slide );

            }

        },


        // Create full-size image
        // ======================

        setBigImage : function ( slide ) {
            var self = this;
            var $img = $('<img />');

            slide.$image = $img
                .one('error', function() {

                    self.setError( slide );

                })
                .one('load', function() {

                    // Clear timeout that checks if loading icon needs to be displayed
                    clearTimeout( slide.timouts );

                    slide.timouts = null;

                    if ( self.isClosing ) {
                        return;
                    }

                    slide.width  = this.naturalWidth;
                    slide.height = this.naturalHeight;

                    if ( slide.opts.image.srcset ) {
                        $img.attr('sizes', '100vw').attr('srcset', slide.opts.image.srcset);
                    }

                    self.afterLoad( slide );

                    if ( slide.$ghost ) {
                        slide.timouts = setTimeout(function() {
                            slide.$ghost.hide();

                        }, 350);
                    }

                })
                .addClass('fancybox-image')
                .attr('src', slide.src)
                .appendTo( slide.$placeholder );

            if ( $img[0].complete ) {
                  $img.trigger('load');

            } else if( $img[0].error ) {
                 $img.trigger('error');

            } else {

                slide.timouts = setTimeout(function() {
                    if ( !$img[0].complete && !slide.hasError ) {
                        self.showLoading( slide );
                    }

                }, 150);

            }

            if ( slide.opts.image.protect ) {
                $('<div class="fancybox-spaceball"></div>').appendTo( slide.$placeholder ).on('contextmenu.fb',function(e){
                     if ( e.button == 2 ) {
                         e.preventDefault();
                     }

                    return true;
                });
            }

        },

        // Simply show image holder without animation
        // It has been hidden initially to avoid flickering
        // ================================================

        revealImage : function( slide, callback ) {

            var self = this;

            callback = callback || $.noop;

            if ( slide.type !== 'image' || slide.hasError || slide.isRevealed === true ) {

                callback.apply( self );

                return;
            }

            slide.isRevealed = true;

            if ( !( slide.pos === self.currPos && self.zoomInOut( 'In', slide.opts.speed, callback ) ) ) {

                if ( slide.$ghost && !slide.isLoaded ) {
                    self.updateSlide( slide, true );
                }

                if ( slide.pos === self.currPos ) {
                    $.fancybox.animate( slide.$placeholder, { opacity: 0 }, { opacity: 1 }, 300, callback );

                } else {
                    slide.$placeholder.show();
                }

                callback.apply( self );

            }

        },

        // Create iframe wrapper, iframe and bindings
        // ==========================================

        setIframe : function( slide ) {
            var self	= this,
                opts    = slide.opts.iframe,
                $slide	= slide.$slide,
                $iframe;

            slide.$content = $('<div class="fancybox-content"></div>')
                .css( opts.css )
                .appendTo( $slide );

            $iframe = $( opts.tpl.replace(/\{rnd\}/g, new Date().getTime()) )
                .attr('scrolling', $.fancybox.isTouch ? 'auto' : opts.scrolling)
                .appendTo( slide.$content );

            if ( opts.preload ) {
                slide.$content.addClass( 'fancybox-tmp' );

                self.showLoading( slide );

                // Unfortunately, it is not always possible to determine if iframe is successfully loaded
                // (due to browser security policy)

                $iframe.on('load.fb error.fb', function(e) {
                    this.isReady = 1;

                    slide.$slide.trigger( 'refresh' );

                    self.afterLoad( slide );

                });

                // Recalculate iframe content size

                $slide.on('refresh.fb', function() {
                    var $wrap = slide.$content,
                        $contents,
                        $body,
                        scrollWidth,
                        frameWidth,
                        frameHeight;

                    if ( $iframe[0].isReady !== 1 ) {
                        return;
                    }

                    // Check if content is accessible,
                    // it will fail if frame is not with the same origin

                    try {
                        $contents = $iframe.contents();
                        $body     = $contents.find('body');

                    } catch (ignore) {}

                    // Calculate dimensions for the wrapper

                    if ( $body && $body.length && !( opts.css.width !== undefined && opts.css.height !== undefined ) ) {

                        scrollWidth = $iframe[0].contentWindow.document.documentElement.scrollWidth;

                        frameWidth	= Math.ceil( $body.outerWidth(true) + ( $wrap.width() - scrollWidth ) );
                        frameHeight	= Math.ceil( $body.outerHeight(true) );

                        // Resize wrapper to fit iframe content

                        $wrap.css({
                            'width'  : opts.css.width  === undefined ? frameWidth  + ( $wrap.outerWidth()  - $wrap.innerWidth() )  : opts.css.width,
                            'height' : opts.css.height === undefined ? frameHeight + ( $wrap.outerHeight() - $wrap.innerHeight() ) : opts.css.height
                        });

                    }

                    $wrap.removeClass( 'fancybox-tmp' );

                });

            } else {

                this.afterLoad( slide );

            }

            $iframe.attr( 'src', slide.src );

            if ( slide.opts.smallBtn ) {
                slide.$content.prepend( slide.opts.closeTpl );
            }

            // Remove iframe if closing or changing gallery item

            $slide.one('onReset', function () {

                // This helps IE not to throw errors when closing

                try {

                    $(this).find('iframe').hide().attr('src', '//about:blank');

                } catch (ignore) {}

                $(this).empty();

                slide.isLoaded = false;

            });

        },


        // Wrap and append content to the slide
        // ======================================

        setContent : function ( slide, content ) {

            var self = this;

            if ( self.isClosing ) {
                return;
            }

            self.hideLoading( slide );

            slide.$slide.empty();

            if ( isQuery( content ) && content.parent().length ) {

                // If it is a jQuery object, then it will be moved to the box.
                // The placeholder is created so we will know where to put it back.
                // If user is navigating gallery fast, then the content might be already moved to the box

                if ( content.data( 'placeholder' ) ) {
                    content.parents('.fancybox-slide').trigger( 'onReset' );
                }

                content.data({'placeholder' : $('<div></div>' ).hide().insertAfter( content ) }).css('display', 'inline-block');

            } else {

                if ( $.type( content ) === 'string' ) {

                    content = $('<div>').append( content ).contents();

                    if ( content[0].nodeType === 3 ) {
                        content = $('<div>').html( content );
                    }

                }

                if ( slide.opts.selector ) {
                    content = $('<div>').html( content ).find( slide.opts.selector );
                }

            }

            slide.$slide.one('onReset', function () {
                var placeholder = isQuery( content ) ? content.data('placeholder') : 0;

                if ( placeholder ) {
                    content.hide().replaceAll( placeholder );

                    content.data( 'placeholder', null );
                }

                if ( !slide.hasError ) {
                    $(this).empty();

                    slide.isLoaded = false;
                }

            });

            slide.$content = $( content ).appendTo( slide.$slide );

            if ( slide.opts.smallBtn === true ) {
                slide.$content.find( '.fancybox-close-small' ).remove().end().eq(0).append( slide.opts.closeTpl );
            }

            this.afterLoad( slide );

        },

        // Display error message
        // =====================

        setError : function ( slide ) {

            slide.hasError = true;

            this.setContent( slide, slide.opts.errorTpl );

        },


        showLoading : function( slide ) {
            var self = this;

            slide = slide || self.current;

            if ( slide && !slide.$spinner ) {
                slide.$spinner = $( self.opts.spinnerTpl ).appendTo( slide.$slide );
            }

        },

        hideLoading : function( slide ) {

            var self = this;

            slide = slide || self.current;

            if ( slide && slide.$spinner ) {
                slide.$spinner.remove();

                delete slide.$spinner;
            }

        },

        afterMove : function() {

            var self    = this;
            var current = self.current;
            var slides  = {};

            if ( !current ) {
                return;
            }

            current.$slide.siblings().trigger( 'onReset' );

            // Remove unnecessary slides
            $.each( self.slides, function( key, slide ) {

                if (  slide.pos >= self.currPos - 1 && slide.pos <= self.currPos + 1 ) {
                    slides[ slide.pos ] = slide;

                } else if ( slide ) {
                    slide.$slide.remove();
                }

            });

            self.slides = slides;

            self.trigger( 'afterMove' );

            if ( current.isLoaded ) {
                self.complete();
            }

        },

        // Adjustments after slide has been loaded
        // =======================================

        afterLoad : function( slide ) {

            var self = this;

            if ( self.isClosing ) {
                return;
            }

            slide.isLoading = false;
            slide.isLoaded  = true;

            self.trigger( 'afterLoad', slide );

            self.hideLoading( slide );

            // Resize content to fit inside slide
            // Skip if slide has an $ghost element, because then it has been already processed
            if ( !slide.$ghost ) {
                self.updateSlide( slide, true );
            }

            if ( slide.index === self.currIndex && slide.isMoved ) {
                self.complete();

            } else if ( !slide.$ghost ) {
                self.revealImage( slide );
            }

        },


        // Final adjustments after current gallery item is moved to position
        // and it`s content is loaded
        // ==================================================================

        complete : function() {

            var self = this;

            var current = self.current;

            self.revealImage( current, function() {
                current.isComplete = true;

                current.$slide.addClass('fancybox-slide--complete');

                self.updateCursor();

                self.trigger( 'onComplete' );

                // Try to focus on the first focusable element, skip for images and iframes
                if ( current.opts.focus && !( current.type === 'image' || current.type === 'iframe' ) ) {
                    self.focus();
                }

            });

        },


        // Preload next and previous slides
        // ================================

        preload : function() {
            var self = this;
            var next, prev;

            if ( self.group.length < 2 ) {
                return;
            }

            next  = self.slides[ self.currPos + 1 ];
            prev  = self.slides[ self.currPos - 1 ];

            if ( next && next.type === 'image' ) {
                self.loadSlide( next );
            }

            if ( prev && prev.type === 'image' ) {
                self.loadSlide( prev );
            }

        },


        // Try to find and focus on the first focusable element
        // ====================================================

        focus : function() {
            var current = this.current;
            var $el;

            $el = current && current.isComplete ? current.$slide.find('button,:input,[tabindex],a:not(".disabled")').filter(':visible:first') : null;

            if ( !$el || !$el.length ) {
                $el = this.$refs.container;
            }

            $el.focus();

            // Scroll position of wrapper element sometimes changes after focusing (IE)
            this.$refs.slider_wrap.scrollLeft(0);

            // And the same goes for slide element
            if ( current ) {
                current.$slide.scrollTop(0);
            }

        },


        // Activates current instance - brings container to the front and enables keyboard,
        // notifies other instances about deactivating
        // =================================================================================

        activate : function () {
            var self = this;

            // Deactivate all instances

            $( '.fancybox-container' ).each(function () {
                var instance = $(this).data( 'FancyBox' );

                // Skip self and closing instances

                if (instance && instance.uid !== self.uid && !instance.isClosing) {
                    instance.trigger( 'onDeactivate' );
                }

            });

            if ( self.current ) {

                if ( self.$refs.container.index() > 0 ) {
                    self.$refs.container.prependTo( document.body );
                }

                self.updateControls();
            }

            self.trigger( 'onActivate' );

            self.addEvents();

        },


        // Start closing procedure
        // This will start "zoom-out" animation if needed and clean everything up afterwards
        // =================================================================================

        close : function( e ) {

            var self     = this;
            var current  = self.current;
            var duration = current.opts.speed;

            var done = $.proxy(function() {

                self.cleanUp( e );  // Now "this" is again our instance

            }, this);

            if ( self.isAnimating || self.isClosing ) {
                return false;
            }

            // If beforeClose callback prevents closing, make sure content is centered
            if ( self.trigger( 'beforeClose', e ) === false ) {
                $.fancybox.stop( self.$refs.slider );

                requestAFrame(function() {
                    self.update( true, true, 150 );
                });

                return;
            }

            self.isClosing = true;

            if ( current.timouts ) {
                clearTimeout( current.timouts );
            }

            if ( e !== true) {
                $.fancybox.stop( self.$refs.slider );
            }

            self.$refs.container
                .removeClass('fancybox-container--active')
                .addClass('fancybox-container--closing');

            current.$slide
                .removeClass('fancybox-slide--complete')
                .siblings()
                .remove();


            if ( !current.isMoved ) {
                current.$slide.css('overflow', 'visible');
            }

            // Remove all events
            // If there are multiple instances, they will be set again by "activate" method

            self.removeEvents();

            // Clean up

            self.hideLoading( current );

            self.hideControls();

            self.updateCursor();

            self.$refs.bg.css('transition-duration', duration + 'ms');

            this.$refs.container.removeClass( 'fancybox-container--ready' );

            if ( e === true ) {
                setTimeout( done, duration );

            } else if ( !self.zoomInOut( 'Out', duration, done ) ) {
                $.fancybox.animate( self.$refs.container, null, { opacity : 0 }, duration, "easeInSine", done );
            }

        },


        // Final adjustments after removing the instance
        // =============================================

        cleanUp : function( e ) {
            var self = this,
                instance;

            self.$refs.slider.children().trigger( 'onReset' );

            self.$refs.container.empty().remove();

            self.trigger( 'afterClose', e );

            self.current = null;

            // Check if there are other instances
            instance = $.fancybox.getInstance();

            if ( instance ) {
                instance.activate();

            } else {

                $( 'html' ).removeClass( 'fancybox-enabled' );
                $( 'body' ).removeAttr( 'style' );

                $W.scrollTop( self.scrollTop ).scrollLeft( self.scrollLeft );

                $( '#fancybox-noscroll' ).remove();

            }

            // Place back focus
            if ( self.$lastFocus ) {
                self.$lastFocus.focus();
            }

        },


        // Call callback and trigger an event
        // ==================================

        trigger : function( name, slide ) {
            var args  = Array.prototype.slice.call(arguments, 1),
                self  = this,
                obj   = slide && slide.opts ? slide : self.current,
                rez;

            if ( obj ) {
                args.unshift( obj );

            } else {
                obj = self;
            }

            args.unshift( self );

            if ( $.isFunction( obj.opts[ name ] ) ) {
                rez = obj.opts[ name ].apply( obj, args );
            }

            if ( rez === false ) {
                return rez;
            }

            if ( name === 'afterClose' ) {
                $( document ).trigger( name + '.fb', args );

            } else {
                self.$refs.container.trigger( name + '.fb', args );
            }

        },


        // Toggle toolbar and caption
        // ==========================

        toggleControls : function( force ) {

            if ( this.isHiddenControls ) {
                this.updateControls( force );

            } else {
                this.hideControls();
            }


        },


        // Hide toolbar and caption
        // ========================

        hideControls : function () {

            this.isHiddenControls = true;

            this.$refs.container.removeClass('fancybox-show-controls');

            this.$refs.container.removeClass('fancybox-show-caption');

        },


        // Update infobar values, navigation button states and reveal caption
        // ==================================================================

        updateControls : function ( force ) {

            var self = this;

            var $container = self.$refs.container;
            var $caption   = self.$refs.caption;

            // Toggle infobar and buttons

            var current  = self.current;
            var index    = current.index;
            var opts     = current.opts;
            var caption  = opts.caption;

            if ( this.isHiddenControls && force !== true ) {
                return;
            }

            this.isHiddenControls = false;

            $container
                .addClass('fancybox-show-controls')
                .toggleClass('fancybox-show-infobar', !!opts.infobar && self.group.length > 1)
                .toggleClass('fancybox-show-buttons', !!opts.buttons )
                .toggleClass('fancybox-is-modal',     !!opts.modal );

            $('.fancybox-button--left',  $container).toggleClass( 'fancybox-button--disabled', (!opts.loop && index <= 0 ) );
            $('.fancybox-button--right', $container).toggleClass( 'fancybox-button--disabled', (!opts.loop && index >= self.group.length - 1) );

            $('.fancybox-button--play',  $container).toggle( !!( opts.slideShow && self.group.length > 1) );
            $('.fancybox-button--close', $container).toggle( !!opts.closeBtn );

            // Update infobar values

            $('.js-fancybox-count', $container).html( self.group.length );
            $('.js-fancybox-index', $container).html( index + 1 );

            // Recalculate content dimensions
            current.$slide.trigger( 'refresh' );

            // Reveal or create new caption
            if ( $caption ) {
                $caption.empty();
            }

            if ( caption && caption.length ) {
                $caption.html( caption );

                this.$refs.container.addClass( 'fancybox-show-caption ');

                self.$caption = $caption;

            } else {
                this.$refs.container.removeClass( 'fancybox-show-caption' );
            }

        }

    });


    $.fancybox = {

        version  : "3.0.47",
        defaults : defaults,


        // Get current instance and execute a command.
        //
        // Examples of usage:
        //
        //   $instance = $.fancybox.getInstance();
        //   $.fancybox.getInstance().jumpTo( 1 );
        //   $.fancybox.getInstance( 'jumpTo', 1 );
        //   $.fancybox.getInstance( function() {
        //       console.info( this.currIndex );
        //   });
        // ======================================================

        getInstance : function ( command ) {
            var instance = $('.fancybox-container:not(".fancybox-container--closing"):first').data( 'FancyBox' );
            var args     = Array.prototype.slice.call(arguments, 1);

            if ( instance instanceof FancyBox ) {

                if ( $.type( command ) === 'string' ) {
                    instance[ command ].apply( instance, args );

                } else if ( $.type( command ) === 'function' ) {
                    command.apply( instance, args );

                }

                return instance;
            }

            return false;

        },


        // Create new instance
        // ===================

        open : function ( items, opts, index ) {
            return new FancyBox( items, opts, index );
        },


        // Close current or all instances
        // ==============================

        close : function ( all ) {
            var instance = this.getInstance();

            if ( instance ) {
                instance.close();

                // Try to find and close next instance

                if ( all === true ) {
                    this.close();
                }
            }

        },


        // Test for the existence of touch events in the browser
        // Limit to mobile devices
        // ====================================================

        isTouch : document.createTouch !== undefined && /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent),


        // Detect if 'translate3d' support is available
        // ============================================

        use3d : (function() {
            var div = document.createElement('div');

            return window.getComputedStyle( div ).getPropertyValue('transform') && !(document.documentMode && document.documentMode <= 11);
        }()),


        // Helper function to get current visual state of an element
        // returns array[ top, left, horizontal-scale, vertical-scale, opacity ]
        // =====================================================================

        getTranslate : function( $el ) {
            var position, matrix;

            if ( !$el || !$el.length ) {
                return false;
            }

            position = $el.get( 0 ).getBoundingClientRect();
            matrix   = $el.eq( 0 ).css('transform');

            if ( matrix && matrix.indexOf( 'matrix' ) !== -1 ) {
                matrix = matrix.split('(')[1];
                matrix = matrix.split(')')[0];
                matrix = matrix.split(',');
            } else {
                matrix = [];
            }

            if ( matrix.length ) {

                // If IE
                if ( matrix.length > 10 ) {
                    matrix = [ matrix[13], matrix[12], matrix[0], matrix[5] ];

                } else {
                    matrix = [ matrix[5], matrix[4], matrix[0], matrix[3]];
                }

                matrix = matrix.map(parseFloat);

            } else {
                matrix = [ 0, 0, 1, 1 ];
            }

            return {
                top     : matrix[ 0 ],
                left    : matrix[ 1 ],
                scaleX  : matrix[ 2 ],
                scaleY  : matrix[ 3 ],
                opacity : parseFloat( $el.css('opacity') ),
                width   : position.width,
                height  : position.height
            };

        },


        // Shortcut for setting "translate3d" properties for element
        // Can set be used to set opacity, too
        // ========================================================

        setTranslate : function( $el, props ) {
            var str  = '';
            var css  = {};

            if ( !$el || !props ) {
                return;
            }

            if ( props.left !== undefined || props.top !== undefined ) {

                str = ( props.left === undefined ? $el.position().top : props.left )  + 'px, ' + ( props.top === undefined ? $el.position().top : props.top ) + 'px';

                if ( this.use3d ) {
                    str = 'translate3d(' + str + ', 0px)';

                } else {
                    str = 'translate(' + str + ')';
                }

            }

            if ( props.scaleX !== undefined && props.scaleY !== undefined ) {
                str = (str.length ? str + ' ' : '') + 'scale(' + props.scaleX + ', ' + props.scaleY + ')';
            }

            if ( str.length ) {
                css.transform = str;
            }

            if ( props.opacity !== undefined ) {
                css.opacity = props.opacity;
            }

            if ( props.width !== undefined ) {
                css.width = props.width;
            }

            if ( props.height !== undefined ) {
                css.height = props.height;
            }

            return $el.css( css );

        },


        // Common easings for entrances and exits
        // t: current time, b: begInnIng value, c: change In value, d: duration
        // ====================================================================

        easing : {
            easeOutCubic : function (t, b, c, d) {
                return c * ((t=t/d-1)*t*t + 1) + b;
            },
            easeInCubic : function (t, b, c, d) {
                return c * (t/=d)*t*t + b;
            },
            easeOutSine : function (t, b, c, d) {
                return c * Math.sin(t/d * (Math.PI/2)) + b;
            },
            easeInSine : function (t, b, c, d) {
                return -c * Math.cos(t/d * (Math.PI/2)) + c + b;
            }
        },


        // Stop fancyBox animation
        // =======================

        stop : function( $el ) {

            $el.removeData( 'animateID' );

        },

        // Animate element using "translate3d"
        // Usage:
        // animate( element, start properties, end properties, duration, easing, callback )
        // or
        // animate( element, start properties, end properties, duration, callback )
        // =================================================================================

        animate : function( $el, from, to, duration, easing, done ) {

            var self = this;

            var lastTime = null;
            var animTime = 0;

            var curr;
            var diff;
            var id;

            var finish = function() {
                if ( to.scaleX !== undefined && to.scaleY !== undefined && from && from.width !== undefined && from.height !== undefined ) {
                    to.width  = from.width  * to.scaleX;
                    to.height = from.height * to.scaleY;

                    to.scaleX = 1;
                    to.scaleY = 1;
                }

                self.setTranslate( $el, to );

                done();
            };

            var frame = function ( timestamp ) {
                curr = [];
                diff = 0;

                // If "stop" method has been called on this element, then just stop
                if ( !$el.length || $el.data( 'animateID' ) !== id ) {
                    return;
                }

                timestamp = timestamp || Date.now();

                if ( lastTime ) {
                    diff = timestamp - lastTime;
                }

                lastTime = timestamp;
                animTime += diff;

                // Are we done?
                if ( animTime >= duration ) {

                    finish();

                    return;
                }

                for ( var prop in to ) {

                    if ( to.hasOwnProperty( prop ) && from[ prop ] !== undefined ) {

                        if ( from[ prop ] == to[ prop ] ) {
                            curr[ prop ] = to[ prop ];

                        } else {
                            curr[ prop ] = self.easing[ easing ]( animTime, from[ prop ], to[ prop ] - from[ prop ], duration );
                        }

                    }
                }

                self.setTranslate( $el, curr );

                requestAFrame( frame );
            };

            self.animateID = id = self.animateID === undefined ? 1 : self.animateID + 1;

            $el.data( 'animateID', id );

            if ( done === undefined && $.type(easing) == 'function' ) {
                done   = easing;
                easing = undefined;
            }

            if ( !easing ) {
                easing = "easeOutCubic";
            }

            done = done || $.noop;

            if ( from ) {
                this.setTranslate( $el, from );

            } else {

                // We need current values to calculate change in time
                from = this.getTranslate( $el );
            }

            if ( duration ) {
                $el.show();

                requestAFrame( frame );

            } else {
                finish();
            }

        }

    };


    // Event handler for click event to "fancyboxed" links
    // ===================================================

    function _run( e ) {
        var target	= e.currentTarget,
            opts	= e.data ? e.data.options : {},
            items	= e.data ? e.data.items : [],
            value	= '',
            index	= 0;

        e.preventDefault();
        e.stopPropagation();

        // Get all related items and find index for clicked one

        if ( $(target).attr( 'data-fancybox' ) ) {
            value = $(target).data( 'fancybox' );
        }

        if ( value ) {
            items = items.length ? items.filter( '[data-fancybox="' + value + '"]' ) : $( '[data-fancybox=' + value + ']' );
            index = items.index( target );

        } else {
            items = [ target ];
        }

        $.fancybox.open( items, opts, index );
    }


    // Create a jQuery plugin
    // ======================

    $.fn.fancybox = function (options) {

        this.off('click.fb-start').on('click.fb-start', {
            items   : this,
            options : options || {}
        }, _run);

        return this;

    };


    // Self initializing plugin
    // ========================

    $(document).on('click.fb-start', '[data-fancybox]', _run);

}(window, document, window.jQuery));

// ==========================================================================
//
// Media
// Adds additional media type support
//
// ==========================================================================
;(function ($) {

	'use strict';

	// Formats matching url to final form

	var format = function (url, rez, params) {
		if ( !url ) {
			return;
		}

		params = params || '';

		if ( $.type(params) === "object" ) {
			params = $.param(params, true);
		}

		$.each(rez, function (key, value) {
			url = url.replace('$' + key, value || '');
		});

		if (params.length) {
			url += (url.indexOf('?') > 0 ? '&' : '?') + params;
		}

		return url;
	};

	// Object containing properties for each media type

	var media = {
		youtube: {
			matcher: /(youtube\.com|youtu\.be|youtube\-nocookie\.com)\/(watch\?(.*&)?v=|v\/|u\/|embed\/?)?(videoseries\?list=(.*)|[\w-]{11}|\?listType=(.*)&list=(.*))(.*)/i,
			params: {
				autoplay: 1,
				autohide: 1,
				fs: 1,
				rel: 0,
				hd: 1,
				wmode: 'transparent',
				enablejsapi: 1,
				html5: 1
			},
			paramPlace : 8,
			type: 'iframe',
			url: '//www.youtube.com/embed/$4',
			thumb: '//img.youtube.com/vi/$4/hqdefault.jpg'
		},

		vimeo: {
			matcher: /^.+vimeo.com\/(.*\/)?([\d]+)(.*)?/,
			params: {
				autoplay: 1,
				hd: 1,
				show_title: 1,
				show_byline: 1,
				show_portrait: 0,
				fullscreen: 1,
				api: 1
			},
			paramPlace : 3,
			type: 'iframe',
			url: '//player.vimeo.com/video/$2'
		},

		metacafe: {
			matcher: /metacafe.com\/watch\/(\d+)\/(.*)?/,
			type: 'iframe',
			url: '//www.metacafe.com/embed/$1/?ap=1'
		},

		dailymotion: {
			matcher: /dailymotion.com\/video\/(.*)\/?(.*)/,
			params: {
				additionalInfos: 0,
				autoStart: 1
			},
			type: 'iframe',
			url: '//www.dailymotion.com/embed/video/$1'
		},

		vine: {
			matcher: /vine.co\/v\/([a-zA-Z0-9\?\=\-]+)/,
			type: 'iframe',
			url: '//vine.co/v/$1/embed/simple'
		},

		instagram: {
			matcher: /(instagr\.am|instagram\.com)\/p\/([a-zA-Z0-9_\-]+)\/?/i,
			type: 'image',
			url: '//$1/p/$2/media/?size=l'
		},

		// Examples:
		// http://maps.google.com/?ll=48.857995,2.294297&spn=0.007666,0.021136&t=m&z=16
		// http://maps.google.com/?ll=48.857995,2.294297&spn=0.007666,0.021136&t=m&z=16
		// https://www.google.lv/maps/place/Googleplex/@37.4220041,-122.0833494,17z/data=!4m5!3m4!1s0x0:0x6c296c66619367e0!8m2!3d37.4219998!4d-122.0840572
		google_maps: {
			matcher: /(maps\.)?google\.([a-z]{2,3}(\.[a-z]{2})?)\/(((maps\/(place\/(.*)\/)?\@(.*),(\d+.?\d+?)z))|(\?ll=))(.*)?/i,
			type: 'iframe',
			url: function (rez) {
				return '//maps.google.' + rez[2] + '/?ll=' + ( rez[9] ? rez[9] + '&z=' + Math.floor(  rez[10]  ) + ( rez[12] ? rez[12].replace(/^\//, "&") : '' )  : rez[12] ) + '&output=' + ( rez[12] && rez[12].indexOf('layer=c') > 0 ? 'svembed' : 'embed' );
			}
		}
	};

	$(document).on('onInit.fb', function (e, instance) {

		$.each(instance.group, function( i, item ) {

			var url	 = item.src || '',
				type = false,
				thumb,
				rez,
				params,
				urlParams,
				o,
				provider;

			// Skip items that already have content type
			if ( item.type ) {
				return;
			}

			// Look for any matching media type

			$.each(media, function ( n, el ) {
				rez = url.match(el.matcher);
				o   = {};
				provider = n;

				if (!rez) {
					return;
				}

				type = el.type;

				if ( el.paramPlace && rez[ el.paramPlace ] ) {
					urlParams = rez[ el.paramPlace ];

					if ( urlParams[ 0 ] == '?' ) {
						urlParams = urlParams.substring(1);
					}

					urlParams = urlParams.split('&');

					for ( var m = 0; m < urlParams.length; ++m ) {
						var p = urlParams[ m ].split('=', 2);

						if ( p.length == 2 ) {
							o[ p[0] ] = decodeURIComponent( p[1].replace(/\+/g, " ") );
						}
					}
				}

				params = $.extend( true, {}, el.params, item.opts[ n ], o );

				url   = $.type(el.url) === "function" ? el.url.call(this, rez, params, item) : format(el.url, rez, params);
				thumb = $.type(el.thumb) === "function" ? el.thumb.call(this, rez, params, item) : format(el.thumb, rez);

				if ( provider === 'vimeo' ) {
					url = url.replace('&%23', '#');
				}

				return false;
			});

			// If it is found, then change content type and update the url

			if ( type ) {
				item.src  = url;
				item.type = type;

				if ( !item.opts.thumb && !(item.opts.$thumb && item.opts.$thumb.length ) ) {
					item.opts.thumb = thumb;
				}

				if ( type === 'iframe' ) {
					$.extend(true, item.opts, {
						iframe : {
							preload   : false,
							scrolling : "no"
						},
						smallBtn   : false,
						closeBtn   : true,
						fullScreen : false,
						slideShow  : false
					});

					item.opts.slideClass += ' fancybox-slide--video';
				}

			} else {

				// If no content type is found, then set it to `iframe` as fallback
				item.type = 'iframe';

			}

		});

	});

}(window.jQuery));

// ==========================================================================
//
// Guestures
// Adds touch guestures, handles click and tap events
//
// ==========================================================================
;(function (window, document, $) {
	'use strict';

	var requestAFrame = (function() {
		return  window.requestAnimationFrame ||
				window.webkitRequestAnimationFrame ||
				window.mozRequestAnimationFrame ||
				function( callback ) {
					window.setTimeout(callback, 1000 / 60); };
				})();


	var pointers = function( e ) {
		var result = [];

		e = e.originalEvent || e || window.e;
		e = e.touches && e.touches.length ? e.touches : ( e.changedTouches && e.changedTouches.length ? e.changedTouches : [ e ] );

		for ( var key in e ) {

			if ( e[ key ].pageX ) {
				result.push( { x : e[ key ].pageX, y : e[ key ].pageY } );

			} else if ( e[ key ].clientX ) {
				result.push( { x : e[ key ].clientX, y : e[ key ].clientY } );
			}
		}

		return result;
	};

	var distance = function( point2, point1, what ) {

		if ( !point1 || !point2 ) {
			return 0;
		}

		if ( what === 'x' ) {
			return point2.x - point1.x;

		} else if ( what === 'y' ) {
			return point2.y - point1.y;
		}

		return Math.sqrt( Math.pow( point2.x - point1.x, 2 ) + Math.pow( point2.y - point1.y, 2 ) );

	};

	var isClickable = function( $el ) {

	 	return $el.is('a') || $el.is('button') || $el.is('input') || $el.is('select') || $el.is('textarea') || $.isFunction( $el.get(0).onclick );

	};

	var hasScrollbars = function( el ) {
		var overflowY = window.getComputedStyle( el )['overflow-y'];
		var overflowX = window.getComputedStyle( el )['overflow-x'];

		var vertical   = (overflowY === 'scroll' || overflowY === 'auto') && el.scrollHeight > el.clientHeight;
		var horizontal = (overflowX === 'scroll' || overflowX === 'auto') && el.scrollWidth > el.clientWidth;

		return vertical || horizontal;
	};

	var isScrollable = function ( $el ) {

		var rez = false;

		while ( true ) {
			rez	= hasScrollbars( $el.get(0) );

			if ( rez ) {
				break;
			}

			$el = $el.parent();

			if ( !$el.length || $el.hasClass('fancybox-slider') || $el.is('body') ) {
				break;
			}

		}

		return rez;

	};


	var Guestures = function ( instance ) {

		var self = this;

		self.instance = instance;

		self.$wrap       = instance.$refs.slider_wrap;
		self.$slider     = instance.$refs.slider;
		self.$container  = instance.$refs.container;

		self.destroy();

		self.$wrap.on('touchstart.fb mousedown.fb', $.proxy(self, "ontouchstart"));

	};

	Guestures.prototype.destroy = function() {

		this.$wrap.off('touchstart.fb mousedown.fb touchmove.fb mousemove.fb touchend.fb touchcancel.fb mouseup.fb mouseleave.fb');

	};

	Guestures.prototype.ontouchstart = function( e ) {

		var self = this;

		var $target  = $( e.target );
		var instance = self.instance;
		var current  = instance.current;
		var $content = current.$content || current.$placeholder;

		self.startPoints = pointers( e );

		self.$target  = $target;
		self.$content = $content;

		self.canvasWidth  = Math.round( current.$slide[0].clientWidth );
		self.canvasHeight = Math.round( current.$slide[0].clientHeight );

		self.startEvent = e;

		// Skip if clicked on the scrollbar
		if ( e.originalEvent.clientX > self.canvasWidth + current.$slide.offset().left ) {
			return true;
		}

		// Ignore taping on links, buttons and scrollable items
		if ( isClickable( $target ) || isClickable( $target.parent() ) || ( isScrollable( $target ) ) ) {
			return;
		}

		// If "touch" is disabled, then handle click event
		if ( !current.opts.touch ) {
			self.endPoints = self.startPoints;

			return self.ontap();
		}

		// Ignore right click
		if ( e.originalEvent && e.originalEvent.button == 2 ) {
			return;
		}

		e.stopPropagation();
		e.preventDefault();

		if ( !current || self.instance.isAnimating || self.instance.isClosing ) {
			return;
		}

		// Prevent zooming if already swiping
		if ( !self.startPoints || ( self.startPoints.length > 1 && !current.isMoved ) ) {
			return;
		}

		self.$wrap.off('touchmove.fb mousemove.fb',  $.proxy(self, "ontouchmove"));
		self.$wrap.off('touchend.fb touchcancel.fb mouseup.fb mouseleave.fb',  $.proxy(self, "ontouchend"));

		self.$wrap.on('touchend.fb touchcancel.fb mouseup.fb mouseleave.fb',  $.proxy(self, "ontouchend"));
		self.$wrap.on('touchmove.fb mousemove.fb',  $.proxy(self, "ontouchmove"));

		self.startTime = new Date().getTime();
		self.distanceX = self.distanceY = self.distance = 0;

		self.canTap    = false;
		self.isPanning = false;
		self.isSwiping = false;
		self.isZooming = false;

		self.sliderStartPos = $.fancybox.getTranslate( self.$slider );

		self.contentStartPos = $.fancybox.getTranslate( self.$content );
		self.contentLastPos  = null;

		if ( self.startPoints.length === 1 && !self.isZooming ) {
			self.canTap = current.isMoved;

			if ( current.type === 'image' && ( self.contentStartPos.width > self.canvasWidth + 1 || self.contentStartPos.height > self.canvasHeight + 1 ) ) {

				$.fancybox.stop( self.$content );

				self.isPanning = true;

			} else {

				$.fancybox.stop( self.$slider );

				self.isSwiping = true;
			}

			self.$container.addClass('fancybox-controls--isGrabbing');

		}

		if ( self.startPoints.length === 2 && current.isMoved  && !current.hasError && current.type === 'image' && ( current.isLoaded || current.$ghost ) ) {

			self.isZooming = true;

			self.isSwiping = false;
			self.isPanning = false;

			$.fancybox.stop( self.$content );

			self.centerPointStartX = ( ( self.startPoints[0].x + self.startPoints[1].x ) * 0.5 ) - $(window).scrollLeft();
			self.centerPointStartY = ( ( self.startPoints[0].y + self.startPoints[1].y ) * 0.5 ) - $(window).scrollTop();

			self.percentageOfImageAtPinchPointX = ( self.centerPointStartX - self.contentStartPos.left ) / self.contentStartPos.width;
			self.percentageOfImageAtPinchPointY = ( self.centerPointStartY - self.contentStartPos.top  ) / self.contentStartPos.height;

			self.startDistanceBetweenFingers = distance( self.startPoints[0], self.startPoints[1] );
		}

	};

	Guestures.prototype.ontouchmove = function( e ) {

		var self = this;

		e.preventDefault();

		self.newPoints = pointers( e );

		if ( !self.newPoints || !self.newPoints.length ) {
			return;
		}

		self.distanceX = distance( self.newPoints[0], self.startPoints[0], 'x' );
		self.distanceY = distance( self.newPoints[0], self.startPoints[0], 'y' );

		self.distance = distance( self.newPoints[0], self.startPoints[0] );

		// Skip false ontouchmove events (Chrome)
		if ( self.distance > 0 ) {

			if ( self.isSwiping ) {
				self.onSwipe();

			} else if ( self.isPanning ) {
				self.onPan();

			} else if ( self.isZooming ) {
				self.onZoom();
			}

		}

	};

	Guestures.prototype.onSwipe = function() {

		var self = this;

		var swiping = self.isSwiping;
		var left    = self.sliderStartPos.left;
		var angle;

		if ( swiping === true ) {

			if ( Math.abs( self.distance ) > 10 )  {

				if ( self.instance.group.length < 2 ) {
					self.isSwiping  = 'y';

				} else if ( !self.instance.current.isMoved || self.instance.opts.touch.vertical === false || ( self.instance.opts.touch.vertical === 'auto' && $( window ).width() > 800 ) ) {
					self.isSwiping  = 'x';

				} else {
					angle = Math.abs( Math.atan2( self.distanceY, self.distanceX ) * 180 / Math.PI );

					self.isSwiping = ( angle > 45 && angle < 135 ) ? 'y' : 'x';
				}

				self.canTap  = false;

				self.instance.current.isMoved = false;

				// Reset points to avoid jumping, because we dropped first swipes to calculate the angle
				self.startPoints = self.newPoints;
			}

		} else {

			if ( swiping == 'x' ) {

				// Sticky edges
				if ( !self.instance.current.opts.loop && self.instance.current.index === 0  && self.distanceX > 0 ) {
					left = left + Math.pow( self.distanceX, 0.8 );

				} else if ( !self.instance.current.opts.loop &&self.instance.current.index === self.instance.group.length - 1 && self.distanceX < 0 ) {
					left = left - Math.pow( -self.distanceX, 0.8 );

				} else {
					left = left + self.distanceX;
				}

			}

			self.sliderLastPos = {
				top  : swiping == 'x' ? 0 : self.sliderStartPos.top + self.distanceY,
				left : left
			};

			requestAFrame(function() {
				$.fancybox.setTranslate( self.$slider, self.sliderLastPos );
			});
		}

	};

	Guestures.prototype.onPan = function() {

		var self = this;

		var newOffsetX, newOffsetY, newPos;

		self.canTap = false;

		if ( self.contentStartPos.width > self.canvasWidth ) {
			newOffsetX = self.contentStartPos.left + self.distanceX;

		} else {
			newOffsetX = self.contentStartPos.left;
		}

		newOffsetY = self.contentStartPos.top + self.distanceY;

		newPos = self.limitMovement( newOffsetX, newOffsetY, self.contentStartPos.width, self.contentStartPos.height );

		newPos.scaleX = self.contentStartPos.scaleX;
		newPos.scaleY = self.contentStartPos.scaleY;

		self.contentLastPos = newPos;

		requestAFrame(function() {
			$.fancybox.setTranslate( self.$content, self.contentLastPos );
		});
	};

	// Make panning sticky to the edges
	Guestures.prototype.limitMovement = function( newOffsetX, newOffsetY, newWidth, newHeight ) {

		var self = this;

		var minTranslateX, minTranslateY, maxTranslateX, maxTranslateY;

		var canvasWidth  = self.canvasWidth;
		var canvasHeight = self.canvasHeight;

		var currentOffsetX = self.contentStartPos.left;
		var currentOffsetY = self.contentStartPos.top;

		var distanceX = self.distanceX;
		var distanceY = self.distanceY;

		// Slow down proportionally to traveled distance

		minTranslateX = Math.max(0, canvasWidth  * 0.5 - newWidth  * 0.5 );
		minTranslateY = Math.max(0, canvasHeight * 0.5 - newHeight * 0.5 );

		maxTranslateX = Math.min( canvasWidth  - newWidth,  canvasWidth  * 0.5 - newWidth  * 0.5 );
		maxTranslateY = Math.min( canvasHeight - newHeight, canvasHeight * 0.5 - newHeight * 0.5 );

		if ( newWidth > canvasWidth ) {

			//   ->
			if ( distanceX > 0 && newOffsetX > minTranslateX ) {
				newOffsetX = minTranslateX - 1 + Math.pow( -minTranslateX + currentOffsetX + distanceX, 0.8 ) || 0;
			}

			//    <-
			if ( distanceX  < 0 && newOffsetX < maxTranslateX ) {
				newOffsetX = maxTranslateX + 1 - Math.pow( maxTranslateX - currentOffsetX - distanceX, 0.8 ) || 0;
			}

		}

		if ( newHeight > canvasHeight ) {

			//   \/
			if ( distanceY > 0 && newOffsetY > minTranslateY ) {
				newOffsetY = minTranslateY - 1 + Math.pow(-minTranslateY + currentOffsetY + distanceY, 0.8 ) || 0;
			}

			//   /\
			if ( distanceY < 0 && newOffsetY < maxTranslateY ) {
				newOffsetY = maxTranslateY + 1 - Math.pow ( maxTranslateY - currentOffsetY - distanceY, 0.8 ) || 0;
			}

		}

		return {
			top  : newOffsetY,
			left : newOffsetX
		};

	};


	Guestures.prototype.limitPosition = function( newOffsetX, newOffsetY, newWidth, newHeight ) {

		var self = this;

		var canvasWidth  = self.canvasWidth;
		var canvasHeight = self.canvasHeight;

		if ( newWidth > canvasWidth ) {
			newOffsetX = newOffsetX > 0 ? 0 : newOffsetX;
			newOffsetX = newOffsetX < canvasWidth - newWidth ? canvasWidth - newWidth : newOffsetX;

		} else {

			// Center horizontally
			newOffsetX = Math.max( 0, canvasWidth / 2 - newWidth / 2 );

		}

		if ( newHeight > canvasHeight ) {
			newOffsetY = newOffsetY > 0 ? 0 : newOffsetY;
			newOffsetY = newOffsetY < canvasHeight - newHeight ? canvasHeight - newHeight : newOffsetY;

		} else {

			// Center vertically
			newOffsetY = Math.max( 0, canvasHeight / 2 - newHeight / 2 );

		}

		return {
			top  : newOffsetY,
			left : newOffsetX
		};

	};

	Guestures.prototype.onZoom = function() {

		var self = this;

		// Calculate current distance between points to get pinch ratio and new width and height

		var currentWidth  = self.contentStartPos.width;
		var currentHeight = self.contentStartPos.height;

		var currentOffsetX = self.contentStartPos.left;
		var currentOffsetY = self.contentStartPos.top;

		var endDistanceBetweenFingers = distance( self.newPoints[0], self.newPoints[1] );

		var pinchRatio = endDistanceBetweenFingers / self.startDistanceBetweenFingers;

		var newWidth  = Math.floor( currentWidth  * pinchRatio );
		var newHeight = Math.floor( currentHeight * pinchRatio );

		// This is the translation due to pinch-zooming
		var translateFromZoomingX = (currentWidth  - newWidth)  * self.percentageOfImageAtPinchPointX;
		var translateFromZoomingY = (currentHeight - newHeight) * self.percentageOfImageAtPinchPointY;

		//Point between the two touches

		var centerPointEndX = ((self.newPoints[0].x + self.newPoints[1].x) / 2) - $(window).scrollLeft();
		var centerPointEndY = ((self.newPoints[0].y + self.newPoints[1].y) / 2) - $(window).scrollTop();

		// And this is the translation due to translation of the centerpoint
		// between the two fingers

		var translateFromTranslatingX = centerPointEndX - self.centerPointStartX;
		var translateFromTranslatingY = centerPointEndY - self.centerPointStartY;

		// The new offset is the old/current one plus the total translation

		var newOffsetX = currentOffsetX + ( translateFromZoomingX + translateFromTranslatingX );
		var newOffsetY = currentOffsetY + ( translateFromZoomingY + translateFromTranslatingY );

		var newPos = {
			top    : newOffsetY,
			left   : newOffsetX,
			scaleX : self.contentStartPos.scaleX * pinchRatio,
			scaleY : self.contentStartPos.scaleY * pinchRatio
		};

		self.canTap = false;

		self.newWidth  = newWidth;
		self.newHeight = newHeight;

		self.contentLastPos = newPos;

		requestAFrame(function() {
			$.fancybox.setTranslate( self.$content, self.contentLastPos );
		});

	};

	Guestures.prototype.ontouchend = function( e ) {

		var self = this;

		var current = self.instance.current;

		var dMs = Math.max( (new Date().getTime() ) - self.startTime, 1);

		var swiping = self.isSwiping;
		var panning = self.isPanning;
		var zooming = self.isZooming;

		self.endPoints = pointers( e );

		self.$container.removeClass('fancybox-controls--isGrabbing');

		self.$wrap.off('touchmove.fb mousemove.fb',  $.proxy(this, "ontouchmove"));
		self.$wrap.off('touchend.fb touchcancel.fb mouseup.fb mouseleave.fb',  $.proxy(this, "ontouchend"));

		self.isSwiping = false;
		self.isPanning = false;
		self.isZooming = false;

		if ( self.canTap )  {
			return self.ontap();
		}

		// Speed in px/ms
		self.velocityX = self.distanceX / dMs * 0.5;
		self.velocityY = self.distanceY / dMs * 0.5;

		self.speed = current.opts.speed || 330;

		self.speedX = Math.max( self.speed * 0.75, Math.min( self.speed * 1.5, ( 1 / Math.abs( self.velocityX ) ) * self.speed ) );
		self.speedY = Math.max( self.speed * 0.75, Math.min( self.speed * 1.5, ( 1 / Math.abs( self.velocityY ) ) * self.speed ) );

		if ( panning ) {
			self.endPanning();

		} else if ( zooming ) {
			self.endZooming();

		} else {
			self.endSwiping( swiping );
		}

		return;
	};

	Guestures.prototype.endSwiping = function( swiping ) {

		var self = this;

		// Close if swiped vertically / navigate if horizontally

		if ( swiping == 'y' && Math.abs( self.distanceY ) > 50 ) {

			// Continue vertical movement

			$.fancybox.animate( self.$slider, null, {
				top     : self.sliderStartPos.top + self.distanceY + self.velocityY * 150,
				left    : self.sliderStartPos.left,
				opacity : 0
			}, self.speedY );

			self.instance.close( true );

		} else if ( swiping == 'x' && self.distanceX > 50 ) {
			self.instance.previous( self.speedX );

		} else if ( swiping == 'x' && self.distanceX < -50 ) {
			self.instance.next( self.speedX );

		} else {

			// Move back to center
			self.instance.update( false, true, 150 );

		}

	};

	Guestures.prototype.endPanning = function() {

		var self = this;
		var newOffsetX, newOffsetY, newPos;

		if ( !self.contentLastPos ) {
			return;
		}

		newOffsetX = self.contentLastPos.left + ( self.velocityX * self.speed * 2 );
		newOffsetY = self.contentLastPos.top  + ( self.velocityY * self.speed * 2 );

		newPos = self.limitPosition( newOffsetX, newOffsetY, self.contentStartPos.width, self.contentStartPos.height );

		 newPos.width  = self.contentStartPos.width;
		 newPos.height = self.contentStartPos.height;

		$.fancybox.animate( self.$content, null, newPos, self.speed, "easeOutSine" );

	};


	Guestures.prototype.endZooming = function() {

		var self = this;

		var current = self.instance.current;

		var newOffsetX, newOffsetY, newPos, reset;

		var newWidth  = self.newWidth;
		var newHeight = self.newHeight;

		if ( !self.contentLastPos ) {
			return;
		}

		newOffsetX = self.contentLastPos.left;
		newOffsetY = self.contentLastPos.top;

		reset = {
		   	top    : newOffsetY,
		   	left   : newOffsetX,
		   	width  : newWidth,
		   	height : newHeight,
			scaleX : 1,
			scaleY : 1
	   };

	   // Reset scalex/scaleY values; this helps for perfomance and does not break animation
	   $.fancybox.setTranslate( self.$content, reset );

		if ( newWidth < self.canvasWidth && newHeight < self.canvasHeight ) {
			self.instance.scaleToFit( 150 );

		} else if ( newWidth > current.width || newHeight > current.height ) {
			self.instance.scaleToActual( self.centerPointStartX, self.centerPointStartY, 150 );

		} else {

			newPos = self.limitPosition( newOffsetX, newOffsetY, newWidth, newHeight );

			$.fancybox.animate( self.$content, null, newPos, self.speed, "easeOutSine" );

		}

	};

	Guestures.prototype.ontap = function() {

		var self = this;

		var instance = self.instance;
		var current  = instance.current;

		var x = self.endPoints[0].x;
		var y = self.endPoints[0].y;

		x = x - self.$wrap.offset().left;
		y = y - self.$wrap.offset().top;

		// Stop slideshow
		if ( instance.SlideShow && instance.SlideShow.isActive ) {
			instance.SlideShow.stop();
		}

		if ( !$.fancybox.isTouch ) {

			if ( current.opts.closeClickOutside && self.$target.is('.fancybox-slide') ) {
				instance.close( self.startEvent );

				return;
			}

			if ( current.type == 'image' && current.isMoved ) {

				if ( instance.canPan() ) {
					instance.scaleToFit();

				} else if ( instance.isScaledDown() ) {
					instance.scaleToActual( x, y );

				} else if ( instance.group.length < 2 ) {
					instance.close( self.startEvent );
				}

			}

			return;
		}


		// Double tap
		if ( self.tapped ) {

			clearTimeout( self.tapped );

			self.tapped = null;

			if ( Math.abs( x - self.x ) > 50 || Math.abs( y - self.y ) > 50 || !current.isMoved ) {
				return this;
			}

			if ( current.type == 'image' && ( current.isLoaded || current.$ghost ) ) {

				if ( instance.canPan() ) {
					instance.scaleToFit();

				} else if ( instance.isScaledDown() ) {
					instance.scaleToActual( x, y );

				}

			}

		} else {

			// Single tap

			self.x = x;
			self.y = y;

			self.tapped = setTimeout(function() {
				self.tapped = null;

				instance.toggleControls( true );

			}, 300);
		}

		return this;
	};

	$(document).on('onActivate.fb', function (e, instance) {

		if ( instance && !instance.Guestures ) {
			instance.Guestures = new Guestures( instance );
		}

	});

	$(document).on('beforeClose.fb', function (e, instance) {

		if ( instance && instance.Guestures ) {
			instance.Guestures.destroy();
		}

	});


}(window, document, window.jQuery));

// ==========================================================================
//
// SlideShow
// Enables slideshow functionality
//
// Example of usage:
// $.fancybox.getInstance().slideShow.start()
//
// ==========================================================================
;(function (document, $) {
	'use strict';

	var SlideShow = function( instance ) {

		this.instance = instance;

		this.init();

	};

	$.extend( SlideShow.prototype, {
		timer    : null,
		isActive : false,
		$button  : null,
		speed    : 3000,

		init : function() {
			var self = this;

			self.$button = $('<button data-fancybox-play class="fancybox-button fancybox-button--play" title="Slideshow (P)"></button>')
				.appendTo( self.instance.$refs.buttons );

			self.instance.$refs.container.on('click', '[data-fancybox-play]', function() {
				self.toggle();
			});

		},

		set : function() {
			var self = this;

			// Check if reached last element
			if ( self.instance && self.instance.current && (self.instance.current.opts.loop || self.instance.currIndex < self.instance.group.length - 1 )) {

				self.timer = setTimeout(function() {
					self.instance.next();

				}, self.instance.current.opts.slideShow.speed || self.speed);

			} else {
				self.stop();
			}
		},

		clear : function() {
			var self = this;

			clearTimeout( self.timer );

			self.timer = null;
		},

		start : function() {
			var self = this;

			self.stop();

			if ( self.instance && self.instance.current && ( self.instance.current.opts.loop || self.instance.currIndex < self.instance.group.length - 1 )) {

				self.instance.$refs.container.on({
					'beforeLoad.fb.player'	: $.proxy(self, "clear"),
					'onComplete.fb.player'	: $.proxy(self, "set"),
				});

				self.isActive = true;

				if ( self.instance.current.isComplete ) {
					self.set();
				}

				self.instance.$refs.container.trigger('onPlayStart');

				self.$button.addClass('fancybox-button--pause');
			}

		},

		stop: function() {
			var self = this;

			self.clear();

			self.instance.$refs.container
				.trigger('onPlayEnd')
				.off('.player');

			self.$button.removeClass('fancybox-button--pause');

			self.isActive = false;
		},

		toggle : function() {
			var self = this;

			if ( self.isActive ) {
				self.stop();

			} else {
				self.start();
			}
		}

	});

	$(document).on('onInit.fb', function(e, instance) {

		if ( instance && instance.group.length > 1 && !!instance.opts.slideShow && !instance.SlideShow ) {
			instance.SlideShow = new SlideShow( instance );
		}

	});

	$(document).on('beforeClose.fb onDeactivate.fb', function(e, instance) {

		if ( instance && instance.SlideShow ) {
			instance.SlideShow.stop();
		}

	});

}(document, window.jQuery));

// ==========================================================================
//
// FullScreen
// Adds fullscreen functionality
//
// ==========================================================================
;(function (document, $) {
	'use strict';

	// Collection of methods supported by user browser
	var fn = (function () {

		var fnMap = [
			[
				'requestFullscreen',
				'exitFullscreen',
				'fullscreenElement',
				'fullscreenEnabled',
				'fullscreenchange',
				'fullscreenerror'
			],
			// new WebKit
			[
				'webkitRequestFullscreen',
				'webkitExitFullscreen',
				'webkitFullscreenElement',
				'webkitFullscreenEnabled',
				'webkitfullscreenchange',
				'webkitfullscreenerror'

			],
			// old WebKit (Safari 5.1)
			[
				'webkitRequestFullScreen',
				'webkitCancelFullScreen',
				'webkitCurrentFullScreenElement',
				'webkitCancelFullScreen',
				'webkitfullscreenchange',
				'webkitfullscreenerror'

			],
			[
				'mozRequestFullScreen',
				'mozCancelFullScreen',
				'mozFullScreenElement',
				'mozFullScreenEnabled',
				'mozfullscreenchange',
				'mozfullscreenerror'
			],
			[
				'msRequestFullscreen',
				'msExitFullscreen',
				'msFullscreenElement',
				'msFullscreenEnabled',
				'MSFullscreenChange',
				'MSFullscreenError'
			]
		];

		var val;
		var ret = {};
		var i, j;

		for ( i = 0; i < fnMap.length; i++ ) {
			val = fnMap[ i ];

			if ( val && val[ 1 ] in document ) {
				for ( j = 0; j < val.length; j++ ) {
					ret[ fnMap[ 0 ][ j ] ] = val[ j ];
				}

				return ret;
			}
		}

		return false;
	})();

	if ( !fn ) {
		return;
	}

	var FullScreen = {
		request : function ( elem ) {

			elem = elem || document.documentElement;

			elem[ fn.requestFullscreen ]( elem.ALLOW_KEYBOARD_INPUT );

		},
		exit : function () {
			document[ fn.exitFullscreen ]();
		},
		toggle : function ( elem ) {

			if ( this.isFullscreen() ) {
				this.exit();
			} else {
				this.request( elem );
			}

		},
		isFullscreen : function()  {
			return Boolean( document[ fn.fullscreenElement ] );
		},
		enabled : function()  {
			return Boolean( document[ fn.fullscreenEnabled ] );
		}
	};

	$(document).on({
		'onInit.fb' : function(e, instance) {
			var $container;

			if ( instance && !!instance.opts.fullScreen && !instance.FullScreen) {
				$container = instance.$refs.container;

				instance.$refs.button_fs = $('<button data-fancybox-fullscreen class="fancybox-button fancybox-button--fullscreen" title="Full screen (F)"></button>')
					.appendTo( instance.$refs.buttons );

				$container.on('click.fb-fullscreen', '[data-fancybox-fullscreen]', function(e) {

					e.stopPropagation();
					e.preventDefault();

					FullScreen.toggle( $container[ 0 ] );

				});

				if ( instance.opts.fullScreen.requestOnStart === true ) {
					FullScreen.request( $container[ 0 ] );
				}

			}

		}, 'beforeMove.fb' : function(e, instance) {

			if ( instance && instance.$refs.button_fs ) {
				instance.$refs.button_fs.toggle( !!instance.current.opts.fullScreen );
			}

		}, 'beforeClose.fb':  function() {
			FullScreen.exit();
		}
	});

	$(document).on(fn.fullscreenchange, function() {
		var instance = $.fancybox.getInstance();
		var  $what   = instance ? instance.current.$placeholder : null;

		if ( $what ) {

			// If image is zooming, then this will force it to stop and reposition properly
			$what.css( 'transition', 'none' );

			instance.isAnimating = false;

			instance.update( true, true, 0 );
		}

	});

}(document, window.jQuery));

// ==========================================================================
//
// Thumbs
// Displays thumbnails in a grid
//
// ==========================================================================
;(function (document, $) {
	'use strict';

	var FancyThumbs = function( instance ) {

		this.instance = instance;

		this.init();

	};

	$.extend( FancyThumbs.prototype, {

		$button		: null,
		$grid		: null,
		$list		: null,
		isVisible	: false,

		init : function() {
			var self = this;

			self.$button = $('<button data-fancybox-thumbs class="fancybox-button fancybox-button--thumbs" title="Thumbnails (G)"></button>')
				.appendTo( this.instance.$refs.buttons )
				.on('touchend click', function(e) {
					e.stopPropagation();
					e.preventDefault();

					self.toggle();
				});

		},

		create : function() {
			var instance = this.instance,
				list,
				src;

			this.$grid = $('<div class="fancybox-thumbs"></div>').appendTo( instance.$refs.container );

			list = '<ul>';

			$.each(instance.group, function( i, item ) {

				src = item.opts.thumb || ( item.opts.$thumb ? item.opts.$thumb.attr('src') : null );

				if ( !src && item.type === 'image' ) {
					src = item.src;
				}

				if ( src && src.length ) {
					list += '<li data-index="' + i + '"  tabindex="0" class="fancybox-thumbs-loading"><img data-src="' + src + '" /></li>';
				}

			});

			list += '</ul>';

			this.$list = $( list ).appendTo( this.$grid ).on('click touchstart', 'li', function() {

				instance.jumpTo( $(this).data('index') );

			});

			this.$list.find('img').hide().one('load', function() {

				var $parent		= $(this).parent().removeClass('fancybox-thumbs-loading'),
					thumbWidth	= $parent.outerWidth(),
					thumbHeight	= $parent.outerHeight(),
					width,
					height,
					widthRatio,
					heightRatio;

				width  = this.naturalWidth	|| this.width;
				height = this.naturalHeight	|| this.height;

				//Calculate thumbnail width/height and center it

				widthRatio  = width  / thumbWidth;
				heightRatio = height / thumbHeight;

				if (widthRatio >= 1 && heightRatio >= 1) {
					if (widthRatio > heightRatio) {
						width  = width / heightRatio;
						height = thumbHeight;

					} else {
						width  = thumbWidth;
						height = height / widthRatio;
					}
				}

				$(this).css({
					width         : Math.floor(width),
					height        : Math.floor(height),
					'margin-top'  : Math.min( 0, Math.floor(thumbHeight * 0.3 - height * 0.3 ) ),
					'margin-left' : Math.min( 0, Math.floor(thumbWidth  * 0.5 - width  * 0.5 ) )
				}).show();

			})
			.each(function() {
				this.src = $( this ).data( 'src' );
			});

		},

		focus : function() {

			if ( this.instance.current ) {
				this.$list
					.children()
					.removeClass('fancybox-thumbs-active')
					.filter('[data-index="' + this.instance.current.index  + '"]')
					.addClass('fancybox-thumbs-active')
					.focus();
			}

		},

		close : function() {

			this.$grid.hide();

		},

		update : function() {

			this.instance.$refs.container.toggleClass('fancybox-container--thumbs', this.isVisible);

			if ( this.isVisible ) {

				if ( !this.$grid ) {
					this.create();
				}

				this.$grid.show();

				this.focus();

			} else if ( this.$grid ) {
				this.$grid.hide();
			}

			this.instance.update();

		},

		hide : function() {

			this.isVisible = false;

			this.update();

		},

		show : function() {

			this.isVisible = true;

			this.update();

		},

		toggle : function() {

			if ( this.isVisible ) {
				this.hide();

			} else {
				this.show();
			}
		}

	});

	$(document).on('onInit.fb', function(e, instance) {
		var first  = instance.group[0],
			second = instance.group[1];

		if ( !!instance.opts.thumbs && !instance.Thumbs && instance.group.length > 1 && (
		    		( first.type == 'image'  || first.opts.thumb  || first.opts.$thumb ) &&
		    		( second.type == 'image' || second.opts.thumb || second.opts.$thumb )
			 	)
		   ) {

			instance.Thumbs = new FancyThumbs( instance );
		}

	});

	$(document).on('beforeMove.fb', function(e, instance, item) {
		var self = instance && instance.Thumbs;

		if ( !self ) {
			return;
		}

		if ( item.modal ) {

			self.$button.hide();

			self.hide();

		} else {

			if ( instance.opts.thumbs.showOnStart === true && instance.firstRun ) {
				self.show();

			}

			self.$button.show();

			if ( self.isVisible ) {
				self.focus();
			}

		}

	});

	$(document).on('beforeClose.fb', function(e, instance) {

		if ( instance && instance.Thumbs) {
			if ( instance.Thumbs.isVisible && instance.opts.thumbs.hideOnClosing !== false ) {
				instance.Thumbs.close();
			}

			instance.Thumbs = null;
		}

	});

}(document, window.jQuery));

// ==========================================================================
//
// Hash
// Enables linking to each modal
//
// ==========================================================================
;(function (document, window, $) {
	'use strict';

	// Simple $.escapeSelector polyfill (for jQuery prior v3)
	if ( !$.escapeSelector ) {
		$.escapeSelector = function( sel ) {
			var rcssescape = /([\0-\x1f\x7f]|^-?\d)|^-$|[^\x80-\uFFFF\w-]/g;
			var fcssescape = function( ch, asCodePoint ) {
				if ( asCodePoint ) {
					// U+0000 NULL becomes U+FFFD REPLACEMENT CHARACTER
					if ( ch === "\0" ) {
						return "\uFFFD";
					}

					// Control characters and (dependent upon position) numbers get escaped as code points
					return ch.slice( 0, -1 ) + "\\" + ch.charCodeAt( ch.length - 1 ).toString( 16 ) + " ";
				}

				// Other potentially-special ASCII characters get backslash-escaped
				return "\\" + ch;
			};

			return ( sel + "" ).replace( rcssescape, fcssescape );
		};
	}

	// Variable containing last hash value set by fancyBox
	// It will be used to determine if fancyBox needs to close after hash change is detected
    var currentHash = null;

	// Get info about gallery name and current index from url
    function parseUrl() {
        var hash    = window.location.hash.substr( 1 );
        var rez     = hash.split( '-' );
        var index   = rez.length > 1 && /^\+?\d+$/.test( rez[ rez.length - 1 ] ) ? parseInt( rez.pop( -1 ), 10 ) || 1 : 1;
        var gallery = rez.join( '-' );

		// Index is starting from 1
		if ( index < 1 ) {
			index = 1;
		}

        return {
            hash    : hash,
            index   : index,
            gallery : gallery
        };
    }

	// Trigger click evnt on links to open new fancyBox instance
	function triggerFromUrl( url ) {
		var $el;

        if ( url.gallery !== '' ) {

			// If we can find element matching 'data-fancybox' atribute, then trigger click event for that ..
			$el = $( "[data-fancybox='" + $.escapeSelector( url.gallery ) + "']" ).eq( url.index - 1 );

            if ( $el.length ) {
				$el.trigger( 'click' );

			} else {

				// .. if not, try finding element by ID
				$( "#" + $.escapeSelector( url.gallery ) + "" ).trigger( 'click' );

			}

        }
	}

	// Get gallery name from current instance
	function getGallery( instance ) {
		var opts;

		if ( !instance ) {
			return false;
		}

		opts = instance.current ? instance.current.opts : instance.opts;

		return opts.$orig ? opts.$orig.data( 'fancybox' ) : ( opts.hash || '' );
	}

	// Star when DOM becomes ready
    $(function() {

		// Small delay is used to allow other scripts to process "dom ready" event
		setTimeout(function() {

			// Check if this module is not disabled
			if ( $.fancybox.defaults.hash === false ) {
				return;
			}

			// Check if need to close after url has changed
		    $(window).on('hashchange.fb', function() {
		        var url = parseUrl();

				if ( $.fancybox.getInstance() ) {
					if ( currentHash && currentHash !== url.gallery + '-' + url.index )  {
						currentHash = null;

						$.fancybox.close();
					}

				} else if ( url.gallery !== '' ) {
		            triggerFromUrl( url );
		        }

		    });

			// Update hash when opening/closing fancyBox
		    $(document).on({
				'onInit.fb' : function( e, instance ) {
					var url     = parseUrl();
					var gallery = getGallery( instance );

					// Make sure gallery start index matches index from hash
					if ( gallery && url.gallery && gallery == url.gallery ) {
						instance.currIndex = url.index - 1;
					}

				}, 'beforeMove.fb' : function( e, instance, current ) {
		            var gallery = getGallery( instance );

		            // Update window hash
		            if ( gallery && gallery !== '' ) {

						if ( window.location.hash.indexOf( gallery ) < 0 ) {
			                instance.opts.origHash = window.location.hash;
			            }

						currentHash = gallery + ( instance.group.length > 1 ? '-' + ( current.index + 1 ) : '' );

						if ( "pushState" in history ) {
		                    history.pushState( '', document.title, window.location.pathname + window.location.search + '#' +  currentHash );

						} else {
							window.location.hash = currentHash;
						}

		            }

		        }, 'beforeClose.fb' : function( e, instance, current ) {
					var gallery  = getGallery( instance );
					var origHash = instance && instance.opts.origHash ? instance.opts.origHash : '';

		            // Remove hash from location bar
		            if ( gallery && gallery !== '' ) {
		                if ( "pushState" in history ) {
		                    history.pushState( '', document.title, window.location.pathname + window.location.search + origHash );

		                } else {
		                    window.location.hash = origHash;
		                }
		            }

					currentHash = null;
		        }
		    });

			// Check current hash and trigger click event on matching element to start fancyBox, if needed
			triggerFromUrl( parseUrl() );

		}, 50);
    });

    // ==================================================
    // fancyBox v3.0.47
    //
    // Licensed GPLv3 for open source use
    // or fancyBox Commercial License for commercial use
    //
    // http://fancyapps.com/fancybox/
    // Copyright 2017 fancyApps
    //
    // ==================================================
    !function (t, e, n, o) { "use strict"; function s(t) { var e = t.currentTarget, o = t.data ? t.data.options : {}, s = t.data ? t.data.items : [], i = "", a = 0; t.preventDefault(), t.stopPropagation(), n(e).attr("data-fancybox") && (i = n(e).data("fancybox")), i ? (s = s.length ? s.filter('[data-fancybox="' + i + '"]') : n("[data-fancybox=" + i + "]"), a = s.index(e)) : s = [e], n.fancybox.open(s, o, a) } if (!n) return o; var i = { speed: 330, loop: !0, opacity: "auto", margin: [44, 0], gutter: 30, infobar: !0, buttons: !0, slideShow: !0, fullScreen: !0, thumbs: !0, closeBtn: !0, smallBtn: "auto", image: { preload: "auto", protect: !1 }, ajax: { settings: { data: { fancybox: !0 } } }, iframe: { tpl: '<iframe id="fancybox-frame{rnd}" name="fancybox-frame{rnd}" class="fancybox-iframe" frameborder="0" vspace="0" hspace="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen allowtransparency="true" src=""></iframe>', preload: !0, scrolling: "no", css: {} }, baseClass: "", slideClass: "", baseTpl: '<div class="fancybox-container" role="dialog" tabindex="-1"><div class="fancybox-bg"></div><div class="fancybox-controls"><div class="fancybox-infobar"><button data-fancybox-previous class="fancybox-button fancybox-button--left" title="Previous"></button><div class="fancybox-infobar__body"><span class="js-fancybox-index"></span>&nbsp;/&nbsp;<span class="js-fancybox-count"></span></div><button data-fancybox-next class="fancybox-button fancybox-button--right" title="Next"></button></div><div class="fancybox-buttons"><button data-fancybox-close class="fancybox-button fancybox-button--close" title="Close (Esc)"></button></div></div><div class="fancybox-slider-wrap"><div class="fancybox-slider"></div></div><div class="fancybox-caption-wrap"><div class="fancybox-caption"></div></div></div>', spinnerTpl: '<div class="fancybox-loading"></div>', errorTpl: '<div class="fancybox-error"><p>The requested content cannot be loaded. <br /> Please try again later.<p></div>', closeTpl: '<button data-fancybox-close class="fancybox-close-small"></button>', parentEl: "body", touch: !0, keyboard: !0, focus: !0, closeClickOutside: !0, beforeLoad: n.noop, afterLoad: n.noop, beforeMove: n.noop, afterMove: n.noop, onComplete: n.noop, onInit: n.noop, beforeClose: n.noop, afterClose: n.noop, onActivate: n.noop, onDeactivate: n.noop }, a = n(t), r = n(e), c = 0, l = function (t) { return t && t.hasOwnProperty && t instanceof n }, u = function () { return t.requestAnimationFrame || t.webkitRequestAnimationFrame || t.mozRequestAnimationFrame || function (e) { t.setTimeout(e, 1e3 / 60) } }(), d = function (o) { var s; return "function" == typeof n && o instanceof n && (o = o[0]), s = o.getBoundingClientRect(), s.bottom > 0 && s.right > 0 && s.left < (t.innerWidth || e.documentElement.clientWidth) && s.top < (t.innerHeight || e.documentElement.clientHeight) }, p = function (t, o, s) { var a = this; a.opts = n.extend(!0, { index: s }, i, o || {}), a.id = a.opts.id || ++c, a.group = [], a.currIndex = parseInt(a.opts.index, 10) || 0, a.prevIndex = null, a.prevPos = null, a.currPos = 0, a.firstRun = null, a.createGroup(t), a.group.length && (a.$lastFocus = n(e.activeElement).blur(), a.slides = {}, a.init(t)) }; n.extend(p.prototype, { init: function () { var t, e, o = this, s = !1; o.scrollTop = r.scrollTop(), o.scrollLeft = r.scrollLeft(), n.fancybox.getInstance() || (t = n("body").width(), n("html").addClass("fancybox-enabled"), n.fancybox.isTouch ? (n.each(o.group, function (t, e) { if ("image" !== e.type && "iframe" !== e.type) return s = !0, !1 }), s && n("body").css({ position: "fixed", width: t, top: o.scrollTop * -1 })) : (t = n("body").width() - t, t > 1 && n('<style id="fancybox-noscroll" type="text/css">').html(".compensate-for-scrollbar, .fancybox-enabled body { margin-right: " + t + "px; }").appendTo("head"))), e = n(o.opts.baseTpl).attr("id", "fancybox-container-" + o.id).data("FancyBox", o).addClass(o.opts.baseClass).hide().prependTo(o.opts.parentEl), o.$refs = { container: e, bg: e.find(".fancybox-bg"), controls: e.find(".fancybox-controls"), buttons: e.find(".fancybox-buttons"), slider_wrap: e.find(".fancybox-slider-wrap"), slider: e.find(".fancybox-slider"), caption: e.find(".fancybox-caption") }, o.trigger("onInit"), o.activate(), o.current || o.jumpTo(o.currIndex) }, createGroup: function (t) { var e = this, s = n.makeArray(t); n.each(s, function (t, s) { var i, a, r, c, l = {}, u = {}, d = []; n.isPlainObject(s) ? (l = s, u = s.opts || {}) : "object" === n.type(s) && n(s).length ? (i = n(s), d = i.data(), u = "options" in d ? d.options : {}, u = "object" === n.type(u) ? u : {}, l.type = "type" in d ? d.type : u.type, l.src = "src" in d ? d.src : u.src || i.attr("href"), u.width = "width" in d ? d.width : u.width, u.height = "height" in d ? d.height : u.height, u.thumb = "thumb" in d ? d.thumb : u.thumb, u.selector = "selector" in d ? d.selector : u.selector, "srcset" in d && (u.image = { srcset: d.srcset }), u.$orig = i) : l = { type: "html", content: s + "" }, l.opts = n.extend(!0, {}, e.opts, u), a = l.type, r = l.src || "", a || (l.content ? a = "html" : r.match(/(^data:image\/[a-z0-9+\/=]*,)|(\.(jp(e|g|eg)|gif|png|bmp|webp|svg|ico)((\?|#).*)?$)/i) ? a = "image" : r.match(/\.(pdf)((\?|#).*)?$/i) ? a = "pdf" : "#" === r.charAt(0) && (a = "inline"), l.type = a), l.index = e.group.length, l.opts.$orig && !l.opts.$orig.length && delete l.opts.$orig, !l.opts.$thumb && l.opts.$orig && (l.opts.$thumb = l.opts.$orig.find("img:first")), l.opts.$thumb && !l.opts.$thumb.length && delete l.opts.$thumb, "function" === n.type(l.opts.caption) ? l.opts.caption = l.opts.caption.apply(s, [e, l]) : "caption" in d ? l.opts.caption = d.caption : u.$orig && (l.opts.caption = i.attr("title")), l.opts.caption = l.opts.caption === o ? "" : l.opts.caption + "", "ajax" === a && (c = r.split(/\s+/, 2), c.length > 1 && (l.src = c.shift(), l.opts.selector = c.shift())), "auto" == l.opts.smallBtn && (n.inArray(a, ["html", "inline", "ajax"]) > -1 ? (l.opts.buttons = !1, l.opts.smallBtn = !0) : l.opts.smallBtn = !1), "pdf" === a && (l.type = "iframe", l.opts.closeBtn = !0, l.opts.smallBtn = !1, l.opts.iframe.preload = !1), l.opts.modal && n.extend(!0, l.opts, { infobar: 0, buttons: 0, keyboard: 0, slideShow: 0, fullScreen: 0, closeClickOutside: 0 }), e.group.push(l) }) }, addEvents: function () { var e = this; e.removeEvents(), e.$refs.container.on("click.fb-close", "[data-fancybox-close]", function (t) { t.stopPropagation(), t.preventDefault(), e.close(t) }).on("click.fb-previous", "[data-fancybox-previous]", function (t) { t.stopPropagation(), t.preventDefault(), e.previous() }).on("click.fb-next", "[data-fancybox-next]", function (t) { t.stopPropagation(), t.preventDefault(), e.next() }), n(t).on("orientationchange.fb resize.fb", function (t) { u(function () { t && t.originalEvent && "resize" === t.originalEvent.type ? e.update() : (e.$refs.slider_wrap.hide(), u(function () { e.$refs.slider_wrap.show(), e.update() })) }) }), r.on("focusin.fb", function (t) { var o = n.fancybox ? n.fancybox.getInstance() : null; !o || n(t.target).hasClass("fancybox-container") || n.contains(o.$refs.container[0], t.target) || (t.stopPropagation(), o.focus(), a.scrollTop(e.scrollTop).scrollLeft(e.scrollLeft)) }), r.on("keydown.fb", function (t) { var o = e.current, s = t.keyCode || t.which; if (o && o.opts.keyboard && !n(t.target).is("input") && !n(t.target).is("textarea")) { if (8 === s || 27 === s) return t.preventDefault(), void e.close(t); switch (s) { case 37: case 38: t.preventDefault(), e.previous(); break; case 39: case 40: t.preventDefault(), e.next(); break; case 80: case 32: t.preventDefault(), e.SlideShow && (t.preventDefault(), e.SlideShow.toggle()); break; case 70: e.FullScreen && (t.preventDefault(), e.FullScreen.toggle()); break; case 71: e.Thumbs && (t.preventDefault(), e.Thumbs.toggle()) } } }) }, removeEvents: function () { a.off("scroll.fb resize.fb orientationchange.fb"), r.off("keydown.fb focusin.fb click.fb-close"), this.$refs.container.off("click.fb-close click.fb-previous click.fb-next") }, previous: function (t) { this.jumpTo(this.currIndex - 1, t) }, next: function (t) { this.jumpTo(this.currIndex + 1, t) }, jumpTo: function (t, e) { var n, s, i, a, r = this; if (n = r.firstRun = null === r.firstRun, s = i = t = parseInt(t, 10), a = !!r.current && r.current.opts.loop, !r.isAnimating && (s != r.currIndex || n)) { if (r.group.length > 1 && a) s %= r.group.length, s = s < 0 ? r.group.length + s : s, 2 == r.group.length ? i = t - r.currIndex + r.currPos : (i = s - r.currIndex + r.currPos, Math.abs(r.currPos - (i + r.group.length)) < Math.abs(r.currPos - i) ? i += r.group.length : Math.abs(r.currPos - (i - r.group.length)) < Math.abs(r.currPos - i) && (i -= r.group.length)); else if (!r.group[s]) return void r.update(!1, !1, e); r.current && (r.current.$slide.removeClass("fancybox-slide--current fancybox-slide--complete"), r.updateSlide(r.current, !0)), r.prevIndex = r.currIndex, r.prevPos = r.currPos, r.currIndex = s, r.currPos = i, r.current = r.createSlide(i), r.group.length > 1 && ((r.opts.loop || i - 1 >= 0) && r.createSlide(i - 1), (r.opts.loop || i + 1 < r.group.length) && r.createSlide(i + 1)), r.current.isMoved = !1, r.current.isComplete = !1, e = parseInt(e === o ? 1.5 * r.current.opts.speed : e, 10), r.trigger("beforeMove"), r.updateControls(), n && (r.current.$slide.addClass("fancybox-slide--current"), r.$refs.container.show(), u(function () { r.$refs.bg.css("transition-duration", r.current.opts.speed + "ms"), r.$refs.container.addClass("fancybox-container--ready") })), r.update(!0, !1, n ? 0 : e, function () { r.afterMove() }), r.loadSlide(r.current), n && r.current.$ghost || r.preload() } }, createSlide: function (t) { var e, o, s, i = this; if (o = t % i.group.length, o = o < 0 ? i.group.length + o : o, !i.slides[t] && i.group[o]) { if (i.opts.loop && i.group.length > 2) for (var a in i.slides) if (i.slides[a].index === o) return s = i.slides[a], s.pos = t, i.slides[t] = s, delete i.slides[a], i.updateSlide(s), s; e = n('<div class="fancybox-slide"></div>').appendTo(i.$refs.slider), i.slides[t] = n.extend(!0, {}, i.group[o], { pos: t, $slide: e, isMoved: !1, isLoaded: !1 }) } return i.slides[t] }, zoomInOut: function (t, e, o) { var s, i, a, r = this, c = r.current, l = c.$placeholder, u = c.opts.opacity, p = c.opts.$thumb, h = p ? p.offset() : 0, f = c.$slide.offset(); return !!(l && c.isMoved && h && d(p)) && (!("In" === t && !r.firstRun) && (n.fancybox.stop(l), r.isAnimating = !0, s = { top: h.top - f.top + parseFloat(p.css("border-top-width") || 0), left: h.left - f.left + parseFloat(p.css("border-left-width") || 0), width: p.width(), height: p.height(), scaleX: 1, scaleY: 1 }, "auto" == u && (u = Math.abs(c.width / c.height - s.width / s.height) > .1), "In" === t ? (i = s, a = r.getFitPos(c), a.scaleX = a.width / i.width, a.scaleY = a.height / i.height, u && (i.opacity = .1, a.opacity = 1)) : (i = n.fancybox.getTranslate(l), a = s, c.$ghost && (c.$ghost.show(), c.$image && c.$image.remove()), i.scaleX = i.width / a.width, i.scaleY = i.height / a.height, i.width = a.width, i.height = a.height, u && (a.opacity = 0)), r.updateCursor(a.width, a.height), delete a.width, delete a.height, n.fancybox.setTranslate(l, i), l.show(), r.trigger("beforeZoom" + t), l.css("transition", "all " + e + "ms"), n.fancybox.setTranslate(l, a), setTimeout(function () { var e; l.css("transition", "none"), e = n.fancybox.getTranslate(l), e.scaleX = 1, e.scaleY = 1, n.fancybox.setTranslate(l, e), r.trigger("afterZoom" + t), o.apply(r), r.isAnimating = !1 }, e), !0)) }, canPan: function () { var t = this, e = t.current, n = e.$placeholder, o = !1; return n && (o = t.getFitPos(e), o = Math.abs(n.width() - o.width) > 1 || Math.abs(n.height() - o.height) > 1), o }, isScaledDown: function () { var t = this, e = t.current, o = e.$placeholder, s = !1; return o && (s = n.fancybox.getTranslate(o), s = s.width < e.width || s.height < e.height), s }, scaleToActual: function (t, e, s) { var i, a, r, c, l, u = this, d = u.current, p = d.$placeholder, h = parseInt(d.$slide.width(), 10), f = parseInt(d.$slide.height(), 10), g = d.width, b = d.height; p && (u.isAnimating = !0, t = t === o ? .5 * h : t, e = e === o ? .5 * f : e, i = n.fancybox.getTranslate(p), c = g / i.width, l = b / i.height, a = .5 * h - .5 * g, r = .5 * f - .5 * b, g > h && (a = i.left * c - (t * c - t), a > 0 && (a = 0), a < h - g && (a = h - g)), b > f && (r = i.top * l - (e * l - e), r > 0 && (r = 0), r < f - b && (r = f - b)), u.updateCursor(g, b), n.fancybox.animate(p, null, { top: r, left: a, scaleX: c, scaleY: l }, s || d.opts.speed, function () { u.isAnimating = !1 })) }, scaleToFit: function (t) { var e, o = this, s = o.current, i = s.$placeholder; i && (o.isAnimating = !0, e = o.getFitPos(s), o.updateCursor(e.width, e.height), n.fancybox.animate(i, null, { top: e.top, left: e.left, scaleX: e.width / i.width(), scaleY: e.height / i.height() }, t || s.opts.speed, function () { o.isAnimating = !1 })) }, getFitPos: function (t) { var e, o, s, i, r, c, l, u = t.$placeholder || t.$content, d = t.width, p = t.height, h = t.opts.margin; return !(!u || !u.length || !d && !p) && ("number" === n.type(h) && (h = [h, h]), 2 == h.length && (h = [h[0], h[1], h[0], h[1]]), a.width() < 800 && (h = [0, 0, 0, 0]), e = parseInt(t.$slide.width(), 10) - (h[1] + h[3]), o = parseInt(t.$slide.height(), 10) - (h[0] + h[2]), s = Math.min(1, e / d, o / p), c = Math.floor(s * d), l = Math.floor(s * p), i = Math.floor(.5 * (o - l)) + h[0], r = Math.floor(.5 * (e - c)) + h[3], { top: i, left: r, width: c, height: l }) }, update: function (t, e, o, s) { var i, a = this; a.isAnimating !== !0 && a.current && (i = a.current.pos * Math.floor(a.current.$slide.width()) * -1 - a.current.pos * a.current.opts.gutter, o = parseInt(o, 10) || 0, n.fancybox.stop(a.$refs.slider), t === !1 ? a.updateSlide(a.current, e) : n.each(a.slides, function (t, n) { a.updateSlide(n, e) }), o ? n.fancybox.animate(a.$refs.slider, null, { top: 0, left: i }, o, function () { a.current.isMoved = !0, "function" === n.type(s) && s.apply(a) }) : (n.fancybox.setTranslate(a.$refs.slider, { top: 0, left: i }), a.current.isMoved = !0, "function" === n.type(s) && s.apply(a))) }, updateSlide: function (t, e) { var o, s = this, i = t.$placeholder; t = t || s.current, t && !s.isClosing && (o = t.pos * Math.floor(t.$slide.width()) + t.pos * t.opts.gutter, o !== t.leftPos && (n.fancybox.setTranslate(t.$slide, { top: 0, left: o }), t.leftPos = o), e !== !1 && i && (n.fancybox.setTranslate(i, s.getFitPos(t)), t.pos === s.currPos && s.updateCursor()), t.$slide.trigger("refresh"), s.trigger("onUpdate", t)) }, updateCursor: function (t, e) { var n, s = this, i = s.$refs.container.removeClass("fancybox-controls--canzoomIn fancybox-controls--canzoomOut fancybox-controls--canGrab"); !s.isClosing && s.opts.touch && (n = t !== o && e !== o ? t < s.current.width && e < s.current.height : s.isScaledDown(), n ? i.addClass("fancybox-controls--canzoomIn") : s.group.length < 2 ? i.addClass("fancybox-controls--canzoomOut") : i.addClass("fancybox-controls--canGrab")) }, loadSlide: function (t) { var e, o, s, i = this; if (t && !t.isLoaded && !t.isLoading) { switch (t.isLoading = !0, i.trigger("beforeLoad", t), e = t.type, o = t.$slide, o.off("refresh").trigger("onReset").addClass("fancybox-slide--" + (e || "unknown")).addClass(t.opts.slideClass), e) { case "image": i.setImage(t); break; case "iframe": i.setIframe(t); break; case "html": i.setContent(t, t.content); break; case "inline": n(t.src).length ? i.setContent(t, n(t.src)) : i.setError(t); break; case "ajax": i.showLoading(t), s = n.ajax(n.extend({}, t.opts.ajax.settings, { url: t.src, success: function (e, n) { "success" === n && i.setContent(t, e) }, error: function (e, n) { e && "abort" !== n && i.setError(t) } })), o.one("onReset", function () { s.abort() }); break; default: i.setError(t) }return !0 } }, setImage: function (e) { var o, s, i, a, r = this, c = e.opts.image.srcset; if (e.isLoaded && !e.hasError) return void r.afterLoad(e); if (c) { i = t.devicePixelRatio || 1, a = t.innerWidth * i, s = c.split(",").map(function (t) { var e = {}; return t.trim().split(/\s+/).forEach(function (t, n) { var o = parseInt(t.substring(0, t.length - 1), 10); return 0 === n ? e.url = t : void (o && (e.value = o, e.postfix = t[t.length - 1])) }), e }), s.sort(function (t, e) { return t.value - e.value }); for (var l = 0; l < s.length; l++) { var u = s[l]; if ("w" === u.postfix && u.value >= a || "x" === u.postfix && u.value >= i) { o = u; break } } !o && s.length && (o = s[s.length - 1]), o && (e.src = o.url, e.width && e.height && "w" == o.postfix && (e.height = e.width / e.height * o.value, e.width = o.value)) } e.$placeholder = n('<div class="fancybox-placeholder"></div>').hide().appendTo(e.$slide), e.opts.preload !== !1 && e.opts.width && e.opts.height && (e.opts.thumb || e.opts.$thumb) ? (e.width = e.opts.width, e.height = e.opts.height, e.$ghost = n("<img />").one("load error", function () { r.isClosing || (n("<img/>")[0].src = e.src, r.revealImage(e, function () { r.setBigImage(e), r.firstRun && e.index === r.currIndex && r.preload() })) }).addClass("fancybox-image").appendTo(e.$placeholder).attr("src", e.opts.thumb || e.opts.$thumb.attr("src"))) : r.setBigImage(e) }, setBigImage: function (t) { var e = this, o = n("<img />"); t.$image = o.one("error", function () { e.setError(t) }).one("load", function () { clearTimeout(t.timouts), t.timouts = null, e.isClosing || (t.width = this.naturalWidth, t.height = this.naturalHeight, t.opts.image.srcset && o.attr("sizes", "100vw").attr("srcset", t.opts.image.srcset), e.afterLoad(t), t.$ghost && (t.timouts = setTimeout(function () { t.$ghost.hide() }, 350))) }).addClass("fancybox-image").attr("src", t.src).appendTo(t.$placeholder), o[0].complete ? o.trigger("load") : o[0].error ? o.trigger("error") : t.timouts = setTimeout(function () { o[0].complete || t.hasError || e.showLoading(t) }, 150), t.opts.image.protect && n('<div class="fancybox-spaceball"></div>').appendTo(t.$placeholder).on("contextmenu.fb", function (t) { return 2 == t.button && t.preventDefault(), !0 }) }, revealImage: function (t, e) { var o = this; return e = e || n.noop, "image" !== t.type || t.hasError || t.isRevealed === !0 ? void e.apply(o) : (t.isRevealed = !0, void (t.pos === o.currPos && o.zoomInOut("In", t.opts.speed, e) || (t.$ghost && !t.isLoaded && o.updateSlide(t, !0), t.pos === o.currPos ? n.fancybox.animate(t.$placeholder, { opacity: 0 }, { opacity: 1 }, 300, e) : t.$placeholder.show(), e.apply(o)))) }, setIframe: function (t) { var e, s = this, i = t.opts.iframe, a = t.$slide; t.$content = n('<div class="fancybox-content"></div>').css(i.css).appendTo(a), e = n(i.tpl.replace(/\{rnd\}/g, (new Date).getTime())).attr("scrolling", n.fancybox.isTouch ? "auto" : i.scrolling).appendTo(t.$content), i.preload ? (t.$content.addClass("fancybox-tmp"), s.showLoading(t), e.on("load.fb error.fb", function (e) { this.isReady = 1, t.$slide.trigger("refresh"), s.afterLoad(t) }), a.on("refresh.fb", function () { var n, s, a, r, c, l = t.$content; if (1 === e[0].isReady) { try { n = e.contents(), s = n.find("body") } catch (t) { } s && s.length && (i.css.width === o || i.css.height === o) && (a = e[0].contentWindow.document.documentElement.scrollWidth, r = Math.ceil(s.outerWidth(!0) + (l.width() - a)), c = Math.ceil(s.outerHeight(!0)), l.css({ width: i.css.width === o ? r + (l.outerWidth() - l.innerWidth()) : i.css.width, height: i.css.height === o ? c + (l.outerHeight() - l.innerHeight()) : i.css.height })), l.removeClass("fancybox-tmp") } })) : this.afterLoad(t), e.attr("src", t.src), t.opts.smallBtn && t.$content.prepend(t.opts.closeTpl), a.one("onReset", function () { try { n(this).find("iframe").hide().attr("src", "//about:blank") } catch (t) { } n(this).empty(), t.isLoaded = !1 }) }, setContent: function (t, e) { var o = this; o.isClosing || (o.hideLoading(t), t.$slide.empty(), l(e) && e.parent().length ? (e.data("placeholder") && e.parents(".fancybox-slide").trigger("onReset"), e.data({ placeholder: n("<div></div>").hide().insertAfter(e) }).css("display", "inline-block")) : ("string" === n.type(e) && (e = n("<div>").append(e).contents(), 3 === e[0].nodeType && (e = n("<div>").html(e))), t.opts.selector && (e = n("<div>").html(e).find(t.opts.selector))), t.$slide.one("onReset", function () { var o = l(e) ? e.data("placeholder") : 0; o && (e.hide().replaceAll(o), e.data("placeholder", null)), t.hasError || (n(this).empty(), t.isLoaded = !1) }), t.$content = n(e).appendTo(t.$slide), t.opts.smallBtn === !0 && t.$content.find(".fancybox-close-small").remove().end().eq(0).append(t.opts.closeTpl), this.afterLoad(t)) }, setError: function (t) { t.hasError = !0, this.setContent(t, t.opts.errorTpl) }, showLoading: function (t) { var e = this; t = t || e.current, t && !t.$spinner && (t.$spinner = n(e.opts.spinnerTpl).appendTo(t.$slide)) }, hideLoading: function (t) { var e = this; t = t || e.current, t && t.$spinner && (t.$spinner.remove(), delete t.$spinner) }, afterMove: function () { var t = this, e = t.current, o = {}; e && (e.$slide.siblings().trigger("onReset"), n.each(t.slides, function (e, n) { n.pos >= t.currPos - 1 && n.pos <= t.currPos + 1 ? o[n.pos] = n : n && n.$slide.remove() }), t.slides = o, t.trigger("afterMove"), e.isLoaded && t.complete()) }, afterLoad: function (t) { var e = this; e.isClosing || (t.isLoading = !1, t.isLoaded = !0, e.trigger("afterLoad", t), e.hideLoading(t), t.$ghost || e.updateSlide(t, !0), t.index === e.currIndex && t.isMoved ? e.complete() : t.$ghost || e.revealImage(t)) }, complete: function () { var t = this, e = t.current; t.revealImage(e, function () { e.isComplete = !0, e.$slide.addClass("fancybox-slide--complete"), t.updateCursor(), t.trigger("onComplete"), e.opts.focus && "image" !== e.type && "iframe" !== e.type && t.focus() }) }, preload: function () { var t, e, n = this; n.group.length < 2 || (t = n.slides[n.currPos + 1], e = n.slides[n.currPos - 1], t && "image" === t.type && n.loadSlide(t), e && "image" === e.type && n.loadSlide(e)) }, focus: function () { var t, e = this.current; t = e && e.isComplete ? e.$slide.find('button,:input,[tabindex],a:not(".disabled")').filter(":visible:first") : null, t && t.length || (t = this.$refs.container), t.focus(), this.$refs.slider_wrap.scrollLeft(0), e && e.$slide.scrollTop(0) }, activate: function () { var t = this; n(".fancybox-container").each(function () { var e = n(this).data("FancyBox"); e && e.uid !== t.uid && !e.isClosing && e.trigger("onDeactivate") }), t.current && (t.$refs.container.index() > 0 && t.$refs.container.prependTo(e.body), t.updateControls()), t.trigger("onActivate"), t.addEvents() }, close: function (t) { var e = this, o = e.current, s = o.opts.speed, i = n.proxy(function () { e.cleanUp(t) }, this); return !e.isAnimating && !e.isClosing && (e.trigger("beforeClose", t) === !1 ? (n.fancybox.stop(e.$refs.slider), void u(function () { e.update(!0, !0, 150) })) : (e.isClosing = !0, o.timouts && clearTimeout(o.timouts), t !== !0 && n.fancybox.stop(e.$refs.slider), e.$refs.container.removeClass("fancybox-container--active").addClass("fancybox-container--closing"), o.$slide.removeClass("fancybox-slide--complete").siblings().remove(), o.isMoved || o.$slide.css("overflow", "visible"), e.removeEvents(), e.hideLoading(o), e.hideControls(), e.updateCursor(), e.$refs.bg.css("transition-duration", s + "ms"), this.$refs.container.removeClass("fancybox-container--ready"), void (t === !0 ? setTimeout(i, s) : e.zoomInOut("Out", s, i) || n.fancybox.animate(e.$refs.container, null, { opacity: 0 }, s, "easeInSine", i)))) }, cleanUp: function (t) { var e, o = this; o.$refs.slider.children().trigger("onReset"), o.$refs.container.empty().remove(), o.trigger("afterClose", t), o.current = null, e = n.fancybox.getInstance(), e ? e.activate() : (n("html").removeClass("fancybox-enabled"), n("body").removeAttr("style"), a.scrollTop(o.scrollTop).scrollLeft(o.scrollLeft), n("#fancybox-noscroll").remove()), o.$lastFocus && o.$lastFocus.focus() }, trigger: function (t, o) { var s, i = Array.prototype.slice.call(arguments, 1), a = this, r = o && o.opts ? o : a.current; return r ? i.unshift(r) : r = a, i.unshift(a), n.isFunction(r.opts[t]) && (s = r.opts[t].apply(r, i)), s === !1 ? s : void ("afterClose" === t ? n(e).trigger(t + ".fb", i) : a.$refs.container.trigger(t + ".fb", i)) }, toggleControls: function (t) { this.isHiddenControls ? this.updateControls(t) : this.hideControls() }, hideControls: function () { this.isHiddenControls = !0, this.$refs.container.removeClass("fancybox-show-controls"), this.$refs.container.removeClass("fancybox-show-caption") }, updateControls: function (t) { var e = this, o = e.$refs.container, s = e.$refs.caption, i = e.current, a = i.index, r = i.opts, c = r.caption; this.isHiddenControls && t !== !0 || (this.isHiddenControls = !1, o.addClass("fancybox-show-controls").toggleClass("fancybox-show-infobar", !!r.infobar && e.group.length > 1).toggleClass("fancybox-show-buttons", !!r.buttons).toggleClass("fancybox-is-modal", !!r.modal), n(".fancybox-button--left", o).toggleClass("fancybox-button--disabled", !r.loop && a <= 0), n(".fancybox-button--right", o).toggleClass("fancybox-button--disabled", !r.loop && a >= e.group.length - 1), n(".fancybox-button--play", o).toggle(!!(r.slideShow && e.group.length > 1)), n(".fancybox-button--close", o).toggle(!!r.closeBtn), n(".js-fancybox-count", o).html(e.group.length), n(".js-fancybox-index", o).html(a + 1), i.$slide.trigger("refresh"), s && s.empty(), c && c.length ? (s.html(c), this.$refs.container.addClass("fancybox-show-caption "), e.$caption = s) : this.$refs.container.removeClass("fancybox-show-caption")) } }), n.fancybox = { version: "3.0.47", defaults: i, getInstance: function (t) { var e = n('.fancybox-container:not(".fancybox-container--closing"):first').data("FancyBox"), o = Array.prototype.slice.call(arguments, 1); return e instanceof p && ("string" === n.type(t) ? e[t].apply(e, o) : "function" === n.type(t) && t.apply(e, o), e) }, open: function (t, e, n) { return new p(t, e, n) }, close: function (t) { var e = this.getInstance(); e && (e.close(), t === !0 && this.close()) }, isTouch: e.createTouch !== o && /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent), use3d: function () { var n = e.createElement("div"); return t.getComputedStyle(n).getPropertyValue("transform") && !(e.documentMode && e.documentMode <= 11) }(), getTranslate: function (t) { var e, n; return !(!t || !t.length) && (e = t.get(0).getBoundingClientRect(), n = t.eq(0).css("transform"), n && n.indexOf("matrix") !== -1 ? (n = n.split("(")[1], n = n.split(")")[0], n = n.split(",")) : n = [], n.length ? (n = n.length > 10 ? [n[13], n[12], n[0], n[5]] : [n[5], n[4], n[0], n[3]], n = n.map(parseFloat)) : n = [0, 0, 1, 1], { top: n[0], left: n[1], scaleX: n[2], scaleY: n[3], opacity: parseFloat(t.css("opacity")), width: e.width, height: e.height }) }, setTranslate: function (t, e) { var n = "", s = {}; if (t && e) return e.left === o && e.top === o || (n = (e.left === o ? t.position().top : e.left) + "px, " + (e.top === o ? t.position().top : e.top) + "px", n = this.use3d ? "translate3d(" + n + ", 0px)" : "translate(" + n + ")"), e.scaleX !== o && e.scaleY !== o && (n = (n.length ? n + " " : "") + "scale(" + e.scaleX + ", " + e.scaleY + ")"), n.length && (s.transform = n), e.opacity !== o && (s.opacity = e.opacity), e.width !== o && (s.width = e.width), e.height !== o && (s.height = e.height), t.css(s) }, easing: { easeOutCubic: function (t, e, n, o) { return n * ((t = t / o - 1) * t * t + 1) + e }, easeInCubic: function (t, e, n, o) { return n * (t /= o) * t * t + e }, easeOutSine: function (t, e, n, o) { return n * Math.sin(t / o * (Math.PI / 2)) + e }, easeInSine: function (t, e, n, o) { return -n * Math.cos(t / o * (Math.PI / 2)) + n + e } }, stop: function (t) { t.removeData("animateID") }, animate: function (t, e, s, i, a, r) { var c, l, d, p = this, h = null, f = 0, g = function () { s.scaleX !== o && s.scaleY !== o && e && e.width !== o && e.height !== o && (s.width = e.width * s.scaleX, s.height = e.height * s.scaleY, s.scaleX = 1, s.scaleY = 1), p.setTranslate(t, s), r() }, b = function (n) { if (c = [], l = 0, t.length && t.data("animateID") === d) { if (n = n || Date.now(), h && (l = n - h), h = n, f += l, f >= i) return void g(); for (var r in s) s.hasOwnProperty(r) && e[r] !== o && (e[r] == s[r] ? c[r] = s[r] : c[r] = p.easing[a](f, e[r], s[r] - e[r], i)); p.setTranslate(t, c), u(b) } }; p.animateID = d = p.animateID === o ? 1 : p.animateID + 1, t.data("animateID", d), r === o && "function" == n.type(a) && (r = a, a = o), a || (a = "easeOutCubic"), r = r || n.noop, e ? this.setTranslate(t, e) : e = this.getTranslate(t), i ? (t.show(), u(b)) : g() } }, n.fn.fancybox = function (t) { return this.off("click.fb-start").on("click.fb-start", { items: this, options: t || {} }, s), this }, n(e).on("click.fb-start", "[data-fancybox]", s) }(window, document, window.jQuery), function (t) { "use strict"; var e = function (e, n, o) { if (e) return o = o || "", "object" === t.type(o) && (o = t.param(o, !0)), t.each(n, function (t, n) { e = e.replace("$" + t, n || "") }), o.length && (e += (e.indexOf("?") > 0 ? "&" : "?") + o), e }, n = { youtube: { matcher: /(youtube\.com|youtu\.be|youtube\-nocookie\.com)\/(watch\?(.*&)?v=|v\/|u\/|embed\/?)?(videoseries\?list=(.*)|[\w-]{11}|\?listType=(.*)&list=(.*))(.*)/i, params: { autoplay: 1, autohide: 1, fs: 1, rel: 0, hd: 1, wmode: "transparent", enablejsapi: 1, html5: 1 }, paramPlace: 8, type: "iframe", url: "//www.youtube.com/embed/$4", thumb: "//img.youtube.com/vi/$4/hqdefault.jpg" }, vimeo: { matcher: /^.+vimeo.com\/(.*\/)?([\d]+)(.*)?/, params: { autoplay: 1, hd: 1, show_title: 1, show_byline: 1, show_portrait: 0, fullscreen: 1, api: 1 }, paramPlace: 3, type: "iframe", url: "//player.vimeo.com/video/$2" }, metacafe: { matcher: /metacafe.com\/watch\/(\d+)\/(.*)?/, type: "iframe", url: "//www.metacafe.com/embed/$1/?ap=1" }, dailymotion: { matcher: /dailymotion.com\/video\/(.*)\/?(.*)/, params: { additionalInfos: 0, autoStart: 1 }, type: "iframe", url: "//www.dailymotion.com/embed/video/$1" }, vine: { matcher: /vine.co\/v\/([a-zA-Z0-9\?\=\-]+)/, type: "iframe", url: "//vine.co/v/$1/embed/simple" }, instagram: { matcher: /(instagr\.am|instagram\.com)\/p\/([a-zA-Z0-9_\-]+)\/?/i, type: "image", url: "//$1/p/$2/media/?size=l" }, google_maps: { matcher: /(maps\.)?google\.([a-z]{2,3}(\.[a-z]{2})?)\/(((maps\/(place\/(.*)\/)?\@(.*),(\d+.?\d+?)z))|(\?ll=))(.*)?/i, type: "iframe", url: function (t) { return "//maps.google." + t[2] + "/?ll=" + (t[9] ? t[9] + "&z=" + Math.floor(t[10]) + (t[12] ? t[12].replace(/^\//, "&") : "") : t[12]) + "&output=" + (t[12] && t[12].indexOf("layer=c") > 0 ? "svembed" : "embed") } } }; t(document).on("onInit.fb", function (o, s) { t.each(s.group, function (o, s) { var i, a, r, c, l, u, d = s.src || "", p = !1; s.type || (t.each(n, function (n, o) { if (a = d.match(o.matcher), l = {}, u = n, a) { if (p = o.type, o.paramPlace && a[o.paramPlace]) { c = a[o.paramPlace], "?" == c[0] && (c = c.substring(1)), c = c.split("&"); for (var h = 0; h < c.length; ++h) { var f = c[h].split("=", 2); 2 == f.length && (l[f[0]] = decodeURIComponent(f[1].replace(/\+/g, " "))) } } return r = t.extend(!0, {}, o.params, s.opts[n], l), d = "function" === t.type(o.url) ? o.url.call(this, a, r, s) : e(o.url, a, r), i = "function" === t.type(o.thumb) ? o.thumb.call(this, a, r, s) : e(o.thumb, a), "vimeo" === u && (d = d.replace("&%23", "#")), !1 } }), p ? (s.src = d, s.type = p, s.opts.thumb || s.opts.$thumb && s.opts.$thumb.length || (s.opts.thumb = i), "iframe" === p && (t.extend(!0, s.opts, { iframe: { preload: !1, scrolling: "no" }, smallBtn: !1, closeBtn: !0, fullScreen: !1, slideShow: !1 }), s.opts.slideClass += " fancybox-slide--video")) : s.type = "iframe") }) }) }(window.jQuery), function (t, e, n) {
        "use strict"; var o = function () { return t.requestAnimationFrame || t.webkitRequestAnimationFrame || t.mozRequestAnimationFrame || function (e) { t.setTimeout(e, 1e3 / 60) } }(), s = function (e) { var n = []; e = e.originalEvent || e || t.e, e = e.touches && e.touches.length ? e.touches : e.changedTouches && e.changedTouches.length ? e.changedTouches : [e]; for (var o in e) e[o].pageX ? n.push({ x: e[o].pageX, y: e[o].pageY }) : e[o].clientX && n.push({ x: e[o].clientX, y: e[o].clientY }); return n }, i = function (t, e, n) { return e && t ? "x" === n ? t.x - e.x : "y" === n ? t.y - e.y : Math.sqrt(Math.pow(t.x - e.x, 2) + Math.pow(t.y - e.y, 2)) : 0 }, a = function (t) { return t.is("a") || t.is("button") || t.is("input") || t.is("select") || t.is("textarea") || n.isFunction(t.get(0).onclick) }, r = function (e) { var n = t.getComputedStyle(e)["overflow-y"], o = t.getComputedStyle(e)["overflow-x"], s = ("scroll" === n || "auto" === n) && e.scrollHeight > e.clientHeight, i = ("scroll" === o || "auto" === o) && e.scrollWidth > e.clientWidth; return s || i }, c = function (t) { for (var e = !1; ;) { if (e = r(t.get(0))) break; if (t = t.parent(), !t.length || t.hasClass("fancybox-slider") || t.is("body")) break } return e }, l = function (t) { var e = this; e.instance = t, e.$wrap = t.$refs.slider_wrap, e.$slider = t.$refs.slider, e.$container = t.$refs.container, e.destroy(), e.$wrap.on("touchstart.fb mousedown.fb", n.proxy(e, "ontouchstart")) }; l.prototype.destroy = function () { this.$wrap.off("touchstart.fb mousedown.fb touchmove.fb mousemove.fb touchend.fb touchcancel.fb mouseup.fb mouseleave.fb") }, l.prototype.ontouchstart = function (e) { var o = this, r = n(e.target), l = o.instance, u = l.current, d = u.$content || u.$placeholder; return o.startPoints = s(e), o.$target = r, o.$content = d, o.canvasWidth = Math.round(u.$slide[0].clientWidth), o.canvasHeight = Math.round(u.$slide[0].clientHeight), o.startEvent = e, e.originalEvent.clientX > o.canvasWidth + u.$slide.offset().left || (a(r) || a(r.parent()) || c(r) ? void 0 : u.opts.touch ? void (e.originalEvent && 2 == e.originalEvent.button || (e.stopPropagation(), e.preventDefault(), !u || o.instance.isAnimating || o.instance.isClosing || !o.startPoints || o.startPoints.length > 1 && !u.isMoved || (o.$wrap.off("touchmove.fb mousemove.fb", n.proxy(o, "ontouchmove")), o.$wrap.off("touchend.fb touchcancel.fb mouseup.fb mouseleave.fb", n.proxy(o, "ontouchend")), o.$wrap.on("touchend.fb touchcancel.fb mouseup.fb mouseleave.fb", n.proxy(o, "ontouchend")), o.$wrap.on("touchmove.fb mousemove.fb", n.proxy(o, "ontouchmove")), o.startTime = (new Date).getTime(), o.distanceX = o.distanceY = o.distance = 0, o.canTap = !1, o.isPanning = !1, o.isSwiping = !1, o.isZooming = !1, o.sliderStartPos = n.fancybox.getTranslate(o.$slider), o.contentStartPos = n.fancybox.getTranslate(o.$content), o.contentLastPos = null, 1 !== o.startPoints.length || o.isZooming || (o.canTap = u.isMoved, "image" === u.type && (o.contentStartPos.width > o.canvasWidth + 1 || o.contentStartPos.height > o.canvasHeight + 1) ? (n.fancybox.stop(o.$content), o.isPanning = !0) : (n.fancybox.stop(o.$slider), o.isSwiping = !0), o.$container.addClass("fancybox-controls--isGrabbing")), 2 === o.startPoints.length && u.isMoved && !u.hasError && "image" === u.type && (u.isLoaded || u.$ghost) && (o.isZooming = !0, o.isSwiping = !1, o.isPanning = !1, n.fancybox.stop(o.$content), o.centerPointStartX = .5 * (o.startPoints[0].x + o.startPoints[1].x) - n(t).scrollLeft(), o.centerPointStartY = .5 * (o.startPoints[0].y + o.startPoints[1].y) - n(t).scrollTop(), o.percentageOfImageAtPinchPointX = (o.centerPointStartX - o.contentStartPos.left) / o.contentStartPos.width, o.percentageOfImageAtPinchPointY = (o.centerPointStartY - o.contentStartPos.top) / o.contentStartPos.height, o.startDistanceBetweenFingers = i(o.startPoints[0], o.startPoints[1]))))) : (o.endPoints = o.startPoints, o.ontap())) }, l.prototype.ontouchmove = function (t) { var e = this; t.preventDefault(), e.newPoints = s(t), e.newPoints && e.newPoints.length && (e.distanceX = i(e.newPoints[0], e.startPoints[0], "x"), e.distanceY = i(e.newPoints[0], e.startPoints[0], "y"), e.distance = i(e.newPoints[0], e.startPoints[0]), e.distance > 0 && (e.isSwiping ? e.onSwipe() : e.isPanning ? e.onPan() : e.isZooming && e.onZoom())) }, l.prototype.onSwipe = function () {
            var e, s = this, i = s.isSwiping, a = s.sliderStartPos.left; i === !0 ? Math.abs(s.distance) > 10 && (s.instance.group.length < 2 ? s.isSwiping = "y" : !s.instance.current.isMoved || s.instance.opts.touch.vertical === !1 || "auto" === s.instance.opts.touch.vertical && n(t).width() > 800 ? s.isSwiping = "x" : (e = Math.abs(180 * Math.atan2(s.distanceY, s.distanceX) / Math.PI),
                s.isSwiping = e > 45 && e < 135 ? "y" : "x"), s.canTap = !1, s.instance.current.isMoved = !1, s.startPoints = s.newPoints) : ("x" == i && (!s.instance.current.opts.loop && 0 === s.instance.current.index && s.distanceX > 0 ? a += Math.pow(s.distanceX, .8) : !s.instance.current.opts.loop && s.instance.current.index === s.instance.group.length - 1 && s.distanceX < 0 ? a -= Math.pow(-s.distanceX, .8) : a += s.distanceX), s.sliderLastPos = { top: "x" == i ? 0 : s.sliderStartPos.top + s.distanceY, left: a }, o(function () { n.fancybox.setTranslate(s.$slider, s.sliderLastPos) }))
        }, l.prototype.onPan = function () { var t, e, s, i = this; i.canTap = !1, t = i.contentStartPos.width > i.canvasWidth ? i.contentStartPos.left + i.distanceX : i.contentStartPos.left, e = i.contentStartPos.top + i.distanceY, s = i.limitMovement(t, e, i.contentStartPos.width, i.contentStartPos.height), s.scaleX = i.contentStartPos.scaleX, s.scaleY = i.contentStartPos.scaleY, i.contentLastPos = s, o(function () { n.fancybox.setTranslate(i.$content, i.contentLastPos) }) }, l.prototype.limitMovement = function (t, e, n, o) { var s, i, a, r, c = this, l = c.canvasWidth, u = c.canvasHeight, d = c.contentStartPos.left, p = c.contentStartPos.top, h = c.distanceX, f = c.distanceY; return s = Math.max(0, .5 * l - .5 * n), i = Math.max(0, .5 * u - .5 * o), a = Math.min(l - n, .5 * l - .5 * n), r = Math.min(u - o, .5 * u - .5 * o), n > l && (h > 0 && t > s && (t = s - 1 + Math.pow(-s + d + h, .8) || 0), h < 0 && t < a && (t = a + 1 - Math.pow(a - d - h, .8) || 0)), o > u && (f > 0 && e > i && (e = i - 1 + Math.pow(-i + p + f, .8) || 0), f < 0 && e < r && (e = r + 1 - Math.pow(r - p - f, .8) || 0)), { top: e, left: t } }, l.prototype.limitPosition = function (t, e, n, o) { var s = this, i = s.canvasWidth, a = s.canvasHeight; return n > i ? (t = t > 0 ? 0 : t, t = t < i - n ? i - n : t) : t = Math.max(0, i / 2 - n / 2), o > a ? (e = e > 0 ? 0 : e, e = e < a - o ? a - o : e) : e = Math.max(0, a / 2 - o / 2), { top: e, left: t } }, l.prototype.onZoom = function () { var e = this, s = e.contentStartPos.width, a = e.contentStartPos.height, r = e.contentStartPos.left, c = e.contentStartPos.top, l = i(e.newPoints[0], e.newPoints[1]), u = l / e.startDistanceBetweenFingers, d = Math.floor(s * u), p = Math.floor(a * u), h = (s - d) * e.percentageOfImageAtPinchPointX, f = (a - p) * e.percentageOfImageAtPinchPointY, g = (e.newPoints[0].x + e.newPoints[1].x) / 2 - n(t).scrollLeft(), b = (e.newPoints[0].y + e.newPoints[1].y) / 2 - n(t).scrollTop(), m = g - e.centerPointStartX, y = b - e.centerPointStartY, v = r + (h + m), x = c + (f + y), w = { top: x, left: v, scaleX: e.contentStartPos.scaleX * u, scaleY: e.contentStartPos.scaleY * u }; e.canTap = !1, e.newWidth = d, e.newHeight = p, e.contentLastPos = w, o(function () { n.fancybox.setTranslate(e.$content, e.contentLastPos) }) }, l.prototype.ontouchend = function (t) { var e = this, o = e.instance.current, i = Math.max((new Date).getTime() - e.startTime, 1), a = e.isSwiping, r = e.isPanning, c = e.isZooming; return e.endPoints = s(t), e.$container.removeClass("fancybox-controls--isGrabbing"), e.$wrap.off("touchmove.fb mousemove.fb", n.proxy(this, "ontouchmove")), e.$wrap.off("touchend.fb touchcancel.fb mouseup.fb mouseleave.fb", n.proxy(this, "ontouchend")), e.isSwiping = !1, e.isPanning = !1, e.isZooming = !1, e.canTap ? e.ontap() : (e.velocityX = e.distanceX / i * .5, e.velocityY = e.distanceY / i * .5, e.speed = o.opts.speed || 330, e.speedX = Math.max(.75 * e.speed, Math.min(1.5 * e.speed, 1 / Math.abs(e.velocityX) * e.speed)), e.speedY = Math.max(.75 * e.speed, Math.min(1.5 * e.speed, 1 / Math.abs(e.velocityY) * e.speed)), void (r ? e.endPanning() : c ? e.endZooming() : e.endSwiping(a))) }, l.prototype.endSwiping = function (t) { var e = this; "y" == t && Math.abs(e.distanceY) > 50 ? (n.fancybox.animate(e.$slider, null, { top: e.sliderStartPos.top + e.distanceY + 150 * e.velocityY, left: e.sliderStartPos.left, opacity: 0 }, e.speedY), e.instance.close(!0)) : "x" == t && e.distanceX > 50 ? e.instance.previous(e.speedX) : "x" == t && e.distanceX < -50 ? e.instance.next(e.speedX) : e.instance.update(!1, !0, 150) }, l.prototype.endPanning = function () { var t, e, o, s = this; s.contentLastPos && (t = s.contentLastPos.left + s.velocityX * s.speed * 2, e = s.contentLastPos.top + s.velocityY * s.speed * 2, o = s.limitPosition(t, e, s.contentStartPos.width, s.contentStartPos.height), o.width = s.contentStartPos.width, o.height = s.contentStartPos.height, n.fancybox.animate(s.$content, null, o, s.speed, "easeOutSine")) }, l.prototype.endZooming = function () { var t, e, o, s, i = this, a = i.instance.current, r = i.newWidth, c = i.newHeight; i.contentLastPos && (t = i.contentLastPos.left, e = i.contentLastPos.top, s = { top: e, left: t, width: r, height: c, scaleX: 1, scaleY: 1 }, n.fancybox.setTranslate(i.$content, s), r < i.canvasWidth && c < i.canvasHeight ? i.instance.scaleToFit(150) : r > a.width || c > a.height ? i.instance.scaleToActual(i.centerPointStartX, i.centerPointStartY, 150) : (o = i.limitPosition(t, e, r, c), n.fancybox.animate(i.$content, null, o, i.speed, "easeOutSine"))) }, l.prototype.ontap = function () { var t = this, e = t.instance, o = e.current, s = t.endPoints[0].x, i = t.endPoints[0].y; if (s -= t.$wrap.offset().left, i -= t.$wrap.offset().top, e.SlideShow && e.SlideShow.isActive && e.SlideShow.stop(), !n.fancybox.isTouch) return o.opts.closeClickOutside && t.$target.is(".fancybox-slide") ? void e.close(t.startEvent) : void ("image" == o.type && o.isMoved && (e.canPan() ? e.scaleToFit() : e.isScaledDown() ? e.scaleToActual(s, i) : e.group.length < 2 && e.close(t.startEvent))); if (t.tapped) { if (clearTimeout(t.tapped), t.tapped = null, Math.abs(s - t.x) > 50 || Math.abs(i - t.y) > 50 || !o.isMoved) return this; "image" == o.type && (o.isLoaded || o.$ghost) && (e.canPan() ? e.scaleToFit() : e.isScaledDown() && e.scaleToActual(s, i)) } else t.x = s, t.y = i, t.tapped = setTimeout(function () { t.tapped = null, e.toggleControls(!0) }, 300); return this }, n(e).on("onActivate.fb", function (t, e) { e && !e.Guestures && (e.Guestures = new l(e)) }), n(e).on("beforeClose.fb", function (t, e) { e && e.Guestures && e.Guestures.destroy() })
    }(window, document, window.jQuery), function (t, e) { "use strict"; var n = function (t) { this.instance = t, this.init() }; e.extend(n.prototype, { timer: null, isActive: !1, $button: null, speed: 3e3, init: function () { var t = this; t.$button = e('<button data-fancybox-play class="fancybox-button fancybox-button--play" title="Slideshow (P)"></button>').appendTo(t.instance.$refs.buttons), t.instance.$refs.container.on("click", "[data-fancybox-play]", function () { t.toggle() }) }, set: function () { var t = this; t.instance && t.instance.current && (t.instance.current.opts.loop || t.instance.currIndex < t.instance.group.length - 1) ? t.timer = setTimeout(function () { t.instance.next() }, t.instance.current.opts.slideShow.speed || t.speed) : t.stop() }, clear: function () { var t = this; clearTimeout(t.timer), t.timer = null }, start: function () { var t = this; t.stop(), t.instance && t.instance.current && (t.instance.current.opts.loop || t.instance.currIndex < t.instance.group.length - 1) && (t.instance.$refs.container.on({ "beforeLoad.fb.player": e.proxy(t, "clear"), "onComplete.fb.player": e.proxy(t, "set") }), t.isActive = !0, t.instance.current.isComplete && t.set(), t.instance.$refs.container.trigger("onPlayStart"), t.$button.addClass("fancybox-button--pause")) }, stop: function () { var t = this; t.clear(), t.instance.$refs.container.trigger("onPlayEnd").off(".player"), t.$button.removeClass("fancybox-button--pause"), t.isActive = !1 }, toggle: function () { var t = this; t.isActive ? t.stop() : t.start() } }), e(t).on("onInit.fb", function (t, e) { e && e.group.length > 1 && e.opts.slideShow && !e.SlideShow && (e.SlideShow = new n(e)) }), e(t).on("beforeClose.fb onDeactivate.fb", function (t, e) { e && e.SlideShow && e.SlideShow.stop() }) }(document, window.jQuery), function (t, e) { "use strict"; var n = function () { var e, n, o, s = [["requestFullscreen", "exitFullscreen", "fullscreenElement", "fullscreenEnabled", "fullscreenchange", "fullscreenerror"], ["webkitRequestFullscreen", "webkitExitFullscreen", "webkitFullscreenElement", "webkitFullscreenEnabled", "webkitfullscreenchange", "webkitfullscreenerror"], ["webkitRequestFullScreen", "webkitCancelFullScreen", "webkitCurrentFullScreenElement", "webkitCancelFullScreen", "webkitfullscreenchange", "webkitfullscreenerror"], ["mozRequestFullScreen", "mozCancelFullScreen", "mozFullScreenElement", "mozFullScreenEnabled", "mozfullscreenchange", "mozfullscreenerror"], ["msRequestFullscreen", "msExitFullscreen", "msFullscreenElement", "msFullscreenEnabled", "MSFullscreenChange", "MSFullscreenError"]], i = {}; for (n = 0; n < s.length; n++)if (e = s[n], e && e[1] in t) { for (o = 0; o < e.length; o++)i[s[0][o]] = e[o]; return i } return !1 }(); if (n) { var o = { request: function (e) { e = e || t.documentElement, e[n.requestFullscreen](e.ALLOW_KEYBOARD_INPUT) }, exit: function () { t[n.exitFullscreen]() }, toggle: function (t) { this.isFullscreen() ? this.exit() : this.request(t) }, isFullscreen: function () { return Boolean(t[n.fullscreenElement]) }, enabled: function () { return Boolean(t[n.fullscreenEnabled]) } }; e(t).on({ "onInit.fb": function (t, n) { var s; n && n.opts.fullScreen && !n.FullScreen && (s = n.$refs.container, n.$refs.button_fs = e('<button data-fancybox-fullscreen class="fancybox-button fancybox-button--fullscreen" title="Full screen (F)"></button>').appendTo(n.$refs.buttons), s.on("click.fb-fullscreen", "[data-fancybox-fullscreen]", function (t) { t.stopPropagation(), t.preventDefault(), o.toggle(s[0]) }), n.opts.fullScreen.requestOnStart === !0 && o.request(s[0])) }, "beforeMove.fb": function (t, e) { e && e.$refs.button_fs && e.$refs.button_fs.toggle(!!e.current.opts.fullScreen) }, "beforeClose.fb": function () { o.exit() } }), e(t).on(n.fullscreenchange, function () { var t = e.fancybox.getInstance(), n = t ? t.current.$placeholder : null; n && (n.css("transition", "none"), t.isAnimating = !1, t.update(!0, !0, 0)) }) } }(document, window.jQuery), function (t, e) { "use strict"; var n = function (t) { this.instance = t, this.init() }; e.extend(n.prototype, { $button: null, $grid: null, $list: null, isVisible: !1, init: function () { var t = this; t.$button = e('<button data-fancybox-thumbs class="fancybox-button fancybox-button--thumbs" title="Thumbnails (G)"></button>').appendTo(this.instance.$refs.buttons).on("touchend click", function (e) { e.stopPropagation(), e.preventDefault(), t.toggle() }) }, create: function () { var t, n, o = this.instance; this.$grid = e('<div class="fancybox-thumbs"></div>').appendTo(o.$refs.container), t = "<ul>", e.each(o.group, function (e, o) { n = o.opts.thumb || (o.opts.$thumb ? o.opts.$thumb.attr("src") : null), n || "image" !== o.type || (n = o.src), n && n.length && (t += '<li data-index="' + e + '"  tabindex="0" class="fancybox-thumbs-loading"><img data-src="' + n + '" /></li>') }), t += "</ul>", this.$list = e(t).appendTo(this.$grid).on("click touchstart", "li", function () { o.jumpTo(e(this).data("index")) }), this.$list.find("img").hide().one("load", function () { var t, n, o, s, i = e(this).parent().removeClass("fancybox-thumbs-loading"), a = i.outerWidth(), r = i.outerHeight(); t = this.naturalWidth || this.width, n = this.naturalHeight || this.height, o = t / a, s = n / r, o >= 1 && s >= 1 && (o > s ? (t /= s, n = r) : (t = a, n /= o)), e(this).css({ width: Math.floor(t), height: Math.floor(n), "margin-top": Math.min(0, Math.floor(.3 * r - .3 * n)), "margin-left": Math.min(0, Math.floor(.5 * a - .5 * t)) }).show() }).each(function () { this.src = e(this).data("src") }) }, focus: function () { this.instance.current && this.$list.children().removeClass("fancybox-thumbs-active").filter('[data-index="' + this.instance.current.index + '"]').addClass("fancybox-thumbs-active").focus() }, close: function () { this.$grid.hide() }, update: function () { this.instance.$refs.container.toggleClass("fancybox-container--thumbs", this.isVisible), this.isVisible ? (this.$grid || this.create(), this.$grid.show(), this.focus()) : this.$grid && this.$grid.hide(), this.instance.update() }, hide: function () { this.isVisible = !1, this.update() }, show: function () { this.isVisible = !0, this.update() }, toggle: function () { this.isVisible ? this.hide() : this.show() } }), e(t).on("onInit.fb", function (t, e) { var o = e.group[0], s = e.group[1]; e.opts.thumbs && !e.Thumbs && e.group.length > 1 && ("image" == o.type || o.opts.thumb || o.opts.$thumb) && ("image" == s.type || s.opts.thumb || s.opts.$thumb) && (e.Thumbs = new n(e)) }), e(t).on("beforeMove.fb", function (t, e, n) { var o = e && e.Thumbs; o && (n.modal ? (o.$button.hide(), o.hide()) : (e.opts.thumbs.showOnStart === !0 && e.firstRun && o.show(), o.$button.show(), o.isVisible && o.focus())) }), e(t).on("beforeClose.fb", function (t, e) { e && e.Thumbs && (e.Thumbs.isVisible && e.opts.thumbs.hideOnClosing !== !1 && e.Thumbs.close(), e.Thumbs = null) }) }(document, window.jQuery), function (t, e, n) { "use strict"; function o() { var t = e.location.hash.substr(1), n = t.split("-"), o = n.length > 1 && /^\+?\d+$/.test(n[n.length - 1]) ? parseInt(n.pop(-1), 10) || 1 : 1, s = n.join("-"); return o < 1 && (o = 1), { hash: t, index: o, gallery: s } } function s(t) { var e; "" !== t.gallery && (e = n("[data-fancybox='" + n.escapeSelector(t.gallery) + "']").eq(t.index - 1), e.length ? e.trigger("click") : n("#" + n.escapeSelector(t.gallery)).trigger("click")) } function i(t) { var e; return !!t && (e = t.current ? t.current.opts : t.opts, e.$orig ? e.$orig.data("fancybox") : e.hash || "") } n.escapeSelector || (n.escapeSelector = function (t) { var e = /([\0-\x1f\x7f]|^-?\d)|^-$|[^\x80-\uFFFF\w-]/g, n = function (t, e) { return e ? "\0" === t ? "�" : t.slice(0, -1) + "\\" + t.charCodeAt(t.length - 1).toString(16) + " " : "\\" + t }; return (t + "").replace(e, n) }); var a = null; n(function () { setTimeout(function () { n.fancybox.defaults.hash !== !1 && (n(e).on("hashchange.fb", function () { var t = o(); n.fancybox.getInstance() ? a && a !== t.gallery + "-" + t.index && (a = null, n.fancybox.close()) : "" !== t.gallery && s(t) }), n(t).on({ "onInit.fb": function (t, e) { var n = o(), s = i(e); s && n.gallery && s == n.gallery && (e.currIndex = n.index - 1) }, "beforeMove.fb": function (n, o, s) { var r = i(o); r && "" !== r && (e.location.hash.indexOf(r) < 0 && (o.opts.origHash = e.location.hash), a = r + (o.group.length > 1 ? "-" + (s.index + 1) : ""), "pushState" in history ? history.pushState("", t.title, e.location.pathname + e.location.search + "#" + a) : e.location.hash = a) }, "beforeClose.fb": function (n, o, s) { var r = i(o), c = o && o.opts.origHash ? o.opts.origHash : ""; r && "" !== r && ("pushState" in history ? history.pushState("", t.title, e.location.pathname + e.location.search + c) : e.location.hash = c), a = null } }), s(o())) }, 50) }) }(document, window, window.jQuery);

}(document, window, window.jQuery));

