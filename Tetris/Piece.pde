public abstract class Piece{
  public String name;
  public Block[] blocks;
  public int[][] grid;
  public boolean placed;
  public color COLOR;
  
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
    return COLOR;
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
  public Block[][] getGrid(Block[][] grid, int start_r, int start_c){
    Block[][] g = new Block[grid.length][grid[0].length];
    for(int r = 0;r<3;r++){
      for (int c = 0;c<3;c++){
        g[r][c] = grid[r+start_r][c+start_c];
      }
    }
    return g;
  }
  public void rotateGridClock(){
    int r = grid.length-1;
    int c = grid[0].length-1;
    for (int l = 0;l<=(r+1)/2 - 1;l++){
      int shift = r-1-2*l;
      for (int s = 0;s<=shift;s++){
        int temp = grid[l][c-l-s];
        grid[l][c-l-s] = grid[l+s][l];
        grid[l+s][l] = grid[r-l][l+s];
        grid[r-l][l+s] = grid[r-l-s][c-l];
        grid[r-l-s][c-l] = temp;
      }
    }
  }
  public void rotateGridAnti(){
    int r = grid.length-1;
    int c = grid[0].length-1;
    for (int l = 0;l<=(r+1)/2 - 1;l++){
      int shift = r-1-2*l;
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
  public void changeColor(){
    for (int i = 0;i<blocks.length;i++){
      blocks[i].setColor(COLOR);
    }
  }
}
