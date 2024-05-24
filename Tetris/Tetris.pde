Board board = new Board();
int m = 300; //milli-seconds counting
void setup(){
  size(400,400);
  windowResize(displayWidth-200,displayHeight-200);
  board.spawnPiece("T");
  frameRate(2);
}
void draw() {
  board.display(100,100,(height -200)/20);
  tick();
}

void tick(){
  delay(m); //
  board.fallPiece();
  ArrayList<Integer> clearedRows;
  
  
  if (board.currentPlaced() == true){
    //clearedRows = board.whichRowsFilled();
    //for (int r : clearedRows){
    //  board.clearRow(r);
    //  board.rowFall(r);
    //}
    //clearedRows = null;
    //board.spawnPiece("I");
    System.out.println("YES");
  }

}

void keyPressed(){
  //board.spawnPiece("L");
}
