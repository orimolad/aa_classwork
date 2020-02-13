const MovingObject = require("./moving_object.js");

function Asteroid(options) {
  this.pos = options.pos
  this.vel = Util.randomVec(1) // what is length?
  this.COLOR = 'blue'
  this.RADIUS = 25
}
Utils.inherits(Asteroid, MovingObject)