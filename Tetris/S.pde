public class S extends Piece{
  public S(){
    super();
    name = "S";
    blocks = new Block[]{new Block(1,3),new Block(1,4),new Block(0,4),new Block(0,5)};
    col = 2;
    grid = new int[][] {
     {0,1,1},
     {1,1,0},
     {0,0,0}
    };
  }
}
