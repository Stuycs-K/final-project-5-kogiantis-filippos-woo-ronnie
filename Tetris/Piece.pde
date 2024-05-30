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
  
  
  public Block[][] getGrid(Block[][] grid, int start_r, int start_c){
    Block[][] g = new Block[grid.length][grid[0].length];
    for(int r = 0;r<3;r++){
      for (int c = 0;c<3;c++){
        g[r][c] = grid[r+start_r][c+start_c];
      }
    }
    return g;
  }
  //public void rotateGridAnti(){
  //  int r = grid.length-1;
  //  int c = grid[0].length-1;
  //  int shift = r-1;
    
  //  for (int s = 0;s<=shift;s++){
  //    Block temp = grid[0][c-s];
  //    grid[0][c-s] = grid[r-s][c];
  //    grid[r-s][c] = grid[r][0+s];
  //    grid[r][0+s] = grid[0+s][0];
  //    grid[0+s][0] = temp;
  //  }
  //}
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
  public void rotateGridAnti(){
    int r = grid.length-1;
    int c = grid[0].length-1;
    //int shift = r-1;
    //System.out.println("YES");
    for (int l = 0;l<=(r+1)/2 - 1;l++){
      //System.out.println("YES");
      int shift = r-1-2*l;
      System.out.println(shift);
      for (int s = 0;s<=shift;s++){
        int temp = grid[l][c-l-s];
        grid[l][c-l-s] = grid[r-l-s][c-l];
        grid[r-l-s][c-l] = grid[r-l][l+s];
        grid[r-l][l+s] = grid[l+s][l];
        grid[l+s][l] = temp;
      }
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
