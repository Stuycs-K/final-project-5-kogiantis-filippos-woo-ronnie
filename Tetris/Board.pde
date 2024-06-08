public class Board{
  private Block[][] grid;
  private Piece currentPiece;
  private Piece ghostPiece;
  public int[] topleft = new int[] {0,3};
  
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
  public Piece getCurrPiece(){
    return currentPiece;
  }
  public void setCurrPiece(){
  }
  public void display(int x,int y, int size){
    fill(0,0,0);
    stroke(255);
    for (int r = 0; r < 20; r += 1){
      for (int c = 0; c < 10; c += 1){
        if (grid[r][c] != null){
          fill(grid[r][c].getColor());
        }
        else{
          fill(0);
        }
        square(x+c*size,y+r*size,size);
      }
    }
    displayGhostPiece(x,y,size);
    for (Block b: currentPiece.blocks){
      fill(currentPiece.getColor());
      square(x+b.getCol()*size,y+b.getRow()*size,size);
    }
    noFill();
    noStroke();
  }
  public void spawnPiece(String n){
    currentPiece = createPiece(n);
    topleft[0] = 0;
    topleft[1] = 3;
  }
  void displayGhostPiece(int x,int y, int size){
    ghostPiece = createPiece(currentPiece.getName());
    ghostPiece.setBlocks(Arrays.copyOf(currentPiece.getBlocks(),4));
    ghostPiece.setGrid(Arrays.copyOf(currentPiece.getGrid(),4));
    ghostPiece.setPlaced(false);
    ghostPiece.setColor(currentPiece.getColor());
    boolean ghostFall = true;
    while (ghostFall){
      for (Block b: ghostPiece.blocks){
        if (b.getRow() == grid.length - 1 || grid[b.getRow()+1][b.getCol()] != null){
          ghostFall = false;
        }
      }
      if (ghostFall){
        for (int i = 0; i < 4; i++){
          Block b = ghostPiece.blocks[i];
          ghostPiece.blocks[i] = new Block(b.getRow()+1,b.getCol(),false,b.getColor());
        }
      }
    }
    for (Block b: ghostPiece.blocks){
      fill(ghostPiece.getColor(),200);
      square(x+b.getCol()*size,y+b.getRow()*size,size);
    }
  }
  public void rowFall(int row){
    for (int r = row;r>0;r--){
      for (int c = 0;c<grid[0].length;c++){
        if (grid[r-1][c] != null && grid[r][c] == null){
          grid[r][c] = new Block(r,c,false,grid[r-1][c].getColor());
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
        currentPiece.blocks[i] = new Block(b.getRow()+1,b.getCol(),false,b.getColor());
      }
      topleft[0] += 1;
    }
    else{
      for (int i = 0; i < 4; i++){
        Block b = currentPiece.blocks[i];
        grid[b.getRow()][b.getCol()] = new Block(b.getRow(),b.getCol(),true,b.getColor());
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
        currentPiece.blocks[i] = new Block(b.getRow(),b.getCol()-1,false,b.getColor());
      }
      topleft[1] -= 1;
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
        currentPiece.blocks[i] = new Block(b.getRow(),b.getCol()+1,false,b.getColor());
      }
      topleft[1] += 1;
    }
  }
  public boolean arePlaced(){
    for (int r = 0;r<grid.length;r++){
      for (int c = 0;c<grid[0].length;c++){
        if (grid[r][c] != null){
          System.out.println(grid[r][c].isPlaced());
        }
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
    currentPiece.rotateGridClock();
    int counter = 0;
    boolean canRotate = true;
    if (!(currentPiece.grid.length + topleft[0]<= grid.length && currentPiece.grid[0].length + topleft[1] <= grid[1].length
       && topleft[0] >= 0 && topleft[1] >= 0)){
      canRotate = false;
    }
    else{
      for (int r = 0;r<currentPiece.grid.length;r++){
        for (int c = 0;c<currentPiece.grid[0].length;c++){
          if (currentPiece.grid[r][c] == 1 && grid[topleft[0] + r][topleft[1] + c] != null){
            canRotate = false;
          }
        }
      }
    }
    if (canRotate){
      Block[] b = currentPiece.getBlocks();
      for (int r = 0;r<currentPiece.grid.length;r++){
        for (int c = 0;c<currentPiece.grid[0].length;c++){
          if (currentPiece.grid[r][c] == 1){
            b[counter] = new Block(topleft[0] + r,topleft[1] + c,false,currentPiece.getColor());
            counter += 1;
          }
        }
      }
    }
    else{
      currentPiece.rotateGridAnti();
    }
  }
  public void rotateAnti(){
    currentPiece.rotateGridAnti();
    int counter = 0;
    boolean canRotate = true;
    if (!(currentPiece.grid.length + topleft[0]<= grid.length && currentPiece.grid[0].length + topleft[1] <= grid[1].length
       && topleft[0] >= 0 && topleft[1] >= 0)){
      canRotate = false;
    }
    else{
      for (int r = 0;r<currentPiece.grid.length;r++){
        for (int c = 0;c<currentPiece.grid[0].length;c++){
          if (currentPiece.grid[r][c] == 1 && grid[topleft[0] + r][topleft[1] + c] != null){
            canRotate = false;
          }
        }
      }
    }
    if (canRotate){
      Block[] b = currentPiece.getBlocks();
      for (int r = 0;r<currentPiece.grid.length;r++){
        for (int c = 0;c<currentPiece.grid[0].length;c++){
          if (currentPiece.grid[r][c] == 1){
            b[counter] = new Block(topleft[0] + r,topleft[1] + c,false,currentPiece.getColor());
            counter += 1;
          }
        }
      }
    }
    else{
      currentPiece.rotateGridAnti();
    }
  }
}
