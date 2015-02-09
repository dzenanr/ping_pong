part of ping_pong;

class Ball {
  Board board;

  int x;
  int y;
  int r;
  int dx = 2;
  int dy = 4;

  Ball(this.board, this.x, this.y, this.r) {
    draw();
  }

  void draw() {
    board.context.beginPath();
    board.context.arc(x, y, r, 0, PI*2, true);
    board.context.closePath();
    board.context.fill();
  }

  void move() {
    //board.clear();
    board.context.beginPath();
    board.context.arc(x, y, r, 0, PI*2, true);
    board.context.closePath();
    board.context.fill();
    x += dx;
    y += dy;
  }
}
