'use strict'


React = require("bower_components/react/react")

Nav = require('templates/main/nav')
Home = require('templates/main/home')
Footer = require('templates/main/footer')

document.addEventListener "DOMContentLoaded", ->

  React.render(
    <Nav/>,
    document.getElementById("nav")
  )
  React.render(
    <Home/>,
    document.getElementById("main-content")
  )
  React.render(
    <Footer/>,
    document.getElementById("footer")
  )
