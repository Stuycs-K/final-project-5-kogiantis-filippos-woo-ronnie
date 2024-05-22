public class Board{
  int[][] board;
  
  public Board(){
    this(20,9);
  }
  public Board(int r, int c){
    board = new int[r][c];
    //for (int r = 0;r<board.length;r++){
    //  for (int c = 0;c<board[0].length;c++){
    //    board[
    //  }
    //}
  }
  public int getBlock(int r, int c){
    return board[r][c];
  }
  public void setBlock(int r, int c, int val){
    board[r][c] = val;
  }
}
