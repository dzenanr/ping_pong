class Board {
  CanvasRenderingContext2D context;

  Board(CanvasElement canvas) {
    context = canvas.getContext("2d");
  }

  //draw a circle
  void circle(x, y, r, strokeStyle, fillStyle) {
    context.beginPath();
    context.strokeStyle = strokeStyle;
    context.fillStyle = fillStyle;
    context.arc(x, y, r, 0, PI*2, true);
    context.stroke();
    context.fill();
    context.closePath();
  }

  //draw a rectangle
  void rectangle(x, y, w, h, strokeStyle, fillStyle) {
    context.beginPath();
    context.strokeStyle = strokeStyle;
    context.fillStyle = fillStyle;
    context.rect(x,y,w,h);
    context.stroke();
    context.fill();
    context.closePath();
  }
}
