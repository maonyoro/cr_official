$(window).scroll ->
  if $(@).scrollTop() > 100
    $('.menubutton').fadeIn()
  else
    $('.menubutton').fadeOut()


$(document).ready () ->

  # input要素クリック→コピーできるよう全選択状態に
  $('.copyable').on 'click', (e) ->
    e.target.setSelectionRange(0, e.target.value.length)

  # リンクを強制的に target="_blank" に
  $("a[href^='http']:not([href*='" + location.hostname + "'])").attr('target', '_blank')

  # メニューボタン
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

  # Slick.js(カルーセル)
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

  # close lightbox(bootstrap modal)
  $('.closebutton').on 'click', ->
    $(@).parents().modal('hide')

  smoothScroll.init(
    offset: 0
  )

