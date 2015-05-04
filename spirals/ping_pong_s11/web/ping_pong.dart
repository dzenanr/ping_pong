import 'dart:html';

import 'package:ping_pong/ping_pong.dart';

// See the style guide: http://www.dartlang.org/articles/style-guide/.

void main() {
  // Get a reference to the canvas.
  CanvasElement canvas = querySelector('#canvas');
  new Board(canvas);
}
