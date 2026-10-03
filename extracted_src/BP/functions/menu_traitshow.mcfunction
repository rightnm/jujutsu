execute as @s[scores={menutimer=1..}] run scoreboard objectives add rarityend2 dummy

scoreboard players random @s[scores={honored=1},tag=!gojo] exotic 1 2
scoreboard players set @s[scores={honored=1},tag=!gojo] honored 0
scoreboard players random @s[scores={exotic=1},tag=!zenin,tag=!fushiguro] rare 1 2
scoreboard players set @s[scores={exotic=1},tag=!zenin,tag=!fushiguro] exotic 0


scoreboard players set @s[scores={menutimer=1..80,rarityend2=!0}] rarityend2 0
execute unless entity @s[scores={rarityend2=0..}] run scoreboard players add @s rarityend2 0
scoreboard players add @s[scores={menutimer=98..,rarityend2=0..2}] rarityend2 1
execute as @s[scores={menutimer=99..100,rarityend2=1..2,rare=1..}] run playsound beacon.power @s ~~~  9999 1 9999
execute as @s[scores={menutimer=99..100,rarityend2=1..2,exotic=1..}] run playsound music.rare @s ~~~ 9999 1 9999
execute as @s[scores={menutimer=99..100,rarityend2=1..2,honored=1..}] run playsound music.legendary @s ~~~  9999 1 9999

 #common
titleraw @s[scores={common=1,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={common=2,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={common=3,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={common=4,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={common=5,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={common=6,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={common=7,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={common=8,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={common=9,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={common=10,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}

 #uncommon
titleraw @s[scores={uncommon=1,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={uncommon=2,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={uncommon=3,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={uncommon=4,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={uncommon=5,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={uncommon=6,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={uncommon=7,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={uncommon=8,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={uncommon=9,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={uncommon=10,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}

 #rare
titleraw @s[scores={rare=1,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={rare=2,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={rare=3,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={rare=4,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={rare=5,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={rare=6,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={rare=7,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={rare=8,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={rare=9,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={rare=10,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}

 #exotic
titleraw @s[scores={exotic=1,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={exotic=2,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={exotic=3,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={exotic=4,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={exotic=5,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={exotic=6,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={exotic=7,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={exotic=8,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={exotic=9,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={exotic=10,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}

 #honored
titleraw @s[scores={honored=1,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=2,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=3,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=4,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=5,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=6,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=7,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=8,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=9,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=10,menutimer=1..99},tag=menutraits,tag=rollingtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§fRolling Trait...\n\n\n\n\n\n\n\n\n\n\n"}]}

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 #common
 titleraw @s[scores={common=1,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n                               §l§7-Common-\n                   §f-[ Enhanced Strength ]-\n\n    §l§fPress [Sneak] to Roll Trait - You have: "},{"score":{"name": "*","objective": "traitrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Select...   \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "}]}
 titleraw @s[scores={common=2,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n                               §l§7-Common-\n                        §f-[ Quick Feet ]-\n\n    §l§fPress [Sneak] to Roll Trait - You have: "},{"score":{"name": "*","objective": "traitrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Select...   \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "}]}
 titleraw @s[scores={common=3,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n                               §l§7-Common-\n                   §f-[ Faster Energy Charge ]-\n\n    §l§fPress [Sneak] to Roll Trait - You have: "},{"score":{"name": "*","objective": "traitrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Select...   \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "}]}
 titleraw @s[scores={common=4,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n                               §l§7-Common-\n                       §f-[ Nothing ]-\n\n    §l§fPress [Sneak] to Roll Trait - You have: "},{"score":{"name": "*","objective": "traitrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Select...   \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "}]}
 titleraw @s[scores={common=5,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n                               §l§7-Common-\n                       §f-[ Alley Cat ]-\n\n    §l§fPress [Sneak] to Roll Trait - You have: "},{"score":{"name": "*","objective": "traitrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Select...   \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "}]}
 titleraw @s[scores={common=6,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n§l§7-Common-\n§f-[ Nothing ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={common=7,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n§l§7-Common-\n§f-[ Nothing ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={common=8,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n§l§7-Common-\n§f-[ Nothing ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={common=9,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n§l§7-Common-\n§f-[ Nothing ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={common=10,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n§l§7-Common-\n§f-[ Nothing ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}

 #uncommon
titleraw @s[scores={uncommon=1,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n                               §l§2-Uncommon-\n               §f-[ Self-Proclaimed 530,000 IQ ]-\n\n    §l§fPress [Sneak] to Roll Trait - You have: "},{"score":{"name": "*","objective": "traitrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Select...   \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "}]}
 titleraw @s[scores={uncommon=2,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n                               §l§2-Uncommon-\n                    §f-[ Tactical Intellect ]-\n\n    §l§fPress [Sneak] to Roll Trait - You have: "},{"score":{"name": "*","objective": "traitrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Select...   \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "}]}
 titleraw @s[scores={uncommon=3,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n                               §l§2-Uncommon-\n                      §f-[ Exoskeleton ]-\n\n    §l§fPress [Sneak] to Roll Trait - You have: "},{"score":{"name": "*","objective": "traitrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Select...   \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "}]}
 titleraw @s[scores={uncommon=4,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n                               §l§2-Uncommon-\n              §f-[ Satiated by Cursed Energy ]-\n\n    §l§fPress [Sneak] to Roll Trait - You have: "},{"score":{"name": "*","objective": "traitrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Select...   \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "}]}
 titleraw @s[scores={uncommon=5,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n                               §l§2-Uncommon-\n                       §f-[ Lone Wolf ]-\n\n    §l§fPress [Sneak] to Roll Trait - You have: "},{"score":{"name": "*","objective": "traitrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Select...   \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "}]}
 titleraw @s[scores={uncommon=6,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n     \n\n\n\n\n\n§l§2-Uncommon-\n§f-[ ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={uncommon=7,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n     \n\n\n\n\n\n§l§2-Uncommon-\n§f-[ ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={uncommon=8,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n     \n\n\n\n\n\n§l§2-Uncommon-\n§f-[ ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={uncommon=9,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n     \n\n\n\n\n\n§l§2-Uncommon-\n§f-[ ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={uncommon=10,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n     \n\n\n\n\n\n§l§2-Uncommon-\n§f-[ ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}

 #rare
titleraw @s[scores={rare=1,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n                                   §l§3-Rare-\n                 §f-[ Rough Cursed Energy ]-\n\n    §l§fPress [Sneak] to Roll Trait - You have: "},{"score":{"name": "*","objective": "traitrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Select...   \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "}]}
 titleraw @s[scores={rare=2,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n                                   §l§3-Rare-\n                    §f-[ 'Blessed Strength' ]-\n\n    §l§fPress [Sneak] to Roll Trait - You have: "},{"score":{"name": "*","objective": "traitrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Select...   \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "}]}
 titleraw @s[scores={rare=3,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n                                  §l§3-Rare-\n         §f-[ Reverse Cursed Technique Master ]-\n\n    §l§fPress [Sneak] to Roll Trait - You have: "},{"score":{"name": "*","objective": "traitrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Select...   \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "}]}
 titleraw @s[scores={rare=4,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n                                  §l§5-Exotic-\n                      §f-[ The Progidy ]-\n\n    §l§fPress [Sneak] to Roll Trait - You have: "},{"score":{"name": "*","objective": "traitrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Select...   \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "}]}
 titleraw @s[scores={rare=5,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n                                  §l§3-Rare-\n                 §f-[ The Restless Gambler ]-\n\n    §l§fPress [Sneak] to Roll Trait - You have: "},{"score":{"name": "*","objective": "traitrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Select...   \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "}]}
 titleraw @s[scores={rare=6,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n                                  §l§3-Rare-\n   §f-[ Heavenly Restriction: Boundless Cursed Energy ]-\n\n    §l§fPress [Sneak] to Roll Trait - You have: "},{"score":{"name": "*","objective": "traitrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Select...   \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "}]}
 titleraw @s[scores={rare=7,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n                                  §l§3-Rare-\n                      §f-[ Undying Will ]-\n\n    §l§fPress [Sneak] to Roll Trait - You have: "},{"score":{"name": "*","objective": "traitrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Select...   \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "}]}
 titleraw @s[scores={rare=8,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n                                  §l§3-Rare-\n                       §f-[ Insanity ]-\n\n    §l§fPress [Sneak] to Roll Trait - You have: "},{"score":{"name": "*","objective": "traitrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Select...   \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "}]}
 titleraw @s[scores={rare=9,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n§l§3-Rare-\n§f-[ ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={rare=10,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n§l§3-Rare-\n§f-[ ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}

 #exotic
titleraw @s[scores={exotic=1,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n                               §l§5-Exotic-\n§f-[ Heavenly Restriction : Unmeasured Strength ]-      \n\n    §l§fPress [Sneak] to Roll Trait - You have: "},{"score":{"name": "*","objective": "traitrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Select...   \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "}]}
 titleraw @s[scores={exotic=2,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n                                  §l§5-Exotic-\n                 §f-[ 120% of Your Potential ]-\n\n    §l§fPress [Sneak] to Roll Trait - You have: "},{"score":{"name": "*","objective": "traitrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Select...   \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "}]}
 titleraw @s[scores={exotic=3,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n                                  §l§5-Exotic-\n                    §f-[ Delusional Idol Fan ]-\n      §l§fPress [Sneak] to Roll Trait - You have: "},{"score":{"name": "*","objective": "traitrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Select...   \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "}]}
 titleraw @s[scores={exotic=4,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n                                  §l§5-Exotic-\n               §f-[ Prince of Black Sparks ]-\n\n    §l§fPress [Sneak] to Roll Trait - You have: "},{"score":{"name": "*","objective": "traitrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Select...   \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "}]}
 titleraw @s[scores={exotic=5,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n§l§5-Exotic-\n§f-[ ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={exotic=6,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n§l§5-Exotic-\n§f-[ ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={exotic=7,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n§l§5-Exotic-\n§f-[ ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={exotic=8,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n§l§5-Exotic-\n§f-[ ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={exotic=9,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n§l§5-Exotic-\n§f-[ ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={exotic=10,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n§l§5-Exotic-\n§f-[ ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}

 #honored
scoreboard players set @s[scores={exotic=1},tag=gojo] honored 1
scoreboard players set @s[scores={rare=6},tag=gojo] honored 1
scoreboard players set @s[scores={exotic=1},tag=gojo] exotic 0
scoreboard players set @s[scores={rare=6},tag=gojo] rare 0
titleraw @s[scores={honored=1,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n                                §l§b§o-Honored-\n                     §f-[ The Six Eyes ]-\n                  §eUnique to the Gojo Clan§r      \n\n    §l§fPress [Sneak] to Roll Trait - You have: "},{"score":{"name": "*","objective": "traitrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Select...   \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   "}]}
 titleraw @s[scores={honored=2,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n         \n\n\n\n\n\n          §l§b§o-Honored-\n  §f-[ Unreleased ]-       \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=3,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n     \n\n\n\n\n\n§l§b§o-Honored-\n§f-[ ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=4,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n     \n\n\n\n\n\n§l§b§o-Honored-\n§f-[ ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=5,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n     \n\n\n\n\n\n§l§b§o-Honored-\n§f-[ ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=6,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n     \n\n\n\n\n\n§l§b§o-Honored-\n§f-[ ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=7,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n     \n\n\n\n\n\n§l§b§o-Honored-\n§f-[ ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=8,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n     \n\n\n\n\n\n§l§b§o-Honored-\n§f-[ ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=9,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n     \n\n\n\n\n\n§l§b§o-Honored-\n§f-[ ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
 titleraw @s[scores={honored=10,menutimer=100},tag=menutraits,tag=rolledtrait] actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n     \n\n\n\n\n\n§l§b§o-Honored-\n§f-[ ]-\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}

tag @s[scores={Sneaking=1},tag=cantselect] remove cantselect
tag @s[scores={menuselect=1,menutimer=100},tag=rolledtrait,tag=menutraits,tag=!selectedtrait] add selectedtrait
tag @s[scores={menuselect=1,menutimer=100},tag=rolledtrait,tag=menutraits,tag=!selectedtrait1,tag=!cantselect] add cantselect
tag @s[scores={menuselect=1,menutimer=100},tag=rolledtrait,tag=menutraits,tag=selectedtrait1,tag=!cantselect,tag=!selectedtrait2] add selectedtrait2
tag @s[scores={menuselect=1,menutimer=100},tag=rolledtrait,tag=menutraits,tag=!selectedtrait1] add selectedtrait1


execute as @s[tag=selectedtrait] at @s run playsound random.orb @s ~~~ 1 0.7


#common
tellraw @s[scores={common=1,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] {"rawtext":[{"text":"§r§fYou now have the §l§7[Common] Enhanced Strength trait...\n§r§g- Increases Strength by 5"}]}
tellraw @s[scores={common=2,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] {"rawtext":[{"text":"§r§fYou now have the §l§7[Common] Quick Feet trait...\n§r§g- Increases Agility by 5"}]}
tellraw @s[scores={common=3,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] {"rawtext":[{"text":"§r§fYou now have the §l§7[Common] Faster Energy Charge trait...\n§r§g- You regain Cursed Energy faster while charging"}]}
tellraw @s[scores={common=4,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] {"rawtext":[{"text":"§r§fYou now have the §l§7[Common] no trait...\n§r§g- lol you're unlucky that sucks, sounds like a skill issue to be honest"}]}
tellraw @s[scores={common=5,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] {"rawtext":[{"text":"§r§fYou now have the §l§7[Common] Alley Cat trait...\n§r§g- Upon entering combat, gain a speed boost"}]}

#uncommon
tellraw @s[scores={uncommon=1,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] {"rawtext":[{"text":"§r§fYou now have the §l§2[Uncommon] Self Proclaimed 530,000 IQ trait...\n§r§g- You think fast in battle, granting your evasive faster upon taking damage"}]}
tellraw @s[scores={uncommon=2,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] {"rawtext":[{"text":"§r§fYou now have the §l§2[Uncommon] Tactical Intellect trait...\n§r§g- Your tactical battle skills allow you to land more precise critical hits / black-flashes"}]}
tellraw @s[scores={uncommon=3,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] {"rawtext":[{"text":"§r§fYou now have the §l§2[Uncommon] Exoskeleton...\n§r§g- Your bones are more durable than the average person's, granting you resistance to damage."}]}
tellraw @s[scores={uncommon=4,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] {"rawtext":[{"text":"§r§fYou now have the §l§2[Uncommon] Satiated by Cursed Energy trait...\n§r§g- You no longer need to eat as you feed on the cursed energy around you."}]}
tellraw @s[scores={uncommon=5,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] {"rawtext":[{"text":"§r§fYou now have the §l§2[Uncommon] Lone Wolf trait...\n§r§g- You are a lone wolf devoid of any teamwork, you gain more EXP alone but less EXP when players are around."}]}

#rare
tellraw @s[scores={rare=1,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] {"rawtext":[{"text":"§r§fYou now have the §l§3[Rare] Rough Cursed Energy trait...\n§r§g- Your Cursed Energy seems to have a rough/hard texture, all melee attacks that are imbued with your rough cursed energy, amplify the blow, dealing more damage"}]}
tellraw @s[scores={rare=2,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] {"rawtext":[{"text":"§r§fYou now have the §l§3[Rare] 'Blessed Strength' trait...\n§r§g- You were just born much stronger than most but you don't seem to know why or how, Increases Strength by 12, Increases Agility by 12."}]}
tellraw @s[scores={rare=3,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] {"rawtext":[{"text":"§r§fYou now have the §l§3[Rare] Reverse Cursed Technique Master trait...\n§r§g- You specialise with Reverse Cursed Technique, allowing you to automatically gain RCT and spread that healing to heal others while Sneaking. RCT also costs less Cursed Energy. "}]}
tellraw @s[scores={rare=4,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] {"rawtext":[{"text":"§r§fYou now have the §l§5[Exotic] The Progidy trait...\n§r§g- Everything in your life seems easy, its almost as if you were born as a progidy, you gain x2 Invest Points per level"}]}
tellraw @s[scores={rare=5,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] {"rawtext":[{"text":"§r§fYou now have the §l§3[Rare] The Restless Gambler trait...\n§r§g- You take gambles all the time because of your insane luck, increased 'luck'."}]}
tellraw @s[scores={rare=6,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] {"rawtext":[{"text":"§r§fYou now have the §l§3[Rare] Heavenly Restriction : Boundless Energy trait...\n§r§g- Your body is restricted to be fragile and weak, however your cursed energy is boundless and flourishing!"}]}
tellraw @s[scores={rare=7,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] {"rawtext":[{"text":"§r§fYou now have the §l§3[Rare] Undying Will trait...\n§r§g- You never give up without a fight, when below 10% HP gain large buffs to your stats."}]}
tellraw @s[scores={rare=8,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] {"rawtext":[{"text":"§r§fYou now have the §l§3[Rare] Insanity trait...\n§r§g- You're a twisted person with no sense of caution, when below 20% HP take less stun and gain buffs to your stats for 30 seconds. (Has a 5 minute cooldown)"}]}

#exotic
tellraw @s[scores={exotic=1,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] {"rawtext":[{"text":"§r§fYou now have the §l§5[Exotic] Heavenly Restriction : Unmeasured Strength trait...\n§r§g- In exchange for restricting your Cursed Energy, you are granted an insanely strong body capable of doing the impossible"}]}
tellraw @s[scores={exotic=2,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] {"rawtext":[{"text":"§r§fYou now have the §l§5[Exotic] 120% of Your Potential trait...\n§r§g- You're not like the rest, you're capable of reaching 120% of your full potential, allowing you to increase your stats 20% more than the limit..."}]}
tellraw @s[scores={exotic=3,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] {"rawtext":[{"text":"§r§fYou now have the §l§5[Exotic] Delusional Idol Fan trait...\n§r§g- You seem to imagine yourself fighting alongside your favourite idol, you're either delusional, you have schizophrenia or you're just on drugs"}]}
tellraw @s[scores={exotic=4,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] {"rawtext":[{"text":"§r§fYou now have the §l§5[Exotic] Prince of Black Sparks trait...\n§r§g- You're basically just Itadori Yuji..."}]}

#honored
tellraw @s[scores={honored=1,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] {"rawtext":[{"text":"§r§fYou now have the §l§b§o-[Honored]- The Six Eyes trait...\n§r§g- Passed down by the Gojo Clan, this is a very rare thenomena that can only occur in the same person once, the Six Eyes allow the user to see the world beyond the sight of others, you are granted insane control over cursed energy making your potential, limitless..."}]}
tellraw @s[scores={honored=2,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] {"rawtext":[{"text":"§r§fYou now have the §l§b§o-[Honored]- nothing trait...\n§r§g- nothing"}]}

#common
tag @s[scores={common=1,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait,tag=!enhancedstr] add enhancedstr
tag @s[scores={common=2,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait,tag=!enhancedagi] add enhancedagi
tag @s[scores={common=3,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait,tag=!fasterce] add fasterce
tag @s[scores={common=5,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait,tag=!alleycat] add alleycat

#uncommon
tag @s[scores={uncommon=1,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait,tag=!530kiq] add 530kiq
tag @s[scores={uncommon=2,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait,tag=!tacticaliq] add tacticaliq
tag @s[scores={uncommon=3,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait,tag=!exoskeleton] add exoskeleton
tag @s[scores={uncommon=4,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait,tag=!satiated] add satiated
tag @s[scores={uncommon=5,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait,tag=!lonewolf] add lonewolf

#rare
tag @s[scores={rare=1,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait,tag=!roughce] add roughce
tag @s[scores={rare=2,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait,tag=!blessedstrength] add blessedstrength
tag @s[scores={rare=3,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait,tag=!rctmaster] add rctmaster
tag @s[scores={rare=3,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait,tag=!reversecursed] add reversecursed
scoreboard players add @s[scores={rare=3,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] rctuses 2
tag @s[scores={rare=4,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait,tag=!progidy] add progidy
tag @s[scores={rare=5,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait,tag=!gambler] add gambler
tag @s[scores={rare=6,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait,tag=!heavenlyrestriction_mechimaru] add heavenlyrestriction_mechimaru
scoreboard players set @s[scores={rare=6,menutimer=100,EnergyCap=!4000},tag=menutraits,tag=rolledtrait,tag=selectedtrait] EnergyCap 4000
scoreboard players set @s[scores={rare=6,menutimer=100,Energy=!4000},tag=menutraits,tag=rolledtrait,tag=selectedtrait] Energy 4000
tag @s[scores={rare=7,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait,tag=!undying] add undying
tag @s[scores={rare=8,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait,tag=!insanity] add insanity

tag @s[scores={exotic=1,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait,tag=zenin,tag=!heavenlyrestriction_zenin] add heavenlyrestriction_zenin
give @s[scores={exotic=1,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] ds:heavenly_restriction 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tag @s[scores={exotic=1,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait,tag=fushiguro,tag=!heavenlyrestriction_fushiguro] add heavenlyrestriction_fushiguro
tag @s[scores={exotic=2,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait,tag=!120percent] add 120percent
tag @s[scores={exotic=3,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait,tag=!delusional_trait] add delusional_trait
give @s[scores={exotic=3,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait,tag=delusional_trait] ds:delusional 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

give @s[scores={exotic=4,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait] ds:yuji_fists 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @s[scores={exotic=4,menutimer=100,divergentfistown=0},tag=menutraits,tag=rolledtrait,tag=selectedtrait] divergentfistown 1

tag @s[scores={honored=1,menutimer=100},tag=menutraits,tag=rolledtrait,tag=selectedtrait,tag=!sixeyes] add sixeyes


scoreboard players set @s[tag=selectedtrait2,scores={traitrolls=!0}] traitrolls 0
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,traitrolls=1..},tag=menutraits,tag=!rollingtrait,tag=rolledtrait,tag=!selectedtrait2] at @s run playsound mob.button @s ~~~ 999999 1 999999
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,traitrolls=1..},tag=menutraits,tag=!rollingtrait,tag=rolledtrait,tag=!selectedtrait2] at @s run scoreboard players set @s chance 0
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,traitrolls=1..,common=!0},tag=menutraits,tag=!rollingtrait,tag=rolledtrait,tag=!selectedtrait2] at @s run scoreboard players set @s common 0
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,traitrolls=1..,uncommon=!0},tag=menutraits,tag=!rollingtrait,tag=rolledtrait,tag=!selectedtrait2] at @s run scoreboard players set @s uncommon 0
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,traitrolls=1..,rare=!0},tag=menutraits,tag=!rollingtrait,tag=rolledtrait,tag=!selectedtrait2] at @s run scoreboard players set @s rare 0
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,traitrolls=1..,exotic=!0},tag=menutraits,tag=!rollingtrait,tag=rolledtrait,tag=!selectedtrait2] at @s run scoreboard players set @s exotic 0
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,traitrolls=1..,honored=!0},tag=menutraits,tag=!rollingtrait,tag=rolledtrait,tag=!selectedtrait2] at @s run scoreboard players set @s honored 0
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,traitrolls=1..},tag=menutraits,tag=!rollingtrait,tag=rolledtrait,tag=!selectedtrait2] at @s run scoreboard players set @s menutimer 1
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,traitrolls=1..},tag=menutraits,tag=!rollingtrait,tag=rolledtrait,tag=!selectedtrait2] at @s run scoreboard players remove @s traitrolls 1
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,menutimer=1},tag=menutraits,tag=!rollingtrait,tag=rolledtrait,tag=!selectedtrait2] at @s run tag @s add rollingtrait

tellraw @s[scores={menutimer=100,menuselect=1},tag=menutraits,tag=rolledtrait,tag=selectedtrait1,tag=!selectedtrait2] {"rawtext":[{"text":"§r§o§ePress [Sneak] to roll for your second trait..."}]}

scoreboard players add @s[scores={menubackground=0..,menuselect=1},tag=menutraits,tag=rolledtrait,tag=selectedtrait2,tag=enhancedstr] strength 5
scoreboard players add @s[scores={menubackground=0..,menuselect=1},tag=menutraits,tag=rolledtrait,tag=selectedtrait2,tag=enhancedstr] damageinsurance 1
scoreboard players add @s[scores={menubackground=0..,menuselect=1},tag=menutraits,tag=rolledtrait,tag=selectedtrait2,tag=enhancedstr] damageadd 1
tag @s[tag=enhancedstr] remove enhancedstr

scoreboard players add @s[scores={menubackground=0..,menuselect=1},tag=menutraits,tag=rolledtrait,tag=selectedtrait2,tag=enhancedagi] agility 5
tag @s[tag=enhancedagi] remove enhancedagi

scoreboard players add @s[scores={menubackground=0..,menuselect=1},tag=menutraits,tag=rolledtrait,tag=selectedtrait2,tag=blessedstrength] agility 12
scoreboard players add @s[scores={menubackground=0..,menuselect=1},tag=menutraits,tag=rolledtrait,tag=selectedtrait2,tag=blessedstrength] strength 12
scoreboard players add @s[scores={menubackground=0..,menuselect=1},tag=menutraits,tag=rolledtrait,tag=selectedtrait2,tag=blessedstrength] strength2 2
scoreboard players add @s[scores={menubackground=0..,menuselect=1},tag=menutraits,tag=rolledtrait,tag=selectedtrait2,tag=blessedstrength] damageinsurance 2
scoreboard players add @s[scores={menubackground=0..,menuselect=1},tag=menutraits,tag=rolledtrait,tag=selectedtrait2,tag=blessedstrength] damageadd 2

execute as @s[scores={menubackground=0..,menuselect=1},tag=menutraits,tag=rolledtrait,tag=selectedtrait2,tag=heavenlyrestriction_zenin] at @s run playsound mob.button @s ~~~ 999999 0.5 999999
execute as @s[scores={menubackground=0..,menuselect=1},tag=menutraits,tag=rolledtrait,tag=selectedtrait2,tag=heavenlyrestriction_zenin,tag=!menufinal] at @s run tag @s add menufinal
execute as @s[scores={menubackground=0..,menuselect=1,traitrolls=!0},tag=menutraits,tag=rolledtrait,tag=selectedtrait2,tag=heavenlyrestriction_zenin] at @s run scoreboard players set @s traitrolls 0
execute as @s[scores={menubackground=0..,menuselect=1,techniquerolls=!0},tag=menutraits,tag=rolledtrait,tag=selectedtrait2,tag=heavenlyrestriction_zenin] at @s run scoreboard players set @s techniquerolls 0
execute as @s[scores={menubackground=0..,menuselect=1},tag=menutraits,tag=rolledtrait,tag=selectedtrait2,tag=heavenlyrestriction_zenin] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={menubackground=0..,menuselect=1},tag=menutraits,tag=rolledtrait,tag=selectedtrait2,tag=heavenlyrestriction_zenin] at @s run function menu_finalscreen

tag @s[scores={menubackground=0..,menuselect=1,traitrolls=0},tag=menutraits,tag=rolledtrait,tag=!selectedtrait2] add selectedtrait2
execute as @s[scores={menubackground=0..,menuselect=1},tag=menutraits,tag=rolledtrait,tag=selectedtrait2] at @s run playsound mob.button @s ~~~ 999999 1 999999
execute as @s[scores={menubackground=0..,menuselect=1},tag=menutraits,tag=rolledtrait,tag=selectedtrait2,tag=!menutechnique] at @s run tag @s add menutechnique
execute as @s[scores={menubackground=0..,menuselect=1,traitrolls=!0},tag=menutraits,tag=rolledtrait,tag=selectedtrait2] at @s run scoreboard players set @s traitrolls 0
execute as @s[scores={menubackground=0..,menuselect=1},tag=menutraits,tag=rolledtrait,tag=selectedtrait2] at @s run scoreboard players set @s techniquerolls 2
execute as @s[scores={menubackground=0..,menuselect=1},tag=menutraits,tag=rolledtrait,tag=selectedtrait2] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={menubackground=0..,menuselect=1},tag=menutraits,tag=rolledtrait,tag=selectedtrait2] at @s run function menu_techniquescreen



scoreboard players set @s[tag=!rolledtrait,scores={rarityend2=!0}] rarityend2 0
tag @s[tag=selectedtrait] remove selectedtrait