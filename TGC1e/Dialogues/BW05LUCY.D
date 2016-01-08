BEGIN ~BW05LUCY~

IF ~~ THEN BEGIN 0
  SAY @327
  IF ~~ THEN EXTERN ~BW05BARP~ 1
END

IF ~!Dead("BW05BARP")~ THEN BEGIN 1
  SAY @328
  IF ~~ THEN EXIT
END

IF ~Global("BW05_LucySaved","GLOBAL",1)
Dead("BW05BARP")~ THEN BEGIN 2
  SAY @329
  IF ~~ THEN REPLY @330 GOTO 6
  IF ~Global("BW05_MetRobert","GLOBAL",0)
!Dead("BW05ROBE")~ THEN REPLY @331 GOTO 4
  IF ~GlobalGT("BW05_MetRobert","GLOBAL",0)
!Dead("BW05ROBE")~ THEN REPLY @332 GOTO 5
  IF ~Dead("BW05ROBE")~ THEN REPLY @333 GOTO 7
END

IF ~Global("BW05_LucySaved","GLOBAL",2)~ THEN BEGIN 3
  SAY @334
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @335
  IF ~~ THEN DO ~AddexperienceParty(520)
SetGlobal("BW05_LucySaved","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @336
  IF ~~ THEN DO ~AddexperienceParty(520)
SetGlobal("BW05_LucySaved","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @337
  IF ~~ THEN DO ~SetGlobal("BW05_LucySaved","GLOBAL",-1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @338
  IF ~~ THEN DO ~SetGlobal("BW05_LucySaved","GLOBAL",-1)
EscapeArea()
~ EXIT
END
