#import('dart:html');
#source('Board.dart');
#source('Ball.dart');

void main() {
  //get a reference to the canvas
  CanvasElement canvas = document.query('#canvas');
  Board board = new Board(canvas);
  Ball ball = new Ball(board, 0, 0, 10);
  //call the function move() every 10ms.
  document.window.setInterval(ball.move, 10);
}
