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

### 5/29
added text for game display
cleaned up display
set default north orientation for all pieces

### 5/30
created button class
added reset button

### 5/31
added keyholding delay
fixed button text

## 6/2
changed UI to use absolute positioning
fixed score display and score reset
cleaned up code for demo

### 6/5
cleaned up code and removed extra comments

### 6/6
cleaned up code more
finished UML diagram
updated readme for controls

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

### date 5/25

CW
wrote randomizer for piece order
adjusted tick to go through piece order, re-randomizing if necessary
fixed an error with pieceOrder, there was an extra line that caused size error.


HW
fixed randomizer all randomizer issues.
wrote displayPiece for the nextPiece.
wrote basic function to check if player has lost
added lost function to tick()
added score function (depending on how many rows cleared at once)
created all piece classes, and added to radomizer
simpified/generalized spawnPiece;

### date 5/26

CW
worked on rotation
wrote a method that rotates a 2d array (3x3 only)

HW
Wrote a method that rotates the piece on the board
Fixed any issues with code/errors
generalized code for I piece (can rotate 4x4)


### date 5/27

CW

HW

### date 5/28

CW

HW


### date 6/3/2024
Updated Log


