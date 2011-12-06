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
    board.context.arc(x, y, r, 0, Math.PI*2, true);
    board.context.closePath();
    board.context.fill();
  }
  
  void move() {
    board.clear();
    draw();
    if (x + dx > board.width || x + dx < 0)
      dx = -dx;
    if (y + dy > board.height || y + dy < 0)
      dy = -dy;
    x += dx;
    y += dy;
  }
}
