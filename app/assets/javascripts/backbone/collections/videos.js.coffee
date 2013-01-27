class gtvc.collections.Videos extends Backbone.Collection

  model: gtvc.models.Video

  url: 'https://www.googleapis.com/youtube/v3/videos'

  parse: (response) ->
    _(response.items).map (item) ->
      { id: item.id, title: item.snippet.title, description: item.snippet.description, thumbnail: item.snippet.thumbnails.default.url }


