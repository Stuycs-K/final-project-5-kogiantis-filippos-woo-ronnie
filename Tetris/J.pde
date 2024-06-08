public class J extends Piece{
  public J(){
    super();
    setName("J");
    setGrid(new int[][] {
     {1,0,0},
     {1,1,1},
     {0,0,0}
    });
    setBlocks(new Block[] {new Block(0,3),new Block(1,3),new Block(1,4),new Block(1,5)});
    setColor(color(0, 0, 255));
    changeColor();
  }
}
