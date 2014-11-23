'use strict'


React = require("bower_components/react/react")
nav = React.createClass
  render: ->
    <nav id="main-nav" className="navbar navbar-default navbar-fixed-top">
      <div className="container">
        <div className="navbar-header"><a href="../" className="navbar-brand">PriceBuddy</a>
          <button type="button" data-toggle="collapse" data-target="#navbar-main" className="navbar-toggle"><span className="icon-bar"></span><span className="icon-bar"></span><span className="icon-bar"></span></button>
        </div>
        <div id="navbar-main" className="navbar-collapse collapse">
          <ul className="nav navbar-nav navbar-right">
            <li><a ui-sref="recommendations">About</a></li>
            <li><a ui-sref="mybooks">Listings</a></li>
            <li><a ui-sref="mybooks">Cities</a></li>
            <li><a ui-sref="mybooks">Contact</a></li>
          </ul>
        </div>
      </div>
    </nav>

module.exports = nav
