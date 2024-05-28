Board board = new Board();
int frame = 0;
void setup(){
  size(400,400);
  windowResize(displayWidth-200,displayHeight-200);
  board.spawnPiece("L");
  frameRate(60);
}
void draw() {
  board.display(100,100,(height -200)/20);
  tick();
}

void tick(){
  if (frame % 10 == 0){
    board.fall();
  }
  ArrayList<Integer> clearedRows;
  
  
  if (board.currentPlaced() == true){
    clearedRows = board.whichRowsFilled();
    for (int r : clearedRows){
      board.clearRow(r);
      board.rowFall(r);
    }
    clearedRows = null;
    board.spawnPiece("L");
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


ArrayList<String> createPieceOrder(){
  ArrayList<String> pieces = new ArrayList<String>(3);
  ArrayList<String> choices = new ArrayList<String>(3);
  choices.add("I");choices.add("L");choices.add("T");
  for (int i = 0;i<3;i++){
    pieces.add((int)(Math.random()*pieces.size()),choices.get(i));
    //choices.remove(i);
  }
  return pieces;
}
