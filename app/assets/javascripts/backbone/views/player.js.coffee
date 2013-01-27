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

  toggle: (video) ->
    @load.done =>
      if @model.get('id') != video.get('id')
        @model.set video.toJSON()
        @ytPlayer.loadVideoById @model.get('id')
        return
      if @ytPlayer.getPlayerState() == YT.PlayerState.PLAYING
        @ytPlayer.pauseVideo()
      else
        @ytPlayer.playVideo()

  stop: ->
    @load.done =>
      @ytPlayer.stopVideo()
