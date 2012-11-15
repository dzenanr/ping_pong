// table board or squash court
class Board {

  final X = 0;
  final Y = 0;
  final num START_BALL_X = 150;
  final num START_BALL_Y = 150;
  final num BALL_R = 8;
  final num RACKET_W = 75;
  final num RACKET_H = 10;
  final num INTERVAL = 12;

  Timer timer;

  CanvasElement canvas;
  CanvasRenderingContext2D context;

  num width;
  num height;

  num dx = 2;
  num dy = 4;

  Ball ball;
  Racket racketNorth;
  Racket racketSouth;

  Board(this.canvas) {
    context = canvas.getContext("2d");
    width = canvas.width;
    height = canvas.height;
    init();
  }

  void init() {
    ball = new Ball(this, START_BALL_X, START_BALL_Y, BALL_R);
    racketNorth = new Racket(this, width/2, Y, RACKET_W, RACKET_H);
    racketSouth = new Racket(this, width/2, height-RACKET_H, RACKET_W, RACKET_H);
    //redraw every INTERVAL ms
    timer = new Timer.repeating(INTERVAL, (t) => redraw());
    border();
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

    //move the north side racket if the left or the right key is currently pressed
    if (racketNorth.rightDown) { racketNorth.x += 5;
    } else if (racketNorth.leftDown) racketNorth.x -= 5;
    racketNorth.draw();

    //move the south side racket if the left or the right key is currently pressed
    if (racketSouth.rightDown) { racketSouth.x += 5;
    } else if (racketSouth.leftDown) racketSouth.x -= 5;
    racketSouth.draw();

    // the ball must stay within the west and east sides
    if (ball.x + dx > width || ball.x + dx < 0) {
      dx = -dx;
    }

    // the north side
    if (ball.y + dy < 0) {
      if (ball.x > racketNorth.x && ball.x < racketNorth.x + racketNorth.w) {
        dy = -dy;
      } else {
        //the ball hit the north side but outside the racket - game over, so stop the animation
        timer.cancel();
      }
    }
    // the south side
    else if (ball.y + dy > height) {
      if (ball.x > racketSouth.x && ball.x < racketSouth.x + racketSouth.w) {
        dy = -dy;
      } else {
        //the ball hit the south side but outside the racket - game over, so stop the animation
        timer.cancel();
      }
    }

    ball.x += dx;
    ball.y += dy;
  }

}