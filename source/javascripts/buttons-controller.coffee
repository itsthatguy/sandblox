
define ['button'], (Button) ->

  class ButtonsController

    app: null
    buttons: []

    constructor: (app) ->
      console.log "Buttons::constructor -> Button Controller"
      this.app = app
      this.createButtons()

    createButtons: ->
      $.each $('.button'), (i, element) =>
        button = new Button(element, this.app)
        this.buttons.push button
