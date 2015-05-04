import 'dart:html';

import 'package:ping_pong/ping_pong.dart';

// See the style guide: http://www.dartlang.org/articles/style-guide/.

// Spiral 12.

void main() {
  CanvasElement canvas = querySelector('#canvas');
  new Board(canvas);
}
