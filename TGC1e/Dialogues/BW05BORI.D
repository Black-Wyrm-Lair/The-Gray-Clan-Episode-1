BEGIN ~BW05BORI~

IF ~!Dead("BW05THIE")~ THEN BEGIN 0
  SAY @324
  IF ~~ THEN EXTERN ~BW05THIE~ 0
END

IF ~~ THEN BEGIN 1
  SAY @325
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("BW05BOCS")
~ EXIT
END

IF ~Dead("BW05THIE")~ THEN BEGIN 2
  SAY @326
  IF ~~ THEN DO ~ActionOverride("BW05PUMP",Enemy())
Enemy()
~ EXIT
END
