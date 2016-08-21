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

$( document ).ready(function() {
  $('.mobile-menu-icon').on('click', function() {
    console.log('yarrrr');
    $('.mobile-site-links').toggleClass('hidden');
  });

  // Weird bug where after selecting a new page using the mobile menu, the mobile menu icon doesn't respond. Definitely a better solution, but this fixes it for now by reloading the new page after navigating there
  $('.mobile-site-links').on('click', function() {
    $( document ).ready(function() {
    }).promise().done(function() {
      location.reload();
    });
  });
});
