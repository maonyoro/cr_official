$(document).ready () ->

  #  $('.menu-onigiri').hover(
  #    -> $(@).attr 'src', "image/menu_onigiri_on.png"
  #    -> $(@).attr 'src', "image/menu_onigiri.png"
  #  )
  $('#header').sticky({
    topSpacing: 0,
  })
  #$('#header').stick_in_parent({
  #  offset_top: -50
  #})

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
    nextArrow: '',
    #fade: true,
  })

  # init animation modal
  $('#open-mobilemenu').animatedModal({
    modalTarget: 'mobilemenu',
    color: '#FFF',
    animatedIn: 'bounceInDown',
    animatedOut: 'bounceOutUp',
    animationDuration: '.3s'
  })

  smoothScroll.init(
    offset: 70
  )

