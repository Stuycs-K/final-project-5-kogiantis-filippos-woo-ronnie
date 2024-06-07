public class O extends Piece{
  public O(){
    super();
    setName("O");
    setBlocks(new Block[]{new Block(0,3),new Block(0,4),new Block(1,3),new Block(1,4)});
    setGrid(new int[][] {
     {1,1},
     {1,1},
    });
    setColor(color(255, 255, 0));
    changeColor();
  }
}
