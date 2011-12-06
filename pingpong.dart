#import('dart:html');
#source('Board.dart');
#source('Ball.dart');
#source('Racket.dart');

void main() {
  //get a reference to the canvas
  CanvasElement canvas = document.query('#canvas');
  Board board = new Board(canvas);
  board.init();
}
