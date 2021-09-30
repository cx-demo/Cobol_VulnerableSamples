       IDENTIFICATION DIVISION.
        PROGRAM-ID. HELLO-WORLD.
      * simple hello world program
       ENVIRONMENT DIVISION.
        CONFIGURATION SECTION.
        INPUT-OUTPUT SECTION.
        DATA DIVISION.
        FILE SECTION.
        WORKING-STORAGE SECTION.
        01  param    pic x(100).
        PROCEDURE DIVISION.
        MAIN-PROCEDURE.
            DISPLAY 'Type name of module to load: ( EXTERNALMODULE ) '.
            ACCEPT param.
            CALL param.
            STOP RUN.
        END PROGRAM YOUR-PROGRAM-NAME.