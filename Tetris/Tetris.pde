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
  //board.spawnPiece();
  // this makes a new block every run of the program. gives you a whole column of blue I's
  tick();
}

void tick(){
  delay(m); //
  board.fall();
}
