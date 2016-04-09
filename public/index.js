(function() {
  $(document).ready(function() {
    $('#header').sticky({
      topSpacing: 0
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
