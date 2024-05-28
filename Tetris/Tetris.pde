Board board = new Board();
ArrayList<String> pieceOrder = createPieceOrder();
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
  String currPiece = pieceOrder.get(0);
  pieceOrder.remove(0);
  // so that we can display next peice at any moment
  if (pieceOrder.size() == 0){
    pieceOrder = createPieceOrder();
  }
  
  String nextPiece = pieceOrder.get(0);
  
  //
  //
  //
  
  
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
    
    //board.spawnPiece("I");
    board.spawnPiece(currPiece);
    //pieceOrder.get
    
    //System.out.println("YES");
  }

}

void keyPressed(){
  //board.spawnPiece("L");
}



ArrayList<String> createPieceOrder(){
  ArrayList<String> pieces = new ArrayList<String>(3);
  ArrayList<String> choices = new ArrayList<String>(3);
  choices.add("I");choices.add("L");choices.add("T");
  for (int i = 0;i<3;i++){
    pieces.add((int)(Math.random()*7),choices.get(i));
    choices.remove(i);
  }
  return pieces;
}
