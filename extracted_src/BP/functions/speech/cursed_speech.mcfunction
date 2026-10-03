tag @e[scores={move=0},tag=!domainactive,tag=cursed_speaking] remove cursed_speaking

scoreboard players remove @e[scores={runaway=1..}] runaway 1
execute as @e[scores={runaway=1..}] at @s run particle ds:sprint
execute as @e[scores={runaway=1..}] at @s run scriptevent ds:autoJump2
 
execute as @e[scores={sleep_start=1..}] at @s run function speech/sleep_start
execute as @e[scores={sleep=1..}] at @s run function speech/sleeping

execute as @e[scores={getcrushed=1..}] at @s run function speech/getcrushed

execute as @e[tag=cursed_speech,c=16] run scoreboard players operation @s speech_limit = @s EnergyCap
execute as @e[tag=cursed_speech,c=16] run scoreboard players operation @s speech_limit /= ten endurance
scoreboard players set @e[scores={speech_limit=251..}] speech_limit 250

 
execute as @e[scores={plummet_start=1..}] at @s run function speech/plummet_start
execute as @e[scores={plummet=1..}] at @s run function speech/plummeting



tag @p[hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=1..,detect_jump=0,Energy=750..,punch=1}] add form5
execute as @p[hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=1..,Sneaking=1..,detect_jump=0,Energy=750..,punch=1}] at @s run tellraw @s {"rawtext":[{"text":"§cHeal is on cooldown: §e"},{"score":{"name": "@p","objective": "ability5"}},{"text":"§c."}]}
scoreboard players set @p[hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=1..,detect_jump=0,Energy=750..,punch=1}] move 71
scoreboard players set @p[hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=1..,detect_jump=0,Energy=750..,punch=1}] ability5 400
scoreboard players remove @p[hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Energy=750..,move=71,Sneaking=1..,detect_jump=0,punch=1}] Energy 750


tag @p[hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability10=0,Sneaking=1..,detect_jump=0,Energy=3000..,punch=1}] add form10
execute as @p[hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability10=1..,Sneaking=1..,detect_jump=0,Energy=3000..,punch=1}] at @s run tellraw @s {"rawtext":[{"text":"§cDie is on cooldown: §e"},{"score":{"name": "@p","objective": "ability10"}},{"text":"§c."}]}
scoreboard players set @p[hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability10=0,Sneaking=1..,detect_jump=0,Energy=3000..,punch=1}] move 71
scoreboard players set @p[hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability10=0,Sneaking=1..,detect_jump=0,Energy=3000..,punch=1}] ability10 3000
scoreboard players remove @p[hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Energy=3000..,move=71,Sneaking=1..,detect_jump=0,punch=1}] Energy 3000
