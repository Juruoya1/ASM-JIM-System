.386
.MODEL FLAT, STDCALL
OPTION CASEMAP:NONE

INCLUDE WINDOWS.INC

INCLUDE KERNEL32.INC
INCLUDELIB KERNEL32.LIB

INCLUDE MASM32.INC
INCLUDELIB MASM32.LIB

.DATA
       WE DB "JAGERLMASM [VERISON0.1A]",10,13
       WET DB "(C)YC JURION ALL RIGHTS RESERVED.",10,13
       LO DWORD 0
       SU DB "[SYSTEM] YOU CAN SAFE CLOSE YOUR PC!"
       L1 DWORD 0
       ABOUT DB "JAGERLMASM [VERISON0.1A]",10,13
       AB1 DB "(C)YC JURION ALL RIGHTS RESERVED",10,13
       AB2 DB "===========DEVELOPER===========",10,13
       AB3 DB "¡úDEVELOPER-JURUOYA1",10,13
       AB4 DB "¡úDEVELOPER-IRONICFROG60034",10,13
       L2 DWORD 0
       WONS DB "[GAME] YOU IS WIN -line84",10,13
       WON DB "[GAME] YOU IS WIN",10,13
       L3 DWORD 0
       DIE DB "[GAME] YOU WAS DEAD",10,13
       L4 DWORD 0
       ERR DB "[GAME] NO STRING",10,13
       L5 DWORD 0
       MYH DB "DEAD"
       MY DWORD 0
       FTH DB "  KILL"
       FT DWORD 0
       SR DB "[GAME] 1.BULLET/2.DART/3.RUN",10,13
       FARM DB "=1=2=3=4=5=",10,13 
       S DWORD 5
       DEFANT DWORD 31
       L6 DWORD 0
       TIT DB "HITBORD!",10,13  ;SET TIT TO SHOW IN TIT
       A DB "A",10,13
       B DB "B",10,13
       CC DB "C",10,13
       D DB "D",10,13
       E DB "E",10,13
       F DB "F",10,13
       G DB "G",10,13
       H DB "H",10,13
       I DB "I",10,13
       J DB "J",10,13
       K DB "K",10,13
       L DB "L",10,13
       M DB "M",10,13
       N DB "N",10,13 
       O DB "O",10,13
       P DB "P",10,13
       Q DB "Q",10,13
       R DB "R",10,13
       SH DB "S",10,13
       T DB "T",10,13
       U DB "U",10,13
       V DB "V",10,13
       W DB "W",10,13
       X DB "X",10,13
       Y DB "Y",10,13
       Z DB "Z",10,13
       SM DB "[HITBORD]  OK!",10,13
       WI DB "[HITBORD] COMPLETE!!!",10,13
       L7 DWORD 0
       EW DB "[SYSTEM] NO STRING!",10,13
       L8 DWORD 0
       EWIN DB "[SYSTEM] OK! BY AN KEY TO RETURN DOS.BUT YOU CAN INPUT JAGERLMASM TO RETURN JAM!"
       L9 DWORD 0
       IER DB "[ERROR] NO! SYSTEM IS ERROR AND CAN NOT TO KEEP SAFE!"
       LS DWORD 0
       IDLE DB "[IDLE] IDLE IS A NOTE FOR YOU TO DO",10,13
       LX DWORD 0
       HELP1 DB "THIS IS SOME COMMAND FOR SYSTEM",10,13
       HELP2 DB "1.H~TO SHOW HELP ",10,13
       HELP3 DB "2.F~TO SAFE CLOSE YOUR PC",10,13
       HELP4 DB "3.I~TO SHOW ABOUT THIS SYSTEM",10,13
       HELP5 DB "4.G~TO OPEN SHAIRP GAME",10,13
       HELP6 DB "5.Q~TO OPEN HITBORD GAME",10,13
       HELP7 DB "6.N~TO OPEN IDLE",10,13
       HELP8 DB "7.W~TO RETURN DOS SYSTEM",10,13

       
       
.DATA?
       INCOM DB 100 DUP(?)
       BUFF DB 100 DUP(?)
       BUFFER DB 100 DUP(?)
       IWIN DB 100 DUP(?)
       IDE DB 100 DUP(?)


.CODE
START:
       PUSH OFFSET WE
       CALL StdOut
       .WHILE TRUE
           PUSH 100
           PUSH OFFSET INCOM
           CALL StdIn
           .IF INCOM == "F"
               PUSH OFFSET SU
               CALL StdOut 
               PUSH 100
               PUSH OFFSET INCOM
               CALL StdIn
               .BREAK
           .ELSEIF INCOM == "I"
               PUSH OFFSET ABOUT
               CALL StdOut
               PUSH 100
               PUSH OFFSET INCOM
               CALL StdIn

           .ELSEIF INCOM == "G"
           
               .WHILE TRUE 
                   .WHILE S > 0
                       PUSH OFFSET FARM
                       CALL StdOut
                       DEC S
                   .ENDW
                   PUSH OFFSET DEFANT
                   CALL StdOut
                   PUSH 100
                   PUSH OFFSET SR
                   CALL StdOut
                   PUSH OFFSET BUFF
                   CALL StdIn
                   .IF BUFF == "1"
                       PUSH OFFSET MYH
                       CALL StdOut
                       ADD MY, 1
                       ADD FT, 2
                       PUSH OFFSET MY
                       CALL StdOut
                       PUSH OFFSET FTH
                       CALL StdOut
                       PUSH OFFSET FT
                       CALL StdOut

                   .ELSEIF BUFF == "2"
                       PUSH OFFSET MYH
                       CALL StdOut
                       ADD MY, 2
                       ADD FT, 2
                       PUSH OFFSET MY
                       CALL StdOut
                       PUSH OFFSET FTH
                       CALL StdOut
                       PUSH OFFSET FT
                       CALL StdOut
                   .ELSEIF BUFF == "3"
                       PUSH OFFSET MYH
                       CALL StdOut
                       DEC MY
                       DEC FT
                       PUSH OFFSET MY
                       CALL StdOut
                       PUSH OFFSET FTH
                       CALL StdOut
                       PUSH OFFSET FT
                       CALL StdOut
                   .ELSEIF BUFF == "8"
                       ;THE SAME TO SHOW WIN
                       PUSH OFFSET WONS
                       CALL StdOut
                       .BREAK 
                   .ELSE
                       ;SHOW TO ERR TO RETURN 
                       PUSH OFFSET ERR
                       CALL StdOut
                   .ENDIF
                   .IF FT == 5 
                       PUSH OFFSET WON
                       CALL StdOut
                       .BREAK
                   .ENDIF
                   .IF MY == 5
                       PUSH OFFSET DIE
                       CALL StdOut
                       .BREAK
                   .ENDIF
                   
               .ENDW
               PUSH 100
               PUSH OFFSET BUFF
               CALL StdIn
           .ELSEIF INCOM == "Q" 
           
               PUSH OFFSET TIT 
               CALL StdOut
               PUSH OFFSET A
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "A" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET B
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "B" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET CC
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "C" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET D
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "D" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET E
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "E" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET F
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "F" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET G
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "G" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET H
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "H" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET I
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "I" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET J
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "J" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET K
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "K" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET L
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "L" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET M
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "M" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET N
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "N" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET O
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "O" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET P
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "P" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET Q
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "Q" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET R
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "R" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET S
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "S" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET T
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "T" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET U
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "U" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET V
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "V" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET W
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "W" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET X
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "X" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET Y
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "Y" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH OFFSET Z
               CALL StdOut
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               .IF BUFFER == "Z" 
                   PUSH OFFSET SM
                   CALL StdOut
               .ENDIF
               PUSH 100
               PUSH OFFSET BUFFER
               CALL StdIn
               PUSH OFFSET WI
               CALL StdOut
           .ELSEIF INCOM == "W"
               PUSH OFFSET EWIN 
               CALL StdOut 
               PUSH 100
               PUSH OFFSET IWIN
               CALL StdIn
               .BREAK
           .ELSEIF INCOM == "~"
               PUSH OFFSET IER
               CALL StdOut
               .BREAK
           .ELSEIF INCOM == "N"
               PUSH OFFSET IDLE
               CALL StdOut
               .WHILE TRUE
                   PUSH 100
                   PUSH OFFSET IDE
                   CALL StdIn
                   .IF IDE == "X" 
                       .BREAK
                   .ENDIF
               .ENDW 
           .ELSEIF INCOM == "H"
               PUSH OFFSET HELP1
               CALL StdOut
           .ELSE
               PUSH OFFSET EW
               CALL StdOut
           .ENDIF
           
       .ENDW
EXIT:
       PUSH 0
       CALL ExitProcess
END START