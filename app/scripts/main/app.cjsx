'use strict'

React = require("bower_components/react/react")

AppTemplate = require('templates/main/app')

App = React.createClass
  render: AppTemplate

document.addEventListener "DOMContentLoaded", ->


  React.render(
    <App/>,
    document.getElementById("app")
  )
