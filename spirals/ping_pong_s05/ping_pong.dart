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
  board.init();
}
