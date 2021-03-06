@ECHO OFF
IF MDX==%1 GOTO FINISH
IF NTX==%1 GOTO FINISH

:DRIVER
cls
ECHO 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
ECHO �                                                 �
ECHO �   Install NATION module for use with which      �
ECHO �   database driver?                              �
ECHO �                                                 �
ECHO �   A. DBFMDX                                     �
ECHO �   B. DBFNTX / DBFNDX                            �
ECHO �                                                 �
ECHO 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
ECHO 
CHOOSE Type a letter, or press Esc to exit.
ECHO 
IF ERRORLEVEL  27 GOTO END
IF ERRORLEVEL   3 GOTO DRIVER
IF ERRORLEVEL   2 GOTO NTX
IF ERRORLEVEL   1 GOTO MDX

:MDX
CLS
ECHO 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
ECHO �               Nations Modules for DBFMDX                  �
ECHO 넌袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴�
ECHO �                                                           �
ECHO �   A. British  MDXUK.OBJ        E. Italian  MDXITA.OBJ     �
ECHO �   B. Dutch    MDXDUT.OBJ       F. Spanish  MDXSPA.OBJ     �
ECHO �   C. French   MDXFRE.OBJ       G. Swedish  MDXSWE.OBJ     �
ECHO �   D. German   MDXGER.OBJ                                  �
ECHO �                                                           �
ECHO 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
ECHO 
CHOOSE Type a letter, or press Esc to cancel.
ECHO 
IF ERRORLEVEL  27 GOTO END
IF ERRORLEVEL  8 GOTO MDX
IF ERRORLEVEL  7 NATION MDX SWE
IF ERRORLEVEL  6 NATION MDX SPA
IF ERRORLEVEL  5 NATION MDX ITA
IF ERRORLEVEL  4 NATION MDX GER
IF ERRORLEVEL  3 NATION MDX FRE
IF ERRORLEVEL  2 NATION MDX DUT
IF ERRORLEVEL  1 NATION MDX UK


:NTX
CLS
ECHO 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
ECHO �                 Nations Modules for DBFNTX/NDX                  �
ECHO 넌袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴�
ECHO �                                                                 �
ECHO �   A. Danish      NTXDAN.OBJ       H. Icelandic  NTXIC850.OBJ*   �
ECHO �   B. Dutch       NTXDUT.OBJ       I. Icelandic  NTXIC861.OBJ*   �
ECHO �   C. French      NTXFRE.OBJ       J. Italian    NTXNOR.OBJ      �
ECHO �   D. Finnish     NTXFIN.OBJ       K. Norwegian  NTXNOR.OBJ      �
ECHO �   E. German      NTXGER.OBJ       L. Portuguese NTXPOR.OBJ      �
ECHO �   F. Greek       NTXGR437.OBJ*    M. Spanish    NTXSPA.OBJ      �
ECHO �   G. Greek       NTXGR851.OBJ*    N. Swedish    NTXSWE.OBJ      �
ECHO �                                                                 �
ECHO �   * Number indicates intended code page                         �
ECHO 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
ECHO 
CHOOSE Type a letter, or press Esc to cancel.
ECHO 
IF ERRORLEVEL  27 GOTO END
IF ERRORLEVEL  15 GOTO NTX
IF ERRORLEVEL  14 NATION NTX SWE
IF ERRORLEVEL  13 NATION NTX SPA
IF ERRORLEVEL  12 NATION NTX POR
IF ERRORLEVEL  11 NATION NTX NOR
IF ERRORLEVEL  10 NATION NTX ITA
IF ERRORLEVEL   9 NATION NTX IC861
IF ERRORLEVEL   8 NATION NTX IC850
IF ERRORLEVEL   7 NATION NTX GR851
IF ERRORLEVEL   6 NATION NTX GR437
IF ERRORLEVEL   5 NATION NTX GER
IF ERRORLEVEL   4 NATION NTX FIN
IF ERRORLEVEL   3 NATION NTX FRE
IF ERRORLEVEL   2 NATION NTX DUT
IF ERRORLEVEL   1 NATION NTX DAN

:FINISH
NAT_OBJ -O MSG%2.OBJ %1%2.OBJ > nul
ECHO Copying %1%2 to %1SORT.OBJ
COPY %1%2.OBJ  %1SORT.OBJ

IF %1%2 == MDXUK GOTO END
ECHO Copying MSG%2 to MSG.OBJ
COPY MSG%2.OBJ MSG.OBJ

:END



