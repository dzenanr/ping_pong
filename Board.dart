class Board {
  final int START_X = 0;
  final int START_Y = 0;
  final int BALL_R = 10;
  final int RACKET_W = 75;
  final int RACKET_H = 10;
  final int INTERVAL = 10;
  var intervalId;
  
  CanvasElement canvas;
  CanvasRenderingContext2D context;
  
  int width;
  int height;
  
  int dx = 2;
  int dy = 4;
  
  Ball ball;
  Racket racket;
  
  Board(CanvasElement this.canvas) {
    context = canvas.getContext("2d");
    width = canvas.width;
    height = canvas.height;
  }
  
  void init() {
    ball = new Ball(this, START_X, START_Y, BALL_R);
    racket = new Racket(this, width/2, height-RACKET_H, RACKET_W, RACKET_H);
    //call the function ball.move() every 10ms.
    intervalId = document.window.setInterval(redraw, INTERVAL);
  }
  
  void clear() {
    context.clearRect(0, 0, width, height);
  } 
  
  void redraw() {
    clear(); 
    ball.draw();
    racket.draw();
    if (ball.x + dx > width || ball.x + dx < 0)
      dx = -dx;
    if (ball.y + dy > height || ball.y + dy < 0)
      dy = -dy;
    else if (ball.y + dy > height) {
      if (ball.x > racket.x && ball.x < racket.x + racket.w)
        dy = -dy;
      else
        //game over, so stop the animation
        document.window.clearInterval(intervalId); 
    }
    ball.x += dx;
    ball.y += dy;
  }
}
