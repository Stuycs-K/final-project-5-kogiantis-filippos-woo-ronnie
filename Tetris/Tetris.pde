Board board = new Board();
ArrayList<String> pieceOrder = createPieceOrder();
String nextPiece = pieceOrder.get(0);
int frame = 0;
void setup(){
  size(400,400);
  windowResize(displayWidth-200,displayHeight-200);
  board.spawnPiece(nextPiece);
  pieceOrder.remove(0);
  frameRate(60);
}
void draw() {
  board.display(100,100,(height -200)/20);
  tick();
  displayNextPiece(0,0,10,createPiece(nextPiece));
}

void tick(){
  if (frame % 10 == 0){
    board.fall();
  }
  ArrayList<Integer> clearedRows;
  nextPiece = pieceOrder.get(0);
   // so that we can display next peice at any moment

   //String nextPiece = pieceOrder.get(0);
  
  if (board.currentPlaced() == true){
    clearedRows = board.whichRowsFilled();
    for (int r : clearedRows){
      board.clearRow(r);
      board.rowFall(r);
    }
    clearedRows = null;
    board.spawnPiece(nextPiece);
    pieceOrder.remove(0);
    if (pieceOrder.size() == 0){
      pieceOrder = createPieceOrder();
    }
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

Piece createPiece(String s){
  if (s.equals("L")){
    return new L();
  }
  if (s.equals("T")){
    return new T();
  }
  if (s.equals("I")){
    return new I();
  }
  return null;
}
