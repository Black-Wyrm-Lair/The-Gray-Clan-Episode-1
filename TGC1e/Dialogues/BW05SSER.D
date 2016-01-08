BEGIN ~BW05SSER~

IF ~True()~ THEN BEGIN 0
  SAY @45
  IF ~~ THEN REPLY @46 EXIT
  IF ~PartyHasItem("BW05WARD")
!PartyHasItem("BW05WAR2")
!Dead("BW05OCTA")
Dead("BW05PETR")~ THEN REPLY @47 GOTO 1
  IF ~PartyHasItem("BW05WARD")
!PartyHasItem("BW05WAR2")
Dead("BW05OCTA")
!Dead("BW05PETR")~ THEN REPLY @47 GOTO 1
  IF ~PartyHasItem("BW05WARD")
!PartyHasItem("BW05WAR2")
!Dead("BW05OCTA")
!Dead("BW05PETR")~ THEN REPLY @47 GOTO 1
  IF ~Global("BW05_FFEnemy","Global",0)
PartyHasItem("BW05WARD")
!PartyHasItem("BW05WAR2")
Dead("BW05OCTA")
Dead("BW05PETR")~ THEN REPLY @47 GOTO 2
  IF ~!PartyHasItem("BW05WARD")
PartyHasItem("BW05WAR2")
!Dead("BW05OCTA")
Dead("BW05PETR")~ THEN REPLY @47 GOTO 1
  IF ~!PartyHasItem("BW05WARD")
PartyHasItem("BW05WAR2")
Dead("BW05OCTA")
!Dead("BW05PETR")~ THEN REPLY @47 GOTO 1
  IF ~!PartyHasItem("BW05WARD")
PartyHasItem("BW05WAR2")
!Dead("BW05OCTA")
!Dead("BW05PETR")~ THEN REPLY @47 GOTO 1
  IF ~Global("BW05_FFEnemy","Global",0)
!PartyHasItem("BW05WARD")
PartyHasItem("BW05WAR2")
Dead("BW05OCTA")
Dead("BW05PETR")~ THEN REPLY @47 GOTO 2
  IF ~Global("BW05_FFEnemy","Global",0)
PartyHasItem("BW05WARD")
PartyHasItem("BW05WAR2")
Dead("BW05OCTA")
Dead("BW05PETR")~ THEN REPLY @47 GOTO 2
  IF ~Global("BW05_FFEnemy","Global",1)
PartyHasItem("BW05WARD")
!PartyHasItem("BW05WAR2")
Dead("BW05OCTA")
Dead("BW05PETR")~ THEN REPLY @47 GOTO 3
  IF ~Global("BW05_FFEnemy","Global",1)
!PartyHasItem("BW05WARD")
PartyHasItem("BW05WAR2")
Dead("BW05OCTA")
Dead("BW05PETR")~ THEN REPLY @47 GOTO 3
  IF ~Global("BW05_FFEnemy","Global",1)
PartyHasItem("BW05WARD")
PartyHasItem("BW05WAR2")
Dead("BW05OCTA")
Dead("BW05PETR")~ THEN REPLY @47 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @48
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @49
  IF ~~ THEN DO ~TakePartyItem("BW05WARD")
TakePartyItem("BW05WAR2")
TakePartyItem("BW05CRYS")
ClearAllActions()
StartCutSceneMode()
StartCutScene("BW05FINT")
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @49
  IF ~~ THEN DO ~TakePartyItem("BW05WARD")
TakePartyItem("BW05WAR2")
TakePartyItem("BW05CRYS")
ClearAllActions()
StartCutSceneMode()
StartCutScene("BW05FITN")
~ EXIT
END
