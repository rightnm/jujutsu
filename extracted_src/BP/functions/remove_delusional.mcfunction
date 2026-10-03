stopsound @s[type=player] music.takada
tag @s[tag=delusional] remove delusional
event entity @e[type=ds:takada_chan,c=1] ds:disappear
event entity @e[type=ds:takada_background,r=10,c=1] ds:disappear
scoreboard players set @s delusional_timer 0
scoreboard players set @s delusional_music 0

