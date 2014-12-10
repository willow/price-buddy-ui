Fluxxor = require("bower_components/fluxxor/build/fluxxor.min")
constants = require('scripts/rental/constants')

load = (success, fail)->
  success(50.0)

actions =
  loadBuzz: ->
    @dispatch constants.LOAD_RENTAL_ESTIMATE

    loadRentalEstimateSuccess = ((payload) ->
      @dispatch constants.LOAD_RENTAL_ESTIMATE_SUCCESS, payload: payload
    ).bind(this)

    loadRentalEstimateFail = ((error) ->
      @dispatch constants.LOAD_RENTAL_ESTIMATE_FAIL, error: error
    ).bind(this)

    load loadRentalEstimateSuccess, loadRentalEstimateFail

