execute as @s[scores={menutimer=99}] run scoreboard objectives add rarityend dummy

scoreboard players random @s[scores={honored=1},tag=gojotest] exotic 1 2
scoreboard players set @s[scores={honored=1},tag=gojotest] honored 0

scoreboard players random @s[scores={exotic=1},tag=zenintest] rare 1 2
scoreboard players set @s[scores={exotic=1},tag=zenintest] exotic 0

scoreboard players random @s[scores={menutimer=1..98},tag=rollingtechnique] chance 1 100



 #common
titleraw @s[scores={common=1,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={common=2,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={common=3,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={common=4,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={common=5,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={common=6,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={common=7,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={common=8,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={common=9,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={common=10,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}

 #uncommon
titleraw @s[scores={uncommon=1,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={uncommon=2,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={uncommon=3,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={uncommon=4,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={uncommon=5,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={uncommon=6,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={uncommon=7,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={uncommon=8,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={uncommon=9,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={uncommon=10,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}

 #rare
titleraw @s[scores={rare=1,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={rare=2,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={rare=3,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={rare=4,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={rare=5,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={rare=6,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={rare=7,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={rare=8,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={rare=9,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={rare=10,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}

 #exotic
titleraw @s[scores={exotic=1,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={exotic=2,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={exotic=3,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={exotic=4,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={exotic=5,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={exotic=6,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={exotic=7,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={exotic=8,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={exotic=9,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={exotic=10,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}

 #honored
titleraw @s[scores={honored=1,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=2,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=3,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=4,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=5,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=6,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=7,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=8,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=9,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=10,menutimer=1..99},tag=menutechnique,tag=rollingtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§l§fRolling technique...   \n\n\n\n\n\n\n\n\n\n\n"}]}

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#curse_stuff
scoreboard players set @a[tag=curse,scores={menutimer=100,uncommon=2..},tag=menutechnique,tag=rolledtechnique] uncommon 1 
scoreboard players set @a[scores={menutimer=1..100,chance=1..22},tag=menutechnique,tag=rolledtechnique,tag=!sixeyes,tag=gojo] honored 1
scoreboard players set @a[scores={menutimer=1..100,chance=1..40},tag=menutechnique,tag=rolledtechnique,tag=sixeyes] honored 1
scoreboard players set @a[scores={menutimer=1..100,chance=1..22},tag=menutechnique,tag=rolledtechnique,tag=zenin] honored 2
scoreboard players random @s[tag=curse,scores={exotic=1..}] honored 1 2
scoreboard players set @s[tag=curse,scores={exotic=1..}] exotic 0
scoreboard players set @s[tag=curse,scores={rare=1..}] uncommon 1
scoreboard players set @s[tag=curse,scores={rare=1..}] rare 0
scoreboard players set @s[tag=curse,scores={common=2..}] uncommon 1
scoreboard players set @s[tag=curse,scores={common=2..}] common 0
scoreboard players set @s[scores={honored=1..,common=1..}] common 0
scoreboard players set @s[scores={honored=1..,uncommon=1..}] uncommon 0
scoreboard players set @s[scores={honored=1..,rare=1..}] rare 0
scoreboard players set @s[scores={honored=1..,exotic=1..}] exotic 0


execute unless entity @s[scores={rarityend=0..}] run scoreboard players add @s rarityend 0
scoreboard players add @s[scores={menutimer=100..,rarityend=0..2}] rarityend 1
execute as @s[scores={menutimer=100,rarityend=1,rare=1..}] run playsound beacon.power @s ~~~ 1 1.15 1
execute as @s[scores={menutimer=100,rarityend=1,exotic=1..}] run playsound music.rare @s ~~~ 1 1 1
execute as @s[scores={menutimer=100,rarityend=1,honored=1..}] run playsound music.legendary @s ~~~ 1 1 1

 #common
titleraw @s[scores={common=1,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n                             \n\n\n\n                             §l§7[ Common ] \n\n                      §l§fNo Technique\n\n\n\n   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={common=2,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n                             \n\n\n\n                             §l§7[ Common ] \n\n                    §l§fImmobilizing Sight\n\n\n\n   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={common=3,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n                             \n\n\n\n                             §l§7[ Common ] \n\n                        §l§fMiracles\n\n\n\n   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={common=4,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n                             \n\n\n\n                             §l§7[ Common ] \n\n                       §l§fPain-Killer\n\n\n\n   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={common=5,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={common=6,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={common=7,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={common=8,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={common=9,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={common=10,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}

 #uncommon

titleraw @s[scores={uncommon=1,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=curse] actionbar {"rawtext":[{"text":"\n\n\n\n                             \n\n\n\n                            §l§2[ Uncommon ] \n\n                    §l§fExplosive Energy\n\n\n\n   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
scoreboard players set @a[tag=!curse,scores={uncommon=1,menutimer=100},tag=menutechnique,tag=rolledtechnique] uncommon 2

 titleraw @s[scores={uncommon=2,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n                             \n\n\n\n                            §l§2[ Uncommon ] \n\n                         §l§fWind-Up\n\n\n\n   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={uncommon=3,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={uncommon=4,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={uncommon=5,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={uncommon=6,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={uncommon=7,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={uncommon=8,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={uncommon=9,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={uncommon=10,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}

 #rare
scoreboard players set @s[scores={rare=1,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=!inumaki] rare 2
scoreboard players set @s[scores={common=1..,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=inumaki] rare 1
scoreboard players set @s[scores={common=1..,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=inumaki] common 0
scoreboard players random @s[scores={rare=1,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=!inumaki] exotic 1 2
titleraw @s[scores={rare=1,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n                            \n\n\n\n                             §l§b[ Rare ] \n\n                    §l§fCursed Speech\n                §r§e- Unique to the Inumaki Clan\n\n\n\n   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={rare=2,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n                            \n\n\n\n                              §l§b[ Rare ] \n\n                       §l§fAbsorption\n\n\n\n   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={rare=3,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n                            \n\n\n\n                             §l§b[ Rare ] \n\n                    §l§fBoogie-Woogie\n\n\n\n   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={rare=4,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={rare=5,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={rare=6,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={rare=7,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={rare=8,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={rare=9,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={rare=10,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}

 #exotic
titleraw @s[scores={exotic=1,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n                                  \n\n\n\n                                   §l§5[ Exotic ] \n\n                           §l§5Judgeman \n\n\n\n   \n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": " Rolls \n\n\n\n\n\n\n\n\n\n\n"}]}
titleraw @s[scores={exotic=2,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n                                  \n\n\n\n                                   §l§5[ Exotic ] \n\n                     §l§fPrivate Pure Lovetrain\n\n\n\n   \n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": " Rolls \n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={exotic=3,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n                                  \n\n\n\n                                   §l§5[ Exotic ] \n\n             §l§fQueen of Curses + Copy (Unreleased)\n\n\n\n   \n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": " Rolls \n\n\n\n\n\n\n\n\n\n\n"}]}
titleraw @s[scores={exotic=4,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={exotic=5,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={exotic=6,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={exotic=7,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={exotic=8,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={exotic=9,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={exotic=10,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}


 #honored
scoreboard players set @s[tag=!gojo,scores={honored=1},tag=!curse] honored 3
scoreboard players set @s[tag=!zenin,scores={honored=2},tag=!curse] honored 3
titleraw @s[scores={honored=1,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=!curse] actionbar {"rawtext":[{"text":"\n\n\n\n                                  \n\n\n\n                               §l§b-[ Honored ]- \n\n                    §l§fThe Limitless Technique\n                      §r§e- Unique to the Gojo Clan\n\n\n   \n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": " Rolls \n\n\n\n\n\n\n\n\n\n"}]}

scoreboard players random @s[scores={honored=3..},tag=curse] honored 1 2

titleraw @s[scores={honored=1,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=curse] actionbar {"rawtext":[{"text":"\n\n\n\n                                  \n\n\n\n                             §l§c-[ Dishonored ]- \n\n                  §l§fDisaster Flames Technique\n                      \n\n\n   \n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": " Rolls \n\n\n\n\n\n\n\n\n\n"}]}

titleraw @s[scores={honored=2,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=curse] actionbar {"rawtext":[{"text":"\n\n\n\n                                  \n\n\n\n                             §l§c-[ Dishonored ]- \n\n               §l§fIdle Transfiguration Technique\n                      \n\n\n   \n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": " Rolls \n\n\n\n\n\n\n\n\n\n"}]}

 titleraw @s[scores={honored=2,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=!curse] actionbar {"rawtext":[{"text":"\n\n\n\n                                  \n\n\n\n                                §l§b-[ Honored ]- \n\n                   §l§fThe 10 Shadows Technique\n                      §r§e- Unique to the Zenin Clan\n\n\n   \n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": " Rolls \n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=3,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=!curse] actionbar {"rawtext":[{"text":"\n\n\n\n                                  \n\n\n\n                                §l§b-[ Honored ]- \n\n                   §l§fElectrified Cursed Energy +\n                 Mythical Beast Amber Technique\n\n\n   \n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": " Rolls \n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=4,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={honored=5,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={honored=6,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={honored=7,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={honored=8,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={honored=9,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}
 titleraw @s[scores={honored=10,menutimer=100},tag=menutechnique,tag=rolledtechnique] actionbar {"rawtext":[{"text":"\n\n\n\n      \n\n\n\n\n\n\n\n\n\n§   \n\n\n\n\n\n\n\n\n\n\n    §l§fPress [Sneak] to Roll Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": ""}]}




tag @s[scores={Sneaking=1},tag=cantselect] remove cantselect
tag @s[scores={menuselect=1,menutimer=100},tag=rolledtechnique,tag=menutechnique,tag=!selectedtechnique] add selectedtechnique
tag @s[scores={menuselect=1,menutimer=100},tag=rolledtechnique,tag=menutechnique,tag=!selectedtechnique2] add selectedtechnique2


execute as @s[tag=selectedtechnique] at @s run playsound random.orb @s ~~~ 1 0.7


#common
tellraw @s[scores={common=1,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique] {"rawtext":[{"text":"§r§fYou have no technique..."}]}

tellraw @s[scores={common=2,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique] {"rawtext":[{"text":"§r§fYou now have §l§7-[Common]- Immobilizing Sight Technique...\n§r§g- §r§gYour eyes are imbued with cursed energy, sneaking and staring at anyone will freeze them in place making them unable to move or attack, be careful as over-using your eyes can lead to danger."}]}

tellraw @s[scores={common=3,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique] {"rawtext":[{"text":"§r§fYou now have §l§7-[Common]- Miracles Technique...\n§r§g- This technique erases most little miracles from your life and stores them, which is shown by the marks under your eyes. These stored miracles are released when your life is in danger, altering your luck to ensure you survive or evade would-be fatal blows. When a miracle has been used, the marking turns to white.§r§g."}]}

#uncommon
tellraw @s[scores={uncommon=1,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique,tag=curse] {"rawtext":[{"text":"§r§fYou now have §l§2-[Uncommon]- Explosive Cursed Energy...\n§r§g- §r§fManifested by pure cursed energy power, you control Cursed Energy in its purest form creating devastating explosions."}]}

tellraw @s[scores={uncommon=2,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique] {"rawtext":[{"text":"§r§fYou now have §l§2-[Uncommon]- Wind-Up Technique...\n§r§g- §r§gWind-up your arm in order to store strength overtime that stacks allowing you to release it all at once in a devastating blow."}]}

#rare
tellraw @s[scores={rare=1,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique] {"rawtext":[{"text":"§r§fYou now have the §l§3§o-[Rare]- Cursed Speech Technique...\n§r§g- Passed down by the Inumaki Clan, this technique reinforces your words with cursed energy, forcing targets to do what the user says, however it has large drawbacks if abused."}]}

tellraw @s[scores={rare=2,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique] {"rawtext":[{"text":"§r§fYou now have the §l§3§o-[Rare]- Absorption Technique...\n§r§g- Allows you to store damage to your body and convert it into kinetic energy, releasing powerful electric bursts."}]}

tellraw @s[scores={rare=3,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique] {"rawtext":[{"text":"§r§fYou now have the §l§3§o-[Rare]- Boogie-Woogie Technique...\n§r§g- We are the Exception! You can swap the places of 2 Objects that have cursed energy, including living beings."}]}

#exotic
tellraw @s[scores={exotic=1,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique] {"rawtext":[{"text":"§r§fYou now have the §l§5-[Exotic]- Judgeman Technique...\n§r§g- §r§fA genius technique, the pinnacle of jujutsu sorcery. You control the Judgeman shikigami which allows you to pass judgement on those who have sinned."}]}
tellraw @s[scores={exotic=2,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique] {"rawtext":[{"text":"§r§fYou now have the §l§5-[Exotic]- Private Pure Lovetrain Technique...\n§r§g- §r§fThe Personal technique created by Hakari Kinji, allows you to manipulate and form objects related to gambling and bring forth your domain to test your luck, rolling triple 6 or 7 will allow you to enter a state of unlimited cursed energy, granting you immortality and immense power for 4 minutes and 11 seconds."}]}

#honored
tellraw @s[scores={honored=1,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique,tag=!curse] {"rawtext":[{"text":"§r§fYou now have the §l§b§o-[Honored]- Limitless Technique...\n§r§g- Passed down by the Gojo Clan, this technique can manipulate space and infinity to destroy anything in your path and with the Six Eyes it holds limitless potential"}]}

tellraw @s[scores={honored=2,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique,tag=!curse] {"rawtext":[{"text":"§r§fYou now have the §l§b§o-[Honored]- 10 Shadows Technique...\n§r§g- Passed down by the Zenin Clan, this technique gives you control over 10 Different Shadows including the infamous Mahoraga. (Btw you start with everything untamed, yes ik thats not canon but shush)"}]}

tellraw @s[scores={honored=3,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique] {"rawtext":[{"text":"§r§fYou now have the §l§b§o-[Honored]- Mythical Beast Amber+Electrified Cursed Energy...\n§r§g- Your Cursed Energy has taken an insanely rare form of being Electrified, you now have the power of using lightning fast attacks of electricity along with the infamous Mythical Beast Amber trump card, used by Kashimo."}]}


tellraw @s[scores={honored=1,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique,tag=curse] {"rawtext":[{"text":"§r§fYou now have the §l§c§o-[Dishonored]- Disaster Flames Technique...\n§r§gBrought to humanity and fueled by their fear of fire and volcanoes, this Cursed Technique allows you to control flames, volcanic eruptions, meteors, lava and destroy your enemies."}]}


tellraw @s[scores={honored=2,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique,tag=curse] {"rawtext":[{"text":"§r§fYou now have the §l§c§o-[Dishonored]- Idle Transfiguration Technique...\n§r§gBrought to humanity and fueled by the fear of their own kind, this Cursed Technique allows you to manipulate and transfigure the souls of humans, aswell as your own."}]}

#common

tag @s[scores={common=2,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique,tag=!sightct] add sightct
tag @s[scores={common=3,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique,tag=!sightct] add miraclect
tag @s[scores={common=4,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique,tag=!sightct] add painkillerct

#uncommon
tag @s[scores={uncommon=1,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique,tag=curse,tag=!explosivect] add explosivect
tag @s[scores={uncommon=2,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique,tag=!windupct] add windupct


#rare
tag @s[scores={rare=1,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique,tag=!noct] add speechct
tag @s[scores={rare=2,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique,tag=!noct] add absorptionct
tag @s[scores={rare=3,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique,tag=!noct] add boogiect
tag @s[scores={rare=4,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique,tag=!noct] add noct
tag @s[scores={rare=5,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique,tag=!noct] add noct

tag @s[scores={exotic=1,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique,tag=!judgemanct] add judgemanct
tag @s[scores={exotic=2,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique,tag=!lovetrainct] add lovetrainct
tag @s[scores={exotic=3,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique,tag=!noct] add noct

tag @s[scores={honored=1,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique,tag=!curse,tag=!limitlessct,tag=!curse] add limitlessct
tag @s[scores={honored=2,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique,tag=!shikigamict,tag=!curse] add shikigamict
tag @s[scores={honored=3,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique,tag=!lightningct,tag=!curse] add lightningct

tag @s[scores={honored=1,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique,tag=curse,tag=!flamesct] add flamesct
tag @s[scores={honored=2,menutimer=100},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique,tag=curse,tag=!idlectm] add idlect


execute unless entity @s[scores={techniquerolls=0}] run scoreboard players set @s[tag=selectedtechnique2] techniquerolls 0
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,techniquerolls=1..},tag=menutechnique,tag=!rollingtechnique,tag=rolledtechnique,tag=!selectedtechnique2] at @s run playsound mob.button @s ~~~ 999999 1 999999
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,techniquerolls=1..},tag=menutechnique,tag=!rollingtechnique,tag=rolledtechnique,tag=!selectedtechnique2] at @s run scoreboard players set @s chance 0
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,techniquerolls=1..,common=1..},tag=menutechnique,tag=!rollingtechnique,tag=rolledtechnique,tag=!selectedtechnique2] at @s run scoreboard players set @s common 0
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,techniquerolls=1..,uncommon=1..},tag=menutechnique,tag=!rollingtechnique,tag=rolledtechnique,tag=!selectedtechnique2] at @s run scoreboard players set @s uncommon 0
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,techniquerolls=1..,rare=1..},tag=menutechnique,tag=!rollingtechnique,tag=rolledtechnique,tag=!selectedtechnique2] at @s run scoreboard players set @s rare 0
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,techniquerolls=1..,exotic=1..},tag=menutechnique,tag=!rollingtechnique,tag=rolledtechnique,tag=!selectedtechnique2] at @s run scoreboard players set @s exotic 0
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,techniquerolls=1..,honored=1..},tag=menutechnique,tag=!rollingtechnique,tag=rolledtechnique,tag=!selectedtechnique2] at @s run scoreboard players set @s honored 0
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,techniquerolls=1..},tag=menutechnique,tag=!rollingtechnique,tag=rolledtechnique,tag=!selectedtechnique2] at @s run scoreboard players set @s menutimer 1
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,techniquerolls=1..},tag=menutechnique,tag=!rollingtechnique,tag=rolledtechnique,tag=!selectedtechnique2] at @s run scoreboard players remove @s techniquerolls 1
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,menutimer=1},tag=menutechnique,tag=!rollingtechnique,tag=rolledtechnique,tag=!selectedtechnique2] at @s run tag @s add rollingtechnique

give @s[scores={menubackground=0..,menuselect=1},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique2,tag=sightct] ds:sight_technique 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tag @s[tag=sightct] remove sightct

give @s[scores={menubackground=0..,menuselect=1},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique2,tag=miraclect] ds:miracles_technique 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tag @s[tag=miraclect] remove miraclect

give @s[scores={menubackground=0..,menuselect=1},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique2,tag=painkillerct] ds:painkiller_technique 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tag @s[tag=painkillerct] remove painkillerct

give @s[scores={menubackground=0..,menuselect=1},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique2,tag=explosivect] ds:explosive_technique 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tag @s[tag=explosivect] remove explosivect

give @s[scores={menubackground=0..,menuselect=1},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique2,tag=windupct] ds:windup_technique 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tag @s[tag=windupct] remove windupct

give @s[scores={menubackground=0..,menuselect=1},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique2,tag=speechct] ds:speech_technique 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tag @s[tag=speechct] remove speechct

give @s[scores={menubackground=0..,menuselect=1},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique2,tag=boogiect] ds:boogie_woogie_technique 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tag @s[tag=boogiect] remove boogiect

give @s[scores={menubackground=0..,menuselect=1},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique2,tag=absorptionct] ds:absorption_technique 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tag @s[tag=absorptionct] remove absorptionct

give @s[scores={menubackground=0..,menuselect=1},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique2,tag=judgemanct] ds:judgeman_technique 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tag @s[tag=judgemanct] remove judgemanct

give @s[scores={menubackground=0..,menuselect=1},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique2,tag=lovetrainct] ds:lovetrain_technique 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tag @s[tag=lovetrainct] remove lovetrainct

give @s[scores={menubackground=0..,menuselect=1},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique2,tag=limitlessct] ds:limitless_technique 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tag @s[tag=limitlessct] remove limitlessct 

give @s[scores={menubackground=0..,menuselect=1},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique2,tag=shikigamict] ds:10shadows_technique 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tag @s[tag=shikigamict] remove shikigamict 

give @s[scores={menubackground=0..,menuselect=1},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique2,tag=lightningct] ds:lightning_technique 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tag @s[tag=lightningct] remove lightningct 

give @s[scores={menubackground=0..,menuselect=1},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique2,tag=flamesct] ds:flames_technique 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tag @s[tag=flamesct] remove flamesct 

give @s[scores={menubackground=0..,menuselect=1},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique2,tag=idlect] ds:idle_transfiguration_technique 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tag @s[tag=idlect] remove idlect 

give @s[scores={menubackground=0..,menuselect=1},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique2] ds:cursedenergy 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}



execute as @s[scores={menubackground=0..,menuselect=1},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique2] at @s run playsound mob.button @s ~~~ 999999 0.5 999999
execute as @s[scores={menubackground=0..,menuselect=1},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique2,tag=!menufinal] at @s run tag @s add menufinal
execute as @s[scores={menubackground=0..,menuselect=1,techniquerolls=!0},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique2] at @s run scoreboard players set @s techniquerolls 0
execute as @s[scores={menubackground=0..,menuselect=1},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique2] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={menubackground=0..,menuselect=1},tag=menutechnique,tag=rolledtechnique,tag=selectedtechnique2] at @s run function menu_finalscreen

tag @s[tag=selectedtechnique] remove selectedtechnique