'use strict'


React = require("bower_components/react/react")

Nav = require('scripts/main/nav')
Home = require('scripts/main/home')
Footer = require('templates/main/footer')

document.addEventListener "DOMContentLoaded", ->
  roomTypes = [
    "pr":"Private Room"
  ,
    "ep":"Entire Place"
  ,
    "sr":"Shared Room"
  ]

  React.render(
    <Nav/>,
    document.getElementById("nav")
  )
  React.render(
    <Home roomTypes={roomTypes}/>,
    document.getElementById("main-content")
  )
  React.render(
    <Footer/>,
    document.getElementById("footer")
  )
