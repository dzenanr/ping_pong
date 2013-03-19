part of ping_pong;

class Board {
  CanvasElement canvas;
  CanvasRenderingContext2D context;

  num width;
  num height;

  Board(CanvasElement this.canvas) {
    context = canvas.getContext("2d");
    width = canvas.width;
    height = canvas.height;
  }

  void init() {
    Ball ball = new Ball(this, 0, 0, 10);
    //move() called every 10ms.
    new Timer.periodic(const Duration(milliseconds: 10), (t) => ball.move());
  }

  void clear() {
    context.clearRect(0, 0, width, height);
  }
}
