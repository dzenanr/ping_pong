/** Table board or squash court. */
class Board {
  
  final int X = 0;
  final int Y = 0;
  final int BALL_R = 8;
  final int RACKET_W = 75;
  final int RACKET_H = 8;
  final int INTERVAL = 10;
  
  var intervalId;
  
  CanvasElement canvas;
  CanvasRenderingContext2D context;
  
  int width;
  int height;
  double startBallX;
  double startBallY;
  int dx = 2;
  int dy = 4;
  
  Ball ball;
  Racket racketNorth;
  Racket racketSouth;
  
  Board(this.canvas) {
    context = canvas.getContext("2d");
    width = canvas.width;
    height = canvas.height;
    border();
    
    startBallX = width / 2;
    startBallY = height / 2;
    document.query('#play').on.click.add((e) {
      init();
    });
    
  }
  
  void init() {
    ball = new Ball(this, startBallX, startBallY, BALL_R);
    racketNorth = new Racket(this, width/2, Y, RACKET_W, RACKET_H);
    racketSouth = new Racket(this, width/2, height-RACKET_H, RACKET_W, RACKET_H);
    // Redraw every INTERVAL ms.
    intervalId = document.window.setInterval(redraw, INTERVAL);
  }
  
  void border() {
    context.beginPath();
    context.rect(X, Y, width, height);
    context.closePath();
    context.stroke();
  } 
  
  void clear() {
    context.clearRect(X, Y, width, height);
    border();
  } 
  
  void redraw() {
    clear(); 
    
    ball.draw();
    
    // Move the north side racket if the left or the right key is currently pressed.
    if (racketNorth.rightDown) {
      if (racketNorth.x < width - X - racketNorth.w - 4) racketNorth.x += 5;
    } else if (racketNorth.leftDown) {
      if (racketNorth.x > X + 4) racketNorth.x -= 5;
    }
    racketNorth.draw();
    
    // Move the south side racket if the left or the right key is currently pressed.
    if (racketSouth.rightDown) {
      if (racketSouth.x < width - X - racketSouth.w - 4) racketSouth.x += 5;
    } else if (racketSouth.leftDown) {
      if (racketSouth.x > X + 4) racketSouth.x -= 5;
    }
    racketSouth.draw();
    
    // The ball must stay within the west and east sides.
    if (ball.x + dx > width || ball.x + dx < 0) dx = -dx;
    
    // The north side.
    if (ball.y + dy < 0) {
      if (ball.x > racketNorth.x && ball.x < racketNorth.x + racketNorth.w) {
        dy = -dy; 
      } else {
        // The ball hit the north side but outside the racket - game over, so stop the animation.
        document.window.clearInterval(intervalId);
      }
    }
    
    // The south side.
    if (ball.y + dy > height) {
      if (ball.x > racketSouth.x && ball.x < racketSouth.x + racketSouth.w) {
        dy = -dy;
      } else {
        // The ball hit the south side but outside the racket - game over, so stop the animation.
        document.window.clearInterval(intervalId); 
      }
    }
    
    ball.x += dx;
    ball.y += dy;
  }
  
}
