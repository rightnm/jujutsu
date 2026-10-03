tp @s ~~~ facing @p
execute as @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 500
execute as @s[scores={Deleter=39..40}] at @s run function beandeath
execute as @p[r=60] at @s positioned ^^^7 if entity @e[family=stalker,r=7]  run function beanscare
execute as @p[r=60] at @s positioned ^^^14 if entity @e[family=stalker,r=7]  run function beanscare
execute as @p[r=60] at @s positioned ^^^21 if entity @e[family=stalker,r=7]  run function beanscare
execute as @p[r=60] at @s positioned ^^^28 if entity @e[family=stalker,r=7]  run function beanscare
execute as @p[r=60] at @s positioned ^^^35 if entity @e[family=stalker,r=7]  run function beanscare
execute as @p[r=60] at @s positioned ^^^42 if entity @e[family=stalker,r=7]  run function beanscare
execute as @p[r=60] at @s positioned ^^^49 if entity @e[family=stalker,r=7]  run function beanscare
execute as @p[r=60] at @s positioned ^^^56 if entity @e[family=stalker,r=7]  run function beanscare
execute as @p[r=60] at @s positioned ^^^63 if entity @e[family=stalker,r=7]  run function beanscare
execute as @s at @s if entity @p[r=33] run function beandeath

