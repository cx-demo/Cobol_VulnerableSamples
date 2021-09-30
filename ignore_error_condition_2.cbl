        IDENTIFICATION DIVISION.
        PROGRAM-ID. CobolGreeting.
        DATA DIVISION.
        WORKING-STORAGE SECTION.
         01 IterNum PIC 9 VALUE 5.
        PROCEDURE DIVISION.
        
        EXEC CICS SEND
         FROM(VAR)
         LENGTH(LEN)
         NOHANDLE
        END-EXEC.