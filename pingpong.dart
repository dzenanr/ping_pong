#import('dart:html');
#source('Board.dart');

void main() {
  //get a reference to the canvas
  CanvasElement canvas = document.query('#canvas');
  Board board = new Board(canvas);
  board.circle(220, 220, 50, "#00A308");
  board.circle(100, 100, 100, "#FF1C0A");
  board.rectangle(15, 150, 120, 120, "rgba(255, 255, 0, .5)");
  board.rectangle(150, 250, 220, 100, "rgba(355, 355, 0, .75)");
}
