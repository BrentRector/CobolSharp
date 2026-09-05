       IDENTIFICATION DIVISION.
       PROGRAM-ID. PB697P3SRC.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT IXF ASSIGN TO "pb697p3.dat"
               ORGANIZATION IS INDEXED
               ACCESS MODE IS DYNAMIC
               RECORD KEY IS IX-COMPOSITE SOURCE IS IX-A IX-B.
       DATA DIVISION.
       FILE SECTION.
       FD  IXF.
       01  IX-REC.
           05  IX-A     PIC X(3).
           05  IX-B     PIC X(3).
           05  IX-DATA  PIC X(20).
       PROCEDURE DIVISION.
       MAIN-P.
           OPEN INPUT IXF
           START IXF KEY IS = IX-COMPOSITE
               INVALID KEY DISPLAY "P3-INV"
           END-START
           CLOSE IXF
           STOP RUN.
