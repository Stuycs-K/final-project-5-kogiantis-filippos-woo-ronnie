static final int blocksize = 20;
int[][] grid;
void setup(){
  size(400,400);
  windowResize(displayWidth-200,displayHeight-200);
  //20 rows and 9 columns
  grid = new int[20][9];
}
void draw() {
  fill(0,0,0);
  stroke(255);
  for (int r = 0; r < 20; r += 1){
    for (int c = 0; c < 9; c += 1){
      square(c*blocksize,r*blocksize,blocksize);
    }
  }
  noFill();
  noStroke();
}
