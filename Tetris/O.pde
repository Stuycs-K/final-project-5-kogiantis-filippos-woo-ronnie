public class O extends Piece{
  
  public O(){
    super();
    name = "O";
    blocks = new Block[]{new Block(0,3),new Block(0,4),new Block(1,3),new Block(1,4)};
    grid = new int[][] {
     {1,1},
     {1,1},
    };
    COLOR = color(255, 255, 0);
    changeColor();
  }
}
