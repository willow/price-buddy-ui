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
    bedroomCounts:
      "1": "1 Bedroom"
      "2": "2 Bedrooms"
      "3": "3 Bedrooms"
      "4": "4 Bedrooms"
      "5": "5 Bedrooms"
      "6": "6 Bedrooms"
      "7": "7 Bedrooms"
      "8": "8 Bedrooms"
      "9": "9 Bedrooms"
      "10": "10 Bedrooms"
    bathroomCounts:
      "0": "0 Bathrooms"
      ".5": ".5 Bathrooms"
      "1": "1 Bathrooms"
      "1.5": "1.5 Bathrooms"
      "2": "2 Bathrooms"
      "2.5": "2.5 Bathrooms"
      "3": "3 Bathrooms"
      "3.5": "3.5 Bathrooms"
      "4": "4 Bathrooms"
      "4.5": "4.5 Bathrooms"
    bedCounts:
      "1": "1 Bed"
      "2": "2 Beds"
      "3": "3 Beds"
      "4": "4 Beds"
      "5": "5 Beds"
      "6": "6 Beds"
      "7": "7 Beds"
    amenities:
      "wifi": "Wireless Internet"
      "tv": "TV"
      "kitchen": "Kitchen"
)

module.exports =
  rentalPriceStore: rentalPriceStore
  rentalDetailsStore: rentalDetailsStore
