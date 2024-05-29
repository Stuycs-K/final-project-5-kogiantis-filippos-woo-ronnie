public abstract class Piece{
  public String name;
  public Block[] blocks;
  public int[][] grid;
  public boolean placed;
  public int col;
  
  public Piece(){
    placed = false;
  }
  public boolean isPlaced(){
    return placed;
  }
  public void setPlaced(boolean b){
    placed = b;
  }
  public Block[] getBlocks(){
    return blocks;
  }
  public int getColor(){
    return col;
  }
  
  public boolean containsBlock(Block b){
    for (Block block: blocks){
      if (block == b){
        return true;
      }
    }
    return false;
  }
  public String getName(){
    return name;
  }
  
  //public void rotateRightCorners(Block[][] b){
  //  Block temp = b[0][0];
  //  int r = b.length;
  //  int c = b[0].length;
  //  b[0][0] = b[r][0];
  //  b[r][0] = b[r][c];
  //  b[r][c] = b[0][c];
  //  b[0][c] = temp;
  //}
  void rotateClock(){
    if ("JLSTZI".contains(name)){
      rotateGridClock();
    }
  }
  
  public void rotateGridClock(){
    int r = grid.length-1;
    int c = grid[0].length-1;
    int shift = r-1;
    
    for (int s = 0;s<=shift;s++){
      int temp = grid[0][c-s];
      grid[0][c-s] = grid[0+s][0];
      grid[0+s][0] = grid[r][0+s];
      grid[r][0+s] = grid[r-s][c];
      grid[r-s][c] = temp;
    }
  }
  public void printGrid(){
    for (int r1 = 0;r1<grid.length;r1++){
      for (int c1 = 0;c1<grid[0].length;c1++){
        System.out.print(grid[r1][c1]);
      }
      System.out.println(",");
    }
    System.out.println("___");
  }
}
