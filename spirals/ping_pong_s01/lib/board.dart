part of ping_pong;

class Board {
  CanvasRenderingContext2D context;

  Board(CanvasElement canvas) {
    context = canvas.getContext("2d");
  }

  //draw a circle
  void circle(x, y, r) {
    context.beginPath();
    context.arc(x, y, r, 0, PI*2, true);
    context.closePath();
    context.fill();
  }

  //draw a rectangle
  void rectangle(x, y, w, h) {
    context.beginPath();
    context.rect(x,y,w,h);
    context.closePath();
    context.stroke();
  }
}
