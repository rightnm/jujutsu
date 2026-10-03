

execute as @a[tag=abilitying,tag=yuji_awakened] at @s run function yuji/yuji_attacks
execute as @a[tag=itemUse:ds:soul_shrine1] at @s run function yuji/use_attack
execute as @a[tag=itemUse:ds:soul_shrine2] at @s run function yuji/use_attack

execute as @a[hasitem={item=ds:black_fists,location=slot.weapon.mainhand},tag=!arenaboss,m=!spectator] at @s run function yuji/yuji_m1s

tag @a[hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability4=0,Energy=200..,punch=1..}] add form4
scoreboard players set @a[hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,Energy=200..,punch=1..}] move 36
tellraw @a[hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability4=1..,Energy=200..,punch=1}] {"rawtext":[{"text":"§cCut-Out Thow is on cooldown: §e"},{"score":{"name": "@p","objective": "ability4"}},{"text":"§c."}]}
scoreboard players set @a[hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,Energy=200..,punch=1..}] ability4 200
scoreboard players remove @a[hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Energy=200..,move=36,Sneaking=1..,punch=1}] Energy 200

execute as @a[hasitem={item=ds:yuji_technique,location=slot.weapon.mainhand},scores={punch=1,Sneaking=1..},c=1] at @s run function yuji/yuji_clear