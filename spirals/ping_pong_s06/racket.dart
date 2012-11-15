class Racket {
  Board board;

  num x;
  num y;
  num w;
  num h;

  Racket(this.board, this.x, this.y, this.w, this.h) {
    draw();
  }

  void draw() {
    board.context.beginPath();
    board.context.rect(x, y, w, h);
    board.context.closePath();
    board.context.fill();
  }

}
