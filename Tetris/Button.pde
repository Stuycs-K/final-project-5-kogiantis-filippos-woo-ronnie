public class Button{
  int x, y, buttonWidth, buttonHeight;
  color buttonColor, buttonHighlight;
  boolean overButton = false;
  
  public Button(int x, int y, int w, int h){
    this.x=x;
    this.y=y;
    buttonWidth = w;
    buttonHeight = h;
  }
  void display(){
    fill(150);
    stroke(255);
    rect(x, y, buttonWidth, buttonHeight);
    fill(0);
  }
  boolean overButton(){
    if (mouseX >= x && mouseX <= x+buttonWidth && mouseY >= y && mouseY <= y+buttonHeight){
      return true;
    }
    else{
      return false;
    }
  }
}

void reset(){
  board = new Board();
  pieceOrder = createPieceOrder();
  nextPiece = pieceOrder.get(0);
  score = 0;
  lost = false;
  board.spawnPiece(nextPiece);
  pieceOrder.remove(0);
}
void pause(){
  pause = !pause;
}
