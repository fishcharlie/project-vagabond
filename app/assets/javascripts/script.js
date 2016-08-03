$(document).ready(function() {

  var scroll_start = 0;
    var startchange = $('#startchange');
    var offset = startchange.offset();
    $(document).scroll(function() { 
      scroll_start = $(this).scrollTop();
      if(scroll_start > offset.top) {
          $('.navbar_default').css('background-color', 'black');
       } else {
          $('.navbar_default').css('background-color', 'transparent');
       }
    });
});
