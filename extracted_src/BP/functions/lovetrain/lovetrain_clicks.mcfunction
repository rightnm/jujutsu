tag @s[tag=itemUse:ds:lovetrain1] add lovetrainclick

tag @s[tag=itemUse:ds:lovetrain2] add lovetrainclick

tag @s[tag=itemUse:ds:lovetrain3] add lovetrainclick

tag @s[tag=itemUse:ds:lovetrain4] add lovetrainclick

tag @s[tag=itemUse:ds:lovetrain5] add lovetrainclick

tag @s[tag=itemUse:ds:lovetrain6] add lovetrainclick



tag @s[tag=itemUse:ds:lovetrain_fists] add lovetrainclickfist

tag @s[tag=lovetrainclickfist,hasitem={item=ds:lovetrain_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep3=0,detect_sprint=1..,detect_jump=1,Energy=200..}] add wep3
execute as @s[tag=lovetrainclickfist,hasitem={item=ds:lovetrain_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep3=0,detect_sprint=1..,detect_jump=1,Energy=0..199}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=lovetrainclickfist,hasitem={item=ds:lovetrain_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep3=1..,detect_sprint=1..,detect_jump=1,Energy=200..}] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @s[tag=lovetrainclickfist,hasitem={item=ds:lovetrain_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep3=1..,detect_sprint=1..,detect_jump=1,Energy=200..}] at @s run tellraw @s {"rawtext":[{"text":"§cDevastating Blow is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @s[tag=lovetrainclickfist,hasitem={item=ds:lovetrain_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep3=0,detect_sprint=1..,detect_jump=1,Energy=200..}] move 25
scoreboard players set @s[tag=lovetrainclickfist,hasitem={item=ds:lovetrain_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep3=0,detect_sprint=1..,detect_jump=1,Energy=200..}] wep3 400
scoreboard players remove @s[tag=lovetrainclickfist,hasitem={item=ds:lovetrain_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_sprint=1..,detect_jump=1,Energy=200..,move=25}] Energy 200

execute as @s[tag=lovetrainclick] run function lovetrain/lovetrain_click
execute as @s[tag=lovetrainclickfist] run function lovetrain/lovetrain_clickfist



