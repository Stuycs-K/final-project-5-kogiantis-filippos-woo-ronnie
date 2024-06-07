public class Z extends Piece{
  public Z(){
    super();
    setName("Z");
    setBlocks(new Block[]{new Block(0,3),new Block(0,4),new Block(1,4),new Block(1,5)});
    setGrid(new int[][] {
     {1,1,0},
     {0,1,1},
     {0,0,0}
    });
    setColor(color(255, 0, 0));
    changeColor();
  }
}
