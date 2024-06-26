void displayPiece(int x,int y,int size, Piece P){
  for (int r = 0;r<4;r++){
    for (int c = 0;c<4;c++){
      fill(0);
      stroke(255);
      square(x+c*size,y+r*size,size);
    }
  }
  if (P != null){
    for (Block b: P.blocks){
      fill(P.getColor());
      square(x+(b.getCol()-3)*size,y+b.getRow()*size,size);
    }
  }
  fill(0);
  textSize(30);
  text("Next", 850, 190);
  text("Hold", 150, 190);
}
void displayScore(int score){
  fill(255);
  rect(800,370,170,25);
  fill(0);
  text("Score: " + score,800,370,200,200);
}
void displayResetButton(Button button){
  button.display();
}
void displayGrid(int[][] grid){
  for (int r = 0;r<grid.length;r++){
    for (int c = 0;c<grid[0].length;c++){
      if (grid[r][c] == 0){
        fill(0);
      }
      else{
        fill(255);
      }
      square(100+c*100,100+r*100,100);
    }
  }
}
