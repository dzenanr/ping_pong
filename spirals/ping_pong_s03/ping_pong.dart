library ping_pong;

import 'dart:html';
import 'dart:async';
import 'dart:math';

part 'board.dart';
part 'ball.dart';

void main() {
  //get a reference to the canvas
  CanvasElement canvas = document.querySelector('#canvas');
  Board board = new Board(canvas);
  Ball ball = new Ball(board, 0, 0, 10);
  //move() called every 10ms.
  new Timer.periodic(const Duration(milliseconds: 10), (t) => ball.move());
}
