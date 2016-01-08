BEGIN ~BW05MGOL~

IF ~True()~ THEN BEGIN 0
  SAY @59
  IF ~PartyHasItem("BW05K1")
PartyHasItem("BW05K2")
PartyHasItem("BW05K3")
PartyHasItem("BW05K4")
PartyHasItem("BW05K5")
PartyHasItem("BW05K6")~ THEN REPLY @60 DO ~TakePartyItem("BW05K2")
~ GOTO 3
  IF ~PartyHasItem("BW05K1")
PartyHasItem("BW05K2")
PartyHasItem("BW05K3")
PartyHasItem("BW05K4")
PartyHasItem("BW05K5")
PartyHasItem("BW05K6")~ THEN REPLY @61 DO ~TakePartyItem("BW05K6")
~ GOTO 3
  IF ~PartyHasItem("BW05K1")
PartyHasItem("BW05K2")
PartyHasItem("BW05K3")
PartyHasItem("BW05K4")
PartyHasItem("BW05K5")
PartyHasItem("BW05K6")~ THEN REPLY @62 DO ~TakePartyItem("BW05K5")
~ GOTO 3
  IF ~PartyHasItem("BW05K1")
PartyHasItem("BW05K2")
PartyHasItem("BW05K3")
PartyHasItem("BW05K4")
PartyHasItem("BW05K5")
PartyHasItem("BW05K6")~ THEN REPLY @63 DO ~TakePartyItem("BW05K3")
~ GOTO 3
  IF ~PartyHasItem("BW05K1")
PartyHasItem("BW05K2")
PartyHasItem("BW05K3")
PartyHasItem("BW05K4")
PartyHasItem("BW05K5")
PartyHasItem("BW05K6")~ THEN REPLY @64 DO ~TakePartyItem("BW05K4")
~ GOTO 3
  IF ~PartyHasItem("BW05K1")
PartyHasItem("BW05K2")
PartyHasItem("BW05K3")
PartyHasItem("BW05K4")
PartyHasItem("BW05K5")
PartyHasItem("BW05K6")~ THEN REPLY @65 DO ~TakePartyItem("BW05K4")
~ GOTO 2
  IF ~~ THEN REPLY @66 GOTO 4
  IF ~~ THEN REPLY @67 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @68
  IF ~~ THEN DO ~SetGlobal("BW05_KeysCS","GLOBAL",2)
StartCutSceneMode()
StartCutScene("BW05MGO2")
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @69
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 3
  SAY @69
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @70
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @71
  IF ~PartyHasItem("BW05K2")~ THEN REPLY @60 DO ~TakePartyItem("BW05K2")
~ GOTO 3
  IF ~PartyHasItem("BW05K6")~ THEN REPLY @61 DO ~TakePartyItem("BW05K6")
~ GOTO 3
  IF ~PartyHasItem("BW05K5")~ THEN REPLY @62 DO ~TakePartyItem("BW05K5")
~ GOTO 3
  IF ~PartyHasItem("BW05K3")~ THEN REPLY @63 DO ~TakePartyItem("BW05K3")
~ GOTO 3
  IF ~PartyHasItem("BW05K1")~ THEN REPLY @64 DO ~TakePartyItem("BW05K1")
~ GOTO 3
  IF ~PartyHasItem("BW05K4")~ THEN REPLY @65 DO ~TakePartyItem("BW05K4")
~ GOTO 3
  IF ~!PartyHasItem("BW05K1")
!PartyHasItem("BW05K2")
!PartyHasItem("BW05K3")
!PartyHasItem("BW05K4")
!PartyHasItem("BW05K5")
!PartyHasItem("BW05K6")~ THEN REPLY @72 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @73
  IF ~~ THEN DO ~GiveItem("BW05K1",LastTalkedToBy(Myself))
GiveItem("BW05K2",LastTalkedToBy(Myself))
GiveItem("BW05K3",LastTalkedToBy(Myself))
GiveItem("BW05K4",LastTalkedToBy(Myself))
GiveItem("BW05K5",LastTalkedToBy(Myself))
GiveItem("BW05K6",LastTalkedToBy(Myself))
ReallyForceSpell(Myself,RED_FIREBALL)
~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @71
  IF ~~ THEN REPLY @60 DO ~TakePartyItem("BW05K2")
~ GOTO 3
  IF ~~ THEN REPLY @61 DO ~TakePartyItem("BW05K6")
~ GOTO 8
  IF ~~ THEN REPLY @62 DO ~TakePartyItem("BW05K5")
~ GOTO 3
  IF ~~ THEN REPLY @63 DO ~TakePartyItem("BW05K3")
~ GOTO 3
  IF ~~ THEN REPLY @64 DO ~TakePartyItem("BW05K1")
~ GOTO 3
END

IF ~~ THEN BEGIN 8
  SAY @69
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @71
  IF ~~ THEN REPLY @60 DO ~TakePartyItem("BW05K2")
~ GOTO 3
  IF ~~ THEN REPLY @62 DO ~TakePartyItem("BW05K5")
~ GOTO 3
  IF ~~ THEN REPLY @63 DO ~TakePartyItem("BW05K3")
~ GOTO 3
  IF ~~ THEN REPLY @64 DO ~TakePartyItem("BW05K1")
~ GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @69
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @71
  IF ~~ THEN REPLY @60 DO ~TakePartyItem("BW05K2")
~ GOTO 3
  IF ~~ THEN REPLY @62 DO ~TakePartyItem("BW05K5")
~ GOTO 3
  IF ~~ THEN REPLY @63 DO ~TakePartyItem("BW05K3")
~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @69
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @71
  IF ~~ THEN REPLY @60 DO ~TakePartyItem("BW05K2")
~ GOTO 3
  IF ~~ THEN REPLY @62 DO ~TakePartyItem("BW05K5")
~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @69
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @71
  IF ~~ THEN REPLY @74 DO ~TakePartyItem("BW05K2")
~ GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @75
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @76
  IF ~~ THEN DO ~DestroyItem("BW05K1")
DestroyItem("BW05K2")
DestroyItem("BW05K3")
DestroyItem("BW05K4")
DestroyItem("BW05K5")
DestroyItem("BW05K6")
EraseJournalEntry(@83)
EraseJournalEntry(@20002)
CreateItem("BW05HL1",1,0,0)
CreateItem("MISC41",1,0,0)
CreateItem("MISC42",1,0,0)
CreateItem("MISC43",1,0,0)
CreateItem("MISC44",1,0,0)
CreateItem("BOOK06",1,0,0)
CreateItem("BLUN07",1,0,0)
CreateItem("STAF02",1,0,0)
Kill(Myself)
~ SOLVED_JOURNAL @77 EXIT
END
