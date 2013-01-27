class gtvc.views.Player extends Backbone.View

  initialize: ->
    @$el.attr('id', 'player') unless @el.id
    @context = @options.context
    @_deferred = $.Deferred()
    @load = @_deferred.promise()

  render: ->
    @ytPlayer = new YT.Player @el,
      playerVars:
        controls: 0
      events:
        onReady: @onPlayerReady
        onStateChange: @options.onPlayerStateChange

   onPlayerReady: (event) =>
     @_deferred.resolve()

  play: (video) ->
    @load.done =>
      @ytPlayer.loadVideoById video.id

