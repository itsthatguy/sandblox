# Nothing to see here
#= require "bower_components/jquery/jquery"
#= require "bower_components/angular/angular"
#= require "bower_components/angular-ui/build/angular-ui"
#= require "bower_components/jquery-waypoints/waypoints"
#= require "angular/waypoints"


class Main
  constructor: () ->
    # @setupFoundation()

  setupFoundation: () ->
    $(document).foundation
      index : 0,
      custom_back_text: true,
      back_text: 'Back',
      is_hover: true,
      scrolltop : true,
      init : false


window.Main = new Main()
