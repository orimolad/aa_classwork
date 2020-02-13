class View {
  constructor(game, $el) {
    this.$el = $el;
    this.game = game;
    this.setupBoard();
    this.bindEvents();

  }

  bindEvents() {

    $('.square').click(() => {
      $(event.target).toggleClass('clicked');
      this.makeMove($(event.target));
    });
    
  }

  makeMove($square) {
    const pos = $square.data('pos');
    this.game.playMove(pos);
    
    if (this.game.currentPlayer === "o"){// is circle
      $square.addClass("circle").text("O");
    } else{
      $square.addClass("x").text("x");

    }
    if (this.game.winner()) {
      window.setTimeout( () => {
        alert(`${this.game.currentPlayer} won!`)
      },  1000);
    }
  }
     
  setupBoard() {
    console.log("in here")
    const $grid = $('<ul>').addClass('grid');
    for(let colIdx = 0; colIdx < 9; colIdx++){
      const row = Math.floor(colIdx / 3);
      const col = colIdx % 3;
      const $square = $('<li>').addClass('square').data('pos', [row, col]);
      // .attr('data-pos', [])
      $grid.append($square);

    }

    this.$el.append($grid);


  }

  
}

module.exports = View;
