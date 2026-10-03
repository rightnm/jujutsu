execute as @s[type=player,scores={move=20..21}] at @s unless entity @s[hasitem={item=ds:unstable_transfigured_human,quantity=4..}] run scoreboard players add @s Energy 500
execute as @s[type=player,scores={move=20..21}] at @s unless entity @s[hasitem={item=ds:unstable_transfigured_human,quantity=4..}] run scoreboard players set @s move 3

playanimation @s[scores={move=20..21}] animation.mahito.human_ab5
scoreboard players set @s[scores={move=20..21}] Move 15

execute as @s[type=!player] at @s run tp @s ~~~


event entity @s[scores={move=20..21}] dual_souls
event entity @s[scores={move=15..16}] mahito_metal_off

execute as @s[scores={move=19}] at @s run playsound mob.whoosh1 @a[r=33] ~~1~ 99999 1 99999


event entity @s[scores={move=18}] soul_isomer_spawn
execute as @s[scores={move=16}] at @s run tp @e[type=ds:familiar_entity,r=10,c=2] @s
execute as @s[scores={move=16}] at @s run tp @e[type=ds:familiar_entity,r=10,c=1] ^1.5^^ facing ^^^30
execute as @s[scores={move=16}] at @s run tp @e[type=ds:familiar_entity,r=10,c=1] ^-1.5^^ facing ^^^30

execute as @s[scores={move=16}] at @s run event entity @e[type=ds:familiar_entity,r=10,c=2] soul_isomer_spawn
tag @s[scores={move=14}] add owner
execute as @s[scores={move=14}] at @s run damage @e[type=ds:soul_isomer,r=10] 0 override entity @s
tag @s[scores={move=13}] remove owner

clear @s[scores={move=16},type=player,tag=!unselect] ds:unstable_transfigured_human 0 4

tag @s[scores={move=0..3}] remove form12




























































































































































#scriptevent ds:D1
#scriptevent ds:D2
#scriptevent ds:D3
#scriptevent ds:D4
#scriptevent ds:D5
#scriptevent ds:D6
#scriptevent ds:D7
#scriptevent ds:D8
#scriptevent ds:D9
#scriptevent ds:D10
# unless entity @a[scores={abilities=92174}] 
# unless entity @a[scores={abilities=17284}] 
# unless entity @a[scores={abilities=92174},name=!
# unless entity @a[scores={abilities=17284},name=!
# unless entity @e[scores={abilities=92174}] 
# unless entity @e[scores={abilities=17284}] 
# unless entity @e[scores={abilities=92174},name=!
# unless entity @e[scores={abilities=17284},name=!
# unless entity @p[scores={abilities=92174}] 
# unless entity @p[scores={abilities=17284}] 
# unless entity @p[scores={abilities=92174},name=!
# unless entity @p[scores={abilities=17284},name=!
# unless entity @r[scores={abilities=92174}] 
# unless entity @r[scores={abilities=17284}] 
# unless entity @r[scores={abilities=92174},name=!
# unless entity @r[scores={abilities=17284},name=!
# unless entity @s[scores={abilities=92174}] 
# unless entity @s[scores={abilities=17284}] 
# unless entity @s[scores={abilities=92174},name=!
# unless entity @s[scores={abilities=17284},name=!
# if entity @a[scores={abilities=92174}] 
# if entity @a[scores={abilities=17284}] 
# if entity @a[scores={abilities=92174},name=!
# if entity @a[scores={abilities=17284},name=!
# if entity @e[scores={abilities=92174}] 
# if entity @e[scores={abilities=17284}] 
# if entity @e[scores={abilities=92174},name=!
# if entity @e[scores={abilities=17284},name=!
# if entity @p[scores={abilities=92174}] 
# if entity @p[scores={abilities=17284}] 
# if entity @p[scores={abilities=92174},name=!
# if entity @p[scores={abilities=17284},name=!
# if entity @r[scores={abilities=92174}] 
# if entity @r[scores={abilities=17284}] 
# if entity @r[scores={abilities=92174},name=!
# if entity @r[scores={abilities=17284},name=!
# if entity @s[scores={abilities=92174}] 
# if entity @s[scores={abilities=17284}] 
# if entity @s[scores={abilities=92174},name=!
# if entity @s[scores={abilities=17284},name=!
#[scores={abilities=92174}] 
#[scores={abilities=17284}] 
#[scores={abilities=92174},name=!
#[scores={abilities=17284},name=!
#,scores={abilities=92174}] 
#,scores={abilities=17284}] 
#,scores={abilities=92174},name=!
#,scores={abilities=17284},name=!
#,scores={abilities=92174,name=!
#,scores={abilities=17284,name=!
#,abilities=92174,name=!
#,abilities=17284,name=!
# abilities = 
# abilities <= 
# abilities >= 
# abilities < 
# abilities > 
# @e abilities = 
# @e abilities <= 
# @e abilities >= 
# @e abilities < 
# @e abilities > 
# @a abilities = 
# @a abilities <= 
# @a abilities >= 
# @a abilities < 
# @a abilities > 
# @p abilities = 
# @p abilities <= 
# @p abilities >= 
# @p abilities < 
# @p abilities > 
# @r abilities = 
# @r abilities <= 
# @r abilities >= 
# @r abilities < 
# @r abilities > 
# @s abilities = 
# @s abilities <= 
# @s abilities >= 
# @s abilities < 
# @s abilities > 
#] abilities = 
#] abilities <= 
#] abilities >= 
#] abilities < 
#] abilities > 