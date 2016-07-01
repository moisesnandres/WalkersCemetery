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
  $('.datePicker').datepicker();
  //validate
  var startDate, endDate, day, year;
  function arrayElements(array) {
    day = array[0];
    year = array[2];
    array.shift();
    array.unshift(year);
    array.pop();
    array.push(day);
  }
  var date = new Date();
  var today = (("0" + (date.getDate() )).slice(-2) + '/' + ("0" + (date.getMonth()+1)).slice(-2) + '/' + date.getFullYear().toString()).split('/');
  arrayElements(today);
  $('.start-date input').change(function(){
    startDate = $(this).val();
    startDate = startDate.split('/');
    arrayElements(startDate)
    $('.end-date input').val('');
    if (startDate > today) {
      alert('Fecha inválida');
      $('.start-date input').val('');
    }
  });
  $('.end-date input').change(function(){
    endDate = $(this).val();
    endDate = endDate.split('/');
    arrayElements(endDate);
    compareDate = startDate;
    if (endDate < compareDate) {
      alert('Fecha inválida');
      $('.end-date input').val('');
    }
    if (endDate > today) {
      alert('Fecha inválida');
      $('.end-date input').val('');
    }
  });
  //login
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
  $('#notice, #alert').remove();
});
$(window).resize(function(){
  if ($(window).width()>768) {
    $('nav').removeAttr('style');
  }
});
