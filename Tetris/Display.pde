void displayNextPiece(int x,int y,int size, Piece P){
  for (int r = 0;r<4;r++){
    for (int c = 0;c<4;c++){
      fill(0);
      stroke(255);
      //for (Block b : P.getBlocks()){
      //  if (r == b.getRow() && c == b.getCol()){
      //    fill(P.getColor());
      //  }
      //}
      //square(x+b.getCol()*size,y+b.getRow()*size,size);
      square(x+c*size,y+r*size,size);
      for (Block b: P.blocks){
        fill(0,0,255);
        square(x+(b.getCol()-3)*size,y+b.getRow()*size,size);
      }
    }
  }
}

void displayScore(int score){
  fill(0);
  stroke(255);
  rect(100+height,100,200,200);
  fill(255);
  text("Score: " + score,100+height,100,200,200);
}
