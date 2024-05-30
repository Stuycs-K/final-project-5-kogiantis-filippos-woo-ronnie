public class Button{
  int x, y;
  int size;
  color buttonColor, buttonHighlight;
  boolean overButton = false;
  
  void display(){
    update(mouseX, mouseY);
    if (rectOver) {
      fill(51);
    } else {
      fill(0);
    }
    stroke(255);
    rect(width/2-buttonSize-10, height/2-buttonSize/2, buttonSize, buttonSize);
  }
