
define (require) ->
  class Slider

    app: null
    $element: null

    constructor: (element, app) ->
      this.app = app
      console.log "Slider::constructor ->", element
      this.bindElement(element)
      this.setupEvents(element)

    bindElement: (element) ->
      console.log "Slider::bindElement ->", element
      this.$element = $(element)

    setupEvents: (element) ->
      console.log "Slider::setupEvents ->", element.val()

      this.$element.on 'change', (event) =>
        this.app.pane.setOpacity(element.val())


