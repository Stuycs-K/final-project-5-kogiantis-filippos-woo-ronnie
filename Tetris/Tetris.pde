Board board = new Board();
int m = 300; //milli-seconds counting
void setup(){
  size(400,400);
  windowResize(displayWidth-200,displayHeight-200);
  board.spawnPiece();
  frameRate(2);
}
void draw() {
  board.display(100,100,15);
  tick();
}

void tick(){
  delay(m); //
  board.fall();
}
