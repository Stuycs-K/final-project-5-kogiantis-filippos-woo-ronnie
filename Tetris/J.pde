public class J extends Piece{
  public J(){
    super();
    name = "J";
    blocks = new Block[] {new Block(0,3),new Block(0,4),new Block(0,5),new Block(1,5)};
    col = 2;
    grid = new int[][] {
    {0,0,1},
     {0,0,1},
     {0,0,1}
    };
  }
}
