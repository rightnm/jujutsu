clear @p[hasitem={item=ds:reality_shard2,location=slot.weapon.mainhand}] ds:reality_shard2

execute as @s run particle ds:reactor_activate2 ~~1~
execute as @s run particle ds:dirt3 ~~1~
execute as @s run playsound mob.distort2 @a ~~~ 9999 1.75 9999
execute as @s run playsound mob.distort3 @a ~~~ 9999 0.75 9999
execute as @s run camerashake add @a[r=100] 3 0.15 rotational
execute as @s[scores={endurance=0..2}]  run camera @a fade time 0 1 1 color 255 255 255
scoreboard players add @s endurance 0
scoreboard players add @s[scores={endurance=0..3}] endurance 1

execute as @s[scores={endurance=1..3}] run tag @s add shardinputted
execute as @s[scores={endurance=1..3}] run scoreboard players set @s move 61


execute as @s[scores={endurance=4..}] run tag @s add destabilizing_final
execute as @s[scores={endurance=4..}] run scoreboard players set @s move 2401









