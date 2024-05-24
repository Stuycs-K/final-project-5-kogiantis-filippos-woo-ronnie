public class Board{
  private Block[][] grid;
  private Piece currentPiece;
  
  public Board(){
    grid = new Block[20][10];
  }
  public boolean checkBlock(int r, int c){
    return grid[r][c].isPlaced();
  }
  public void setBlock(int r, int c, boolean b){
    grid[r][c].setPlaced(b);
  }
  
  
  /*
  void display()
  
  INPUTS:
  int (x,y): top left coordinates of grid [procCor]
  int size: the size of each grid (size == side length of grid box).
  
  FUNCTION (as of now):
  
  displays the grid itself, and the pieces on the grid 
  (based off of the int value in each box.
  
  PROBLEMS:
  I am thinking maybe we sould add inputs to where the grid will display, and what size. otherwise, it is fine.
  */
  public void display(int x,int y, int size){
    fill(0,0,0);
    stroke(255);
    //display placed blocks
    for (int r = 0; r < 20; r += 1){
      for (int c = 0; c < 10; c += 1){
        if (grid[r][c] != null){
          fill(0,0,255);
        }
        else{
          fill(0);
        }
        square(x+c*size,y+r*size,size);
      }
    }
    //display blocks of current piece
    for (Block b: currentPiece.blocks){
      fill(0,0,255);
      square(x+b.getCol()*size,y+b.getRow()*size,size);
    }
    
    noFill();
    noStroke();
  }
  
  
  /*
  void spawnPiece()
  
  FUNCTION (as of now):
  spawns a block at the top of the grid. changes values of grid.
  
  PROBLEMS:
  
  [fixed]
  does not change the value withing the grid itself. this needs to be fixed.
  
  */
  public void spawnPiece(String n){
    ////only spawns I pieces
    //currentPiece = new I();
    if (n.equals("I")){
      currentPiece = new I();
    }
    else if(n.equals("L")){
      currentPiece = new L();
    }
    else if(n.equals("T")){
      currentPiece = new T();
    }
  }
  
  
  /*
  boolean fall()
  
  FUNCTION (as of now):
  if there is an empty space below the block, the piece will fall.
  single time
  
  returns if the piece has been placed
  
  PROBLEMS:
  does not have a way of checking if the peice has been placed in a particular spot.
  this might require us to change from an int[][] grid to a piece[][] or block[][].
  
  */
  //public void fall(){
  //}
  
  
  public void fallPiece(){
    boolean canFall = true;
    for (Block b: currentPiece.blocks){
      if (b.getRow() == grid.length - 1 || grid[b.getRow()+1][b.getCol()] != null){
        canFall = false;
      }
    }
    if (canFall){
      for (int i = 0; i < 4; i++){
        Block b = currentPiece.blocks[i];
        currentPiece.blocks[i] = new Block(b.getRow()+1,b.getCol());
      }  
    }
    else{
      for (int i = 0; i < 4; i++){
        Block b = currentPiece.blocks[i];
        grid[b.getRow()][b.getCol()] = new Block(b.getRow(),b.getCol(),true);
      }
      //spawnPiece("T");
    }
  }
  public boolean arePlaced(){
    for (int r = 0;r<grid.length;r++){
      for (int c = 0;c<grid[0].length;c++){
        if (grid[r][c].isPlaced() == false){
          return false;
        }
      }
    }
    return true;
  }
  public boolean isRowFilled(int r){
    for (int c = 0; c<grid[0].length;c++){
      if (grid[r][c] == null){
        return false;
      }
    }
    return true;
  }
  public ArrayList<Integer> whichRowsFilled(){
    ArrayList<Integer> rows = new ArrayList();
    for (int r = 0;r<grid.length;r++){
      if (isRowFilled(r)){
        rows.add(r);
      }
    }
    return rows;
  }
  public void clearRow(int r){
    for (int c = 0;c<grid[0].length;c++){
      grid[r][c] = null;
    }
  }
    
  /*public void fallPiece(){
    for (int r = grid.length-1;r > 0;r--){
      for (int c = 0;c < grid[0].length;c++){
        if(grid[r][c] != null && (grid[r][c].isPlaced() == false || r == grid.length-1) && grid[r-1][c] != null){
          grid[r-1][c].setPlaced(true);
          currentPiece.setPlaced(true);
        }
        if (currentPiece.isPlaced() == true){
          if (currentPiece.containsBlock(grid[r-1][c])){
            grid[r-1][c].setPlaced(true);
            //grid[r][c].setPlaced(true);
          }
        }
        if (grid[r-1][c] != null && grid[r-1][c].isPlaced() == false && grid[r][c] == null){
            grid[r][c] = grid[r-1][c];
            grid[r-1][c] = null;
        }
        if(r < grid.length-1 && ((grid[r+1][c] != null && grid[r+1][c].isPlaced() == true) || r == grid.length-2) && grid[r][c] != null){
          grid[r][c].setPlaced(true);
          currentPiece.setPlaced(true);
          //System.out.println("isPlaced");
        }
      }
    }
  }*/
}
