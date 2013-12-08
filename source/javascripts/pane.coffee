
define (require) ->
  class Pane

    $element: null

    constructor: (element) ->
      # console.log "Pane::constructor -> You just created a new Pane!", element
      this.bindElement(element)
      this.setupEvents()

    bindElement: (element) ->
      this.$element = $(element)

    setupEvents: ->
      _self = this
      this.$element.on 'click', (event) ->
        # console.log "Pane::setupEvents -> you just clicked on", _self.$element, this

    setBackground: (color) ->
      this.$element.animate
        "background-color": color

    setOpacity: (value) ->
      console.log "Pane::setOpacity ->", value
      value = value / 10
      this.$element.animate({opacity: value})

