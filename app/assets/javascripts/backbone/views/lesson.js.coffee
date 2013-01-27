class gtvc.views.Lesson extends Backbone.View

  events:
    keydown: 'onKeyDown'

  initialize: ->
    @player = @options.player
    @carousel = @options.carousel

  render: ->
    views = [@player, @carousel]
    @$el.append _(views).pluck('el')
    _(views).invoke('render')
    @

  onKeyDown: (event) =>
    event ||= @context.event
    switch (event.keyCode)
      # Left, Prev
      when 37, 177 then alert('Left')
      # Right, Next
      when 39, 176 then alert('Right')
      # Enter, Play/Pause
      when 13, 179
        @player.play @carousel.selectedVideo()
      # Stop
      when 178 then alert('Stop')

