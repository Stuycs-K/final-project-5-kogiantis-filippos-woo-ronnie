public class T extends Piece{
  public T(){
    super();
    name = "T";
    blocks = new Block[]{new Block(0,3),new Block(0,4),new Block(0,5),new Block(1,4)};
    col = 2;
    grid = new int[][] {
     {0,1,0},
     {1,1,1},
     {0,0,0}
    };
  }
}
