000010  IF WS-QTY > 99999999. THEN 
000020      DISPLAY "QUANTITY FIELD OVERFLOW." 
000030      STOP RUN. 
000040  END-IF. 

The solution involves using a larger data type for WS-QTY if it is the cause, and add input validation to prevent the data from exceeding the data type capacity, for example: 

000010  *>Check data type size and adjust if necessary.
000020  01 WS-QTY PIC 9(15). 
000030  IF WS-QTY > 99999999999999. THEN 
000040      DISPLAY "QUANTITY FIELD OVERFLOW." 
000050      STOP RUN. 
000060  END-IF.

This solution adds more input validation to ensure that any number greater than the maximum value for the WS-QTY data type will be caught.  The improved data type size can handle larger values.