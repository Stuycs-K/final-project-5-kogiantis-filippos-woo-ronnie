public class S extends Piece{
  public S(){
    super();
    name = "S";
    blocks = new Block[]{new Block(1,3),new Block(1,4),new Block(0,4),new Block(0,5)};
    COLOR = color(0, 255, 0);
    changeColor();
  }
}
