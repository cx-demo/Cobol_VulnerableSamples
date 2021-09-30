       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO.
       PROCEDURE DIVISION.
      * my password=hi
           A-PARA.
           MOVE "scott" TO UID.
           MOVE "tiger" TO PWD.
           EXEC SQL
             CONNECT :UID
             IDENTIFIED BY :PWD
             AT :MYCONN
             USING :MYSERVER
           END-EXEC.
	   STOP RUN.