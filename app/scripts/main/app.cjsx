'use strict'

React = require("bower_components/react/react")
Personalize = require("scripts/main/personalize")

AppTemplate = require('templates/main/app')

App = React.createClass
  render: AppTemplate

document.addEventListener "DOMContentLoaded", ->


  React.render(
    <App/>,
    document.getElementById("app")
  )

  Personalize()
