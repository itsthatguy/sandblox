# Nothing to see here
#= require "bower_components/requirejs/require"
#= require "bower_components/jquery/jquery"
#= require "bower_components/jquery-color/jquery.color"

requirejs.config
  baseUrl: '/javascripts'

require [
  'buttons-controller'
  'button',
  'pane',
  'slider'], (ButtonsController, Button, Pane, Slider) ->

  class App

    buttonsController: null
    pane: null
    slider: null

    constructor: ->
      app = this

      # Controllers
      this.buttonsController = new ButtonsController(app)

      # Main Views
      this.pane = new Pane($('.pane'), app)
      this.slider = new Slider($('.slider'), app)


  $ -> window.App = new App()
