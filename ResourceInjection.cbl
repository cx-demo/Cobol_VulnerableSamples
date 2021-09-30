        IDENTIFICATION DIVISION.
        PROGRAM-ID. CobolGreeting.
        DATA DIVISION.
        WORKING-STORAGE SECTION.
         01 IterNum PIC 9 VALUE 5.
        PROCEDURE DIVISION.
        BeginProgram.
          ACCEPT QNAME.

          EXEC CICS
            READQ TD
            QUEUE(QNAME)
            INTO(DATA)
            LENGTH(LDATA)
          END-EXEC.
        STOP RUN.
		