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

  smoothScroll.init(
    offset: 70
  )

  # init animation modal
  $('#open-mobilemenu').animatedModal({
    modalTarget: 'mobilemenu',
    color: '#FFF',
    animatedIn: 'bounceInDown',
    animatedOut: 'bounceOutUp',
    animationDuration: '.3s'
  })
