INCLUDE Irvine32.inc

; Data section
.data

    enterPrompt db "PRESS ENTER TO CONTINUE",0

    instructionsText BYTE "Pac-Man Game Instructions", 0
    instructionsText2 BYTE "--------------------------", 0
    instructionsText3 BYTE "Navigate Pac-Man through the maze and collect dots.", 0
    instructionsText4 BYTE "Avoid ghosts and obstacles to stay alive.", 0
    instructionsText5 BYTE "Use power pellets to temporarily eat ghosts.", 0
    instructionsText6 BYTE "Collect fruit bonuses for extra points.", 0
    instructionsText7 BYTE "Reach the boss ghost in Level 3 for the ultimate showdown!", 0

    instructions BYTE "Press Enter key to return to the main menu...", 0

    

    pacman1  db "******************************************************************************************************",0
    pacman2  db "* ************************************************************************************************** *",0
    pacman3  db "* *                                                                                                * *",0
    pacman4  db "* *        *********    *********    *********        *         *    *********    * *   * *        * *",0
    pacman5  db "* *        *********    *********    *********        * *     * *    * ***** *    ** *  * *        * *",0
    pacman6  db "* *        **     **    **     **    ***              *  *   *  *    * *   * *    * * * * *        * *",0
    pacman7  db "* *        *********    *********    ***              * * * * * *    * ***** *    *  * ** *        * *",0
    pacman8  db "* *        *********    *********    ***              * ** * ** *    * ***** *    * * * * *        * *",0
    pacman9  db "* *        ***          ***   ***    ***              * * * * * *    * *   * *    * ** *  *        * *",0
    pacman10 db "* *        ***          ***   ***    ***              * *  *  * *    * *   * *    * * * * *        * *",0
    pacman11 db "* *        ***          ***   ***    *********        * *     * *    * *   * *    * *  * **        * *",0
    pacman12 db "* *        ***          ***   ***    *********        * *     * *    ***   ***    * *   * *        * *",0
    pacman13 db "* *                                                                                                * *",0
    pacman14 db "* ************************************************************************************************** *",0
    pacman15 db "******************************************************************************************************",0

    PACX DB 10
    PACY DB 7

    maze1 db "==========================================",0
    maze2      db   "=                                        =",0
    maze3      db   "=                                        =",0
    maze4      db   "=                                        =",0
    maze5      db   "=         ======================         =",0
    maze6      db   "=                                        =",0
    maze7      db   "=                                        =",0
    maze8      db   "=                                        =",0
    maze9      db   "=         ======================         =",0
    maze10      db   "=                                        =",0
    maze11     db   "=                                        =",0
    maze12      db   "=                                        =",0
    maze13      db   "=         ======================         =",0
    maze14      db   "=                                        =",0
    maze15      db   "=                                        =",0
    maze16      db   "=                                        =",0
    maze17      db   "=         ======================         =",0
    maze18      db   "=                                        =",0
    maze19      db   "=                                        =",0
    maze20      db   "=                                        =",0
    maze21      db   "==========================================",0

    maze_2_1  db "****************************************",0
  maze_2_2  db "******                           *******",0
  maze_2_3  db "******                           *******",0
  maze_2_4  db "******                           *******",0
  maze_2_5  db "******    *******************    *******",0
  maze_2_6  db "******    *******************    *******",0
  maze_2_7  db "******    *******************    *******",0
  maze_2_8  db "******    *******************    *******",0
  maze_2_9  db "******    *******************    *******",0
  maze_2_10 db "******    *******************    *******",0
  maze_2_11 db "                                        ",0
  maze_2_12 db "******    *******************    *******",0
  maze_2_13 db "******    *******************    *******",0
  maze_2_14 db "******    *******************    *******",0
  maze_2_15 db "******    *******************    *******",0
  maze_2_16 db "******    *******************    *******",0
  maze_2_17 db "******    *******************    *******",0
  maze_2_18 db "******                           *******",0
  maze_2_19 db "******                           *******",0
  maze_2_20 db "******                           *******",0
  maze_2_21 db "****************************************",0

; Constants for screen size
    SCREEN_WIDTH DWORD 640
    SCREEN_HEIGHT DWORD 480
    PACMAN_CHAR BYTE 'C' 

    userInput BYTE 256 DUP(?)

     menuOptions BYTE "1. Level 1",0 
                BYTE "2. Level 2", 0
                BYTE "3. Level 3", 0
                BYTE "4. High Score",0 
                BYTE "5. Instructions", 0

    menuPrompt BYTE "Select an option (1-5): ", 0
    invalidMsg BYTE "Invalid option. Please try again.", 0
    
    buffer BYTE 1 DUP(?) ; Buffer to store the entered key

    PACMAN_STR db "PACMAN",0

    prompt db "ENTER YOUR NAME : ",0

    scorePrompt db "SCORE : "

    namePrompt db "Name : ",0

    levelPrompt db "LEVEL : "

    gamelevel dword 0

    levesPrompt db "YOUR LIVES COUNT",0

    playerName BYTE 30 DUP(?)
    score byte 0
    level DWORD 1

    gamePaused      BYTE 0      ; 0 indicates the game is not paused
    gamePausedMsg   BYTE "Game Paused",0
    keyPressed      BYTE ?

    endgamescoreprompt db "YOUR SCORE IS : "
 
    ; Ghost behaviors for different levels
    ghostBehaviorLevel1 DWORD 00000001b 
    ghostBehaviorLevel2 DWORD 00000011b 
    ghostBehaviorLevel3 DWORD 00001111b 

    ; Other variables for player, ghosts, etc.
    playerX byte 80
    playerY byte 24
    
    lives dword 3

    formatString    db "%d", 0 ; Format string for converting integers to strings

    heartSymbol BYTE '*','*','*', 0

    ghosty2 db 6 

    mazex db 40
    mazey db 7

    fileName    BYTE "FILEHANDLING.txt", 0
    nameStr     BYTE "Player Name   : ", 0
    scoreStr     BYTE "Player Score : ", 0
    levelStr     BYTE "Player Level : ", 0

    lineBreak   BYTE 13, 10, 0  ; ASCII codes for Carriage Return (CR) and Line Feed (LF)

    bytesRead   DWORD ?


    bb db 0

    endgame db "GAME ENDED",0

    coinX byte 45,50,65,70,75,43,54,78,48,72   ; X-coordinate for the coin
    coinY byte 9,8,12,16,13,17,21,24,9,8    ; Y-coordinate for the coin
    index dword 0

    
    coinX2 byte 46,50,55,57,60,66,71,63,56,50   ; X-coordinate for the coin
    coinY2 byte 16,9,8,7,24,8,24,16,9,23    ; Y-coordinate for the coin
   
    bonusX byte 46,50,55,57,60,66,71,63,56,50   ; X-coordinate for the coin
    bonusY byte 16,9,8,7,24,8,24,16,9,23    ; Y-coordinate for the coin


    bonusX2 byte 46
    bonusY2 byte 16
    BONUS_CHAR BYTE 'B'
    COIN_CHAR BYTE '*'  ; Character representing the coin

    ghostX      byte 41       ; Initial x-coordinate for the ghost
    ghostColor  DWORD 4         ; Red color (attribute 4 in text mode)
    ghostChar   BYTE 'G', 0    ; Character representing the ghost
    screenWidth DWORD 80        ; Assuming a screen width of 80 columns
    ghostY      byte 6

    bonusfruit db 0

; Code section
.code

; Procedure to set cursor position based on input parameters
SetCursorPosition PROC
    ; Retrieve the X and Y coordinates from parameters
    mov eax, [esp + 4] ; First parameter (X coordinate)
    mov ebx, [esp + 8] ; Second parameter (Y coordinate)

    ; Set the cursor position
    call Gotoxy

    ret

SetCursorPosition ENDP
;--------------------------------PAUSE GAME

CheckKeyPress PROC
    ; Wait for a key press
    call ReadKey
    mov keyPressed, al  ; Store the pressed key in the keyPressed variable

    ; Check if the pressed key is 'P' or 'p'
    cmp keyPressed, 'P'
    je  TogglePause

    cmp keyPressed, 'p'
    je  TogglePause

    ; Check if the game is paused; if so, check for the 'R' or 'r' key
    cmp gamePaused, 1
    je  CheckResume

    ; Continue with the game
    jmp ContinueGame

TogglePause:
    ; Toggle the gamePaused flag
    xor gamePaused, 1

    ; If the game is paused, display the message; otherwise, clear the screen
    cmp gamePaused, 1
    je  DisplayPauseMsg
    jmp Clrscr

DisplayPauseMsg:
    ; Display "Game Paused" message
    call Clrscr  ; Clear the screen (optional)
    mov edx, OFFSET gamePausedMsg
    call WriteString
    jmp CheckKeyPress ; Wait for the 'R' key to be pressed

CheckResume:
    ; Check if the pressed key is 'R' or 'r' to resume the game
    cmp keyPressed, 'R'
    je  TogglePause

    cmp keyPressed, 'r'
    je  TogglePause

    ; Continue with the game
    jmp ContinueGame

ContinueGame:
    ret
CheckKeyPress ENDP



;--------------------------------COIN DISPLAY

DrawCoin PROC
    ; Set cursor position for the coin
   
    mov esi,index

    cmp esi,10
    je change

    jmp a

change:
    mov esi,0
    mov index,esi


a:

    mov dl, coinX[esi]
    mov dh, coinY[esi]
    call Gotoxy

    ; Draw the coin character
    mov al, COIN_CHAR
    call WriteChar

    mov dl, 0
    mov dh, 0
    call Gotoxy

    ret
DrawCoin ENDP

;--------------------------------coin 2

DrawCoin2 PROC
    ; Set cursor position for the coin
    mov esi, index

    cmp esi, 10
    je change

    cmp esi, 2
    je bonus

    cmp esi, 9
    je bonus
    jmp a

change:
    mov esi, 0
    mov index, esi
    jmp a

bonus:
    mov al, bonusX2
    cmp al, 0   ; Check if bonus is present
    je a        ; If not, jump to normal coin drawing

    mov al, 1
    mov bb, al
    mov dl, bonusX2
    mov dh, bonusY2
    call Gotoxy

    ; Draw the coin character
    mov al, BONUS_CHAR
    call WriteChar

    mov bb, 1

    inc esi

    ret

a:
    mov dl, coinX2[esi]
    mov dh, coinY2[esi]
    call Gotoxy

    ; Draw the coin character
    mov al, COIN_CHAR
    call WriteChar

    mov dl, 0
    mov dh, 0
    call Gotoxy

    ret
DrawCoin2 ENDP



;--------------------------------MAIN Screen

PACDISPLAY PROC
    ; Set cursor position


    dec PACY

    mov dl, PACX    ; Set column (x-coordinate) to 20
    mov dh, PACY    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure


    mov eax, brown  ; brown color 
    call SetTextColor

    ;mov eax, black + (lightcyan shl 4) ; For Background
    call SetTextColor

    ; Display menu options
    mov edx, OFFSET pacman1
    call WriteString
    call CrLf
    inc PACY

   
    mov dl, PACX    ; Set column (x-coordinate) to 20
    mov dh, PACY    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET pacman2
    call WriteString
    call CrLf
    inc PACY

   
    mov dl, PACX    ; Set column (x-coordinate) to 20
    mov dh, PACY    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET pacman3
    call WriteString
    call CrLf
    inc PACY

   
    mov dl, PACX    ; Set column (x-coordinate) to 20
    mov dh, PACY    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET pacman4
    call WriteString
    call CrLf
    inc PACY


   
    mov dl, PACX    ; Set column (x-coordinate) to 20
    mov dh, PACY    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET pacman5
    call WriteString
    call CrLf
    inc PACY

   
    mov dl, PACX    ; Set column (x-coordinate) to 20
    mov dh, PACY    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET pacman6
    call WriteString
    call CrLf
    inc PACY


   
    mov dl, PACX    ; Set column (x-coordinate) to 20
    mov dh, PACY    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET pacman7
    call WriteString
    call CrLf
    inc PACY


   
    mov dl, PACX    ; Set column (x-coordinate) to 20
    mov dh, PACY    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET pacman8
    call WriteString
    call CrLf
    inc PACY

   
    mov dl, PACX    ; Set column (x-coordinate) to 20
    mov dh, PACY    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET pacman9
    call WriteString
    call CrLf
    inc PACY

   
    mov dl, PACX    ; Set column (x-coordinate) to 20
    mov dh, PACY    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET pacman10
    call WriteString
    call CrLf
    inc PACY


   
    mov dl, PACX    ; Set column (x-coordinate) to 20
    mov dh, PACY    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET pacman11
    call WriteString
    call CrLf
    inc PACY

   
    mov dl, PACX    ; Set column (x-coordinate) to 20
    mov dh, PACY    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET pacman12
    call WriteString
    call CrLf
    inc PACY

   
    mov dl, PACX    ; Set column (x-coordinate) to 20
    mov dh, PACY    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET pacman13
    call WriteString
    call CrLf
    inc PACY

   
    mov dl, PACX    ; Set column (x-coordinate) to 20
    mov dh, PACY    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET pacman14
    call WriteString
    call CrLf
    inc PACY

   
    mov dl, PACX    ; Set column (x-coordinate) to 20
    mov dh, PACY    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET pacman15
    call WriteString
    call CrLf
    inc PACY




    mov mazey,7


    mov eax, WHITE  ; White color 
    call SetTextColor

    ret
PACDISPLAY ENDP

;-------------------------CHECK ENTER PRESSED

WaitForKeyPress PROC
     mov eax, 0
WaitLoop:
    call ReadChar          ; Read a character
    cmp al, 13             ; Check if the character is Enter (ASCII 13)
    je Done                ; If Enter is pressed, exit the loop
    jmp WaitLoop           ; Continue waiting for Enter
Done:
    ret
WaitForKeyPress ENDP


; ------ DRAW PACMAN
     DrawPacman PROC
    ; Set cursor position
    mov dl, playerX    ; Set column (x-coordinate) to 10
    mov dh, playerY     ; Set row (y-coordinate) to 5
    call Gotoxy   ; Call the Gotoxy procedure

 

    ; Draw Pac-Man character
    mov al, PACMAN_CHAR
    call WriteChar

    ret
DrawPacman ENDP

;-----------------------MOVEMENT 

; Function to check if a key is pressed without waiting
CheckForKey PROC
    mov eax, 0
    call ReadKey
    ret
CheckForKey ENDP

;----------------------DISPLAY LIVES



; Procedure to get key input
GetArrowKeyInput PROC
    mov eax, 0          ; Clear EAX for keyboard input
    call CheckForKey    ; Check for key press (non-blocking)
    cmp al, 0           ; Check if a key is pressed
    je  NoKeyPress      ; If no key is pressed, continue without updating movement

    ; Introduce a delay to prevent fluctuations
    mov ecx, 191111111     ; Adjust this value to control the delay duration
    delay_loop:
        loop delay_loop

 ;   call ReadChar       ; Read the pressed key
    mov keyPressed, al  ; Store the pressed key in the keyPressed variable

    ; Check keys and update player position accordingly
    cmp keyPressed, 'w'
    je  move_up

    cmp keyPressed, 'a'
    je  move_left

    cmp keyPressed, 's'
    je  move_down

    cmp keyPressed, 'd'
    je  move_right

    cmp keyPressed, 'p'
    je  pause_Screen

NoKeyPress:
    ret

move_up:
    dec playerY          ; Move the object up
    ret

move_left:
    dec playerX          ; Move the object left
    ret

move_down:
    inc playerY          ; Move the object down
    ret

move_right:
    inc playerX          ; Move the object right
    ret

pause_Screen:
    mov dl, 45           ; Set column (x-coordinate) to 20
    mov dh, 10           ; Set row (y-coordinate) to 30
    call Gotoxy          ; Call the Gotoxy procedure

    ; Display "Game Paused" message
    call Clrscr           ; Clear the screen 
    mov edx, OFFSET gamePausedMsg
    call WriteString

    call ReadChar
    cmp al, 'r'
    je  cont

    jmp pause_Screen

cont:
    call Clrscr
    ret

GetArrowKeyInput ENDP



WaitForPress PROC
    mov eax, 0
WaitLoop:
    call ReadKey
    cmp eax, 0 ; Check if a key is pressed
    je WaitLoop
    ret
WaitForPress ENDP

;--------------------------------DRAW MAZE

mazelevel1 PROC
    ; Set cursor position
    dec mazey
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze1
    call WriteString
    call CrLf
    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze2
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze3
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze4
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze5
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze6
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze7
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze8
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze9
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze10
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze11
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze12
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze13
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze14
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze15
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze16
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze17
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze18
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze19
    call WriteString
    call CrLf

     inc mazey

     ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze21
    call WriteString
    call CrLf

    mov mazey,7

    ret
mazelevel1 ENDP


;-----------------------------mazelevel2
mazelevel2 PROC
    ; Set cursor position
    dec mazey
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze_2_1
    call WriteString
    call CrLf
    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze_2_2
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze_2_3
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze_2_4
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze_2_5
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze_2_6
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze_2_7
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze_2_8
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze_2_9
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze_2_10
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze_2_11
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze_2_12
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze_2_13
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze_2_14
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze_2_15
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze_2_16
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze_2_17
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze_2_18
    call WriteString
    call CrLf

    inc mazey

    ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze_2_19
    call WriteString
    call CrLf

     inc mazey

     ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze_2_20
    call WriteString
    call CrLf

         inc mazey

     ; Set cursor position
    mov dl, mazex    ; Set column (x-coordinate) to 20
    mov dh, mazey    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    ; Display menu options
    mov edx, OFFSET maze_2_21
    call WriteString
    call CrLf

    mov mazey,7

    ret
mazelevel2 ENDP


;----------------------FILE HANDLING 


filehandling proc
    ; Open the file for writing or create if it doesn't exist
    invoke CreateFile, ADDR fileName, FILE_APPEND_DATA, FILE_SHARE_WRITE, 0, OPEN_ALWAYS, FILE_ATTRIBUTE_NORMAL, 0
    mov ebx, eax ; Save the file handle

    ; Check if the file handle is valid
    cmp ebx, INVALID_HANDLE_VALUE
    je  fileError

    ; Write nameStr to the file
    invoke WriteFile, ebx, ADDR namestr, LENGTHOF namestr, ADDR bytesRead, 0
    test eax, eax
    jz  fileError ; If WriteFile fails, jump to fileError

    ; Write userInput to the file
    invoke WriteFile, ebx, ADDR userInput, LENGTHOF userInput, ADDR bytesRead, 0
    test eax, eax
    jz  fileError ; If WriteFile fails, jump to fileError

    ; Write a line break to the file
    invoke WriteFile, ebx, ADDR lineBreak, LENGTHOF lineBreak, ADDR bytesRead, 0
    test eax, eax
    jz  fileError ; If WriteFile fails, jump to fileError

    ; Write levelstr to the file
    invoke WriteFile, ebx, ADDR levelstr, LENGTHOF levelstr, ADDR bytesRead, 0
    test eax, eax
    jz  fileError ; If WriteFile fails, jump to fileError

    ; Convert gamelevel to a string and write to the file
    invoke wsprintf, ADDR buffer, ADDR formatString, gamelevel
    invoke WriteFile, ebx, ADDR buffer, LENGTHOF buffer, ADDR bytesRead, 0
    test eax, eax
    jz  fileError ; If WriteFile fails, jump to fileError

    ; Write a line break to the file
    invoke WriteFile, ebx, ADDR lineBreak, LENGTHOF lineBreak, ADDR bytesRead, 0
    test eax, eax
    jz  fileError ; If WriteFile fails, jump to fileError

    ; Write scorestr to the file
    invoke WriteFile, ebx, ADDR scorestr, LENGTHOF scorestr, ADDR bytesRead, 0
    test eax, eax
    jz  fileError ; If WriteFile fails, jump to fileError

    ; Convert score to a string and write to the file
    invoke wsprintf, ADDR buffer, ADDR formatString, score
    invoke WriteFile, ebx, ADDR buffer, LENGTHOF buffer, ADDR bytesRead, 0
    test eax, eax
    jz  fileError ; If WriteFile fails, jump to fileError

    ; Write a line break to the file
    invoke WriteFile, ebx, ADDR lineBreak, LENGTHOF lineBreak, ADDR bytesRead, 0
    test eax, eax
    jz  fileError ; If WriteFile fails, jump to fileError

    ; Write a line break to the file
    invoke WriteFile, ebx, ADDR lineBreak, LENGTHOF lineBreak, ADDR bytesRead, 0
    test eax, eax
    jz  fileError ; If WriteFile fails, jump to fileError


    ; Close the file
    invoke CloseHandle, ebx

    jmp endProgram

fileError:
    ; Handle file errors 

endProgram:
    ret

filehandling endp



;-----------------------COLLISION CHECK

checkcollision proc

    cmp playerX,40
    jle ex

    cmp playerX,81
    jge ex

    cmp playerY,25
    jge ex

    cmp playerY,6
    jle ex

    cmp playerY,22
    jge checkup

    cmp playerY,18
    jge checkup2

    cmp playerY,14
    jge checkup3

    cmp playerY,10
    jge checkup4

    jmp continue

checkup:
    cmp playerX,71
    jle checkleft

    jmp continue

checkleft:
    cmp playerX,50
    jge checkdown

    jmp continue

checkdown:
    cmp playerY,23
    jge continue

    jmp ex

checkup2:
    cmp playerX,71
    jle checkleft2

    jmp continue

checkleft2:
    cmp playerX,50
    jge checkdown2

    jmp continue

checkdown2:
    cmp playerY,19
    jge continue

    jmp ex

checkup3:
    cmp playerX,71
    jle checkleft3

    jmp continue

checkleft3:
    cmp playerX,50
    jge checkdown3

    jmp continue

checkdown3:
    cmp playerY,15
    jge continue

    jmp ex

checkup4:
    cmp playerX,71
    jle checkleft4

    jmp continue

checkleft4:
    cmp playerX,50
    jge checkdown4

    jmp continue

checkdown4:
    cmp playerY,11
    jge continue

    jmp ex
  
continue:

    mov al,playerX
    mov bl,ghostX

    cmp al,bl
    je check1

    jmp cont

check1:
    mov al,playerY
    cmp al,8
    je ex

    

cont:

    mov al,playerX
    mov bl,ghostY

    cmp al,45
    je check2

    jmp con

check2:
    mov al,playerY
    cmp al,bl
    je ex


con:

    ret

    ex:

    mov eax,lives
    dec eax
    mov lives,eax


    cmp al,1
    jl endgam

    ret
    

endgam:

    call ClrScr
    ; Display menu options
    mov edx, OFFSET endgame
    call WriteString
    call CrLf

     ; Display menu options
    mov edx, OFFSET endgamescoreprompt
    call WriteString

    mov eax,0
    mov al,score
    call WriteInt
    call CrLf

     mov edx,OFFSET namePrompt
    call WriteString

    mov edx, OFFSET userInput ; Assuming PACMAN_STR is a null-terminated string
    call WriteString

    call CrLf

    mov edx, OFFSET enterPrompt
    call WriteString
    call CrLf


    call WaitForKeyPress

    call filehandling

    call MainMenu

checkcollision endp


checkcollision2 proc

    cmp playerX,45
    jle checkmid

    cmp playerX,73
    jge checkmid

    cmp playerY,26
    jge ex

    cmp playerY,6
    jle ex



    cmp playerY,17
    jge checkup2


    cmp playerY,10
    jge checkup4

    jmp continue

checkmid:
    cmp playerY,16
    jne ex

    cmp playerX,80
    je change

    cmp playerX,39
    je change2

  jmp continue

change:
    mov playerX,40
    jmp continue

change2:
    mov playerX,79
    jmp continue

    jmp continue

checkup2:
    cmp playerX,68
    jle checkleft2

    jmp continue

checkleft2:
    cmp playerX,50
    jge checkdown2

    jmp continue

checkdown2:
    cmp playerY,23
    jge continue

    jmp ex

checkup4:
    cmp playerX,68
    jle checkleft4
    jmp continue

checkleft4:
    cmp playerX,50
    jge checkdown4
    jmp continue

checkdown4:
    cmp playerY,16
    jge continue
    jmp ex
  
continue:

    mov al,playerX
    mov bl,ghostX
    cmp al,bl
    je check1

    jmp cont

check1:
    mov al,playerY
    cmp al,8
    je ex

    

cont:

    mov al,playerX
    mov bl,ghostY

    cmp al,45
    je check2

    jmp con

check2:
    mov al,playerY
    cmp al,bl
    je ex


con:

     mov al,playerX
    mov bl,ghostY2

    cmp al,70
    je check3

    jmp co

check3:
    mov al,playerY
    cmp al,bl
    je ex

 co:  

    ret

    ex:

    mov eax,lives
    dec eax
    mov lives,eax


    cmp al,1
    jl endgam

    ret
    

endgam:

    call ClrScr
    ; Display menu options
    mov edx, OFFSET endgame
    call WriteString
    call CrLf

    ; Display menu options
    mov edx, OFFSET endgamescoreprompt
    call WriteString

    mov eax,0
    mov al,score
    call WriteInt
    call CrLf

    
     mov edx,OFFSET namePrompt
    call WriteString

    mov edx, OFFSET userInput ; Assuming PACMAN_STR is a null-terminated string
    call WriteString

    call CrLf

    mov edx, OFFSET enterPrompt
    call WriteString
    call CrLf


    call WaitForKeyPress

    call filehandling

    call MainMenu

checkcollision2 endp

checkcoin proc

    mov esi,index

    mov al ,playerX
    mov ah ,playerY
    mov bh ,coinX[esi]
    mov bl ,coinY[esi]
    
    cmp al,bh
    jne ex

    cmp ah,bl
    jne ex

    inc esi

    mov index,esi

    mov al,score
    add al,1
    mov score,al

ex:
    
    ret

checkcoin endp


;----------------------COIN 2 

checkcoin2 PROC
    mov esi, index

    mov al, playerX
    mov ah, playerY
    mov bh, coinX2[esi]
    mov bl, coinY2[esi]

    cmp al, bh
    jne ex

    cmp ah, bl
    jne ex

    inc esi

    mov index, esi

    mov al, score
    add al, 1
    mov score, al

ex:
    mov al, bb
    cmp al, 1
    jne e

    mov al, playerX
    mov ah, playerY
    mov bh, bonusX2
    mov bl, bonusY2

    cmp al, bh
    jne e

    cmp ah, bl
    jne e

    mov al, score
    add al, 5
    mov score, al

    ; Clear bonus from the screen
    mov bonusX2, 0
    mov bonusY2, 0

e:
    ret
checkcoin2 ENDP


;-----------------------HEADER

display proc


    mov dl, 12    ; Set column (x-coordinate) to 20
    mov dh, 5    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    mov eax,0

     mov edx, OFFSET scorePrompt ; Assuming PACMAN_STR is a null-terminated string
    call WriteString

    mov al, score
    call WriteInt

    mov dl, 87    ; Set column (x-coordinate) to 20
    mov dh, 5    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    mov eax,0

    mov edx,OFFSET namePrompt
    call WriteString

    mov edx, OFFSET userInput ; Assuming PACMAN_STR is a null-terminated string
    call WriteString

    mov dl, 56    ; Set column (x-coordinate) to 20
    mov dh, 5    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    mov eax,0

    mov edx,OFFSET levelPrompt
    call WriteString

    mov eax, gamelevel ; Assuming PACMAN_STR is a null-terminated string
    call WriteInt

    mov dl, 56    ; Set column (x-coordinate) to 20
    mov dh, 3    ; Set row (y-coordinate) to 30
    call Gotoxy   ; Call the Gotoxy procedure

    mov eax,0

    mov edx,OFFSET levesPrompt
    call WriteString

    mov eax, lives ; Assuming PACMAN_STR is a null-terminated string
    call WriteInt


    ret


display endp

;-----------------------Ghost level 1

MoveGhost PROC
   
  
    ; Update the x-coordinate for the ghost
    add ghostX, 1

    ; Wrap around to the beginning if the ghost reaches the end of the screen
    mov al,ghostX
    cmp al, 80
    jl  UpdateGhostPosition
    mov ghostX, 41

UpdateGhostPosition:
    ; Set the cursor position for the ghost
    mov dl, ghostX
    mov dh, 8  
    call Gotoxy

    ; Set the color attribute for the ghost (red)
    mov eax, ghostColor
    call SetTextColor

    ; Display the ghost character
    mov edx, OFFSET ghostChar
    call WriteString

     mov eax, 7   ; Set the color back to default (white)
    call SetTextColor

    ret
MoveGhost ENDP

MoveGhostY PROC
    ; Clear the previous position of the ghost
   
    mov ecx, 3111111     ; Adjust this value to control the delay duration
    delay_loop:
        loop delay_loop

    ; Update the x-coordinate for the ghost
    add ghostY, 1

    ; Wrap around to the beginning if the ghost reaches the end of the screen
    mov al,ghostY
    cmp al, 26
    jl  UpdateGhostPosition
    mov ghosty, 6

UpdateGhostPosition:
    ; Set the cursor position for the ghost
    mov dl, 45
    mov dh, ghostY   
    call Gotoxy

    ; Set the color attribute for the ghost (red)
    mov eax, ghostColor
    call SetTextColor

    ; Display the ghost character
    mov edx, OFFSET ghostChar
    call WriteString

     mov eax, 7   ; Set the color back to default (white)
    call SetTextColor

    ret
MoveGhostY ENDP

;-----------------------Ghost level 2

MoveGhost2 PROC

    ; Update the x-coordinate for the ghost
    add ghostX, 1

    ; Wrap around to the beginning if the ghost reaches the end of the screen
    mov al,ghostX
    cmp al, 73
    jl  UpdateGhostPosition
    mov ghostX, 46

UpdateGhostPosition:
    ; Set the cursor position for the ghost
    mov dl, ghostX
    mov dh, 8   
    call Gotoxy

    ; Set the color attribute for the ghost (red)
    mov eax, ghostColor
    call SetTextColor

    ; Display the ghost character
    mov edx, OFFSET ghostChar
    call WriteString

     mov eax, 7   ; Set the color back to default (white)
    call SetTextColor

    ret
MoveGhost2 ENDP

MoveGhostY2 PROC
    ; Clear the previous position of the ghost
   
    mov ecx, 3111111     ; Adjust this value to control the delay duration
    delay_loop:
        loop delay_loop

    ; Update the x-coordinate for the ghost
    add ghostY, 1

    ; Wrap around to the beginning if the ghost reaches the end of the screen
    mov al,ghostY
    cmp al, 26
    jl  UpdateGhostPosition
    mov ghosty, 7

UpdateGhostPosition:
    ; Set the cursor position for the ghost
    mov dl, 46
    mov dh, ghostY   
    call Gotoxy

    ; Set the color attribute for the ghost (red)
    mov eax, ghostColor
    call SetTextColor

    ; Display the ghost character
    mov edx, OFFSET ghostChar
    call WriteString

     mov eax, 7   ; Set the color back to default (white)
    call SetTextColor

    ret
MoveGhostY2 ENDP

MoveGhostY3 PROC
   
    mov ecx, 3111111     ; Adjust this value to control the delay duration
    delay_loop:
        loop delay_loop

    ; Update the x-coordinate for the ghost
    add ghostY2, 1

    ; Wrap around to the beginning if the ghost reaches the end of the screen
    mov al,ghostY2
    cmp al, 26
    jl  UpdateGhostPosition
    mov ghosty2, 7

UpdateGhostPosition:
    ; Set the cursor position for the ghost
    mov dl, 70
    mov dh, ghostY2   
    call Gotoxy

    ; Set the color attribute for the ghost (red)
    mov eax, ghostColor
    call SetTextColor

    ; Display the ghost character
    mov edx, OFFSET ghostChar
    call WriteString

     mov eax, 7   ; Set the color back to default (white)
    call SetTextColor

    ret
MoveGhostY3 ENDP

;-----------------------LEVEL 1
Level1 PROC
l1:

    

    call mazelevel1

    ; Draw Pacman
    CALL DrawPacman

    ; Draw the coin
    call DrawCoin

    ; Move the ghost
    call MoveGhost

    call MoveGhostY

    ; Get arrow key input
    call GetArrowKeyInput

    ; Check for collisions with walls and update player position
    call checkcollision

    ; Check for collecting coins and update score
    call checkcoin

    ; Update the display
    call display

    ; Continue the loop
    jmp l1
    ret
Level1 ENDP

Level2 PROC
l1:

    
    
    ; Draw the maze and display information
    call display
    
    ; call displaylives

    call mazelevel2

    ; Draw Pacman
    CALL DrawPacman
    
    ; Draw the coin
    call DrawCoin2

    ; Move the ghost
    call MoveGhost2

    call MoveGhostY2

    call MoveGhostY3

    ; Get arrow key input
    call GetArrowKeyInput

    ; Check for collisions with walls and update player position
   call checkcollision2

    ; Check for collecting coins and update score
    call checkcoin2

    ; Update the display
    call display

    ; Continue the loop
    jmp l1
    ret
Level2 ENDP

;------------------------------------------INSTRUCTIONS

displayinstructions proc

 call Clrscr    

    ; Display menu options
    mov edx, OFFSET instructionsText
    call WriteString

    ; Move to the next line
    call CrLf

    ; Display menu options
    mov edx, OFFSET instructionsText2
    call WriteString

    ; Move to the next line
    call CrLf

    ; Display menu options
    mov edx, OFFSET instructionsText3
    call WriteString

    ; Move to the next line
    call CrLf

    ; Display menu options
    mov edx, OFFSET instructionsText4
    call WriteString

    ; Move to the next line
    call CrLf

    ; Display menu options
    mov edx, OFFSET instructionsText5
    call WriteString

    ; Move to the next line
    call CrLf

    ; Display menu options
    mov edx, OFFSET instructionsText6
    call WriteString

    ; Move to the next line
    call CrLf

    ; Display menu options
    mov edx, OFFSET instructionsText7
    call WriteString

    ; Move to the next line
    call CrLf

     ; Move to the next line
    call CrLf

     ; Display menu options
    mov edx, OFFSET enterPrompt
    call WriteString

    ret

displayinstructions endp


;------------------------------------------MAIN MENU
 MainMenu PROC
    call Clrscr

    ; Display menu options
    mov edx, OFFSET menuOptions
    call WriteString

    ; Move to the next line
    call CrLf

    mov edx, OFFSET menuOptions[11]
    call WriteString

    ; Move to the next line
    call CrLf

    
    mov edx, OFFSET menuOptions[22]
    call WriteString

    ; Move to the next line
    call CrLf

    
    mov edx, OFFSET menuOptions[33]
    call WriteString

    ; Move to the next line
    call CrLf

    
    mov edx, OFFSET menuOptions[47]
    call WriteString

    ; Move to the next line
    call CrLf

    mov edx, OFFSET menuPrompt
    call WriteString

    ; Read user choice
    call ReadInt
    mov ebx, eax ; Store user choice in ebx

    mov gamelevel,eax

    ; Process user choice
    cmp ebx, 1
    je L1
    cmp ebx, 2
    je L2
    cmp ebx, 3
    je L3
    cmp ebx, 4
    je HighScore
    cmp ebx, 5
    je Instructionss

    ; Invalid choice
    mov edx, OFFSET invalidMsg
    call WriteString

    ; Wait for a key press to return to the main menu
    call WaitForKeyPress

    ; Jump back to the Main Menu
    jmp MainMenu

L1:
    call Clrscr
    call Level1
    ret

L2:
    call Clrscr
    mov playerX,51
    mov playerY,8

    mov ghostX,46
    mov ghostY,7

    call Level2
    ret

L3:
    call Clrscr

    ; Wait for a key press to return to the main menu
    call WaitForKeyPress

    ; Jump back to the Main Menu
    jmp MainMenu

HighScore:
    call Clrscr
    

    ; Wait for a key press to return to the main menu
    call WaitForKeyPress

    ; Jump back to the Main Menu
    jmp MainMenu

Instructionss:
    call Clrscr
    call displayinstructions
    call WaitForKeyPress

    ; Jump back to the Main Menu
    jmp MainMenu

    ret
MainMenu ENDP


;----------------------USER INPUT


GetUserInput PROC
    ; Get the length of the prompt
    mov eax, OFFSET prompt
    mov ecx, eax ; Length of the prompt

    ; Calculate the X coordinate to center the prompt
    mov eax, SCREEN_WIDTH
    shr eax, 1       ; Divide by 2 to get the center of the screen
    sub eax, ecx     ; Adjust for the length of the prompt
    mov ebx, 0       ; Y coordinate

    ; Pass X and Y coordinates to the procedure
    call SetCursorPosition

    ; Display the prompt
    mov edx, OFFSET prompt
    call WriteString

    ; Read a string from the user
    mov edx, OFFSET userInput
    mov ecx, SIZEOF userInput
    call ReadString

    ret
GetUserInput ENDP
     

Main PROC

    CALL PACDISPLAY

    ; Wait for a key press to return to the main menu
    
    call WaitForKeyPress

    call Clrscr

    call GetUserInput

    call Clrscr

    call MainMenu

     mov playerX, 10
     mov playerY, 10
     mov eax,10
     mov ebx,20
     call Gotoxy

        ret
    Main ENDP


END Main


