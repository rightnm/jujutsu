execute as @s[name=shockwaveblow,tag=!Stopped] at @s run tp @s ^^^3 facing @e[name=shockwaveblowTRG,c=1]


execute as @e[name=shockwaveblowTRG] at @s run tp @s ~~~

execute as @e[name=shockwaveblow] at @s run particle ds:shockwaveblow1
execute as @e[name=shockwaveblow] at @s run particle ds:shockwaveblow2
execute as @e[name=shockwaveblow] at @s run particle ds:shockwaveblow3
execute as @e[name=shockwaveblow] at @s run particle ds:shockwaveblow4

execute as @e[name=shockwaveblow] at @s run camerashake add @a[r=50] 1 0.15
execute as @e[name=shockwaveblow] at @s run playsound random.explode @a[r=90] ~~~ 99999 2.5 99999

execute as @s[name=shockwaveblow,scores={Deleter=1..20}] at @s run kill @e[type=item,r=35]
execute as @s[name=shockwaveblow,scores={Deleter=1..}] at @s run effect @e[r=100] resistance 1 2 true

execute as @s[name=shockwaveblow,scores={Deleter=1..20}] at @s run damage @e[tag=!Frames,type=!ds:toji_reawakened,r=3] 3 override
execute as @s[name=shockwaveblow,scores={Deleter=1..20}] at @s run scoreboard players add @e[tag=!Frames,type=!ds:toji_reawakened,r=3] Stun 7
execute as @s[name=shockwaveblow,scores={Deleter=1..20}] at @s run scoreboard players add @e[tag=!Frames,type=!ds:toji_reawakened,r=3] Evade 7
execute as @s[name=shockwaveblow,scores={Deleter=1..20}] at @s if entity @e[tag=!Frames,type=!ds:toji_reawakened,r=2.9] at @s run summon ds:knockback
execute as @s[name=shockwaveblow,scores={Deleter=2}] at @s run summon ds:lapse_explode "Air Cannon" ^^^-5 
execute as @s[name=shockwaveblow,scores={Deleter=1..20}] at @s run kill @e[type=item,r=15]