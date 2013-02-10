class Gtvclass.Models.Task extends Backbone.Model
  paramRoot: 'task'

  defaults:

class Gtvclass.Collections.TasksCollection extends Backbone.Collection
  model: Gtvclass.Models.Task
  url: '/tasks'
