class Ball {
  Board board;

  int x;
  int y;
  int r;

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
