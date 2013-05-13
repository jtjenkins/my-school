# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->

  if location.pathname is "/"
    $("#home").addClass("active")
  else if location.pathname is "/about"
    $("#about").addClass("active")
  else if location.pathname is "/pricing"
    $("#pricing").addClass("active")
  else if location.pathname is "/signup"
    $("#signup").addClass("active")
  else if location.pathname is "/login"
    $("#login").addClass("active")