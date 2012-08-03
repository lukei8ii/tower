# @mixin
Tower.Controller.Helpers =
  ClassMethods:
    helper: (object) ->
      @helpers().push(object)

    helpers: ->
      @metadata().helpers

    layout: (layout) ->
      @metadata().layout = layout

  InstanceMethods:
    layout: ->
      layout = @constructor.metadata().layout
      if typeof(layout) == 'function' then layout.call(@) else layout

module.exports = Tower.Controller.Helpers