BEGIN ~BW05GRAC~

IF ~!Global("BW05_GrachusLastW","GLOBAL",1)
!Global("BW05_GraTalkedToTergius","GLOBAL",1)
!Global("BW05_GrachusHit","GLOBAL",1)
!Global("BW05_HertukOutside","GLOBAL",5)~ THEN BEGIN 0
  SAY @372
  IF ~Global("BW05_AttackedWindH","GLOBAL",0)~ THEN REPLY @373 GOTO 5
  IF ~Global("BW05_AttackedWindH","GLOBAL",0)~ THEN REPLY @374 GOTO 5
  IF ~Global("BW05_AttackedWindH","GLOBAL",0)~ THEN REPLY @169 GOTO 5
  IF ~Global("BW05_AttackedWindH","GLOBAL",1)~ THEN REPLY @373 DO ~CreateCreature("BW05GRZ0",[3308.2248],0)
CreateCreature("BW05GRZ0",[3344.2278],0)
CreateCreature("BW05GRZ0",[3389.2251],0)
CreateCreature("BW05GRZ0",[3410.2286],0)
~ GOTO 5
  IF ~Global("BW05_AttackedWindH","GLOBAL",1)~ THEN REPLY @374 DO ~CreateCreature("BW05GRZ0",[3308.2248],0)
CreateCreature("BW05GRZ0",[3344.2278],0)
CreateCreature("BW05GRZ0",[3389.2251],0)
CreateCreature("BW05GRZ0",[3410.2286],0)
~ GOTO 5
  IF ~Global("BW05_AttackedWindH","GLOBAL",1)~ THEN REPLY @169 DO ~CreateCreature("BW05GRZ0",[3308.2248],0)
CreateCreature("BW05GRZ0",[3344.2278],0)
CreateCreature("BW05GRZ0",[3389.2251],0)
CreateCreature("BW05GRZ0",[3410.2286],0)
~ GOTO 5
END

IF ~Global("BW05_GraTalkedToTergius","GLOBAL",1)~ THEN BEGIN 1
  SAY @375
  IF ~~ THEN EXTERN ~BW05TERG~ 13
END

IF ~Global("BW05_GrachusLastW","GLOBAL",1)~ THEN BEGIN 2
  SAY @376
  IF ~~ THEN DO ~SetGlobal("BW05_GrachusLastW","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @377
  IF ~~ THEN EXIT
END

IF ~Global("BW05_GrachusHit","GLOBAL",1)~ THEN BEGIN 4
  SAY @378
  IF ~~ THEN DO ~SetGlobal("BW05_GrachusHit","GLOBAL",2)
SetInterrupt(FALSE)
ForceSpell(Myself,WIZARD_DIMENSION_DOOR)
Wait(2)
DestroySelf()
SetInterrupt(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @379
  IF ~~ THEN REPLY @380 GOTO 6
  IF ~~ THEN REPLY @381 GOTO 6
  IF ~~ THEN REPLY @159 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @382
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("BW05GRCS")
~ EXIT
END

IF ~Global("BW05_HertukOutside","GLOBAL",5)~ THEN BEGIN 7
  SAY @383
  IF ~~ THEN EXTERN ~BW05GRZ1~ 0
END
