Reflux = require("bower_components/reflux/dist/reflux")
Actions = require('scripts/rental/actions')


rentalPriceStore = Reflux.createStore(
  # Initial setup
  init: ->

    # Register statusUpdate action
    @listenTo Actions.loadRentalEstimate, @loadRentalEstimate


# Callback
  loadRentalEstimate: (data) ->
    console.log data
)

rentalDetailsStore = Reflux.createStore(
  getInitialState: ->
    roomTypes:
      "pr": "Private Room"
      "ep": "Entire Place"
      "sr": "Shared Room"
    guestCounts:
      "1": "1 Guest"
      "2": "2 Guests"
)

module.exports =
  rentalPriceStore: rentalPriceStore
  rentalDetailsStore: rentalDetailsStore
