execute as @s[tag=energyorb] unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 51

execute as @s[name="EnergyOrb",scores={Deleter=1..}] at @s if block ~~~ air run tp @s ^^-3.33^4.33
execute as @s[name="EnergyOrb",scores={down=1,Deleter=1..}] at @s run tp @s ^^-0.3^
execute as @s[name="EnergyOrb",scores={down=2,Deleter=1..}] at @s run tp @s ^^-0.3^
execute as @s[name="EnergyOrb",scores={down=3,Deleter=1..}] at @s run tp @s ^^-0.3^

execute as @s[name="EnergyOrb",scores={left=1,Deleter=1..}] at @s run tp @s ^0.3^^
execute as @s[name="EnergyOrb",scores={left=2,Deleter=1..}] at @s run tp @s ^0.3^^
execute as @s[name="EnergyOrb",scores={left=3,Deleter=1..}] at @s run tp @s ^0.3^^

execute as @s[name="EnergyOrb",scores={right=1,Deleter=1..}] at @s run tp @s ^-0.3^^
execute as @s[name="EnergyOrb",scores={right=2,Deleter=1..}] at @s run tp @s ^-0.3^^
execute as @s[name="EnergyOrb",scores={right=3,Deleter=1..}] at @s run tp @s ^-0.3^^

playanimation @s[name="EnergyOrb"] animation.electro_orb
execute as @s[name="EnergyOrb",scores={Deleter=1..}] at @s run particle ds:energy_orb4


execute as @s[name="EnergyOrb",scores={Deleter=1..}] at @s run kill @e[type=item,r=40]
execute as @s[name="EnergyOrb",scores={Deleter=1..}] at @s unless block ~~-0.15~ air run function kashimo/energy_orb_explode

execute as @s[name="EnergyOrb",scores={Deleter=3..4}] at @s run function kashimo/energy_orb_explode

