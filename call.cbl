       IDENTIFICATION DIVISION.
       PROGRAM-ID.  DoCalc.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
              01 OPTS           PIC 9     VALUE ZEROS.
              01 OPT1           PIC 9     VALUE ZEROS.
              01 OPT2           PIC 99    VALUE 0.
       PROCEDURE DIVISION.
          ACCEPT OPT1.
          ACCEPT OPT2.
          COMPUTE OPTS = OPT1 + OPT2.
          CALL 'MQOPEN' USING HCONN, OBJECTDESC, OPTS, HOBJ, COMPOCODE
            , REASON.
       STOP RUN.