       IDENTIFICATION DIVISION.
       PROGRAM-ID. PB697P1LEN.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT IXF ASSIGN TO "pb697p1.dat"
               ORGANIZATION IS INDEXED
               ACCESS MODE IS DYNAMIC
               RECORD KEY IS IX-KEY.
       DATA DIVISION.
       FILE SECTION.
       FD  IXF.
       01  IX-REC.
           05  IX-KEY   PIC X(6).
           05  IX-DATA  PIC X(20).
       PROCEDURE DIVISION.
       MAIN-P.
           OPEN INPUT IXF
           START IXF KEY IS = IX-KEY LENGTH 3
               INVALID KEY DISPLAY "P1-INV"
           END-START
           CLOSE IXF
           STOP RUN.
