scoreboard players set @e[r=50] sukunacutscene 3
scoreboard players set @e[r=50] Stun 3
scoreboard players set @e[r=50] Camera 3
scoreboard players set @e[r=50] Move 3
tag @e[r=50] remove megunacutscene_p1
tag @e[r=50] remove megunacutscene_p2
event entity @e[type=ds:megumi_idle] ds:disappear
stopsound @a[r=100]
event entity @a heart_off