class gtvc.views.AnswerButton extends Backbone.View

  events:
    click: 'onClick'

  render: ->
    @$el.html "<a class='tall color #{@model.get('value')} button' />"
    @

  onClick: =>
    @model.save()

