       IDENTIFICATION DIVISION.
       PROGRAM-ID. FILE_PATH_MANIPULATION.
  
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
      * Assigns reference to FILENAME string to STUDENT file descriptor
      * FILENAME is only read when OPEN INPUT STUDENT is called      
        SELECT STUDENT ASSIGN TO FILENAME
        ORGANIZATION IS LINE SEQUENTIAL.           
  
       DATA DIVISION.
       FILE SECTION.
       FD STUDENT.
         01 STUDENT-FILE.
          05 STUDENT-ID PIC 9(5).
          05 NAME PIC A(25).
 
         01 FILENAME PIC X(12).
  
       WORKING-STORAGE SECTION.
       01 WS-STUDENT.
         05 WS-STUDENT-ID PIC 9(5).
         05 WS-NAME PIC A(25).
       01 WS-EOF PIC A(1).       
       PROCEDURE DIVISION.
           ACCEPT FILENAME.
           OPEN INPUT STUDENT.
           PERFORM UNTIL WS-EOF='Y'
             READ STUDENT INTO WS-STUDENT
               AT END MOVE 'Y' TO WS-EOF
               NOT AT END DISPLAY WS-STUDENT
             END-READ
           END-PERFORM.
          CLOSE STUDENT.
          STOP RUN.