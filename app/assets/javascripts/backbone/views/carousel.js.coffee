class gtvc.views.Carousel extends Backbone.View

  className: 'carousel'

  initialize: ->
    @itemView = @options.itemView
    @selected = 0
    @slides = @collection.map (video) =>
      new @itemView model: video
    @$el.append _(@slides).pluck('el')

  render: ->
    _(@slides).invoke('render')
    @select @selected
    @

  select: (index) ->
    @$('> div')
      .removeClass('selected')
      .eq(index).addClass('selected')
    @selected = index

  lastIndex: ->
    length = @$('> div').length
    length and @$('> div').length - 1

  next: ->
    index = if @selected != @lastIndex() then @selected + 1 else @selected
    @select index

  previous: ->
    index = if @selected != 0 then @selected - 1 else @selected
    @select index

  selectedVideo: ->
    @slides[@selected].model

