        IDENTIFICATION DIVISION.
        PROGRAM-ID. CobolGreeting.
        DATA DIVISION.
        WORKING-STORAGE SECTION.
         01 IterNum PIC 9 VALUE 5.
        PROCEDURE DIVISION.
        BeginProgram.
         EXEC CICS
           WEB READ
           FORMFIELD(ID)
           VALUE(EID)  
         END-EXEC.
		 
         EXEC CICS 
           WEB SEND
           FROM(EID)  
         END-EXEC.
        STOP RUN.
		