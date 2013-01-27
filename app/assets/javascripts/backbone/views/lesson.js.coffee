class gtvc.views.Lesson extends Backbone.View

  events:
    keydown: 'onKeyDown'

  initialize: ->
    @player = @options.player
    @carousel = @options.carousel
    @modal = @options.modal

  render: ->
    views = [@modal, @player, @carousel]
    @$el.append _(views).pluck('el')
    _(views).invoke('render')
    @

  onKeyDown: (event) =>
    event ||= @context.event
    switch (event.keyCode)
      # Left, Prev
      when 37, 177
        @carousel.previous()
      # Right, Next
      when 39, 176
        @carousel.next()
      # Enter, Play/Pause
      when 13, 179
        @player.toggle @carousel.selectedVideo()
      # Stop
      when 178
        @player.stop()

