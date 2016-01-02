// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

// $('document').ready(function(){
//
//   $('#usd').click(function(e){
//     e.preventDefault();
//     $("<span>$</span>").replaceWith('<span>€</span>')
//   })
//
//
//
// })

// (function ($) {
//   var $currencyToggleBtn = $('button');
//
//   function onBtnClick(e) {
//     e.preventDefault();
//     var $this = $(this)
//     $this.toggle();
//   }
//
//   $(document).ready(function () {
//     $currencyToggleBtn.on('click', onBtnClick);
//     $('button')on('click', function () {
//       $('.eur').toggle();
//     })
//   });
//
// })(jQuery);


$(document).ready(function () {
  $( "button" ).click(function() {
    $( "span" ).toggle();
    $(".eur").toggle();
    });
  })
