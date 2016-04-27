$(window).scroll ->
  if $(@).scrollTop() > 100
    $('.menubutton').fadeIn()
  else
    $('.menubutton').fadeOut()


$(document).ready () ->

  #  $('.menu-onigiri').hover(
  #    -> $(@).attr 'src', "image/menu_onigiri_on.png"
  #    -> $(@).attr 'src', "image/menu_onigiri.png"
  #  )
  $('button.navbar-toggle').on 'click', ->
    $('.navbar-header').toggleClass('menuisactive')
    if $('.menubutton').hasClass('glyphicon-menu-down')
      $('.menubutton').addClass('glyphicon-remove-circle')
      $('.menubutton').removeClass('glyphicon-menu-down')
    else
      $('.menubutton').addClass('glyphicon-menu-down')
      $('.menubutton').removeClass('glyphicon-remove-circle')

  $('#gnavi a').on 'click', ->
    $('button.navbar-toggle').click()

  #$('#header').sticky({
  #  topSpacing: 0,
  #})
  #$('#header').stick_in_parent({
  #  offset_top: -50
  #})

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
    nextArrow: '',
    #fade: true,
  })

  $('.closebutton').on 'click', ->
    $(@).parents('.profile').modal('hide')

  # init animation modal
  #$('#open-mobilemenu').animatedModal({
  #  modalTarget: 'mobilemenu',
  #  color: '#FFF',
  #  animatedIn: 'bounceInDown',
  #  animatedOut: 'bounceOutUp',
  #  animationDuration: '.3s'
  #})

  smoothScroll.init(
    offset: 70
  )

