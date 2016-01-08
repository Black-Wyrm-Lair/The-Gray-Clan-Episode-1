BEGIN ~BW05MOLD~

IF ~True()~ THEN BEGIN 0
  SAY @364
  IF ~~ THEN REPLY @365 GOTO 1
  IF ~!PartyHasItem("BW05CRYS")~ THEN REPLY @366 GOTO 2
  IF ~!PartyHasItem("BW05CRYS")~ THEN REPLY @367 GOTO 2
  IF ~PartyHasItem("BW05CRYS")~ THEN REPLY @366 GOTO 3
  IF ~PartyHasItem("BW05CRYS")~ THEN REPLY @367 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @368
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @369
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @368
  IF ~~ THEN DO ~ActionOverride(Player1,LeaveAreaLUA("BW0501","",[3392.2082],10))
ActionOverride(Player2,LeaveAreaLUA("BW0501","",[3441.2085],10))
ActionOverride(Player3,LeaveAreaLUA("BW0501","",[3371.2121],10))
ActionOverride(Player4,LeaveAreaLUA("BW0501","",[3422.2125],10))
ActionOverride(Player5,LeaveAreaLUA("BW0501","",[3366.2157],10))
ActionOverride(Player6,LeaveAreaLUA("BW0501","",[3413.2165],10))
~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @368
  IF ~~ THEN DO ~ActionOverride(Player1,LeaveAreaLUA("BW0503","",[1013.932],7))
ActionOverride(Player2,LeaveAreaLUA("BW0503","",[1038.904],8))
ActionOverride(Player3,LeaveAreaLUA("BW0503","",[1042.958],7))
ActionOverride(Player4,LeaveAreaLUA("BW0503","",[1096.925],8))
ActionOverride(Player5,LeaveAreaLUA("BW0503","",[1084.986],7))
ActionOverride(Player6,LeaveAreaLUA("BW0503","",[1121.955],8))
~ EXIT
END
