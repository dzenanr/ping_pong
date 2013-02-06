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
    document.onKeyDown.listen(onKeyDown);
    document.onKeyUp.listen(onKeyUp);
    document.onMouseMove.listen(onMouseMove);
  }

  void draw() {
    board.context.beginPath();
    board.context.rect(x, y, w, h);
    board.context.closePath();
    board.context.fill();
  }

  // Set rightDown or leftDown if the right or left keys are down.
  void onKeyDown(event) {
    if (event.keyCode == 39) {
      rightDown = true;
    } else if (event.keyCode == 37) {
      leftDown = true;
    }
  }

  // Unset rightDown or leftDown when the right or left key is released.
  void onKeyUp(event) {
    if (event.keyCode == 39) {
      rightDown = false;
    } else if (event.keyCode == 37) {
      leftDown = false;
    }
  }

  // Change a position of a racket with the mouse left or right mouvement.
  void onMouseMove(event) {
    if (event.pageX > board.X && event.pageX < board.width) {
      x = event.pageX - board.X - w/2;
      if (x < board.X) x = board.X;
      if (x > board.width - w) x = board.width - w;
    }
  }

}
