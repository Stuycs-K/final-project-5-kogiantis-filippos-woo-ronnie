public class S extends Piece{
  public S(){
    super();
    setName("S");
    setBlocks(new Block[]{new Block(1,3),new Block(1,4),new Block(0,4),new Block(0,5)});
    setGrid(new int[][] {
     {0,1,1},
     {1,1,0},
     {0,0,0}
    });
    setColor(color(0, 255, 0));
    changeColor();
  }
}
