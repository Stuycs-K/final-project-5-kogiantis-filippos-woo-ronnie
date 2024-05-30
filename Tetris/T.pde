public class T extends Piece{
  public T(){
    super();
    name = "T";
    blocks = new Block[]{new Block(0,4),new Block(1,3),new Block(1,4),new Block(1,5)};
    COLOR = color(128, 0, 128);
    changeColor();
  }
}
