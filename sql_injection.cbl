       Identification Division.
       Program-ID. ExecSql.

       Procedure Division.
	   PARA.
          ACCEPT USER1.
          ACCEPT ITM.
          MOVE "SELECT * FROM items WHERE owner = '" TO QUERY1.
          MOVE "' AND itemname = '" TO QUERY2.
          MOVE "'" TO QUERY3.

          STRING
            QUERY1, USER1, QUERY2, ITM, QUERY3 DELIMITED BY SIZE
            INTO QUERY
          END-STRING.

          EXEC SQL
          EXECUTE IMMEDIATE :QUERY
          END-EXEC
		  
       STOP RUN.
