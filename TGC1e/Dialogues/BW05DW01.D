BEGIN ~BW05DW01~

IF ~Global("BW05_FundorQuest","GLOBAL",0)~ THEN BEGIN 0
  SAY @395
  IF ~~ THEN REPLY @396 GOTO 1
  IF ~~ THEN REPLY @397 GOTO 2
  IF ~~ THEN REPLY @398 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @399
  IF ~~ THEN DO ~ActionOverride("BW05DW02",EscapeArea())
ActionOverride("BW05DW03",EscapeArea())
ActionOverride("BW05DW04",EscapeArea())
ActionOverride("BW05DW05",EscapeArea())
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @400
  IF ~CheckStatLT(LastTalkedToBy(Myself),15,CHR)
Global("BW05_FundorGold","GLOBAL",0)
!PartyHasItem("BW05DWHE")~ THEN REPLY @401 DO ~SetGlobal("BW05_FundorGold","GLOBAL",1)
~ GOTO 5
  IF ~CheckStatGT(LastTalkedToBy(Myself),14,CHR)
Global("BW05_FundorGold","GLOBAL",0)
!PartyHasItem("BW05DWHE")~ THEN REPLY @401 DO ~SetGlobal("BW05_FundorGold","GLOBAL",1)
~ GOTO 6
  IF ~!PartyHasItem("BW05DWHE")~ THEN REPLY @402 GOTO 7
  IF ~~ THEN REPLY @403 GOTO 4
  IF ~PartyHasItem("BW05DWHE")~ THEN REPLY @404 GOTO 4
  IF ~PartyHasItem("BW05DWHE")
HasItem("BW05WH1",Myself())~ THEN REPLY @405 GOTO 9
  IF ~PartyHasItem("BW05DWHE")~ THEN REPLY @406 GOTO 8
  IF ~PartyHasItem("BW05DWHE")
!HasItem("BW05WH1",Myself())~ THEN REPLY @405 GOTO 13
END

IF ~~ THEN BEGIN 3
  SAY @407
  IF ~~ THEN REPLY @408 GOTO 2
  IF ~~ THEN REPLY @409 GOTO 2
  IF ~~ THEN REPLY @410 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @411
  IF ~~ THEN DO ~SetGlobal("BW05_NasrodinEnemy","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @412
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 6
  SAY @413
  IF ~~ THEN DO ~SetGlobal("BW05_FundorQuest","GLOBAL",2)
~ UNSOLVED_JOURNAL @414 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @415
  IF ~~ THEN DO ~SetGlobal("BW05_FundorQuest","GLOBAL",1)
~ UNSOLVED_JOURNAL @414 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @416
  IF ~~ THEN DO ~AddexperienceParty(2100)
TakePartyItem("BW05DWHE")
GivePartyGold(1000)
ActionOverride("BW05DW02",EscapeArea())
ActionOverride("BW05DW03",EscapeArea())
ActionOverride("BW05DW04",EscapeArea())
ActionOverride("BW05DW05",EscapeArea())
EscapeArea()
~ SOLVED_JOURNAL @417 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @418
  IF ~~ THEN DO ~AddexperienceParty(2100)
GiveItem("BW05WH1",LastTalkedToBy(Myself))
TakePartyItem("BW05DWHE")
GivePartyGold(800)
ActionOverride("BW05DW02",EscapeArea())
ActionOverride("BW05DW03",EscapeArea())
ActionOverride("BW05DW04",EscapeArea())
ActionOverride("BW05DW05",EscapeArea())
EscapeArea()
~ SOLVED_JOURNAL @419 EXIT
END

IF ~GlobalGT("BW05_FundorQuest","GLOBAL",0)
GlobalLT("BW05_FundorQuest","GLOBAL",3)
!PartyHasItem("BW05DWHE")~ THEN BEGIN 10
  SAY @420
  IF ~~ THEN EXIT
END

IF ~Global("BW05_FundorQuest","GLOBAL",1)
PartyHasItem("BW05DWHE")
HasItem("BW05WH1",Myself())~ THEN BEGIN 11
  SAY @421
  IF ~~ THEN DO ~AddexperienceParty(2100)
EraseJournalEntry(@414)
GiveItem("BW05WH1",LastTalkedToBy(Myself))
TakePartyItem("BW05DWHE")
GivePartyGold(800)
ActionOverride("BW05DW02",EscapeArea())
ActionOverride("BW05DW03",EscapeArea())
ActionOverride("BW05DW04",EscapeArea())
ActionOverride("BW05DW05",EscapeArea())
EscapeArea()
~ SOLVED_JOURNAL @422 EXIT
END

IF ~Global("BW05_FundorQuest","GLOBAL",2)
PartyHasItem("BW05DWHE")~ THEN BEGIN 12
  SAY @423
  IF ~~ THEN DO ~AddexperienceParty(2100)
EraseJournalEntry(@414)
TakePartyItem("BW05DWHE")
GivePartyGold(1000)
ActionOverride("BW05DW02",EscapeArea())
ActionOverride("BW05DW03",EscapeArea())
ActionOverride("BW05DW04",EscapeArea())
ActionOverride("BW05DW05",EscapeArea())
EscapeArea()
~ SOLVED_JOURNAL @424 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @425
  IF ~~ THEN DO ~AddexperienceParty(2100)
TakePartyItem("BW05DWHE")
GivePartyGold(800)
ActionOverride("BW05DW02",EscapeArea())
ActionOverride("BW05DW03",EscapeArea())
ActionOverride("BW05DW04",EscapeArea())
ActionOverride("BW05DW05",EscapeArea())
EscapeArea()
~ SOLVED_JOURNAL @426 EXIT
END

IF ~Global("BW05_FundorQuest","GLOBAL",1)
PartyHasItem("BW05DWHE")
!HasItem("BW05WH1",Myself())~ THEN BEGIN 14
  SAY @427
  IF ~~ THEN DO ~AddexperienceParty(2100)
EraseJournalEntry(@414)
TakePartyItem("BW05DWHE")
GivePartyGold(800)
ActionOverride("BW05DW02",EscapeArea())
ActionOverride("BW05DW03",EscapeArea())
ActionOverride("BW05DW04",EscapeArea())
ActionOverride("BW05DW05",EscapeArea())
EscapeArea()
~ SOLVED_JOURNAL @428 EXIT
END
