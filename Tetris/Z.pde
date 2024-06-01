public class Z extends Piece{
  public Z(){
    super();
    name = "Z";
    blocks = new Block[]{new Block(0,3),new Block(0,4),new Block(1,4),new Block(1,5)};
    grid = new int[][] {
     {1,1,0},
     {0,1,1},
     {0,0,0}
    };
    COLOR = color(255, 0, 0);
    changeColor();
  }
}
