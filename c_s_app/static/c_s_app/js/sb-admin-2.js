(function($) {
  "use strict"; // Start of use strict

  // Toggle the side navigation
  $("#sidebarToggle, #sidebarToggleTop").on('click', function(e) {
    $("body").toggleClass("sidebar-toggled");
    $(".sidebar").toggleClass("toggled");
    if ($(".sidebar").hasClass("toggled")) {
      $('.sidebar .collapse').collapse('hide');
    };
  });

  // Close any open menu accordions when window is resized below 768px
  $(window).resize(function() {
    if ($(window).width() < 768) {
      $('.sidebar .collapse').collapse('hide');
    };
  });

  // Prevent the content wrapper from scrolling when the fixed side navigation hovered over
  $('body.fixed-nav .sidebar').on('mousewheel DOMMouseScroll wheel', function(e) {
    if ($(window).width() > 768) {
      var e0 = e.originalEvent,
          delta = e0.wheelDelta || -e0.detail;
      this.scrollTop += (delta < 0 ? 1 : -1) * 30;
      e.preventDefault();
    }
  });

  // Scroll to top button appear
  $(document).on('scroll', function() {
    var scrollDistance = $(this).scrollTop();
    if (scrollDistance > 100) {
      $('.scroll-to-top').fadeIn();
    } else {
      $('.scroll-to-top').fadeOut();
    }
  });

  // Smooth scrolling using jQuery easing
  $(document).on('click', 'a.scroll-to-top', function(e) {
    var $anchor = $(this);
    $('html, body').stop().animate({
      scrollTop: ($($anchor.attr('href')).offset().top)
    }, 1000, 'easeInOutExpo');
    e.preventDefault();
  });



  // add field with camera name
  let buttonAddCamera = $('#add_cam');
  let camerasBlock = $('.cameras');
  buttonAddCamera.on('click', function (event) {
    event.preventDefault();  // blocks the POST method on currently button
    let newElement = camerasBlock.children().eq(0).clone();
    if (camerasBlock.children().length < 20) {
      camerasBlock.append(newElement);
    }
  });


  // delete last field with ingredient/quantity/unit
  let buttonDelCamera = $('#del_cam');
  buttonDelCamera.on('click', function (event) {
    event.preventDefault();  // blocks the POST method on currently button
    let camerasBlock = $('.cameras');
    if (camerasBlock.children().length > 1) {
      camerasBlock.children().eq(-1).detach()
    }
  });


  // real-time progress
  let progressField = $('#progress');
  let textProgressField = progressField.text();
  let numbProgress = textProgressField.slice(0,textProgressField.length-1);
  let request_pk = $('#request_id').text();
  let checkProcess = true;

  while (checkProcess) {
    if ((numbProgress >= 0) && (numbProgress <= 100)){
      //  запрос на ajax, получаем прогресс = numbProgress, вставляем в поле
      checkProcess = false;
      $.ajax({
        url: '/ajax/progress/',
        data: {
          'request_pk': request_pk,
          'curr_progress': numbProgress
        },
        dataType: 'json',
        success: function (data) {
          console.log('получен ответ ajax:');
          console.log(data.progress);
          $('#progress').text(data.progress + ' %')
          numbProgress = data.progress
        }
      });
    }
    else {
      //  вставляем в поле ссылку на страницу с результатом
      checkProcess = false;
      // $('#progress').attr('href', 'index'); - добавить ссылку на нужную страницу
      $('#progress').text('Запрос обработан')
    }
  }
  setTimeout(function(){
    $('#progress').text('');
    let linkResult = '<a href="/request_result/' + request_pk + '">Запрос обработан</a>'
    $('#progress').append(linkResult)  // вместо index вставить сылку с ID запроса
  }, 2000);


  // $(document).ready(function() {
  //   $('a.myLinkModal').click( function(event){
  //     event.preventDefault();
  //     $('#myOverlay').fadeIn(297, function(){
  //
  //       $('#myModal')
  //       // $(this).prev()
  //           .css('display', 'block')
  //           .animate({opacity: 1}, 198);
  //     });
  //   });
  //
  //   $('#myModal__close, #myOverlay').click( function(){
  //     $('#myModal').animate({opacity: 0}, 198, function(){
  //       $(this).css('display', 'none');
  //       $('#myOverlay').fadeOut(297);
  //     });
  //   });
  // });
  $(document).ready(function() {
    $('a.myLinkModal').click( function(event){
      event.preventDefault();
      $(this).next().next().fadeIn(297, function(){

        // $('.myModal')
        $(this).prev()
            .css('display', 'block')
            .animate({opacity: 1}, 198);
      });
    });

    $('.myModal__close, .myOverlay').click( function(){
      $('.myModal').animate({opacity: 0}, 198, function(){
        $(this).css('display', 'none');
        $('.myOverlay').fadeOut(297);
      });
    });
  });

// --------------------------- Карусель начало -------------------------------

// --------------------------- Карусель конец -------------------------------
















})(jQuery); // End of use strict
