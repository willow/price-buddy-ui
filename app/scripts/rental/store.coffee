Fluxxor = require("bower_components/fluxxor/build/fluxxor.min")
constants = require('scripts/rental/constants')

RentalStore = Fluxxor.createStore

  initialize: ->
    @bindActions(
      constants.LOAD_RENTAL_ESTIMATE, @onLoadRentalEstimate,
      constants.LOAD_RENTAL_ESTIMATE_SUCCESS, @onLoadRentalEstimateSuccess,
      constants.LOAD_RENTAL_ESTIMATE_FAIL, @onLoadRentalEstimateFail
    )

  onLoadRentalEstimate: ->
    this.loading = true
    this.emit "change"

  onLoadRentalEstimateSuccess: (payload) ->
    payload.todo.complete = not payload.todo.complete
    @emit "change"

  onLoadRentalEstimateFail: (payload) ->
    @todos = @todos.filter((todo) ->
      not todo.complete
    )
    @emit "change"

  getState: ->
    todos: @todos

module.exports = RentalStore
