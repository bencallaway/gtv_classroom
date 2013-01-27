class gtvc.views.Modal extends Backbone.View

  className: 'modal'

  initialize: ->
    @flagCount = $('<h2 />')
    @answerList = $('<ul />')
    @$el.append [@flagCount, @answerList]
    @flags = @options.flags
    @answers = @options.answers

  render: ->
    @flagCount.html "#{@flags.length} requested a review." 
    red = @answers.where value: 'red'
    yellow = @answers.where value: 'yellow'
    blue = @answers.where value: 'blue'
    green = @answers.where value: 'green'
    listItems = _([red, yellow, blue, green]).map (collection) ->
      $('<li />').width(collection.length * 10).html(collection.length)
    @answerList.html listItems
    @
