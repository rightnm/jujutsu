damage @s 3 entity_attack entity @e[tag=wep1m,scores={move=17..18},c=1]
scoreboard players set @s Stun 20
scoreboard players set @s Hit 3
scoreboard players set @s Evade 5
scoreboard players operation @s damage += @e[tag=wep1,scores={move=17..18},c=1] damageadd
particle ds:impact_vfx1 ~~1~
playsound mob.punch1 @a[r=50] ~~1~ 99999 1.5 9999
