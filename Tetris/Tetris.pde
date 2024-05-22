Board board = new Board();
void setup(){
  size(400,400);
  windowResize(displayWidth-200,displayHeight-200);
  board.setBlock(0,4,1);
}
void draw() {
  board.display();
  board.spawnPiece();
}
