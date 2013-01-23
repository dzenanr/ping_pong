library ping_pong;

import 'dart:html';
import 'dart:async';
import 'dart:math';

part 'board.dart';
part 'ball.dart';
part 'racket.dart';

void main() {
  //get a reference to the canvas
  CanvasElement canvas = document.query('#canvas');
  Board board = new Board(canvas);
}
