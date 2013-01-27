class gtvc.views.Player extends Backbone.View

  initialize: ->
    videoId = @options.videoId
    context = @options.context
    tag = document.createElement 'script'
    tag.src = '//www.youtube.com/iframe_api'
    firstScriptTag = document.getElementsByTagName('script')[0]
    firstScriptTag.parentNode.insertBefore(tag, firstScriptTag)
    context.onYouTubeIframeAPIReady = =>
      new YT.Player @el.id,
        height: '390'
        width: '640'
        videoId: videoId
        events:
          onReady: @onPlayerReady

   onPlayerReady: (event) ->
     event.target.playVideo()

