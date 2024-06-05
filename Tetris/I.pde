public class I extends Piece{
  public I(){
    super();
    name = "I";
    blocks = new Block[] {new Block(0,3),new Block(0,4),new Block(0,5),new Block(0,6)};
    grid = new int[][] {
     {0,0,0,0},
     {1,1,1,1},
     {0,0,0,0},
     {0,0,0,0}
    };
    COLOR = color(0, 255, 255);
    super.changeColor();
  }
}
