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
  public boolean currentPlaced(){
    return currentPiece.isPlaced();
  }
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
    currentPiece = createPiece(n);
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
  
  
  
  
  public void rowFall(int row){
    for (int r = row;r>0;r--){
      for (int c = 0;c<grid[0].length;c++){
        if (grid[r-1][c] != null && grid[r][c] == null){
          grid[r][c] = grid[r-1][c];
          grid[r][c] = new Block(r,c);
          grid[r-1][c] = null;
        }
      }
    }
  }
  
  
  public void fall(){
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
      currentPiece.setPlaced(true);
    }
  }
  public void hardDrop(){
    while (!currentPiece.isPlaced()){
      fall();
    }
  }
  public void moveLeft(){
    boolean canMove = true;
    for (Block b: currentPiece.blocks){
      if (b.getCol() == 0 || grid[b.getRow()][b.getCol()-1] != null){
        canMove = false;
      }
    }
    if (canMove){
      for (int i = 0; i < 4; i++){
        Block b = currentPiece.blocks[i];
        currentPiece.blocks[i] = new Block(b.getRow(),b.getCol()-1);
      }  
    }
  }
  public void moveRight(){
    boolean canMove = true;
    for (Block b: currentPiece.blocks){
      if (b.getCol() == grid[0].length - 1 || grid[b.getRow()][b.getCol()+1] != null){
        canMove = false;
      }
    }
    if (canMove){
      for (int i = 0; i < 4; i++){
        Block b = currentPiece.blocks[i];
        currentPiece.blocks[i] = new Block(b.getRow(),b.getCol()+1);
      }  
    }
  }
  public boolean arePlaced(){
    int sum = 0;
    for (int r = 0;r<grid.length;r++){
      for (int c = 0;c<grid[0].length;c++){
        if (grid[r][c] != null){
          System.out.println(grid[r][c].isPlaced());
        }
        
        //if the board is empty, there are no placed peices, so it triggers true.
        // I need a sum to keep track of the amount of peices that are not placed and actual pieces on board.
        if (grid[r][c] != null && grid[r][c].isPlaced() == false){
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
  
  public boolean lost(){
    for (int c = 0;c<grid[0].length;c++){
      if (grid[0][c] != null){
        return true;
      }
    }
    return false;
  }
  
  public void rotateClock(){
    //currentPiece = new J();
    //currentPiece.rotateGridClock();
    //currentPiece.rotateGridClock();
    displayGrid(currentPiece.grid);
    currentPiece.rotateClock();
    //currentPiece.printGrid();
  }
}
