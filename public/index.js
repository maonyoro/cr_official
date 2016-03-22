(function() {
  $(document).ready(function() {
    $('#header').sticky({
      topSpacing: 0
    });
    smoothScroll.init({
      offset: 70
    });
    return $('#open-mobilemenu').animatedModal({
      modalTarget: 'mobilemenu',
      color: '#FFF',
      animatedIn: 'bounceInDown',
      animatedOut: 'bounceOutUp',
      animationDuration: '.3s'
    });
  });

}).call(this);
