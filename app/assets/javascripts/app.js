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
    $('nav ul').removeAttr('style');
  }
});



var curDate = (new Date()).getDate();
var curMonth = (new Date()).getMonth();
var curYear = (new Date()).getFullYear();
var weeks = ["sun","mon","tue","wed","thu","fri","sat"];
var months = ["January","February","March","April","May","June","July","August","September","October","November","December"];
var noofdays = ["31", "29", "31", "30", "31", "30", "31", "31", "30", "31", "30", "31"];
var prevMonth, totalDays, precounter, counter, rightbox, flag, startDay;

var curContainer = jQuery('#container');
startDay = (new Date(curYear, curMonth, 1)).getDay();
jQuery('.curr-month').prepend('<a href="#" class="prev"> < </a>');
jQuery('.curr-month').append('<a href="#" class="next"> > </a>');

jQuery( ".prev",curContainer).click(function() {
  curMonth = curMonth-1;
  if(curMonth<0){
    curMonth=11;
    curYear = curYear-1;
  }else{
    curMonth=curMonth;
  };
  calendar();
});

jQuery( ".next", curContainer ).click(function() {
  curMonth = curMonth+1;
  if(curMonth>11){
    curMonth=0;
    curYear = curYear+1;
  }else{
    curMonth=curMonth;
  };
  calendar();
});

function calendar(){
  startDay = (new Date(curYear, curMonth, 1)).getDay();
  jQuery('.curr-month b').html('<span>'+months[curMonth]+'</span><sup> '+curYear+'</sup>');

  prevMonth = noofdays[curMonth-1];
  if(curMonth==11){prevMonth = noofdays[0]}else if(curMonth==0){prevMonth = noofdays[11]};
  totalDays = noofdays[curMonth];
  counter=0;
  precounter = prevMonth - (startDay-1);
  rightbox = 6;
  flag=true;

  //create days;
  jQuery( ".all-days ul li" ).remove();
  for (var i=0; i<8; i++){
    jQuery('.all-days ul').append('<li>'+weeks[i]+'</li>');
  }

  jQuery( ".all-date ul li" ).remove();
  for (var i=0; i<42; i++){
    var day;
    day = (i > 6)?(weeks[i % 7]):(weeks[i]);

    if(i>=startDay){
    counter++;
    if(counter>totalDays){
      counter=1;
      flag=false;
    }

    if(flag==true){
      jQuery('.all-date ul').append('<li class="monthdate"><span>'+counter+'</span><sup> '+day+'</sup></li>');
    }else{
      jQuery('.all-date ul').append('<li class="inactive"><span>'+counter+'</span><sup> '+day+'</sup></li>');
    }
    }else{
    jQuery('.all-date ul').append('<li class="inactive"><span>'+precounter+'</span><sup> '+day+'</sup></li>');
    precounter++;
    }

    jQuery(jQuery('.all-date ul li')[i]).addClass("bnone");
    if(i==rightbox){
    jQuery(jQuery('.all-date ul li')[i]).removeClass("bnone");
    jQuery(jQuery('.all-date ul li')[rightbox]).addClass("b-right");
    rightbox = rightbox+7;
    }

    if(i>34){
    jQuery(jQuery('.all-date ul li')[i]).addClass("b-bottom");
    }

    if((jQuery(jQuery('.all-date ul li')[i]).children('span').text()==curDate) && (months[(new Date()).getMonth()]==jQuery('.curr-month span').text())&&(jQuery('.curr-month sup').text()==curYear) && (jQuery(jQuery('.all-date ul li')[i]).css('opacity') == 1)){
      jQuery(jQuery('.all-date ul li')[i]).css({"background-color":"#f39c12","color":"#fff"});
    }
  }
}

calendar();
