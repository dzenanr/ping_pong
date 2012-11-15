import 'dart:html';
import 'dart:isolate';
import 'dart:math';

part 'board.dart';
part 'ball.dart';

void main() {
  //get a reference to the canvas
  CanvasElement canvas = document.query('#canvas');
  Board board = new Board(canvas);
  board.init();
}
