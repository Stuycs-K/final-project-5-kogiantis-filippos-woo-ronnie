void displayNextPiece(int x,int y,int size, Piece P){
  for (int r = 0;r<4;r++){
    for (int c = 0;c<4;c++){
      fill(0);
      stroke(255);
      square(x+c*size,y+r*size,size);
    }
  }
  for (Block b: P.blocks){
        fill(P.getColor());
        square(x+(b.getCol()-3)*size,y+b.getRow()*size,size);
      }
  fill(0);
  textSize(30);
  text("Next Piece", 210+(height -200)/2, 190);
}
void displayScore(int score){
  fill(200);
  rect(210+(height -200)/2,210+(height -200)/5,200,200);
  fill(0);
  text("Score: " + score,210+(height -200)/2,210+(height -200)/5,200,200);
}
void displayResetButton(Button button){
  button.display();
}
