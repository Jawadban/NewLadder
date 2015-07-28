# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


console.log "hi"

$(document).on "page:change", ->
  console.log "page change"
  $("#ad_make_copy").on "click", ->
    console.log "clicked"
    $(".ad_existing_copy").toggle()
  $("#ad_make_image").on "click", ->
    console.log "clicked"
    $(".show-me-image").toggle()