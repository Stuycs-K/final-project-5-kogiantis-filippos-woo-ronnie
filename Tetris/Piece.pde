public abstract class Piece{
  public String name;
  public Block[] blocks;
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
  
  public Block[][] rotateGridRight(Block[][] b){
    Block[][] b_new = new Block[b.length][b[0].length];
    for (int r = 0;r<b.length;r++){
      for (int c = 0;c < b[0].length;c++){
      }
    }
    return b_new;
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
  public void rotateRightGrid(Block[][] b){
    int r = b.length;
    int c = b[0].length;
    int shift = r-2;
    for (int s = 0;s<=shift;s++){
      Block temp = b[0+s][0];
      b[0+s][0] = b[r][0+s];
      b[r][0+s] = b[r][c-s];
      b[r][c-s] = b[0+s][c];
      b[0+s][c] = temp;
    }
  }
  
  public void changeColor(){
    for (int i = 0;i<blocks.length;i++){
      blocks[i].setColor(COLOR);
    }
  }
}
