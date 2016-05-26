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
  $('.group').each(function(){
    if ($(this).find('input').val().length > 0) {
      $(this).parent().find('label').addClass('label-transition');
    }
    else {
      $(this).parent().find('label').removeClass('label-transition');
    }
    $(this).find('input').change(function(){
      if ($(this).val().length > 0) {
        $(this).parent().find('label').addClass('label-transition');
      }
      else {
        $(this).parent().find('label').removeClass('label-transition');
      }
    });
  });
});
$(window).resize(function(){
  if ($(window).width()>768) {
    $('nav ul').removeAttr('style');
  }
});
