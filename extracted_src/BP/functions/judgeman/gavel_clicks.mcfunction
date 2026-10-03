
tag @s[tag=wepclick,hasitem={item=ds:gavel1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,wep1=0,Sneaking=0,detect_sprint=0,detect_jump=0,Energy=40..}] add wep1
execute as @s[tag=wepclick,hasitem={item=ds:gavel1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Energy=0..39,Sneaking=0,detect_sprint=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=wepclick,hasitem={item=ds:gavel1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_sprint=0,detect_jump=0,wep1=1..,Sneaking=0,detect_sprint=0,detect_jump=0,Energy=40..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:gavel1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_sprint=0,detect_jump=0,wep1=1..,Sneaking=0,detect_sprint=0,detect_jump=0,Energy=40..}] at @s run tellraw @s {"rawtext":[{"text":"§cHeavy Smack is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:gavel1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_sprint=0,detect_jump=0,Energy=40..}] move 21
scoreboard players set @s[tag=wepclick,hasitem={item=ds:gavel1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_sprint=0,detect_jump=0,Energy=40..}] wep1 140
scoreboard players remove @s[tag=wepclick,hasitem={item=ds:gavel1,location=slot.weapon.mainhand},scores={Energy=40..,move=21,Sneaking=0,detect_sprint=0,detect_jump=0}] Energy 40

tag @s[tag=wepclick,hasitem={item=ds:gavel1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=0,wep2=0,Sneaking=1..,detect_jump=0,Energy=40..}] add wep2
execute as @s[tag=wepclick,hasitem={item=ds:gavel1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Energy=0..39,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=wepclick,hasitem={item=ds:gavel1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=0,wep2=1..,Sneaking=1..,detect_jump=0,Energy=40..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:gavel1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=0,wep2=1..,Sneaking=1..,detect_jump=0,Energy=40..}] at @s run tellraw @s {"rawtext":[{"text":"§cGavel Throw is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:gavel1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0,Energy=40..}] move 26
scoreboard players set @s[tag=wepclick,hasitem={item=ds:gavel1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0,Energy=40..}] wep2 120
scoreboard players remove @s[tag=wepclick,hasitem={item=ds:gavel1,location=slot.weapon.mainhand},scores={Energy=40..,move=26,Sneaking=1..,detect_jump=0}] Energy 40

tag @s[tag=wepclick,hasitem={item=ds:gavel1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=0,wep4=0,detect_sprint=1..,detect_jump=0,Sneaking=0,Energy=200..}] add wep4
execute as @s[tag=wepclick,hasitem={item=ds:gavel1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Energy=0..199,detect_sprint=1..,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=wepclick,hasitem={item=ds:gavel1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=0,wep4=1..,detect_sprint=1..,Sneaking=0,detect_jump=0,Energy=200..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:gavel1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=0,wep4=1..,detect_sprint=1..,Sneaking=0,detect_jump=0,Energy=200..}] at @s run tellraw @s {"rawtext":[{"text":"§cJudgement Strike is on cooldown: §e"},{"score":{"name": "@p","objective": "wep4"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:gavel1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,detect_sprint=1..,detect_jump=0,Sneaking=0,Energy=200..}] move 106
scoreboard players set @s[tag=wepclick,hasitem={item=ds:gavel1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,detect_sprint=1..,detect_jump=0,Sneaking=0,Energy=200..}] wep4 1200
scoreboard players remove @s[tag=wepclick,hasitem={item=ds:gavel1,location=slot.weapon.mainhand},scores={Energy=200..,move=106,detect_sprint=1..,Sneaking=0,detect_jump=0}] Energy 200

#

tag @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,wep1=0,Sneaking=0,detect_sprint=0,detect_jump=0,Energy=40..}] add wep1
execute as @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Energy=0..39,Sneaking=0,detect_sprint=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_sprint=0,detect_jump=0,wep1=1..,Sneaking=0,detect_sprint=0,detect_jump=0,Energy=40..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_sprint=0,detect_jump=0,wep1=1..,Sneaking=0,detect_sprint=0,detect_jump=0,Energy=40..}] at @s run tellraw @s {"rawtext":[{"text":"§c360 Sweep is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_sprint=0,detect_jump=0,Energy=40..}] move 21
scoreboard players set @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_sprint=0,detect_jump=0,Energy=40..}] wep1 160
scoreboard players remove @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Energy=40..,move=21,Sneaking=0,detect_sprint=0,detect_jump=0}] Energy 40


tag @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=0,wep2=0,Sneaking=1..,detect_sprint=0,detect_jump=0,Energy=40..}] add wep2
execute as @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Energy=0..39,Sneaking=1..,detect_sprint=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_sprint=0,detect_jump=0,wep2=1..,Sneaking=1..,detect_sprint=0,detect_jump=0,Energy=40..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_sprint=0,detect_jump=0,wep2=1..,Sneaking=1..,detect_sprint=0,detect_jump=0,Energy=40..}] at @s run tellraw @s {"rawtext":[{"text":"§cSpin Feint is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_sprint=0,detect_jump=0,Energy=40..}] move 21
scoreboard players set @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_sprint=0,detect_jump=0,Energy=40..}] wep2 140
scoreboard players remove @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Energy=40..,move=21,Sneaking=1..,detect_sprint=0,detect_jump=0}] Energy 40

tag @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_sprint=0,detect_jump=1..,Energy=80..}] add wep3
execute as @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Energy=0..79,Sneaking=0,detect_sprint=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_sprint=0,detect_jump=1..,wep3=1..,Energy=80..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_sprint=0,detect_jump=1..,wep3=1..,Energy=80..}] at @s run tellraw @s {"rawtext":[{"text":"§cCyclone Crush is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_sprint=0,detect_jump=1..,Energy=80..}] move 51
scoreboard players set @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_sprint=0,detect_jump=1..,Energy=80..}] wep3 220
scoreboard players remove @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Energy=80..,move=51,Sneaking=0,detect_sprint=0,detect_jump=1..}] Energy 80


tag @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=0,wep4=0,detect_sprint=1..,detect_jump=0,Sneaking=0,Energy=200..}] add wep4
execute as @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Energy=0..199,detect_sprint=1..,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=0,wep4=1..,detect_sprint=1..,Sneaking=0,detect_jump=0,Energy=200..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=0,wep4=1..,detect_sprint=1..,Sneaking=0,detect_jump=0,Energy=200..}] at @s run tellraw @s {"rawtext":[{"text":"§cRising Strike is on cooldown: §e"},{"score":{"name": "@p","objective": "wep4"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,detect_sprint=1..,detect_jump=0,Sneaking=0,Energy=200..}] move 101
scoreboard players set @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,detect_sprint=1..,detect_jump=0,Sneaking=0,Energy=200..}] wep4 1200
scoreboard players remove @s[tag=wepclick,hasitem={item=ds:gavel2,location=slot.weapon.mainhand},scores={Energy=200..,move=101,detect_sprint=1..,Sneaking=0,detect_jump=0}] Energy 200

#

tag @s[tag=wepclick,hasitem={item=ds:gavel3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,wep1=0,Sneaking=0,detect_sprint=0,detect_jump=0,Energy=40..}] add wep1
execute as @s[tag=wepclick,hasitem={item=ds:gavel3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Energy=0..39,Sneaking=0,detect_sprint=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=wepclick,hasitem={item=ds:gavel3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_sprint=0,detect_jump=0,wep1=1..,Sneaking=0,detect_sprint=0,detect_jump=0,Energy=40..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:gavel3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_sprint=0,detect_jump=0,wep1=1..,Sneaking=0,detect_sprint=0,detect_jump=0,Energy=40..}] at @s run tellraw @s {"rawtext":[{"text":"§cThousand Ton Blow is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:gavel3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_sprint=0,detect_jump=0,Energy=40..}] move 36
scoreboard players set @s[tag=wepclick,hasitem={item=ds:gavel3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_sprint=0,detect_jump=0,Energy=40..}] wep1 240
scoreboard players remove @s[tag=wepclick,hasitem={item=ds:gavel3,location=slot.weapon.mainhand},scores={Energy=40..,move=36,Sneaking=0,detect_sprint=0,detect_jump=0}] Energy 40

tag @s[tag=wepclick,hasitem={item=ds:gavel3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=0,wep2=0,Sneaking=1..,detect_sprint=0,detect_jump=0,Energy=40..}] add wep2
execute as @s[tag=wepclick,hasitem={item=ds:gavel3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Energy=0..39,Sneaking=1..,detect_sprint=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=wepclick,hasitem={item=ds:gavel3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_sprint=0,detect_jump=0,wep2=1..,Sneaking=1..,detect_sprint=0,detect_jump=0,Energy=40..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:gavel3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_sprint=0,detect_jump=0,wep2=1..,Sneaking=1..,detect_sprint=0,detect_jump=0,Energy=40..}] at @s run tellraw @s {"rawtext":[{"text":"§cHeavy Combo is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:gavel3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_sprint=0,detect_jump=0,Energy=40..}] move 45
scoreboard players set @s[tag=wepclick,hasitem={item=ds:gavel3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_sprint=0,detect_jump=0,Energy=40..}] wep2 300
scoreboard players remove @s[tag=wepclick,hasitem={item=ds:gavel3,location=slot.weapon.mainhand},scores={Energy=40..,move=45,Sneaking=1..,detect_sprint=0,detect_jump=0}] Energy 40

tag @s[tag=wepclick,hasitem={item=ds:gavel3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep3=0,detect_sprint=0,detect_jump=1..,Energy=80..}] add wep3
execute as @s[tag=wepclick,hasitem={item=ds:gavel3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Energy=0..79,Sneaking=0,detect_sprint=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=wepclick,hasitem={item=ds:gavel3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_sprint=0,detect_jump=1..,wep3=1..,detect_sprint=0,detect_jump=1..,Energy=80..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:gavel3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_sprint=0,detect_jump=1..,wep3=1..,detect_sprint=0,detect_jump=1..,Energy=80..}] at @s run tellraw @s {"rawtext":[{"text":"§cGround Slam is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:gavel3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_sprint=0,detect_jump=1..,Energy=80..}] move 36
scoreboard players set @s[tag=wepclick,hasitem={item=ds:gavel3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_sprint=0,detect_jump=1..,Energy=80..}] wep3 240
scoreboard players remove @s[tag=wepclick,hasitem={item=ds:gavel3,location=slot.weapon.mainhand},scores={Energy=80..,move=36,Sneaking=0,detect_sprint=0,detect_jump=1..}] Energy 80
tag @s[tag=wepclick] remove wepclick