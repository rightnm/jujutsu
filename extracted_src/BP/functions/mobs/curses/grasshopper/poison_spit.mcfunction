playanimation @s[scores={move=10}] animation.grasshopper_curse.spit

execute as @s[scores={move=6..}] at @s run tp @s ~~~ facing @e[family=!purecurse,tag=!Frames,type=!ds:grasshopper_curse,type=!item,family=!projectile,family=!damage,family=!despawncito,type=!ds:dash,type=!ds:lapse_explode,type=!arrow,type=!xp_orb,r=46,c=1]

execute as @s[scores={move=5}] at @s anchored eyes run summon ds:projectile PoisonSpit ^^^1
execute as @s[scores={move=5}] at @s anchored eyes positioned ^^^45 run summon ds:projectile PoisonSpitTRG
execute as @s[scores={move=4..5}] at @s run scoreboard players set @e[name=PoisonSpit,c=1] Deleter 33
execute as @s[scores={move=4..5}] at @s anchored eyes positioned ^^^45 run scoreboard players set @e[name=PoisonSpitTRG,c=1] Deleter 33
execute as @s[scores={move=5}] at @s run playsound mob.slime.jump @a[r=90] ~~~ 99999 0.75 99999
