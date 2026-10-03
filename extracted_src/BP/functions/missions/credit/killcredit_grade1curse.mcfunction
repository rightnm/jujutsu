scoreboard objectives add mission_credit dummy
scoreboard objectives add kusakabequest dummy
execute as @s if entity @p[tag=killquest_1curse_highgrade,r=30] run scoreboard players add @p[tag=killquest_1curse_highgrade] mission_credit 1
execute as @s if entity @p[tag=killquest_3curses_highgrade,r=30] run scoreboard players add @p[tag=killquest_3curses_highgrade] mission_credit 1
execute as @s if entity @p[tag=killquest_5curses_highgrade,r=30] run scoreboard players add @p[tag=killquest_5curses_highgrade] mission_credit 1

execute as @s if entity @p[tag=simpledomainquest2,r=30] run scoreboard players add @p[tag=simpledomainquest2] kusakabequest 1



execute as @a[tag=killquest_1curse_highgrade,scores={mission_credit=1..}] at @s run function missions/rewards/1_highcurses
execute as @a[tag=killquest_3curses_highgrade,scores={mission_credit=3..}] at @s run function missions/rewards/3_highcurses
execute as @a[tag=killquest_5curses_highgrade,scores={mission_credit=5..}] at @s run function missions/rewards/5_highcurses

execute as @a[tag=simpledomainquest2,scores={kusakabequest=5..}] at @s run function missions/rewards/kusakabequest


