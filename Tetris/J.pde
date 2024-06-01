public class J extends Piece{
  public J(){
    super();
    name = "J";
    //grid will hold the location of the blocks
    //topleft will be 
    grid = new int[][] {
     {1,0,0},
     {1,1,1},
     {0,0,0}
    };
    blocks = new Block[] {new Block(0,3),new Block(1,3),new Block(1,4),new Block(1,5)};
    COLOR = color(0, 0, 255);
    changeColor();
  }
}
