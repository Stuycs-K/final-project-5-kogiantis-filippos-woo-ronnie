public class Button{
  int x, y, buttonWidth, buttonHeight;
  color buttonColor, buttonHighlight;
  boolean overButton = false;
  boolean hover;
  String name;
  
  public Button(int x, int y, int w, int h,String n){
    this.x=x;
    this.y=y;
    buttonWidth = w;
    buttonHeight = h;
    hover = false;
    buttonColor = color(100);
    buttonHighlight = color(200);
    name = n;
  }
  void display(){
    if (overButton()){
      fill(buttonHighlight);
    }
    else{
      fill(buttonColor);
    }
    stroke(255);
    rect(x, y, buttonWidth, buttonHeight);
    fill(0);
    text(name,x,y,buttonWidth, buttonHeight);
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
  PieceHeld = null;
  isJustHeld = false;
}
void pause(){
  pause = !pause;
}
