part of ping_pong;

class Ball {

  Board board;

  num x;
  num y;
  num r;

  Ball(this.board, this.x, this.y, this.r) {
    draw();
  }

  void draw() {
    board.context.beginPath();
    board.context.arc(x, y, r, 0, PI*2, true);
    board.context.closePath();
    board.context.fill();
  }

}
