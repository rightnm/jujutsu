tag @s remove styleswap_victim
particle ds:impact_vfx1 ~~1~
particle ds:impact_vfx2 ~~1~

particle ds:large_impact1 ~~1~

particle ds:ground_slam1 ~~1~

playsound mob.shock1 @a[r=100] ~~~ 99999 1.5 99999
camerashake add @a[r=50] 2 0.15
damage @s 20 override
scoreboard players add @s Flourish 7
scoreboard players add @s Hit 4
scoreboard players add @s Evade 10
scoreboard players add @s Stun 30
scoreboard players set @e[tag=styleswapper,c=1] move 3
camera @s clear
camera @p[tag=styleswapper] clear
camera @p[tag=styleswap_brother] clear
scoreboard players operation @s damage += @p[tag=styleswap_brother,c=1] damageadd
scoreboard players operation @s damage += @p[tag=styleswapper,c=1] damagehalf
tag @e[tag=styleswap_brother,c=1] remove styleswap_brother
camera @a[tag=styleswap_tag] clear
scoreboard players set @a[tag=styleswap_tag] move 3
tag @a[c=3,tag=styleswap_tag] remove styleswap_tag
