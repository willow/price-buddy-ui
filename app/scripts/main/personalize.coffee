'use strict'

React = require("bower_components/react/react")

state =
  "wifi": true
  "tv": false

module.exports = ->
  stateful = document.querySelectorAll("[data-personalize-state]")
  [].forEach.call(stateful, (el) ->
    el.checked = true if state[el.name]
  )
