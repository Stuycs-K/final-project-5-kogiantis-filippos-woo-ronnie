# Work Log

## Ronnie Woo

### 5/22

made game display
made piece class
made i piece class
added spawning i piece 

### 5/23

created block class
implemented block class within board and piece classes
fixed spawnPiece and fall

### 5/28
created moveLeft() and moveRight()
changed frameRate implementation
created hardDrop() and soft dropping

## Filippos Kogiantis

### date 

CW

HW


### date 5/22/2024

CW
made basic board class
fixed the display so it fits to display size

HW
Wrote basic fall(), but blocks dont stick together. Added to tick()
Fixed spawnPiece() (was only changing things visually)
Added comments/descriptions to each function



### date 5/23

CW
Created L and T Pieces (classes)
Changed Piece classes to be composed of Blocks
Cleaned Up/commented out code so it would run


HW
wWrked on fall method and cleaned up some methods. 
Couldn't fix fall though. I tried to implement the isPlaced() into it, but wasn't working.
Added accessor methods to Piece/Block classes.


### date 5/24

CW
N/A out for Calc BC exam

HW
Added functions that will clear row (unable to test thoroughly bc we can't control pieces yet):
    isRowFilled(int r) (helper for whichRowsFilled())
    whichRowsFilled()
    clearRow(int r)
    rowFall(int r)
    arePlaced() (checks if there are any unplaced blocks. However, this is uneccessary, since we have an instance variable that holds the current piece. Only the current piece is inplaced, we only have to check this.)
adjusted display function so the size of the grid fits to the window size
adjusted tick() so that everytime a peice is placed, a new one spawns
Updated Log


