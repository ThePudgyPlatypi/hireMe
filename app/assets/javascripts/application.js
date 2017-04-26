// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require best_in_place
//= require jquery-ui
//= require nested_form_fields
//= require_tree .

$(function(){
  $(document).foundation();
  $('.best_in_place').best_in_place();
  $('.best_in_place').on("ajax:success", function(){
    $(this).closest('span').effect('highlight');
  });
  // tooltip doesnt work since its a span before it is a regular form field so i will need to figure out a better way to
  // let users know they just need to click on the text to edit
  $('.best_in_place').on('mouseenter', function() {
    console.log('i hovered on an element');
  });
});


// turbolinks is down here because it interferes with the off-canvas menu
// and makes it so that when you click
// on anything in the menu to go to a new page, the menu won't toggle open again
//= require turbolinks
