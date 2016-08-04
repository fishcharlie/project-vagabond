$(document).ready(function() {

  var scroll_start = 0;
    var startchange = $('.start_change');
    var offset = startchange.offset();
    $(document).scroll(function() { 
      scroll_start = $(this).scrollTop();
      if(scroll_start > (offset.top - 50)) {
          $('.navbar').css('background-color', '#01295A');
       } else {
          $('.navbar').css('background-color', 'transparent');
       }
    });
});
