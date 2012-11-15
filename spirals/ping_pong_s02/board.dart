class Board {
  CanvasRenderingContext2D context;

  Board(CanvasElement canvas) {
    context = canvas.getContext("2d");
  }

  //draw a circle
  void circle(x, y, r, style) {
    // context.setStrokeStyle(style);  // bug: nothing drawn
    context.beginPath();
    context.arc(x, y, r, 0, PI*2, true);
    context.closePath();
    context.stroke();
  }

  //draw a rectangle
  void rectangle(x, y, w, h, style) {
    //context.setFillStyle(style);  // bug: nothing drawn
    context.beginPath();
    context.rect(x,y,w,h);
    context.closePath();
    context.stroke();
  }
}
