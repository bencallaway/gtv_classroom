class gtvc.views.Thumbnail extends Backbone.View

  render: ->
    console.log 'yo'
    url = @model.get 'thumbmail'
    @$el.html "<img src='#{url}' />"
    @

