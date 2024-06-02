public class L extends Piece{
  public L(){
    super();
    name = "L";
    grid = new int[][] {
     {0,0,1},
     {1,1,1},
     {0,0,0}
    };
    blocks = new Block[] {new Block(0,5),new Block(1,3),new Block(1,4),new Block(1,5)};
    COLOR = color(255, 127, 0);
    changeColor();
  }
}
