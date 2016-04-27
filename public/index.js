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
    $('.slider').slick({
      dots: false,
      infinite: true,
      cssEase: 'ease-in',
      accessibility: false,
      speed: 600,
      autoplay: true,
      autoplaySpeed: 5000,
      pauseOnHover: true,
      swipe: true,
      arrow: false,
      prevArrow: '',
      nextArrow: ''
    });
    $('.closebutton').on('click', function() {
      return $(this).parents('.profile').modal('hide');
    });
    return smoothScroll.init({
      offset: 70
    });
  });

}).call(this);
