public abstract class Piece{
  /*
  I think all of our variables should be private. we should add accessor methods.
  */
  public String name;
  public Block[] blocks;
  public boolean isPlaced;
  public int col;
  
  public Piece(){
    isPlaced = false;
    
  }
}
