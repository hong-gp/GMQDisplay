function isMobile(){
  if (window.matchMedia("only screen and (max-width: 535px)").matches)
  {
    return true;
  }else{
    return false;
  }
}

const interaction = {
  navigation: function() {
    console.log('함수 삭제');
  },
  popupCall: function(e, path, callback, type) { // 221212 팝업 인터렉션 반영
    const scrollPoint = window.scrollY;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
      if (this.readyState === 4 && this.status === 200) {
        const body = document.body;
        const pop = document.createElement('div');
        pop.classList.add('popup');
        pop.innerHTML = this.responseText;
        const layer = pop.querySelector('.popup-area');
        type === 'popInPop' ? layer.classList.add('in-this-layer') : layer.classList.add('this-layer');
        const source = layer.outerHTML;
        pop.innerHTML = source;
        body.appendChild(pop);
        const afterLayer = type === 'popInPop' ? document.querySelector('.in-this-layer') : document.querySelector('.this-layer');
        const topBtn = document.createElement('button');
        topBtn.classList.add('go-top');
        topBtn.setAttribute('title', '맨 위로');
        // topBtn.innerText = '↑';
        afterLayer.appendChild(topBtn);
        const cbtn = pop.querySelector('.popup-close');
        afterLayer.focus();
        afterLayer.insertBefore(topBtn, cbtn);
        body.classList.add('stop');
        const backGoTop = document.querySelector('.go-to-top');
        try {
          backGoTop.style.display = 'none';
        } catch (err) {
          console.log(err);
        }
        window.scrollTo(0,scrollPoint);
        pop.scrollTop = 0;
        // afterLayer.classList.add('on');
        pop.addEventListener('scroll', function() {
          pop.scrollTop > 10 ? topBtn.style.display = 'block' : topBtn.style.display = 'none';
        });
        topBtn.addEventListener('click', () => {
          pop.scrollTop = 0;
        });
        cbtn.addEventListener('keydown', function(ev) {
          const kc = ev.which || ev.keyCode;
          if (kc === 9) {
            afterLayer.focus();
          }
        });
        function popClose() {
          // afterLayer.classList.remove('on');
          // afterLayer.classList.add('off');
          setTimeout(() => {
            pop.remove();
            body.classList.remove('stop');
            try {
              backGoTop.style.display = 'block';
            } catch (err) {
              console.log(err);
            }
            //검색시에 동작하기 위해서 추가 된로직 더 효율적인부분 있으면 누구든지 추가바람.
            console.log(e.getAttribute("id"));
            if(e.getAttribute("id")!=null){
              location.href="#"+e.getAttribute("id");
            }else{
              e.focus();
            }
          }, 200);
        }
        cbtn.addEventListener('click', function() {
          popClose();
        });

        //link 복사하기
        const alertUrlCallBack = function (){}
        const btnLink = pop.querySelector('.popup-footer .btn-link');
        if(btnLink != null){
          btnLink.addEventListener('click', function(e) {
            let popupId = path.split("popup_doc/")[1];
            let copyUrl = window.location.origin + window.location.pathname+"#"+popupId; // URL

            if (typeof(navigator.clipboard)=='undefined') {
              let textArea = document.createElement("textarea");
              textArea.value = copyUrl;
              textArea.style.position = "fixed";  //avoid scrolling to bottom
              document.body.appendChild(textArea);
              textArea.focus();
              textArea.select();
              try {
                let successful = document.execCommand('copy');
                let msg = successful ? 'successful' : 'unsuccessful';
                interaction.alertCall({
                      mainText: "링크가 복사되었습니다. <br>원하는 곳에 붙여넣기 해주세요.",
                      subText: "",
                      doneCallback:alertUrlCallBack,
                      closeCallback:alertUrlCallBack,
                      cbTarget:btnLink,
                    }
                )
              } catch (err) {
                console.log(err);
              }
              document.body.removeChild(textArea)
            }else{
              navigator.clipboard.writeText(copyUrl).then(function() {
                console.log("successful link  clipboard " + copyUrl);
                interaction.alertCall({
                      mainText: "링크가 복사되었습니다. <br>원하는 곳에 붙여넣기 해주세요.",
                      subText: "",
                      doneCallback:alertUrlCallBack,
                      closeCallback:alertUrlCallBack,
                      cbTarget:btnLink,
                    }
                )
              }, function(err) {
                console.log("err link clipboard " + copyUrl);
              })
            }


          });
        }

        //pdf 다운로드하기
        const btnDownload = pop.querySelector('.popup-footer .btn-download');
        if(btnDownload != null){
          btnDownload.addEventListener('click', function() {
            let downloadUrl = window.location.origin+"/sec/sustainability/digital-library/url-report-download?url="+path;
            window.location.href=downloadUrl;
          });
        }


        if(typeof callback == 'string') {
          let execFunc = (new Function("return " + callback))();
          execFunc();
        } else if(typeof callback != undefined ){
          callback && callback();
        }

        pop.addEventListener('click', (e) => {
          try {
            if (e.target.firstChild.classList[0] === 'popup-area') {
              popClose();
            }
          } catch(err) {
            console.log('popup');
          }
        });
      }
    };
    xhttp.open('GET', path, true);
    xhttp.send();
  },
  alertCall: function (obj) {
    const popup = document.createElement('div');
    popup.classList.add('popup');
    popup.classList.add('alert-popup');
    const alertHtml = `<div class="alert-area" tabindex="0"><div class="alert-area-wrap"><div><strong>${obj.mainText}</strong><p>${obj.subText}</p><button class="btn black alert-done" type="button">확인</button></div></div><button class="popup-close black alert-close" type="button"><span class="blind">알림 닫기</span></button></div>`;
    document.body.appendChild(popup);
    const layer = document.querySelector('.alert-popup');
    layer.innerHTML = alertHtml;
    document.body.classList.add('stop');
    const myArea = layer.querySelector('.alert-area');
    myArea.focus();
    const receiptDone = myArea.querySelector('.alert-done');
    const receiptClose = myArea.querySelector('.alert-close');
    receiptDone.addEventListener('click', () => {
      popup.remove();
      document.body.classList.remove('stop');
      obj.doneCallback && obj.doneCallback();
      obj.cbTarget.focus();
    });
    receiptClose.addEventListener('click', () => {
      popup.remove();
      document.body.classList.remove('stop');
      obj.closeCallback && obj.closeCallback();
      obj.cbTarget.focus();
    });
  },
};

var scrollReveal = {
  init:function(){
    const scrollElements = document.querySelectorAll('main *');
    let observer_options = {rootMargin: '0px -10px -50px -10px'}
    if(isMobile()){
      observer_options = {rootMargin: '0px -10px 50px -10px'}
    }


    const callback = (data) => {
      data.forEach((item,i) => {
        const entry = item;
        if (entry.isIntersecting) {
          // if(document.querySelector('#contents.focus')){ //일단은 포커스쪽에만 적용
          entry.target.classList.add('scroll-reveal-active');
          // }
          // 로티면 로티플레이
          if (entry.target.nodeName == 'LOTTIE-PLAYER') {
            entry.target.play();
          }
        }
        else{
          //entry.target.classList.remove('scroll-reveal-active');
        }
      })

    }
    const observer = new IntersectionObserver(callback, observer_options);

    scrollElements.forEach(scrollElement => {
      observer.observe(scrollElement);
    });
  }
}
document.addEventListener('DOMContentLoaded',domload);
function domload(){
  scrollReveal.init();
}

var scrollfullPage = {
  currentPage: '',
  scrollEnabled: true,
  init: function(objArr) {
    this.scrollEnabled = true

    var delay;
    var posArr = [];
    var _nearPos = 0;
    var _nearPosNum = 0;
    var prevObj;
    var smoothScrollComple = new CustomEvent('smoothScrollComple');
    var nearChange = new CustomEvent('nearChange');
    var tempLottie;
    var prevVideo;
    addEventListener('nearChange', function(e) {
      var currentObj = objArr[_nearPosNum - 1];
      if (document.querySelector(currentObj)) {
        if (prevObj) {
          //prevObj.classList.remove('pageActive');
        }

        document.querySelector(currentObj).classList.add('pageActive')
        scrollfullPage.currentPage = document.querySelector(currentObj)
        if(tempLottie){
          tempLottie.pause();
        }
        // 로티있으면 로티플레이
        if (document.querySelector(currentObj).querySelector('lottie-player')) {
          const isMobile = window.matchMedia("only screen and (max-width: 535px)").matches;
          if (isMobile) {
            // mobile
            document.querySelector(currentObj).querySelector('lottie-player.mo-only').play();
            tempLottie = document.querySelector(currentObj).querySelector('lottie-player.mo-only');
          } else {
            // pc
            document.querySelector(currentObj).querySelector('lottie-player.pc-only').play();
            tempLottie = document.querySelector(currentObj).querySelector('lottie-player.pc-only');
          }


        }

        // if(prevVideo){
        //   prevVideo.pause();
        // }
        // // 비디오있으면 비디오플레이
        // if (document.querySelector(currentObj).querySelector('video')) {
        //
        //   document.querySelector(currentObj).querySelector('video').play();
        //   prevVideo = document.querySelector(currentObj).querySelector('video');
        // }

        prevObj = document.querySelector(currentObj)
      }
    });

    function positionSetting() {
      posArr = [];
      posArr.push(0);
      //헤더 pos
      objArr.forEach((item,i)=>{
        if (document.querySelector(item)) {

          posArr.push(Math.ceil(window.pageYOffset + document.querySelector(item).getBoundingClientRect().top));
        }
      })
      posArr.push(window.pageYOffset + document.querySelector('footer').getBoundingClientRect().top);
      //하단 pos
    }

    function arrayNearPos(posArr, pos) {
      var data = posArr;
      var target = pos;
      var nearPosNum = 0;
      var nearPos = 0;
      var abs = data[0];
      var min = data[data.length - 1];
      for (var i = 0; i < data.length; i++) {
        abs = ((data[i] - target) < 0) ? -(data[i] - target) : (data[i] - target);
        if (abs < min) {
          min = abs;
          nearPos = data[i];
          nearPosNum = i;
        }
      }
      _nearPosNum = nearPosNum;
      _nearPos = nearPos
      dispatchEvent(nearChange);
    }

    var wheel_delay = false;
    document.body.addEventListener('mousewheel', wheel, {passive:false})
    function wheel(e) {
      e.preventDefault();
      if(!wheel_delay){
        wheel_delay = true;
        setTimeout(function(){
          wheel_delay = false;
          document.body.addEventListener('mousewheel', wheel, {passive:false})
        },1000);


        if (e.target.closest(objArr)) {
          // If it's rather a child go up the DOM tree

          var next = e.target.closest(objArr).nextElementSibling
              , prev = e.target.closest(objArr).previousElementSibling
        }

        if (e.deltaY < 0) {
          // Wheel scrolled up
          if (prev) {
            console.log(prev)
            scrollfullPage.currentPage = prev;
            var y = window.pageYOffset + Math.ceil(prev.getBoundingClientRect().top);
            smoothScrollToY(y, 300, 'easeOutSine');

          }else{

            if (e.target.closest('footer')) {
              var y = posArr[posArr.length - 2];
              // console.log(y)
              smoothScrollToY(y, 300, 'easeOutSine');
            }else{
              smoothScrollToY(0, 300, 'easeOutSine');
            }
          }
        } else if (e.deltaY > 0) {
          // Wheel scrolled down
          // Just the same as before but with the following adjacent sibling.
          if (next) {
            scrollfullPage.currentPage = next;
            var y = window.pageYOffset + Math.ceil(next.getBoundingClientRect().top);
            if (window.pageYOffset <= 50) {
              smoothScrollToY(posArr[1], 300, 'easeOutSine');
            } else {
              smoothScrollToY(y, 300, 'easeOutSine');
            }
          } else {
            var y = window.pageYOffset + document.querySelector('footer').getBoundingClientRect().top;
            smoothScrollToY(y, 2000, 'easeOutSine');
          }
        } else {
          return false
        }
      }
    }
    document.addEventListener('scrollPrev',scrollPrev);
    function scrollPrev(e){
      var prev = scrollfullPage.currentPage.previousElementSibling;
      if(prev){
        var y = window.pageYOffset + Math.ceil(prev.getBoundingClientRect().top);
        smoothScrollToY(y, 2000, 'easeOutSine');
      }
    }
    document.addEventListener('scrollNext',scrollNext);
    function scrollNext(e){
      var next = scrollfullPage.currentPage.nextElementSibling;
      if(next){
        var y = window.pageYOffset + Math.ceil(next.getBoundingClientRect().top);
        smoothScrollToY(y, 2000, 'easeOutSine');
      }
    }

    function smoothScrollToY(scrollTargetY, speed, easing) {
      var scrollY = window.scrollY
          , scrollTargetY = scrollTargetY || 0
          , speed = speed || 2000
          , easing = easing || 'easeOutSine'
          , currentTime = 0;

      var time = Math.max(.1, Math.min(Math.abs(scrollY - scrollTargetY) / speed, .8));
      var PI_D2 = Math.PI / 2
          , easingEquations = {
        easeOutSine: function(pos) {
          return Math.sin(pos * (Math.PI / 2));
        },
        easeInOutSine: function(pos) {
          return (-0.5 * (Math.cos(Math.PI * pos) - 1));
        },
        easeInOutQuint: function(pos) {
          if ((pos /= 0.5) < 1) {
            return 0.5 * Math.pow(pos, 5);
          }
          return 0.5 * (Math.pow((pos - 2), 5) + 2);
        }
      };

      function tick() {
        currentTime += 1 / 60;

        var p = currentTime / time;
        var t = easingEquations[easing](p);

        if (p < 1) {
          window.requestAnimationFrame(tick);
          window.scrollTo(0, scrollY + ((scrollTargetY - scrollY) * t));
        } else {
          dispatchEvent(smoothScrollComple);

          window.scrollTo(0, scrollTargetY);
        }
      }

      tick();
    }

    window.addEventListener('scroll', function(e) {
      clearTimeout(delay);
      arrayNearPos(posArr, window.scrollY);
      delay = setTimeout(function() {
        smoothScrollToY(_nearPos, 300, 'easeInOutSine');
      }, 1000)
    })
    window.addEventListener('resize',resize);
    function resize(e){
      positionSetting();
      window.dispatchEvent(new Event('scroll'));
    }

    //window.dispatchEvent(new Event('scroll'));
    positionSetting();
  }
}
//갤러리
var gallery = {
  init: function(gallery){
    const indicator = gallery.querySelector('.indicator');
    const cutSet = gallery.querySelectorAll('.cut-container > *');
    const current_el = gallery.querySelector('.pagination .current');
    const total_el = gallery.querySelector('.pagination .total');
    const prev_btn = gallery.querySelector('.pagination .prev');
    const next_btn = gallery.querySelector('.pagination .next');

    let cut_num = cutSet.length;
    let active = 1;
    let depth = cut_num;



    prev_btn.addEventListener('click',prev);
    next_btn.addEventListener('click',next);

    function next(){
      if(active < cut_num){
        active++;
        render();
      }
    }
    function prev(){
      if(active > 1){
        active--;
        render();
      }
    }

    let prev_cutSet;
    function render(){

      current_el.innerText = active;
      total_el.innerText = cut_num;
      if(prev_cutSet){
        prev_cutSet.classList.remove('active');
      }

      cutSet[active-1].style.display = 'none';
      cutSet[active-1].classList.add('active');
      setTimeout(function(){
        cutSet[active-1].style.display = 'block';
        cutSet[active-1].style.zIndex = depth;
        depth++;
        prev_cutSet = cutSet[active-1];
      },200);
    }

    render();
  }
}

var scrollProgress = {
  init: function(){
    const track = document.querySelector('.scrollProgress');
    const bar = document.querySelector('.scrollProgress .bar');
    document.addEventListener('scroll',function(){
      const per = Math.ceil((window.scrollY / (document.body.scrollHeight - window.innerHeight)) * 100);
      bar.style.width = per + '%';
    })
  }
}

function lottiePrevNext(event,points){
  let lottie;
  if(isMobile()){
    lottie = event.target.closest('[class *= "sd-cut"]').querySelector('lottie-player.mo-only');
  }else{
    lottie = event.target.closest('[class *= "sd-cut"]').querySelector('lottie-player.pc-only');
  }
  const total = lottie.getLottie().totalFrames;

  const current = lottie.getLottie().currentFrame;
  let getPoints = points;
  let prevPoint;
  let nextPoint;
  getPoints.push(total);

  for(let i = 0; i < getPoints.length; i++){
    if(current <= getPoints[i]){
      prevPoint = getPoints[i - 2];
      nextPoint = getPoints[i];
      break;
    }
  }

  console.log(lottie.getLottie().currentFrame)
  if(event.target.classList.contains('prev')){
    if(lottie.getLottie().currentFrame < 200){
      //console.log('prev_end?')
      document.dispatchEvent(new Event('scrollPrev'));
    }else{
      if(prevPoint){
        lottie.getLottie().setCurrentRawFrameValue(prevPoint)
        lottie.play();
      }
    }

  }else if(event.target.classList.contains('next')){
    if(lottie.getLottie().currentFrame + 100 > lottie.getLottie().totalFrames){
      //console.log('next_end?')
      document.dispatchEvent(new Event('scrollNext'));
    }else{
      if(nextPoint){
        lottie.getLottie().setCurrentRawFrameValue(nextPoint)
        lottie.play();
      }

    }
  }
}

// loading
const loading = {
  svg: '<svg viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg"><circle cx="50" cy="50" r="30" fill="transparent" stroke-width="8px" stroke-dasharray="160" /></svg>',
  on: function() {
    const area = document.createElement('div');
    const svgArea = document.createElement('div');
    area.classList.add('loading-area');
    svgArea.classList.add('svg-area');
    svgArea.innerHTML = loading.svg;
    area.appendChild(svgArea);
    document.body.appendChild(area);
  },
  off: function() {
    const loadingArea = document.querySelector('.loading-area');
    try {
      loadingArea.remove();
    } catch(err) {
      console.log(err);
    }
  },
}
