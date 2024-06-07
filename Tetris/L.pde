public class L extends Piece{
  public L(){
    super();
    setName("L");
    setGrid(new int[][] {
     {0,0,1},
     {1,1,1},
     {0,0,0}
    });
    setBlocks(new Block[] {new Block(0,5),new Block(1,3),new Block(1,4),new Block(1,5)});
    setColor(color(255, 127, 0));
    changeColor();
  }
}
