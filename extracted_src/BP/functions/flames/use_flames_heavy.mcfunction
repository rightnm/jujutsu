
tag @s[tag=!nocts,scores={Stun=0,Disabled2=0,Sneaking=0,wep1=0,Sneaking=0,Energy=30..,detect_jump=0}] add wep1
execute as @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep1=0,Energy=0..29,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,Energy=30..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,Energy=30..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cFire Palm is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,Energy=30..,detect_jump=0}] move 21
scoreboard players set @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,Energy=30..,detect_jump=0}] wep1 200
scoreboard players remove @s[tag=!nocts,scores={Energy=30..,move=21,Sneaking=0,detect_jump=0}] Energy 30


tag @s[tag=!nocts,scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,wep2=0,Energy=50..}] add wep2
execute as @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep2=0,Energy=0..49,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,wep2=1..,Sneaking=0,detect_jump=1..,Energy=50..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,wep2=1..,Sneaking=0,detect_jump=1..,Energy=50..}] at @s run tellraw @s {"rawtext":[{"text":"§cFlaming Chokehold is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1..,Energy=50..}] move 36
scoreboard players set @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1..,Energy=50..}] wep2 400
scoreboard players remove @s[tag=!nocts,scores={Energy=50..,move=36,Sneaking=0,detect_jump=1..}] Energy 50

tag @s[tag=!nocts,scores={Stun=0,Disabled2=0,Sneaking=1..,wep3=0,detect_jump=0,Energy=75..}] add wep3
execute as @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep3=0,Energy=0..64,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,scores={Stun=0,Disabled2=0,Sneaking=1..,wep3=1..,detect_jump=0,Energy=75..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,scores={Stun=0,Disabled2=0,Sneaking=1..,wep3=1..,detect_jump=0,Energy=75..}] at @s run tellraw @s {"rawtext":[{"text":"§cBlazing Punch is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0,Energy=75..}] move 41
scoreboard players set @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0,Energy=75..}] wep3 400
scoreboard players remove @s[tag=!nocts,scores={Energy=75..,move=41,Sneaking=1..,detect_jump=0}] Energy 75

tag @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,detect_jump=1..,Energy=200..}] add wep5
execute as @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep5=0,Energy=0..199,Sneaking=1..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=1..,wep5=1..,Energy=200..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=1..,wep5=1..,Energy=200..}] at @s run tellraw @s {"rawtext":[{"text":"§cInferno Kick is on cooldown: §e"},{"score":{"name": "@p","objective": "wep5"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,detect_jump=1..,Energy=200..}] move 56
scoreboard players set @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,detect_jump=1..,Energy=200..}] wep5 1000
scoreboard players remove @s[tag=!nocts,scores={Energy=200..,move=56,Sneaking=1..,detect_jump=1..}] Energy 200
