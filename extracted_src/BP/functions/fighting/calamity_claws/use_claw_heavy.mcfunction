tag @s[tag=heavenlyrestriction,tag=!canuse] add canuse
tag @s[hasitem={item=ds:yuji_fists},tag=!canuse] add canuse

tag @s[tag=!nocts,scores={Stun=0,Disabled2=0,Sneaking=0,wep1=0,detect_jump=0}] add wep1
execute as @s[tag=!nocts,scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cLeft-Right Goodnight is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] move 46
scoreboard players set @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] wep1 301


tag @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1..}] add wep2
execute as @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=0,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cShoulder Bash is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1..}] move 36
scoreboard players set @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1..}] wep2 400


tag @s[tag=!nocts,scores={Stun=0,Disabled2=0,Sneaking=1..,wep3=0,detect_jump=0}] add wep3
execute as @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=1..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cTwo-Palm Strike is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0}] move 31
scoreboard players set @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0}] wep3 200


tag @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1..},tag=canuse] add wep4
execute as @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep4=1..,Sneaking=1..,detect_jump=1..},tag=canuse] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep4=1..,Sneaking=1..,detect_jump=1..},tag=canuse] at @s run tellraw @s {"rawtext":[{"text":"§cCruel Combo is on cooldown: §e"},{"score":{"name": "@p","objective": "wep4"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1..},tag=canuse] move 31
scoreboard players set @s[tag=!nocts,scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1..},tag=canuse] wep4 1200

tag @s[tag=canuse] remove canuse
tag @s[tag=wepclick] remove wepclick