public class I extends Piece{
  public I(){
    super();
    setName("I");
    setBlocks( new Block[] {new Block(0,3),new Block(0,4),new Block(0,5),new Block(0,6)});
    setGrid( new int[][] {
     {0,0,0,0},
     {1,1,1,1},
     {0,0,0,0},
     {0,0,0,0}
    });
    setColor(color(0, 255, 255));
    super.changeColor();
  }
}
