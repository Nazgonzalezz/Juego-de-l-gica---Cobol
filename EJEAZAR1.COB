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
       77  flag                          PIC 9     VALUE 1.
       77  aux                           PIC 9.
       77  ROUTINE-NAME                  PIC X(8) VALUE "EJEAZAR0".
       77  resto                         PIC 9999.
       
       
       01  NUMBERSS OCCURS 4 TIMES. 
           05 NumberEntered              PIC 9.
           
       01  GAME-POINTS. 
           05 CORRECT                    PIC 9 VALUE 0.
           05 REGULAR                    PIC 9 VALUE 0.
           05 ERRORR                     PIC 9 VALUE 0.
           
       01  SHOW-NUMBER-OF-ATTEMPTS.    
           05 Titles                     PIC X(26) 
                                     VALUE "El numero de intentos es: ".
           05  GameAttempts              PIC 9    VALUE 0.
           
       01  NUMBER-INCOGNITO.
           05 unidad                     PIC 9.
           05 decena                     PIC 9.
           05 centena                    PIC 9.
           05 unidadDeMil                PIC 9.
       
          
       01 AREA-COMUNICACION.
           05 CAMPO-INCOGNITO      PIC X(4).

       PROCEDURE DIVISION.
      */////////////////////////////////////////////////////////////////
       MAIN-PROCEDURE.
           DISPLAY "INICIA EJEAZA1"
           PERFORM 1000-CALL-ROUTINE
           PERFORM 2000-ENTER-VALIDATED-NUMBER
           PERFORM 3000-CORRECT-REGULAR-OR-ERROR
           PERFORM 4000-NUMBER-OF-ATTEMPTS
           STOP RUN.
      */////////////////////////////////////////////////////////////////

       1000-CALL-ROUTINE.
           INITIALIZE AREA-COMUNICACION
           CALL ROUTINE-NAME USING AREA-COMUNICACION
           PERFORM 1100-DECOMPOSE-NUMBER.
           
      *-----------------------------------------------------------------
       
       1100-DECOMPOSE-NUMBER.
           MOVE CAMPO-INCOGNITO TO unidadDeMil
           DIVIDE unidadDeMil  INTO 1000 GIVING unidadDeMil
           MULTIPLY unidadDeMil by 1000 GIVING unidadDeMil
           
           MOVE CAMPO-INCOGNITO TO resto
           SUBTRACT resto from unidadDeMil  GIVING resto
           DIVIDE resto  INTO 100 GIVING centena
           MULTIPLY centena by 100 GIVING centena
           
           SUBTRACT centena from resto  GIVING resto
           DIVIDE resto  INTO 10 GIVING decena
           MULTIPLY decena by 10 GIVING decena
           SUBTRACT resto from decena  GIVING unidad.
           
      *-----------------------------------------------------------------
       
       2000-ENTER-VALIDATED-NUMBER.
           MOVE 1 TO flag
           PERFORM UNTIL flag > 4
               MOVE 5 TO aux
               PERFORM UNTIL  aux NOT EQUAL 5  
                   DISPLAY "PARA COMENZAR EL JuegoAzar INGRESE 4 NUM !="
                   ACCEPT NUMBERSS(flag) 
                   PERFORM 2100-NOT-REPEAT-ENTERED-NUMBER
               END-PERFORM
               ADD 1 TO flag 
           END-PERFORM.
               
      *-----------------------------------------------------------------
       
       2100-NOT-REPEAT-ENTERED-NUMBER.
           MOVE 1 TO AUX
           PERFORM UNTIL flag = aux
               IF NUMBERSS(aux) EQUAL NUMBERSS(flag)
                   MOVE 5 TO aux
               ELSE 
                   ADD 1 TO aux
               END-IF
           END-PERFORM.
           
      *-----------------------------------------------------------------

       3000-CORRECT-REGULAR-OR-ERROR.
           PERFORM UNTIL CORRECT EQUAL 4
               PERFORM 3200-CHECK-IF-THE-NUMBER-IS-C
               PERFORM 3300-CHECK-IF-THE-NUMBER-IS-R
               
               IF CORRECT NOT EQUAL 4
     ¨*ACA TENGO QUE PREGUNTAR SI SE QUIERE RENDIR O NOOOOO FIJARME DESPUES
                   PERFORM 2000-ENTER-VALIDATED-NUMBER
                   PERFORM 3100-INICIALICE-GAME-POINTS
               END-IF  
               ADD 1 TO GameAttempts
           END-PERFORM.
               
      *-----------------------------------------------------------------
       
       3100-INICIALICE-GAME-POINTS.
           MOVE 0 TO CORRECT    
           MOVE 0 TO REGULAR
           MOVE 0 TO ERRORR.
           
      *-----------------------------------------------------------------
       
       3200-CHECK-IF-THE-NUMBER-IS-C.
           MOVE 1 TO AUX
           PERFORM UNTIL aux > 4 
               
           END-PERFORM.
       
      *-----------------------------------------------------------------
       
       3300-CHECK-IF-THE-NUMBER-IS-R.
           MOVE 1 TO aux
           PERFORM UNTIL aux > 4 
               
           END-PERFORM.
               
      *-----------------------------------------------------------------

       4000-NUMBER-OF-ATTEMPTS.
           DISPLAY SHOW-NUMBER-OF-ATTEMPTS.
           
      *-----------------------------------------------------------------

       END PROGRAM EJEAZAR1.
