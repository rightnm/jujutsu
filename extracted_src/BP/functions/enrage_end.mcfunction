stopsound @a[r=50] music.prowess
playsound mob.tinnitus @a[r=50] ~~~ 99999 1 99999
execute as @e[scores={enrage=4..},c=1] at @s run scoreboard players set @e[type=ds:mahito,r=50] high 240
scoreboard players set @e[scores={enrage=4..},c=1] chance 0
scoreboard players set @e[scores={enrage=4..},c=1] Stun 240
scoreboard players set @e[scores={enrage=4..},c=1] move 240
scoreboard players set @e[scores={enrage=4..},c=1] Disabled 240
scoreboard players set @e[scores={enrage=4..},c=1] hitCD 240
execute as @e[scores={enrage=4..},c=1] run tag @s[scores={punch=1..},tag=!punch0] add punch0
effect @e[scores={enrage=4..},c=1] slowness 12 10 true
tag @e[scores={enrage=4..},c=1] add enrage_end
