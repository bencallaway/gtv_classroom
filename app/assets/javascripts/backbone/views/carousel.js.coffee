class gtvc.views.Carousel extends Backbone.View

  className: 'carousel'

  initialize: ->
    @itemView = @options.itemView

  render: ->
    views = @collection.map (video) =>
      new @itemView model: video
    views = _.chain(views).invoke('render').pluck('el').value()
    @$el.append views
    @

