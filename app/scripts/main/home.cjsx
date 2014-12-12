'use strict'


React = require("bower_components/react/react")
Reflux = require("bower_components/reflux/dist/reflux")

HomeTemplate = require('templates/main/home')
RentalStores = require('scripts/rental/stores')

module.exports = React.createClass
  mixins: [Reflux.ListenerMixin]

  getInitialState: ->
    details: RentalStores.rentalDetailsStore.getInitialState()

  componentDidMount: ->
    @listenTo RentalStores.rentalPriceStore, @onRentalPriceStoreChange

  onRentalPriceStoreChange: (rentalPriceData) ->
    console.log ' on price change '
    console.log rentalPriceData

  handleSubmit: (e) ->
    e.preventDefault()

  render: HomeTemplate
