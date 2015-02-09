import 'dart:html';

import 'package:ping_pong/ping_pong.dart';

void main() {
  //get a reference to the canvas
  CanvasElement canvas = document.querySelector('#canvas');
  Board board = new Board(canvas);
  board.circle(100, 100, 100, "#ff1c0a", "#00a308");
  board.circle(220, 220, 50, "#00a308", "#ff1c0a");
  board.rectangle(15, 150, 120, 120,
      "rgba(55, 55, 0, .75)", "rgba(155, 155, 0, .5)");
  board.rectangle(150, 250, 220, 100,
      "rgba(155, 155, 0, .5)", "rgba(355, 355, 0, .75)");
}
