public class Block{
  private int r;
  private int c;
  private boolean placed;
  public Block(int row, int col){
    r = row;
    c = col;
    placed = false;
  }
  public boolean isPlaced(){
    return placed;
  }
  public void setPlaced(boolean b){
    placed = b;
  }
}
