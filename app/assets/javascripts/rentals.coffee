# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#

$('header')[0].style.fontSize = "15px"

$(document).ready ->
  $(document).on 'click', '.destroy', ->
    $.ajax(
      method: 'delete',
      url: "rentals/#{$(@).closest('.rental_row').data('id')}"
      dataType: 'json'
    ).done ->
      $('.rental_row').remove()
