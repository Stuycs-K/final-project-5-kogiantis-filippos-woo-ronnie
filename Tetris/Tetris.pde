Board board = new Board();
int frame = 0;
void setup(){
  size(400,400);
  windowResize(displayWidth-200,displayHeight-200);
  board.spawnPiece("T");
  frameRate(60);
}
void draw() {
  board.display(100,100,(height -200)/20);
  tick();
}

void tick(){
  if (frame % 20 == 0){
    board.fall();
  }
  ArrayList<Integer> clearedRows;
  
  
  if (board.currentPlaced() == true){
    /*
    this might work, but we have no way of testing
    */
    //clearedRows = board.whichRowsFilled();
    //for (int r : clearedRows){
    //  board.clearRow(r);
    //  board.rowFall(r);
    //}
    //clearedRows = null;
    board.spawnPiece("I");
    //System.out.println("YES");
  }
  frame = (frame + 1) % 60;
}

void keyPressed(){
  if (keyCode == LEFT){
    board.moveLeft();
  }
  if (keyCode == RIGHT){
    board.moveRight();
  }
}
