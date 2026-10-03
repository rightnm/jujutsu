execute as @s if entity @e[scores={infinity=1..},r=5,rm=0.2] run function infinity_break
execute as @s if entity @e[scores={domain=1..},r=45,rm=0.2,tag=the_judge] run function judgeman/deadlysentencing_end
scoreboard players set @e[scores={amberbeast=3..,Energy=..0},r=5,rm=0.2] Energy 0
scoreboard players remove @e[scores={amberbeast=3..},r=5,rm=0.2] Energy 33
scoreboard players set @e[scores={ltncloak=3..},r=5,rm=0.2] ltncloak 0