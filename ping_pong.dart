
#import('dart:html');
#import('dart:math');

#source('Board.dart');
#source('Ball.dart');
#source('Racket.dart');

// See the style guide: http://www.dartlang.org/articles/style-guide/.

// Spiral 12.

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = document.query('#canvas');
  Board board = new Board(canvas);
}
