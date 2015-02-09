import 'dart:async';
import 'dart:html';

import 'package:ping_pong/ping_pong.dart';

void main() {
  //get a reference to the canvas
  CanvasElement canvas = document.querySelector('#canvas');
  Board board = new Board(canvas);
  Ball ball = new Ball(board, 0, 0, 10);
  //move() called every 10ms.
  new Timer.periodic(const Duration(milliseconds: 10), (t) => ball.move());
}
