BEGIN ~BW05DAMI~

IF ~Global("BW05_SaveMary","GLOBAL",0)
!Dead("BW05MARY")
!See([ENEMY.0.0])~ THEN BEGIN 0
  SAY @85
  IF ~~ THEN REPLY @86 GOTO 2
  IF ~~ THEN REPLY @87 GOTO 1
  IF ~~ THEN REPLY @88 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @89
  IF ~~ THEN DO ~CreateItem("BW05K1",1,0,0)
ActionOverride("BW05JOHN",Enemy())
ActionOverride("BW05ERNE",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @90
  IF ~~ THEN REPLY @91 GOTO 5
  IF ~~ THEN REPLY @92 GOTO 5
  IF ~~ THEN REPLY @93 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @94
  IF ~~ THEN DO ~CreateItem("BW05K1",1,0,0)
ActionOverride("BW05JOHN",Enemy())
ActionOverride("BW05ERNE",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @95
  IF ~~ THEN DO ~CreateItem("BW05K1",1,0,0)
DropItem("BW05K1",[0.0])
ActionOverride("BW05JOHN",EscapeArea())
ActionOverride("BW05ERNE",EscapeArea())
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @96
  IF ~~ THEN REPLY @97 GOTO 8
  IF ~~ THEN REPLY @98 GOTO 8
  IF ~~ THEN REPLY @99 GOTO 4
  IF ~~ THEN REPLY @100 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @101
  IF ~~ THEN REPLY @102 GOTO 11
  IF ~CheckStatLT(LastTalkedToBy(Myself),15,CHR)~ THEN REPLY @103 GOTO 7
  IF ~CheckStatGT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @103 GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY @104
  IF ~~ THEN REPLY @105 GOTO 10
  IF ~~ THEN REPLY @106 GOTO 4
END

IF ~~ THEN BEGIN 8
  SAY @107
  IF ~~ THEN REPLY @99 GOTO 4
  IF ~~ THEN REPLY @100 GOTO 6
  IF ~~ THEN REPLY @108 GOTO 12
END

IF ~~ THEN BEGIN 9
  SAY @109
  IF ~~ THEN DO ~GiveItemCreate("BW05K1",LastTalkedToBy(Myself),1,0,0)
GivePartyGold(1000)
SetGlobal("BW05_SaveMary","GLOBAL",1)
SetGlobal("BW05_DamienHalfMoney","GLOBAL",1)
~ UNSOLVED_JOURNAL @110 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @111
  IF ~~ THEN DO ~GiveItemCreate("BW05K1",LastTalkedToBy(Myself),1,0,0)
GivePartyGold(300)
SetGlobal("BW05_SaveMary","GLOBAL",1)
SetGlobal("BW05_DamienSmallMoney","GLOBAL",1)
~ UNSOLVED_JOURNAL @112 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @113
  IF ~~ THEN DO ~GiveItemCreate("BW05K1",LastTalkedToBy(Myself),1,0,0)
SetGlobal("BW05_SaveMary","GLOBAL",1)
SetGlobal("BW05_DamienNoMoney","GLOBAL",1)
~ UNSOLVED_JOURNAL @114 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @115
  IF ~~ THEN DO ~GiveItemCreate("BW05K1",LastTalkedToBy(Myself),1,0,0)
SetGlobal("BW05_SaveMary","GLOBAL",1)
~ UNSOLVED_JOURNAL @116 EXIT
END

IF ~Global("BW05_DamienEnemy","GLOBAL",0)
!Allegiance(Myself,ENEMY)
See([ENEMY.0.0])~ THEN BEGIN 13
  SAY @117
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14
  SAY @118
  IF ~~ THEN REPLY @119 GOTO 15
  IF ~~ THEN REPLY @120 EXTERN ~BW05MARY~ 5
  IF ~~ THEN REPLY @121 EXTERN ~BW05JOHN~ 3
  IF ~Dead("BW05JOHN")~ THEN REPLY @121 GOTO 18
END

IF ~~ THEN BEGIN 15
  SAY @122
  IF ~~ THEN DO ~SetGlobal("BW05_DamienEnemy","GLOBAL",1)
ActionOverride("BW05JOHN",Enemy())
ActionOverride("BW05ERNE",Enemy())
ActionOverride("BW05MARY",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @123
  IF ~~ THEN DO ~CreateItem("BW05K1",1,0,0)
EraseJournalEntry(@110)
EraseJournalEntry(@112)
EraseJournalEntry(@114)
EraseJournalEntry(@116)
DropItem("BW05K1",[0.0])
ActionOverride("BW05JOHN",EscapeArea())
ActionOverride("BW05ERNE",EscapeArea())
ActionOverride("BW05MARY",EscapeArea())
EscapeArea()
~ SOLVED_JOURNAL @124 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @125
  IF ~Global("BW05_SaveMary","GLOBAL",4)
!Global("BW05_DamienNoMoney","GLOBAL",1)
!Global("BW05_DamienSmallMoney","GLOBAL",1)
!Global("BW05_DamienHalfMoney","GLOBAL",1)~ THEN REPLY @126 GOTO 21
  IF ~Global("BW05_DamienNoMoney","GLOBAL",1)~ THEN REPLY @127 GOTO 22
  IF ~Global("BW05_DamienSmallMoney","GLOBAL",1)~ THEN REPLY @127 GOTO 23
  IF ~Global("BW05_DamienHalfMoney","GLOBAL",1)~ THEN REPLY @127 GOTO 24
  IF ~Global("BW05_DamienNoMoney","GLOBAL",1)~ THEN REPLY @128 GOTO 22
  IF ~Global("BW05_DamienSmallMoney","GLOBAL",1)~ THEN REPLY @128 GOTO 23
  IF ~Global("BW05_DamienHalfMoney","GLOBAL",1)~ THEN REPLY @128 GOTO 24
  IF ~Global("BW05_SaveMary","GLOBAL",5)~ THEN REPLY @126 GOTO 26
END

IF ~~ THEN BEGIN 18
  SAY @129
  IF ~~ THEN DO ~ActionOverride("BW05JOHN",EscapeArea())
EraseJournalEntry(@110)
EraseJournalEntry(@112)
EraseJournalEntry(@114)
EraseJournalEntry(@116)
ActionOverride("BW05ERNE",EscapeArea())
ActionOverride("BW05MARY",EscapeArea())
EscapeArea()
~ SOLVED_JOURNAL @124 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @130
  IF ~~ THEN DO ~CreateItem("BW05K1",1,0,0)
SetGlobal("BW05_DamienEnemy","GLOBAL",1)
ActionOverride("BW05JOHN",Enemy())
ActionOverride("BW05ERNE",Enemy())
ActionOverride("BW05EROS",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 20
  SAY @131
  IF ~~ THEN REPLY @119 GOTO 15
  IF ~~ THEN REPLY @120 EXTERN ~BW05MARY~ 5
END

IF ~~ THEN BEGIN 21
  SAY @132
  IF ~~ THEN DO ~AddexperienceParty(3950)
EraseJournalEntry(@110)
EraseJournalEntry(@112)
EraseJournalEntry(@114)
EraseJournalEntry(@116)
GivePartyGold(1500)
ReputationInc(1)
ActionOverride("BW05JOHN",EscapeArea())
ActionOverride("BW05ERNE",EscapeArea())
ActionOverride("BW05MARY",EscapeArea())
EscapeArea()
~ SOLVED_JOURNAL @133 EXIT
END

IF ~~ THEN BEGIN 22
  SAY @134
  IF ~~ THEN DO ~GivePartyGold(2000)
EraseJournalEntry(@110)
EraseJournalEntry(@112)
EraseJournalEntry(@114)
EraseJournalEntry(@116)
ActionOverride("BW05JOHN",EscapeArea())
ActionOverride("BW05ERNE",EscapeArea())
ActionOverride("BW05MARY",EscapeArea())
EscapeArea()
~ SOLVED_JOURNAL @133 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @134
  IF ~~ THEN DO ~GivePartyGold(1700)
EraseJournalEntry(@110)
EraseJournalEntry(@112)
EraseJournalEntry(@114)
EraseJournalEntry(@116)
ActionOverride("BW05JOHN",EscapeArea())
ActionOverride("BW05ERNE",EscapeArea())
ActionOverride("BW05MARY",EscapeArea())
EscapeArea()
~ SOLVED_JOURNAL @133 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @134
  IF ~~ THEN DO ~GivePartyGold(1000)
EraseJournalEntry(@110)
EraseJournalEntry(@112)
EraseJournalEntry(@114)
EraseJournalEntry(@116)
ActionOverride("BW05JOHN",EscapeArea())
ActionOverride("BW05ERNE",EscapeArea())
ActionOverride("BW05MARY",EscapeArea())
EscapeArea()
~ SOLVED_JOURNAL @133 EXIT
END

IF ~Global("BW05_SaveMary","GLOBAL",1)
!Dead("BW05MARY")
!See([ENEMY.0.0])~ THEN BEGIN 25
  SAY @135
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26
  SAY @136
  IF ~~ THEN DO ~AddexperienceParty(3950)
EraseJournalEntry(@110)
EraseJournalEntry(@112)
EraseJournalEntry(@114)
EraseJournalEntry(@116)
ActionOverride("BW05JOHN",EscapeArea())
ActionOverride("BW05ERNE",EscapeArea())
ActionOverride("BW05MARY",EscapeArea())
GiveItemCreate("BW05K1",LastTalkedToBy(Myself),1,0,0)
GivePartyGold(1500)
ReputationInc(1)
EscapeArea()
~ SOLVED_JOURNAL @137 EXIT
END
