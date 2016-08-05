$(document).ready(function() {

  var scroll_start = 0;
    var startchange = $('#start_change');
    var offset = startchange.offset();
    console.log(window);
    $('.profile-page').on('scroll', function() { 
      console.log("test");
      scroll_start = $(this).scrollTop();
      console.log(scroll_start);
      console.log(offset.top);
      if(scroll_start > (offset.top - 50)) {
          $('.navbar').css('background-color', '#01295A');
       } else {
          $('.navbar').css('background-color', 'transparent');
       }
    });
    $(window).on('scroll', function() { 
      console.log("test2");
      scroll_start = $(this).scrollTop();
      console.log(scroll_start);
      console.log(offset.top);
      if(scroll_start > (offset.top - 50)) {
          $('.navbar').css('background-color', '#01295A');
       } else {
          $('.navbar').css('background-color', 'transparent');
       }
    });
});

