library ping_pong;

import 'dart:html';
import 'dart:isolate';
import 'dart:math';

part 'board.dart';
part 'ball.dart';
part 'racket.dart';

// See the style guide: http://www.dartlang.org/articles/style-guide/.

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = document.query('#canvas');
  Board board = new Board(canvas);
}
