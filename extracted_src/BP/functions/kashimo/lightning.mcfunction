execute as @e[type=ds:projectile,name="LightningBolt"] at @s run function kashimo/lightningbolt1

execute as @e[type=ds:projectile,name="EnergyWave"] at @s run function kashimo/energy_wave
execute as @e[type=ds:projectile,name="EnergyOrb"] at @s run function kashimo/energy_orb

execute as @e[type=ds:projectile,name=StormDomain] at @s run function kashimo/storm_domain

clear @a[scores={amberbeast=0},hasitem={item=ds:lightning5}] ds:lightning5
clear @a[scores={amberbeast=0},hasitem={item=ds:lightning6}] ds:lightning6