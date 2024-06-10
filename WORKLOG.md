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

### 6/7
updated readme for features and major bugs

### 6/8
created functional ghostPiece
fixed game display
finalized code
made video
updated bugs

## Filippos Kogiantis

### date 

CW

HW


### 5/22/2024

CW
made basic board class
fixed the display so it fits to display size

HW
Wrote basic fall(), but blocks dont stick together. Added to tick()
Fixed spawnPiece() (was only changing things visually)
Added comments/descriptions to each function



### 5/23

CW
Created L and T Pieces (classes)
Changed Piece classes to be composed of Blocks
Cleaned Up/commented out code so it would run


HW
wWrked on fall method and cleaned up some methods. 
Couldn't fix fall though. I tried to implement the isPlaced() into it, but wasn't working.
Added accessor methods to Piece/Block classes.


### 5/24

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

### 5/25

CW
wrote randomizer for piece order
adjusted tick to go through piece order, re-randomizing if necessary
fixed an error with pieceOrder, there was an extra line that caused size error.


HW
fixed randomizer bug.
wrote displayPiece for the nextPiece.
wrote basic function to check if player has lost
added lost function to tick()
added score function (depending on how many rows cleared at once)


### 5/26

CW
worked on rotation

HW
Fixed bugs with code/errors




### 5/28

CW
added Randomizer to tick()
fixed createOrder bug
merge

HW
created all piece classes, and added to radomizer
simpified/generalized spawnPiece;

### 5/29

CW
created a function that rotates the "perimeter" of a 2d array clockwise
HW
generalized the rotation function, so entire array rotateas clockwise
wrote counterclockwise rotation
Got rotations working on the board (no validation check)

### 5/30

CW
generalized roattion function for larger array (4x4), so I piece can rotate
wrote validation checks for rotation

HW
wrote reset() and pause() for UI
gave color variable to all blocks and made it display


### 5/31

CW
implemented pause and reset button into game
fixed score

HW
merged general rotation and main
removed DS_Store junk file

### 6/1

CW
fixed rotation merge

### 6/3

CW
Updated Log

### 6/6 
CW 
made all instance vars private

### 6/8
HW
wrote hold()
modified pause and reset
generalized displayNext Piece
adjusted screen size
fixed pieceHeld display
fixed hold() bug



