damage @s 8 entity_attack entity @e[scores={move=1..},c=1,tag=instant_body]
scoreboard players set @s Stun 20
scoreboard players set @s Hit 5
scoreboard players set @s Evade 7
scoreboard players operation @s damage += @e[tag=wep1,scores={move=1..},c=1,tag=instant_body] damageadd
particle ds:impact_vfx1 ~~1~
playsound mob.sword @a[r=50] ~~1~ 99999 0.85 9999
