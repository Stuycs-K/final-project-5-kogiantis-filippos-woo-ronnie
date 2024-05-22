public class Board{
  private int[][] grid;
  private int blocksize;
  private Piece currentPiece;
  
  public Board(){
    grid = new int[20][10];
    blocksize = 20;
  }
  public int getBlock(int r, int c){
    return grid[r][c];
  }
  public void setBlock(int r, int c, int val){
    grid[r][c] = val;
  }
  
  
  /*
  void display()
  
  FUNCTION (as of now):
  
  displays the grid itself, and the pieces on the grid 
  (based off of the int value in each box.
  
  PROBLEMS:
  I am thinking maybe we sould add inputs to where the grid will display, and what size. otherwise, it is fine.
  */
  public void display(){
    fill(0,0,0);
    stroke(255);
    for (int r = 0; r < 20; r += 1){
      for (int c = 0; c < 10; c += 1){
        if (grid[r][c] == 1){
          fill(0,0,255);
        }
        else{
          fill(0);
        }
        square(c*blocksize,r*blocksize,blocksize);
      }
    }
    noFill();
    noStroke();
  }
  
  
  /*
  void spawnPiece()
  
  FUNCTION (as of now):
  spawns a block at the top of the grid.
  
  PROBLEMS:
  does not change the value withing the grid itself. this needs to be fixed.
  
  */
  public void spawnPiece(){
    //only spawns I pieces
    currentPiece = new I();
    for (int[] position : currentPiece.blocks){
      //grid()
      fill(0,0,255);
      stroke(255);
      square(position[1]*blocksize, position[0]*blocksize,blocksize);
    }
  }
  
  
  /*
  void fall()
  
  FUNCTION (as of now):
  if there is an empty space below the block, the piece will fall.
  
  PROBLEMS:
  does not have a way of checking if the peice has been placed in a particular spot.
  this might require us to change from an int[][] grid to a piece[][] or block[][].
  
  */
  public void fall(){
    for (int r = grid.length-1;r > 0;r--){
      for (int c = 0;c < grid[0].length;c++){
        if (grid[r][c] == 0){
          if (grid[r-1][c] != 0){
            grid[r][c] = grid[r-1][c];
            grid[r-1][c] = 0;
          }
        }
      }
    }
  }
}
