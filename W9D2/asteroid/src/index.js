console.log("Webpack is working!")

const MovingObject = require("./moving_object.js");
window.MovingObject = MovingObject;


window.addEventListener('DOMContentLoaded', (event) => {
  const canvas = document.getElementById("game-canvas");
  const ctx = canvas.getContext('2d');

  let mo = new MovingObject({
    pos: [30, 30],
    vel: [10, 10],
    radius: 50,
    color: "#00FF00"
  });
  mo.draw(ctx);
  window.mo = mo;
});

