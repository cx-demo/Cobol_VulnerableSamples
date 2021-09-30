        IDENTIFICATION DIVISION.
        PROGRAM-ID. CobolGreeting.
        DATA DIVISION.
        WORKING-STORAGE SECTION.
         01 IterNum PIC 9 VALUE 5.        
        PROCEDURE DIVISION.
          EXEC CICS DUMP TRANSACTION
          DUMPCODE('file')
          FROM(data-area)
          LENGTH(data-value)
          END-EXEC.
        STOP RUN.