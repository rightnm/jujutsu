
tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability1=0,Sneaking=0,Energy=100..},tag=!rabbit_tame] add form1
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Energy=0..99,Sneaking=0},tag=!rabbit_tame] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability1=1..,Sneaking=0,Energy=100..},tag=!rabbit_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability1=1..,Sneaking=0,Energy=100..},tag=!rabbit_tame] at @s run tellraw @s {"rawtext":[{"text":"§cRabbit Shikigami is on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,Energy=100..},tag=!rabbit_tame] move 40
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,Energy=100..},tag=!rabbit_tame] ability1 6000
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami1,location=slot.weapon.mainhand},scores={Energy=100..,move=40,Sneaking=0},tag=!rabbit_tame] Energy 100

tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability1=0,Sneaking=0,Energy=100..},tag=rabbit_tame] add form1
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Energy=0..99,Sneaking=0},tag=rabbit_tame] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability1=1..,Sneaking=0,Energy=100..},tag=rabbit_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability1=1..,Sneaking=0,Energy=100..},tag=rabbit_tame] at @s run tellraw @s {"rawtext":[{"text":"§cRabbit Shikigami is on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,Energy=100..},tag=rabbit_tame] move 40
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,Energy=100..},tag=rabbit_tame] ability1 2600
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami1,location=slot.weapon.mainhand},scores={Energy=100..,move=40,Sneaking=0},tag=rabbit_tame] Energy 100

tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami1,location=slot.weapon.mainhand}] remove shikigamiclick

tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability2=0,Sneaking=0,Energy=80..},tag=!toad_tame] add form2
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Energy=0..79,Sneaking=0},tag=!toad_tame] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability2=1..,Sneaking=0,Energy=80..},tag=!toad_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability2=1..,Sneaking=0,Energy=80..},tag=!toad_tame] at @s run tellraw @s {"rawtext":[{"text":"§cToad Shikigami is on cooldown: §e"},{"score":{"name": "@p","objective": "ability2"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=0,Energy=80..},tag=!toad_tame] move 40
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=0,Energy=80..},tag=!toad_tame] ability2 6000
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami2,location=slot.weapon.mainhand},scores={Energy=80..,move=40,Sneaking=0},tag=!toad_tame] Energy 80

tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability2=0,Sneaking=0,Energy=80..},tag=toad_tame] add form2
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Energy=0..79,Sneaking=0},tag=toad_tame] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability2=1..,Sneaking=0,Energy=80..},tag=toad_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability2=1..,Sneaking=0,Energy=80..},tag=toad_tame] at @s run tellraw @s {"rawtext":[{"text":"§cToad Shikigami is on cooldown: §e"},{"score":{"name": "@p","objective": "ability2"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=0,Energy=80..},tag=toad_tame] move 40
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=0,Energy=80..},tag=toad_tame] ability2 700
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami2,location=slot.weapon.mainhand},scores={Energy=80..,move=40,Sneaking=0},tag=toad_tame] Energy 80

tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability2=0,Sneaking=1..,Energy=20..},tag=toad_tame] add form2b
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Energy=0..19,Sneaking=1..},tag=toad_tame] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability2=1..,Sneaking=1..,Energy=20..},tag=toad_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability2=1..,Sneaking=1..,Energy=20..},tag=toad_tame] at @s run tellraw @s {"rawtext":[{"text":"§cToad Pull is on cooldown: §e"},{"score":{"name": "@p","objective": "ability2"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=1..,Energy=20..},tag=toad_tame] move 22
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=1..,Energy=20..},tag=toad_tame] ability2 60
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami2,location=slot.weapon.mainhand},scores={Energy=20..,move=22,Sneaking=1..},tag=toad_tame] Energy 20

tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami2,location=slot.weapon.mainhand}] remove shikigamiclick


tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=0,Sneaking=0,Energy=120..},tag=!dog_tame] add form3
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Energy=0..119,Sneaking=0},tag=!dog_tame] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=1..,Sneaking=0,Energy=120..},tag=!dog_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=1..,Sneaking=0,Energy=120..},tag=!dog_tame] at @s run tellraw @s {"rawtext":[{"text":"§cDivine Dogs Shikigami are on cooldown: §e"},{"score":{"name": "@p","objective": "ability3"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,Energy=120..},tag=!dog_tame] move 40
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,Energy=120..},tag=!dog_tame] ability3 6000
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami3,location=slot.weapon.mainhand},scores={Energy=120..,move=40,Sneaking=0},tag=!dog_tame] Energy 120


tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=0,Sneaking=0,Energy=120..},tag=dog_tame] add form3
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Energy=0..119,Sneaking=0},tag=dog_tame] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=1..,Sneaking=0,Energy=120..},tag=dog_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=1..,Sneaking=0,Energy=120..},tag=dog_tame] at @s run tellraw @s {"rawtext":[{"text":"§cDivine Dogs Shikigami are on cooldown: §e"},{"score":{"name": "@p","objective": "ability3"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,Energy=120..},tag=dog_tame] move 40
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,Energy=120..},tag=dog_tame] ability3 2400
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami3,location=slot.weapon.mainhand},scores={Energy=120..,move=40,Sneaking=0},tag=dog_tame] Energy 120

tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami3,location=slot.weapon.mainhand}] remove shikigamiclick

tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability4=0,Sneaking=0,Energy=60..},tag=!nue_tame] add form4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Energy=0..59,Sneaking=0},tag=!nue_tame] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability4=1..,Sneaking=0,Energy=60..},tag=!nue_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability4=1..,Sneaking=0,Energy=60..},tag=!nue_tame] at @s run tellraw @s {"rawtext":[{"text":"§cNue Shikigami is on cooldown: §e"},{"score":{"name": "@p","objective": "ability4"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=0,Energy=60..},tag=!nue_tame] move 41
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=0,Energy=60..},tag=!nue_tame] ability4 6000
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami4,location=slot.weapon.mainhand},scores={Energy=60..,move=41,Sneaking=0},tag=!nue_tame] Energy 60

tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability4=0,Sneaking=0,Energy=60..},tag=nue_tame] add form4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Energy=0..59,Sneaking=0},tag=nue_tame] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability4=1..,Sneaking=0,Energy=60..},tag=nue_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability4=1..,Sneaking=0,Energy=60..},tag=nue_tame] at @s run tellraw @s {"rawtext":[{"text":"§cNue Shikigami is on cooldown: §e"},{"score":{"name": "@p","objective": "ability4"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=0,Energy=60..},tag=nue_tame] move 21
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=0,Energy=60..},tag=nue_tame] ability4 200
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami4,location=slot.weapon.mainhand},scores={Energy=60..,move=21,Sneaking=0},tag=nue_tame] Energy 60

tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability4=0,Energy=120..},tag=nue_tame] add form4b
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Energy=0..119,Sneaking=1..},tag=nue_tame] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability4=1..,Sneaking=1..,Energy=120..},tag=nue_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability4=1..,Sneaking=1..,Energy=120..},tag=nue_tame] at @s run tellraw @s {"rawtext":[{"text":"§cNue Shikigami is on cooldown: §e"},{"score":{"name": "@p","objective": "ability4"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,Energy=120..},tag=nue_tame] move 21
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,Energy=120..},tag=nue_tame] ability4 300
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami4,location=slot.weapon.mainhand},scores={Energy=120..,move=21,Sneaking=1..},tag=nue_tame] Energy 120
tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami4,location=slot.weapon.mainhand}] remove shikigamiclick


tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability5=0,Sneaking=0,Energy=120..},tag=!serpent_tame] add form5
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Energy=0..119,Sneaking=0},tag=!serpent_tame] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability5=1..,Sneaking=0,Energy=120..},tag=!serpent_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability5=1..,Sneaking=0,Energy=120..},tag=!serpent_tame] at @s run tellraw @s {"rawtext":[{"text":"§cGreat Serpent Shikigami is on cooldown: §e"},{"score":{"name": "@p","objective": "ability5"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=0,Energy=120..},tag=!serpent_tame] move 41
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=0,Energy=120..},tag=!serpent_tame] ability5 6000
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami5,location=slot.weapon.mainhand},scores={Energy=120..,move=41,Sneaking=0},tag=!serpent_tame] Energy 120

tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability5=0,Sneaking=0,Energy=120..},tag=serpent_tame] add form5
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Energy=0..119,Sneaking=0},tag=serpent_tame] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability5=1..,Sneaking=0,Energy=120..},tag=serpent_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability5=1..,Sneaking=0,Energy=120..},tag=serpent_tame] at @s run tellraw @s {"rawtext":[{"text":"§cGreat Serpent Shikigami is on cooldown: §e"},{"score":{"name": "@p","objective": "ability5"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=0,Energy=120..},tag=serpent_tame] move 41
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=0,Energy=120..},tag=serpent_tame] ability5 2500
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami5,location=slot.weapon.mainhand},scores={Energy=120..,move=41,Sneaking=0},tag=serpent_tame] Energy 120


tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=1..,Energy=70..},tag=serpent_tame] add form5b
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Energy=0..69,Sneaking=0},tag=serpent_tame] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability5=1..,Sneaking=1..,Energy=70..},tag=serpent_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability5=1..,Sneaking=1..,Energy=70..},tag=serpent_tame] at @s run tellraw @s {"rawtext":[{"text":"§cGreat Serpent Shikigami is on cooldown: §e"},{"score":{"name": "@p","objective": "ability5"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=1..,Energy=70..},tag=serpent_tame] move 21
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=1..,Energy=70..},tag=serpent_tame] ability5 600
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami5,location=slot.weapon.mainhand},scores={Energy=70..,move=21,Sneaking=0},tag=serpent_tame] Energy 70
tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami5,location=slot.weapon.mainhand}] remove shikigamiclick

tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability6=0,Sneaking=0,Energy=140..},tag=!ox_tame] add form6
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Energy=0..139,Sneaking=0},tag=!ox_tame] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability6=1..,Sneaking=0,Energy=140..},tag=!ox_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability6=1..,Sneaking=0,Energy=140..},tag=!ox_tame] at @s run tellraw @s {"rawtext":[{"text":"§cPiercing Ox Shikigami is on cooldown: §e"},{"score":{"name": "@p","objective": "ability6"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Sneaking=0,Energy=140..},tag=!ox_tame] move 40
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Sneaking=0,Energy=140..},tag=!ox_tame] ability6 6000
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami6,location=slot.weapon.mainhand},scores={Energy=140..,move=40,Sneaking=0},tag=!ox_tame] Energy 140

tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability6=0,Sneaking=0,Energy=140..},tag=ox_tame] add form6
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Energy=0..139,Sneaking=0},tag=ox_tame] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability6=1..,Sneaking=0,Energy=140..},tag=ox_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability6=1..,Sneaking=0,Energy=140..},tag=ox_tame] at @s run tellraw @s {"rawtext":[{"text":"§cPiercing Ox Shikigami is on cooldown: §e"},{"score":{"name": "@p","objective": "ability6"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Sneaking=0,Energy=140..},tag=ox_tame] move 31
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Sneaking=0,Energy=140..},tag=ox_tame] ability6 500
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami6,location=slot.weapon.mainhand},scores={Energy=140..,move=31,Sneaking=0},tag=ox_tame] Energy 140
tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami6,location=slot.weapon.mainhand}] remove shikigamiclick


tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability7=0,Sneaking=0,Energy=325..},tag=!elephant_tame] add form7
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Energy=0..324,Sneaking=0},tag=!elephant_tame] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability7=1..,Sneaking=0,Energy=325..},tag=!elephant_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability7=1..,Sneaking=0,Energy=325..},tag=!elephant_tame] at @s run tellraw @s {"rawtext":[{"text":"§cMax Elephant Shikigami is on cooldown: §e"},{"score":{"name": "@p","objective": "ability7"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,Energy=325..},tag=!elephant_tame] move 40
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,Energy=325..},tag=!elephant_tame] ability7 6000
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Energy=325..,move=40,Sneaking=0},tag=!elephant_tame] Energy 325

tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability7=0,Sneaking=0,detect_jump=0,Energy=325..},tag=elephant_tame] add form7
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Energy=0..324,Sneaking=0,detect_jump=0},tag=elephant_tame] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability7=1..,Sneaking=0,detect_jump=0,Energy=325..},tag=elephant_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability7=1..,Sneaking=0,detect_jump=0,Energy=325..},tag=elephant_tame] at @s run tellraw @s {"rawtext":[{"text":"§cMax Elephant Shikigami is on cooldown: §e"},{"score":{"name": "@p","objective": "ability7"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,detect_jump=0,Energy=325..},tag=elephant_tame] move 40
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,detect_jump=0,Energy=325..},tag=elephant_tame] ability7 6000
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Energy=325..,move=40,Sneaking=0,detect_jump=0},tag=elephant_tame] Energy 325

tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,detect_jump=1..,Energy=150..},tag=elephant_tame] add form7b
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Energy=0..149,detect_jump=1..},tag=elephant_tame] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=1..,ability7=1..,detect_jump=1..,Energy=150..},tag=elephant_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=1..,ability7=1..,detect_jump=1..,Energy=150..},tag=elephant_tame] at @s run tellraw @s {"rawtext":[{"text":"§cMax Elephant Shikigami is on cooldown: §e"},{"score":{"name": "@p","objective": "ability7"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,detect_jump=1..,Energy=150..},tag=elephant_tame] move 41
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,detect_jump=1..,Energy=150..},tag=elephant_tame] ability7 500
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Energy=150..,move=41,detect_jump=1..},tag=elephant_tame] Energy 150

tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=1..,Energy=250..},tag=elephant_tame] add form7c
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Energy=0..249,Sneaking=1..},tag=elephant_tame] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability7=1..,Sneaking=1..,Energy=250..},tag=elephant_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability7=1..,Sneaking=1..,Energy=250..},tag=elephant_tame] at @s run tellraw @s {"rawtext":[{"text":"§cMax Elephant Shikigami is on cooldown: §e"},{"score":{"name": "@p","objective": "ability7"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=1..,Energy=250..},tag=elephant_tame] move 40
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=1..,Energy=250..},tag=elephant_tame] ability7 300
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={Energy=250..,move=40,Sneaking=1..},tag=elephant_tame] Energy 250
tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami7,location=slot.weapon.mainhand}] remove shikigamiclick

tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami8,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability8=0,Sneaking=0,Energy=500..},tag=!deer_tame] add form8
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami8,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Energy=0..499,Sneaking=0},tag=!deer_tame] at @s run playsound note.pling @s ~~~ 0.05 0.88
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami8,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability8=1..,Sneaking=0,Energy=500..},tag=!deer_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami8,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability8=1..,Sneaking=0,Energy=500..},tag=!deer_tame] at @s run tellraw @s {"rawtext":[{"text":"§cRound Deer Shikigami is on cooldown: §e"},{"score":{"name": "@p","objective": "ability8"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami8,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Sneaking=0,Energy=500..},tag=!deer_tame] move 40
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami8,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Sneaking=0,Energy=500..},tag=!deer_tame] ability8 6000
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami8,location=slot.weapon.mainhand},scores={Energy=500..,move=40,Sneaking=0},tag=!deer_tame] Energy 500

tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami8,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability8=0,Sneaking=0,detect_jump=0,Energy=500..},tag=deer_tame] add form8
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami8,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Energy=0..499,Sneaking=0,detect_jump=0},tag=deer_tame] at @s run playsound note.pling @s ~~~ 0.05 0.88
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami8,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability8=1..,Sneaking=0,detect_jump=0,Energy=500..},tag=deer_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami8,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability8=1..,Sneaking=0,detect_jump=0,Energy=500..},tag=deer_tame] at @s run tellraw @s {"rawtext":[{"text":"§cRound Deer Shikigami is on cooldown: §e"},{"score":{"name": "@p","objective": "ability8"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami8,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Sneaking=0,detect_jump=0,Energy=500..},tag=deer_tame] move 40
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami8,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Sneaking=0,detect_jump=0,Energy=500..},tag=deer_tame] ability8 3200
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami8,location=slot.weapon.mainhand},scores={Energy=500..,move=40,Sneaking=0,detect_jump=0},tag=deer_tame] Energy 500
tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami8,location=slot.weapon.mainhand}] remove shikigamiclick

tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami11,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability10=0,Sneaking=0,Energy=600..},tag=deer_tame,tag=nue_tame,tag=serpent_tame] add form11
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami11,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability10=0,Energy=0..599,Sneaking=0},tag=deer_tame,tag=nue_tame,tag=serpent_tame] at @s run playsound note.pling @s ~~~ 0.05 0.1010
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami11,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability10=1..,Sneaking=0,Energy=600..},tag=deer_tame,tag=nue_tame,tag=serpent_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami11,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability10=1..,Sneaking=0,Energy=600..},tag=deer_tame,tag=nue_tame,tag=serpent_tame] at @s run tellraw @s {"rawtext":[{"text":"§cMerged Beast: Agito is on cooldown: §e"},{"score":{"name": "@p","objective": "ability10"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami11,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability10=0,Sneaking=0,Energy=600..},tag=deer_tame,tag=nue_tame,tag=serpent_tame] move 41
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami11,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability10=0,Sneaking=0,Energy=600..},tag=deer_tame,tag=nue_tame,tag=serpent_tame] ability10 7200
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami11,location=slot.weapon.mainhand},scores={Energy=600..,move=41,Sneaking=0},tag=deer_tame,tag=nue_tame,tag=serpent_tame] Energy 600
tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami11,location=slot.weapon.mainhand}] remove shikigamiclick


tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami10,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability11=0,Sneaking=0,Energy=750..},tag=!mahoraga_tame] add form10
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami10,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability11=0,Energy=0..599,Sneaking=0},tag=!mahoraga_tame] at @s run playsound note.pling @s ~~~ 0.05 0.1010
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami10,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability11=1..,Sneaking=0,Energy=750..},tag=!mahoraga_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami10,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability11=1..,Sneaking=0,Energy=750..},tag=!mahoraga_tame] at @s run tellraw @s {"rawtext":[{"text":"§cDivine General Mahoraga is on cooldown: §e"},{"score":{"name": "@p","objective": "ability11"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami10,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability11=0,Sneaking=0,Energy=750..},tag=!mahoraga_tame] move 706
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami10,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability11=0,Sneaking=0,Energy=750..},tag=!mahoraga_tame] ability11 12000
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami10,location=slot.weapon.mainhand},scores={Energy=750..,move=706,Sneaking=0},tag=!mahoraga_tame] Energy 750


tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami10,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability11=0,Sneaking=0,Energy=750..},tag=mahoraga_tame] add form10
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami10,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability11=0,Energy=0..599,Sneaking=0},tag=mahoraga_tame] at @s run playsound note.pling @s ~~~ 0.05 0.1010
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami10,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability11=1..,Sneaking=0,Energy=750..},tag=mahoraga_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami10,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability11=1..,Sneaking=0,Energy=750..},tag=mahoraga_tame] at @s run tellraw @s {"rawtext":[{"text":"§cDivine General Mahoraga is on cooldown: §e"},{"score":{"name": "@p","objective": "ability11"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami10,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability11=0,Sneaking=0,Energy=750..},tag=mahoraga_tame] move 41
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami10,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability11=0,Sneaking=0,Energy=750..},tag=mahoraga_tame] ability11 12000
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami10,location=slot.weapon.mainhand},scores={Energy=750..,move=41,Sneaking=0},tag=mahoraga_tame] Energy 750

tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami10,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability11=0,Sneaking=1..,Energy=200..},tag=mahoraga_tame] add form10b
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami10,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability11=0,Energy=0..199,Sneaking=1..},tag=mahoraga_tame] at @s run playsound note.pling @s ~~~ 0.05 0.1010
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami10,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability11=1..,Sneaking=1..,Energy=200..},tag=mahoraga_tame] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami10,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability11=1..,Sneaking=1..,Energy=200..},tag=mahoraga_tame] at @s run tellraw @s {"rawtext":[{"text":"§cDivine General Mahoraga is on cooldown: §e"},{"score":{"name": "@p","objective": "ability11"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami10,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability11=0,Sneaking=1..,Energy=200..},tag=mahoraga_tame] move 41
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami10,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability11=0,Sneaking=1..,Energy=200..},tag=mahoraga_tame] ability11 260
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami10,location=slot.weapon.mainhand},scores={Energy=200..,move=41,Sneaking=1..},tag=mahoraga_tame] Energy 200
tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami10,location=slot.weapon.mainhand}] remove shikigamiclick

execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami12,location=slot.weapon.mainhand},scores={Sneaking=0,domainstart=1..}] at @s if entity @e[tag=domainlayout,r=48,rm=0.5] run function domainloser2

tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami12,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability12=0,Sneaking=0,Energy=500..},tag=!cantdomain] add form12
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami12,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability12=0,Energy=0..499,Sneaking=0},tag=!cantdomain] at @s run playsound note.pling @s ~~~ 0.05 0.10
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami12,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability12=1..,Sneaking=0,Energy=500..},tag=!cantdomain] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami12,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability12=1..,Sneaking=0,Energy=500..},tag=!cantdomain] at @s run tellraw @s {"rawtext":[{"text":"§cChimera Shadow Garden is on cooldown: §e"},{"score":{"name": "@p","objective": "ability12"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami12,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability12=0,Sneaking=0,Energy=500..},tag=!cantdomain] domainstart 102
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami12,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability12=0,Sneaking=0,Energy=500..},tag=!cantdomain] ability12 10000
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami12,location=slot.weapon.mainhand},scores={Energy=500..,domainstart=102,Sneaking=0},tag=!cantdomain] Energy 500

execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami12,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0},tag=shadowgardendomain] at @s if entity @e[name=ChimeraGarden1] run tellraw @s {"rawtext":[{"text":"§cYou Cancelled the Domain."}]}
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami12,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0},tag=shadowgardendomain] at @s if entity @e[name=ChimeraGarden1] run stopsound @s[r=100] music.chimera
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami12,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0},tag=shadowgardendomain] at @s run scoreboard players set @e[name=ChimeraGarden1,c=1] Deleter 21

#2nd Variant

tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami12,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability12=0,Sneaking=1..,Energy=800..},tag=!cantdomain] add form12b
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami12,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability12=0,Energy=0..799,Sneaking=1..},tag=!cantdomain] at @s run playsound note.pling @s ~~~ 0.05 0.10
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami12,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability12=1..,Sneaking=1..,Energy=800..},tag=!cantdomain] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami12,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability12=1..,Sneaking=1..,Energy=800..},tag=!cantdomain] at @s run tellraw @s {"rawtext":[{"text":"§cChimera Shadow Garden is on cooldown: §e"},{"score":{"name": "@p","objective": "ability12"}},{"text":"§c."}]}
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami12,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability12=0,Sneaking=1..,Energy=800..},tag=!cantdomain] domainstart 102
scoreboard players set @s[tag=shikigamiclick,hasitem={item=ds:shikigami12,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability12=0,Sneaking=1..,Energy=800..},tag=!cantdomain] ability12 14000
scoreboard players remove @s[tag=shikigamiclick,hasitem={item=ds:shikigami12,location=slot.weapon.mainhand},scores={Energy=800..,domainstart=102,Sneaking=1..},tag=!cantdomain] Energy 800

execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami12,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0},tag=shadowgardendomain2] at @s if entity @e[name=ChimeraGarden2] run tellraw @s {"rawtext":[{"text":"§cYou Cancelled the Domain."}]}
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami12,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0},tag=shadowgardendomain2] at @s if entity @e[name=ChimeraGarden2] run stopsound @s[r=100] music.chimeragarden
execute as @s[tag=shikigamiclick,hasitem={item=ds:shikigami12,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0},tag=shadowgardendomain2] at @s run scoreboard players set @e[name=ChimeraGarden2,c=1] Deleter 21
tag @s[tag=shikigamiclick,hasitem={item=ds:shikigami12,location=slot.weapon.mainhand}] remove shikigamiclick