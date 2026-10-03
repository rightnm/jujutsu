tag @s[type=ds:mahito] add warned_by_sukuna

tag @e[tag=idle_transfig,tag=domainactive,c=1,r=50] add sukuna_warning
scoreboard players set @e[tag=idle_transfig,tag=domainactive,c=1,r=50] move 0
execute as @e[tag=idle_transfig,tag=domainactive,c=1,r=50] at @s run function cancel_attack
scoreboard players set @e[tag=idle_transfig,tag=domainactive,c=1,r=50] cutscene 121
