public class T extends Piece{
  public T(){
    super();
    name = "T";
    grid = new int[][] {
     {0,1,0},
     {1,1,1},
     {0,0,0}
    };
    blocks = new Block[]{new Block(0,4),new Block(1,3),new Block(1,4),new Block(1,5)};
    COLOR = color(128, 0, 128);
    changeColor();
  }
}
