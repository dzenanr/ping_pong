#import('dart:html');
#source('Board.dart');

void main() {
  //get a reference to the canvas
  CanvasElement canvas = document.query('#canvas');
  Board board = new Board(canvas);
  board.circle(75, 75, 10);
  board.rectangle(95, 95, 20, 20);
}
