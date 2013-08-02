# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('.hint1').css('visibility', $('table#ascii_code').data('hint1'))
  $('.hint2').css('visibility', $('table#ascii_code').data('hint2'))
