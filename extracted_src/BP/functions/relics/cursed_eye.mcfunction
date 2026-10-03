execute as @s[scores={Energy=200..}] at @s run playanimation @s animation.cursed_eye.use
execute as @s[scores={Energy=200..}] at @s positioned ^^^5 run function relics/cursed_eye_target
execute as @s[scores={Energy=200..}] at @s  if entity @e[tag=eye_trg,scores={detect_health=1..}] run playsound mob.endermen.portal @a[r=50] ~~1~ 99999 0.25 99999

execute as @s[scores={Energy=200..}] at @s if entity @e[tag=eye_trg,scores={detect_health=1..}] run tellraw @s[scores={Energy=200..}] {"rawtext":[{"text":"§r§l§o§dThe Cursed Eye has Observed the Target...\n\n"},{"selector":"@e[tag=eye_trg,c=1]"},{"text":"\n§r§5Target's Health:\n§l§c"},{"score":{"name":"@e[tag=eye_trg,c=1]","objective":"detect_health"}}]}

execute as @s[scores={Energy=200..}] at @s run execute as @e[tag=eye_trg] at @s unless entity @s[scores={detect_health=0..}] run tellraw @p[tag=itemUse:ds:cursed_eye,c=1,scores={Energy=200..}] {"rawtext":[{"text":"§r§l§o§cThe Cursed Eye cannot Observe this Target.\nTry observing a humanoid or stronger creature?..."}]}




tag @e[tag=eye_trg] remove eye_trg
scoreboard players remove @s[scores={Energy=200..}] Energy 200