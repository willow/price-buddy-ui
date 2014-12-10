'use strict'


React = require("bower_components/react/react")
Fluxxor = require("bower_components/fluxxor/build/fluxxor.min")

Nav =  require('scripts/main/nav')
Home = require('scripts/main/home')
Footer = require('templates/main/footer')

RentalStore = require('scripts/rental/store')
RentalActions = require('scripts/rental/actions')

stores =
  RentalStore: new RentalStore()

flux = new Fluxxor.Flux(stores, RentalActions);

flux.on "dispatch", (type, payload) ->
  console.log "[Dispatch]", type, payload  if console and console.log



document.addEventListener "DOMContentLoaded", ->
  roomTypes = [
    "pr":"Private Room"
  ,
    "ep":"Entire Place"
  ,
    "sr":"Shared Room"
  ]

  guestCounts = [
    "1":"1 Guest"
  ,
    "2":"2 Guests"
  ]

  React.render(
    <Nav/>,
    document.getElementById("nav")
  )
  React.render(
    <Home flux={flux} roomTypes={roomTypes} guestCounts={guestCounts}/>,
    document.getElementById("main-content")
  )
  React.render(
    <Footer/>,
    document.getElementById("footer")
  )
