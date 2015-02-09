import 'dart:html';

import 'package:ping_pong/ping_pong.dart';

void main() {
  //get a reference to the canvas
  CanvasElement canvas = document.querySelector('#canvas');
  Board board = new Board(canvas);
  board.circle(75, 75, 10);
  board.rectangle(95, 95, 20, 20);
}
