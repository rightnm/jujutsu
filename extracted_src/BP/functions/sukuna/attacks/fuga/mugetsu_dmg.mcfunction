damage @e[tag=!Frames,r=7.99] 150 fire
scoreboard players set @e[tag=!Frames,r=7.99] onfire 100
scoreboard players set @e[tag=!Frames,r=7.99] Stun 50
scoreboard players set @e[tag=!Frames,r=7.99] Hit 10
scoreboard players add @e[tag=!Frames,r=7.99] Evade 15
execute as @p[tag=griefable] run function flames/heat3x3
function damages/fuga_damage