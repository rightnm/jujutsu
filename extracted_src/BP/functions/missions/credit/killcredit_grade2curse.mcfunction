scoreboard objectives add mission_credit dummy
execute as @s if entity @p[tag=killquest_5curses_medgrade,r=30] run scoreboard players add @p[tag=killquest_5curses_medgrade] mission_credit 1
execute as @s if entity @p[tag=killquest_10curses_medgrade,r=30] run scoreboard players add @p[tag=killquest_10curses_medgrade] mission_credit 1
execute as @s if entity @p[tag=killquest_30curses_medgrade,r=30] run scoreboard players add @p[tag=killquest_30curses_medgrade] mission_credit 1


execute as @a[tag=killquest_5curses_medgrade,scores={mission_credit=5..}] at @s run function missions/rewards/5_medcurses
execute as @a[tag=killquest_10curses_medgrade,scores={mission_credit=10..}] at @s run function missions/rewards/10_medcurses
execute as @a[tag=killquest_30curses_medgrade,scores={mission_credit=30..}] at @s run function missions/rewards/30_medcurses