# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

nbits = 0
type = 'card'
bits = []

setSrc = (index, file_name) ->
  ->
    #alert(this.src)
    if /-0.png/.test(this.src)
      this.src = "/assets/" + file_name
      bits[index] = 1
    else
      this.src = "/assets/" + type + "-0.png"
      bits[index] = 0
    # alert(this.src)
    $('#card-sum').html(calcSum(nbits))
    @

calcSum = ->
  sum = 0
  for i in [0..(nbits-1)]
    num = Math.pow(2,nbits-1-i)
    sum = sum + bits[i] * num
  sum

$ ->
  nbits = $('table#cards').data('nbits')
  type = $('table#cards').data('type')
  $('.hint1').css('visibility', $('table#cards').data('hint1'))
  $('.hint2').css('visibility', $('table#cards').data('hint2'))
  for i in [0..(nbits-1)]
    num = Math.pow(2,nbits-1-i)
    name = 'card-' + num
    id = '#' + name
    if type == 'card'
      file_name = name + '.png'
    else
      file_name = type + '-1.png'
    # alert(num + ',' + id + ',' + file_name)
    $(id).click(setSrc(i, file_name))
    bits[i] = 0
    @
