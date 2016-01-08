BEGIN ~BW05BLOJ~

IF ~True()
~ THEN BEGIN 0
  SAY @497
  IF ~~ THEN DO ~SetGlobal("BW05_TGC1","GLOBAL",4)
CreateCreature("BW05JUSM",[307.155],2)
CreateCreature("BW05FFA2",[406.276],3)
CreateCreature("BW05FFA2",[311.293],3)
CreateCreature("BW05FFA4",[552.245],3)
CreateCreature("BW05FFA4",[307.155],3)
CreateCreature("BW05FFA4",[273.284],3)
CreateCreature("BW05RUDI",[516.238],3)
ActionOverride("BW05GART",Enemy())
Enemy()
~ EXIT
END
