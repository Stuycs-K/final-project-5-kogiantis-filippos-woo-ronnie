public class L extends Piece{
  public L(){
    super();
    name = "L";
    blocks = new Block[] {new Block(0,3),new Block(0,4),new Block(0,5),new Block(1,3)};
    col = 1;
    grid = new int[][] {
     {0,0,1},
     {1,1,1},
     {0,0,0}
    };
  }
}
