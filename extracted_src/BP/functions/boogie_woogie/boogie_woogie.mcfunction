execute as @e[tag=boogie_woogie,scores={move=0,Stun=0,cutscene=0,Hit=0,Disabled=0,Disabled2=0,punch=1,detect_sneak=0},hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand}] at @s positioned ^^^5 run function boogie_woogie/select_target
tellraw @p[tag=boogie_woogie,scores={move=0,Stun=0,cutscene=0,Hit=0,Disabled=0,Disabled2=0,punch=1,detect_sneak=0},hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand}] {"rawtext":[{"text":"§aYou are targetting: §r§f"}, {"selector":"@e[tag=boogie_target,c=1]"}]}

execute as @e[scores={BoogieTargetID=1..}] at @s unless score @s BoogieTargetID = @e[tag=boogie_woogie,r=50,c=1,scores={BoogieSelfID=1..}] BoogieSelfID run function boogie_woogie/clear_target_self

scoreboard players set @p[tag=boogie_woogie,hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},tag=!uplook,tag=doublesneak] BoogieSelfID 0
execute as @e[tag=boogie_woogie,scores={BoogieSelfID=1..}] at @s unless score @s BoogieSelfID = @e[scores={BoogieTargetID=1..},r=50,c=1] BoogieTargetID run scoreboard players set @s BoogieSelfID 0

tag @a[scores={move=0},tag=swapkick] remove swapkick

execute as @e[tag=plusultra_victim,scores={detect_health=1..},c=1] unless entity @e[tag=plusultra] run damage @s 200 override
execute as @e[tag=plusultra_victim,scores={detect_health=1..},c=1] unless entity @e[tag=plusultra] run tag @s remove plusultra_victim

tag @p[hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,detect_jump=0,Energy=50..,punch=1},m=c] add form4
execute as @p[hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Energy=0..49,Sneaking=1..,detect_jump=0,punch=1},m=c] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @p[hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=1..,Sneaking=1..,detect_jump=0,Energy=50..,punch=1},m=c] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @p[hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=1..,Sneaking=1..,detect_jump=0,Energy=50..,punch=1},m=c] at @s run tellraw @s {"rawtext":[{"text":"§cPebble Throw is on cooldown: §e"},{"score":{"name": "@p","objective": "ability4"}},{"text":"§c."}]}
scoreboard players set @p[hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,detect_jump=0,Energy=50..,punch=1},m=c] move 36
scoreboard players set @p[hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,detect_jump=0,Energy=50..,punch=1},m=c] ability4 100
scoreboard players remove @p[hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Energy=50..,move=36,Sneaking=1..,detect_jump=0,punch=1},m=c] Energy 50

execute as @p[hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,detect_jump=0,Energy=50..,punch=1},m=!c] if entity @s[hasitem={item=cobblestone}] run tag @s add form4
execute as @p[hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Energy=0..49,Sneaking=1..,detect_jump=0,punch=1},m=!c] if entity @s[hasitem={item=cobblestone}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @p[hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=1..,Sneaking=1..,detect_jump=0,Energy=50..,punch=1},m=!c] if entity @s[hasitem={item=cobblestone}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @p[hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=1..,Sneaking=1..,detect_jump=0,Energy=50..,punch=1},m=!c] if entity @s[hasitem={item=cobblestone}] at @s run tellraw @s {"rawtext":[{"text":"§cPebble Throw is on cooldown: §e"},{"score":{"name": "@p","objective": "ability4"}},{"text":"§c."}]}
execute as @p[hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,detect_jump=0,Energy=50..,punch=1},m=!c] if entity @s[hasitem={item=cobblestone}] run scoreboard players set @s move 36
execute as @p[hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,detect_jump=0,Energy=50..,punch=1},m=!c] if entity @s[hasitem={item=cobblestone}] run scoreboard players set @s ability4 100
execute as @p[hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Energy=50..,move=36,Sneaking=1..,detect_jump=0,punch=1},m=!c]  if entity @s[hasitem={item=cobblestone}] run scoreboard players remove @s Energy 50
execute as @p[hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={move=36,Sneaking=1..,detect_jump=0,punch=1},m=!c]  if entity @s[hasitem={item=cobblestone}] run clear @s cobblestone 0 1




tag @p[hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Sneaking=1..,detect_jump=0,Energy=300..,punch=1}] add form8
execute as @p[hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Energy=0..299,Sneaking=1..,detect_jump=0,punch=1}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @p[hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=1..,Sneaking=1..,detect_jump=0,Energy=300..,punch=1}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @p[hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=1..,Sneaking=1..,detect_jump=0,Energy=300..,punch=1}] at @s run tellraw @s {"rawtext":[{"text":"§cException is on cooldown: §e"},{"score":{"name": "@p","objective": "ability8"}},{"text":"§c."}]}
scoreboard players set @p[hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Sneaking=1..,detect_jump=0,Energy=300..,punch=1}] move 21
scoreboard players set @p[hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Sneaking=1..,detect_jump=0,Energy=300..,punch=1}] ability8 100
scoreboard players remove @p[hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Energy=300..,move=21,Sneaking=1..,detect_jump=0,punch=1}] Energy 300


