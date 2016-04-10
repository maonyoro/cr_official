(function() {
  $(window).scroll(function() {
    if ($(this).scrollTop() > 100) {
      return $('.menubutton').fadeIn();
    } else {
      return $('.menubutton').fadeOut();
    }
  });

  $(document).ready(function() {
    $('button.navbar-toggle').on('click', function() {
      $('.navbar-header').toggleClass('menuisactive');
      if ($('.menubutton').hasClass('glyphicon-menu-down')) {
        $('.menubutton').addClass('glyphicon-remove-circle');
        return $('.menubutton').removeClass('glyphicon-menu-down');
      } else {
        $('.menubutton').addClass('glyphicon-menu-down');
        return $('.menubutton').removeClass('glyphicon-remove-circle');
      }
    });
    $('#gnavi a').on('click', function() {
      return $('button.navbar-toggle').click();
    });
    $('button #checkButton').on('click', function() {
      console.log("c");
      return $('body').animate({
        scrollTop: $('#ticket').offset().top
      });
    });
    $('.slider').slick({
      dots: true,
      infinite: true,
      cssEase: 'ease-in',
      speed: 600,
      autoplay: true,
      autoplaySpeed: 10000,
      pauseOnHover: true,
      swipe: true,
      arrow: false,
      prevArrow: '',
      nextArrow: ''
    });
    $('#open-mobilemenu').animatedModal({
      modalTarget: 'mobilemenu',
      color: '#FFF',
      animatedIn: 'bounceInDown',
      animatedOut: 'bounceOutUp',
      animationDuration: '.3s'
    });
    return smoothScroll.init({
      offset: 70
    });
  });

}).call(this);
