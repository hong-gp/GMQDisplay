/*
 jQuery UI Sortable Animation 0.0.1

 Copyright 2015, Egor Sharapov
 Licensed under the MIT license.

 Depends:
  jquery.ui.sortable.js
*/
(function(factory){if(typeof define==="function"&&define.amd)define(["jquery","jquery-ui"],factory);else factory(jQuery)})(function($){var supports={},testProp=function(prefixes){var test_el=document.createElement("div"),i,l;for(i=0;l=prefixes.length,i<l;i++)if(test_el.style[prefixes[i]]!=undefined)return prefixes[i];return""},use_css_animation=false;supports["transform"]=testProp(["transform","WebkitTransform","MozTransform","OTransform","msTransform"]);supports["transition"]=testProp(["transition",
"WebkitTransition","MozTransition","OTransition","msTransition"]);use_css_animation=supports["transform"]&&supports["transition"];$.widget("ui.sortable",$.ui.sortable,{options:{animation:0},_rearrange:function(e,item){var $item,props={},reset_props={},offset,axis=$.trim(this.options.axis);if(!parseInt(this.currentContainer.options.animation)||!axis)return this._superApply(arguments);this._superApply(arguments);if(item==null)return;$item=$(item.item[0]);offset=(this.direction=="up"?"":"-")+$item[axis==
"x"?"width":"height"]()+"px";if(use_css_animation)props[supports["transform"]]=(axis=="x"?"translateX":"translateY")+"("+offset+")";else{props={position:"relative"};props[axis=="x"?"left":"top"]=offset}$item.css(props);if(use_css_animation){props[supports["transition"]]=supports["transform"]+" "+this.options.animation+"ms";props[supports["transform"]]="";reset_props[supports["transform"]]="";reset_props[supports["transition"]]="";setTimeout(function(){$item.css(props)},0)}else{reset_props.top="";
reset_props.position="";$item.animate({top:"",position:""},this.options.animation)}setTimeout(function(){$item.css(reset_props)},this.options.animation)}})});
