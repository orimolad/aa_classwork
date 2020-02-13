const View = require("./ttt-view.js") // require appropriate file
const Game = require("./game")// require appropriate file

  $(() => {
    const game = new Game();
    const $ttt = $('.ttt');
    const view = new View(game, $ttt);




    // const view = new View();

    // Your code here
  });
