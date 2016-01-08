BEGIN ~BW05BL02~

IF ~Global("BW05_TGC1","GLOBAL",8)~ THEN BEGIN 0
  SAY @149
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("BW05BLCS")
~ EXIT
END

IF ~Global("BW05_TGC1","GLOBAL",9)~ THEN BEGIN 1
  SAY @150
  IF ~~ THEN EXTERN ~BW05FIST~ 0
END

IF ~~ THEN BEGIN 2
  SAY @151
  IF ~~ THEN DO ~ActionOverride("BW05BL01",Enemy())
ActionOverride("BW05BL03",Enemy())
ActionOverride("BW05BBGD",Enemy())
ActionOverride("BW05LIND",Enemy())
ActionOverride("BW05FIST",Enemy())
Enemy()
~ EXIT
END
