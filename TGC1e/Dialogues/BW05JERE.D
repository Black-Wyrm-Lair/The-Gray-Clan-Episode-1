BEGIN ~BW05JERE~

IF WEIGHT #0 ~Global("BW05_JeremiasTalk","GLOBAL",0)
NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 1
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @6
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("BW05JECS")
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @7
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~Global("BW05_JeremiasTalk","GLOBAL",0)
!NumTimesTalkedTo(0)~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN REPLY @3 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 1
  IF ~~ THEN REPLY @5 GOTO 2
END

IF WEIGHT #3 ~Global("BW05_JeremiasTalk","GLOBAL",1)~ THEN BEGIN 4
  SAY @9
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("BW05JEC2")
~ EXIT
END

IF WEIGHT #4 ~Global("BW05_JeremiasTalk","GLOBAL",2)~ THEN BEGIN 5
  SAY @10
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("BW05JEC3")
~ EXIT
END

IF WEIGHT #2 ~Global("BW05_JeremiasTalk","GLOBAL",3)~ THEN BEGIN 6
  SAY @11
  IF ~~ THEN REPLY @12 DO ~SetGlobal("BW05_JeremiasTalk","GLOBAL",4)
StartStore("BW05JERE",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @13 DO ~SetGlobal("BW05_JeremiasTalk","GLOBAL",4)
~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @14
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~Global("BW05_JeremiasTalk","GLOBAL",4)~ THEN BEGIN 8
  SAY @15
  IF ~~ THEN REPLY @12 DO ~StartStore("BW05JERE",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @16 GOTO 7
END
