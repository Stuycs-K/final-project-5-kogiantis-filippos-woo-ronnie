public class J extends Piece{
  public J(){
    super();
    name = "J";
    blocks = new Block[] {new Block(0,3),new Block(0,4),new Block(0,5),new Block(1,5)};
    col = 2;
    
    //grid will hold the location of the blocks
    //topleft will be 
    grid = new int[][] {
     {1,0,0},
     {1,1,1},
     {0,0,0}
    };
    //bGrid = new Block[][]{
    // {new Block(0,0),null,null},
    // {new Block(1,0),1,1},
    // {0,0,0}
    //};
  }
}
