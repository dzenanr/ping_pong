part of ping_pong;

class Racket {

  Board board;

  num x;
  num y;
  num w;
  num h;

  bool rightDown = false;
  bool leftDown = false;

  Racket(this.board, this.x, this.y, this.w, this.h) {
    draw();
    document.onKeyDown.listen(_onKeyDown);
    document.onKeyUp.listen(_onKeyUp);
    document.onMouseMove.listen(_onMouseMove);
  }

  void draw() {
    board.context.beginPath();
    board.context.rect(x, y, w, h);
    board.context.closePath();
    board.context.fill();
  }

  //set rightDown or leftDown if the right or left keys are down
  _onKeyDown(event) {
    if (event.keyCode == 39) { rightDown = true;
    } else if (event.keyCode == 37) leftDown = true;
  }

  //and unset them when the right or left key is released
  _onKeyUp(event) {
    if (event.keyCode == 39) { rightDown = false;
    } else if (event.keyCode == 37) leftDown = false;
  }

  _onMouseMove(event) {
    if (event.pageX > Board.X && event.pageX < board.width) {
      x = event.pageX - Board.X - w/2;
      if (x < Board.X) x = Board.X;
      if (x > board.width - w) x = board.width - w;
    }
  }

}
