       IDENTIFICATION DIVISION.
       PROGRAM-ID. MODULE_INJECTION2.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01  param    pic x(100).
        01  module    pic x(100).
      * simple hello world program
       PROCEDURE DIVISION.
            DISPLAY 'Module: ( system )'.
            ACCEPT module.
            DISPLAY 'Param: ( ls, gnome-calculator )'.
            ACCEPT param.
            CALL module USING param
        STOP RUN.