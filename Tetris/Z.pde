public class Z extends Piece{
  public Z(){
    super();
    name = "Z";
    blocks = new Block[]{new Block(0,3),new Block(0,4),new Block(1,4),new Block(1,5)};
    COLOR = color(255, 0, 0);
    changeColor();
  }
}
