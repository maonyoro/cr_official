$(document).ready () ->

  #  $('.menu-onigiri').hover(
  #    -> $(@).attr 'src', "image/menu_onigiri_on.png"
  #    -> $(@).attr 'src', "image/menu_onigiri.png"
  #  )

  smoothScroll.init(
    offset: 130
  )
