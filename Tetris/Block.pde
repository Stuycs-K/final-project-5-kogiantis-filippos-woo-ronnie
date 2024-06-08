public class Block{
  private int r;
  private int c;
  private boolean placed;
  private color COLOR;
  
  public Block(int row, int col){
    this(row,col,false);
  }
  public Block(int row, int col, boolean p){
    this(row,col,p,color(100));
  }
  public Block(int row, int col, boolean p,color col_){
    r = row;
    c = col;
    placed = p;
    COLOR = col_;
  }
  public int getRow(){
    return r;
  }
  public int getCol(){
    return c;
  }
  public color getColor(){
    return COLOR;
  }
  public void setColor(color col){
    COLOR = col;
  }
  public boolean isPlaced(){
    return placed;
  }
  public void setPlaced(boolean p){
    placed = p;
  }
}
