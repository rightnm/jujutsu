

tag @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_wep1=0,detect_jump=0}] add wep1s3
execute as @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_wep1=1..,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_wep1=1..,Sneaking=0,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cDouble Impact is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep1=0,Sneaking=0,detect_jump=0}] move 36
scoreboard players set @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep1=0,Sneaking=0,detect_jump=0}] sukuna_wep1 160


tag @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep2=0,Sneaking=1..,detect_jump=0}] add wep2s3
execute as @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep2=1..,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep2=1..,Sneaking=1..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cObliterate is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep2=0,Sneaking=1..,detect_jump=0}] move 16
scoreboard players set @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep2=0,Sneaking=1..,detect_jump=0}] sukuna_wep2 6000


tag @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep3=0,Sneaking=0,detect_jump=1..,detect_sprint=1..}] add wep3s3
execute as @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep3=1..,Sneaking=0,detect_jump=1..,detect_sprint=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep3=1..,Sneaking=0,detect_jump=1..,detect_sprint=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cDemons Descent is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_wep3"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep3=0,Sneaking=0,detect_jump=1..,detect_sprint=1..}] move 51
scoreboard players set @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep3=0,Sneaking=0,detect_jump=1..,detect_sprint=1..}] sukuna_wep3 300



tag @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_wep4=0,detect_jump=1..,detect_sprint=0}] add wep4s3
execute as @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep4=1..,Sneaking=0,detect_jump=1..,detect_sprint=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep4=1..,Sneaking=0,detect_jump=1..,detect_sprint=0}] at @s run tellraw @s {"rawtext":[{"text":"§cOverwhelming Power is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_wep4"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep4=0,Sneaking=0,detect_jump=1..,detect_sprint=0}] move 114
scoreboard players set @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep4=0,Sneaking=0,detect_jump=1..,detect_sprint=0}] sukuna_wep4 600


tag @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep5=0,Sneaking=1..,detect_jump=1..}] add wep5s3
execute as @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep5=1..,Sneaking=1..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep5=1..,Sneaking=1..,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cForced Roles is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_wep5"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep5=0,Sneaking=1..,detect_jump=1..}] move 96
scoreboard players set @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep5=0,Sneaking=1..,detect_jump=1..}] sukuna_wep5 800
tag @s[tag=wepclick,hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] remove wepclick