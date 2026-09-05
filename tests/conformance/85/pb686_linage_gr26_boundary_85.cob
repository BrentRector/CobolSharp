      *> ISO §14.9.51.4 GR26 a)/b) AT THE BOUNDARY — THE COBOL-85 TWIN
      *> of tests/conformance/2023/pb686_linage_gr26_boundary.cob.
      *>
      *> ⚖ THE DETERMINATION IS EDITION-INDEPENDENT, AND THIS FIXTURE
      *> IS WHAT MAKES THAT A MEASUREMENT RATHER THAN AN ASSERTION.
      *> docs/CONFORMANCE.md §7, "DETERMINATION — the §14.9.51.4 GR26
      *> a)/b) boundary at LINAGE-COUNTER = page size" (kb/Work PB686)
      *> resolves a contradiction between GR26's printed arms and
      *> §13.18.34.4 GR1/GR2/GR3/GR7. The 2023 twin carries the full
      *> derivation with its cite.py --check lines; it is not repeated
      *> here, because one rule belongs in one place. What is asserted
      *> HERE is that the boundary answers identically at --std 85.
      *>
      *> WHY IT SHOULD. docs/VERSION_CHANGE_REFERENCE.md records every
      *> edition delta on this material, and there is NO entry for
      *> GR26 a)/b), for the footing area of §13.18.34.4 GR3, or for
      *> the LINAGE-COUNTER rules of GR7. The one WRITE/END-OF-PAGE
      *> delta it does record is Table 1 item 37 (2014→2023): what
      *> happens when an end-of-page condition occurs and NO
      *> END-OF-PAGE phrase is specified. Every WRITE below specifies
      *> BOTH the AT and the NOT AT phrase, so item 37 cannot reach
      *> this fixture and the two goldens are comparable line for
      *> line. The inventory rows GR-13.18.34.4-2, GR-13.18.34.4-3 and
      *> GR-14.9.51.4-26 all carry editions 85,2002,2014,2023; this
      *> fixture is the evidence for the 85 end of that claim.
      *>
      *> EXPECTED VALUES. Byte-identical to the 2023 twin's .out apart
      *> from nothing at all — the same seventeen lines, derived from
      *> §13.18.34.4 GR7d (1 at OPEN OUTPUT), GR7 c) 2 (+1 per
      *> ADVANCING 1 LINE), GR7 c) 4 (reset to 1 on the overflow
      *> reposition), §13.18.34.4 GR3 (the footing area includes the
      *> page-size line), §13.18.34.4 GR1 (no FOOTING phrase ⇒ no
      *> end-of-page condition independent of page overflow) and
      *> §14.9.51.4 GR26 as the determination reads it (arm a) at
      *> counter > page size, arm b) over [footing start, page size]).
      *> The two ⚖ lines are F3 (EOP with LC=004, not LC=001) and N3
      *> (NO-EOP with LC=004): under the rejected literal reading of
      *> GR26 a) both would read EOP with LC=001, and the last line of
      *> every page body would be unwritable.
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PB686EOPB85.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT FTG ASSIGN TO "pb686b85-f.prt".
           SELECT NFT ASSIGN TO "pb686b85-n.prt".
       DATA DIVISION.
       FILE SECTION.
       FD FTG LINAGE IS 4 LINES WITH FOOTING AT 3.
       01 F-REC PIC X(4).
       FD NFT LINAGE IS 4 LINES.
       01 N-REC PIC X(4).
       WORKING-STORAGE SECTION.
       01 LF PIC 9(3).
       01 LN PIC 9(3).
       PROCEDURE DIVISION.
       MAIN-P.
           OPEN OUTPUT FTG.
           OPEN OUTPUT NFT.
           MOVE LINAGE-COUNTER OF FTG TO LF.
           MOVE LINAGE-COUNTER OF NFT TO LN.
           DISPLAY "OPEN F=" LF " N=" LN.
           MOVE "AAAA" TO F-REC.
           WRITE F-REC AFTER ADVANCING 1 LINE
               AT END-OF-PAGE DISPLAY "F1 EOP"
               NOT AT END-OF-PAGE DISPLAY "F1 NO-EOP"
           END-WRITE.
           MOVE LINAGE-COUNTER OF FTG TO LF.
           DISPLAY "F1 LC=" LF.
           MOVE "BBBB" TO F-REC.
           WRITE F-REC AFTER ADVANCING 1 LINE
               AT END-OF-PAGE DISPLAY "F2 EOP"
               NOT AT END-OF-PAGE DISPLAY "F2 NO-EOP"
           END-WRITE.
           MOVE LINAGE-COUNTER OF FTG TO LF.
           DISPLAY "F2 LC=" LF.
           MOVE "CCCC" TO F-REC.
           WRITE F-REC AFTER ADVANCING 1 LINE
               AT END-OF-PAGE DISPLAY "F3 EOP"
               NOT AT END-OF-PAGE DISPLAY "F3 NO-EOP"
           END-WRITE.
           MOVE LINAGE-COUNTER OF FTG TO LF.
           DISPLAY "F3 LC=" LF.
           MOVE "DDDD" TO F-REC.
           WRITE F-REC AFTER ADVANCING 1 LINE
               AT END-OF-PAGE DISPLAY "F4 EOP"
               NOT AT END-OF-PAGE DISPLAY "F4 NO-EOP"
           END-WRITE.
           MOVE LINAGE-COUNTER OF FTG TO LF.
           DISPLAY "F4 LC=" LF.
           MOVE "EEEE" TO N-REC.
           WRITE N-REC AFTER ADVANCING 1 LINE
               AT END-OF-PAGE DISPLAY "N1 EOP"
               NOT AT END-OF-PAGE DISPLAY "N1 NO-EOP"
           END-WRITE.
           MOVE LINAGE-COUNTER OF NFT TO LN.
           DISPLAY "N1 LC=" LN.
           MOVE "FFFF" TO N-REC.
           WRITE N-REC AFTER ADVANCING 1 LINE
               AT END-OF-PAGE DISPLAY "N2 EOP"
               NOT AT END-OF-PAGE DISPLAY "N2 NO-EOP"
           END-WRITE.
           MOVE LINAGE-COUNTER OF NFT TO LN.
           DISPLAY "N2 LC=" LN.
           MOVE "GGGG" TO N-REC.
           WRITE N-REC AFTER ADVANCING 1 LINE
               AT END-OF-PAGE DISPLAY "N3 EOP"
               NOT AT END-OF-PAGE DISPLAY "N3 NO-EOP"
           END-WRITE.
           MOVE LINAGE-COUNTER OF NFT TO LN.
           DISPLAY "N3 LC=" LN.
           MOVE "HHHH" TO N-REC.
           WRITE N-REC AFTER ADVANCING 1 LINE
               AT END-OF-PAGE DISPLAY "N4 EOP"
               NOT AT END-OF-PAGE DISPLAY "N4 NO-EOP"
           END-WRITE.
           MOVE LINAGE-COUNTER OF NFT TO LN.
           DISPLAY "N4 LC=" LN.
           CLOSE FTG.
           CLOSE NFT.
           STOP RUN.
