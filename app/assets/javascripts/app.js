$(document).ready(function(){
  $('.fa-bars').click(function(){
    $('nav').slideToggle('slow');
  });
  $('.alert-message i').each(function(){
    $(this).click(function(){
      $(this).parent().parent().remove();
    });
  });
  $('.account').click(function(){
    $('.settings').slideToggle();
  });
  $('.slider').slick({
    dots: true,
    infinite: true,
    speed: 700,
    slidesToShow: 1,
    adaptiveHeight: true,
    autoplay: true,
    autoplaySpeed: 6000,
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
    $('nav').removeAttr('style');
  }
});
