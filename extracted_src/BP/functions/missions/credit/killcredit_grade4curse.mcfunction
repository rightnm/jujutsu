scoreboard objectives add mission_credit dummy
execute as @s if entity @p[tag=killquest_5curses_lowgrade,r=75] run scoreboard players add @p[tag=killquest_5curses_lowgrade] mission_credit 1
execute as @s if entity @p[tag=killquest_10curses_lowgrade,r=75] run scoreboard players add @p[tag=killquest_10curses_lowgrade] mission_credit 1
execute as @s if entity @p[tag=killquest_30curses_lowgrade,r=75] run scoreboard players add @p[tag=killquest_30curses_lowgrade] mission_credit 1


execute as @a[tag=killquest_5curses_lowgrade,scores={mission_credit=5..}] at @s run function missions/rewards/5_lowcurses
execute as @a[tag=killquest_10curses_lowgrade,scores={mission_credit=10..}] at @s run function missions/rewards/10_lowcurses
execute as @a[tag=killquest_30curses_lowgrade,scores={mission_credit=30..}] at @s run function missions/rewards/30_lowcurses

execute as @s if entity @p[tag=killquest_flyheads_infestation,r=75] run scoreboard players add @p[tag=killquest_flyheads_infestation] mission_credit 1

execute as @a[tag=killquest_flyheads_infestation,scores={mission_credit=30..}] at @s run function missions/rewards/flyheads_infestation