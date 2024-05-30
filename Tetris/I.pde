public class I extends Piece{
  public I(){
    super();
    name = "I";
    blocks = new Block[] {new Block(0,3),new Block(0,4),new Block(0,5),new Block(0,6)};
    COLOR = color(0, 255, 255);
    super.changeColor();
  }
}
