public class J extends Piece{
  public J(){
    super();
    name = "J";
    blocks = new Block[] {new Block(0,3),new Block(1,3),new Block(1,4),new Block(1,5)};
    COLOR = color(0, 0, 255);
    changeColor();
  }
}
