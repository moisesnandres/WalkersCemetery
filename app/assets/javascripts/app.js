$(document).ready(function(){
  $('.fa-bars').click(function(){
    $('nav ul').slideToggle('slow');
  });
  $('.alert-message i').each(function(){
    $(this).click(function(){
      $(this).parent().parent().remove();
    });
  });
  $('.account').click(function(){
    $('.settings').toggle();
  });
});
$(window).resize(function(){
  if ($(window).width()>768) {
    $('nav ul').removeAttr('style');
  }
});
