
define (require) ->
  class Button

    app: null
    $element: null
    color: null

    constructor: (element, app) ->
      # console.log "Button::constructor -> You just created a new Button!", element
      this.app = app
      this.bindElement(element)
      this.setupEvents()

    bindElement: (element) ->
      this.$element = $(element)
      this.color = this.$element.css("background-color")

    setColor: (color) ->
      this.color = color
      this.$element.css("background-color", color)
      this.setName(color)

    setName: (name) ->
      this.$element.text(name)

    setupEvents: ->
      this.$element.on 'click', (event) =>
        # console.log "Button::setupEvents -> you just clicked on", _self.$element, this
        thisEl = event.target
        this.app.pane.setBackground(this.color)
        console.log "this ==", this



