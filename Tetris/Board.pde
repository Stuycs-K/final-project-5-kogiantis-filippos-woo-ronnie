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
  public void spawnPiece(){
    //only spawns I pieces
    currentPiece = new I();
    for (int[] position : currentPiece.blocks){
      fill(0,0,255);
      square(position[1]*blocksize, position[0]*blocksize,blocksize);
    }
  }
}
