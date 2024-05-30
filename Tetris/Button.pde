public class Button{
  int x, y;
  int size;
  color buttonColor, buttonHighlight;
  boolean overButton = false;
  
  void display(){
    //update(mouseX, mouseY);
    //if (rectOver) {
    //  fill(51);
    //} else {
    //  fill(0);
    //}
    stroke(255);
    //rect(width/2-buttonSize-10, height/2-buttonSize/2, buttonSize, buttonSize);
  }
}

void reset(){
  board = new Board();
  pieceOrder = createPieceOrder();
  nextPiece = pieceOrder.get(0);
  score = 0;
  lost = false;
  delay(2000);
  board.spawnPiece(nextPiece);
  displayResetButton();
  pieceOrder.remove(0);
  frameRate(60);
}
void pause(){
  pause = !pause;
}
