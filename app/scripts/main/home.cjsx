'use strict'


React = require("bower_components/react/react")

Fluxxor = require("bower_components/fluxxor/build/fluxxor.min")
FluxMixin = Fluxxor.FluxMixin React
StoreWatchMixin = Fluxxor.StoreWatchMixin

HomeTemplate = require('templates/main/home')

module.exports = React.createClass
  mixins: [FluxMixin, StoreWatchMixin("RentalStore")]
  render: HomeTemplate

  getStateFromFlux: -> {}
