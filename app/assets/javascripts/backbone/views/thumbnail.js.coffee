class gtvc.views.Thumbnail extends Backbone.View

  render: ->
    url = @model.get 'thumbnail'
    @$el.html "<img src='#{url}' />"
    @

