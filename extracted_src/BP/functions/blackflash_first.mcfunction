execute unless entity @s[tag=noparticles] run particle ds:first_blackflash1 ~2.5~1.5~
execute unless entity @s[tag=noparticles] run particle ds:first_blackflash2 ~-2.5~0.75~
execute unless entity @s[scores={move=1..},tag=blackflash_finisher_gojo] run camerashake add @a[r=40] 4 0.5 rotational
execute unless entity @s[tag=nomusic] run playsound mob.first_blackflash @a[r=200] ~~~ 99999 1 99999
scoreboard players add @s expadd 300
tellraw @s[type=player] {"rawtext":[{"text":"§r§d§lYou have landed your first black-flash!!!\n\n§r§eA Black flash occurs when cursed energy is applied to an impact within a millionth of a second of the strike, it's an extremely rare phenomenon that only a few sorcerers have managed to pull off!\n\n§r§9+ 300 EXP\n§5§o- You feel as if your mind has reached a new level of understanding."}]}
scoreboard players set @s blackflashlearn 1
tag @s[tag=nomusic] remove nomusic
tag @s[tag=noparticles] remove noparticles