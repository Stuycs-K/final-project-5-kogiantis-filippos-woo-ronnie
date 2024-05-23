public abstract class Piece{
  /*
  I think all of our variables should be private. we should add accessor methods.
  */
  public String name;
  public Block[] blocks;
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
  public boolean containsBlock(Block b){
    for (int i = 0;i<blocks.length;i++){
      if (blocks[i] == b){
        return true;
      }
    }
    return false;
  }
  public String getName(){
    return name;
  }
}
