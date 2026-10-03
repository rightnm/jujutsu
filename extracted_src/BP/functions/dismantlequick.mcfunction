execute unless entity @p[tag=arenaboss] unless entity @s[tag=gunshot] run particle ds:dismantle_stars_small
execute unless entity @p[tag=arenaboss] unless entity @s[tag=gunshot] run execute as @s at @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 14
execute unless entity @p[tag=arenaboss] unless entity @s[tag=gunshot] run playanimation @s[scores={Deleter=13..}] animation.dismantle_med
execute unless entity @p[tag=arenaboss] unless entity @s[tag=gunshot] run execute as @p at @s run kill @e[type=ds:dismantle_quick,rm=50]
execute if entity @p[tag=arenaboss] unless entity @s[tag=gunshot] run function bosses/file/weps/phasershoot