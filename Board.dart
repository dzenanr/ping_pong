class Board {
  CanvasElement canvas;
  CanvasRenderingContext2D context;
  
  int width;
  int height;
  
  Board(CanvasElement this.canvas) {
    context = canvas.getContext("2d");
    width = canvas.width;
    height = canvas.height;
  }
  
  void init() {
    Ball ball = new Ball(this, 0, 0, 10);
    //call the function ball.move() every 10ms.
    document.window.setInterval(ball.move, 10);
  }
  
  void clear() {
    context.clearRect(0, 0, width, height);
  } 
}
