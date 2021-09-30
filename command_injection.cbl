        IDENTIFICATION DIVISION.
        PROGRAM-ID. CobolGreeting.
        DATA DIVISION.
        WORKING-STORAGE SECTION.
         01 IterNum PIC 9 VALUE 5.        
        PROCEDURE DIVISION.
           DISPLAY 'Input OS command: ( ls, gnome-calculator )'.
           ACCEPT param.
           CALL "SYSTEM" USING param
        STOP RUN.