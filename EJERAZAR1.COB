 ******************************************************************
      * Author:GONZALEZ NAZARENA ARACELI
      * Date:02/2024
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJEAZAR1.
       DATA DIVISION.
       FILE SECTION.
       
       
       WORKING-STORAGE SECTION.
       77  flag                          PIC 9     VALUE 0.
       
       PROCEDURE DIVISION.
      *///////////////////////////////////////////////////////////////// 
       MAIN-PROCEDURE.
           DISPLAY "INICIAL EJEAZA1"
           PERFORM 1000-CALL-ROUTINE
           PERFORM 2000-ENTER-VALIDATED-NUMBER
           PERFORM 3000-SEE-IF-THE-NUMBER-IS-HERE
           STOP RUN.
      *///////////////////////////////////////////////////////////////// 
       
       1000-CALL-ROUTINE.
           
      *-----------------------------------------------------------------
       
       2000-ENTER-VALIDATED-NUMBER.   
           
      *-----------------------------------------------------------------
       
       3000-SEE-IF-THE-NUMBER-IS-HERE.
           
      *-----------------------------------------------------------------
       
       4000-SHOW-NUMBER-OF-ATTEMPTS. 
           
      *----------------------------------------------------------------- 
       END PROGRAM EJEAZAR1.
