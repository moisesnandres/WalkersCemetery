$(document).ready(function(){
  $('.fa-bars').click(function(){
    $('nav ul').slideToggle('slow');
  });
});
$(window).resize(function(){
  if ($(window).width()>768) {
    $('nav ul').removeAttr('style');
  }
});
