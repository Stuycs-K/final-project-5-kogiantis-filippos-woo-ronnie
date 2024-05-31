Board board = new Board();
ArrayList<String> pieceOrder = createPieceOrder();
String nextPiece = pieceOrder.get(0);
int score = 0;
int frame = 0;
int frameDelay = 0;
boolean keyHeld = false;
boolean lost = false;
boolean pause = false;
Button resetButton = new Button(550, 400, 100, 50, "reset");
Button pauseButton = new Button(550,500,100,50,"Pause");


void setup(){
  size(400,400);
  windowResize(displayWidth-200,displayHeight-200);
  board.spawnPiece(nextPiece);
  pieceOrder.remove(0);
  frameRate(60);
}
void draw() {
  board.display(100,100,(height -200)/20);
  
  
  
  
  if (!pause){
    if (!lost){
      tick();
    }
  }
  displayNextPiece(200+(height -200)/2,200,(height -200)/20,createPiece(nextPiece));
  displayScore(score);
  displayResetButton(resetButton);
  pauseButton.display();
  if(keyPressed){
    if (keyHeld && frame % 3 == 0){
      if (keyCode == LEFT){
        board.moveLeft();
      }
      if (keyCode == RIGHT){
        board.moveRight();
      }
      if (keyCode == UP){
        board.hardDrop();
      }
      if (keyCode == DOWN){
        board.fall();
      }
    }
    if (frameDelay == -1){
      frameDelay = 15;
      if (keyCode == LEFT){
        board.moveLeft();
      }
      if (keyCode == RIGHT){
        board.moveRight();
      }
      if (keyCode == UP){
        board.hardDrop();
      }
      if (keyCode == DOWN){
        board.fall();
      }
    }
    else {
      if (frameDelay > 0){
        frameDelay--;
      }
      else{
        keyHeld = true;
      }
    }
  }
  else{
    frameDelay = -1;
    keyHeld = false;
  }
}

void tick(){
  if (frame % 30 == 0){
    board.fall();
  }
  ArrayList<Integer> clearedRows;
  nextPiece = pieceOrder.get(0);
   // so that we can display next peice at any moment

   //String nextPiece = pieceOrder.get(0);
  
  if (board.currentPlaced() == true){
    clearedRows = board.whichRowsFilled();
    
    //update score
    if (clearedRows.size() == 1){
      score += 100;
    }
    if (clearedRows.size() == 2){
      score += 300;
    }
    if (clearedRows.size() == 3){
      score += 500;
    }
    if (clearedRows.size() == 4){
      score += 800;
    }
    
    
    for (int r : clearedRows){
      board.clearRow(r);
      board.rowFall(r);
    }
    clearedRows = null;
    if (board.lost()){
      //System.out.println("LOST");
      lost = true;
    }
    board.spawnPiece(nextPiece);
    
    pieceOrder.remove(0);
    if (pieceOrder.size() == 0){
      pieceOrder = createPieceOrder();
    }
    
    
  }
  frame = (frame + 1) % 60;
}
/*
void keyPressed(){
    if (keyCode == LEFT){
      board.moveLeft();
    }
    if (keyCode == RIGHT){
      board.moveRight();
    }
    if (keyCode == UP){
      board.hardDrop();
    }
    if (keyCode == DOWN){
      board.fall();
    }
  }
*/
  void mouseClicked(){
    if (resetButton.overButton()){
      reset();
    }
    if (pauseButton.overButton()){
      pause = !pause;
    }
  }


  ArrayList<String> createPieceOrder(){
  ArrayList<String> pieces = new ArrayList<String>(7);
  ArrayList<String> choices = new ArrayList<String>(7);
  choices.add("I");choices.add("J");choices.add("L");choices.add("O");choices.add("S");choices.add("T");choices.add("Z");
  for (int i = 0;i<7;i++){
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
  if (s.equals("J")){
    return new J();
  }
  if (s.equals("O")){
    return new O();
  }
  if (s.equals("Z")){
    return new Z();
  }
  if (s.equals("S")){
    return new S();
  }
  return null;
}
