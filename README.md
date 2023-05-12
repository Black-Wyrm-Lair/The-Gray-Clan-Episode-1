# TGC1e
Beta for TGC1e v1.9 for BGT/EET/BG:EE

Hello,
I have been playing in a modded BGEE multiplayer run with some friends and we were having some trouble with the injured woman not spawning and/or being removed immediately after being manually spawned with the console. I took the liberty of fixing the issue, which actually happened to be really easy. Checking the creature file of the injured woman (BW05FFAP.CRE) I noticed that her class levels were set to 9/1/1, her HP was 5/54 and her state was set to diseased. I changed her state to normal and spawned her again and she stayed in game. I was able to complete the dialog with her with no issues.

I then checked the GLOBAL variable for the quest advancement via console CLUAConsole:GetGlobal("BW05_TGC1","GLOBAL"). This variable value should be 5 prior to conversing with her and 6 afterward. This was the case when I tested it. I then loaded a previous save to ensure that she would spawn properly after the enemies were defeated in the area in which she spawns and she spawned and conversed properly. The GLOBAL variable was also updated properly yet again.

I believe the issue was that her con is 9 and her current HP was 5 and whatever disease she had was applying a con penalty to her and thus reducing her total HP by 1/level for 9/1/1 levels and thus bringing her to negative HP. So when spawning her in the game with CurrentHP < 0 the game engine was statically removing her and since she wasn't reduced to 0 or less HP while spawned in game she didn't actually die and thus there would be no death animation/sound/text and no body left in game, since she was statically removed. I could be wrong, but this seems to be the case.

Here is a link to my original post on Beamdog Forums: https://forums.beamdog.com/discussion/comment/1197241#Comment_1197241

                                                                                                  ~TheFinalEntity
